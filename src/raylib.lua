--[[
  Copyright (C) 2020 Astie Teddy

  Permission to use, copy, modify, and/or distribute this software for any
  purpose with or without fee is hereby granted, provided that the above
  copyright notice and this permission notice appear in all copies.

  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
  OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
  CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
]]

print "[RAYLUA] Raylua boot script"

local ffi = require "ffi"
local raylib = {}
local raylib_so = ffi.C

-- structs definition
ffi.cdef [[
  typedef struct Vector2 {
    float x;
    float y;
  } Vector2;

  typedef struct Vector3 {
    float x;
    float y;
    float z;
  } Vector3;

  typedef struct Vector4 {
    float x;
    float y;
    float z;
    float w;
  } Vector4;

  typedef Vector4 Quaternion;

  typedef struct Matrix {
    float m0, m4, m8, m12;
    float m1, m5, m9, m13;
    float m2, m6, m10, m14;
    float m3, m7, m11, m15;
  } Matrix;

  typedef struct Color {
    unsigned char r;
    unsigned char g;
    unsigned char b;
    unsigned char a;
  } Color;

  typedef struct Rectangle {
    float x;
    float y;
    float width;
    float height;
  } Rectangle;

  typedef struct Image {
    void *data;
    int width;
    int height;
    int mipmaps;
    int format;
  } Image;

  typedef struct Texture2D {
    unsigned int id;
    int width;
    int height;
    int mipmaps;
    int format;
  } Texture2D;
  typedef Texture2D Texture;
  typedef Texture2D TextureCubemap;

  typedef struct RenderTexture2D {
    unsigned int id;
    Texture2D texture;
    Texture2D depth;
    bool depthTexture;
  } RenderTexture2D;

  typedef RenderTexture2D RenderTexture;
  typedef struct NPatchInfo {
    Rectangle sourceRec;
    int left;
    int top;
    int right;
    int bottom;
    int type;
  } NPatchInfo;

  typedef struct CharInfo {
    int value;
    int offsetX;
    int offsetY;
    int advanceX;
    Image image;
  } CharInfo;

  typedef struct Font {
    int baseSize;
    int charsCount;
    Texture2D texture;
    Rectangle *recs;
    CharInfo *chars;
  } Font;

  typedef Font SpriteFont;
  typedef struct Camera3D {
    Vector3 position;
    Vector3 target;
    Vector3 up;
    float fovy;
    int type;
  } Camera3D;

  typedef Camera3D Camera;
  typedef struct Camera2D {
    Vector2 offset;
    Vector2 target;
    float rotation;
    float zoom;
  } Camera2D;

  typedef struct Mesh {
    int vertexCount;
    int triangleCount;
    float *vertices;
    float *texcoords;
    float *texcoords2;
    float *normals;
    float *tangents;
    unsigned char *colors;
    unsigned short *indices;
    float *animVertices;
    float *animNormals;
    int *boneIds;
    float *boneWeights;
    unsigned int vaoId;
    unsigned int *vboId;
  } Mesh;

  typedef struct Shader {
    unsigned int id;
    int *locs;
  } Shader;

  typedef struct MaterialMap {
    Texture2D texture;
    Color color;
    float value;
  } MaterialMap;

  typedef struct Material {
    Shader shader;
    MaterialMap *maps;
    float *params;
  } Material;

  typedef struct Transform {
    Vector3 translation;
    Quaternion rotation;
    Vector3 scale;
  } Transform;

  typedef struct BoneInfo {
    char name[32];
    int parent;
  } BoneInfo;

  typedef struct Model {
    Matrix transform;

    int meshCount;
    Mesh *meshes;

    int materialCount;
    Material *materials;
    int *meshMaterial;
    int boneCount;
    BoneInfo *bones;
    Transform *bindPose;
  } Model;

  typedef struct ModelAnimation {
    int boneCount;
    BoneInfo *bones;

    int frameCount;
    Transform **framePoses;
  } ModelAnimation;

  typedef struct Ray {
    Vector3 position;
    Vector3 direction;
  } Ray;

  typedef struct RayHitInfo {
    bool hit;
    float distance;
    Vector3 position;
    Vector3 normal;
  } RayHitInfo;

  typedef struct BoundingBox {
    Vector3 min;
    Vector3 max;
  } BoundingBox;

  typedef struct Wave {
    unsigned int sampleCount;
    unsigned int sampleRate;
    unsigned int sampleSize;
    unsigned int channels;
    void *data;
  } Wave;

  typedef struct rAudioBuffer rAudioBuffer;
  typedef struct AudioStream {
    unsigned int sampleRate;
    unsigned int sampleSize;
    unsigned int channels;

    rAudioBuffer *buffer;
  } AudioStream;

  typedef struct Sound {
    unsigned int sampleCount;
    AudioStream stream;
  } Sound;

  typedef struct Music {
    int ctxType;
    void *ctxData;

    unsigned int sampleCount;
    unsigned int loopCount;

    AudioStream stream;
  } Music;

  typedef struct VrDeviceInfo {
    int hResolution;
    int vResolution;
    float hScreenSize;
    float vScreenSize;
    float vScreenCenter;
    float eyeToScreenDistance;
    float lensSeparationDistance;
    float interpupillaryDistance;
    float lensDistortionValues[4];
    float chromaAbCorrection[4];
  } VrDeviceInfo;

  typedef enum {
    FLAG_RESERVED = 1,
    FLAG_FULLSCREEN_MODE= 2,
    FLAG_WINDOW_RESIZABLE = 4,
    FLAG_WINDOW_UNDECORATED = 8,
    FLAG_WINDOW_TRANSPARENT = 16,
    FLAG_WINDOW_HIDDEN= 128,
    FLAG_WINDOW_ALWAYS_RUN= 256,
    FLAG_MSAA_4X_HINT = 32,
    FLAG_VSYNC_HINT = 64
  } ConfigFlag;

  typedef enum {
    LOG_ALL = 0,
    LOG_TRACE,
    LOG_DEBUG,
    LOG_INFO,
    LOG_WARNING,
    LOG_ERROR,
    LOG_FATAL,
    LOG_NONE
  } TraceLogType;

  typedef enum {
    KEY_APOSTROPHE= 39,
    KEY_COMMA = 44,
    KEY_MINUS = 45,
    KEY_PERIOD= 46,
    KEY_SLASH = 47,
    KEY_ZERO = 48,
    KEY_ONE = 49,
    KEY_TWO = 50,
    KEY_THREE = 51,
    KEY_FOUR = 52,
    KEY_FIVE = 53,
    KEY_SIX = 54,
    KEY_SEVEN = 55,
    KEY_EIGHT = 56,
    KEY_NINE = 57,
    KEY_SEMICOLON = 59,
    KEY_EQUAL = 61,
    KEY_A = 65,
    KEY_B = 66,
    KEY_C = 67,
    KEY_D = 68,
    KEY_E = 69,
    KEY_F = 70,
    KEY_G = 71,
    KEY_H = 72,
    KEY_I = 73,
    KEY_J = 74,
    KEY_K = 75,
    KEY_L = 76,
    KEY_M = 77,
    KEY_N = 78,
    KEY_O = 79,
    KEY_P = 80,
    KEY_Q = 81,
    KEY_R = 82,
    KEY_S = 83,
    KEY_T = 84,
    KEY_U = 85,
    KEY_V = 86,
    KEY_W = 87,
    KEY_X = 88,
    KEY_Y = 89,
    KEY_Z = 90,
    KEY_SPACE = 32,
    KEY_ESCAPE= 256,
    KEY_ENTER = 257,
    KEY_TAB = 258,
    KEY_BACKSPACE = 259,
    KEY_INSERT= 260,
    KEY_DELETE= 261,
    KEY_RIGHT = 262,
    KEY_LEFT = 263,
    KEY_DOWN = 264,
    KEY_UP = 265,
    KEY_PAGE_UP = 266,
    KEY_PAGE_DOWN = 267,
    KEY_HOME = 268,
    KEY_END = 269,
    KEY_CAPS_LOCK = 280,
    KEY_SCROLL_LOCK = 281,
    KEY_NUM_LOCK= 282,
    KEY_PRINT_SCREEN= 283,
    KEY_PAUSE = 284,
    KEY_F1 = 290,
    KEY_F2 = 291,
    KEY_F3 = 292,
    KEY_F4 = 293,
    KEY_F5 = 294,
    KEY_F6 = 295,
    KEY_F7 = 296,
    KEY_F8 = 297,
    KEY_F9 = 298,
    KEY_F10 = 299,
    KEY_F11 = 300,
    KEY_F12 = 301,
    KEY_LEFT_SHIFT= 340,
    KEY_LEFT_CONTROL= 341,
    KEY_LEFT_ALT= 342,
    KEY_LEFT_SUPER= 343,
    KEY_RIGHT_SHIFT = 344,
    KEY_RIGHT_CONTROL = 345,
    KEY_RIGHT_ALT = 346,
    KEY_RIGHT_SUPER = 347,
    KEY_KB_MENU = 348,
    KEY_LEFT_BRACKET= 91,
    KEY_BACKSLASH = 92,
    KEY_RIGHT_BRACKET = 93,
    KEY_GRAVE = 96,
    KEY_KP_0 = 320,
    KEY_KP_1 = 321,
    KEY_KP_2 = 322,
    KEY_KP_3 = 323,
    KEY_KP_4 = 324,
    KEY_KP_5 = 325,
    KEY_KP_6 = 326,
    KEY_KP_7 = 327,
    KEY_KP_8 = 328,
    KEY_KP_9 = 329,
    KEY_KP_DECIMAL= 330,
    KEY_KP_DIVIDE = 331,
    KEY_KP_MULTIPLY = 332,
    KEY_KP_SUBTRACT = 333,
    KEY_KP_ADD= 334,
    KEY_KP_ENTER= 335,
    KEY_KP_EQUAL= 336
  } KeyboardKey;

  typedef enum {
    KEY_BACK = 4,
    KEY_MENU = 82,
    KEY_VOLUME_UP = 24,
    KEY_VOLUME_DOWN = 25
  } AndroidButton;

  typedef enum {
    MOUSE_LEFT_BUTTON = 0,
    MOUSE_RIGHT_BUTTON= 1,
    MOUSE_MIDDLE_BUTTON = 2
  } MouseButton;

  typedef enum {
    GAMEPAD_PLAYER1 = 0,
    GAMEPAD_PLAYER2 = 1,
    GAMEPAD_PLAYER3 = 2,
    GAMEPAD_PLAYER4 = 3
  } GamepadNumber;

  typedef enum {
    GAMEPAD_BUTTON_UNKNOWN = 0,
    GAMEPAD_BUTTON_LEFT_FACE_UP,
    GAMEPAD_BUTTON_LEFT_FACE_RIGHT,
    GAMEPAD_BUTTON_LEFT_FACE_DOWN,
    GAMEPAD_BUTTON_LEFT_FACE_LEFT,
    GAMEPAD_BUTTON_RIGHT_FACE_UP,
    GAMEPAD_BUTTON_RIGHT_FACE_RIGHT,
    GAMEPAD_BUTTON_RIGHT_FACE_DOWN,
    GAMEPAD_BUTTON_RIGHT_FACE_LEFT,
    GAMEPAD_BUTTON_LEFT_TRIGGER_1,
    GAMEPAD_BUTTON_LEFT_TRIGGER_2,
    GAMEPAD_BUTTON_RIGHT_TRIGGER_1,
    GAMEPAD_BUTTON_RIGHT_TRIGGER_2,
    GAMEPAD_BUTTON_MIDDLE_LEFT,
    GAMEPAD_BUTTON_MIDDLE,
    GAMEPAD_BUTTON_MIDDLE_RIGHT,
    GAMEPAD_BUTTON_LEFT_THUMB,
    GAMEPAD_BUTTON_RIGHT_THUMB
  } GamepadButton;

  typedef enum {
    GAMEPAD_AXIS_UNKNOWN = 0,
    GAMEPAD_AXIS_LEFT_X,
    GAMEPAD_AXIS_LEFT_Y,
    GAMEPAD_AXIS_RIGHT_X,
    GAMEPAD_AXIS_RIGHT_Y,
    GAMEPAD_AXIS_LEFT_TRIGGER,
    GAMEPAD_AXIS_RIGHT_TRIGGER
  } GamepadAxis;

  typedef enum {
    LOC_VERTEX_POSITION = 0,
    LOC_VERTEX_TEXCOORD01,
    LOC_VERTEX_TEXCOORD02,
    LOC_VERTEX_NORMAL,
    LOC_VERTEX_TANGENT,
    LOC_VERTEX_COLOR,
    LOC_MATRIX_MVP,
    LOC_MATRIX_MODEL,
    LOC_MATRIX_VIEW,
    LOC_MATRIX_PROJECTION,
    LOC_VECTOR_VIEW,
    LOC_COLOR_DIFFUSE,
    LOC_COLOR_SPECULAR,
    LOC_COLOR_AMBIENT,
    LOC_MAP_ALBEDO,
    LOC_MAP_METALNESS,
    LOC_MAP_NORMAL,
    LOC_MAP_ROUGHNESS,
    LOC_MAP_OCCLUSION,
    LOC_MAP_EMISSION,
    LOC_MAP_HEIGHT,
    LOC_MAP_CUBEMAP,
    LOC_MAP_IRRADIANCE,
    LOC_MAP_PREFILTER,
    LOC_MAP_BRDF
  } ShaderLocationIndex;

  typedef enum {
    UNIFORM_FLOAT = 0,
    UNIFORM_VEC2,
    UNIFORM_VEC3,
    UNIFORM_VEC4,
    UNIFORM_INT,
    UNIFORM_IVEC2,
    UNIFORM_IVEC3,
    UNIFORM_IVEC4,
    UNIFORM_SAMPLER2D
  } ShaderUniformDataType;

  typedef enum {
    MAP_ALBEDO= 0,
    MAP_METALNESS = 1,
    MAP_NORMAL= 2,
    MAP_ROUGHNESS = 3,
    MAP_OCCLUSION,
    MAP_EMISSION,
    MAP_HEIGHT,
    MAP_CUBEMAP,
    MAP_IRRADIANCE,
    MAP_PREFILTER,
    MAP_BRDF
  } MaterialMapType;

  typedef enum {
    UNCOMPRESSED_GRAYSCALE = 1,
    UNCOMPRESSED_GRAY_ALPHA,
    UNCOMPRESSED_R5G6B5,
    UNCOMPRESSED_R8G8B8,
    UNCOMPRESSED_R5G5B5A1,
    UNCOMPRESSED_R4G4B4A4,
    UNCOMPRESSED_R8G8B8A8,
    UNCOMPRESSED_R32,
    UNCOMPRESSED_R32G32B32,
    UNCOMPRESSED_R32G32B32A32,
    COMPRESSED_DXT1_RGB,
    COMPRESSED_DXT1_RGBA,
    COMPRESSED_DXT3_RGBA,
    COMPRESSED_DXT5_RGBA,
    COMPRESSED_ETC1_RGB,
    COMPRESSED_ETC2_RGB,
    COMPRESSED_ETC2_EAC_RGBA,
    COMPRESSED_PVRT_RGB,
    COMPRESSED_PVRT_RGBA,
    COMPRESSED_ASTC_4x4_RGBA,
    COMPRESSED_ASTC_8x8_RGBA
  } PixelFormat;

  typedef enum {
    FILTER_POINT = 0,
    FILTER_BILINEAR,
    FILTER_TRILINEAR,
    FILTER_ANISOTROPIC_4X,
    FILTER_ANISOTROPIC_8X,
    FILTER_ANISOTROPIC_16X,
  } TextureFilterMode;

  typedef enum {
    CUBEMAP_AUTO_DETECT = 0,
    CUBEMAP_LINE_VERTICAL,
    CUBEMAP_LINE_HORIZONTAL,
    CUBEMAP_CROSS_THREE_BY_FOUR,
    CUBEMAP_CROSS_FOUR_BY_THREE,
    CUBEMAP_PANORAMA
  } CubemapLayoutType;

  typedef enum {
    WRAP_REPEAT = 0,
    WRAP_CLAMP,
    WRAP_MIRROR_REPEAT,
    WRAP_MIRROR_CLAMP
  } TextureWrapMode;

  typedef enum {
    FONT_DEFAULT = 0,
    FONT_BITMAP,
    FONT_SDF
  } FontType;

  typedef enum {
    BLEND_ALPHA = 0,
    BLEND_ADDITIVE,
    BLEND_MULTIPLIED
  } BlendMode;

  typedef enum {
    GESTURE_NONE = 0,
    GESTURE_TAP = 1,
    GESTURE_DOUBLETAP = 2,
    GESTURE_HOLD= 4,
    GESTURE_DRAG= 8,
    GESTURE_SWIPE_RIGHT = 16,
    GESTURE_SWIPE_LEFT= 32,
    GESTURE_SWIPE_UP= 64,
    GESTURE_SWIPE_DOWN= 128,
    GESTURE_PINCH_IN= 256,
    GESTURE_PINCH_OUT = 512
  } GestureType;

  typedef enum {
    CAMERA_CUSTOM = 0,
    CAMERA_FREE,
    CAMERA_ORBITAL,
    CAMERA_FIRST_PERSON,
    CAMERA_THIRD_PERSON
  } CameraMode;

  typedef enum {
    CAMERA_PERSPECTIVE = 0,
    CAMERA_ORTHOGRAPHIC
  } CameraType;

  typedef enum {
    NPT_9PATCH = 0,
    NPT_3PATCH_VERTICAL,
    NPT_3PATCH_HORIZONTAL
  } NPatchType;

  typedef void (*TraceLogCallback)(int logType, const char *text, va_list args);
]]

