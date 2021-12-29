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

print "RAYLUA: Raylua boot script"
print("RAYLUA: Lua Version: " .. _VERSION)

if jit then
  print("RAYLUA: Lua JIT: " .. jit.version)
end

local ffi = require "ffi"
local C = ffi.C

local rl = {}
setmetatable(rl, rl)

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

  typedef struct Texture {
    unsigned int id;
    int width;
    int height;
    int mipmaps;
    int format;
  } Texture;
  typedef Texture Texture2D;
  typedef Texture TextureCubemap;

  typedef struct RenderTexture {
    unsigned int id;
    Texture texture;
    Texture depth;
  } RenderTexture;
  typedef RenderTexture RenderTexture2D;

  typedef struct NPatchInfo {
    Rectangle sourceRec;
    int left;
    int top;
    int right;
    int bottom;
    int layout;
  } NPatchInfo;

  typedef struct GlyphInfo {
    int value;
    int offsetX;
    int offsetY;
    int advanceX;
    Image image;
  } GlyphInfo;

  typedef struct Font {
    int baseSize;
    int glyphCount;
    int glyphPadding;
    Texture2D texture;
    Rectangle *recs;
    GlyphInfo *glyphs;
  } Font;

  typedef Font SpriteFont;
  typedef struct Camera3D {
    Vector3 position;
    Vector3 target;
    Vector3 up;
    float fovy;
    int projection;
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
    float params[4];
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

    int materialCount;
    Mesh *meshes;
    Material *materials;
    int *meshMaterial;
    int boneCount;
    BoneInfo *bones;
    Transform *bindPose;
  } Model;

  typedef struct ModelAnimation {
    int boneCount;
    int frameCount;
    BoneInfo *bones;
    Transform **framePoses;
  } ModelAnimation;

  typedef struct Ray {
    Vector3 position;
    Vector3 direction;
  } Ray;

  typedef struct RayCollision {
    bool hit;
    float distance;
    Vector3 point;
    Vector3 normal;
  } RayCollision;

  typedef struct BoundingBox {
    Vector3 min;
    Vector3 max;
  } BoundingBox;

  typedef struct Wave {
    unsigned int frameCount;
    unsigned int sampleRate;
    unsigned int sampleSize;
    unsigned int channels;
    void *data;
  } Wave;

  typedef struct rAudioBuffer rAudioBuffer;
  typedef struct AudioStream {
    rAudioBuffer *buffer;

    unsigned int sampleRate;
    unsigned int sampleSize;
    unsigned int channels;
  } AudioStream;

  typedef struct Sound {
    AudioStream stream;
    unsigned int frameCount;
  } Sound;

  typedef struct Music {
    AudioStream stream;
    unsigned int frameCount;
    bool looping;

    int ctxType;
    void *ctxData;
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

  typedef struct VrStereoConfig {
    Matrix projection[2];
    Matrix viewOffset[2];
    float leftLensCenter[2];
    float rightLensCenter[2];
    float leftScreenCenter[2];
    float rightScreenCenter[2];
    float scale[2];
    float scaleIn[2];
  } VrStereoConfig;

  typedef enum {
    FLAG_VSYNC_HINT = 0x00000040,
    FLAG_FULLSCREEN_MODE = 0x00000002,
    FLAG_WINDOW_RESIZABLE = 0x00000004,
    FLAG_WINDOW_UNDECORATED = 0x00000008,
    FLAG_WINDOW_HIDDEN = 0x00000080,
    FLAG_WINDOW_MINIMIZED = 0x00000200,
    FLAG_WINDOW_MAXIMIZED = 0x00000400,
    FLAG_WINDOW_UNFOCUSED = 0x00000800,
    FLAG_WINDOW_TOPMOST = 0x00001000,
    FLAG_WINDOW_ALWAYS_RUN = 0x00000100,
    FLAG_WINDOW_TRANSPARENT = 0x00000010,
    FLAG_WINDOW_HIGHDPI = 0x00002000,
    FLAG_MSAA_4X_HINT = 0x00000020,
    FLAG_INTERLACED_HINT = 0x00010000
  } ConfigFlags;

  typedef enum {
    LOG_ALL = 0,
    LOG_TRACE,
    LOG_DEBUG,
    LOG_INFO,
    LOG_WARNING,
    LOG_ERROR,
    LOG_FATAL,
    LOG_NONE
  } TraceLogLevel;

  typedef enum {
    KEY_NULL = 0,
    KEY_APOSTROPHE = 39,
    KEY_COMMA = 44,
    KEY_MINUS = 45,
    KEY_PERIOD = 46,
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
    KEY_LEFT_BRACKET = 91,
    KEY_BACKSLASH = 92,
    KEY_RIGHT_BRACKET = 93,
    KEY_GRAVE = 96,
    KEY_SPACE = 32,
    KEY_ESCAPE = 256,
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
    KEY_NUM_LOCK = 282,
    KEY_PRINT_SCREEN = 283,
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
    KEY_LEFT_SHIFT = 340,
    KEY_LEFT_CONTROL = 341,
    KEY_LEFT_ALT = 342,
    KEY_LEFT_SUPER = 343,
    KEY_RIGHT_SHIFT = 344,
    KEY_RIGHT_CONTROL = 345,
    KEY_RIGHT_ALT = 346,
    KEY_RIGHT_SUPER = 347,
    KEY_KB_MENU = 348,
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
    KEY_KP_DECIMAL = 330,
    KEY_KP_DIVIDE = 331,
    KEY_KP_MULTIPLY = 332,
    KEY_KP_SUBTRACT = 333,
    KEY_KP_ADD = 334,
    KEY_KP_ENTER = 335,
    KEY_KP_EQUAL = 336,
    /* Android key buttons */
    KEY_BACK = 4,
    KEY_MENU = 82,
    KEY_VOLUME_UP = 24,
    KEY_VOLUME_DOWN = 25
  } KeyboardKey;

  typedef enum {
    MOUSE_BUTTON_LEFT = 0,
    MOUSE_BUTTON_RIGHT = 1,
    MOUSE_BUTTON_MIDDLE = 2,
    MOUSE_BUTTON_SIDE = 3,
    MOUSE_BUTTON_EXTRA = 4,
    MOUSE_BUTTON_FORWARD = 5,
    MOUSE_BUTTON_BACK = 6
  } MouseButton;

  typedef enum {
    MOUSE_CURSOR_DEFAULT = 0,
    MOUSE_CURSOR_ARROW = 1,
    MOUSE_CURSOR_IBEAM = 2,
    MOUSE_CURSOR_CROSSHAIR = 3,
    MOUSE_CURSOR_POINTING_HAND = 4,
    MOUSE_CURSOR_RESIZE_EW = 5,
    MOUSE_CURSOR_RESIZE_NS = 6,
    MOUSE_CURSOR_RESIZE_NWSE = 7,
    MOUSE_CURSOR_RESIZE_NESW = 8,
    MOUSE_CURSOR_RESIZE_ALL = 9,
    MOUSE_CURSOR_NOT_ALLOWED = 10
  } MouseCursor;

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
    MATERIAL_MAP_ALBEDO = 0,
    MATERIAL_MAP_METALNESS,
    MATERIAL_MAP_NORMAL,
    MATERIAL_MAP_ROUGHNESS,
    MATERIAL_MAP_OCCLUSION,
    MATERIAL_MAP_EMISSION,
    MATERIAL_MAP_HEIGHT,
    MATERIAL_MAP_CUBEMAP,
    MATERIAL_MAP_IRRADIANCE,
    MATERIAL_MAP_PREFILTER,
    MATERIAL_MAP_BRDF,
  } MaterialMapIndex;

  typedef enum {
    SHADER_LOC_VERTEX_POSITION = 0,
    SHADER_LOC_VERTEX_TEXCOORD01,
    SHADER_LOC_VERTEX_TEXCOORD02,
    SHADER_LOC_VERTEX_NORMAL,
    SHADER_LOC_VERTEX_TANGENT,
    SHADER_LOC_VERTEX_COLOR,
    SHADER_LOC_MATRIX_MVP,
    SHADER_LOC_MATRIX_VIEW,
    SHADER_LOC_MATRIX_PROJECTION,
    SHADER_LOC_MATRIX_MODEL,
    SHADER_LOC_MATRIX_NORMAL,
    SHADER_LOC_VECTOR_VIEW,
    SHADER_LOC_COLOR_DIFFUSE,
    SHADER_LOC_COLOR_SPECULAR,
    SHADER_LOC_COLOR_AMBIENT,
    SHADER_LOC_MAP_ALBEDO,
    SHADER_LOC_MAP_METALNESS,
    SHADER_LOC_MAP_NORMAL,
    SHADER_LOC_MAP_ROUGHNESS,
    SHADER_LOC_MAP_OCCLUSION,
    SHADER_LOC_MAP_EMISSION,
    SHADER_LOC_MAP_HEIGHT,
    SHADER_LOC_MAP_CUBEMAP,
    SHADER_LOC_MAP_IRRADIANCE,
    SHADER_LOC_MAP_PREFILTER,
    SHADER_LOC_MAP_BRDF
  } ShaderLocationIndex;

  typedef enum {
    SHADER_UNIFORM_FLOAT = 0,
    SHADER_UNIFORM_VEC2,
    SHADER_UNIFORM_VEC3,
    SHADER_UNIFORM_VEC4,
    SHADER_UNIFORM_INT,
    SHADER_UNIFORM_IVEC2,
    SHADER_UNIFORM_IVEC3,
    SHADER_UNIFORM_IVEC4,
    SHADER_UNIFORM_SAMPLER2D
  } ShaderUniformDataType;

  typedef enum {
    SHADER_ATTRIB_FLOAT = 0,
    SHADER_ATTRIB_VEC2,
    SHADER_ATTRIB_VEC3,
    SHADER_ATTRIB_VEC4
  } ShaderAttributeDataType;

  typedef enum {
    PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
    PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA,
    PIXELFORMAT_UNCOMPRESSED_R5G6B5,
    PIXELFORMAT_UNCOMPRESSED_R8G8B8,
    PIXELFORMAT_UNCOMPRESSED_R5G5B5A1,
    PIXELFORMAT_UNCOMPRESSED_R4G4B4A4,
    PIXELFORMAT_UNCOMPRESSED_R8G8B8A8,
    PIXELFORMAT_UNCOMPRESSED_R32,
    PIXELFORMAT_UNCOMPRESSED_R32G32B32,
    PIXELFORMAT_UNCOMPRESSED_R32G32B32A32,
    PIXELFORMAT_COMPRESSED_DXT1_RGB,
    PIXELFORMAT_COMPRESSED_DXT1_RGBA,
    PIXELFORMAT_COMPRESSED_DXT3_RGBA,
    PIXELFORMAT_COMPRESSED_DXT5_RGBA,
    PIXELFORMAT_COMPRESSED_ETC1_RGB,
    PIXELFORMAT_COMPRESSED_ETC2_RGB,
    PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA,
    PIXELFORMAT_COMPRESSED_PVRT_RGB,
    PIXELFORMAT_COMPRESSED_PVRT_RGBA,
    PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA,
    PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA
  } PixelFormat;

  typedef enum {
    TEXTURE_FILTER_POINT = 0,
    TEXTURE_FILTER_BILINEAR,
    TEXTURE_FILTER_TRILINEAR,
    TEXTURE_FILTER_ANISOTROPIC_4X,
    TEXTURE_FILTER_ANISOTROPIC_8X,
    TEXTURE_FILTER_ANISOTROPIC_16X,
  } TextureFilter;

  typedef enum {
    TEXTURE_WRAP_REPEAT = 0,
    TEXTURE_WRAP_CLAMP,
    TEXTURE_WRAP_MIRROR_REPEAT,
    TEXTURE_WRAP_MIRROR_CLAMP
  } TextureWrapMode;

  typedef enum {
    CUBEMAP_LAYOUT_AUTO_DETECT = 0,
    CUBEMAP_LAYOUT_LINE_VERTICAL,
    CUBEMAP_LAYOUT_LINE_HORIZONTAL,
    CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR,
    CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE,
    CUBEMAP_LAYOUT_PANORAMA
  } CubemapLayout;

  typedef enum {
    FONT_DEFAULT = 0,
    FONT_BITMAP,
    FONT_SDF
  } FontType;

  typedef enum {
    BLEND_ALPHA = 0,
    BLEND_ADDITIVE,
    BLEND_MULTIPLIED,
    BLEND_ADD_COLORS,
    BLEND_SUBTRACT_COLORS,
    BLEND_CUSTOM
  } BlendMode;

  typedef enum {
    GESTURE_NONE = 0,
    GESTURE_TAP = 1,
    GESTURE_DOUBLETAP = 2,
    GESTURE_HOLD = 4,
    GESTURE_DRAG = 8,
    GESTURE_SWIPE_RIGHT = 16,
    GESTURE_SWIPE_LEFT = 32,
    GESTURE_SWIPE_UP = 64,
    GESTURE_SWIPE_DOWN = 128,
    GESTURE_PINCH_IN = 256,
    GESTURE_PINCH_OUT = 512
  } Gesture;

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
  } CameraProjection;

  typedef enum {
    NPATCH_NINE_PATCH = 0,
    NPATCH_THREE_PATCH_VERTICAL,
    NPATCH_THREE_PATCH_HORIZONTAL
  } NPatchLayout;

  typedef void (*TraceLogCallback)(int logLevel, const char *text, va_list args);
]]

