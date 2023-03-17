return {
  defines = {
    {
      name = "PHYSAC_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "PHYSACDEF",
      type = "UNKNOWN",
      value = "__declspec(dllexport)",
      description = "We are building the library as a Win32 shared library (.dll)"
    },
    {
      name = "PHYSAC_MALLOC(size)",
      type = "MACRO",
      value = "malloc(size)",
      description = ""
    },
    {
      name = "PHYSAC_CALLOC(size, n)",
      type = "MACRO",
      value = "calloc(size, n)",
      description = ""
    },
    {
      name = "PHYSAC_FREE(ptr)",
      type = "MACRO",
      value = "free(ptr)",
      description = ""
    },
    {
      name = "PHYSAC_MAX_BODIES",
      type = "INT",
      value = 64,
      description = "Maximum number of physic bodies supported"
    },
    {
      name = "PHYSAC_MAX_MANIFOLDS",
      type = "INT",
      value = 4096,
      description = "Maximum number of physic bodies interactions (64x64)"
    },
    {
      name = "PHYSAC_MAX_VERTICES",
      type = "INT",
      value = 24,
      description = "Maximum number of vertex for polygons shapes"
    },
    {
      name = "PHYSAC_DEFAULT_CIRCLE_VERTICES",
      type = "INT",
      value = 24,
      description = "Default number of vertices for circle shapes"
    },
    {
      name = "PHYSAC_COLLISION_ITERATIONS",
      type = "INT",
      value = 100,
      description = ""
    },
    {
      name = "PHYSAC_PENETRATION_ALLOWANCE",
      type = "FLOAT",
      value = 0.05,
      description = ""
    },
    {
      name = "PHYSAC_PENETRATION_CORRECTION",
      type = "FLOAT",
      value = 0.4,
      description = ""
    },
    {
      name = "PHYSAC_PI",
      type = "FLOAT",
      value = 3.14159265358979323846,
      description = ""
    },
    {
      name = "PHYSAC_DEG2RAD",
      type = "FLOAT_MATH",
      value = "(PHYSAC_PI/180.0f)",
      description = ""
    },
    {
      name = "TRACELOG(...)",
      type = "MACRO",
      value = "printf(__VA_ARGS__)",
      description = ""
    },
    {
      name = "_POSIX_C_SOURCE",
      type = "LONG",
      value = 199309,
      description = "Required for CLOCK_MONOTONIC if compiled with c99 without gnu ext."
    },
    {
      name = "CLITERAL(type)",
      type = "MACRO",
      value = "type",
      description = ""
    },
    {
      name = "PHYSAC_MIN(a,b)",
      type = "MACRO",
      value = "(((a)<(b))?(a):(b))",
      description = ""
    },
    {
      name = "PHYSAC_MAX(a,b)",
      type = "MACRO",
      value = "(((a)>(b))?(a):(b))",
      description = ""
    },
    {
      name = "PHYSAC_FLT_MAX",
      type = "FLOAT",
      value = 3.402823466e+38,
      description = ""
    },
    {
      name = "PHYSAC_EPSILON",
      type = "FLOAT",
      value = 0.000001,
      description = ""
    },
    {
      name = "PHYSAC_K",
      type = "FLOAT_MATH",
      value = "1.0f/3.0f",
      description = ""
    },
    {
      name = "PHYSAC_VECTOR_ZERO",
      type = "UNKNOWN",
      value = "CLITERAL(Vector2){ 0.0f, 0.0f }",
      description = ""
    }
  },
  structs = {
    {
      name = "Vector2",
      description = "Vector2 type",
      fields = {
        {
          type = "float",
          name = "x",
          description = ""
        },
        {
          type = "float",
          name = "y",
          description = ""
        }
      }
    },
    {
      name = "Matrix2x2",
      description = "Matrix2x2 type (used for polygon shape rotation matrix)",
      fields = {
        {
          type = "float",
          name = "m00",
          description = ""
        },
        {
          type = "float",
          name = "m01",
          description = ""
        },
        {
          type = "float",
          name = "m10",
          description = ""
        },
        {
          type = "float",
          name = "m11",
          description = ""
        }
      }
    },
    {
      name = "PhysicsVertexData",
      description = "",
      fields = {
        {
          type = "unsigned int",
          name = "vertexCount",
          description = "Vertex count (positions and normals)"
        },
        {
          type = "Vector2[PHYSAC_MAX_VERTICES]",
          name = "positions",
          description = "Vertex positions vectors"
        },
        {
          type = "Vector2[PHYSAC_MAX_VERTICES]",
          name = "normals",
          description = "Vertex normals vectors"
        }
      }
    },
    {
      name = "PhysicsShape",
      description = "",
      fields = {
        {
          type = "PhysicsShapeType",
          name = "type",
          description = "Shape type (circle or polygon)"
        },
        {
          type = "PhysicsBody",
          name = "body",
          description = "Shape physics body data pointer"
        },
        {
          type = "PhysicsVertexData",
          name = "vertexData",
          description = "Shape vertices data (used for polygon shapes)"
        },
        {
          type = "float",
          name = "radius",
          description = "Shape radius (used for circle shapes)"
        },
        {
          type = "Matrix2x2",
          name = "transform",
          description = "Vertices transform matrix 2x2"
        }
      }
    },
    {
      name = "PhysicsBodyData",
      description = "",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "Unique identifier"
        },
        {
          type = "bool",
          name = "enabled",
          description = "Enabled dynamics state (collisions are calculated anyway)"
        },
        {
          type = "Vector2",
          name = "position",
          description = "Physics body shape pivot"
        },
        {
          type = "Vector2",
          name = "velocity",
          description = "Current linear velocity applied to position"
        },
        {
          type = "Vector2",
          name = "force",
          description = "Current linear force (reset to 0 every step)"
        },
        {
          type = "float",
          name = "angularVelocity",
          description = "Current angular velocity applied to orient"
        },
        {
          type = "float",
          name = "torque",
          description = "Current angular force (reset to 0 every step)"
        },
        {
          type = "float",
          name = "orient",
          description = "Rotation in radians"
        },
        {
          type = "float",
          name = "inertia",
          description = "Moment of inertia"
        },
        {
          type = "float",
          name = "inverseInertia",
          description = "Inverse value of inertia"
        },
        {
          type = "float",
          name = "mass",
          description = "Physics body mass"
        },
        {
          type = "float",
          name = "inverseMass",
          description = "Inverse value of mass"
        },
        {
          type = "float",
          name = "staticFriction",
          description = "Friction when the body has not movement (0 to 1)"
        },
        {
          type = "float",
          name = "dynamicFriction",
          description = "Friction when the body has movement (0 to 1)"
        },
        {
          type = "float",
          name = "restitution",
          description = "Restitution coefficient of the body (0 to 1)"
        },
        {
          type = "bool",
          name = "useGravity",
          description = "Apply gravity force to dynamics"
        },
        {
          type = "bool",
          name = "isGrounded",
          description = "Physics grounded on other body state"
        },
        {
          type = "bool",
          name = "freezeOrient",
          description = "Physics rotation constraint"
        },
        {
          type = "PhysicsShape",
          name = "shape",
          description = "Physics body shape information (type, radius, vertices, transform)"
        }
      }
    },
    {
      name = "PhysicsManifoldData",
      description = "",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "Unique identifier"
        },
        {
          type = "PhysicsBody",
          name = "bodyA",
          description = "Manifold first physics body reference"
        },
        {
          type = "PhysicsBody",
          name = "bodyB",
          description = "Manifold second physics body reference"
        },
        {
          type = "float",
          name = "penetration",
          description = "Depth of penetration from collision"
        },
        {
          type = "Vector2",
          name = "normal",
          description = "Normal direction vector from 'a' to 'b'"
        },
        {
          type = "Vector2[2]",
          name = "contacts",
          description = "Points of contact during collision"
        },
        {
          type = "unsigned int",
          name = "contactsCount",
          description = "Current collision number of contacts"
        },
        {
          type = "float",
          name = "restitution",
          description = "Mixed restitution during collision"
        },
        {
          type = "float",
          name = "dynamicFriction",
          description = "Mixed dynamic friction during collision"
        },
        {
          type = "float",
          name = "staticFriction",
          description = "Mixed static friction during collision"
        }
      }
    }
  },
  aliases = {
  },
  enums = {
  },
  callbacks = {
  },
  functions = {
    {
      name = "InitPhysics",
      description = "Initializes physics system",
      returnType = "void"
    },
    {
      name = "UpdatePhysics",
      description = "Update physics system",
      returnType = "void"
    },
    {
      name = "ResetPhysics",
      description = "Reset physics system (global variables)",
      returnType = "void"
    },
    {
      name = "ClosePhysics",
      description = "Close physics system and unload used memory",
      returnType = "void"
    },
    {
      name = "SetPhysicsTimeStep",
      description = "Sets physics fixed time step in milliseconds. 1.666666 by default",
      returnType = "void",
      params = {
        {type = "double", name = "delta"}
      }
    },
    {
      name = "SetPhysicsGravity",
      description = "Sets physics global gravity force",
      returnType = "void",
      params = {
        {type = "float", name = "x"},
        {type = "float", name = "y"}
      }
    },
    {
      name = "CreatePhysicsBodyCircle",
      description = "Creates a new circle physics body with generic parameters",
      returnType = "PhysicsBody",
      params = {
        {type = "Vector2", name = "pos"},
        {type = "float", name = "radius"},
        {type = "float", name = "density"}
      }
    },
    {
      name = "CreatePhysicsBodyRectangle",
      description = "Creates a new rectangle physics body with generic parameters",
      returnType = "PhysicsBody",
      params = {
        {type = "Vector2", name = "pos"},
        {type = "float", name = "width"},
        {type = "float", name = "height"},
        {type = "float", name = "density"}
      }
    },
    {
      name = "CreatePhysicsBodyPolygon",
      description = "Creates a new polygon physics body with generic parameters",
      returnType = "PhysicsBody",
      params = {
        {type = "Vector2", name = "pos"},
        {type = "float", name = "radius"},
        {type = "int", name = "sides"},
        {type = "float", name = "density"}
      }
    },
    {
      name = "DestroyPhysicsBody",
      description = "Destroy a physics body",
      returnType = "void",
      params = {
        {type = "PhysicsBody", name = "body"}
      }
    },
    {
      name = "PhysicsAddForce",
      description = "Adds a force to a physics body",
      returnType = "void",
      params = {
        {type = "PhysicsBody", name = "body"},
        {type = "Vector2", name = "force"}
      }
    },
    {
      name = "PhysicsAddTorque",
      description = "Adds an angular force to a physics body",
      returnType = "void",
      params = {
        {type = "PhysicsBody", name = "body"},
        {type = "float", name = "amount"}
      }
    },
    {
      name = "PhysicsShatter",
      description = "Shatters a polygon shape physics body to little physics bodies with explosion force",
      returnType = "void",
      params = {
        {type = "PhysicsBody", name = "body"},
        {type = "Vector2", name = "position"},
        {type = "float", name = "force"}
      }
    },
    {
      name = "SetPhysicsBodyRotation",
      description = "Sets physics body shape transform based on radians parameter",
      returnType = "void",
      params = {
        {type = "PhysicsBody", name = "body"},
        {type = "float", name = "radians"}
      }
    },
    {
      name = "GetPhysicsBody",
      description = "Returns a physics body of the bodies pool at a specific index",
      returnType = "PhysicsBody",
      params = {
        {type = "int", name = "index"}
      }
    },
    {
      name = "GetPhysicsBodiesCount",
      description = "Returns the current amount of created physics bodies",
      returnType = "int"
    },
    {
      name = "GetPhysicsShapeType",
      description = "Returns the physics body shape type (PHYSICS_CIRCLE or PHYSICS_POLYGON)",
      returnType = "int",
      params = {
        {type = "int", name = "index"}
      }
    },
    {
      name = "GetPhysicsShapeVerticesCount",
      description = "Returns the amount of vertices of a physics body shape",
      returnType = "int",
      params = {
        {type = "int", name = "index"}
      }
    },
    {
      name = "GetPhysicsShapeVertex",
      description = "Returns transformed position of a body shape (body position + vertex transformed position)",
      returnType = "Vector2",
      params = {
        {type = "PhysicsBody", name = "body"},
        {type = "int", name = "vertex"}
      }
    }
  }
}
