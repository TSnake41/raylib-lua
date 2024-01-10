return {
  defines = {
    {
      name = "RAYGUI_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RAYGUI_VERSION_MAJOR",
      type = "INT",
      value = 4,
      description = ""
    },
    {
      name = "RAYGUI_VERSION_MINOR",
      type = "INT",
      value = 0,
      description = ""
    },
    {
      name = "RAYGUI_VERSION_PATCH",
      type = "INT",
      value = 0,
      description = ""
    },
    {
      name = "RAYGUI_VERSION",
      type = "STRING",
      value = "4.0",
      description = ""
    },
    {
      name = "RAYGUIAPI",
      type = "UNKNOWN",
      value = "__declspec(dllexport)",
      description = "We are building the library as a Win32 shared library (.dll)"
    },
    {
      name = "RAYGUI_MALLOC(sz)",
      type = "MACRO",
      value = "malloc(sz)",
      description = ""
    },
    {
      name = "RAYGUI_CALLOC(n,sz)",
      type = "MACRO",
      value = "calloc(n,sz)",
      description = ""
    },
    {
      name = "RAYGUI_FREE(p)",
      type = "MACRO",
      value = "free(p)",
      description = ""
    },
    {
      name = "RAYGUI_SUPPORT_LOG_INFO",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RAYGUI_LOG(...)",
      type = "MACRO",
      value = "printf(__VA_ARGS__)",
      description = ""
    },
    {
      name = "SCROLLBAR_LEFT_SIDE",
      type = "INT",
      value = 0,
      description = ""
    },
    {
      name = "SCROLLBAR_RIGHT_SIDE",
      type = "INT",
      value = 1,
      description = ""
    },
    {
      name = "RAYGUI_CLITERAL(name)",
      type = "MACRO",
      value = "name",
      description = ""
    },
    {
      name = "CHECK_BOUNDS_ID(src, dst)",
      type = "MACRO",
      value = "((src.x == dst.x) && (src.y == dst.y) && (src.width == dst.width) && (src.height == dst.height))",
      description = ""
    },
    {
      name = "RAYGUI_ICON_SIZE",
      type = "INT",
      value = 16,
      description = "Size of icons in pixels (squared)"
    },
    {
      name = "RAYGUI_ICON_MAX_ICONS",
      type = "INT",
      value = 256,
      description = "Maximum number of icons"
    },
    {
      name = "RAYGUI_ICON_MAX_NAME_LENGTH",
      type = "INT",
      value = 32,
      description = "Maximum length of icon name id"
    },
    {
      name = "RAYGUI_ICON_DATA_ELEMENTS",
      type = "INT_MATH",
      value = "(RAYGUI_ICON_SIZE*RAYGUI_ICON_SIZE/32)",
      description = ""
    },
    {
      name = "RAYGUI_MAX_CONTROLS",
      type = "INT",
      value = 16,
      description = "Maximum number of controls"
    },
    {
      name = "RAYGUI_MAX_PROPS_BASE",
      type = "INT",
      value = 16,
      description = "Maximum number of base properties"
    },
    {
      name = "RAYGUI_MAX_PROPS_EXTENDED",
      type = "INT",
      value = 8,
      description = "Maximum number of extended properties"
    },
    {
      name = "KEY_RIGHT",
      type = "INT",
      value = 262,
      description = ""
    },
    {
      name = "KEY_LEFT",
      type = "INT",
      value = 263,
      description = ""
    },
    {
      name = "KEY_DOWN",
      type = "INT",
      value = 264,
      description = ""
    },
    {
      name = "KEY_UP",
      type = "INT",
      value = 265,
      description = ""
    },
    {
      name = "KEY_BACKSPACE",
      type = "INT",
      value = 259,
      description = ""
    },
    {
      name = "KEY_ENTER",
      type = "INT",
      value = 257,
      description = ""
    },
    {
      name = "MOUSE_LEFT_BUTTON",
      type = "INT",
      value = 0,
      description = ""
    },
    {
      name = "RAYGUI_WINDOWBOX_STATUSBAR_HEIGHT",
      type = "INT",
      value = 24,
      description = ""
    },
    {
      name = "RAYGUI_GROUPBOX_LINE_THICK",
      type = "INT",
      value = 1,
      description = ""
    },
    {
      name = "RAYGUI_LINE_MARGIN_TEXT",
      type = "INT",
      value = 12,
      description = ""
    },
    {
      name = "RAYGUI_LINE_TEXT_PADDING",
      type = "INT",
      value = 4,
      description = ""
    },
    {
      name = "RAYGUI_PANEL_BORDER_WIDTH",
      type = "INT",
      value = 1,
      description = ""
    },
    {
      name = "RAYGUI_TABBAR_ITEM_WIDTH",
      type = "INT",
      value = 160,
      description = ""
    },
    {
      name = "RAYGUI_MIN_SCROLLBAR_WIDTH",
      type = "INT",
      value = 40,
      description = ""
    },
    {
      name = "RAYGUI_MIN_SCROLLBAR_HEIGHT",
      type = "INT",
      value = 40,
      description = ""
    },
    {
      name = "RAYGUI_TOGGLEGROUP_MAX_ITEMS",
      type = "INT",
      value = 32,
      description = ""
    },
    {
      name = "RAYGUI_TEXTBOX_AUTO_CURSOR_COOLDOWN",
      type = "INT",
      value = 40,
      description = "Frames to wait for autocursor movement"
    },
    {
      name = "RAYGUI_TEXTBOX_AUTO_CURSOR_DELAY",
      type = "INT",
      value = 1,
      description = "Frames delay for autocursor movement"
    },
    {
      name = "RAYGUI_VALUEBOX_MAX_CHARS",
      type = "INT",
      value = 32,
      description = ""
    },
    {
      name = "RAYGUI_COLORBARALPHA_CHECKED_SIZE",
      type = "INT",
      value = 10,
      description = ""
    },
    {
      name = "RAYGUI_MESSAGEBOX_BUTTON_HEIGHT",
      type = "INT",
      value = 24,
      description = ""
    },
    {
      name = "RAYGUI_MESSAGEBOX_BUTTON_PADDING",
      type = "INT",
      value = 12,
      description = ""
    },
    {
      name = "RAYGUI_TEXTINPUTBOX_BUTTON_HEIGHT",
      type = "INT",
      value = 24,
      description = ""
    },
    {
      name = "RAYGUI_TEXTINPUTBOX_BUTTON_PADDING",
      type = "INT",
      value = 12,
      description = ""
    },
    {
      name = "RAYGUI_TEXTINPUTBOX_HEIGHT",
      type = "INT",
      value = 26,
      description = ""
    },
    {
      name = "RAYGUI_GRID_ALPHA",
      type = "FLOAT",
      value = 0.15,
      description = ""
    },
    {
      name = "MAX_LINE_BUFFER_SIZE",
      type = "INT",
      value = 256,
      description = ""
    },
    {
      name = "BIT_CHECK(a,b)",
      type = "MACRO",
      value = "((a) & (1u<<(b)))",
      description = ""
    },
    {
      name = "ICON_TEXT_PADDING",
      type = "INT",
      value = 4,
      description = ""
    },
    {
      name = "RAYGUI_MAX_TEXT_LINES",
      type = "INT",
      value = 128,
      description = ""
    },
    {
      name = "TEXT_VALIGN_PIXEL_OFFSET(h)",
      type = "MACRO",
      value = "((int)h%2)",
      description = "Vertical alignment for pixel perfect"
    },
    {
      name = "RAYGUI_TEXTSPLIT_MAX_ITEMS",
      type = "INT",
      value = 128,
      description = ""
    },
    {
      name = "RAYGUI_TEXTSPLIT_MAX_TEXT_SIZE",
      type = "INT",
      value = 1024,
      description = ""
    },
    {
      name = "RAYGUI_TEXTFORMAT_MAX_SIZE",
      type = "INT",
      value = 256,
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
      name = "Vector3",
      description = "Vector3 type                 // -- ConvertHSVtoRGB(), ConvertRGBtoHSV()",
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
        },
        {
          type = "float",
          name = "z",
          description = ""
        }
      }
    },
    {
      name = "Color",
      description = "Color type, RGBA (32bit)",
      fields = {
        {
          type = "unsigned char",
          name = "r",
          description = ""
        },
        {
          type = "unsigned char",
          name = "g",
          description = ""
        },
        {
          type = "unsigned char",
          name = "b",
          description = ""
        },
        {
          type = "unsigned char",
          name = "a",
          description = ""
        }
      }
    },
    {
      name = "Rectangle",
      description = "Rectangle type",
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
        },
        {
          type = "float",
          name = "width",
          description = ""
        },
        {
          type = "float",
          name = "height",
          description = ""
        }
      }
    },
    {
      name = "Texture2D",
      description = "It should be redesigned to be provided by user",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "OpenGL texture id"
        },
        {
          type = "int",
          name = "width",
          description = "Texture base width"
        },
        {
          type = "int",
          name = "height",
          description = "Texture base height"
        },
        {
          type = "int",
          name = "mipmaps",
          description = "Mipmap levels, 1 by default"
        },
        {
          type = "int",
          name = "format",
          description = "Data format (PixelFormat type)"
        }
      }
    },
    {
      name = "Image",
      description = "Image, pixel data stored in CPU memory (RAM)",
      fields = {
        {
          type = "void *",
          name = "data",
          description = "Image raw data"
        },
        {
          type = "int",
          name = "width",
          description = "Image base width"
        },
        {
          type = "int",
          name = "height",
          description = "Image base height"
        },
        {
          type = "int",
          name = "mipmaps",
          description = "Mipmap levels, 1 by default"
        },
        {
          type = "int",
          name = "format",
          description = "Data format (PixelFormat type)"
        }
      }
    },
    {
      name = "GlyphInfo",
      description = "GlyphInfo, font characters glyphs info",
      fields = {
        {
          type = "int",
          name = "value",
          description = "Character value (Unicode)"
        },
        {
          type = "int",
          name = "offsetX",
          description = "Character offset X when drawing"
        },
        {
          type = "int",
          name = "offsetY",
          description = "Character offset Y when drawing"
        },
        {
          type = "int",
          name = "advanceX",
          description = "Character advance position X"
        },
        {
          type = "Image",
          name = "image",
          description = "Character image data"
        }
      }
    },
    {
      name = "Font",
      description = "It should be redesigned to be provided by user",
      fields = {
        {
          type = "int",
          name = "baseSize",
          description = "Base size (default chars height)"
        },
        {
          type = "int",
          name = "glyphCount",
          description = "Number of glyph characters"
        },
        {
          type = "int",
          name = "glyphPadding",
          description = "Padding around the glyph characters"
        },
        {
          type = "Texture2D",
          name = "texture",
          description = "Texture atlas containing the glyphs"
        },
        {
          type = "Rectangle *",
          name = "recs",
          description = "Rectangles in texture for the glyphs"
        },
        {
          type = "GlyphInfo *",
          name = "glyphs",
          description = "Glyphs info data"
        }
      }
    },
    {
      name = "GuiStyleProp",
      description = "NOTE: Used when exporting style as code for convenience",
      fields = {
        {
          type = "unsigned short",
          name = "controlId",
          description = "Control identifier"
        },
        {
          type = "unsigned short",
          name = "propertyId",
          description = "Property identifier"
        },
        {
          type = "int",
          name = "propertyValue",
          description = "Property value"
        }
      }
    },
    {
      name = "GuiTextStyle",
      description = "NOTE: Text style is defined by control",
      fields = {
        {
          type = "unsigned int",
          name = "size",
          description = ""
        },
        {
          type = "int",
          name = "charSpacing",
          description = ""
        },
        {
          type = "int",
          name = "lineSpacing",
          description = ""
        },
        {
          type = "int",
          name = "alignmentH",
          description = ""
        },
        {
          type = "int",
          name = "alignmentV",
          description = ""
        },
        {
          type = "int",
          name = "padding",
          description = ""
        }
      }
    }
  },
  aliases = {
  },
  enums = {
    {
      name = "GuiState",
      description = "Gui control state",
      values = {
        {
          name = "STATE_NORMAL",
          value = 0,
          description = ""
        },
        {
          name = "STATE_FOCUSED",
          value = 1,
          description = ""
        },
        {
          name = "STATE_PRESSED",
          value = 2,
          description = ""
        },
        {
          name = "STATE_DISABLED",
          value = 3,
          description = ""
        }
      }
    },
    {
      name = "GuiTextAlignment",
      description = "Gui control text alignment",
      values = {
        {
          name = "TEXT_ALIGN_LEFT",
          value = 0,
          description = ""
        },
        {
          name = "TEXT_ALIGN_CENTER",
          value = 1,
          description = ""
        },
        {
          name = "TEXT_ALIGN_RIGHT",
          value = 2,
          description = ""
        }
      }
    },
    {
      name = "GuiTextAlignmentVertical",
      description = "Gui control text alignment vertical",
      values = {
        {
          name = "TEXT_ALIGN_TOP",
          value = 0,
          description = ""
        },
        {
          name = "TEXT_ALIGN_MIDDLE",
          value = 1,
          description = ""
        },
        {
          name = "TEXT_ALIGN_BOTTOM",
          value = 2,
          description = ""
        }
      }
    },
    {
      name = "GuiTextWrapMode",
      description = "Gui control text wrap mode",
      values = {
        {
          name = "TEXT_WRAP_NONE",
          value = 0,
          description = ""
        },
        {
          name = "TEXT_WRAP_CHAR",
          value = 1,
          description = ""
        },
        {
          name = "TEXT_WRAP_WORD",
          value = 2,
          description = ""
        }
      }
    },
    {
      name = "GuiControl",
      description = "Gui controls",
      values = {
        {
          name = "DEFAULT",
          value = 0,
          description = ""
        },
        {
          name = "LABEL",
          value = 1,
          description = "Used also for: LABELBUTTON"
        },
        {
          name = "BUTTON",
          value = 2,
          description = ""
        },
        {
          name = "TOGGLE",
          value = 3,
          description = "Used also for: TOGGLEGROUP"
        },
        {
          name = "SLIDER",
          value = 4,
          description = "Used also for: SLIDERBAR, TOGGLESLIDER"
        },
        {
          name = "PROGRESSBAR",
          value = 5,
          description = ""
        },
        {
          name = "CHECKBOX",
          value = 6,
          description = ""
        },
        {
          name = "COMBOBOX",
          value = 7,
          description = ""
        },
        {
          name = "DROPDOWNBOX",
          value = 8,
          description = ""
        },
        {
          name = "TEXTBOX",
          value = 9,
          description = "Used also for: TEXTBOXMULTI"
        },
        {
          name = "VALUEBOX",
          value = 10,
          description = ""
        },
        {
          name = "SPINNER",
          value = 11,
          description = "Uses: BUTTON, VALUEBOX"
        },
        {
          name = "LISTVIEW",
          value = 12,
          description = ""
        },
        {
          name = "COLORPICKER",
          value = 13,
          description = ""
        },
        {
          name = "SCROLLBAR",
          value = 14,
          description = ""
        },
        {
          name = "STATUSBAR",
          value = 15,
          description = ""
        }
      }
    },
    {
      name = "GuiControlProperty",
      description = "Gui base properties for every control",
      values = {
        {
          name = "BORDER_COLOR_NORMAL",
          value = 0,
          description = "Control border color in STATE_NORMAL"
        },
        {
          name = "BASE_COLOR_NORMAL",
          value = 1,
          description = "Control base color in STATE_NORMAL"
        },
        {
          name = "TEXT_COLOR_NORMAL",
          value = 2,
          description = "Control text color in STATE_NORMAL"
        },
        {
          name = "BORDER_COLOR_FOCUSED",
          value = 3,
          description = "Control border color in STATE_FOCUSED"
        },
        {
          name = "BASE_COLOR_FOCUSED",
          value = 4,
          description = "Control base color in STATE_FOCUSED"
        },
        {
          name = "TEXT_COLOR_FOCUSED",
          value = 5,
          description = "Control text color in STATE_FOCUSED"
        },
        {
          name = "BORDER_COLOR_PRESSED",
          value = 6,
          description = "Control border color in STATE_PRESSED"
        },
        {
          name = "BASE_COLOR_PRESSED",
          value = 7,
          description = "Control base color in STATE_PRESSED"
        },
        {
          name = "TEXT_COLOR_PRESSED",
          value = 8,
          description = "Control text color in STATE_PRESSED"
        },
        {
          name = "BORDER_COLOR_DISABLED",
          value = 9,
          description = "Control border color in STATE_DISABLED"
        },
        {
          name = "BASE_COLOR_DISABLED",
          value = 10,
          description = "Control base color in STATE_DISABLED"
        },
        {
          name = "TEXT_COLOR_DISABLED",
          value = 11,
          description = "Control text color in STATE_DISABLED"
        },
        {
          name = "BORDER_WIDTH",
          value = 12,
          description = "Control border size, 0 for no border"
        },
        {
          name = "TEXT_PADDING",
          value = 13,
          description = "Control text padding, not considering border"
        },
        {
          name = "TEXT_ALIGNMENT",
          value = 14,
          description = "Control text horizontal alignment inside control text bound (after border and padding)"
        }
      }
    },
    {
      name = "GuiDefaultProperty",
      description = "DEFAULT extended properties",
      values = {
        {
          name = "TEXT_SIZE",
          value = 16,
          description = "Text size (glyphs max height)"
        },
        {
          name = "TEXT_SPACING",
          value = 17,
          description = "Text spacing between glyphs"
        },
        {
          name = "LINE_COLOR",
          value = 18,
          description = "Line control color"
        },
        {
          name = "BACKGROUND_COLOR",
          value = 19,
          description = "Background color"
        },
        {
          name = "TEXT_LINE_SPACING",
          value = 20,
          description = "Text spacing between lines"
        },
        {
          name = "TEXT_ALIGNMENT_VERTICAL",
          value = 21,
          description = "Text vertical alignment inside text bounds (after border and padding)"
        },
        {
          name = "TEXT_WRAP_MODE",
          value = 22,
          description = "Text wrap-mode inside text bounds"
        }
      }
    },
    {
      name = "GuiToggleProperty",
      description = "Toggle/ToggleGroup",
      values = {
        {
          name = "GROUP_PADDING",
          value = 16,
          description = "ToggleGroup separation between toggles"
        }
      }
    },
    {
      name = "GuiSliderProperty",
      description = "Slider/SliderBar",
      values = {
        {
          name = "SLIDER_WIDTH",
          value = 16,
          description = "Slider size of internal bar"
        },
        {
          name = "SLIDER_PADDING",
          value = 17,
          description = "Slider/SliderBar internal bar padding"
        }
      }
    },
    {
      name = "GuiProgressBarProperty",
      description = "ProgressBar",
      values = {
        {
          name = "PROGRESS_PADDING",
          value = 16,
          description = "ProgressBar internal padding"
        }
      }
    },
    {
      name = "GuiScrollBarProperty",
      description = "ScrollBar",
      values = {
        {
          name = "ARROWS_SIZE",
          value = 16,
          description = "ScrollBar arrows size"
        },
        {
          name = "ARROWS_VISIBLE",
          value = 17,
          description = "ScrollBar arrows visible"
        },
        {
          name = "SCROLL_SLIDER_PADDING",
          value = 18,
          description = "ScrollBar slider internal padding"
        },
        {
          name = "SCROLL_SLIDER_SIZE",
          value = 19,
          description = "ScrollBar slider size"
        },
        {
          name = "SCROLL_PADDING",
          value = 20,
          description = "ScrollBar scroll padding from arrows"
        },
        {
          name = "SCROLL_SPEED",
          value = 21,
          description = "ScrollBar scrolling speed"
        }
      }
    },
    {
      name = "GuiCheckBoxProperty",
      description = "CheckBox",
      values = {
        {
          name = "CHECK_PADDING",
          value = 16,
          description = "CheckBox internal check padding"
        }
      }
    },
    {
      name = "GuiComboBoxProperty",
      description = "ComboBox",
      values = {
        {
          name = "COMBO_BUTTON_WIDTH",
          value = 16,
          description = "ComboBox right button width"
        },
        {
          name = "COMBO_BUTTON_SPACING",
          value = 17,
          description = "ComboBox button separation"
        }
      }
    },
    {
      name = "GuiDropdownBoxProperty",
      description = "DropdownBox",
      values = {
        {
          name = "ARROW_PADDING",
          value = 16,
          description = "DropdownBox arrow separation from border and items"
        },
        {
          name = "DROPDOWN_ITEMS_SPACING",
          value = 17,
          description = "DropdownBox items separation"
        }
      }
    },
    {
      name = "GuiTextBoxProperty",
      description = "TextBox/TextBoxMulti/ValueBox/Spinner",
      values = {
        {
          name = "TEXT_READONLY",
          value = 16,
          description = "TextBox in read-only mode: 0-text editable, 1-text no-editable"
        }
      }
    },
    {
      name = "GuiSpinnerProperty",
      description = "Spinner",
      values = {
        {
          name = "SPIN_BUTTON_WIDTH",
          value = 16,
          description = "Spinner left/right buttons width"
        },
        {
          name = "SPIN_BUTTON_SPACING",
          value = 17,
          description = "Spinner buttons separation"
        }
      }
    },
    {
      name = "GuiListViewProperty",
      description = "ListView",
      values = {
        {
          name = "LIST_ITEMS_HEIGHT",
          value = 16,
          description = "ListView items height"
        },
        {
          name = "LIST_ITEMS_SPACING",
          value = 17,
          description = "ListView items separation"
        },
        {
          name = "SCROLLBAR_WIDTH",
          value = 18,
          description = "ListView scrollbar size (usually width)"
        },
        {
          name = "SCROLLBAR_SIDE",
          value = 19,
          description = "ListView scrollbar side (0-SCROLLBAR_LEFT_SIDE, 1-SCROLLBAR_RIGHT_SIDE)"
        }
      }
    },
    {
      name = "GuiColorPickerProperty",
      description = "ColorPicker",
      values = {
        {
          name = "COLOR_SELECTOR_SIZE",
          value = 16,
          description = ""
        },
        {
          name = "HUEBAR_WIDTH",
          value = 17,
          description = "ColorPicker right hue bar width"
        },
        {
          name = "HUEBAR_PADDING",
          value = 18,
          description = "ColorPicker right hue bar separation from panel"
        },
        {
          name = "HUEBAR_SELECTOR_HEIGHT",
          value = 19,
          description = "ColorPicker right hue bar selector height"
        },
        {
          name = "HUEBAR_SELECTOR_OVERFLOW",
          value = 20,
          description = "ColorPicker right hue bar selector overflow"
        }
      }
    },
    {
      name = "GuiIconName",
      description = "",
      values = {
        {
          name = "ICON_NONE",
          value = 0,
          description = ""
        },
        {
          name = "ICON_FOLDER_FILE_OPEN",
          value = 1,
          description = ""
        },
        {
          name = "ICON_FILE_SAVE_CLASSIC",
          value = 2,
          description = ""
        },
        {
          name = "ICON_FOLDER_OPEN",
          value = 3,
          description = ""
        },
        {
          name = "ICON_FOLDER_SAVE",
          value = 4,
          description = ""
        },
        {
          name = "ICON_FILE_OPEN",
          value = 5,
          description = ""
        },
        {
          name = "ICON_FILE_SAVE",
          value = 6,
          description = ""
        },
        {
          name = "ICON_FILE_EXPORT",
          value = 7,
          description = ""
        },
        {
          name = "ICON_FILE_ADD",
          value = 8,
          description = ""
        },
        {
          name = "ICON_FILE_DELETE",
          value = 9,
          description = ""
        },
        {
          name = "ICON_FILETYPE_TEXT",
          value = 10,
          description = ""
        },
        {
          name = "ICON_FILETYPE_AUDIO",
          value = 11,
          description = ""
        },
        {
          name = "ICON_FILETYPE_IMAGE",
          value = 12,
          description = ""
        },
        {
          name = "ICON_FILETYPE_PLAY",
          value = 13,
          description = ""
        },
        {
          name = "ICON_FILETYPE_VIDEO",
          value = 14,
          description = ""
        },
        {
          name = "ICON_FILETYPE_INFO",
          value = 15,
          description = ""
        },
        {
          name = "ICON_FILE_COPY",
          value = 16,
          description = ""
        },
        {
          name = "ICON_FILE_CUT",
          value = 17,
          description = ""
        },
        {
          name = "ICON_FILE_PASTE",
          value = 18,
          description = ""
        },
        {
          name = "ICON_CURSOR_HAND",
          value = 19,
          description = ""
        },
        {
          name = "ICON_CURSOR_POINTER",
          value = 20,
          description = ""
        },
        {
          name = "ICON_CURSOR_CLASSIC",
          value = 21,
          description = ""
        },
        {
          name = "ICON_PENCIL",
          value = 22,
          description = ""
        },
        {
          name = "ICON_PENCIL_BIG",
          value = 23,
          description = ""
        },
        {
          name = "ICON_BRUSH_CLASSIC",
          value = 24,
          description = ""
        },
        {
          name = "ICON_BRUSH_PAINTER",
          value = 25,
          description = ""
        },
        {
          name = "ICON_WATER_DROP",
          value = 26,
          description = ""
        },
        {
          name = "ICON_COLOR_PICKER",
          value = 27,
          description = ""
        },
        {
          name = "ICON_RUBBER",
          value = 28,
          description = ""
        },
        {
          name = "ICON_COLOR_BUCKET",
          value = 29,
          description = ""
        },
        {
          name = "ICON_TEXT_T",
          value = 30,
          description = ""
        },
        {
          name = "ICON_TEXT_A",
          value = 31,
          description = ""
        },
        {
          name = "ICON_SCALE",
          value = 32,
          description = ""
        },
        {
          name = "ICON_RESIZE",
          value = 33,
          description = ""
        },
        {
          name = "ICON_FILTER_POINT",
          value = 34,
          description = ""
        },
        {
          name = "ICON_FILTER_BILINEAR",
          value = 35,
          description = ""
        },
        {
          name = "ICON_CROP",
          value = 36,
          description = ""
        },
        {
          name = "ICON_CROP_ALPHA",
          value = 37,
          description = ""
        },
        {
          name = "ICON_SQUARE_TOGGLE",
          value = 38,
          description = ""
        },
        {
          name = "ICON_SYMMETRY",
          value = 39,
          description = ""
        },
        {
          name = "ICON_SYMMETRY_HORIZONTAL",
          value = 40,
          description = ""
        },
        {
          name = "ICON_SYMMETRY_VERTICAL",
          value = 41,
          description = ""
        },
        {
          name = "ICON_LENS",
          value = 42,
          description = ""
        },
        {
          name = "ICON_LENS_BIG",
          value = 43,
          description = ""
        },
        {
          name = "ICON_EYE_ON",
          value = 44,
          description = ""
        },
        {
          name = "ICON_EYE_OFF",
          value = 45,
          description = ""
        },
        {
          name = "ICON_FILTER_TOP",
          value = 46,
          description = ""
        },
        {
          name = "ICON_FILTER",
          value = 47,
          description = ""
        },
        {
          name = "ICON_TARGET_POINT",
          value = 48,
          description = ""
        },
        {
          name = "ICON_TARGET_SMALL",
          value = 49,
          description = ""
        },
        {
          name = "ICON_TARGET_BIG",
          value = 50,
          description = ""
        },
        {
          name = "ICON_TARGET_MOVE",
          value = 51,
          description = ""
        },
        {
          name = "ICON_CURSOR_MOVE",
          value = 52,
          description = ""
        },
        {
          name = "ICON_CURSOR_SCALE",
          value = 53,
          description = ""
        },
        {
          name = "ICON_CURSOR_SCALE_RIGHT",
          value = 54,
          description = ""
        },
        {
          name = "ICON_CURSOR_SCALE_LEFT",
          value = 55,
          description = ""
        },
        {
          name = "ICON_UNDO",
          value = 56,
          description = ""
        },
        {
          name = "ICON_REDO",
          value = 57,
          description = ""
        },
        {
          name = "ICON_REREDO",
          value = 58,
          description = ""
        },
        {
          name = "ICON_MUTATE",
          value = 59,
          description = ""
        },
        {
          name = "ICON_ROTATE",
          value = 60,
          description = ""
        },
        {
          name = "ICON_REPEAT",
          value = 61,
          description = ""
        },
        {
          name = "ICON_SHUFFLE",
          value = 62,
          description = ""
        },
        {
          name = "ICON_EMPTYBOX",
          value = 63,
          description = ""
        },
        {
          name = "ICON_TARGET",
          value = 64,
          description = ""
        },
        {
          name = "ICON_TARGET_SMALL_FILL",
          value = 65,
          description = ""
        },
        {
          name = "ICON_TARGET_BIG_FILL",
          value = 66,
          description = ""
        },
        {
          name = "ICON_TARGET_MOVE_FILL",
          value = 67,
          description = ""
        },
        {
          name = "ICON_CURSOR_MOVE_FILL",
          value = 68,
          description = ""
        },
        {
          name = "ICON_CURSOR_SCALE_FILL",
          value = 69,
          description = ""
        },
        {
          name = "ICON_CURSOR_SCALE_RIGHT_FILL",
          value = 70,
          description = ""
        },
        {
          name = "ICON_CURSOR_SCALE_LEFT_FILL",
          value = 71,
          description = ""
        },
        {
          name = "ICON_UNDO_FILL",
          value = 72,
          description = ""
        },
        {
          name = "ICON_REDO_FILL",
          value = 73,
          description = ""
        },
        {
          name = "ICON_REREDO_FILL",
          value = 74,
          description = ""
        },
        {
          name = "ICON_MUTATE_FILL",
          value = 75,
          description = ""
        },
        {
          name = "ICON_ROTATE_FILL",
          value = 76,
          description = ""
        },
        {
          name = "ICON_REPEAT_FILL",
          value = 77,
          description = ""
        },
        {
          name = "ICON_SHUFFLE_FILL",
          value = 78,
          description = ""
        },
        {
          name = "ICON_EMPTYBOX_SMALL",
          value = 79,
          description = ""
        },
        {
          name = "ICON_BOX",
          value = 80,
          description = ""
        },
        {
          name = "ICON_BOX_TOP",
          value = 81,
          description = ""
        },
        {
          name = "ICON_BOX_TOP_RIGHT",
          value = 82,
          description = ""
        },
        {
          name = "ICON_BOX_RIGHT",
          value = 83,
          description = ""
        },
        {
          name = "ICON_BOX_BOTTOM_RIGHT",
          value = 84,
          description = ""
        },
        {
          name = "ICON_BOX_BOTTOM",
          value = 85,
          description = ""
        },
        {
          name = "ICON_BOX_BOTTOM_LEFT",
          value = 86,
          description = ""
        },
        {
          name = "ICON_BOX_LEFT",
          value = 87,
          description = ""
        },
        {
          name = "ICON_BOX_TOP_LEFT",
          value = 88,
          description = ""
        },
        {
          name = "ICON_BOX_CENTER",
          value = 89,
          description = ""
        },
        {
          name = "ICON_BOX_CIRCLE_MASK",
          value = 90,
          description = ""
        },
        {
          name = "ICON_POT",
          value = 91,
          description = ""
        },
        {
          name = "ICON_ALPHA_MULTIPLY",
          value = 92,
          description = ""
        },
        {
          name = "ICON_ALPHA_CLEAR",
          value = 93,
          description = ""
        },
        {
          name = "ICON_DITHERING",
          value = 94,
          description = ""
        },
        {
          name = "ICON_MIPMAPS",
          value = 95,
          description = ""
        },
        {
          name = "ICON_BOX_GRID",
          value = 96,
          description = ""
        },
        {
          name = "ICON_GRID",
          value = 97,
          description = ""
        },
        {
          name = "ICON_BOX_CORNERS_SMALL",
          value = 98,
          description = ""
        },
        {
          name = "ICON_BOX_CORNERS_BIG",
          value = 99,
          description = ""
        },
        {
          name = "ICON_FOUR_BOXES",
          value = 100,
          description = ""
        },
        {
          name = "ICON_GRID_FILL",
          value = 101,
          description = ""
        },
        {
          name = "ICON_BOX_MULTISIZE",
          value = 102,
          description = ""
        },
        {
          name = "ICON_ZOOM_SMALL",
          value = 103,
          description = ""
        },
        {
          name = "ICON_ZOOM_MEDIUM",
          value = 104,
          description = ""
        },
        {
          name = "ICON_ZOOM_BIG",
          value = 105,
          description = ""
        },
        {
          name = "ICON_ZOOM_ALL",
          value = 106,
          description = ""
        },
        {
          name = "ICON_ZOOM_CENTER",
          value = 107,
          description = ""
        },
        {
          name = "ICON_BOX_DOTS_SMALL",
          value = 108,
          description = ""
        },
        {
          name = "ICON_BOX_DOTS_BIG",
          value = 109,
          description = ""
        },
        {
          name = "ICON_BOX_CONCENTRIC",
          value = 110,
          description = ""
        },
        {
          name = "ICON_BOX_GRID_BIG",
          value = 111,
          description = ""
        },
        {
          name = "ICON_OK_TICK",
          value = 112,
          description = ""
        },
        {
          name = "ICON_CROSS",
          value = 113,
          description = ""
        },
        {
          name = "ICON_ARROW_LEFT",
          value = 114,
          description = ""
        },
        {
          name = "ICON_ARROW_RIGHT",
          value = 115,
          description = ""
        },
        {
          name = "ICON_ARROW_DOWN",
          value = 116,
          description = ""
        },
        {
          name = "ICON_ARROW_UP",
          value = 117,
          description = ""
        },
        {
          name = "ICON_ARROW_LEFT_FILL",
          value = 118,
          description = ""
        },
        {
          name = "ICON_ARROW_RIGHT_FILL",
          value = 119,
          description = ""
        },
        {
          name = "ICON_ARROW_DOWN_FILL",
          value = 120,
          description = ""
        },
        {
          name = "ICON_ARROW_UP_FILL",
          value = 121,
          description = ""
        },
        {
          name = "ICON_AUDIO",
          value = 122,
          description = ""
        },
        {
          name = "ICON_FX",
          value = 123,
          description = ""
        },
        {
          name = "ICON_WAVE",
          value = 124,
          description = ""
        },
        {
          name = "ICON_WAVE_SINUS",
          value = 125,
          description = ""
        },
        {
          name = "ICON_WAVE_SQUARE",
          value = 126,
          description = ""
        },
        {
          name = "ICON_WAVE_TRIANGULAR",
          value = 127,
          description = ""
        },
        {
          name = "ICON_CROSS_SMALL",
          value = 128,
          description = ""
        },
        {
          name = "ICON_PLAYER_PREVIOUS",
          value = 129,
          description = ""
        },
        {
          name = "ICON_PLAYER_PLAY_BACK",
          value = 130,
          description = ""
        },
        {
          name = "ICON_PLAYER_PLAY",
          value = 131,
          description = ""
        },
        {
          name = "ICON_PLAYER_PAUSE",
          value = 132,
          description = ""
        },
        {
          name = "ICON_PLAYER_STOP",
          value = 133,
          description = ""
        },
        {
          name = "ICON_PLAYER_NEXT",
          value = 134,
          description = ""
        },
        {
          name = "ICON_PLAYER_RECORD",
          value = 135,
          description = ""
        },
        {
          name = "ICON_MAGNET",
          value = 136,
          description = ""
        },
        {
          name = "ICON_LOCK_CLOSE",
          value = 137,
          description = ""
        },
        {
          name = "ICON_LOCK_OPEN",
          value = 138,
          description = ""
        },
        {
          name = "ICON_CLOCK",
          value = 139,
          description = ""
        },
        {
          name = "ICON_TOOLS",
          value = 140,
          description = ""
        },
        {
          name = "ICON_GEAR",
          value = 141,
          description = ""
        },
        {
          name = "ICON_GEAR_BIG",
          value = 142,
          description = ""
        },
        {
          name = "ICON_BIN",
          value = 143,
          description = ""
        },
        {
          name = "ICON_HAND_POINTER",
          value = 144,
          description = ""
        },
        {
          name = "ICON_LASER",
          value = 145,
          description = ""
        },
        {
          name = "ICON_COIN",
          value = 146,
          description = ""
        },
        {
          name = "ICON_EXPLOSION",
          value = 147,
          description = ""
        },
        {
          name = "ICON_1UP",
          value = 148,
          description = ""
        },
        {
          name = "ICON_PLAYER",
          value = 149,
          description = ""
        },
        {
          name = "ICON_PLAYER_JUMP",
          value = 150,
          description = ""
        },
        {
          name = "ICON_KEY",
          value = 151,
          description = ""
        },
        {
          name = "ICON_DEMON",
          value = 152,
          description = ""
        },
        {
          name = "ICON_TEXT_POPUP",
          value = 153,
          description = ""
        },
        {
          name = "ICON_GEAR_EX",
          value = 154,
          description = ""
        },
        {
          name = "ICON_CRACK",
          value = 155,
          description = ""
        },
        {
          name = "ICON_CRACK_POINTS",
          value = 156,
          description = ""
        },
        {
          name = "ICON_STAR",
          value = 157,
          description = ""
        },
        {
          name = "ICON_DOOR",
          value = 158,
          description = ""
        },
        {
          name = "ICON_EXIT",
          value = 159,
          description = ""
        },
        {
          name = "ICON_MODE_2D",
          value = 160,
          description = ""
        },
        {
          name = "ICON_MODE_3D",
          value = 161,
          description = ""
        },
        {
          name = "ICON_CUBE",
          value = 162,
          description = ""
        },
        {
          name = "ICON_CUBE_FACE_TOP",
          value = 163,
          description = ""
        },
        {
          name = "ICON_CUBE_FACE_LEFT",
          value = 164,
          description = ""
        },
        {
          name = "ICON_CUBE_FACE_FRONT",
          value = 165,
          description = ""
        },
        {
          name = "ICON_CUBE_FACE_BOTTOM",
          value = 166,
          description = ""
        },
        {
          name = "ICON_CUBE_FACE_RIGHT",
          value = 167,
          description = ""
        },
        {
          name = "ICON_CUBE_FACE_BACK",
          value = 168,
          description = ""
        },
        {
          name = "ICON_CAMERA",
          value = 169,
          description = ""
        },
        {
          name = "ICON_SPECIAL",
          value = 170,
          description = ""
        },
        {
          name = "ICON_LINK_NET",
          value = 171,
          description = ""
        },
        {
          name = "ICON_LINK_BOXES",
          value = 172,
          description = ""
        },
        {
          name = "ICON_LINK_MULTI",
          value = 173,
          description = ""
        },
        {
          name = "ICON_LINK",
          value = 174,
          description = ""
        },
        {
          name = "ICON_LINK_BROKE",
          value = 175,
          description = ""
        },
        {
          name = "ICON_TEXT_NOTES",
          value = 176,
          description = ""
        },
        {
          name = "ICON_NOTEBOOK",
          value = 177,
          description = ""
        },
        {
          name = "ICON_SUITCASE",
          value = 178,
          description = ""
        },
        {
          name = "ICON_SUITCASE_ZIP",
          value = 179,
          description = ""
        },
        {
          name = "ICON_MAILBOX",
          value = 180,
          description = ""
        },
        {
          name = "ICON_MONITOR",
          value = 181,
          description = ""
        },
        {
          name = "ICON_PRINTER",
          value = 182,
          description = ""
        },
        {
          name = "ICON_PHOTO_CAMERA",
          value = 183,
          description = ""
        },
        {
          name = "ICON_PHOTO_CAMERA_FLASH",
          value = 184,
          description = ""
        },
        {
          name = "ICON_HOUSE",
          value = 185,
          description = ""
        },
        {
          name = "ICON_HEART",
          value = 186,
          description = ""
        },
        {
          name = "ICON_CORNER",
          value = 187,
          description = ""
        },
        {
          name = "ICON_VERTICAL_BARS",
          value = 188,
          description = ""
        },
        {
          name = "ICON_VERTICAL_BARS_FILL",
          value = 189,
          description = ""
        },
        {
          name = "ICON_LIFE_BARS",
          value = 190,
          description = ""
        },
        {
          name = "ICON_INFO",
          value = 191,
          description = ""
        },
        {
          name = "ICON_CROSSLINE",
          value = 192,
          description = ""
        },
        {
          name = "ICON_HELP",
          value = 193,
          description = ""
        },
        {
          name = "ICON_FILETYPE_ALPHA",
          value = 194,
          description = ""
        },
        {
          name = "ICON_FILETYPE_HOME",
          value = 195,
          description = ""
        },
        {
          name = "ICON_LAYERS_VISIBLE",
          value = 196,
          description = ""
        },
        {
          name = "ICON_LAYERS",
          value = 197,
          description = ""
        },
        {
          name = "ICON_WINDOW",
          value = 198,
          description = ""
        },
        {
          name = "ICON_HIDPI",
          value = 199,
          description = ""
        },
        {
          name = "ICON_FILETYPE_BINARY",
          value = 200,
          description = ""
        },
        {
          name = "ICON_HEX",
          value = 201,
          description = ""
        },
        {
          name = "ICON_SHIELD",
          value = 202,
          description = ""
        },
        {
          name = "ICON_FILE_NEW",
          value = 203,
          description = ""
        },
        {
          name = "ICON_FOLDER_ADD",
          value = 204,
          description = ""
        },
        {
          name = "ICON_ALARM",
          value = 205,
          description = ""
        },
        {
          name = "ICON_CPU",
          value = 206,
          description = ""
        },
        {
          name = "ICON_ROM",
          value = 207,
          description = ""
        },
        {
          name = "ICON_STEP_OVER",
          value = 208,
          description = ""
        },
        {
          name = "ICON_STEP_INTO",
          value = 209,
          description = ""
        },
        {
          name = "ICON_STEP_OUT",
          value = 210,
          description = ""
        },
        {
          name = "ICON_RESTART",
          value = 211,
          description = ""
        },
        {
          name = "ICON_BREAKPOINT_ON",
          value = 212,
          description = ""
        },
        {
          name = "ICON_BREAKPOINT_OFF",
          value = 213,
          description = ""
        },
        {
          name = "ICON_BURGER_MENU",
          value = 214,
          description = ""
        },
        {
          name = "ICON_CASE_SENSITIVE",
          value = 215,
          description = ""
        },
        {
          name = "ICON_REG_EXP",
          value = 216,
          description = ""
        },
        {
          name = "ICON_FOLDER",
          value = 217,
          description = ""
        },
        {
          name = "ICON_FILE",
          value = 218,
          description = ""
        },
        {
          name = "ICON_SAND_TIMER",
          value = 219,
          description = ""
        },
        {
          name = "ICON_220",
          value = 220,
          description = ""
        },
        {
          name = "ICON_221",
          value = 221,
          description = ""
        },
        {
          name = "ICON_222",
          value = 222,
          description = ""
        },
        {
          name = "ICON_223",
          value = 223,
          description = ""
        },
        {
          name = "ICON_224",
          value = 224,
          description = ""
        },
        {
          name = "ICON_225",
          value = 225,
          description = ""
        },
        {
          name = "ICON_226",
          value = 226,
          description = ""
        },
        {
          name = "ICON_227",
          value = 227,
          description = ""
        },
        {
          name = "ICON_228",
          value = 228,
          description = ""
        },
        {
          name = "ICON_229",
          value = 229,
          description = ""
        },
        {
          name = "ICON_230",
          value = 230,
          description = ""
        },
        {
          name = "ICON_231",
          value = 231,
          description = ""
        },
        {
          name = "ICON_232",
          value = 232,
          description = ""
        },
        {
          name = "ICON_233",
          value = 233,
          description = ""
        },
        {
          name = "ICON_234",
          value = 234,
          description = ""
        },
        {
          name = "ICON_235",
          value = 235,
          description = ""
        },
        {
          name = "ICON_236",
          value = 236,
          description = ""
        },
        {
          name = "ICON_237",
          value = 237,
          description = ""
        },
        {
          name = "ICON_238",
          value = 238,
          description = ""
        },
        {
          name = "ICON_239",
          value = 239,
          description = ""
        },
        {
          name = "ICON_240",
          value = 240,
          description = ""
        },
        {
          name = "ICON_241",
          value = 241,
          description = ""
        },
        {
          name = "ICON_242",
          value = 242,
          description = ""
        },
        {
          name = "ICON_243",
          value = 243,
          description = ""
        },
        {
          name = "ICON_244",
          value = 244,
          description = ""
        },
        {
          name = "ICON_245",
          value = 245,
          description = ""
        },
        {
          name = "ICON_246",
          value = 246,
          description = ""
        },
        {
          name = "ICON_247",
          value = 247,
          description = ""
        },
        {
          name = "ICON_248",
          value = 248,
          description = ""
        },
        {
          name = "ICON_249",
          value = 249,
          description = ""
        },
        {
          name = "ICON_250",
          value = 250,
          description = ""
        },
        {
          name = "ICON_251",
          value = 251,
          description = ""
        },
        {
          name = "ICON_252",
          value = 252,
          description = ""
        },
        {
          name = "ICON_253",
          value = 253,
          description = ""
        },
        {
          name = "ICON_254",
          value = 254,
          description = ""
        },
        {
          name = "ICON_255",
          value = 255,
          description = ""
        }
      }
    }
  },
  callbacks = {
  },
  functions = {
    {
      name = "GuiEnable",
      description = "Enable gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiDisable",
      description = "Disable gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiLock",
      description = "Lock gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiUnlock",
      description = "Unlock gui controls (global state)",
      returnType = "void"
    },
    {
      name = "GuiIsLocked",
      description = "Check if gui is locked (global state)",
      returnType = "bool"
    },
    {
      name = "GuiSetAlpha",
      description = "Set gui controls alpha (global state), alpha goes from 0.0f to 1.0f",
      returnType = "void",
      params = {
        {type = "float", name = "alpha"}
      }
    },
    {
      name = "GuiSetState",
      description = "Set gui state (global state)",
      returnType = "void",
      params = {
        {type = "int", name = "state"}
      }
    },
    {
      name = "GuiGetState",
      description = "Get gui state (global state)",
      returnType = "int"
    },
    {
      name = "GuiSetFont",
      description = "Set gui custom font (global state)",
      returnType = "void",
      params = {
        {type = "Font", name = "font"}
      }
    },
    {
      name = "GuiGetFont",
      description = "Get gui custom font (global state)",
      returnType = "Font"
    },
    {
      name = "GuiSetStyle",
      description = "Set one style property",
      returnType = "void",
      params = {
        {type = "int", name = "control"},
        {type = "int", name = "property"},
        {type = "int", name = "value"}
      }
    },
    {
      name = "GuiGetStyle",
      description = "Get one style property",
      returnType = "int",
      params = {
        {type = "int", name = "control"},
        {type = "int", name = "property"}
      }
    },
    {
      name = "GuiLoadStyle",
      description = "Load style file over global style variable (.rgs)",
      returnType = "void",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "GuiLoadStyleDefault",
      description = "Load style default over global style",
      returnType = "void"
    },
    {
      name = "GuiEnableTooltip",
      description = "Enable gui tooltips (global state)",
      returnType = "void"
    },
    {
      name = "GuiDisableTooltip",
      description = "Disable gui tooltips (global state)",
      returnType = "void"
    },
    {
      name = "GuiSetTooltip",
      description = "Set tooltip string",
      returnType = "void",
      params = {
        {type = "const char *", name = "tooltip"}
      }
    },
    {
      name = "GuiIconText",
      description = "Get text with icon id prepended (if supported)",
      returnType = "const char *",
      params = {
        {type = "int", name = "iconId"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiSetIconScale",
      description = "Set default icon drawing size",
      returnType = "void",
      params = {
        {type = "int", name = "scale"}
      }
    },
    {
      name = "GuiGetIcons",
      description = "Get raygui icons data pointer",
      returnType = "unsigned int *"
    },
    {
      name = "GuiLoadIcons",
      description = "Load raygui icons file (.rgi) into internal icons data",
      returnType = "char **",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "bool", name = "loadIconsName"}
      }
    },
    {
      name = "GuiDrawIcon",
      description = "Draw icon using pixel size at specified position",
      returnType = "void",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "pixelSize"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GuiWindowBox",
      description = "Window Box control, shows a window that can be closed",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"}
      }
    },
    {
      name = "GuiGroupBox",
      description = "Group Box control with text name",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiLine",
      description = "Line separator control, could contain text",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiPanel",
      description = "Panel control, useful to group controls",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiTabBar",
      description = "Tab Bar control, returns TAB to be closed or -1",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char **", name = "text"},
        {type = "int", name = "count"},
        {type = "int *", name = "active"}
      }
    },
    {
      name = "GuiScrollPanel",
      description = "Scroll Panel control",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Rectangle", name = "content"},
        {type = "Vector2 *", name = "scroll"},
        {type = "Rectangle *", name = "view"}
      }
    },
    {
      name = "GuiLabel",
      description = "Label control, shows text",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiButton",
      description = "Button control, returns true when clicked",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiLabelButton",
      description = "Label button control, show true when clicked",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiToggle",
      description = "Toggle Button control, returns true when active",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "bool *", name = "active"}
      }
    },
    {
      name = "GuiToggleGroup",
      description = "Toggle Group control, returns active toggle index",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "active"}
      }
    },
    {
      name = "GuiToggleSlider",
      description = "Toggle Slider control, returns true when clicked",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "active"}
      }
    },
    {
      name = "GuiCheckBox",
      description = "Check Box control, returns true when active",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "bool *", name = "checked"}
      }
    },
    {
      name = "GuiComboBox",
      description = "Combo Box control, returns selected item index",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "active"}
      }
    },
    {
      name = "GuiDropdownBox",
      description = "Dropdown Box control, returns selected item",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "active"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiSpinner",
      description = "Spinner control, returns selected value",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "value"},
        {type = "int", name = "minValue"},
        {type = "int", name = "maxValue"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiValueBox",
      description = "Value Box control, updates input text with numbers",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "value"},
        {type = "int", name = "minValue"},
        {type = "int", name = "maxValue"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiTextBox",
      description = "Text Box control, updates input text",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "char *", name = "text"},
        {type = "int", name = "textSize"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiSlider",
      description = "Slider control, returns selected value",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float *", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiSliderBar",
      description = "Slider Bar control, returns selected value",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float *", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiProgressBar",
      description = "Progress Bar control, shows current progress value",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float *", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiStatusBar",
      description = "Status Bar control, shows info text",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiDummyRec",
      description = "Dummy control for placeholders",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiGrid",
      description = "Grid control, returns mouse cell position",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "float", name = "spacing"},
        {type = "int", name = "subdivs"},
        {type = "Vector2 *", name = "mouseCell"}
      }
    },
    {
      name = "GuiListView",
      description = "List View control, returns selected list item index",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "scrollIndex"},
        {type = "int *", name = "active"}
      }
    },
    {
      name = "GuiListViewEx",
      description = "List View with extended parameters",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char **", name = "text"},
        {type = "int", name = "count"},
        {type = "int *", name = "scrollIndex"},
        {type = "int *", name = "active"},
        {type = "int *", name = "focus"}
      }
    },
    {
      name = "GuiMessageBox",
      description = "Message Box control, displays a message",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"},
        {type = "const char *", name = "message"},
        {type = "const char *", name = "buttons"}
      }
    },
    {
      name = "GuiTextInputBox",
      description = "Text Input Box control, ask for text, supports secret",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"},
        {type = "const char *", name = "message"},
        {type = "const char *", name = "buttons"},
        {type = "char *", name = "text"},
        {type = "int", name = "textMaxSize"},
        {type = "bool *", name = "secretViewActive"}
      }
    },
    {
      name = "GuiColorPicker",
      description = "Color Picker control (multiple color controls)",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Color *", name = "color"}
      }
    },
    {
      name = "GuiColorPanel",
      description = "Color Panel control",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Color *", name = "color"}
      }
    },
    {
      name = "GuiColorBarAlpha",
      description = "Color Bar Alpha control",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "float *", name = "alpha"}
      }
    },
    {
      name = "GuiColorBarHue",
      description = "Color Bar Hue control",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "float *", name = "value"}
      }
    },
    {
      name = "GuiColorPickerHSV",
      description = "Color Picker control that avoids conversion to RGB on each call (multiple color controls)",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Vector3 *", name = "colorHsv"}
      }
    },
    {
      name = "GuiColorPanelHSV",
      description = "Color Panel control that returns HSV color value, used by GuiColorPickerHSV()",
      returnType = "int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Vector3 *", name = "colorHsv"}
      }
    }
  }
}
