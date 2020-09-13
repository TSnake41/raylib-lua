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

local rf = { lua = raylua }
setmetatable(rf, rf)

-- structs definition
ffi.cdef [[
typedef ptrdiff_t rf_int;

typedef struct rf_source_location
{
    const char* file_name;
    const char* proc_name;
    rf_int line_in_file;
} rf_source_location;

typedef enum rf_allocator_mode
{
    RF_AM_UNKNOWN = 0,
    RF_AM_ALLOC,
    RF_AM_REALLOC,
    RF_AM_FREE,
} rf_allocator_mode;

typedef struct rf_allocator_args
{
  void* pointer_to_free_or_realloc;
  rf_int size_to_allocate_or_reallocate;
  int old_size;
} rf_allocator_args;

struct rf_allocator;

typedef void* (rf_allocator_proc)(struct rf_allocator* this_allocator, rf_source_location source_location, rf_allocator_mode mode, rf_allocator_args args);

typedef struct rf_allocator
{
  void* user_data;
  rf_allocator_proc* allocator_proc;
} rf_allocator;

typedef struct rf_io_callbacks
{
  void*  user_data;
  rf_int (*file_size_proc) (void* user_data, const char* filename);
  bool   (*read_file_proc) (void* user_data, const char* filename, void* dst, rf_int dst_size);
} rf_io_callbacks;

typedef enum rf_error_type
{
  RF_NO_ERROR,
  RF_BAD_ARGUMENT,
  RF_BAD_ALLOC,
  RF_BAD_IO,
  RF_BAD_BUFFER_SIZE,
  RF_BAD_FORMAT,
  RF_LIMIT_REACHED,
  RF_STBI_FAILED,
  RF_STBTT_FAILED,
  RF_UNSUPPORTED,
} rf_error_type;

typedef struct rf_recorded_error
{
  rf_source_location reported_source_location;
  rf_error_type error_type;
} rf_recorded_error;

typedef enum rf_log_type
{
    RF_LOG_TYPE_NONE    = 0,
    RF_LOG_TYPE_DEBUG   = 0x1,
    RF_LOG_TYPE_INFO    = 0x2,
    RF_LOG_TYPE_WARNING = 0x4,
    RF_LOG_TYPE_ERROR   = 0x8,
    RF_LOG_TYPE_ALL     = 0xF,
} rf_log_type;

struct rf_logger;

typedef void (*rf_log_proc)(struct rf_logger* logger, rf_source_location source_location, rf_log_type log_type, const char* msg, rf_error_type error_type, va_list args);

typedef struct rf_logger
{
  void* user_data;
  rf_log_proc log_proc;
} rf_logger;

typedef rf_int (*rf_rand_proc)(rf_int min, rf_int max);

typedef uint32_t rf_rune;

typedef struct rf_decoded_utf8_stats
{
  rf_int bytes_processed;
  rf_int invalid_bytes;
  rf_int valid_rune_count;
  rf_int total_rune_count;
} rf_decoded_utf8_stats;

typedef struct rf_decoded_rune
{
  rf_rune  codepoint;
  rf_int   bytes_processed;
  bool     valid;
} rf_decoded_rune;

typedef struct rf_decoded_string
{
  rf_rune* codepoints;
  rf_int   size;
  rf_int   invalid_bytes_count;
  bool     valid;
} rf_decoded_string;

typedef struct rf_sizei
{
  int width;
  int height;
} rf_sizei;

typedef struct rf_sizef
{
  float width;
  float height;
} rf_sizef;

typedef struct rf_vec2
{
  float x;
  float y;
} rf_vec2;

typedef struct rf_vec3
{
  float x;
  float y;
  float z;
} rf_vec3;

typedef struct rf_vec4
{
  float x;
  float y;
  float z;
  float w;
} rf_vec4, rf_quaternion;

typedef struct rf_mat
{
  float m0, m4, m8,  m12;
  float m1, m5, m9,  m13;
  float m2, m6, m10, m14;
  float m3, m7, m11, m15;
} rf_mat;

typedef struct rf_float16
{
  float v[16];
} rf_float16;

typedef struct rf_rec
{
  float x;
  float y;
  float width;
  float height;
} rf_rec;

typedef struct rf_ray
{
  rf_vec3 position;
  rf_vec3 direction;
} rf_ray;

typedef struct rf_ray_hit_info
{
  bool hit;
  float distance;
  rf_vec3 position;
  rf_vec3 normal;
} rf_ray_hit_info;

typedef struct rf_bounding_box
{
  rf_vec3 min;
  rf_vec3 max;
} rf_bounding_box;

struct rf_model;

typedef struct rf_base64_output
{
    int size;
    unsigned char* buffer;
} rf_base64_output;

typedef enum rf_pixel_format
{
  RF_UNCOMPRESSED_GRAYSCALE = 1,
  RF_UNCOMPRESSED_GRAY_ALPHA,
  RF_UNCOMPRESSED_R5G6B5,
  RF_UNCOMPRESSED_R8G8B8,
  RF_UNCOMPRESSED_R5G5B5A1,
  RF_UNCOMPRESSED_R4G4B4A4,
  RF_UNCOMPRESSED_R8G8B8A8,
  RF_UNCOMPRESSED_RGBA32 = 8,
  RF_UNCOMPRESSED_R32,
  RF_UNCOMPRESSED_R32G32B32,
  RF_UNCOMPRESSED_R32G32B32A32,
  RF_UNCOMPRESSED_NORMALIZED = 11,
  RF_COMPRESSED_DXT1_RGB,
  RF_COMPRESSED_DXT1_RGBA,
  RF_COMPRESSED_DXT3_RGBA,
  RF_COMPRESSED_DXT5_RGBA,
  RF_COMPRESSED_ETC1_RGB,
  RF_COMPRESSED_ETC2_RGB,
  RF_COMPRESSED_ETC2_EAC_RGBA,
  RF_COMPRESSED_PVRT_RGB,
  RF_COMPRESSED_PVRT_RGBA,
  RF_COMPRESSED_ASTC_4x4_RGBA,
  RF_COMPRESSED_ASTC_8x8_RGBA 
} rf_pixel_format;

typedef enum rf_pixel_format rf_compressed_pixel_format;
typedef enum rf_pixel_format rf_uncompressed_pixel_format;

typedef struct rf_color
{
  unsigned char r, g, b, a;
} rf_color;

typedef struct rf_palette
{
  rf_color* colors;
  int count;
} rf_palette;

typedef enum rf_camera_type
{
  RF_CAMERA_PERSPECTIVE = 0,
  RF_CAMERA_ORTHOGRAPHIC
} rf_camera_type;

typedef struct rf_camera2d
{
  rf_vec2 offset;
  rf_vec2 target;
  float   rotation;
  float   zoom;
} rf_camera2d;

typedef struct rf_camera3d
{
  rf_camera_type type;
  rf_vec3 position;
  rf_vec3 target;
  rf_vec3 up;
  float fovy;
} rf_camera3d;

typedef enum rf_builtin_camera3d_mode
{
  RF_CAMERA_CUSTOM = 0,
  RF_CAMERA_FREE,
  RF_CAMERA_ORBITAL,
  RF_CAMERA_FIRST_PERSON,
  RF_CAMERA_THIRD_PERSON
} rf_builtin_camera3d_mode;

typedef struct rf_camera3d_state
{
  rf_vec2 camera_angle;
  float camera_target_distance;
  float player_eyes_position;
  rf_builtin_camera3d_mode camera_mode;
  int swing_counter;
  rf_vec2 previous_mouse_position;
} rf_camera3d_state;

typedef struct rf_input_state_for_update_camera
{
  rf_vec2 mouse_position;
  int mouse_wheel_move;
  bool is_camera_pan_control_key_down;
  bool is_camera_alt_control_key_down;
  bool is_camera_smooth_zoom_control_key;
  bool direction_keys[6];
} rf_input_state_for_update_camera;

typedef enum rf_desired_channels
{
    RF_ANY_CHANNELS = 0,
    RF_1BYTE_GRAYSCALE = 1,
    RF_2BYTE_GRAY_ALPHA = 2,
    RF_3BYTE_R8G8B8 = 3,
    RF_4BYTE_R8G8B8A8 = 4,
} rf_desired_channels;

typedef struct rf_image
{
  void* data;
  int width;
  int height;
  rf_pixel_format format;
  bool valid;
} rf_image;

typedef struct rf_mipmaps_stats
{
  int possible_mip_counts;
  int mipmaps_buffer_size;
} rf_mipmaps_stats;

typedef struct rf_mipmaps_image
{
  union
  {
    rf_image image;
    struct
    {
      void* data;
      int width;
      int height;
      rf_pixel_format format;
      bool valid;
    };
  };

  int mipmaps;
} rf_mipmaps_image;

typedef struct rf_gif
{
  int frames_count;
  int* frame_delays;

  union
  {
    rf_image image;

    struct
    {
      void* data;
      int width;
      int height;
      rf_pixel_format format;
      bool valid;
    };
  };
} rf_gif;

typedef enum rf_audio_format
{
  RF_AUDIO_FORMAT_UNKNOWN = 0,
  RF_AUDIO_FORMAT_WAV,
  RF_AUDIO_FORMAT_OGG,
  RF_AUDIO_FORMAT_FLAC,
  RF_AUDIO_FORMAT_MP3,
  RF_AUDIO_FORMAT_XM,
  RF_AUDIO_FORMAT_MOD,
} rf_audio_format;

typedef enum rf_audio_data_type
{
  RF_DECODED_AUDIO_DATA,
  RF_ENCODED_AUDIO_DATA
} rf_audio_data_type;

typedef enum rf_audio_player_type
{
  RF_STREAMING_AUDIO_PLAYER,
  RF_STATIC_AUDIO_PLAYER,
} rf_audio_player_type;

typedef enum rf_audio_channels
{
  RF_MONO   = 1,
  RF_STEREO = 2,
} rf_audio_channels;

typedef struct rf_audio_buffer rf_audio_buffer;

typedef struct rf_audio_data
{
  rf_audio_data_type type;

  void* data;
  int data_size;

  int size_in_frames;
  int sample_count;
  int sample_rate;
  int sample_size;
  rf_audio_channels channels;
  bool valid;
} rf_audio_data;

typedef struct rf_audio_player
{
  rf_audio_player_type type;
  rf_audio_data source;
  float volume;
  bool looping;
  bool valid;
} rf_audio_player;

typedef struct rf_audio_device
{
  int id;
} rf_audio_device;

typedef enum rf_matrix_mode
{
  RF_MODELVIEW  = 0x1700,
  RF_PROJECTION = 0x1701,
  RF_TEXTURE    = 0x1702,
} rf_matrix_mode;

typedef enum rf_drawing_mode
{
  RF_LINES     = 0x0001,
  RF_TRIANGLES = 0x0004,
  RF_QUADS     = 0x0007,
} rf_drawing_mode;

typedef enum rf_shader_location_index
{
  RF_LOC_VERTEX_POSITION   = 0,
  RF_LOC_VERTEX_TEXCOORD01 = 1,
  RF_LOC_VERTEX_TEXCOORD02 = 2,
  RF_LOC_VERTEX_NORMAL = 3,
  RF_LOC_VERTEX_TANGENT = 4,
  RF_LOC_VERTEX_COLOR = 5,
  RF_LOC_MATRIX_MVP = 6,
  RF_LOC_MATRIX_MODEL = 7,
  RF_LOC_MATRIX_VIEW = 8,
  RF_LOC_MATRIX_PROJECTION = 9,
  RF_LOC_VECTOR_VIEW = 10,
  RF_LOC_COLOR_DIFFUSE = 11,
  RF_LOC_COLOR_SPECULAR = 12,
  RF_LOC_COLOR_AMBIENT = 13,

  RF_LOC_MAP_ALBEDO = 14,
  RF_LOC_MAP_DIFFUSE = 14,

  RF_LOC_MAP_METALNESS = 15,
  RF_LOC_MAP_SPECULAR = 15,

  RF_LOC_MAP_NORMAL = 16,
  RF_LOC_MAP_ROUGHNESS = 17,
  RF_LOC_MAP_OCCLUSION = 18,
  RF_LOC_MAP_EMISSION = 19,
  RF_LOC_MAP_HEIGHT = 20,
  RF_LOC_MAP_CUBEMAP = 21,
  RF_LOC_MAP_IRRADIANCE = 22,
  RF_LOC_MAP_PREFILTER = 23,
  RF_LOC_MAP_BRDF = 24,
} rf_shader_location_index;

typedef enum rf_shader_uniform_data_type
{
  RF_UNIFORM_FLOAT = 0,
  RF_UNIFORM_VEC2,
  RF_UNIFORM_VEC3,
  RF_UNIFORM_VEC4,
  RF_UNIFORM_INT,
  RF_UNIFORM_IVEC2,
  RF_UNIFORM_IVEC3,
  RF_UNIFORM_IVEC4,
  RF_UNIFORM_SAMPLER2D
} rf_shader_uniform_data_type;

typedef enum rf_texture_filter_mode
{
  RF_FILTER_POINT = 0,
  RF_FILTER_BILINEAR,
  RF_FILTER_TRILINEAR,
  RF_FILTER_ANISOTROPIC_4x,
  RF_FILTER_ANISOTROPIC_8x,
  RF_FILTER_ANISOTROPIC_16x,
} rf_texture_filter_mode;

typedef enum rf_cubemap_layout_type
{
  RF_CUBEMAP_AUTO_DETECT = 0,
  RF_CUBEMAP_LINE_VERTICAL,
  RF_CUBEMAP_LINE_HORIZONTAL,
  RF_CUBEMAP_CROSS_THREE_BY_FOUR,
  RF_CUBEMAP_CROSS_FOUR_BY_TREE,
  RF_CUBEMAP_PANORAMA
} rf_cubemap_layout_type;

typedef enum rf_texture_wrap_mode
{
  RF_WRAP_REPEAT = 0,
  RF_WRAP_CLAMP,
  RF_WRAP_MIRROR_REPEAT,
  RF_WRAP_MIRROR_CLAMP
} rf_texture_wrap_mode;

typedef enum rf_blend_mode
{
  RF_BLEND_ALPHA = 0,
  RF_BLEND_ADDITIVE,
  RF_BLEND_MULTIPLIED
} rf_blend_mode;

typedef struct rf_shader
{
  unsigned int id;
  int locs[32];
} rf_shader;

typedef struct rf_gfx_pixel_format
{
  unsigned int internal_format;
  unsigned int format;
  unsigned int type;
  bool valid;
} rf_gfx_pixel_format;

typedef struct rf_texture2d
{
  unsigned int id;
  int width;
  int height;
  int mipmaps;
  rf_pixel_format format;
  bool valid;
} rf_texture2d, rf_texture_cubemap;

typedef struct rf_render_texture2d
{
  unsigned int id;
  rf_texture2d texture;
  rf_texture2d depth;
  int depth_texture;
} rf_render_texture2d;

struct rf_vertex_buffer;
struct rf_material;
typedef void rf_gfx_backend_data;
typedef void rf_audio_backend_data;

typedef float rf_gfx_vertex_data_type;
typedef float rf_gfx_texcoord_data_type;
typedef unsigned char rf_gfx_color_data_type;

// NOTE: this is unsigned short with GL ~= 3.2
typedef unsigned int rf_gfx_vertex_index_data_type;

typedef struct rf_vertex_buffer
{
  int elements_count;
  int v_counter;
  int tc_counter;
  int c_counter;

  unsigned int vao_id;
  unsigned int vbo_id[4];

  rf_gfx_vertex_data_type*       vertices;
  rf_gfx_texcoord_data_type*     texcoords;
  rf_gfx_color_data_type*        colors;
  rf_gfx_vertex_index_data_type* indices;
} rf_vertex_buffer;

typedef struct rf_draw_call
{
  rf_drawing_mode mode;
  int vertex_count;
  int vertex_alignment;

  unsigned int texture_id;
} rf_draw_call;

typedef struct rf_opengl_procs
{
    void                 (*Viewport)                 (int x, int y, int width, int height);
    void                 (*BindTexture)              (unsigned int target, unsigned int texture);
    void                 (*TexParameteri)            (unsigned int target, unsigned int pname, int param);
    void                 (*TexParameterf)            (unsigned int target, unsigned int pname, float param);
    void                 (*TexParameteriv)           (unsigned int target, unsigned int pname, const int* params);
    void                 (*BindFramebuffer)          (unsigned int target, unsigned int framebuffer);
    void                 (*Enable)                   (unsigned int cap);
    void                 (*Disable)                  (unsigned int cap);
    void                 (*Scissor)                  (int x, int y, int width, int height);
    void                 (*DeleteTextures)           (int n, const unsigned int* textures);
    void                 (*DeleteRenderbuffers)      (int n, const unsigned int* renderbuffers);
    void                 (*DeleteFramebuffers)       (int n, const unsigned int* framebuffers);
    void                 (*DeleteVertexArrays)       (int n, const unsigned int* arrays);
    void                 (*DeleteBuffers)            (int n, const unsigned int* buffers);
    void                 (*ClearColor)               (float red, float green, float blue, float alpha);
    void                 (*Clear)                    (unsigned int mask);
    void                 (*BindBuffer)               (unsigned int target, unsigned int buffer);
    void                 (*BufferSubData)            (unsigned int target, ptrdiff_t offset, ptrdiff_t size, const void* data);
    void                 (*BindVertexArray)          (unsigned int array);
    void                 (*GenBuffers)               (int n, unsigned int* buffers);
    void                 (*BufferData)               (unsigned int target, ptrdiff_t size, const void* data, unsigned int usage);
    void                 (*VertexAttribPointer)      (unsigned int index, int size, unsigned int type, unsigned char normalized, int stride, const void* pointer);
    void                 (*EnableVertexAttribArray)  (unsigned int index);
    void                 (*GenVertexArrays)          (int n, unsigned int* arrays);
    void                 (*VertexAttrib3f)           (unsigned int index, float x, float y, float z);
    void                 (*DisableVertexAttribArray) (unsigned int index);
    void                 (*VertexAttrib4f)           (unsigned int index, float x, float y, float z, float w);
    void                 (*VertexAttrib2f)           (unsigned int index, float x, float y);
    void                 (*UseProgram)               (unsigned int program);
    void                 (*Uniform4f)                (int location, float v0, float v1, float v2, float v3);
    void                 (*ActiveTexture)            (unsigned int texture);
    void                 (*Uniform1i)                (int location, int v0);
    void                 (*UniformMatrix4fv)         (int location, int count, unsigned char transpose, const float* value);
    void                 (*DrawElements)             (unsigned int mode, int count, unsigned int type, const void* indices);
    void                 (*DrawArrays)               (unsigned int mode, int first, int count);
    void                 (*PixelStorei)              (unsigned int pname, int param);
    void                 (*GenTextures)              (int n, unsigned int* textures);
    void                 (*TexImage2D)               (unsigned int target, int level, int internalformat, int width, int height, int border, unsigned int format, unsigned int type, const void* pixels);
    void                 (*GenRenderbuffers)         (int n, unsigned int* renderbuffers);
    void                 (*BindRenderbuffer)         (unsigned int target, unsigned int renderbuffer);
    void                 (*RenderbufferStorage)      (unsigned int target, unsigned int internalformat, int width, int height);
    void                 (*CompressedTexImage2D)     (unsigned int target, int level, unsigned int internalformat, int width, int height, int border, int imageSize, const void* data);
    void                 (*TexSubImage2D)            (unsigned int target, int level, int txoffset, int yoffset, int width, int height, unsigned int format, unsigned int type, const void* pixels);
    void                 (*GenerateMipmap)           (unsigned int target);
    void                 (*ReadPixels)               (int x, int y, int width, int height, unsigned int format, unsigned int type, void* pixels);
    void                 (*GenFramebuffers)          (int n, unsigned int* framebuffers);
    void                 (*FramebufferTexture2D)     (unsigned int target, unsigned int attachment, unsigned int textarget, unsigned int texture, int level);
    void                 (*FramebufferRenderbuffer)  (unsigned int target, unsigned int attachment, unsigned int renderbuffertarget, unsigned int renderbuffer);
    unsigned int         (*CheckFramebufferStatus)   (unsigned int target);
    unsigned int         (*CreateShader)             (unsigned int type);
    void                 (*ShaderSource)             (unsigned int shader, int count, const char** string, const int* length);
    void                 (*CompileShader)            (unsigned int shader);
    void                 (*GetShaderiv)              (unsigned int shader, unsigned int pname, int* params);
    void                 (*GetShaderInfoLog)         (unsigned int shader, int bufSize, int* length, char* infoLog);
    unsigned int         (*CreateProgram)            ();
    void                 (*AttachShader)             (unsigned int program, unsigned int shader);
    void                 (*BindAttribLocation)       (unsigned int program, unsigned int index, const char* name);
    void                 (*LinkProgram)              (unsigned int program);
    void                 (*GetProgramiv)             (unsigned int program, unsigned int pname, int* params);
    void                 (*GetProgramInfoLog)        (unsigned int program, int bufSize, int* length, char* infoLog);
    void                 (*DeleteProgram)            (unsigned int program);
    int                  (*GetAttribLocation)        (unsigned int program, const char* name);
    int                  (*GetUniformLocation)       (unsigned int program, const char* name);
    void                 (*DetachShader)             (unsigned int program, unsigned int shader);
    void                 (*DeleteShader)             (unsigned int shader);
    void                 (*GetActiveUniform)         (unsigned int program, unsigned int index, int bufSize, int* length, int* size, unsigned int* type, char* name);
    void                 (*Uniform1f)                (int location, float v0);
    void                 (*Uniform1fv)               (int location, int count, const float* value);
    void                 (*Uniform2fv)               (int location, int count, const float* value);
    void                 (*Uniform3fv)               (int location, int count, const float* value);
    void                 (*Uniform4fv)               (int location, int count, const float* value);
    void                 (*Uniform1iv)               (int location, int count, const int* value);
    void                 (*Uniform2iv)               (int location, int count, const int* value);
    void                 (*Uniform3iv)               (int location, int count, const int* value);
    void                 (*Uniform4iv)               (int location, int count, const int* value);
    const unsigned char* (*GetString)                (unsigned int name);
    void                 (*GetFloatv)                (unsigned int pname, float* data);
    void                 (*DepthFunc)                (unsigned int func);
    void                 (*BlendFunc)                (unsigned int sfactor, unsigned int dfactor);
    void                 (*CullFace)                 (unsigned int mode);
    void                 (*FrontFace)                (unsigned int mode);
    const unsigned char* (*GetStringi)               (unsigned int name, unsigned int index);
    void                 (*GetTexImage)              (unsigned int target, int level, unsigned int format, unsigned int type, void* pixels);
    void                 (*ClearDepth)               (double depth);
    void                 (*ClearDepthf)              (float depth);
    void                 (*GetIntegerv)              (unsigned int pname, int* data);
    void                 (*PolygonMode)              (unsigned int face, unsigned int mode);
} rf_opengl_procs;


typedef struct rf_gfx_context
{
  rf_opengl_procs gl;

  struct {
    bool tex_comp_dxt_supported;
    bool tex_comp_etc1_supported;
    bool tex_comp_etc2_supported;
    bool tex_comp_pvrt_supported;
    bool tex_comp_astc_supported;
    bool tex_npot_supported;
    bool tex_float_supported;
    bool tex_depth_supported;
    int max_depth_bits;
    bool tex_mirror_clamp_supported;
    bool tex_anisotropic_filter_supported;
    float max_anisotropic_level;
    bool debug_marker_supported;
  } extensions;
} rf_gfx_context;

typedef struct rf_render_batch
{
  rf_int vertex_buffers_count;
  rf_int current_buffer;
  rf_vertex_buffer* vertex_buffers;

  rf_int draw_calls_size;
  rf_int draw_calls_counter;
  rf_draw_call* draw_calls;
  float current_depth;

  bool valid;
} rf_render_batch;

typedef struct rf_one_element_vertex_buffer
{
  rf_gfx_vertex_data_type vertices  [12];
  rf_gfx_texcoord_data_type texcoords [8];
  rf_gfx_color_data_type colors [16];
  rf_gfx_vertex_index_data_type indices[6];
} rf_one_element_vertex_buffer;

typedef struct rf_default_vertex_buffer
{
  rf_gfx_vertex_data_type vertices  [24576];
  rf_gfx_texcoord_data_type texcoords [16384];
  rf_gfx_color_data_type colors [32768];
  rf_gfx_vertex_index_data_type indices [12288];
} rf_default_vertex_buffer;

typedef struct rf_default_render_batch
{
  rf_vertex_buffer vertex_buffers [1];
  rf_draw_call draw_calls [256];
  rf_default_vertex_buffer vertex_buffers_memory [1];
} rf_default_render_batch;

typedef enum rf_font_antialias
{
  RF_FONT_ANTIALIAS = 0,
  RF_FONT_NO_ANTIALIAS,
} rf_font_antialias;

typedef struct rf_glyph_info
{
  union
  {
    rf_rec rec;
    struct { float x, y, width, height; };
  };

  int codepoint;
  int offset_x;
  int offset_y;
  int advance_x;
} rf_glyph_info;

typedef struct rf_ttf_font_info
{

  const void* ttf_data;
  int font_size;
  int largest_glyph_size;


  float scale_factor;
  int ascent;
  int descent;
  int line_gap;


  struct
  {
    void* userdata;
    unsigned char* data;
    int fontstart;
    int numGlyphs;
    int loca, head, glyf, hhea, hmtx, kern, gpos, svg;
    int index_map;
    int indexToLocFormat;

    struct
    {
      unsigned char* data;
      int cursor;
      int size;
    } cff, charstrings, gsubrs, subrs, fontdicts, fdselect;
  } internal_stb_font_info;

  bool valid;
} rf_ttf_font_info;

typedef struct rf_font
{
  int            base_size;
  rf_texture2d   texture;
  rf_glyph_info* glyphs;
  rf_int         glyphs_count;
  bool           valid;
} rf_font;

typedef int rf_glyph_index;

typedef enum rf_text_wrap_mode
{
  RF_CHAR_WRAP,
  RF_WORD_WRAP,
} rf_text_wrap_mode;

typedef enum rf_ninepatch_type
{
  RF_NPT_9PATCH = 0,
  RF_NPT_3PATCH_VERTICAL,
  RF_NPT_3PATCH_HORIZONTAL
} rf_ninepatch_type;

typedef struct rf_npatch_info
{
  rf_rec source_rec;
  int left;
  int top;
  int right;
  int bottom;
  int type;
} rf_npatch_info;

typedef struct rf_material_map
{
  rf_texture2d texture;
  rf_color color;
  float value;
} rf_material_map;

typedef struct rf_material
{
  rf_shader shader;
  rf_material_map* maps;
  float* params;
} rf_material;

typedef enum rf_material_map_type
{
  RF_MAP_ALBEDO = 0,
  RF_MAP_DIFFUSE = 0,

  RF_MAP_METALNESS = 1,
  RF_MAP_SPECULAR = 1,

  RF_MAP_NORMAL = 2,
  RF_MAP_ROUGHNESS = 3,
  RF_MAP_OCCLUSION = 4,
  RF_MAP_EMISSION = 5,
  RF_MAP_HEIGHT = 6,
  RF_MAP_CUBEMAP = 7,
  RF_MAP_IRRADIANCE = 8,
  RF_MAP_PREFILTER = 9,
  RF_MAP_BRDF = 10
} rf_material_map_type;

typedef struct rf_mesh
{
  int vertex_count;
  int triangle_count;

  float* vertices;
  float* texcoords;
  float* texcoords2;
  float* normals;
  float* tangents;
  unsigned char* colors;
  unsigned short* indices;

  float* anim_vertices;
  float* anim_normals;
  int*   bone_ids;
  float* bone_weights;

  unsigned int  vao_id;
  unsigned int* vbo_id;
} rf_mesh;

typedef struct rf_transform
{
  rf_vec3 translation;
  rf_quaternion rotation;
  rf_vec3 scale;
} rf_transform;

typedef struct rf_bone_info
{
  char name[32];
  rf_int parent;
} rf_bone_info;

typedef struct rf_model
{
  rf_mat transform;
  rf_int mesh_count;
  rf_mesh* meshes;

  rf_int material_count;
  rf_material* materials;
  int* mesh_material;

  rf_int bone_count;
  rf_bone_info* bones;
  rf_transform* bind_pose;
} rf_model;

typedef struct rf_model_animation
{
  rf_int bone_count;
  rf_bone_info* bones;
  rf_int frame_count;
  rf_transform** frame_poses;
} rf_model_animation;

typedef struct rf_model_animation_array
{
  rf_int              size;
  rf_model_animation* anims;
} rf_model_animation_array;

typedef struct rf_materials_array
{
  rf_int       size;
  rf_material* materials;
} rf_materials_array;

typedef struct rf_default_font
{
  unsigned short  pixels       [16384];
  rf_glyph_info   chars        [224];
  unsigned short  chars_pixels [16384];
} rf_default_font;

typedef struct rf_context
{
  struct
  {
    int current_width;
    int current_height;

    int render_width;
    int render_height;

    rf_mat screen_scaling;
    rf_render_batch* current_batch;

    rf_matrix_mode current_matrix_mode;
    rf_mat* current_matrix;
    rf_mat modelview;
    rf_mat projection;
    rf_mat transform;
    bool transform_matrix_required;
    rf_mat stack[32];
    int stack_counter;

    unsigned int default_texture_id;
    unsigned int default_vertex_shader_id;
    unsigned int default_frag_shader_id;

    rf_shader default_shader;
    rf_shader current_shader;

    rf_blend_mode blend_mode;

    int framebuffer_width;
    int framebuffer_height;

    rf_texture2d tex_shapes;
    rf_rec rec_tex_shapes;

    rf_font default_font;
    rf_default_font default_font_buffers;

    rf_gfx_context gfx_ctx;
  };

  rf_logger logger;
  rf_log_type logger_filter;
} rf_context;

]]