-- raymath cdef
ffi.cdef [[
  typedef struct float3 { float v[3]; } float3;
  typedef struct float16 { float v[16]; } float16;
]]

-- rlgl cdef
ffi.cdef [[
  typedef enum {
    OPENGL_11 = 1,
    OPENGL_21,
    OPENGL_33,
    OPENGL_43,
    OPENGL_ES_20
  } rlGlVersion;

  typedef enum {
    RL_LOG_ALL = 0,
    RL_LOG_TRACE,
    RL_LOG_DEBUG,
    RL_LOG_INFO,
    RL_LOG_WARNING,
    RL_LOG_ERROR,
    RL_LOG_FATAL,
    RL_LOG_NONE
  } rlTraceLogLevel;

  typedef enum {
    RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
    RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA,
    RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5,
    RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8,
    RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1,
    RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4,
    RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8,
    RL_PIXELFORMAT_UNCOMPRESSED_R32,
    RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32,
    RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32,
    RL_PIXELFORMAT_COMPRESSED_DXT1_RGB,
    RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA,
    RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA,
    RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA,
    RL_PIXELFORMAT_COMPRESSED_ETC1_RGB,
    RL_PIXELFORMAT_COMPRESSED_ETC2_RGB,
    RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA,
    RL_PIXELFORMAT_COMPRESSED_PVRT_RGB,
    RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA,
    RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA,
    RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA
  } rlPixelFormat;

  typedef enum {
    RL_TEXTURE_FILTER_POINT = 0,
    RL_TEXTURE_FILTER_BILINEAR,
    RL_TEXTURE_FILTER_TRILINEAR,
    RL_TEXTURE_FILTER_ANISOTROPIC_4X,
    RL_TEXTURE_FILTER_ANISOTROPIC_8X,
    RL_TEXTURE_FILTER_ANISOTROPIC_16X,
  } rlTextureFilter;

  typedef enum {
    RL_BLEND_ALPHA = 0,
    RL_BLEND_ADDITIVE,
    RL_BLEND_MULTIPLIED,
    RL_BLEND_ADD_COLORS,
    RL_BLEND_SUBTRACT_COLORS,
    RL_BLEND_CUSTOM
  } rlBlendMode;

  typedef enum {
    RL_SHADER_LOC_VERTEX_POSITION = 0,
    RL_SHADER_LOC_VERTEX_TEXCOORD01,
    RL_SHADER_LOC_VERTEX_TEXCOORD02,
    RL_SHADER_LOC_VERTEX_NORMAL,
    RL_SHADER_LOC_VERTEX_TANGENT,
    RL_SHADER_LOC_VERTEX_COLOR,
    RL_SHADER_LOC_MATRIX_MVP,
    RL_SHADER_LOC_MATRIX_VIEW,
    RL_SHADER_LOC_MATRIX_PROJECTION,
    RL_SHADER_LOC_MATRIX_MODEL,
    RL_SHADER_LOC_MATRIX_NORMAL,
    RL_SHADER_LOC_VECTOR_VIEW,
    RL_SHADER_LOC_COLOR_DIFFUSE,
    RL_SHADER_LOC_COLOR_SPECULAR,
    RL_SHADER_LOC_COLOR_AMBIENT,
    RL_SHADER_LOC_MAP_ALBEDO,
    RL_SHADER_LOC_MAP_METALNESS,
    RL_SHADER_LOC_MAP_NORMAL,
    RL_SHADER_LOC_MAP_ROUGHNESS,
    RL_SHADER_LOC_MAP_OCCLUSION,
    RL_SHADER_LOC_MAP_EMISSION,
    RL_SHADER_LOC_MAP_HEIGHT,
    RL_SHADER_LOC_MAP_CUBEMAP,
    RL_SHADER_LOC_MAP_IRRADIANCE,
    RL_SHADER_LOC_MAP_PREFILTER,
    RL_SHADER_LOC_MAP_BRDF
  } rlShaderLocationIndex;

  typedef enum {
    RL_SHADER_UNIFORM_FLOAT = 0,
    RL_SHADER_UNIFORM_VEC2,
    RL_SHADER_UNIFORM_VEC3,
    RL_SHADER_UNIFORM_VEC4,
    RL_SHADER_UNIFORM_INT,
    RL_SHADER_UNIFORM_IVEC2,
    RL_SHADER_UNIFORM_IVEC3,
    RL_SHADER_UNIFORM_IVEC4,
    RL_SHADER_UNIFORM_SAMPLER2D
  } rlShaderUniformDataType;

  typedef enum {
    RL_SHADER_ATTRIB_FLOAT = 0,
    RL_SHADER_ATTRIB_VEC2,
    RL_SHADER_ATTRIB_VEC3,
    RL_SHADER_ATTRIB_VEC4
  } rlShaderAttributeDataType;
  
  typedef enum {
    RL_ATTACHMENT_COLOR_CHANNEL0 = 0,
    RL_ATTACHMENT_COLOR_CHANNEL1,
    RL_ATTACHMENT_COLOR_CHANNEL2,
    RL_ATTACHMENT_COLOR_CHANNEL3,
    RL_ATTACHMENT_COLOR_CHANNEL4,
    RL_ATTACHMENT_COLOR_CHANNEL5,
    RL_ATTACHMENT_COLOR_CHANNEL6,
    RL_ATTACHMENT_COLOR_CHANNEL7,
    RL_ATTACHMENT_DEPTH = 100,
    RL_ATTACHMENT_STENCIL = 200,
  } rlFramebufferAttachType;

  typedef enum {
    RL_ATTACHMENT_CUBEMAP_POSITIVE_X = 0,
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_X,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Y,
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Z,
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z,
    RL_ATTACHMENT_TEXTURE2D = 100,
    RL_ATTACHMENT_RENDERBUFFER = 200,
  } rlFramebufferAttachTextureType;

  /* NOTE: Assumes non-ES OpenGL. */
  typedef struct rlVertexBuffer {
    int elementCount;

    float *vertices;
    float *texcoords;
    unsigned char *colors;
    unsigned int *indices;

    unsigned int vaoId;
    unsigned int vboId[4];
  } rlVertexBuffer;

  typedef struct rlDrawCall {
    int mode;
    int vertexCount;
    int vertexAlignment;
    //unsigned int vaoId;
    //unsigned int shaderId;
    unsigned int textureId;

    //Matrix projection;
    //Matrix modelview;
  } rlDrawCall;

  typedef struct rlRenderBatch {
    int bufferCount;
    int currentBuffer;
    rlVertexBuffer *vertexBuffer;

    rlDrawCall *draws;
    int drawCounter;
    float currentDepth;
  } rlRenderBatch;
]]

