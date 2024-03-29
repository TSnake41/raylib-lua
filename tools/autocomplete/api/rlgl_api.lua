return {
  defines = {
    {
      name = "RLGL_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RLGL_VERSION",
      type = "STRING",
      value = "4.0",
      description = ""
    },
    {
      name = "RLAPI",
      type = "UNKNOWN",
      value = "__declspec(dllexport)",
      description = "We are building the library as a Win32 shared library (.dll)"
    },
    {
      name = "TRACELOG(level, ...)",
      type = "MACRO",
      value = "(void)0",
      description = ""
    },
    {
      name = "TRACELOGD(...)",
      type = "MACRO",
      value = "(void)0",
      description = ""
    },
    {
      name = "RL_MALLOC(sz)",
      type = "MACRO",
      value = "malloc(sz)",
      description = ""
    },
    {
      name = "RL_CALLOC(n,sz)",
      type = "MACRO",
      value = "calloc(n,sz)",
      description = ""
    },
    {
      name = "RL_REALLOC(n,sz)",
      type = "MACRO",
      value = "realloc(n,sz)",
      description = ""
    },
    {
      name = "RL_FREE(p)",
      type = "MACRO",
      value = "free(p)",
      description = ""
    },
    {
      name = "GRAPHICS_API_OPENGL_33",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RLGL_RENDER_TEXTURES_HINT",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_DEFAULT_BATCH_BUFFER_ELEMENTS",
      type = "INT",
      value = 8192,
      description = ""
    },
    {
      name = "RL_DEFAULT_BATCH_BUFFERS",
      type = "INT",
      value = 1,
      description = "Default number of batch buffers (multi-buffering)"
    },
    {
      name = "RL_DEFAULT_BATCH_DRAWCALLS",
      type = "INT",
      value = 256,
      description = "Default number of batch draw calls (by state changes: mode, texture)"
    },
    {
      name = "RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS",
      type = "INT",
      value = 4,
      description = "Maximum number of textures units that can be activated on batch drawing (SetShaderValueTexture())"
    },
    {
      name = "RL_MAX_MATRIX_STACK_SIZE",
      type = "INT",
      value = 32,
      description = "Maximum size of Matrix stack"
    },
    {
      name = "RL_MAX_SHADER_LOCATIONS",
      type = "INT",
      value = 32,
      description = "Maximum number of shader locations supported"
    },
    {
      name = "RL_CULL_DISTANCE_NEAR",
      type = "DOUBLE",
      value = 0.01,
      description = "Default near cull distance"
    },
    {
      name = "RL_CULL_DISTANCE_FAR",
      type = "DOUBLE",
      value = 1000.0,
      description = "Default far cull distance"
    },
    {
      name = "RL_TEXTURE_WRAP_S",
      type = "INT",
      value = 0x2802,
      description = "GL_TEXTURE_WRAP_S"
    },
    {
      name = "RL_TEXTURE_WRAP_T",
      type = "INT",
      value = 0x2803,
      description = "GL_TEXTURE_WRAP_T"
    },
    {
      name = "RL_TEXTURE_MAG_FILTER",
      type = "INT",
      value = 0x2800,
      description = "GL_TEXTURE_MAG_FILTER"
    },
    {
      name = "RL_TEXTURE_MIN_FILTER",
      type = "INT",
      value = 0x2801,
      description = "GL_TEXTURE_MIN_FILTER"
    },
    {
      name = "RL_TEXTURE_FILTER_NEAREST",
      type = "INT",
      value = 0x2600,
      description = "GL_NEAREST"
    },
    {
      name = "RL_TEXTURE_FILTER_LINEAR",
      type = "INT",
      value = 0x2601,
      description = "GL_LINEAR"
    },
    {
      name = "RL_TEXTURE_FILTER_MIP_NEAREST",
      type = "INT",
      value = 0x2700,
      description = "GL_NEAREST_MIPMAP_NEAREST"
    },
    {
      name = "RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR",
      type = "INT",
      value = 0x2702,
      description = "GL_NEAREST_MIPMAP_LINEAR"
    },
    {
      name = "RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST",
      type = "INT",
      value = 0x2701,
      description = "GL_LINEAR_MIPMAP_NEAREST"
    },
    {
      name = "RL_TEXTURE_FILTER_MIP_LINEAR",
      type = "INT",
      value = 0x2703,
      description = "GL_LINEAR_MIPMAP_LINEAR"
    },
    {
      name = "RL_TEXTURE_FILTER_ANISOTROPIC",
      type = "INT",
      value = 0x3000,
      description = "Anisotropic filter (custom identifier)"
    },
    {
      name = "RL_TEXTURE_WRAP_REPEAT",
      type = "INT",
      value = 0x2901,
      description = "GL_REPEAT"
    },
    {
      name = "RL_TEXTURE_WRAP_CLAMP",
      type = "INT",
      value = 0x812F,
      description = "GL_CLAMP_TO_EDGE"
    },
    {
      name = "RL_TEXTURE_WRAP_MIRROR_REPEAT",
      type = "INT",
      value = 0x8370,
      description = "GL_MIRRORED_REPEAT"
    },
    {
      name = "RL_TEXTURE_WRAP_MIRROR_CLAMP",
      type = "INT",
      value = 0x8742,
      description = "GL_MIRROR_CLAMP_EXT"
    },
    {
      name = "RL_MODELVIEW",
      type = "INT",
      value = 0x1700,
      description = "GL_MODELVIEW"
    },
    {
      name = "RL_PROJECTION",
      type = "INT",
      value = 0x1701,
      description = "GL_PROJECTION"
    },
    {
      name = "RL_TEXTURE",
      type = "INT",
      value = 0x1702,
      description = "GL_TEXTURE"
    },
    {
      name = "RL_LINES",
      type = "INT",
      value = 0x0001,
      description = "GL_LINES"
    },
    {
      name = "RL_TRIANGLES",
      type = "INT",
      value = 0x0004,
      description = "GL_TRIANGLES"
    },
    {
      name = "RL_QUADS",
      type = "INT",
      value = 0x0007,
      description = "GL_QUADS"
    },
    {
      name = "RL_UNSIGNED_BYTE",
      type = "INT",
      value = 0x1401,
      description = "GL_UNSIGNED_BYTE"
    },
    {
      name = "RL_FLOAT",
      type = "INT",
      value = 0x1406,
      description = "GL_FLOAT"
    },
    {
      name = "RL_STREAM_DRAW",
      type = "INT",
      value = 0x88E0,
      description = "GL_STREAM_DRAW"
    },
    {
      name = "RL_STREAM_READ",
      type = "INT",
      value = 0x88E1,
      description = "GL_STREAM_READ"
    },
    {
      name = "RL_STREAM_COPY",
      type = "INT",
      value = 0x88E2,
      description = "GL_STREAM_COPY"
    },
    {
      name = "RL_STATIC_DRAW",
      type = "INT",
      value = 0x88E4,
      description = "GL_STATIC_DRAW"
    },
    {
      name = "RL_STATIC_READ",
      type = "INT",
      value = 0x88E5,
      description = "GL_STATIC_READ"
    },
    {
      name = "RL_STATIC_COPY",
      type = "INT",
      value = 0x88E6,
      description = "GL_STATIC_COPY"
    },
    {
      name = "RL_DYNAMIC_DRAW",
      type = "INT",
      value = 0x88E8,
      description = "GL_DYNAMIC_DRAW"
    },
    {
      name = "RL_DYNAMIC_READ",
      type = "INT",
      value = 0x88E9,
      description = "GL_DYNAMIC_READ"
    },
    {
      name = "RL_DYNAMIC_COPY",
      type = "INT",
      value = 0x88EA,
      description = "GL_DYNAMIC_COPY"
    },
    {
      name = "RL_FRAGMENT_SHADER",
      type = "INT",
      value = 0x8B30,
      description = "GL_FRAGMENT_SHADER"
    },
    {
      name = "RL_VERTEX_SHADER",
      type = "INT",
      value = 0x8B31,
      description = "GL_VERTEX_SHADER"
    },
    {
      name = "RL_COMPUTE_SHADER",
      type = "INT",
      value = 0x91B9,
      description = "GL_COMPUTE_SHADER"
    },
    {
      name = "RL_MATRIX_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_SHADER_LOC_MAP_DIFFUSE",
      type = "UNKNOWN",
      value = "RL_SHADER_LOC_MAP_ALBEDO",
      description = ""
    },
    {
      name = "RL_SHADER_LOC_MAP_SPECULAR",
      type = "UNKNOWN",
      value = "RL_SHADER_LOC_MAP_METALNESS",
      description = ""
    },
    {
      name = "APIENTRY",
      type = "UNKNOWN",
      value = "__stdcall",
      description = ""
    },
    {
      name = "WINGDIAPI",
      type = "UNKNOWN",
      value = "__declspec(dllimport)",
      description = ""
    },
    {
      name = "GLAD_MALLOC",
      type = "UNKNOWN",
      value = "RL_MALLOC",
      description = ""
    },
    {
      name = "GLAD_FREE",
      type = "UNKNOWN",
      value = "RL_FREE",
      description = ""
    },
    {
      name = "GLAD_GL_IMPLEMENTATION",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "GL_GLEXT_PROTOTYPES",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "PI",
      type = "FLOAT",
      value = 3.14159265358979323846,
      description = ""
    },
    {
      name = "DEG2RAD",
      type = "FLOAT_MATH",
      value = "(PI/180.0f)",
      description = ""
    },
    {
      name = "RAD2DEG",
      type = "FLOAT_MATH",
      value = "(180.0f/PI)",
      description = ""
    },
    {
      name = "GL_SHADING_LANGUAGE_VERSION",
      type = "INT",
      value = 0x8B8C,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGB_S3TC_DXT1_EXT",
      type = "INT",
      value = 0x83F0,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGBA_S3TC_DXT1_EXT",
      type = "INT",
      value = 0x83F1,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGBA_S3TC_DXT3_EXT",
      type = "INT",
      value = 0x83F2,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGBA_S3TC_DXT5_EXT",
      type = "INT",
      value = 0x83F3,
      description = ""
    },
    {
      name = "GL_ETC1_RGB8_OES",
      type = "INT",
      value = 0x8D64,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGB8_ETC2",
      type = "INT",
      value = 0x9274,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGBA8_ETC2_EAC",
      type = "INT",
      value = 0x9278,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG",
      type = "INT",
      value = 0x8C00,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG",
      type = "INT",
      value = 0x8C02,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGBA_ASTC_4x4_KHR",
      type = "INT",
      value = 0x93b0,
      description = ""
    },
    {
      name = "GL_COMPRESSED_RGBA_ASTC_8x8_KHR",
      type = "INT",
      value = 0x93b7,
      description = ""
    },
    {
      name = "GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT",
      type = "INT",
      value = 0x84FF,
      description = ""
    },
    {
      name = "GL_TEXTURE_MAX_ANISOTROPY_EXT",
      type = "INT",
      value = 0x84FE,
      description = ""
    },
    {
      name = "GL_UNSIGNED_SHORT_5_6_5",
      type = "INT",
      value = 0x8363,
      description = ""
    },
    {
      name = "GL_UNSIGNED_SHORT_5_5_5_1",
      type = "INT",
      value = 0x8034,
      description = ""
    },
    {
      name = "GL_UNSIGNED_SHORT_4_4_4_4",
      type = "INT",
      value = 0x8033,
      description = ""
    },
    {
      name = "GL_LUMINANCE",
      type = "INT",
      value = 0x1909,
      description = ""
    },
    {
      name = "GL_LUMINANCE_ALPHA",
      type = "INT",
      value = 0x190A,
      description = ""
    },
    {
      name = "glClearDepth",
      type = "UNKNOWN",
      value = "glClearDepthf",
      description = ""
    },
    {
      name = "GL_READ_FRAMEBUFFER",
      type = "UNKNOWN",
      value = "GL_FRAMEBUFFER",
      description = ""
    },
    {
      name = "GL_DRAW_FRAMEBUFFER",
      type = "UNKNOWN",
      value = "GL_FRAMEBUFFER",
      description = ""
    },
    {
      name = "RL_DEFAULT_SHADER_ATTRIB_NAME_POSITION",
      type = "STRING",
      value = "vertexPosition",
      description = "Binded by default to shader location: 0"
    },
    {
      name = "RL_DEFAULT_SHADER_ATTRIB_NAME_TEXCOORD",
      type = "STRING",
      value = "vertexTexCoord",
      description = "Binded by default to shader location: 1"
    },
    {
      name = "RL_DEFAULT_SHADER_ATTRIB_NAME_NORMAL",
      type = "STRING",
      value = "vertexNormal",
      description = "Binded by default to shader location: 2"
    },
    {
      name = "RL_DEFAULT_SHADER_ATTRIB_NAME_COLOR",
      type = "STRING",
      value = "vertexColor",
      description = "Binded by default to shader location: 3"
    },
    {
      name = "RL_DEFAULT_SHADER_ATTRIB_NAME_TANGENT",
      type = "STRING",
      value = "vertexTangent",
      description = "Binded by default to shader location: 4"
    },
    {
      name = "RL_DEFAULT_SHADER_ATTRIB_NAME_TEXCOORD2",
      type = "STRING",
      value = "vertexTexCoord2",
      description = "Binded by default to shader location: 5"
    },
    {
      name = "RL_DEFAULT_SHADER_UNIFORM_NAME_MVP",
      type = "STRING",
      value = "mvp",
      description = "model-view-projection matrix"
    },
    {
      name = "RL_DEFAULT_SHADER_UNIFORM_NAME_VIEW",
      type = "STRING",
      value = "matView",
      description = "view matrix"
    },
    {
      name = "RL_DEFAULT_SHADER_UNIFORM_NAME_PROJECTION",
      type = "STRING",
      value = "matProjection",
      description = "projection matrix"
    },
    {
      name = "RL_DEFAULT_SHADER_UNIFORM_NAME_MODEL",
      type = "STRING",
      value = "matModel",
      description = "model matrix"
    },
    {
      name = "RL_DEFAULT_SHADER_UNIFORM_NAME_NORMAL",
      type = "STRING",
      value = "matNormal",
      description = "normal matrix (transpose(inverse(matModelView))"
    },
    {
      name = "RL_DEFAULT_SHADER_UNIFORM_NAME_COLOR",
      type = "STRING",
      value = "colDiffuse",
      description = "color diffuse (base tint color, multiplied by texture color)"
    },
    {
      name = "RL_DEFAULT_SHADER_SAMPLER2D_NAME_TEXTURE0",
      type = "STRING",
      value = "texture0",
      description = "texture0 (texture slot active 0)"
    },
    {
      name = "RL_DEFAULT_SHADER_SAMPLER2D_NAME_TEXTURE1",
      type = "STRING",
      value = "texture1",
      description = "texture1 (texture slot active 1)"
    },
    {
      name = "RL_DEFAULT_SHADER_SAMPLER2D_NAME_TEXTURE2",
      type = "STRING",
      value = "texture2",
      description = "texture2 (texture slot active 2)"
    },
    {
      name = "MIN(a,b)",
      type = "MACRO",
      value = "(((a)<(b))?(a):(b))",
      description = ""
    },
    {
      name = "MAX(a,b)",
      type = "MACRO",
      value = "(((a)>(b))?(a):(b))",
      description = ""
    }
  },
  structs = {
    {
      name = "rlVertexBuffer",
      description = "Dynamic vertex buffers (position + texcoords + colors + indices arrays)",
      fields = {
        {
          type = "int",
          name = "elementCount",
          description = "Number of elements in the buffer (QUADS)"
        },
        {
          type = "float *",
          name = "vertices",
          description = "Vertex position (XYZ - 3 components per vertex) (shader-location = 0)"
        },
        {
          type = "float *",
          name = "texcoords",
          description = "Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)"
        },
        {
          type = "unsigned char *",
          name = "colors",
          description = "Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)"
        },
        {
          type = "#if defined(GRAPHICS_API_OPENGL_11) || defined(GRAPHICS_API_OPENunsigned int *",
          name = "vaoId",
          description = "Vertex array id to be used on the draw -> Using RLGL.currentBatch->vertexBuffer.vaoId"
        },
        {
          type = "unsigned int *",
          name = "indices",
          description = "Vertex indices (in case vertex data comes indexed) (6 indices per quad)"
        },
        {
          type = "#endif",
          name = "rlRenderBatch",
          description = ""
        },
        {
          type = "#if defined(GRAPHICS_API_OPENGL_ES2)",
          name = "vertexAlignment",
          description = "Number of vertex required for index alignment (LINES, TRIANGLES)"
        },
        {
          type = "unsigned short *",
          name = "indices",
          description = "Vertex indices (in case vertex data comes indexed) (6 indices per quad)"
        },
        {
          type = "#endif",
          name = "mode",
          description = "Drawing mode: LINES, TRIANGLES, QUADS"
        },
        {
          type = "unsigned int",
          name = "vaoId",
          description = "OpenGL Vertex Array Object id"
        },
        {
          type = "unsigned int[4]",
          name = "vboId",
          description = "OpenGL Vertex Buffer Objects id (4 types of vertex data)"
        }
      }
    },
    {
      name = "rlDrawCall",
      description = "of those state-change happens (this is done in core module)",
      fields = {
        {
          type = "int",
          name = "mode",
          description = "Drawing mode: LINES, TRIANGLES, QUADS"
        },
        {
          type = "int",
          name = "vertexCount",
          description = "Number of vertex of the draw"
        },
        {
          type = "int",
          name = "vertexAlignment",
          description = "Number of vertex required for index alignment (LINES, TRIANGLES)"
        },
        {
          type = "unsigned int",
          name = "textureId",
          description = "Texture id to be used on the draw -> Use to create new draw call if changes"
        }
      }
    },
    {
      name = "rlRenderBatch",
      description = "rlRenderBatch type",
      fields = {
        {
          type = "int",
          name = "bufferCount",
          description = "Number of vertex buffers (multi-buffering support)"
        },
        {
          type = "int",
          name = "currentBuffer",
          description = "Current buffer tracking in case of multi-buffering"
        },
        {
          type = "rlVertexBuffer *",
          name = "vertexBuffer",
          description = "Dynamic buffer(s) for vertex data"
        },
        {
          type = "rlDrawCall *",
          name = "draws",
          description = "Draw calls array, depends on textureId"
        },
        {
          type = "int",
          name = "drawCounter",
          description = "Draw calls counter"
        },
        {
          type = "float",
          name = "currentDepth",
          description = "Current depth value for next draw"
        }
      }
    },
    {
      name = "Matrix",
      description = "Matrix, 4x4 components, column major, OpenGL style, right handed",
      fields = {
        {
          type = "float",
          name = "m0",
          description = "Matrix first row (4 components)"
        },
        {
          type = "float",
          name = "m4",
          description = "Matrix first row (4 components)"
        },
        {
          type = "float",
          name = "m8",
          description = "Matrix first row (4 components)"
        },
        {
          type = "float",
          name = "m12",
          description = "Matrix first row (4 components)"
        },
        {
          type = "float",
          name = "m1",
          description = "Matrix second row (4 components)"
        },
        {
          type = "float",
          name = "m5",
          description = "Matrix second row (4 components)"
        },
        {
          type = "float",
          name = "m9",
          description = "Matrix second row (4 components)"
        },
        {
          type = "float",
          name = "m13",
          description = "Matrix second row (4 components)"
        },
        {
          type = "float",
          name = "m2",
          description = "Matrix third row (4 components)"
        },
        {
          type = "float",
          name = "m6",
          description = "Matrix third row (4 components)"
        },
        {
          type = "float",
          name = "m10",
          description = "Matrix third row (4 components)"
        },
        {
          type = "float",
          name = "m14",
          description = "Matrix third row (4 components)"
        },
        {
          type = "float",
          name = "m3",
          description = "Matrix fourth row (4 components)"
        },
        {
          type = "float",
          name = "m7",
          description = "Matrix fourth row (4 components)"
        },
        {
          type = "float",
          name = "m11",
          description = "Matrix fourth row (4 components)"
        },
        {
          type = "float",
          name = "m15",
          description = "Matrix fourth row (4 components)"
        }
      }
    },
    {
      name = "rlglData",
      description = "",
      fields = {
        {
          type = "rlRenderBatch *",
          name = "currentBatch",
          description = "Current render batch"
        },
        {
          type = "rlRenderBatch",
          name = "defaultBatch",
          description = "Default internal render batch"
        },
        {
          type = "int",
          name = "vertexCounter",
          description = "Current active render batch vertex counter (generic, used for all batches)"
        },
        {
          type = "float",
          name = "texcoordx",
          description = "Current active texture coordinate (added on glVertex*())"
        },
        {
          type = "float",
          name = "texcoordy",
          description = "Current active texture coordinate (added on glVertex*())"
        },
        {
          type = "float",
          name = "normalx",
          description = "Current active normal (added on glVertex*())"
        },
        {
          type = "float",
          name = "normaly",
          description = "Current active normal (added on glVertex*())"
        },
        {
          type = "float",
          name = "normalz",
          description = "Current active normal (added on glVertex*())"
        },
        {
          type = "unsigned char",
          name = "colorr",
          description = "Current active color (added on glVertex*())"
        },
        {
          type = "unsigned char",
          name = "colorg",
          description = "Current active color (added on glVertex*())"
        },
        {
          type = "unsigned char",
          name = "colorb",
          description = "Current active color (added on glVertex*())"
        },
        {
          type = "unsigned char",
          name = "colora",
          description = "Current active color (added on glVertex*())"
        },
        {
          type = "int",
          name = "currentMatrixMode",
          description = "Current matrix mode"
        },
        {
          type = "Matrix *",
          name = "currentMatrix",
          description = "Current matrix pointer"
        },
        {
          type = "Matrix",
          name = "modelview",
          description = "Default modelview matrix"
        },
        {
          type = "Matrix",
          name = "projection",
          description = "Default projection matrix"
        },
        {
          type = "Matrix",
          name = "transform",
          description = "Transform matrix to be used with rlTranslate, rlRotate, rlScale"
        },
        {
          type = "bool",
          name = "transformRequired",
          description = "Require transform matrix application to current draw-call vertex (if required)"
        },
        {
          type = "Matrix[RL_MAX_MATRIX_STACK_SIZE]",
          name = "stack",
          description = "Matrix stack for push/pop"
        },
        {
          type = "int",
          name = "stackCounter",
          description = "Matrix stack counter"
        },
        {
          type = "unsigned int",
          name = "defaultTextureId",
          description = "Default texture used on shapes/poly drawing (required by shader)"
        },
        {
          type = "unsigned int[RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS]",
          name = "activeTextureId",
          description = "Active texture ids to be enabled on batch drawing (0 active by default)"
        },
        {
          type = "unsigned int",
          name = "defaultVShaderId",
          description = "Default vertex shader id (used by default shader program)"
        },
        {
          type = "unsigned int",
          name = "defaultFShaderId",
          description = "Default fragment shader id (used by default shader program)"
        },
        {
          type = "unsigned int",
          name = "defaultShaderId",
          description = "Default shader program id, supports vertex color and diffuse texture"
        },
        {
          type = "int *",
          name = "defaultShaderLocs",
          description = "Default shader locations pointer to be used on rendering"
        },
        {
          type = "unsigned int",
          name = "currentShaderId",
          description = "Current shader id to be used on rendering (by default, defaultShaderId)"
        },
        {
          type = "int *",
          name = "currentShaderLocs",
          description = "Current shader locations pointer to be used on rendering (by default, defaultShaderLocs)"
        },
        {
          type = "bool",
          name = "stereoRender",
          description = "Stereo rendering flag"
        },
        {
          type = "Matrix[2]",
          name = "projectionStereo",
          description = "VR stereo rendering eyes projection matrices"
        },
        {
          type = "Matrix[2]",
          name = "viewOffsetStereo",
          description = "VR stereo rendering eyes view offset matrices"
        },
        {
          type = "int",
          name = "currentBlendMode",
          description = "Blending mode active"
        },
        {
          type = "int",
          name = "glBlendSrcFactor",
          description = "Blending source factor"
        },
        {
          type = "int",
          name = "glBlendDstFactor",
          description = "Blending destination factor"
        },
        {
          type = "int",
          name = "glBlendEquation",
          description = "Blending equation"
        },
        {
          type = "int",
          name = "framebufferWidth",
          description = "Current framebuffer width"
        },
        {
          type = "int",
          name = "framebufferHeight",
          description = "Current framebuffer height"
        }
      }
    }
  },
  aliases = {
  },
  enums = {
    {
      name = "rlGlVersion",
      description = "",
      values = {
        {
          name = "OPENGL_11",
          value = 1,
          description = ""
        },
        {
          name = "OPENGL_21",
          value = 2,
          description = ""
        },
        {
          name = "OPENGL_33",
          value = 3,
          description = ""
        },
        {
          name = "OPENGL_43",
          value = 4,
          description = ""
        },
        {
          name = "OPENGL_ES_20",
          value = 5,
          description = ""
        }
      }
    },
    {
      name = "rlFramebufferAttachType",
      description = "",
      values = {
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL0",
          value = 0,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL1",
          value = 1,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL2",
          value = 2,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL3",
          value = 3,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL4",
          value = 4,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL5",
          value = 5,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL6",
          value = 6,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_COLOR_CHANNEL7",
          value = 7,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_DEPTH",
          value = 100,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_STENCIL",
          value = 200,
          description = ""
        }
      }
    },
    {
      name = "rlFramebufferAttachTextureType",
      description = "",
      values = {
        {
          name = "RL_ATTACHMENT_CUBEMAP_POSITIVE_X",
          value = 0,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_CUBEMAP_NEGATIVE_X",
          value = 1,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_CUBEMAP_POSITIVE_Y",
          value = 2,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y",
          value = 3,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_CUBEMAP_POSITIVE_Z",
          value = 4,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z",
          value = 5,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_TEXTURE2D",
          value = 100,
          description = ""
        },
        {
          name = "RL_ATTACHMENT_RENDERBUFFER",
          value = 200,
          description = ""
        }
      }
    },
    {
      name = "rlTraceLogLevel",
      description = "Trace log level",
      values = {
        {
          name = "RL_LOG_ALL",
          value = 0,
          description = "Display all logs"
        },
        {
          name = "RL_LOG_TRACE",
          value = 1,
          description = "Trace logging, intended for internal use only"
        },
        {
          name = "RL_LOG_DEBUG",
          value = 2,
          description = "Debug logging, used for internal debugging, it should be disabled on release builds"
        },
        {
          name = "RL_LOG_INFO",
          value = 3,
          description = "Info logging, used for program execution info"
        },
        {
          name = "RL_LOG_WARNING",
          value = 4,
          description = "Warning logging, used on recoverable failures"
        },
        {
          name = "RL_LOG_ERROR",
          value = 5,
          description = "Error logging, used on unrecoverable failures"
        },
        {
          name = "RL_LOG_FATAL",
          value = 6,
          description = "Fatal logging, used to abort program: exit(EXIT_FAILURE)"
        },
        {
          name = "RL_LOG_NONE",
          value = 7,
          description = "Disable logging"
        }
      }
    },
    {
      name = "rlPixelFormat",
      description = "Texture formats (support depends on OpenGL version)",
      values = {
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE",
          value = 1,
          description = "8 bit per pixel (no alpha)"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA",
          value = 2,
          description = "8*2 bpp (2 channels)"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5",
          value = 3,
          description = "16 bpp"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8",
          value = 4,
          description = "24 bpp"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1",
          value = 5,
          description = "16 bpp (1 bit alpha)"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4",
          value = 6,
          description = "16 bpp (4 bit alpha)"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8",
          value = 7,
          description = "32 bpp"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R32",
          value = 8,
          description = "32 bpp (1 channel - float)"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32",
          value = 9,
          description = "32*3 bpp (3 channels - float)"
        },
        {
          name = "RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32",
          value = 10,
          description = "32*4 bpp (4 channels - float)"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_DXT1_RGB",
          value = 11,
          description = "4 bpp (no alpha)"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA",
          value = 12,
          description = "4 bpp (1 bit alpha)"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA",
          value = 13,
          description = "8 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA",
          value = 14,
          description = "8 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_ETC1_RGB",
          value = 15,
          description = "4 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_ETC2_RGB",
          value = 16,
          description = "4 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA",
          value = 17,
          description = "8 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_PVRT_RGB",
          value = 18,
          description = "4 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA",
          value = 19,
          description = "4 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA",
          value = 20,
          description = "8 bpp"
        },
        {
          name = "RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA",
          value = 21,
          description = "2 bpp"
        }
      }
    },
    {
      name = "rlTextureFilter",
      description = "Texture parameters: filter mode",
      values = {
        {
          name = "RL_TEXTURE_FILTER_POINT",
          value = 0,
          description = "No filter, just pixel approximation"
        },
        {
          name = "RL_TEXTURE_FILTER_BILINEAR",
          value = 1,
          description = "Linear filtering"
        },
        {
          name = "RL_TEXTURE_FILTER_TRILINEAR",
          value = 2,
          description = "Trilinear filtering (linear with mipmaps)"
        },
        {
          name = "RL_TEXTURE_FILTER_ANISOTROPIC_4X",
          value = 3,
          description = "Anisotropic filtering 4x"
        },
        {
          name = "RL_TEXTURE_FILTER_ANISOTROPIC_8X",
          value = 4,
          description = "Anisotropic filtering 8x"
        },
        {
          name = "RL_TEXTURE_FILTER_ANISOTROPIC_16X",
          value = 5,
          description = "Anisotropic filtering 16x"
        }
      }
    },
    {
      name = "rlBlendMode",
      description = "Color blending modes (pre-defined)",
      values = {
        {
          name = "RL_BLEND_ALPHA",
          value = 0,
          description = "Blend textures considering alpha (default)"
        },
        {
          name = "RL_BLEND_ADDITIVE",
          value = 1,
          description = "Blend textures adding colors"
        },
        {
          name = "RL_BLEND_MULTIPLIED",
          value = 2,
          description = "Blend textures multiplying colors"
        },
        {
          name = "RL_BLEND_ADD_COLORS",
          value = 3,
          description = "Blend textures adding colors (alternative)"
        },
        {
          name = "RL_BLEND_SUBTRACT_COLORS",
          value = 4,
          description = "Blend textures subtracting colors (alternative)"
        },
        {
          name = "RL_BLEND_ALPHA_PREMULTIPLY",
          value = 5,
          description = "Blend premultiplied textures considering alpha"
        },
        {
          name = "RL_BLEND_CUSTOM",
          value = 6,
          description = "Blend textures using custom src/dst factors (use rlSetBlendFactors())"
        }
      }
    },
    {
      name = "rlShaderLocationIndex",
      description = "Shader location point type",
      values = {
        {
          name = "RL_SHADER_LOC_VERTEX_POSITION",
          value = 0,
          description = "Shader location: vertex attribute: position"
        },
        {
          name = "RL_SHADER_LOC_VERTEX_TEXCOORD01",
          value = 1,
          description = "Shader location: vertex attribute: texcoord01"
        },
        {
          name = "RL_SHADER_LOC_VERTEX_TEXCOORD02",
          value = 2,
          description = "Shader location: vertex attribute: texcoord02"
        },
        {
          name = "RL_SHADER_LOC_VERTEX_NORMAL",
          value = 3,
          description = "Shader location: vertex attribute: normal"
        },
        {
          name = "RL_SHADER_LOC_VERTEX_TANGENT",
          value = 4,
          description = "Shader location: vertex attribute: tangent"
        },
        {
          name = "RL_SHADER_LOC_VERTEX_COLOR",
          value = 5,
          description = "Shader location: vertex attribute: color"
        },
        {
          name = "RL_SHADER_LOC_MATRIX_MVP",
          value = 6,
          description = "Shader location: matrix uniform: model-view-projection"
        },
        {
          name = "RL_SHADER_LOC_MATRIX_VIEW",
          value = 7,
          description = "Shader location: matrix uniform: view (camera transform)"
        },
        {
          name = "RL_SHADER_LOC_MATRIX_PROJECTION",
          value = 8,
          description = "Shader location: matrix uniform: projection"
        },
        {
          name = "RL_SHADER_LOC_MATRIX_MODEL",
          value = 9,
          description = "Shader location: matrix uniform: model (transform)"
        },
        {
          name = "RL_SHADER_LOC_MATRIX_NORMAL",
          value = 10,
          description = "Shader location: matrix uniform: normal"
        },
        {
          name = "RL_SHADER_LOC_VECTOR_VIEW",
          value = 11,
          description = "Shader location: vector uniform: view"
        },
        {
          name = "RL_SHADER_LOC_COLOR_DIFFUSE",
          value = 12,
          description = "Shader location: vector uniform: diffuse color"
        },
        {
          name = "RL_SHADER_LOC_COLOR_SPECULAR",
          value = 13,
          description = "Shader location: vector uniform: specular color"
        },
        {
          name = "RL_SHADER_LOC_COLOR_AMBIENT",
          value = 14,
          description = "Shader location: vector uniform: ambient color"
        },
        {
          name = "RL_SHADER_LOC_MAP_ALBEDO",
          value = 15,
          description = "Shader location: sampler2d texture: albedo (same as: RL_SHADER_LOC_MAP_DIFFUSE)"
        },
        {
          name = "RL_SHADER_LOC_MAP_METALNESS",
          value = 16,
          description = "Shader location: sampler2d texture: metalness (same as: RL_SHADER_LOC_MAP_SPECULAR)"
        },
        {
          name = "RL_SHADER_LOC_MAP_NORMAL",
          value = 17,
          description = "Shader location: sampler2d texture: normal"
        },
        {
          name = "RL_SHADER_LOC_MAP_ROUGHNESS",
          value = 18,
          description = "Shader location: sampler2d texture: roughness"
        },
        {
          name = "RL_SHADER_LOC_MAP_OCCLUSION",
          value = 19,
          description = "Shader location: sampler2d texture: occlusion"
        },
        {
          name = "RL_SHADER_LOC_MAP_EMISSION",
          value = 20,
          description = "Shader location: sampler2d texture: emission"
        },
        {
          name = "RL_SHADER_LOC_MAP_HEIGHT",
          value = 21,
          description = "Shader location: sampler2d texture: height"
        },
        {
          name = "RL_SHADER_LOC_MAP_CUBEMAP",
          value = 22,
          description = "Shader location: samplerCube texture: cubemap"
        },
        {
          name = "RL_SHADER_LOC_MAP_IRRADIANCE",
          value = 23,
          description = "Shader location: samplerCube texture: irradiance"
        },
        {
          name = "RL_SHADER_LOC_MAP_PREFILTER",
          value = 24,
          description = "Shader location: samplerCube texture: prefilter"
        },
        {
          name = "RL_SHADER_LOC_MAP_BRDF",
          value = 25,
          description = "Shader location: sampler2d texture: brdf"
        }
      }
    },
    {
      name = "rlShaderUniformDataType",
      description = "Shader uniform data type",
      values = {
        {
          name = "RL_SHADER_UNIFORM_FLOAT",
          value = 0,
          description = "Shader uniform type: float"
        },
        {
          name = "RL_SHADER_UNIFORM_VEC2",
          value = 1,
          description = "Shader uniform type: vec2 (2 float)"
        },
        {
          name = "RL_SHADER_UNIFORM_VEC3",
          value = 2,
          description = "Shader uniform type: vec3 (3 float)"
        },
        {
          name = "RL_SHADER_UNIFORM_VEC4",
          value = 3,
          description = "Shader uniform type: vec4 (4 float)"
        },
        {
          name = "RL_SHADER_UNIFORM_INT",
          value = 4,
          description = "Shader uniform type: int"
        },
        {
          name = "RL_SHADER_UNIFORM_IVEC2",
          value = 5,
          description = "Shader uniform type: ivec2 (2 int)"
        },
        {
          name = "RL_SHADER_UNIFORM_IVEC3",
          value = 6,
          description = "Shader uniform type: ivec3 (3 int)"
        },
        {
          name = "RL_SHADER_UNIFORM_IVEC4",
          value = 7,
          description = "Shader uniform type: ivec4 (4 int)"
        },
        {
          name = "RL_SHADER_UNIFORM_SAMPLER2D",
          value = 8,
          description = "Shader uniform type: sampler2d"
        }
      }
    },
    {
      name = "rlShaderAttributeDataType",
      description = "Shader attribute data types",
      values = {
        {
          name = "RL_SHADER_ATTRIB_FLOAT",
          value = 0,
          description = "Shader attribute type: float"
        },
        {
          name = "RL_SHADER_ATTRIB_VEC2",
          value = 1,
          description = "Shader attribute type: vec2 (2 float)"
        },
        {
          name = "RL_SHADER_ATTRIB_VEC3",
          value = 2,
          description = "Shader attribute type: vec3 (3 float)"
        },
        {
          name = "RL_SHADER_ATTRIB_VEC4",
          value = 3,
          description = "Shader attribute type: vec4 (4 float)"
        }
      }
    }
  },
  callbacks = {
    {
      name = "rlglLoadProc",
      description = "OpenGL extension functions loader signature (same as GLADloadproc)",
      returnType = "void *",
      params = {
        {type = "const char *", name = "name"}
      }
    }
  },
  functions = {
    {
      name = "rlMatrixMode",
      description = "Choose the current matrix to be transformed",
      returnType = "void",
      params = {
        {type = "int", name = "mode"}
      }
    },
    {
      name = "rlPushMatrix",
      description = "Push the current matrix to stack",
      returnType = "void"
    },
    {
      name = "rlPopMatrix",
      description = "Pop lattest inserted matrix from stack",
      returnType = "void"
    },
    {
      name = "rlLoadIdentity",
      description = "Reset current matrix to identity matrix",
      returnType = "void"
    },
    {
      name = "rlTranslatef",
      description = "Multiply the current matrix by a translation matrix",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"},
        {type = "float", name = "z"}
      }
    },
    {
      name = "rlRotatef",
      description = "Multiply the current matrix by a rotation matrix",
      returnType = "void",
      params = {
        {type = "float", name = "angle"},
        {type = "float", name = "x"},
        {type = "float", name = "y"},
        {type = "float", name = "z"}
      }
    },
    {
      name = "rlScalef",
      description = "Multiply the current matrix by a scaling matrix",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"},
        {type = "float", name = "z"}
      }
    },
    {
      name = "rlMultMatrixf",
      description = "Multiply the current matrix by another matrix",
      returnType = "void",
      params = {
        {type = "float *", name = "matf"}
      }
    },
    {
      name = "rlFrustum",
      description = "",
      returnType = "void",
      params = {
        {type = "double", name = "left"},
        {type = "double", name = "right"},
        {type = "double", name = "bottom"},
        {type = "double", name = "top"},
        {type = "double", name = "znear"},
        {type = "double", name = "zfar"}
      }
    },
    {
      name = "rlOrtho",
      description = "",
      returnType = "void",
      params = {
        {type = "double", name = "left"},
        {type = "double", name = "right"},
        {type = "double", name = "bottom"},
        {type = "double", name = "top"},
        {type = "double", name = "znear"},
        {type = "double", name = "zfar"}
      }
    },
    {
      name = "rlViewport",
      description = "Set the viewport area",
      returnType = "void",
      params = {
        {type = "int", name = "x"},
        {type = "int", name = "y"},
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "rlBegin",
      description = "Initialize drawing mode (how to organize vertex)",
      returnType = "void",
      params = {
        {type = "int", name = "mode"}
      }
    },
    {
      name = "rlEnd",
      description = "Finish vertex providing",
      returnType = "void"
    },
    {
      name = "rlVertex2i",
      description = "Define one vertex (position) - 2 int",
      returnType = "void",
      params = {
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "rlVertex2f",
      description = "Define one vertex (position) - 2 float",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"}
      }
    },
    {
      name = "rlVertex3f",
      description = "Define one vertex (position) - 3 float",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"},
        {type = "float", name = "z"}
      }
    },
    {
      name = "rlTexCoord2f",
      description = "Define one vertex (texture coordinate) - 2 float",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"}
      }
    },
    {
      name = "rlNormal3f",
      description = "Define one vertex (normal) - 3 float",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"},
        {type = "float", name = "z"}
      }
    },
    {
      name = "rlColor4ub",
      description = "Define one vertex (color) - 4 byte",
      returnType = "void",
      params = {
        {type = "unsigned char", name = "r"},
        {type = "unsigned char", name = "g"},
        {type = "unsigned char", name = "b"},
        {type = "unsigned char", name = "a"}
      }
    },
    {
      name = "rlColor3f",
      description = "Define one vertex (color) - 3 float",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"},
        {type = "float", name = "z"}
      }
    },
    {
      name = "rlColor4f",
      description = "Define one vertex (color) - 4 float",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"},
        {type = "float", name = "z"},
        {type = "float", name = "w"}
      }
    },
    {
      name = "rlEnableVertexArray",
      description = "Enable vertex array (VAO, if supported)",
      returnType = "bool",
      params = {
        {type = "unsigned int", name = "vaoId"}
      }
    },
    {
      name = "rlDisableVertexArray",
      description = "Disable vertex array (VAO, if supported)",
      returnType = "void"
    },
    {
      name = "rlEnableVertexBuffer",
      description = "Enable vertex buffer (VBO)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlDisableVertexBuffer",
      description = "Disable vertex buffer (VBO)",
      returnType = "void"
    },
    {
      name = "rlEnableVertexBufferElement",
      description = "Enable vertex buffer element (VBO element)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlDisableVertexBufferElement",
      description = "Disable vertex buffer element (VBO element)",
      returnType = "void"
    },
    {
      name = "rlEnableVertexAttribute",
      description = "Enable vertex attribute index",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "index"}
      }
    },
    {
      name = "rlDisableVertexAttribute",
      description = "Disable vertex attribute index",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "index"}
      }
    },
    {
      name = "rlEnableStatePointer",
      description = "Enable attribute state pointer",
      returnType = "void",
      params = {
        {type = "int", name = "vertexAttribType"},
        {type = "void *", name = "buffer"}
      }
    },
    {
      name = "rlDisableStatePointer",
      description = "Disable attribute state pointer",
      returnType = "void",
      params = {
        {type = "int", name = "vertexAttribType"}
      }
    },
    {
      name = "rlActiveTextureSlot",
      description = "Select and active a texture slot",
      returnType = "void",
      params = {
        {type = "int", name = "slot"}
      }
    },
    {
      name = "rlEnableTexture",
      description = "Enable texture",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlDisableTexture",
      description = "Disable texture",
      returnType = "void"
    },
    {
      name = "rlEnableTextureCubemap",
      description = "Enable texture cubemap",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlDisableTextureCubemap",
      description = "Disable texture cubemap",
      returnType = "void"
    },
    {
      name = "rlTextureParameters",
      description = "Set texture parameters (filter, wrap)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "int", name = "param"},
        {type = "int", name = "value"}
      }
    },
    {
      name = "rlEnableShader",
      description = "Enable shader program",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlDisableShader",
      description = "Disable shader program",
      returnType = "void"
    },
    {
      name = "rlEnableFramebuffer",
      description = "Enable render texture (fbo)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlDisableFramebuffer",
      description = "Disable render texture (fbo), return to default framebuffer",
      returnType = "void"
    },
    {
      name = "rlActiveDrawBuffers",
      description = "Activate multiple draw color buffers",
      returnType = "void",
      params = {
        {type = "int", name = "count"}
      }
    },
    {
      name = "rlEnableColorBlend",
      description = "Enable color blending",
      returnType = "void"
    },
    {
      name = "rlDisableColorBlend",
      description = "Disable color blending",
      returnType = "void"
    },
    {
      name = "rlEnableDepthTest",
      description = "Enable depth test",
      returnType = "void"
    },
    {
      name = "rlDisableDepthTest",
      description = "Disable depth test",
      returnType = "void"
    },
    {
      name = "rlEnableDepthMask",
      description = "Enable depth write",
      returnType = "void"
    },
    {
      name = "rlDisableDepthMask",
      description = "Disable depth write",
      returnType = "void"
    },
    {
      name = "rlEnableBackfaceCulling",
      description = "Enable backface culling",
      returnType = "void"
    },
    {
      name = "rlDisableBackfaceCulling",
      description = "Disable backface culling",
      returnType = "void"
    },
    {
      name = "rlEnableScissorTest",
      description = "Enable scissor test",
      returnType = "void"
    },
    {
      name = "rlDisableScissorTest",
      description = "Disable scissor test",
      returnType = "void"
    },
    {
      name = "rlScissor",
      description = "Scissor test",
      returnType = "void",
      params = {
        {type = "int", name = "x"},
        {type = "int", name = "y"},
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "rlEnableWireMode",
      description = "Enable wire mode",
      returnType = "void"
    },
    {
      name = "rlDisableWireMode",
      description = "Disable wire mode",
      returnType = "void"
    },
    {
      name = "rlSetLineWidth",
      description = "Set the line drawing width",
      returnType = "void",
      params = {
        {type = "float", name = "width"}
      }
    },
    {
      name = "rlGetLineWidth",
      description = "Get the line drawing width",
      returnType = "float"
    },
    {
      name = "rlEnableSmoothLines",
      description = "Enable line aliasing",
      returnType = "void"
    },
    {
      name = "rlDisableSmoothLines",
      description = "Disable line aliasing",
      returnType = "void"
    },
    {
      name = "rlEnableStereoRender",
      description = "Enable stereo rendering",
      returnType = "void"
    },
    {
      name = "rlDisableStereoRender",
      description = "Disable stereo rendering",
      returnType = "void"
    },
    {
      name = "rlIsStereoRenderEnabled",
      description = "Check if stereo render is enabled",
      returnType = "bool"
    },
    {
      name = "rlClearColor",
      description = "Clear color buffer with color",
      returnType = "void",
      params = {
        {type = "unsigned char", name = "r"},
        {type = "unsigned char", name = "g"},
        {type = "unsigned char", name = "b"},
        {type = "unsigned char", name = "a"}
      }
    },
    {
      name = "rlClearScreenBuffers",
      description = "Clear used screen buffers (color and depth)",
      returnType = "void"
    },
    {
      name = "rlCheckErrors",
      description = "Check and log OpenGL error codes",
      returnType = "void"
    },
    {
      name = "rlSetBlendMode",
      description = "Set blending mode",
      returnType = "void",
      params = {
        {type = "int", name = "mode"}
      }
    },
    {
      name = "rlSetBlendFactors",
      description = "Set blending mode factor and equation (using OpenGL factors)",
      returnType = "void",
      params = {
        {type = "int", name = "glSrcFactor"},
        {type = "int", name = "glDstFactor"},
        {type = "int", name = "glEquation"}
      }
    },
    {
      name = "rlglInit",
      description = "Initialize rlgl (buffers, shaders, textures, states)",
      returnType = "void",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "rlglClose",
      description = "De-inititialize rlgl (buffers, shaders, textures)",
      returnType = "void"
    },
    {
      name = "rlLoadExtensions",
      description = "Load OpenGL extensions (loader function required)",
      returnType = "void",
      params = {
        {type = "void *", name = "loader"}
      }
    },
    {
      name = "rlGetVersion",
      description = "Get current OpenGL version",
      returnType = "int"
    },
    {
      name = "rlSetFramebufferWidth",
      description = "Set current framebuffer width",
      returnType = "void",
      params = {
        {type = "int", name = "width"}
      }
    },
    {
      name = "rlGetFramebufferWidth",
      description = "Get default framebuffer width",
      returnType = "int"
    },
    {
      name = "rlSetFramebufferHeight",
      description = "Set current framebuffer height",
      returnType = "void",
      params = {
        {type = "int", name = "height"}
      }
    },
    {
      name = "rlGetFramebufferHeight",
      description = "Get default framebuffer height",
      returnType = "int"
    },
    {
      name = "rlGetTextureIdDefault",
      description = "Get default texture id",
      returnType = "unsigned int"
    },
    {
      name = "rlGetShaderIdDefault",
      description = "Get default shader id",
      returnType = "unsigned int"
    },
    {
      name = "rlGetShaderLocsDefault",
      description = "Get default shader locations",
      returnType = "int *"
    },
    {
      name = "rlLoadRenderBatch",
      description = "Load a render batch system",
      returnType = "rlRenderBatch",
      params = {
        {type = "int", name = "numBuffers"},
        {type = "int", name = "bufferElements"}
      }
    },
    {
      name = "rlUnloadRenderBatch",
      description = "Unload render batch system",
      returnType = "void",
      params = {
        {type = "rlRenderBatch", name = "batch"}
      }
    },
    {
      name = "rlDrawRenderBatch",
      description = "Draw render batch data (Update->Draw->Reset)",
      returnType = "void",
      params = {
        {type = "rlRenderBatch *", name = "batch"}
      }
    },
    {
      name = "rlSetRenderBatchActive",
      description = "Set the active render batch for rlgl (NULL for default internal)",
      returnType = "void",
      params = {
        {type = "rlRenderBatch *", name = "batch"}
      }
    },
    {
      name = "rlDrawRenderBatchActive",
      description = "Update and draw internal render batch",
      returnType = "void"
    },
    {
      name = "rlCheckRenderBatchLimit",
      description = "Check internal buffer overflow for a given number of vertex",
      returnType = "bool",
      params = {
        {type = "int", name = "vCount"}
      }
    },
    {
      name = "rlSetTexture",
      description = "Set current texture for render batch and check buffers limits",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlLoadVertexArray",
      description = "Load vertex array (vao) if supported",
      returnType = "unsigned int"
    },
    {
      name = "rlLoadVertexBuffer",
      description = "Load a vertex buffer attribute",
      returnType = "unsigned int",
      params = {
        {type = "const void *", name = "buffer"},
        {type = "int", name = "size"},
        {type = "bool", name = "dynamic"}
      }
    },
    {
      name = "rlLoadVertexBufferElement",
      description = "Load a new attributes element buffer",
      returnType = "unsigned int",
      params = {
        {type = "const void *", name = "buffer"},
        {type = "int", name = "size"},
        {type = "bool", name = "dynamic"}
      }
    },
    {
      name = "rlUpdateVertexBuffer",
      description = "Update GPU buffer with new data",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "bufferId"},
        {type = "const void *", name = "data"},
        {type = "int", name = "dataSize"},
        {type = "int", name = "offset"}
      }
    },
    {
      name = "rlUpdateVertexBufferElements",
      description = "Update vertex buffer elements with new data",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "const void *", name = "data"},
        {type = "int", name = "dataSize"},
        {type = "int", name = "offset"}
      }
    },
    {
      name = "rlUnloadVertexArray",
      description = "",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "vaoId"}
      }
    },
    {
      name = "rlUnloadVertexBuffer",
      description = "",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "vboId"}
      }
    },
    {
      name = "rlSetVertexAttribute",
      description = "",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "index"},
        {type = "int", name = "compSize"},
        {type = "int", name = "type"},
        {type = "bool", name = "normalized"},
        {type = "int", name = "stride"},
        {type = "const void *", name = "pointer"}
      }
    },
    {
      name = "rlSetVertexAttributeDivisor",
      description = "",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "index"},
        {type = "int", name = "divisor"}
      }
    },
    {
      name = "rlSetVertexAttributeDefault",
      description = "Set vertex attribute default value",
      returnType = "void",
      params = {
        {type = "int", name = "locIndex"},
        {type = "const void *", name = "value"},
        {type = "int", name = "attribType"},
        {type = "int", name = "count"}
      }
    },
    {
      name = "rlDrawVertexArray",
      description = "",
      returnType = "void",
      params = {
        {type = "int", name = "offset"},
        {type = "int", name = "count"}
      }
    },
    {
      name = "rlDrawVertexArrayElements",
      description = "",
      returnType = "void",
      params = {
        {type = "int", name = "offset"},
        {type = "int", name = "count"},
        {type = "const void *", name = "buffer"}
      }
    },
    {
      name = "rlDrawVertexArrayInstanced",
      description = "",
      returnType = "void",
      params = {
        {type = "int", name = "offset"},
        {type = "int", name = "count"},
        {type = "int", name = "instances"}
      }
    },
    {
      name = "rlDrawVertexArrayElementsInstanced",
      description = "",
      returnType = "void",
      params = {
        {type = "int", name = "offset"},
        {type = "int", name = "count"},
        {type = "const void *", name = "buffer"},
        {type = "int", name = "instances"}
      }
    },
    {
      name = "rlLoadTexture",
      description = "Load texture in GPU",
      returnType = "unsigned int",
      params = {
        {type = "const void *", name = "data"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "format"},
        {type = "int", name = "mipmapCount"}
      }
    },
    {
      name = "rlLoadTextureDepth",
      description = "Load depth texture/renderbuffer (to be attached to fbo)",
      returnType = "unsigned int",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "bool", name = "useRenderBuffer"}
      }
    },
    {
      name = "rlLoadTextureCubemap",
      description = "Load texture cubemap",
      returnType = "unsigned int",
      params = {
        {type = "const void *", name = "data"},
        {type = "int", name = "size"},
        {type = "int", name = "format"}
      }
    },
    {
      name = "rlUpdateTexture",
      description = "Update GPU texture with new data",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "int", name = "offsetX"},
        {type = "int", name = "offsetY"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "format"},
        {type = "const void *", name = "data"}
      }
    },
    {
      name = "rlGetGlTextureFormats",
      description = "Get OpenGL internal formats",
      returnType = "void",
      params = {
        {type = "int", name = "format"},
        {type = "int *", name = "glInternalFormat"},
        {type = "int *", name = "glFormat"},
        {type = "int *", name = "glType"}
      }
    },
    {
      name = "rlGetPixelFormatName",
      description = "Get name string for pixel format",
      returnType = "const char *",
      params = {
        {type = "unsigned int", name = "format"}
      }
    },
    {
      name = "rlUnloadTexture",
      description = "Unload texture from GPU memory",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlGenTextureMipmaps",
      description = "Generate mipmap data for selected texture",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "format"},
        {type = "int *", name = "mipmaps"}
      }
    },
    {
      name = "rlReadTexturePixels",
      description = "Read texture pixel data",
      returnType = "void *",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "format"}
      }
    },
    {
      name = "rlReadScreenPixels",
      description = "Read screen pixel data (color buffer)",
      returnType = "unsigned char *",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "rlLoadFramebuffer",
      description = "Load an empty framebuffer",
      returnType = "unsigned int",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "rlFramebufferAttach",
      description = "Attach texture/renderbuffer to a framebuffer",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "fboId"},
        {type = "unsigned int", name = "texId"},
        {type = "int", name = "attachType"},
        {type = "int", name = "texType"},
        {type = "int", name = "mipLevel"}
      }
    },
    {
      name = "rlFramebufferComplete",
      description = "Verify framebuffer is complete",
      returnType = "bool",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlUnloadFramebuffer",
      description = "Delete framebuffer from GPU",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlLoadShaderCode",
      description = "Load shader from code strings",
      returnType = "unsigned int",
      params = {
        {type = "const char *", name = "vsCode"},
        {type = "const char *", name = "fsCode"}
      }
    },
    {
      name = "rlCompileShader",
      description = "Compile custom shader and return shader id (type: RL_VERTEX_SHADER, RL_FRAGMENT_SHADER, RL_COMPUTE_SHADER)",
      returnType = "unsigned int",
      params = {
        {type = "const char *", name = "shaderCode"},
        {type = "int", name = "type"}
      }
    },
    {
      name = "rlLoadShaderProgram",
      description = "Load custom shader program",
      returnType = "unsigned int",
      params = {
        {type = "unsigned int", name = "vShaderId"},
        {type = "unsigned int", name = "fShaderId"}
      }
    },
    {
      name = "rlUnloadShaderProgram",
      description = "Unload shader program",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlGetLocationUniform",
      description = "Get shader location uniform",
      returnType = "int",
      params = {
        {type = "unsigned int", name = "shaderId"},
        {type = "const char *", name = "uniformName"}
      }
    },
    {
      name = "rlGetLocationAttrib",
      description = "Get shader location attribute",
      returnType = "int",
      params = {
        {type = "unsigned int", name = "shaderId"},
        {type = "const char *", name = "attribName"}
      }
    },
    {
      name = "rlSetUniform",
      description = "Set shader value uniform",
      returnType = "void",
      params = {
        {type = "int", name = "locIndex"},
        {type = "const void *", name = "value"},
        {type = "int", name = "uniformType"},
        {type = "int", name = "count"}
      }
    },
    {
      name = "rlSetUniformMatrix",
      description = "Set shader value matrix",
      returnType = "void",
      params = {
        {type = "int", name = "locIndex"},
        {type = "Matrix", name = "mat"}
      }
    },
    {
      name = "rlSetUniformSampler",
      description = "Set shader value sampler",
      returnType = "void",
      params = {
        {type = "int", name = "locIndex"},
        {type = "unsigned int", name = "textureId"}
      }
    },
    {
      name = "rlSetShader",
      description = "Set shader currently active (id and locations)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "int *", name = "locs"}
      }
    },
    {
      name = "rlLoadComputeShaderProgram",
      description = "Load compute shader program",
      returnType = "unsigned int",
      params = {
        {type = "unsigned int", name = "shaderId"}
      }
    },
    {
      name = "rlComputeShaderDispatch",
      description = "Dispatch compute shader (equivalent to *draw* for graphics pilepine)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "groupX"},
        {type = "unsigned int", name = "groupY"},
        {type = "unsigned int", name = "groupZ"}
      }
    },
    {
      name = "rlLoadShaderBuffer",
      description = "Load shader storage buffer object (SSBO)",
      returnType = "unsigned int",
      params = {
        {type = "unsigned long long", name = "size"},
        {type = "const void *", name = "data"},
        {type = "int", name = "usageHint"}
      }
    },
    {
      name = "rlUnloadShaderBuffer",
      description = "Unload shader storage buffer object (SSBO)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "ssboId"}
      }
    },
    {
      name = "rlUpdateShaderBufferElements",
      description = "Update SSBO buffer data",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "const void *", name = "data"},
        {type = "unsigned long long", name = "dataSize"},
        {type = "unsigned long long", name = "offset"}
      }
    },
    {
      name = "rlGetShaderBufferSize",
      description = "Get SSBO buffer size",
      returnType = "unsigned long long",
      params = {
        {type = "unsigned int", name = "id"}
      }
    },
    {
      name = "rlReadShaderBufferElements",
      description = "Bind SSBO buffer",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "void *", name = "dest"},
        {type = "unsigned long long", name = "count"},
        {type = "unsigned long long", name = "offset"}
      }
    },
    {
      name = "rlBindShaderBuffer",
      description = "Copy SSBO buffer data",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "unsigned int", name = "index"}
      }
    },
    {
      name = "rlCopyBuffersElements",
      description = "Copy SSBO buffer data",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "destId"},
        {type = "unsigned int", name = "srcId"},
        {type = "unsigned long long", name = "destOffset"},
        {type = "unsigned long long", name = "srcOffset"},
        {type = "unsigned long long", name = "count"}
      }
    },
    {
      name = "rlBindImageTexture",
      description = "Bind image texture",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "id"},
        {type = "unsigned int", name = "index"},
        {type = "unsigned int", name = "format"},
        {type = "int", name = "readonly"}
      }
    },
    {
      name = "rlGetMatrixModelview",
      description = "Get internal modelview matrix",
      returnType = "Matrix"
    },
    {
      name = "rlGetMatrixProjection",
      description = "Get internal projection matrix",
      returnType = "Matrix"
    },
    {
      name = "rlGetMatrixTransform",
      description = "Get internal accumulated transform matrix",
      returnType = "Matrix"
    },
    {
      name = "rlGetMatrixProjectionStereo",
      description = "Get internal projection matrix for stereo render (selected eye)",
      returnType = "Matrix",
      params = {
        {type = "int", name = "eye"}
      }
    },
    {
      name = "rlGetMatrixViewOffsetStereo",
      description = "Get internal view offset matrix for stereo render (selected eye)",
      returnType = "Matrix",
      params = {
        {type = "int", name = "eye"}
      }
    },
    {
      name = "rlSetMatrixProjection",
      description = "Set a custom projection matrix (replaces internal projection matrix)",
      returnType = "void",
      params = {
        {type = "Matrix", name = "proj"}
      }
    },
    {
      name = "rlSetMatrixModelview",
      description = "Set a custom modelview matrix (replaces internal modelview matrix)",
      returnType = "void",
      params = {
        {type = "Matrix", name = "view"}
      }
    },
    {
      name = "rlSetMatrixProjectionStereo",
      description = "Set eyes projection matrices for stereo rendering",
      returnType = "void",
      params = {
        {type = "Matrix", name = "right"},
        {type = "Matrix", name = "left"}
      }
    },
    {
      name = "rlSetMatrixViewOffsetStereo",
      description = "Set eyes view offsets matrices for stereo rendering",
      returnType = "void",
      params = {
        {type = "Matrix", name = "right"},
        {type = "Matrix", name = "left"}
      }
    },
    {
      name = "rlLoadDrawCube",
      description = "Load and draw a cube",
      returnType = "void"
    },
    {
      name = "rlLoadDrawQuad",
      description = "Load and draw a quad",
      returnType = "void"
    },
    {
      name = "rlGetMatrixProjectionStereo",
      description = "",
      returnType = "Matrix",
      params = {
        {type = "int", name = "eye"}
      }
    },
    {
      name = "rlGetMatrixViewOffsetStereo",
      description = "",
      returnType = "Matrix",
      params = {
        {type = "int", name = "eye"}
      }
    }
  }
}
