return {
  defines = {
    {
      name = "RCAMERA_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RLAPI",
      type = "GUARD",
      value = "",
      description = "Functions defined as 'extern' by default (implicit specifiers)"
    },
    {
      name = "CAMERA_CULL_DISTANCE_NEAR",
      type = "DOUBLE",
      value = 0.01,
      description = ""
    },
    {
      name = "CAMERA_CULL_DISTANCE_FAR",
      type = "DOUBLE",
      value = 1000.0,
      description = ""
    },
    {
      name = "CAMERA_MOVE_SPEED",
      type = "FLOAT",
      value = 0.09,
      description = ""
    },
    {
      name = "CAMERA_ROTATION_SPEED",
      type = "FLOAT",
      value = 0.03,
      description = ""
    },
    {
      name = "CAMERA_MOUSE_MOVE_SENSITIVITY",
      type = "FLOAT",
      value = 0.003,
      description = "TODO: it should be independant of framerate"
    },
    {
      name = "CAMERA_MOUSE_SCROLL_SENSITIVITY",
      type = "FLOAT",
      value = 1.5,
      description = ""
    },
    {
      name = "CAMERA_ORBITAL_SPEED",
      type = "FLOAT",
      value = 0.5,
      description = "Radians per second"
    },
    {
      name = "CAMERA_FIRST_PERSON_STEP_TRIGONOMETRIC_DIVIDER",
      type = "FLOAT",
      value = 8.0,
      description = ""
    },
    {
      name = "CAMERA_FIRST_PERSON_STEP_DIVIDER",
      type = "FLOAT",
      value = 30.0,
      description = ""
    },
    {
      name = "CAMERA_FIRST_PERSON_WAVING_DIVIDER",
      type = "FLOAT",
      value = 200.0,
      description = ""
    },
    {
      name = "PLAYER_MOVEMENT_SENSITIVITY",
      type = "FLOAT",
      value = 20.0,
      description = ""
    }
  },
  structs = {
    {
      name = "Vector2",
      description = "Vector2, 2 components",
      fields = {
        {
          type = "float",
          name = "x",
          description = "Vector x component"
        },
        {
          type = "float",
          name = "y",
          description = "Vector y component"
        }
      }
    },
    {
      name = "Vector3",
      description = "Vector3, 3 components",
      fields = {
        {
          type = "float",
          name = "x",
          description = "Vector x component"
        },
        {
          type = "float",
          name = "y",
          description = "Vector y component"
        },
        {
          type = "float",
          name = "z",
          description = "Vector z component"
        }
      }
    },
    {
      name = "Camera3D",
      description = "Camera type, defines a camera position/orientation in 3d space",
      fields = {
        {
          type = "Vector3",
          name = "position",
          description = "Camera position"
        },
        {
          type = "Vector3",
          name = "target",
          description = "Camera target it looks-at"
        },
        {
          type = "Vector3",
          name = "up",
          description = "Camera up vector (rotation over its axis)"
        },
        {
          type = "float",
          name = "fovy",
          description = "Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic"
        },
        {
          type = "int",
          name = "projection",
          description = "Camera projection type: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC"
        }
      }
    }
  },
  aliases = {
    {
      type = "Camera3D",
      name = "Camera",
      description = "Camera type fallback, defaults to Camera3D"
    }
  },
  enums = {
    {
      name = "CameraProjection",
      description = "Camera projection",
      values = {
        {
          name = "CAMERA_PERSPECTIVE",
          value = 0,
          description = "Perspective projection"
        },
        {
          name = "CAMERA_ORTHOGRAPHIC",
          value = 1,
          description = "Orthographic projection"
        }
      }
    },
    {
      name = "CameraMode",
      description = "Camera system modes",
      values = {
        {
          name = "CAMERA_CUSTOM",
          value = 0,
          description = "Camera custom, controlled by user (UpdateCamera() does nothing)"
        },
        {
          name = "CAMERA_FREE",
          value = 1,
          description = "Camera free mode"
        },
        {
          name = "CAMERA_ORBITAL",
          value = 2,
          description = "Camera orbital, around target, zoom supported"
        },
        {
          name = "CAMERA_FIRST_PERSON",
          value = 3,
          description = "Camera first person"
        },
        {
          name = "CAMERA_THIRD_PERSON",
          value = 4,
          description = "Camera third person"
        }
      }
    }
  },
  callbacks = {
  },
  functions = {
    {
      name = "GetCameraForward",
      description = "",
      returnType = "Vector3",
      params = {
        {type = "Camera *", name = "camera"}
      }
    },
    {
      name = "GetCameraUp",
      description = "",
      returnType = "Vector3",
      params = {
        {type = "Camera *", name = "camera"}
      }
    },
    {
      name = "GetCameraRight",
      description = "",
      returnType = "Vector3",
      params = {
        {type = "Camera *", name = "camera"}
      }
    },
    {
      name = "CameraMoveForward",
      description = "",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"},
        {type = "float", name = "distance"},
        {type = "bool", name = "moveInWorldPlane"}
      }
    },
    {
      name = "CameraMoveUp",
      description = "",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"},
        {type = "float", name = "distance"}
      }
    },
    {
      name = "CameraMoveRight",
      description = "",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"},
        {type = "float", name = "distance"},
        {type = "bool", name = "moveInWorldPlane"}
      }
    },
    {
      name = "CameraMoveToTarget",
      description = "",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"},
        {type = "float", name = "delta"}
      }
    },
    {
      name = "CameraYaw",
      description = "",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"},
        {type = "float", name = "angle"},
        {type = "bool", name = "rotateAroundTarget"}
      }
    },
    {
      name = "CameraPitch",
      description = "",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"},
        {type = "float", name = "angle"},
        {type = "bool", name = "lockView"},
        {type = "bool", name = "rotateAroundTarget"},
        {type = "bool", name = "rotateUp"}
      }
    },
    {
      name = "CameraRoll",
      description = "",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"},
        {type = "float", name = "angle"}
      }
    },
    {
      name = "GetCameraViewMatrix",
      description = "",
      returnType = "Matrix",
      params = {
        {type = "Camera *", name = "camera"}
      }
    },
    {
      name = "GetCameraProjectionMatrix",
      description = "",
      returnType = "Matrix",
      params = {
        {type = "Camera*", name = "camera"},
        {type = "float", name = "aspect"}
      }
    }
  }
}