-- rlgl defines
rl.RL_TEXTURE_WRAP_S = 0x2802
rl.RL_TEXTURE_WRAP_T = 0x2803
rl.RL_TEXTURE_MAG_FILTER = 0x2800
rl.RL_TEXTURE_MIN_FILTER = 0x2801
rl.RL_TEXTURE_FILTER_NEAREST = 0x2600
rl.RL_TEXTURE_FILTER_LINEAR = 0x2601
rl.RL_TEXTURE_FILTER_MIP_NEAREST = 0x2700
rl.RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR = 0x2702
rl.RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST = 0x2701
rl.RL_TEXTURE_FILTER_MIP_LINEAR = 0x2703
rl.RL_TEXTURE_FILTER_ANISOTROPIC = 0x3000
rl.RL_TEXTURE_WRAP_REPEAT = 0x2901
rl.RL_TEXTURE_WRAP_CLAMP = 0x812F
rl.RL_TEXTURE_WRAP_MIRROR_REPEAT = 0x8370
rl.RL_TEXTURE_WRAP_MIRROR_CLAMP = 0x8742

rl.RL_MODELVIEW = 0x1700
rl.RL_PROJECTION = 0x1701
rl.RL_TEXTURE = 0x1702
rl.RL_LINES = 0x0001
rl.RL_TRIANGLES = 0x0004
rl.RL_QUADS = 0x0007