rf.RF_DEFAULT_ATTRIB_POSITION_NAME = "vertex_position"
rf.RF_DEFAULT_ATTRIB_TEXCOORD_NAME = "vertex_tex_coord"
rf.RF_DEFAULT_ATTRIB_NORMAL_NAME = "vertex_normal"
rf.RF_DEFAULT_ATTRIB_COLOR_NAME = "vertex_color"
rf.RF_DEFAULT_ATTRIB_TANGENT_NAME = "vertex_tangent"
rf.RF_DEFAULT_ATTRIB_TEXCOORD2_NAME = "vertex_tex_coord2"


-- Load bind entry
ffi.cdef [[
  struct rf_lua_bind_entry {
    const char *name;
    const char *proto;
    void *ptr;
  };
]]

do
  local entries = ffi.cast("struct rf_lua_bind_entry *", raylua.bind_entries)
  local i = ffi.new("size_t", 0)
  local NULL = ffi.new("void *", nil)

  print "RAYLUA: Loading FFI binding entries."

  while entries[i].name ~= NULL do
    local name, proto = ffi.string(entries[i].name), ffi.string(entries[i].proto)

    if rf[name] then
      print("RAYLUA: Warn: Duplicated FFI entry : " .. name)
    end

    rf[name] = ffi.cast(proto, entries[i].ptr)
    i = i + 1
  end

  print("RAYLUA: Loaded " .. tonumber(i) .. " FFI entries.")
