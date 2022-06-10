return {
  defines = {
    {
      name = "RAYGUI_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RAYGUI_VERSION",
      type = "STRING",
      value = "3.2-dev",
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
      name = "RAYGUI_ICON_SIZE",
      type = "INT",
      value = 16,
      description = "Size of icons (squared)"
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
      description = "Maximum number of standard controls"
    },
    {
      name = "RAYGUI_MAX_PROPS_BASE",
      type = "INT",
      value = 16,
      description = "Maximum number of standard properties"
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
      name = "RAYGUI_TOGGLEGROUP_MAX_ITEMS",
      type = "INT",
      value = 32,
      description = ""
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
      value = 28,
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
      value = 28,
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
      value = "((a) & (1<<(b)))",
      description = ""
    },
    {
      name = "BIT_SET(a,b)",
      type = "MACRO",
      value = "((a) |= (1<<(b)))",
      description = ""
    },
    {
      name = "BIT_CLEAR(a,b)",
      type = "MACRO",
      value = "((a) &= ~((1)<<(b)))",
      description = ""
    },
    {
      name = "TEXT_VALIGN_PIXEL_OFFSET(h)",
      type = "MACRO",
      value = "((int)h%2)",
      description = "Vertical alignment for pixel perfect"
    },
    {
      name = "RAYGUI_ICON_TEXT_PADDING",
      type = "INT",
      value = 4,
      description = ""
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
          description = "Number of characters"
        },
        {
          type = "Texture2D",
          name = "texture",
          description = "Characters texture atlas"
        },
        {
          type = "Rectangle *",
          name = "recs",
          description = "Characters rectangles in texture"
        },
        {
          type = "GlyphInfo *",
          name = "chars",
          description = "Characters info data"
        }
      }
    },
    {
      name = "GuiStyleProp",
      description = "Style property",
      fields = {
        {
          type = "unsigned short",
          name = "controlId",
          description = ""
        },
        {
          type = "unsigned short",
          name = "propertyId",
          description = ""
        },
        {
          type = "int",
          name = "propertyValue",
          description = ""
        }
      }
    }
  },
  aliases = {
  },
  enums = {
    {
      name = "GuiControlState",
      description = "Gui control state",
      values = {
        {
          name = "GUI_STATE_NORMAL",
          value = 0,
          description = ""
        },
        {
          name = "GUI_STATE_FOCUSED",
          value = 1,
          description = ""
        },
        {
          name = "GUI_STATE_PRESSED",
          value = 2,
          description = ""
        },
        {
          name = "GUI_STATE_DISABLED",
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
          name = "GUI_TEXT_ALIGN_LEFT",
          value = 0,
          description = ""
        },
        {
          name = "GUI_TEXT_ALIGN_CENTER",
          value = 1,
          description = ""
        },
        {
          name = "GUI_TEXT_ALIGN_RIGHT",
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
          description = "Used also for: SLIDERBAR"
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
          description = ""
        },
        {
          name = "BASE_COLOR_NORMAL",
          value = 1,
          description = ""
        },
        {
          name = "TEXT_COLOR_NORMAL",
          value = 2,
          description = ""
        },
        {
          name = "BORDER_COLOR_FOCUSED",
          value = 3,
          description = ""
        },
        {
          name = "BASE_COLOR_FOCUSED",
          value = 4,
          description = ""
        },
        {
          name = "TEXT_COLOR_FOCUSED",
          value = 5,
          description = ""
        },
        {
          name = "BORDER_COLOR_PRESSED",
          value = 6,
          description = ""
        },
        {
          name = "BASE_COLOR_PRESSED",
          value = 7,
          description = ""
        },
        {
          name = "TEXT_COLOR_PRESSED",
          value = 8,
          description = ""
        },
        {
          name = "BORDER_COLOR_DISABLED",
          value = 9,
          description = ""
        },
        {
          name = "BASE_COLOR_DISABLED",
          value = 10,
          description = ""
        },
        {
          name = "TEXT_COLOR_DISABLED",
          value = 11,
          description = ""
        },
        {
          name = "BORDER_WIDTH",
          value = 12,
          description = ""
        },
        {
          name = "TEXT_PADDING",
          value = 13,
          description = ""
        },
        {
          name = "TEXT_ALIGNMENT",
          value = 14,
          description = ""
        },
        {
          name = "RESERVED",
          value = 15,
          description = ""
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
          description = ""
        },
        {
          name = "ARROWS_VISIBLE",
          value = 17,
          description = ""
        },
        {
          name = "SCROLL_SLIDER_PADDING",
          value = 18,
          description = "(SLIDERBAR, SLIDER_PADDING)"
        },
        {
          name = "SCROLL_SLIDER_SIZE",
          value = 19,
          description = ""
        },
        {
          name = "SCROLL_PADDING",
          value = 20,
          description = ""
        },
        {
          name = "SCROLL_SPEED",
          value = 21,
          description = ""
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
          name = "TEXT_INNER_PADDING",
          value = 16,
          description = "TextBox/TextBoxMulti/ValueBox/Spinner inner text padding"
        },
        {
          name = "TEXT_LINES_SPACING",
          value = 17,
          description = "TextBoxMulti lines separation"
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
          description = "ListView scrollbar side (0-left, 1-right)"
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
      name = "guiIconName",
      description = "",
      values = {
        {
          name = "RAYGUI_ICON_NONE",
          value = 0,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FOLDER_FILE_OPEN",
          value = 1,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_SAVE_CLASSIC",
          value = 2,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FOLDER_OPEN",
          value = 3,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FOLDER_SAVE",
          value = 4,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_OPEN",
          value = 5,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_SAVE",
          value = 6,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_EXPORT",
          value = 7,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_ADD",
          value = 8,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_DELETE",
          value = 9,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_TEXT",
          value = 10,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_AUDIO",
          value = 11,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_IMAGE",
          value = 12,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_PLAY",
          value = 13,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_VIDEO",
          value = 14,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_INFO",
          value = 15,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_COPY",
          value = 16,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_CUT",
          value = 17,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_PASTE",
          value = 18,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_HAND",
          value = 19,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_POINTER",
          value = 20,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_CLASSIC",
          value = 21,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PENCIL",
          value = 22,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PENCIL_BIG",
          value = 23,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BRUSH_CLASSIC",
          value = 24,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BRUSH_PAINTER",
          value = 25,
          description = ""
        },
        {
          name = "RAYGUI_ICON_WATER_DROP",
          value = 26,
          description = ""
        },
        {
          name = "RAYGUI_ICON_COLOR_PICKER",
          value = 27,
          description = ""
        },
        {
          name = "RAYGUI_ICON_RUBBER",
          value = 28,
          description = ""
        },
        {
          name = "RAYGUI_ICON_COLOR_BUCKET",
          value = 29,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TEXT_T",
          value = 30,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TEXT_A",
          value = 31,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SCALE",
          value = 32,
          description = ""
        },
        {
          name = "RAYGUI_ICON_RESIZE",
          value = 33,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILTER_POINT",
          value = 34,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILTER_BILINEAR",
          value = 35,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CROP",
          value = 36,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CROP_ALPHA",
          value = 37,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SQUARE_TOGGLE",
          value = 38,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SYMMETRY",
          value = 39,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SYMMETRY_HORIZONTAL",
          value = 40,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SYMMETRY_VERTICAL",
          value = 41,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LENS",
          value = 42,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LENS_BIG",
          value = 43,
          description = ""
        },
        {
          name = "RAYGUI_ICON_EYE_ON",
          value = 44,
          description = ""
        },
        {
          name = "RAYGUI_ICON_EYE_OFF",
          value = 45,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILTER_TOP",
          value = 46,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILTER",
          value = 47,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET_POINT",
          value = 48,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET_SMALL",
          value = 49,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET_BIG",
          value = 50,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET_MOVE",
          value = 51,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_MOVE",
          value = 52,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_SCALE",
          value = 53,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_SCALE_RIGHT",
          value = 54,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_SCALE_LEFT",
          value = 55,
          description = ""
        },
        {
          name = "RAYGUI_ICON_UNDO",
          value = 56,
          description = ""
        },
        {
          name = "RAYGUI_ICON_REDO",
          value = 57,
          description = ""
        },
        {
          name = "RAYGUI_ICON_REREDO",
          value = 58,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MUTATE",
          value = 59,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ROTATE",
          value = 60,
          description = ""
        },
        {
          name = "RAYGUI_ICON_REPEAT",
          value = 61,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SHUFFLE",
          value = 62,
          description = ""
        },
        {
          name = "RAYGUI_ICON_EMPTYBOX",
          value = 63,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET",
          value = 64,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET_SMALL_FILL",
          value = 65,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET_BIG_FILL",
          value = 66,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TARGET_MOVE_FILL",
          value = 67,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_MOVE_FILL",
          value = 68,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_SCALE_FILL",
          value = 69,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_SCALE_RIGHT_FILL",
          value = 70,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CURSOR_SCALE_LEFT_FILL",
          value = 71,
          description = ""
        },
        {
          name = "RAYGUI_ICON_UNDO_FILL",
          value = 72,
          description = ""
        },
        {
          name = "RAYGUI_ICON_REDO_FILL",
          value = 73,
          description = ""
        },
        {
          name = "RAYGUI_ICON_REREDO_FILL",
          value = 74,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MUTATE_FILL",
          value = 75,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ROTATE_FILL",
          value = 76,
          description = ""
        },
        {
          name = "RAYGUI_ICON_REPEAT_FILL",
          value = 77,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SHUFFLE_FILL",
          value = 78,
          description = ""
        },
        {
          name = "RAYGUI_ICON_EMPTYBOX_SMALL",
          value = 79,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX",
          value = 80,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_TOP",
          value = 81,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_TOP_RIGHT",
          value = 82,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_RIGHT",
          value = 83,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_BOTTOM_RIGHT",
          value = 84,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_BOTTOM",
          value = 85,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_BOTTOM_LEFT",
          value = 86,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_LEFT",
          value = 87,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_TOP_LEFT",
          value = 88,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_CENTER",
          value = 89,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_CIRCLE_MASK",
          value = 90,
          description = ""
        },
        {
          name = "RAYGUI_ICON_POT",
          value = 91,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ALPHA_MULTIPLY",
          value = 92,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ALPHA_CLEAR",
          value = 93,
          description = ""
        },
        {
          name = "RAYGUI_ICON_DITHERING",
          value = 94,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MIPMAPS",
          value = 95,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_GRID",
          value = 96,
          description = ""
        },
        {
          name = "RAYGUI_ICON_GRID",
          value = 97,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_CORNERS_SMALL",
          value = 98,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_CORNERS_BIG",
          value = 99,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FOUR_BOXES",
          value = 100,
          description = ""
        },
        {
          name = "RAYGUI_ICON_GRID_FILL",
          value = 101,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_MULTISIZE",
          value = 102,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ZOOM_SMALL",
          value = 103,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ZOOM_MEDIUM",
          value = 104,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ZOOM_BIG",
          value = 105,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ZOOM_ALL",
          value = 106,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ZOOM_CENTER",
          value = 107,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_DOTS_SMALL",
          value = 108,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_DOTS_BIG",
          value = 109,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_CONCENTRIC",
          value = 110,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BOX_GRID_BIG",
          value = 111,
          description = ""
        },
        {
          name = "RAYGUI_ICON_OK_TICK",
          value = 112,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CROSS",
          value = 113,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_LEFT",
          value = 114,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_RIGHT",
          value = 115,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_DOWN",
          value = 116,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_UP",
          value = 117,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_LEFT_FILL",
          value = 118,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_RIGHT_FILL",
          value = 119,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_DOWN_FILL",
          value = 120,
          description = ""
        },
        {
          name = "RAYGUI_ICON_ARROW_UP_FILL",
          value = 121,
          description = ""
        },
        {
          name = "RAYGUI_ICON_AUDIO",
          value = 122,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FX",
          value = 123,
          description = ""
        },
        {
          name = "RAYGUI_ICON_WAVE",
          value = 124,
          description = ""
        },
        {
          name = "RAYGUI_ICON_WAVE_SINUS",
          value = 125,
          description = ""
        },
        {
          name = "RAYGUI_ICON_WAVE_SQUARE",
          value = 126,
          description = ""
        },
        {
          name = "RAYGUI_ICON_WAVE_TRIANGULAR",
          value = 127,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CROSS_SMALL",
          value = 128,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_PREVIOUS",
          value = 129,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_PLAY_BACK",
          value = 130,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_PLAY",
          value = 131,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_PAUSE",
          value = 132,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_STOP",
          value = 133,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_NEXT",
          value = 134,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_RECORD",
          value = 135,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MAGNET",
          value = 136,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LOCK_CLOSE",
          value = 137,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LOCK_OPEN",
          value = 138,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CLOCK",
          value = 139,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TOOLS",
          value = 140,
          description = ""
        },
        {
          name = "RAYGUI_ICON_GEAR",
          value = 141,
          description = ""
        },
        {
          name = "RAYGUI_ICON_GEAR_BIG",
          value = 142,
          description = ""
        },
        {
          name = "RAYGUI_ICON_BIN",
          value = 143,
          description = ""
        },
        {
          name = "RAYGUI_ICON_HAND_POINTER",
          value = 144,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LASER",
          value = 145,
          description = ""
        },
        {
          name = "RAYGUI_ICON_COIN",
          value = 146,
          description = ""
        },
        {
          name = "RAYGUI_ICON_EXPLOSION",
          value = 147,
          description = ""
        },
        {
          name = "RAYGUI_ICON_1UP",
          value = 148,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER",
          value = 149,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PLAYER_JUMP",
          value = 150,
          description = ""
        },
        {
          name = "RAYGUI_ICON_KEY",
          value = 151,
          description = ""
        },
        {
          name = "RAYGUI_ICON_DEMON",
          value = 152,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TEXT_POPUP",
          value = 153,
          description = ""
        },
        {
          name = "RAYGUI_ICON_GEAR_EX",
          value = 154,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CRACK",
          value = 155,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CRACK_POINTS",
          value = 156,
          description = ""
        },
        {
          name = "RAYGUI_ICON_STAR",
          value = 157,
          description = ""
        },
        {
          name = "RAYGUI_ICON_DOOR",
          value = 158,
          description = ""
        },
        {
          name = "RAYGUI_ICON_EXIT",
          value = 159,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MODE_2D",
          value = 160,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MODE_3D",
          value = 161,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CUBE",
          value = 162,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CUBE_FACE_TOP",
          value = 163,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CUBE_FACE_LEFT",
          value = 164,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CUBE_FACE_FRONT",
          value = 165,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CUBE_FACE_BOTTOM",
          value = 166,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CUBE_FACE_RIGHT",
          value = 167,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CUBE_FACE_BACK",
          value = 168,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CAMERA",
          value = 169,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SPECIAL",
          value = 170,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LINK_NET",
          value = 171,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LINK_BOXES",
          value = 172,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LINK_MULTI",
          value = 173,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LINK",
          value = 174,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LINK_BROKE",
          value = 175,
          description = ""
        },
        {
          name = "RAYGUI_ICON_TEXT_NOTES",
          value = 176,
          description = ""
        },
        {
          name = "RAYGUI_ICON_NOTEBOOK",
          value = 177,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SUITCASE",
          value = 178,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SUITCASE_ZIP",
          value = 179,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MAILBOX",
          value = 180,
          description = ""
        },
        {
          name = "RAYGUI_ICON_MONITOR",
          value = 181,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PRINTER",
          value = 182,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PHOTO_CAMERA",
          value = 183,
          description = ""
        },
        {
          name = "RAYGUI_ICON_PHOTO_CAMERA_FLASH",
          value = 184,
          description = ""
        },
        {
          name = "RAYGUI_ICON_HOUSE",
          value = 185,
          description = ""
        },
        {
          name = "RAYGUI_ICON_HEART",
          value = 186,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CORNER",
          value = 187,
          description = ""
        },
        {
          name = "RAYGUI_ICON_VERTICAL_BARS",
          value = 188,
          description = ""
        },
        {
          name = "RAYGUI_ICON_VERTICAL_BARS_FILL",
          value = 189,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LIFE_BARS",
          value = 190,
          description = ""
        },
        {
          name = "RAYGUI_ICON_INFO",
          value = 191,
          description = ""
        },
        {
          name = "RAYGUI_ICON_CROSSLINE",
          value = 192,
          description = ""
        },
        {
          name = "RAYGUI_ICON_HELP",
          value = 193,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_ALPHA",
          value = 194,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_HOME",
          value = 195,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LAYERS_VISIBLE",
          value = 196,
          description = ""
        },
        {
          name = "RAYGUI_ICON_LAYERS",
          value = 197,
          description = ""
        },
        {
          name = "RAYGUI_ICON_WINDOW",
          value = 198,
          description = ""
        },
        {
          name = "RAYGUI_ICON_HIDPI",
          value = 199,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILETYPE_BINARY",
          value = 200,
          description = ""
        },
        {
          name = "RAYGUI_ICON_HEX",
          value = 201,
          description = ""
        },
        {
          name = "RAYGUI_ICON_SHIELD",
          value = 202,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FILE_NEW",
          value = 203,
          description = ""
        },
        {
          name = "RAYGUI_ICON_FOLDER_ADD",
          value = 204,
          description = ""
        },
        {
          name = "RAYGUI_ICON_205",
          value = 205,
          description = ""
        },
        {
          name = "RAYGUI_ICON_206",
          value = 206,
          description = ""
        },
        {
          name = "RAYGUI_ICON_207",
          value = 207,
          description = ""
        },
        {
          name = "RAYGUI_ICON_208",
          value = 208,
          description = ""
        },
        {
          name = "RAYGUI_ICON_209",
          value = 209,
          description = ""
        },
        {
          name = "RAYGUI_ICON_210",
          value = 210,
          description = ""
        },
        {
          name = "RAYGUI_ICON_211",
          value = 211,
          description = ""
        },
        {
          name = "RAYGUI_ICON_212",
          value = 212,
          description = ""
        },
        {
          name = "RAYGUI_ICON_213",
          value = 213,
          description = ""
        },
        {
          name = "RAYGUI_ICON_214",
          value = 214,
          description = ""
        },
        {
          name = "RAYGUI_ICON_215",
          value = 215,
          description = ""
        },
        {
          name = "RAYGUI_ICON_216",
          value = 216,
          description = ""
        },
        {
          name = "RAYGUI_ICON_217",
          value = 217,
          description = ""
        },
        {
          name = "RAYGUI_ICON_218",
          value = 218,
          description = ""
        },
        {
          name = "RAYGUI_ICON_219",
          value = 219,
          description = ""
        },
        {
          name = "RAYGUI_ICON_220",
          value = 220,
          description = ""
        },
        {
          name = "RAYGUI_ICON_221",
          value = 221,
          description = ""
        },
        {
          name = "RAYGUI_ICON_222",
          value = 222,
          description = ""
        },
        {
          name = "RAYGUI_ICON_223",
          value = 223,
          description = ""
        },
        {
          name = "RAYGUI_ICON_224",
          value = 224,
          description = ""
        },
        {
          name = "RAYGUI_ICON_225",
          value = 225,
          description = ""
        },
        {
          name = "RAYGUI_ICON_226",
          value = 226,
          description = ""
        },
        {
          name = "RAYGUI_ICON_227",
          value = 227,
          description = ""
        },
        {
          name = "RAYGUI_ICON_228",
          value = 228,
          description = ""
        },
        {
          name = "RAYGUI_ICON_229",
          value = 229,
          description = ""
        },
        {
          name = "RAYGUI_ICON_230",
          value = 230,
          description = ""
        },
        {
          name = "RAYGUI_ICON_231",
          value = 231,
          description = ""
        },
        {
          name = "RAYGUI_ICON_232",
          value = 232,
          description = ""
        },
        {
          name = "RAYGUI_ICON_233",
          value = 233,
          description = ""
        },
        {
          name = "RAYGUI_ICON_234",
          value = 234,
          description = ""
        },
        {
          name = "RAYGUI_ICON_235",
          value = 235,
          description = ""
        },
        {
          name = "RAYGUI_ICON_236",
          value = 236,
          description = ""
        },
        {
          name = "RAYGUI_ICON_237",
          value = 237,
          description = ""
        },
        {
          name = "RAYGUI_ICON_238",
          value = 238,
          description = ""
        },
        {
          name = "RAYGUI_ICON_239",
          value = 239,
          description = ""
        },
        {
          name = "RAYGUI_ICON_240",
          value = 240,
          description = ""
        },
        {
          name = "RAYGUI_ICON_241",
          value = 241,
          description = ""
        },
        {
          name = "RAYGUI_ICON_242",
          value = 242,
          description = ""
        },
        {
          name = "RAYGUI_ICON_243",
          value = 243,
          description = ""
        },
        {
          name = "RAYGUI_ICON_244",
          value = 244,
          description = ""
        },
        {
          name = "RAYGUI_ICON_245",
          value = 245,
          description = ""
        },
        {
          name = "RAYGUI_ICON_246",
          value = 246,
          description = ""
        },
        {
          name = "RAYGUI_ICON_247",
          value = 247,
          description = ""
        },
        {
          name = "RAYGUI_ICON_248",
          value = 248,
          description = ""
        },
        {
          name = "RAYGUI_ICON_249",
          value = 249,
          description = ""
        },
        {
          name = "RAYGUI_ICON_250",
          value = 250,
          description = ""
        },
        {
          name = "RAYGUI_ICON_251",
          value = 251,
          description = ""
        },
        {
          name = "RAYGUI_ICON_252",
          value = 252,
          description = ""
        },
        {
          name = "RAYGUI_ICON_253",
          value = 253,
          description = ""
        },
        {
          name = "RAYGUI_ICON_254",
          value = 254,
          description = ""
        },
        {
          name = "RAYGUI_ICON_255",
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
      returnType = "PI void"
    },
    {
      name = "GuiDisable",
      description = "Disable gui controls (global state)",
      returnType = "PI void"
    },
    {
      name = "GuiLock",
      description = "Lock gui controls (global state)",
      returnType = "PI void"
    },
    {
      name = "GuiUnlock",
      description = "Unlock gui controls (global state)",
      returnType = "PI void"
    },
    {
      name = "GuiIsLocked",
      description = "Check if gui is locked (global state)",
      returnType = "PI bool"
    },
    {
      name = "GuiFade",
      description = "Set gui controls alpha (global state), alpha goes from 0.0f to 1.0f",
      returnType = "PI void",
      params = {
        {type = "float", name = "alpha"}
      }
    },
    {
      name = "GuiSetState",
      description = "Set gui state (global state)",
      returnType = "PI void",
      params = {
        {type = "int", name = "state"}
      }
    },
    {
      name = "GuiGetState",
      description = "Get gui state (global state)",
      returnType = "PI int"
    },
    {
      name = "GuiSetFont",
      description = "Set gui custom font (global state)",
      returnType = "PI void",
      params = {
        {type = "Font", name = "font"}
      }
    },
    {
      name = "GuiGetFont",
      description = "Get gui custom font (global state)",
      returnType = "PI Font"
    },
    {
      name = "GuiSetStyle",
      description = "Set one style property",
      returnType = "PI void",
      params = {
        {type = "int", name = "control"},
        {type = "int", name = "property"},
        {type = "int", name = "value"}
      }
    },
    {
      name = "GuiGetStyle",
      description = "Get one style property",
      returnType = "PI int",
      params = {
        {type = "int", name = "control"},
        {type = "int", name = "property"}
      }
    },
    {
      name = "GuiWindowBox",
      description = "Window Box control, shows a window that can be closed",
      returnType = "PI bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"}
      }
    },
    {
      name = "GuiGroupBox",
      description = "Group Box control with text name",
      returnType = "PI void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiLine",
      description = "Line separator control, could contain text",
      returnType = "PI void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiPanel",
      description = "Panel control, useful to group controls",
      returnType = "PI void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiScrollPanel",
      description = "Scroll Panel control",
      returnType = "PI Rectangle",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Rectangle", name = "content"},
        {type = "Vector2 *", name = "scroll"}
      }
    },
    {
      name = "GuiLabel",
      description = "Label control, shows text",
      returnType = "PI void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiButton",
      description = "Button control, returns true when clicked",
      returnType = "PI bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiLabelButton",
      description = "Label button control, show true when clicked",
      returnType = "PI bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiToggle",
      description = "Toggle Button control, returns true when active",
      returnType = "PI bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "bool", name = "active"}
      }
    },
    {
      name = "GuiToggleGroup",
      description = "Toggle Group control, returns active toggle index",
      returnType = "PI int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiCheckBox",
      description = "Check Box control, returns true when active",
      returnType = "PI bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "bool", name = "checked"}
      }
    },
    {
      name = "GuiComboBox",
      description = "Combo Box control, returns selected item index",
      returnType = "PI int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiDropdownBox",
      description = "Dropdown Box control, returns selected item",
      returnType = "PI bool",
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
      returnType = "PI bool",
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
      returnType = "PI bool",
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
      returnType = "PI bool",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "char *", name = "text"},
        {type = "int", name = "textSize"},
        {type = "bool", name = "editMode"}
      }
    },
    {
      name = "GuiTextBoxMulti",
      description = "Text Box control with multiple lines",
      returnType = "PI bool",
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
      returnType = "PI float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiSliderBar",
      description = "Slider Bar control, returns selected value",
      returnType = "PI float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiProgressBar",
      description = "Progress Bar control, shows current progress value",
      returnType = "PI float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "textLeft"},
        {type = "const char *", name = "textRight"},
        {type = "float", name = "value"},
        {type = "float", name = "minValue"},
        {type = "float", name = "maxValue"}
      }
    },
    {
      name = "GuiStatusBar",
      description = "Status Bar control, shows info text",
      returnType = "PI void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiDummyRec",
      description = "Dummy control for placeholders",
      returnType = "PI void",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiGrid",
      description = "Grid control, returns mouse cell position",
      returnType = "PI Vector2",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "float", name = "spacing"},
        {type = "int", name = "subdivs"}
      }
    },
    {
      name = "GuiListView",
      description = "List View control, returns selected list item index",
      returnType = "PI int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "int *", name = "scrollIndex"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiListViewEx",
      description = "List View with extended parameters",
      returnType = "PI int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char **", name = "text"},
        {type = "int", name = "count"},
        {type = "int *", name = "focus"},
        {type = "int *", name = "scrollIndex"},
        {type = "int", name = "active"}
      }
    },
    {
      name = "GuiMessageBox",
      description = "Message Box control, displays a message",
      returnType = "PI int",
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
      returnType = "PI int",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "title"},
        {type = "const char *", name = "message"},
        {type = "const char *", name = "buttons"},
        {type = "char *", name = "text"},
        {type = "int", name = "textMaxSize"},
        {type = "int *", name = "secretViewActive"}
      }
    },
    {
      name = "GuiColorPicker",
      description = "Color Picker control (multiple color controls)",
      returnType = "PI Color",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GuiColorPanel",
      description = "Color Panel control",
      returnType = "PI Color",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GuiColorBarAlpha",
      description = "Color Bar Alpha control",
      returnType = "PI float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "float", name = "alpha"}
      }
    },
    {
      name = "GuiColorBarHue",
      description = "Color Bar Hue control",
      returnType = "PI float",
      params = {
        {type = "Rectangle", name = "bounds"},
        {type = "const char *", name = "text"},
        {type = "float", name = "value"}
      }
    },
    {
      name = "GuiLoadStyle",
      description = "Load style file over global style variable (.rgs)",
      returnType = "PI void",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "GuiLoadStyleDefault",
      description = "Load style default over global style",
      returnType = "PI void"
    },
    {
      name = "GuiIconText",
      description = "Get text with icon id prepended (if supported)",
      returnType = "PI const char *",
      params = {
        {type = "int", name = "iconId"},
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GuiDrawIcon",
      description = "",
      returnType = "PI void",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "pixelSize"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GuiGetIcons",
      description = "Get full icons data pointer",
      returnType = "PI unsigned int *"
    },
    {
      name = "GuiGetIconData",
      description = "Get icon bit data",
      returnType = "PI unsigned int *",
      params = {
        {type = "int", name = "iconId"}
      }
    },
    {
      name = "GuiSetIconData",
      description = "Set icon bit data",
      returnType = "PI void",
      params = {
        {type = "int", name = "iconId"},
        {type = "unsigned int *", name = "data"}
      }
    },
    {
      name = "GuiSetIconScale",
      description = "Set icon scale (1 by default)",
      returnType = "PI void",
      params = {
        {type = "unsigned int", name = "scale"}
      }
    },
    {
      name = "GuiSetIconPixel",
      description = "Set icon pixel value",
      returnType = "PI void",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "GuiClearIconPixel",
      description = "Clear icon pixel value",
      returnType = "PI void",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "GuiCheckIconPixel",
      description = "Check icon pixel value",
      returnType = "PI bool",
      params = {
        {type = "int", name = "iconId"},
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_NONE                     =", name = "0"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FOLDER_FILE_OPEN         =", name = "1"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_SAVE_CLASSIC        =", name = "2"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FOLDER_OPEN              =", name = "3"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FOLDER_SAVE              =", name = "4"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_OPEN                =", name = "5"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_SAVE                =", name = "6"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_EXPORT              =", name = "7"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_ADD                 =", name = "8"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_DELETE              =", name = "9"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_TEXT            =", name = "10"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_AUDIO           =", name = "11"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_IMAGE           =", name = "12"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_PLAY            =", name = "13"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_VIDEO           =", name = "14"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_INFO            =", name = "15"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_COPY                =", name = "16"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_CUT                 =", name = "17"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_PASTE               =", name = "18"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_HAND              =", name = "19"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_POINTER           =", name = "20"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_CLASSIC           =", name = "21"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PENCIL                   =", name = "22"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PENCIL_BIG               =", name = "23"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BRUSH_CLASSIC            =", name = "24"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BRUSH_PAINTER            =", name = "25"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_WATER_DROP               =", name = "26"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_COLOR_PICKER             =", name = "27"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_RUBBER                   =", name = "28"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_COLOR_BUCKET             =", name = "29"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TEXT_T                   =", name = "30"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TEXT_A                   =", name = "31"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SCALE                    =", name = "32"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_RESIZE                   =", name = "33"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILTER_POINT             =", name = "34"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILTER_BILINEAR          =", name = "35"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CROP                     =", name = "36"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CROP_ALPHA               =", name = "37"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SQUARE_TOGGLE            =", name = "38"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SYMMETRY                 =", name = "39"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SYMMETRY_HORIZONTAL      =", name = "40"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SYMMETRY_VERTICAL        =", name = "41"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LENS                     =", name = "42"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LENS_BIG                 =", name = "43"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_EYE_ON                   =", name = "44"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_EYE_OFF                  =", name = "45"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILTER_TOP               =", name = "46"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILTER                   =", name = "47"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET_POINT             =", name = "48"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET_SMALL             =", name = "49"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET_BIG               =", name = "50"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET_MOVE              =", name = "51"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_MOVE              =", name = "52"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_SCALE             =", name = "53"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_SCALE_RIGHT       =", name = "54"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_SCALE_LEFT        =", name = "55"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_UNDO                     =", name = "56"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_REDO                     =", name = "57"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_REREDO                   =", name = "58"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MUTATE                   =", name = "59"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ROTATE                   =", name = "60"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_REPEAT                   =", name = "61"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SHUFFLE                  =", name = "62"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_EMPTYBOX                 =", name = "63"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET                   =", name = "64"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET_SMALL_FILL        =", name = "65"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET_BIG_FILL          =", name = "66"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TARGET_MOVE_FILL         =", name = "67"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_MOVE_FILL         =", name = "68"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_SCALE_FILL        =", name = "69"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_SCALE_RIGHT_FILL  =", name = "70"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CURSOR_SCALE_LEFT_FILL   =", name = "71"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_UNDO_FILL                =", name = "72"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_REDO_FILL                =", name = "73"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_REREDO_FILL              =", name = "74"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MUTATE_FILL              =", name = "75"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ROTATE_FILL              =", name = "76"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_REPEAT_FILL              =", name = "77"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SHUFFLE_FILL             =", name = "78"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_EMPTYBOX_SMALL           =", name = "79"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX                      =", name = "80"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_TOP                  =", name = "81"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_TOP_RIGHT            =", name = "82"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_RIGHT                =", name = "83"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_BOTTOM_RIGHT         =", name = "84"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_BOTTOM               =", name = "85"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_BOTTOM_LEFT          =", name = "86"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_LEFT                 =", name = "87"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_TOP_LEFT             =", name = "88"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_CENTER               =", name = "89"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_CIRCLE_MASK          =", name = "90"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_POT                      =", name = "91"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ALPHA_MULTIPLY           =", name = "92"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ALPHA_CLEAR              =", name = "93"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_DITHERING                =", name = "94"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MIPMAPS                  =", name = "95"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_GRID                 =", name = "96"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_GRID                     =", name = "97"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_CORNERS_SMALL        =", name = "98"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_CORNERS_BIG          =", name = "99"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FOUR_BOXES               =", name = "100"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_GRID_FILL                =", name = "101"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_MULTISIZE            =", name = "102"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ZOOM_SMALL               =", name = "103"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ZOOM_MEDIUM              =", name = "104"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ZOOM_BIG                 =", name = "105"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ZOOM_ALL                 =", name = "106"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ZOOM_CENTER              =", name = "107"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_DOTS_SMALL           =", name = "108"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_DOTS_BIG             =", name = "109"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_CONCENTRIC           =", name = "110"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BOX_GRID_BIG             =", name = "111"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_OK_TICK                  =", name = "112"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CROSS                    =", name = "113"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_LEFT               =", name = "114"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_RIGHT              =", name = "115"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_DOWN               =", name = "116"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_UP                 =", name = "117"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_LEFT_FILL          =", name = "118"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_RIGHT_FILL         =", name = "119"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_DOWN_FILL          =", name = "120"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_ARROW_UP_FILL            =", name = "121"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_AUDIO                    =", name = "122"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FX                       =", name = "123"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_WAVE                     =", name = "124"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_WAVE_SINUS               =", name = "125"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_WAVE_SQUARE              =", name = "126"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_WAVE_TRIANGULAR          =", name = "127"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CROSS_SMALL              =", name = "128"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_PREVIOUS          =", name = "129"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_PLAY_BACK         =", name = "130"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_PLAY              =", name = "131"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_PAUSE             =", name = "132"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_STOP              =", name = "133"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_NEXT              =", name = "134"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_RECORD            =", name = "135"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MAGNET                   =", name = "136"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LOCK_CLOSE               =", name = "137"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LOCK_OPEN                =", name = "138"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CLOCK                    =", name = "139"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TOOLS                    =", name = "140"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_GEAR                     =", name = "141"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_GEAR_BIG                 =", name = "142"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_BIN                      =", name = "143"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_HAND_POINTER             =", name = "144"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LASER                    =", name = "145"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_COIN                     =", name = "146"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_EXPLOSION                =", name = "147"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_1UP                      =", name = "148"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER                   =", name = "149"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PLAYER_JUMP              =", name = "150"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_KEY                      =", name = "151"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_DEMON                    =", name = "152"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TEXT_POPUP               =", name = "153"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_GEAR_EX                  =", name = "154"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CRACK                    =", name = "155"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CRACK_POINTS             =", name = "156"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_STAR                     =", name = "157"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_DOOR                     =", name = "158"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_EXIT                     =", name = "159"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MODE_2D                  =", name = "160"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MODE_3D                  =", name = "161"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CUBE                     =", name = "162"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CUBE_FACE_TOP            =", name = "163"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CUBE_FACE_LEFT           =", name = "164"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CUBE_FACE_FRONT          =", name = "165"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CUBE_FACE_BOTTOM         =", name = "166"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CUBE_FACE_RIGHT          =", name = "167"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CUBE_FACE_BACK           =", name = "168"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CAMERA                   =", name = "169"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SPECIAL                  =", name = "170"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LINK_NET                 =", name = "171"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LINK_BOXES               =", name = "172"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LINK_MULTI               =", name = "173"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LINK                     =", name = "174"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LINK_BROKE               =", name = "175"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_TEXT_NOTES               =", name = "176"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_NOTEBOOK                 =", name = "177"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SUITCASE                 =", name = "178"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SUITCASE_ZIP             =", name = "179"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MAILBOX                  =", name = "180"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_MONITOR                  =", name = "181"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PRINTER                  =", name = "182"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PHOTO_CAMERA             =", name = "183"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_PHOTO_CAMERA_FLASH       =", name = "184"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_HOUSE                    =", name = "185"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_HEART                    =", name = "186"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CORNER                   =", name = "187"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_VERTICAL_BARS            =", name = "188"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_VERTICAL_BARS_FILL       =", name = "189"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LIFE_BARS                =", name = "190"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_INFO                     =", name = "191"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_CROSSLINE                =", name = "192"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_HELP                     =", name = "193"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_ALPHA           =", name = "194"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_HOME            =", name = "195"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LAYERS_VISIBLE           =", name = "196"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_LAYERS                   =", name = "197"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_WINDOW                   =", name = "198"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_HIDPI                    =", name = "199"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILETYPE_BINARY          =", name = "200"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_HEX                      =", name = "201"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_SHIELD                   =", name = "202"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FILE_NEW                 =", name = "203"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_FOLDER_ADD               =", name = "204"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_205                      =", name = "205"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_206                      =", name = "206"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_207                      =", name = "207"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_208                      =", name = "208"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_209                      =", name = "209"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_210                      =", name = "210"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_211                      =", name = "211"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_212                      =", name = "212"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_213                      =", name = "213"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_214                      =", name = "214"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_215                      =", name = "215"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_216                      =", name = "216"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_217                      =", name = "217"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_218                      =", name = "218"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_219                      =", name = "219"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_220                      =", name = "220"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_221                      =", name = "221"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_222                      =", name = "222"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_223                      =", name = "223"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_224                      =", name = "224"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_225                      =", name = "225"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_226                      =", name = "226"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_227                      =", name = "227"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_228                      =", name = "228"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_229                      =", name = "229"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_230                      =", name = "230"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_231                      =", name = "231"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_232                      =", name = "232"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_233                      =", name = "233"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_234                      =", name = "234"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_235                      =", name = "235"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_236                      =", name = "236"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_237                      =", name = "237"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_238                      =", name = "238"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_239                      =", name = "239"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_240                      =", name = "240"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_241                      =", name = "241"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_242                      =", name = "242"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_243                      =", name = "243"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_244                      =", name = "244"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_245                      =", name = "245"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_246                      =", name = "246"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_247                      =", name = "247"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_248                      =", name = "248"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_249                      =", name = "249"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_250                      =", name = "250"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_251                      =", name = "251"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_252                      =", name = "252"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_253                      =", name = "253"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_254                      =", name = "254"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "RAYGUI_ICON_255                      =", name = "255"}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "", name = ""}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "", name = ""}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "", name = ""}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "", name = ""}
      }
    },
    {
      name = "",
      description = "",
      returnType = "",
      params = {
        {type = "", name = ""}
      }
    }
  }
}
