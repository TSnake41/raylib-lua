return {
  defines = {
    {
      name = "EASINGS_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "EASINGS_STATIC_INLINE",
      type = "UNKNOWN",
      value = "",
      description = "NOTE: By default, compile functions as static inline"
    },
    {
      name = "EASEDEF",
      type = "UNKNOWN",
      value = "static inline",
      description = ""
    },
    {
      name = "PI",
      type = "FLOAT",
      value = 3.14159265358979323846,
      description = "Required as PI is not always defined in math.h"
    }
  },
  structs = {
  },
  aliases = {
  },
  enums = {
  },
  callbacks = {
  },
  functions = {
    {
      name = "EaseLinearNone",
      description = "Ease: Linear",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseLinearIn",
      description = "Ease: Linear In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseLinearOut",
      description = "Ease: Linear Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseLinearInOut",
      description = "Ease: Linear In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseSineIn",
      description = "Ease: Sine In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseSineOut",
      description = "Ease: Sine Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseSineInOut",
      description = "Ease: Sine Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseCircIn",
      description = "Ease: Circular In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseCircOut",
      description = "Ease: Circular Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseCircInOut",
      description = "Ease: Circular In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseCubicIn",
      description = "Ease: Cubic In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseCubicOut",
      description = "Ease: Cubic Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseCubicInOut",
      description = "Ease: Cubic In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseQuadIn",
      description = "Ease: Quadratic In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseQuadOut",
      description = "Ease: Quadratic Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseQuadInOut",
      description = "Ease: Quadratic In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseExpoIn",
      description = "Ease: Exponential In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseExpoOut",
      description = "Ease: Exponential Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseExpoInOut",
      description = "Ease: Exponential In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseBackIn",
      description = "Ease: Back In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseBackOut",
      description = "Ease: Back Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseBackInOut",
      description = "Ease: Back In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseBounceOut",
      description = "Ease: Bounce Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseBounceIn",
      description = "Ease: Bounce In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseBounceInOut",
      description = "Ease: Bounce In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseElasticIn",
      description = "Ease: Elastic In",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseElasticOut",
      description = "Ease: Elastic Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    },
    {
      name = "EaseElasticInOut",
      description = "Ease: Elastic In Out",
      returnType = "float",
      params = {
        {type = "float", name = "t"},
        {type = "float", name = "b"},
        {type = "float", name = "c"},
        {type = "float", name = "d"}
      }
    }
  }
}