rl.RL_UNSIGNED_BYTE = 0x1401
rl.RL_FLOAT = 0x1406

rl.RL_STREAM_DRAW = 0x88E0
rl.RL_STREAM_READ = 0x88E1
rl.RL_STREAM_COPY = 0x88E2
rl.RL_STATIC_DRAW = 0x88E4
rl.RL_STATIC_READ = 0x88E5
rl.RL_STATIC_COPY = 0x88E6
rl.RL_DYNAMIC_DRAW = 0x88E8
rl.RL_DYNAMIC_READ = 0x88E9
rl.RL_DYNAMIC_COPY = 0x88EA

rl.RL_FRAGMENT_SHADER = 0x8B30
rl.RL_VERTEX_SHADER = 0x8B31
rl.RL_COMPUTE_SHADER = 0x91B9

-- Physac cdef
ffi.cdef [[
  typedef enum PhysicsShapeType { PHYSICS_CIRCLE = 0, PHYSICS_POLYGON } PhysicsShapeType;
  typedef struct PhysicsBodyData *PhysicsBody;

  typedef struct Matrix2x2 {
    float m00;
    float m01;
    float m10;
    float m11;
  } Matrix2x2;

  typedef struct PhysicsVertexData {
    unsigned int vertexCount;
    Vector2 positions[24];
    Vector2 normals[24];
} PhysicsVertexData;

  typedef struct PhysicsShape {
    PhysicsShapeType type;
    PhysicsBody body;
    PhysicsVertexData vertexData;
    float radius;
    Matrix2x2 transform;
  } PhysicsShape;

  typedef struct PhysicsBodyData {
    unsigned int id;
    bool enabled;
    Vector2 position;
    Vector2 velocity;
    Vector2 force;
    float angularVelocity;
    float torque;
    float orient;
    float inertia;
    float inverseInertia;
    float mass;
    float inverseMass;
    float staticFriction;
    float dynamicFriction;
    float restitution;
    bool useGravity;
    bool isGrounded;
    bool freezeOrient;
    PhysicsShape shape;
  } PhysicsBodyData;

  typedef struct PhysicsManifoldData {
    unsigned int id;
    PhysicsBody bodyA;
    PhysicsBody bodyB;
    float penetration;
    Vector2 normal;
    Vector2 contacts[2];
    unsigned int contactsCount;
    float restitution;
    float dynamicFriction;
    float staticFriction;
  } PhysicsManifoldData, *PhysicsManifold;
]]