end

-- colors
local function new_color(r, g, b, a)
  return ffi.new("rf_color", r, g, b, a)
end

rf.LIGHTGRAY = new_color(200, 200, 200, 255)
rf.GRAY = new_color(130, 130, 130, 255)
rf.DARKGRAY = new_color(80, 80, 80, 255)
rf.YELLOW = new_color(253, 249, 0, 255)
rf.GOLD = new_color(255, 203, 0, 255)
rf.ORANGE = new_color(255, 161, 0, 255)
rf.PINK = new_color(255, 109, 194, 255)
rf.RED = new_color(230, 41, 55, 255)
rf.MAROON = new_color(190, 33, 55, 255)
rf.GREEN = new_color(0, 228, 48, 255)
rf.LIME = new_color(0, 158, 47, 255)
rf.DARKGREEN = new_color(0, 117, 44, 255)
rf.SKYBLUE = new_color(102, 191, 255, 255)
rf.BLUE = new_color(0, 121, 241, 255)
rf.DARKBLUE = new_color(0, 82, 172, 255)
rf.PURPLE = new_color(200, 122, 255, 255)
rf.VIOLET = new_color(135, 60, 190, 255)
rf.DARKPURPLE = new_color(112, 31, 126, 255)
rf.BEIGE = new_color(211, 176, 131, 255)
rf.BROWN = new_color(127, 106, 79, 255)
rf.DARKBROWN = new_color(76, 63, 47, 255)
rf.WHITE = new_color(255, 255, 255, 255)
rf.BLACK = new_color(0, 0, 0, 255)
rf.BLANK = new_color(0, 0, 0, 0)
rf.MAGENTA = new_color(255, 0, 255, 255)
rf.RAYWHITE = new_color(245, 245, 245, 255)

function rf.ref(obj)
  return ffi.cast(ffi.typeof("$ *", obj), obj)
end

rf.new = ffi.new

rf.__index = function (self, key)
  return C[key]
end

rf.__newindex = function ()
  error "rf table is readonly"
end

_G.rf = rf