-- Load bind entry
ffi.cdef [[
  struct raylua_bind_entry {
    const char *name;
    const char *proto;
    void *ptr;
  };
]]

do
  local entries = ffi.cast("struct raylua_bind_entry *", raylua.bind_entries)
  local i = ffi.new("size_t", 0)
  local NULL = ffi.new("void *", nil)

  print "[RAYLUA] Loading FFI binding entries."

  while entries[i].name ~= NULL do
    local name, proto = ffi.string(entries[i].name), ffi.string(entries[i].proto)
    raylib[name] = ffi.cast(proto, entries[i].ptr)
    i = i + 1
  end

  print("[RAYLUA] Loaded " .. tonumber(i) .. " FFI entries.")
end

-- colors
local function new_color(r, g, b, a)
  local c = ffi.new("Color")
  c.r = r
  c.g = g
  c.b = b
  c.a = a
  return c
end

raylib.LIGHTGRAY = new_color(200, 200, 200, 255)
raylib.GRAY = new_color(130, 130, 130, 255)
raylib.DARKGRAY = new_color(80, 80, 80, 255)
raylib.YELLOW = new_color(253, 249, 0, 255)
raylib.GOLD = new_color(255, 203, 0, 255)
raylib.ORANGE = new_color(255, 161, 0, 255)
raylib.PINK = new_color(255, 109, 194, 255)
raylib.RED = new_color(230, 41, 55, 255)
raylib.MAROON = new_color(190, 33, 55, 255)
raylib.GREEN = new_color(0, 228, 48, 255)
raylib.LIME = new_color(0, 158, 47, 255)
raylib.DARKGREEN = new_color(0, 117, 44, 255)
raylib.SKYBLUE = new_color(102, 191, 255, 255)
raylib.BLUE = new_color(0, 121, 241, 255)
raylib.DARKBLUE = new_color(0, 82, 172, 255)
raylib.PURPLE = new_color(200, 122, 255, 255)
raylib.VIOLET = new_color(135, 60, 190, 255)
raylib.DARKPURPLE = new_color(112, 31, 126, 255)
raylib.BEIGE = new_color(211, 176, 131, 255)
raylib.BROWN = new_color(127, 106, 79, 255)
raylib.DARKBROWN = new_color(76, 63, 47, 255)
raylib.WHITE = new_color(255, 255, 255, 255)
raylib.BLACK = new_color(0, 0, 0, 255)
raylib.BLANK = new_color(0, 0, 0, 0)
raylib.MAGENTA = new_color(255, 0, 255, 255)
raylib.RAYWHITE = new_color(245, 245, 245, 255)

raylib.LOC_MAP_DIFFUSE = raylib_so.LOC_MAP_ALBEDO
raylib.LOC_MAP_SPECULAR = raylib_so.LOC_MAP_METALNESS
raylib.MAP_DIFFUSE = raylib_so.MAP_ALBEDO
raylib.MAP_SPECULAR = raylib_so.MAP_METALNESS

raylib.__index = function (self, key)
  return raylib_so[key]
end

raylib.__newindex = function ()
  error "raylib table is readonly"
end

rl = setmetatable(raylib, raylib)
raylib = rl