-- gestures cdef
ffi.cdef [[
  typedef enum { 
    TOUCH_ACTION_UP = 0, 
    TOUCH_ACTION_DOWN, 
    TOUCH_ACTION_MOVE,
    TOUCH_ACTION_CANCEL
  } TouchAction;

  typedef struct {
    int touchAction;
    int pointCount;
    int pointerId[8]; // CONST
    Vector2 position[8]; // CONST
  } GestureEvent;
]]

-- raygui cdef
ffi.cdef [[
  typedef struct GuiStyleProp {
    unsigned short controlId;
    unsigned short propertyId;
    int propertyValue;
  } GuiStyleProp;

  typedef enum {
    GUI_STATE_NORMAL = 0,
    GUI_STATE_FOCUSED,
    GUI_STATE_PRESSED,
    GUI_STATE_DISABLED,
  } GuiControlState;

  typedef enum {
    GUI_TEXT_ALIGN_LEFT = 0,
    GUI_TEXT_ALIGN_CENTER,
    GUI_TEXT_ALIGN_RIGHT,
  } GuiTextAlignment;

  typedef enum {
    DEFAULT = 0,
    LABEL,
    BUTTON,
    TOGGLE,
    SLIDER,
    PROGRESSBAR,
    CHECKBOX,
    COMBOBOX,
    DROPDOWNBOX,
    TEXTBOX,
    VALUEBOX,
    SPINNER,
    LISTVIEW,
    COLORPICKER,
    SCROLLBAR,
    STATUSBAR
  } GuiControl;

  typedef enum {
    BORDER_COLOR_NORMAL = 0,
    BASE_COLOR_NORMAL,
    TEXT_COLOR_NORMAL,
    BORDER_COLOR_FOCUSED,
    BASE_COLOR_FOCUSED,
    TEXT_COLOR_FOCUSED,
    BORDER_COLOR_PRESSED,
    BASE_COLOR_PRESSED,
    TEXT_COLOR_PRESSED,
    BORDER_COLOR_DISABLED,
    BASE_COLOR_DISABLED,
    TEXT_COLOR_DISABLED,
    BORDER_WIDTH,
    TEXT_PADDING,
    TEXT_ALIGNMENT,
    RESERVED
  } GuiControlProperty;

  typedef enum {
    TEXT_SIZE = 16,
    TEXT_SPACING,
    LINE_COLOR,
    BACKGROUND_COLOR,
  } GuiDefaultProperty;

  typedef enum {
    GROUP_PADDING = 16,
  } GuiToggleProperty;

  typedef enum {
    SLIDER_WIDTH = 16,
    SLIDER_PADDING
  } GuiSliderProperty;

  typedef enum {
    PROGRESS_PADDING = 16,
  } GuiProgressBarProperty;

  typedef enum {
    CHECK_PADDING = 16
  } GuiCheckBoxProperty;

  typedef enum {
    COMBO_BUTTON_WIDTH = 16,
    COMBO_BUTTON_PADDING
  } GuiComboBoxProperty;

  typedef enum {
    ARROW_PADDING = 16,
    DROPDOWN_ITEMS_PADDING
  } GuiDropdownBoxProperty;

  typedef enum {
    TEXT_INNER_PADDING = 16,
    TEXT_LINES_PADDING,
    COLOR_SELECTED_FG,
    COLOR_SELECTED_BG
  } GuiTextBoxProperty;

  typedef enum {
    SPIN_BUTTON_WIDTH = 16,
    SPIN_BUTTON_PADDING,
  } GuiSpinnerProperty;

  typedef enum {
    ARROWS_SIZE = 16,
    ARROWS_VISIBLE,
    SCROLL_SLIDER_PADDING,
    SCROLL_SLIDER_SIZE,
    SCROLL_PADDING,
    SCROLL_SPEED,
  } GuiScrollBarProperty;

  typedef enum {
    SCROLLBAR_LEFT_SIDE = 0,
    SCROLLBAR_RIGHT_SIDE
  } GuiScrollBarSide;

  typedef enum {
    LIST_ITEMS_HEIGHT = 16,
    LIST_ITEMS_PADDING,
    SCROLLBAR_WIDTH,
    SCROLLBAR_SIDE,
  } GuiListViewProperty;

  typedef enum {
    COLOR_SELECTOR_SIZE = 16,
    HUEBAR_WIDTH,
    HUEBAR_PADDING,
    HUEBAR_SELECTOR_HEIGHT,
    HUEBAR_SELECTOR_OVERFLOW
  } GuiColorPickerProperty;

  typedef struct GuiTextBoxState {
    int cursor;
    int start;
    int index;
    int select;
  } GuiTextBoxState;

  typedef enum {
    RAYGUI_ICON_NONE = 0,
    RAYGUI_ICON_FOLDER_FILE_OPEN = 1,
    RAYGUI_ICON_FILE_SAVE_CLASSIC = 2,
    RAYGUI_ICON_FOLDER_OPEN = 3,
    RAYGUI_ICON_FOLDER_SAVE = 4,
    RAYGUI_ICON_FILE_OPEN = 5,
    RAYGUI_ICON_FILE_SAVE = 6,
    RAYGUI_ICON_FILE_EXPORT = 7,
    RAYGUI_ICON_FILE_NEW = 8,
    RAYGUI_ICON_FILE_DELETE = 9,
    RAYGUI_ICON_FILETYPE_TEXT = 10,
    RAYGUI_ICON_FILETYPE_AUDIO = 11,
    RAYGUI_ICON_FILETYPE_IMAGE = 12,
    RAYGUI_ICON_FILETYPE_PLAY = 13,
    RAYGUI_ICON_FILETYPE_VIDEO = 14,
    RAYGUI_ICON_FILETYPE_INFO = 15,
    RAYGUI_ICON_FILE_COPY = 16,
    RAYGUI_ICON_FILE_CUT = 17,
    RAYGUI_ICON_FILE_PASTE = 18,
    RAYGUI_ICON_CURSOR_HAND = 19,
    RAYGUI_ICON_CURSOR_POINTER = 20,
    RAYGUI_ICON_CURSOR_CLASSIC = 21,
    RAYGUI_ICON_PENCIL = 22,
    RAYGUI_ICON_PENCIL_BIG = 23,
    RAYGUI_ICON_BRUSH_CLASSIC = 24,
    RAYGUI_ICON_BRUSH_PAINTER = 25,
    RAYGUI_ICON_WATER_DROP = 26,
    RAYGUI_ICON_COLOR_PICKER = 27,
    RAYGUI_ICON_RUBBER = 28,
    RAYGUI_ICON_COLOR_BUCKET = 29,
    RAYGUI_ICON_TEXT_T = 30,
    RAYGUI_ICON_TEXT_A = 31,
    RAYGUI_ICON_SCALE = 32,
    RAYGUI_ICON_RESIZE = 33,
    RAYGUI_ICON_FILTER_POINT = 34,
    RAYGUI_ICON_FILTER_BILINEAR = 35,
    RAYGUI_ICON_CROP = 36,
    RAYGUI_ICON_CROP_ALPHA = 37,
    RAYGUI_ICON_SQUARE_TOGGLE = 38,
    RAYGUI_ICON_SYMMETRY = 39,
    RAYGUI_ICON_SYMMETRY_HORIZONTAL = 40,
    RAYGUI_ICON_SYMMETRY_VERTICAL = 41,
    RAYGUI_ICON_LENS = 42,
    RAYGUI_ICON_LENS_BIG = 43,
    RAYGUI_ICON_EYE_ON = 44,
    RAYGUI_ICON_EYE_OFF = 45,
    RAYGUI_ICON_FILTER_TOP = 46,
    RAYGUI_ICON_FILTER = 47,
    RAYGUI_ICON_TARGET_POINT = 48,
    RAYGUI_ICON_TARGET_SMALL = 49,
    RAYGUI_ICON_TARGET_BIG = 50,
    RAYGUI_ICON_TARGET_MOVE = 51,
    RAYGUI_ICON_CURSOR_MOVE = 52,
    RAYGUI_ICON_CURSOR_SCALE = 53,
    RAYGUI_ICON_CURSOR_SCALE_RIGHT = 54,
    RAYGUI_ICON_CURSOR_SCALE_LEFT = 55,
    RAYGUI_ICON_UNDO = 56,
    RAYGUI_ICON_REDO = 57,
    RAYGUI_ICON_REREDO = 58,
    RAYGUI_ICON_MUTATE = 59,
    RAYGUI_ICON_ROTATE = 60,
    RAYGUI_ICON_REPEAT = 61,
    RAYGUI_ICON_SHUFFLE = 62,
    RAYGUI_ICON_EMPTYBOX = 63,
    RAYGUI_ICON_TARGET = 64,
    RAYGUI_ICON_TARGET_SMALL_FILL = 65,
    RAYGUI_ICON_TARGET_BIG_FILL = 66,
    RAYGUI_ICON_TARGET_MOVE_FILL = 67,
    RAYGUI_ICON_CURSOR_MOVE_FILL = 68,
    RAYGUI_ICON_CURSOR_SCALE_FILL = 69,
    RAYGUI_ICON_CURSOR_SCALE_RIGHT_FILL = 70,
    RAYGUI_ICON_CURSOR_SCALE_LEFT_FILL = 71,
    RAYGUI_ICON_UNDO_FILL = 72,
    RAYGUI_ICON_REDO_FILL = 73,
    RAYGUI_ICON_REREDO_FILL = 74,
    RAYGUI_ICON_MUTATE_FILL = 75,
    RAYGUI_ICON_ROTATE_FILL = 76,
    RAYGUI_ICON_REPEAT_FILL = 77,
    RAYGUI_ICON_SHUFFLE_FILL = 78,
    RAYGUI_ICON_EMPTYBOX_SMALL = 79,
    RAYGUI_ICON_BOX = 80,
    RAYGUI_ICON_BOX_TOP = 81,
    RAYGUI_ICON_BOX_TOP_RIGHT = 82,
    RAYGUI_ICON_BOX_RIGHT = 83,
    RAYGUI_ICON_BOX_BOTTOM_RIGHT = 84,
    RAYGUI_ICON_BOX_BOTTOM = 85,
    RAYGUI_ICON_BOX_BOTTOM_LEFT = 86,
    RAYGUI_ICON_BOX_LEFT = 87,
    RAYGUI_ICON_BOX_TOP_LEFT = 88,
    RAYGUI_ICON_BOX_CENTER = 89,
    RAYGUI_ICON_BOX_CIRCLE_MASK = 90,
    RAYGUI_ICON_POT = 91,
    RAYGUI_ICON_ALPHA_MULTIPLY = 92,
    RAYGUI_ICON_ALPHA_CLEAR = 93,
    RAYGUI_ICON_DITHERING = 94,
    RAYGUI_ICON_MIPMAPS = 95,
    RAYGUI_ICON_BOX_GRID = 96,
    RAYGUI_ICON_GRID = 97,
    RAYGUI_ICON_BOX_CORNERS_SMALL = 98,
    RAYGUI_ICON_BOX_CORNERS_BIG = 99,
    RAYGUI_ICON_FOUR_BOXES = 100,
    RAYGUI_ICON_GRID_FILL = 101,
    RAYGUI_ICON_BOX_MULTISIZE = 102,
    RAYGUI_ICON_ZOOM_SMALL = 103,
    RAYGUI_ICON_ZOOM_MEDIUM = 104,
    RAYGUI_ICON_ZOOM_BIG = 105,
    RAYGUI_ICON_ZOOM_ALL = 106,
    RAYGUI_ICON_ZOOM_CENTER = 107,
    RAYGUI_ICON_BOX_DOTS_SMALL = 108,
    RAYGUI_ICON_BOX_DOTS_BIG = 109,
    RAYGUI_ICON_BOX_CONCENTRIC = 110,
    RAYGUI_ICON_BOX_GRID_BIG = 111,
    RAYGUI_ICON_OK_TICK = 112,
    RAYGUI_ICON_CROSS = 113,
    RAYGUI_ICON_ARROW_LEFT = 114,
    RAYGUI_ICON_ARROW_RIGHT = 115,
    RAYGUI_ICON_ARROW_DOWN = 116,
    RAYGUI_ICON_ARROW_UP = 117,
    RAYGUI_ICON_ARROW_LEFT_FILL = 118,
    RAYGUI_ICON_ARROW_RIGHT_FILL = 119,
    RAYGUI_ICON_ARROW_DOWN_FILL = 120,
    RAYGUI_ICON_ARROW_UP_FILL = 121,
    RAYGUI_ICON_AUDIO = 122,
    RAYGUI_ICON_FX = 123,
    RAYGUI_ICON_WAVE = 124,
    RAYGUI_ICON_WAVE_SINUS = 125,
    RAYGUI_ICON_WAVE_SQUARE = 126,
    RAYGUI_ICON_WAVE_TRIANGULAR = 127,
    RAYGUI_ICON_CROSS_SMALL = 128,
    RAYGUI_ICON_PLAYER_PREVIOUS = 129,
    RAYGUI_ICON_PLAYER_PLAY_BACK = 130,
    RAYGUI_ICON_PLAYER_PLAY = 131,
    RAYGUI_ICON_PLAYER_PAUSE = 132,
    RAYGUI_ICON_PLAYER_STOP = 133,
    RAYGUI_ICON_PLAYER_NEXT = 134,
    RAYGUI_ICON_PLAYER_RECORD = 135,
    RAYGUI_ICON_MAGNET = 136,
    RAYGUI_ICON_LOCK_CLOSE = 137,
    RAYGUI_ICON_LOCK_OPEN = 138,
    RAYGUI_ICON_CLOCK = 139,
    RAYGUI_ICON_TOOLS = 140,
    RAYGUI_ICON_GEAR = 141,
    RAYGUI_ICON_GEAR_BIG = 142,
    RAYGUI_ICON_BIN = 143,
    RAYGUI_ICON_HAND_POINTER = 144,
    RAYGUI_ICON_LASER = 145,
    RAYGUI_ICON_COIN = 146,
    RAYGUI_ICON_EXPLOSION = 147,
    RAYGUI_ICON_1UP = 148,
    RAYGUI_ICON_PLAYER = 149,
    RAYGUI_ICON_PLAYER_JUMP = 150,
    RAYGUI_ICON_KEY = 151,
    RAYGUI_ICON_DEMON = 152,
    RAYGUI_ICON_TEXT_POPUP = 153,
    RAYGUI_ICON_GEAR_EX = 154,
    RAYGUI_ICON_CRACK = 155,
    RAYGUI_ICON_CRACK_POINTS = 156,
    RAYGUI_ICON_STAR = 157,
    RAYGUI_ICON_DOOR = 158,
    RAYGUI_ICON_EXIT = 159,
    RAYGUI_ICON_MODE_2D = 160,
    RAYGUI_ICON_MODE_3D = 161,
    RAYGUI_ICON_CUBE = 162,
    RAYGUI_ICON_CUBE_FACE_TOP = 163,
    RAYGUI_ICON_CUBE_FACE_LEFT = 164,
    RAYGUI_ICON_CUBE_FACE_FRONT = 165,
    RAYGUI_ICON_CUBE_FACE_BOTTOM = 166,
    RAYGUI_ICON_CUBE_FACE_RIGHT = 167,
    RAYGUI_ICON_CUBE_FACE_BACK = 168,
    RAYGUI_ICON_CAMERA = 169,
    RAYGUI_ICON_SPECIAL = 170,
    RAYGUI_ICON_LINK_NET = 171,
    RAYGUI_ICON_LINK_BOXES = 172,
    RAYGUI_ICON_LINK_MULTI = 173,
    RAYGUI_ICON_LINK = 174,
    RAYGUI_ICON_LINK_BROKE = 175,
    RAYGUI_ICON_TEXT_NOTES = 176,
    RAYGUI_ICON_NOTEBOOK = 177,
    RAYGUI_ICON_SUITCASE = 178,
    RAYGUI_ICON_SUITCASE_ZIP = 179,
    RAYGUI_ICON_MAILBOX = 180,
    RAYGUI_ICON_MONITOR = 181,
    RAYGUI_ICON_PRINTER = 182,
    RAYGUI_ICON_PHOTO_CAMERA = 183,
    RAYGUI_ICON_PHOTO_CAMERA_FLASH = 184,
    RAYGUI_ICON_HOUSE = 185,
    RAYGUI_ICON_HEART = 186,
    RAYGUI_ICON_CORNER = 187,
    RAYGUI_ICON_VERTICAL_BARS = 188,
    RAYGUI_ICON_VERTICAL_BARS_FILL = 189,
    RAYGUI_ICON_LIFE_BARS = 190,
    RAYGUI_ICON_INFO = 191,
    RAYGUI_ICON_CROSSLINE = 192,
    RAYGUI_ICON_HELP = 193,
    RAYGUI_ICON_FILETYPE_ALPHA = 194,
    RAYGUI_ICON_FILETYPE_HOME = 195,
    RAYGUI_ICON_LAYERS_VISIBLE = 196,
    RAYGUI_ICON_LAYERS = 197,
    RAYGUI_ICON_WINDOW = 198,
    RAYGUI_ICON_HIDPI = 199,
    RAYGUI_ICON_200 = 200,
    RAYGUI_ICON_201 = 201,
    RAYGUI_ICON_202 = 202,
    RAYGUI_ICON_203 = 203,
    RAYGUI_ICON_204 = 204,
    RAYGUI_ICON_205 = 205,
    RAYGUI_ICON_206 = 206,
    RAYGUI_ICON_207 = 207,
    RAYGUI_ICON_208 = 208,
    RAYGUI_ICON_209 = 209,
    RAYGUI_ICON_210 = 210,
    RAYGUI_ICON_211 = 211,
    RAYGUI_ICON_212 = 212,
    RAYGUI_ICON_213 = 213,
    RAYGUI_ICON_214 = 214,
    RAYGUI_ICON_215 = 215,
    RAYGUI_ICON_216 = 216,
    RAYGUI_ICON_217 = 217,
    RAYGUI_ICON_218 = 218,
    RAYGUI_ICON_219 = 219,
    RAYGUI_ICON_220 = 220,
    RAYGUI_ICON_221 = 221,
    RAYGUI_ICON_222 = 222,
    RAYGUI_ICON_223 = 223,
    RAYGUI_ICON_224 = 224,
    RAYGUI_ICON_225 = 225,
    RAYGUI_ICON_226 = 226,
    RAYGUI_ICON_227 = 227,
    RAYGUI_ICON_228 = 228,
    RAYGUI_ICON_229 = 229,
    RAYGUI_ICON_230 = 230,
    RAYGUI_ICON_231 = 231,
    RAYGUI_ICON_232 = 232,
    RAYGUI_ICON_233 = 233,
    RAYGUI_ICON_234 = 234,
    RAYGUI_ICON_235 = 235,
    RAYGUI_ICON_236 = 236,
    RAYGUI_ICON_237 = 237,
    RAYGUI_ICON_238 = 238,
    RAYGUI_ICON_239 = 239,
    RAYGUI_ICON_240 = 240,
    RAYGUI_ICON_241 = 241,
    RAYGUI_ICON_242 = 242,
    RAYGUI_ICON_243 = 243,
    RAYGUI_ICON_244 = 244,
    RAYGUI_ICON_245 = 245,
    RAYGUI_ICON_246 = 246,
    RAYGUI_ICON_247 = 247,
    RAYGUI_ICON_248 = 248,
    RAYGUI_ICON_249 = 249,
    RAYGUI_ICON_250 = 250,
    RAYGUI_ICON_251 = 251,
    RAYGUI_ICON_252 = 252,
    RAYGUI_ICON_253 = 253,
    RAYGUI_ICON_254 = 254,
    RAYGUI_ICON_255 = 255,
  } guiIconName;
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

  print "RAYLUA: Loading FFI binding entries."

  while entries[i].name ~= NULL do
    local name, proto = ffi.string(entries[i].name), ffi.string(entries[i].proto)

    if rl[name] then
      print("RAYLUA: Warn: Duplicated FFI entry : " .. name)
    end

    rl[name] = ffi.cast(proto, entries[i].ptr)
    i = i + 1
  end

  print("RAYLUA: Loaded " .. tonumber(i) .. " FFI entries.")
end

-- colors
local function new_color(r, g, b, a)
  return ffi.new("Color", r, g, b, a)
end

rl.LIGHTGRAY = new_color(200, 200, 200, 255)
rl.GRAY = new_color(130, 130, 130, 255)
rl.DARKGRAY = new_color(80, 80, 80, 255)
rl.YELLOW = new_color(253, 249, 0, 255)
rl.GOLD = new_color(255, 203, 0, 255)
rl.ORANGE = new_color(255, 161, 0, 255)
rl.PINK = new_color(255, 109, 194, 255)
rl.RED = new_color(230, 41, 55, 255)
rl.MAROON = new_color(190, 33, 55, 255)
rl.GREEN = new_color(0, 228, 48, 255)
rl.LIME = new_color(0, 158, 47, 255)
rl.DARKGREEN = new_color(0, 117, 44, 255)
rl.SKYBLUE = new_color(102, 191, 255, 255)
rl.BLUE = new_color(0, 121, 241, 255)
rl.DARKBLUE = new_color(0, 82, 172, 255)
rl.PURPLE = new_color(200, 122, 255, 255)
rl.VIOLET = new_color(135, 60, 190, 255)
rl.DARKPURPLE = new_color(112, 31, 126, 255)
rl.BEIGE = new_color(211, 176, 131, 255)
rl.BROWN = new_color(127, 106, 79, 255)
rl.DARKBROWN = new_color(76, 63, 47, 255)
rl.WHITE = new_color(255, 255, 255, 255)
rl.BLACK = new_color(0, 0, 0, 255)
rl.BLANK = new_color(0, 0, 0, 0)
rl.MAGENTA = new_color(255, 0, 255, 255)
rl.RAYWHITE = new_color(245, 245, 245, 255)

rl.SHADER_LOC_MAP_DIFFUSE = C.SHADER_LOC_MAP_ALBEDO
rl.SHADER_LOC_MAP_SPECULAR = C.SHADER_LOC_MAP_METALNESS
rl.MATERIAL_MAP_DIFFUSE = C.MATERIAL_MAP_ALBEDO
rl.MATERIAL_MAP_SPECULAR = C.MATERIAL_MAP_METALNESS

function rl.ref(obj)
  return ffi.cast(ffi.typeof("$ *", obj), obj)
end

rl.new = ffi.new

rl.__index = function (self, key)
  return C[key]
end

rl.__newindex = function ()
  error "rl table is readonly"
end

_G.rl = rl
