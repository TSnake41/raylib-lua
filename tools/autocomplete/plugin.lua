---@meta [raylib-lua]
---@diagnostic disable
---raylib-lua binding
rl = {}
---Internal raylua stuff
raylua = {}
---@type string
---raylib-lua version string
raylua.version = ""
---Start a repl, and block until repl is active.
function raylua.repl() end
---@type function|nil
---@return string|nil content, string|nil error
---@param path string
---Load an internal payload file.
---Only exists in raylua_e or raylua_r 
function raylua.loadfile(path) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Linear
function rl.EaseLinearNone(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Linear In
function rl.EaseLinearIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Linear Out
function rl.EaseLinearOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Linear In Out
function rl.EaseLinearInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Sine In
function rl.EaseSineIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Sine Out
function rl.EaseSineOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Sine Out
function rl.EaseSineInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Circular In
function rl.EaseCircIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Circular Out
function rl.EaseCircOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Circular In Out
function rl.EaseCircInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Cubic In
function rl.EaseCubicIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Cubic Out
function rl.EaseCubicOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Cubic In Out
function rl.EaseCubicInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Quadratic In
function rl.EaseQuadIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Quadratic Out
function rl.EaseQuadOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Quadratic In Out
function rl.EaseQuadInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Exponential In
function rl.EaseExpoIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Exponential Out
function rl.EaseExpoOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Exponential In Out
function rl.EaseExpoInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Back In
function rl.EaseBackIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Back Out
function rl.EaseBackOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Back In Out
function rl.EaseBackInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Bounce Out
function rl.EaseBounceOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Bounce In
function rl.EaseBounceIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Bounce In Out
function rl.EaseBounceInOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Elastic In
function rl.EaseElasticIn(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Elastic Out
function rl.EaseElasticOut(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
---Ease: Elastic In Out
function rl.EaseElasticInOut(t,b,c,d) end
---@class Vector2 @ Vector2 type
---@alias Vector2_ptr Vector2
---@alias Vector2_ptr_ptr Vector2
---@field x number
---@field y number
---Constructed using `rl.new("Vector2", ...)`
local Vector2 = {}
---@class Matrix2x2 @ Matrix2x2 type (used for polygon shape rotation matrix)
---@alias Matrix2x2_ptr Matrix2x2
---@alias Matrix2x2_ptr_ptr Matrix2x2
---@field m00 number
---@field m01 number
---@field m10 number
---@field m11 number
---Constructed using `rl.new("Matrix2x2", ...)`
local Matrix2x2 = {}
---@class PhysicsVertexData
---@alias PhysicsVertexData_ptr PhysicsVertexData
---@alias PhysicsVertexData_ptr_ptr PhysicsVertexData
---@field vertexCount number # Vertex count (positions and normals)
---@field positions Vector2[PHYSAC_MAX_VERTICES] # Vertex positions vectors
---@field normals Vector2[PHYSAC_MAX_VERTICES] # Vertex normals vectors
---Constructed using `rl.new("PhysicsVertexData", ...)`
local PhysicsVertexData = {}
---@class PhysicsShape
---@alias PhysicsShape_ptr PhysicsShape
---@alias PhysicsShape_ptr_ptr PhysicsShape
---@field type PhysicsShapeType # Shape type (circle or polygon)
---@field body PhysicsBody # Shape physics body data pointer
---@field vertexData PhysicsVertexData # Shape vertices data (used for polygon shapes)
---@field radius number # Shape radius (used for circle shapes)
---@field transform Matrix2x2 # Vertices transform matrix 2x2
---Constructed using `rl.new("PhysicsShape", ...)`
local PhysicsShape = {}
---@class PhysicsBodyData
---@alias PhysicsBodyData_ptr PhysicsBodyData
---@alias PhysicsBodyData_ptr_ptr PhysicsBodyData
---@field id number # Unique identifier
---@field enabled bool # Enabled dynamics state (collisions are calculated anyway)
---@field position Vector2 # Physics body shape pivot
---@field velocity Vector2 # Current linear velocity applied to position
---@field force Vector2 # Current linear force (reset to 0 every step)
---@field angularVelocity number # Current angular velocity applied to orient
---@field torque number # Current angular force (reset to 0 every step)
---@field orient number # Rotation in radians
---@field inertia number # Moment of inertia
---@field inverseInertia number # Inverse value of inertia
---@field mass number # Physics body mass
---@field inverseMass number # Inverse value of mass
---@field staticFriction number # Friction when the body has not movement (0 to 1)
---@field dynamicFriction number # Friction when the body has movement (0 to 1)
---@field restitution number # Restitution coefficient of the body (0 to 1)
---@field useGravity bool # Apply gravity force to dynamics
---@field isGrounded bool # Physics grounded on other body state
---@field freezeOrient bool # Physics rotation constraint
---@field shape PhysicsShape # Physics body shape information (type, radius, vertices, transform)
---Constructed using `rl.new("PhysicsBodyData", ...)`
local PhysicsBodyData = {}
---@class PhysicsManifoldData
---@alias PhysicsManifoldData_ptr PhysicsManifoldData
---@alias PhysicsManifoldData_ptr_ptr PhysicsManifoldData
---@field id number # Unique identifier
---@field bodyA PhysicsBody # Manifold first physics body reference
---@field bodyB PhysicsBody # Manifold second physics body reference
---@field penetration number # Depth of penetration from collision
---@field normal Vector2 # Normal direction vector from 'a' to 'b'
---@field contacts Vector2[2] # Points of contact during collision
---@field contactsCount number # Current collision number of contacts
---@field restitution number # Mixed restitution during collision
---@field dynamicFriction number # Mixed dynamic friction during collision
---@field staticFriction number # Mixed static friction during collision
---Constructed using `rl.new("PhysicsManifoldData", ...)`
local PhysicsManifoldData = {}
---Initializes physics system
function rl.InitPhysics() end
---Update physics system
function rl.UpdatePhysics() end
---Reset physics system (global variables)
function rl.ResetPhysics() end
---Close physics system and unload used memory
function rl.ClosePhysics() end
---@param delta number
---Sets physics fixed time step in milliseconds. 1.666666 by default
function rl.SetPhysicsTimeStep(delta) end
---@param x number
---@param y number
---Sets physics global gravity force
function rl.SetPhysicsGravity(x,y) end
---@param pos Vector2
---@param radius number
---@param density number
---@return PhysicsBody
---Creates a new circle physics body with generic parameters
function rl.CreatePhysicsBodyCircle(pos,radius,density) end
---@param pos Vector2
---@param width number
---@param height number
---@param density number
---@return PhysicsBody
---Creates a new rectangle physics body with generic parameters
function rl.CreatePhysicsBodyRectangle(pos,width,height,density) end
---@param pos Vector2
---@param radius number
---@param sides number
---@param density number
---@return PhysicsBody
---Creates a new polygon physics body with generic parameters
function rl.CreatePhysicsBodyPolygon(pos,radius,sides,density) end
---@param body PhysicsBody
---Destroy a physics body
function rl.DestroyPhysicsBody(body) end
---@param body PhysicsBody
---@param force Vector2
---Adds a force to a physics body
function rl.PhysicsAddForce(body,force) end
---@param body PhysicsBody
---@param amount number
---Adds an angular force to a physics body
function rl.PhysicsAddTorque(body,amount) end
---@param body PhysicsBody
---@param position Vector2
---@param force number
---Shatters a polygon shape physics body to little physics bodies with explosion force
function rl.PhysicsShatter(body,position,force) end
---@param body PhysicsBody
---@param radians number
---Sets physics body shape transform based on radians parameter
function rl.SetPhysicsBodyRotation(body,radians) end
---@param index number
---@return PhysicsBody
---Returns a physics body of the bodies pool at a specific index
function rl.GetPhysicsBody(index) end
---@return number
---Returns the current amount of created physics bodies
function rl.GetPhysicsBodiesCount() end
---@param index number
---@return number
---Returns the physics body shape type (PHYSICS_CIRCLE or PHYSICS_POLYGON)
function rl.GetPhysicsShapeType(index) end
---@param index number
---@return number
---Returns the amount of vertices of a physics body shape
function rl.GetPhysicsShapeVerticesCount(index) end
---@param body PhysicsBody
---@param vertex number
---@return Vector2
---Returns transformed position of a body shape (body position + vertex transformed position)
function rl.GetPhysicsShapeVertex(body,vertex) end
---@alias GuiControlState
---| 'GUI_STATE_NORMAL'
---| 'GUI_STATE_FOCUSED'
---| 'GUI_STATE_PRESSED'
---| 'GUI_STATE_DISABLED'
---Gui control state

rl.GUI_STATE_NORMAL = 0
rl.GUI_STATE_FOCUSED = 1
rl.GUI_STATE_PRESSED = 2
rl.GUI_STATE_DISABLED = 3
---@alias GuiTextAlignment
---| 'GUI_TEXT_ALIGN_LEFT'
---| 'GUI_TEXT_ALIGN_CENTER'
---| 'GUI_TEXT_ALIGN_RIGHT'
---Gui control text alignment

rl.GUI_TEXT_ALIGN_LEFT = 0
rl.GUI_TEXT_ALIGN_CENTER = 1
rl.GUI_TEXT_ALIGN_RIGHT = 2
---@alias GuiControl
---| 'DEFAULT'
---| 'LABEL'
---| 'BUTTON'
---| 'TOGGLE'
---| 'SLIDER'
---| 'PROGRESSBAR'
---| 'CHECKBOX'
---| 'COMBOBOX'
---| 'DROPDOWNBOX'
---| 'TEXTBOX'
---| 'VALUEBOX'
---| 'SPINNER'
---| 'LISTVIEW'
---| 'COLORPICKER'
---| 'SCROLLBAR'
---| 'STATUSBAR'
---Gui controls

rl.DEFAULT = 0
---Used also for: LABELBUTTON
rl.LABEL = 1
rl.BUTTON = 2
---Used also for: TOGGLEGROUP
rl.TOGGLE = 3
---Used also for: SLIDERBAR
rl.SLIDER = 4
rl.PROGRESSBAR = 5
rl.CHECKBOX = 6
rl.COMBOBOX = 7
rl.DROPDOWNBOX = 8
---Used also for: TEXTBOXMULTI
rl.TEXTBOX = 9
rl.VALUEBOX = 10
---Uses: BUTTON, VALUEBOX
rl.SPINNER = 11
rl.LISTVIEW = 12
rl.COLORPICKER = 13
rl.SCROLLBAR = 14
rl.STATUSBAR = 15
---@alias GuiControlProperty
---| 'BORDER_COLOR_NORMAL'
---| 'BASE_COLOR_NORMAL'
---| 'TEXT_COLOR_NORMAL'
---| 'BORDER_COLOR_FOCUSED'
---| 'BASE_COLOR_FOCUSED'
---| 'TEXT_COLOR_FOCUSED'
---| 'BORDER_COLOR_PRESSED'
---| 'BASE_COLOR_PRESSED'
---| 'TEXT_COLOR_PRESSED'
---| 'BORDER_COLOR_DISABLED'
---| 'BASE_COLOR_DISABLED'
---| 'TEXT_COLOR_DISABLED'
---| 'BORDER_WIDTH'
---| 'TEXT_PADDING'
---| 'TEXT_ALIGNMENT'
---| 'RESERVED'
---Gui base properties for every control

rl.BORDER_COLOR_NORMAL = 0
rl.BASE_COLOR_NORMAL = 1
rl.TEXT_COLOR_NORMAL = 2
rl.BORDER_COLOR_FOCUSED = 3
rl.BASE_COLOR_FOCUSED = 4
rl.TEXT_COLOR_FOCUSED = 5
rl.BORDER_COLOR_PRESSED = 6
rl.BASE_COLOR_PRESSED = 7
rl.TEXT_COLOR_PRESSED = 8
rl.BORDER_COLOR_DISABLED = 9
rl.BASE_COLOR_DISABLED = 10
rl.TEXT_COLOR_DISABLED = 11
rl.BORDER_WIDTH = 12
rl.TEXT_PADDING = 13
rl.TEXT_ALIGNMENT = 14
rl.RESERVED = 15
---@alias GuiDefaultProperty
---| 'TEXT_SIZE'
---| 'TEXT_SPACING'
---| 'LINE_COLOR'
---| 'BACKGROUND_COLOR'
---DEFAULT extended properties

---Text size (glyphs max height)
rl.TEXT_SIZE = 16
---Text spacing between glyphs
rl.TEXT_SPACING = 17
---Line control color
rl.LINE_COLOR = 18
---Background color
rl.BACKGROUND_COLOR = 19
---@alias GuiToggleProperty
---| 'GROUP_PADDING'
---Toggle/ToggleGroup

---ToggleGroup separation between toggles
rl.GROUP_PADDING = 16
---@alias GuiSliderProperty
---| 'SLIDER_WIDTH'
---| 'SLIDER_PADDING'
---Slider/SliderBar

---Slider size of internal bar
rl.SLIDER_WIDTH = 16
---Slider/SliderBar internal bar padding
rl.SLIDER_PADDING = 17
---@alias GuiProgressBarProperty
---| 'PROGRESS_PADDING'
---ProgressBar

---ProgressBar internal padding
rl.PROGRESS_PADDING = 16
---@alias GuiScrollBarProperty
---| 'ARROWS_SIZE'
---| 'ARROWS_VISIBLE'
---| 'SCROLL_SLIDER_PADDING'
---| 'SCROLL_SLIDER_SIZE'
---| 'SCROLL_PADDING'
---| 'SCROLL_SPEED'
---ScrollBar

rl.ARROWS_SIZE = 16
rl.ARROWS_VISIBLE = 17
---(SLIDERBAR, SLIDER_PADDING)
rl.SCROLL_SLIDER_PADDING = 18
rl.SCROLL_SLIDER_SIZE = 19
rl.SCROLL_PADDING = 20
rl.SCROLL_SPEED = 21
---@alias GuiCheckBoxProperty
---| 'CHECK_PADDING'
---CheckBox

---CheckBox internal check padding
rl.CHECK_PADDING = 16
---@alias GuiComboBoxProperty
---| 'COMBO_BUTTON_WIDTH'
---| 'COMBO_BUTTON_SPACING'
---ComboBox

---ComboBox right button width
rl.COMBO_BUTTON_WIDTH = 16
---ComboBox button separation
rl.COMBO_BUTTON_SPACING = 17
---@alias GuiDropdownBoxProperty
---| 'ARROW_PADDING'
---| 'DROPDOWN_ITEMS_SPACING'
---DropdownBox

---DropdownBox arrow separation from border and items
rl.ARROW_PADDING = 16
---DropdownBox items separation
rl.DROPDOWN_ITEMS_SPACING = 17
---@alias GuiTextBoxProperty
---| 'TEXT_INNER_PADDING'
---| 'TEXT_LINES_SPACING'
---TextBox/TextBoxMulti/ValueBox/Spinner

---TextBox/TextBoxMulti/ValueBox/Spinner inner text padding
rl.TEXT_INNER_PADDING = 16
---TextBoxMulti lines separation
rl.TEXT_LINES_SPACING = 17
---@alias GuiSpinnerProperty
---| 'SPIN_BUTTON_WIDTH'
---| 'SPIN_BUTTON_SPACING'
---Spinner

---Spinner left/right buttons width
rl.SPIN_BUTTON_WIDTH = 16
---Spinner buttons separation
rl.SPIN_BUTTON_SPACING = 17
---@alias GuiListViewProperty
---| 'LIST_ITEMS_HEIGHT'
---| 'LIST_ITEMS_SPACING'
---| 'SCROLLBAR_WIDTH'
---| 'SCROLLBAR_SIDE'
---ListView

---ListView items height
rl.LIST_ITEMS_HEIGHT = 16
---ListView items separation
rl.LIST_ITEMS_SPACING = 17
---ListView scrollbar size (usually width)
rl.SCROLLBAR_WIDTH = 18
---ListView scrollbar side (0-left, 1-right)
rl.SCROLLBAR_SIDE = 19
---@alias GuiColorPickerProperty
---| 'COLOR_SELECTOR_SIZE'
---| 'HUEBAR_WIDTH'
---| 'HUEBAR_PADDING'
---| 'HUEBAR_SELECTOR_HEIGHT'
---| 'HUEBAR_SELECTOR_OVERFLOW'
---ColorPicker

rl.COLOR_SELECTOR_SIZE = 16
---ColorPicker right hue bar width
rl.HUEBAR_WIDTH = 17
---ColorPicker right hue bar separation from panel
rl.HUEBAR_PADDING = 18
---ColorPicker right hue bar selector height
rl.HUEBAR_SELECTOR_HEIGHT = 19
---ColorPicker right hue bar selector overflow
rl.HUEBAR_SELECTOR_OVERFLOW = 20
---@alias guiIconName
---| 'RAYGUI_ICON_NONE'
---| 'RAYGUI_ICON_FOLDER_FILE_OPEN'
---| 'RAYGUI_ICON_FILE_SAVE_CLASSIC'
---| 'RAYGUI_ICON_FOLDER_OPEN'
---| 'RAYGUI_ICON_FOLDER_SAVE'
---| 'RAYGUI_ICON_FILE_OPEN'
---| 'RAYGUI_ICON_FILE_SAVE'
---| 'RAYGUI_ICON_FILE_EXPORT'
---| 'RAYGUI_ICON_FILE_ADD'
---| 'RAYGUI_ICON_FILE_DELETE'
---| 'RAYGUI_ICON_FILETYPE_TEXT'
---| 'RAYGUI_ICON_FILETYPE_AUDIO'
---| 'RAYGUI_ICON_FILETYPE_IMAGE'
---| 'RAYGUI_ICON_FILETYPE_PLAY'
---| 'RAYGUI_ICON_FILETYPE_VIDEO'
---| 'RAYGUI_ICON_FILETYPE_INFO'
---| 'RAYGUI_ICON_FILE_COPY'
---| 'RAYGUI_ICON_FILE_CUT'
---| 'RAYGUI_ICON_FILE_PASTE'
---| 'RAYGUI_ICON_CURSOR_HAND'
---| 'RAYGUI_ICON_CURSOR_POINTER'
---| 'RAYGUI_ICON_CURSOR_CLASSIC'
---| 'RAYGUI_ICON_PENCIL'
---| 'RAYGUI_ICON_PENCIL_BIG'
---| 'RAYGUI_ICON_BRUSH_CLASSIC'
---| 'RAYGUI_ICON_BRUSH_PAINTER'
---| 'RAYGUI_ICON_WATER_DROP'
---| 'RAYGUI_ICON_COLOR_PICKER'
---| 'RAYGUI_ICON_RUBBER'
---| 'RAYGUI_ICON_COLOR_BUCKET'
---| 'RAYGUI_ICON_TEXT_T'
---| 'RAYGUI_ICON_TEXT_A'
---| 'RAYGUI_ICON_SCALE'
---| 'RAYGUI_ICON_RESIZE'
---| 'RAYGUI_ICON_FILTER_POINT'
---| 'RAYGUI_ICON_FILTER_BILINEAR'
---| 'RAYGUI_ICON_CROP'
---| 'RAYGUI_ICON_CROP_ALPHA'
---| 'RAYGUI_ICON_SQUARE_TOGGLE'
---| 'RAYGUI_ICON_SYMMETRY'
---| 'RAYGUI_ICON_SYMMETRY_HORIZONTAL'
---| 'RAYGUI_ICON_SYMMETRY_VERTICAL'
---| 'RAYGUI_ICON_LENS'
---| 'RAYGUI_ICON_LENS_BIG'
---| 'RAYGUI_ICON_EYE_ON'
---| 'RAYGUI_ICON_EYE_OFF'
---| 'RAYGUI_ICON_FILTER_TOP'
---| 'RAYGUI_ICON_FILTER'
---| 'RAYGUI_ICON_TARGET_POINT'
---| 'RAYGUI_ICON_TARGET_SMALL'
---| 'RAYGUI_ICON_TARGET_BIG'
---| 'RAYGUI_ICON_TARGET_MOVE'
---| 'RAYGUI_ICON_CURSOR_MOVE'
---| 'RAYGUI_ICON_CURSOR_SCALE'
---| 'RAYGUI_ICON_CURSOR_SCALE_RIGHT'
---| 'RAYGUI_ICON_CURSOR_SCALE_LEFT'
---| 'RAYGUI_ICON_UNDO'
---| 'RAYGUI_ICON_REDO'
---| 'RAYGUI_ICON_REREDO'
---| 'RAYGUI_ICON_MUTATE'
---| 'RAYGUI_ICON_ROTATE'
---| 'RAYGUI_ICON_REPEAT'
---| 'RAYGUI_ICON_SHUFFLE'
---| 'RAYGUI_ICON_EMPTYBOX'
---| 'RAYGUI_ICON_TARGET'
---| 'RAYGUI_ICON_TARGET_SMALL_FILL'
---| 'RAYGUI_ICON_TARGET_BIG_FILL'
---| 'RAYGUI_ICON_TARGET_MOVE_FILL'
---| 'RAYGUI_ICON_CURSOR_MOVE_FILL'
---| 'RAYGUI_ICON_CURSOR_SCALE_FILL'
---| 'RAYGUI_ICON_CURSOR_SCALE_RIGHT_FILL'
---| 'RAYGUI_ICON_CURSOR_SCALE_LEFT_FILL'
---| 'RAYGUI_ICON_UNDO_FILL'
---| 'RAYGUI_ICON_REDO_FILL'
---| 'RAYGUI_ICON_REREDO_FILL'
---| 'RAYGUI_ICON_MUTATE_FILL'
---| 'RAYGUI_ICON_ROTATE_FILL'
---| 'RAYGUI_ICON_REPEAT_FILL'
---| 'RAYGUI_ICON_SHUFFLE_FILL'
---| 'RAYGUI_ICON_EMPTYBOX_SMALL'
---| 'RAYGUI_ICON_BOX'
---| 'RAYGUI_ICON_BOX_TOP'
---| 'RAYGUI_ICON_BOX_TOP_RIGHT'
---| 'RAYGUI_ICON_BOX_RIGHT'
---| 'RAYGUI_ICON_BOX_BOTTOM_RIGHT'
---| 'RAYGUI_ICON_BOX_BOTTOM'
---| 'RAYGUI_ICON_BOX_BOTTOM_LEFT'
---| 'RAYGUI_ICON_BOX_LEFT'
---| 'RAYGUI_ICON_BOX_TOP_LEFT'
---| 'RAYGUI_ICON_BOX_CENTER'
---| 'RAYGUI_ICON_BOX_CIRCLE_MASK'
---| 'RAYGUI_ICON_POT'
---| 'RAYGUI_ICON_ALPHA_MULTIPLY'
---| 'RAYGUI_ICON_ALPHA_CLEAR'
---| 'RAYGUI_ICON_DITHERING'
---| 'RAYGUI_ICON_MIPMAPS'
---| 'RAYGUI_ICON_BOX_GRID'
---| 'RAYGUI_ICON_GRID'
---| 'RAYGUI_ICON_BOX_CORNERS_SMALL'
---| 'RAYGUI_ICON_BOX_CORNERS_BIG'
---| 'RAYGUI_ICON_FOUR_BOXES'
---| 'RAYGUI_ICON_GRID_FILL'
---| 'RAYGUI_ICON_BOX_MULTISIZE'
---| 'RAYGUI_ICON_ZOOM_SMALL'
---| 'RAYGUI_ICON_ZOOM_MEDIUM'
---| 'RAYGUI_ICON_ZOOM_BIG'
---| 'RAYGUI_ICON_ZOOM_ALL'
---| 'RAYGUI_ICON_ZOOM_CENTER'
---| 'RAYGUI_ICON_BOX_DOTS_SMALL'
---| 'RAYGUI_ICON_BOX_DOTS_BIG'
---| 'RAYGUI_ICON_BOX_CONCENTRIC'
---| 'RAYGUI_ICON_BOX_GRID_BIG'
---| 'RAYGUI_ICON_OK_TICK'
---| 'RAYGUI_ICON_CROSS'
---| 'RAYGUI_ICON_ARROW_LEFT'
---| 'RAYGUI_ICON_ARROW_RIGHT'
---| 'RAYGUI_ICON_ARROW_DOWN'
---| 'RAYGUI_ICON_ARROW_UP'
---| 'RAYGUI_ICON_ARROW_LEFT_FILL'
---| 'RAYGUI_ICON_ARROW_RIGHT_FILL'
---| 'RAYGUI_ICON_ARROW_DOWN_FILL'
---| 'RAYGUI_ICON_ARROW_UP_FILL'
---| 'RAYGUI_ICON_AUDIO'
---| 'RAYGUI_ICON_FX'
---| 'RAYGUI_ICON_WAVE'
---| 'RAYGUI_ICON_WAVE_SINUS'
---| 'RAYGUI_ICON_WAVE_SQUARE'
---| 'RAYGUI_ICON_WAVE_TRIANGULAR'
---| 'RAYGUI_ICON_CROSS_SMALL'
---| 'RAYGUI_ICON_PLAYER_PREVIOUS'
---| 'RAYGUI_ICON_PLAYER_PLAY_BACK'
---| 'RAYGUI_ICON_PLAYER_PLAY'
---| 'RAYGUI_ICON_PLAYER_PAUSE'
---| 'RAYGUI_ICON_PLAYER_STOP'
---| 'RAYGUI_ICON_PLAYER_NEXT'
---| 'RAYGUI_ICON_PLAYER_RECORD'
---| 'RAYGUI_ICON_MAGNET'
---| 'RAYGUI_ICON_LOCK_CLOSE'
---| 'RAYGUI_ICON_LOCK_OPEN'
---| 'RAYGUI_ICON_CLOCK'
---| 'RAYGUI_ICON_TOOLS'
---| 'RAYGUI_ICON_GEAR'
---| 'RAYGUI_ICON_GEAR_BIG'
---| 'RAYGUI_ICON_BIN'
---| 'RAYGUI_ICON_HAND_POINTER'
---| 'RAYGUI_ICON_LASER'
---| 'RAYGUI_ICON_COIN'
---| 'RAYGUI_ICON_EXPLOSION'
---| 'RAYGUI_ICON_1UP'
---| 'RAYGUI_ICON_PLAYER'
---| 'RAYGUI_ICON_PLAYER_JUMP'
---| 'RAYGUI_ICON_KEY'
---| 'RAYGUI_ICON_DEMON'
---| 'RAYGUI_ICON_TEXT_POPUP'
---| 'RAYGUI_ICON_GEAR_EX'
---| 'RAYGUI_ICON_CRACK'
---| 'RAYGUI_ICON_CRACK_POINTS'
---| 'RAYGUI_ICON_STAR'
---| 'RAYGUI_ICON_DOOR'
---| 'RAYGUI_ICON_EXIT'
---| 'RAYGUI_ICON_MODE_2D'
---| 'RAYGUI_ICON_MODE_3D'
---| 'RAYGUI_ICON_CUBE'
---| 'RAYGUI_ICON_CUBE_FACE_TOP'
---| 'RAYGUI_ICON_CUBE_FACE_LEFT'
---| 'RAYGUI_ICON_CUBE_FACE_FRONT'
---| 'RAYGUI_ICON_CUBE_FACE_BOTTOM'
---| 'RAYGUI_ICON_CUBE_FACE_RIGHT'
---| 'RAYGUI_ICON_CUBE_FACE_BACK'
---| 'RAYGUI_ICON_CAMERA'
---| 'RAYGUI_ICON_SPECIAL'
---| 'RAYGUI_ICON_LINK_NET'
---| 'RAYGUI_ICON_LINK_BOXES'
---| 'RAYGUI_ICON_LINK_MULTI'
---| 'RAYGUI_ICON_LINK'
---| 'RAYGUI_ICON_LINK_BROKE'
---| 'RAYGUI_ICON_TEXT_NOTES'
---| 'RAYGUI_ICON_NOTEBOOK'
---| 'RAYGUI_ICON_SUITCASE'
---| 'RAYGUI_ICON_SUITCASE_ZIP'
---| 'RAYGUI_ICON_MAILBOX'
---| 'RAYGUI_ICON_MONITOR'
---| 'RAYGUI_ICON_PRINTER'
---| 'RAYGUI_ICON_PHOTO_CAMERA'
---| 'RAYGUI_ICON_PHOTO_CAMERA_FLASH'
---| 'RAYGUI_ICON_HOUSE'
---| 'RAYGUI_ICON_HEART'
---| 'RAYGUI_ICON_CORNER'
---| 'RAYGUI_ICON_VERTICAL_BARS'
---| 'RAYGUI_ICON_VERTICAL_BARS_FILL'
---| 'RAYGUI_ICON_LIFE_BARS'
---| 'RAYGUI_ICON_INFO'
---| 'RAYGUI_ICON_CROSSLINE'
---| 'RAYGUI_ICON_HELP'
---| 'RAYGUI_ICON_FILETYPE_ALPHA'
---| 'RAYGUI_ICON_FILETYPE_HOME'
---| 'RAYGUI_ICON_LAYERS_VISIBLE'
---| 'RAYGUI_ICON_LAYERS'
---| 'RAYGUI_ICON_WINDOW'
---| 'RAYGUI_ICON_HIDPI'
---| 'RAYGUI_ICON_FILETYPE_BINARY'
---| 'RAYGUI_ICON_HEX'
---| 'RAYGUI_ICON_SHIELD'
---| 'RAYGUI_ICON_FILE_NEW'
---| 'RAYGUI_ICON_FOLDER_ADD'
---| 'RAYGUI_ICON_205'
---| 'RAYGUI_ICON_206'
---| 'RAYGUI_ICON_207'
---| 'RAYGUI_ICON_208'
---| 'RAYGUI_ICON_209'
---| 'RAYGUI_ICON_210'
---| 'RAYGUI_ICON_211'
---| 'RAYGUI_ICON_212'
---| 'RAYGUI_ICON_213'
---| 'RAYGUI_ICON_214'
---| 'RAYGUI_ICON_215'
---| 'RAYGUI_ICON_216'
---| 'RAYGUI_ICON_217'
---| 'RAYGUI_ICON_218'
---| 'RAYGUI_ICON_219'
---| 'RAYGUI_ICON_220'
---| 'RAYGUI_ICON_221'
---| 'RAYGUI_ICON_222'
---| 'RAYGUI_ICON_223'
---| 'RAYGUI_ICON_224'
---| 'RAYGUI_ICON_225'
---| 'RAYGUI_ICON_226'
---| 'RAYGUI_ICON_227'
---| 'RAYGUI_ICON_228'
---| 'RAYGUI_ICON_229'
---| 'RAYGUI_ICON_230'
---| 'RAYGUI_ICON_231'
---| 'RAYGUI_ICON_232'
---| 'RAYGUI_ICON_233'
---| 'RAYGUI_ICON_234'
---| 'RAYGUI_ICON_235'
---| 'RAYGUI_ICON_236'
---| 'RAYGUI_ICON_237'
---| 'RAYGUI_ICON_238'
---| 'RAYGUI_ICON_239'
---| 'RAYGUI_ICON_240'
---| 'RAYGUI_ICON_241'
---| 'RAYGUI_ICON_242'
---| 'RAYGUI_ICON_243'
---| 'RAYGUI_ICON_244'
---| 'RAYGUI_ICON_245'
---| 'RAYGUI_ICON_246'
---| 'RAYGUI_ICON_247'
---| 'RAYGUI_ICON_248'
---| 'RAYGUI_ICON_249'
---| 'RAYGUI_ICON_250'
---| 'RAYGUI_ICON_251'
---| 'RAYGUI_ICON_252'
---| 'RAYGUI_ICON_253'
---| 'RAYGUI_ICON_254'
---| 'RAYGUI_ICON_255'

rl.RAYGUI_ICON_NONE = 0
rl.RAYGUI_ICON_FOLDER_FILE_OPEN = 1
rl.RAYGUI_ICON_FILE_SAVE_CLASSIC = 2
rl.RAYGUI_ICON_FOLDER_OPEN = 3
rl.RAYGUI_ICON_FOLDER_SAVE = 4
rl.RAYGUI_ICON_FILE_OPEN = 5
rl.RAYGUI_ICON_FILE_SAVE = 6
rl.RAYGUI_ICON_FILE_EXPORT = 7
rl.RAYGUI_ICON_FILE_ADD = 8
rl.RAYGUI_ICON_FILE_DELETE = 9
rl.RAYGUI_ICON_FILETYPE_TEXT = 10
rl.RAYGUI_ICON_FILETYPE_AUDIO = 11
rl.RAYGUI_ICON_FILETYPE_IMAGE = 12
rl.RAYGUI_ICON_FILETYPE_PLAY = 13
rl.RAYGUI_ICON_FILETYPE_VIDEO = 14
rl.RAYGUI_ICON_FILETYPE_INFO = 15
rl.RAYGUI_ICON_FILE_COPY = 16
rl.RAYGUI_ICON_FILE_CUT = 17
rl.RAYGUI_ICON_FILE_PASTE = 18
rl.RAYGUI_ICON_CURSOR_HAND = 19
rl.RAYGUI_ICON_CURSOR_POINTER = 20
rl.RAYGUI_ICON_CURSOR_CLASSIC = 21
rl.RAYGUI_ICON_PENCIL = 22
rl.RAYGUI_ICON_PENCIL_BIG = 23
rl.RAYGUI_ICON_BRUSH_CLASSIC = 24
rl.RAYGUI_ICON_BRUSH_PAINTER = 25
rl.RAYGUI_ICON_WATER_DROP = 26
rl.RAYGUI_ICON_COLOR_PICKER = 27
rl.RAYGUI_ICON_RUBBER = 28
rl.RAYGUI_ICON_COLOR_BUCKET = 29
rl.RAYGUI_ICON_TEXT_T = 30
rl.RAYGUI_ICON_TEXT_A = 31
rl.RAYGUI_ICON_SCALE = 32
rl.RAYGUI_ICON_RESIZE = 33
rl.RAYGUI_ICON_FILTER_POINT = 34
rl.RAYGUI_ICON_FILTER_BILINEAR = 35
rl.RAYGUI_ICON_CROP = 36
rl.RAYGUI_ICON_CROP_ALPHA = 37
rl.RAYGUI_ICON_SQUARE_TOGGLE = 38
rl.RAYGUI_ICON_SYMMETRY = 39
rl.RAYGUI_ICON_SYMMETRY_HORIZONTAL = 40
rl.RAYGUI_ICON_SYMMETRY_VERTICAL = 41
rl.RAYGUI_ICON_LENS = 42
rl.RAYGUI_ICON_LENS_BIG = 43
rl.RAYGUI_ICON_EYE_ON = 44
rl.RAYGUI_ICON_EYE_OFF = 45
rl.RAYGUI_ICON_FILTER_TOP = 46
rl.RAYGUI_ICON_FILTER = 47
rl.RAYGUI_ICON_TARGET_POINT = 48
rl.RAYGUI_ICON_TARGET_SMALL = 49
rl.RAYGUI_ICON_TARGET_BIG = 50
rl.RAYGUI_ICON_TARGET_MOVE = 51
rl.RAYGUI_ICON_CURSOR_MOVE = 52
rl.RAYGUI_ICON_CURSOR_SCALE = 53
rl.RAYGUI_ICON_CURSOR_SCALE_RIGHT = 54
rl.RAYGUI_ICON_CURSOR_SCALE_LEFT = 55
rl.RAYGUI_ICON_UNDO = 56
rl.RAYGUI_ICON_REDO = 57
rl.RAYGUI_ICON_REREDO = 58
rl.RAYGUI_ICON_MUTATE = 59
rl.RAYGUI_ICON_ROTATE = 60
rl.RAYGUI_ICON_REPEAT = 61
rl.RAYGUI_ICON_SHUFFLE = 62
rl.RAYGUI_ICON_EMPTYBOX = 63
rl.RAYGUI_ICON_TARGET = 64
rl.RAYGUI_ICON_TARGET_SMALL_FILL = 65
rl.RAYGUI_ICON_TARGET_BIG_FILL = 66
rl.RAYGUI_ICON_TARGET_MOVE_FILL = 67
rl.RAYGUI_ICON_CURSOR_MOVE_FILL = 68
rl.RAYGUI_ICON_CURSOR_SCALE_FILL = 69
rl.RAYGUI_ICON_CURSOR_SCALE_RIGHT_FILL = 70
rl.RAYGUI_ICON_CURSOR_SCALE_LEFT_FILL = 71
rl.RAYGUI_ICON_UNDO_FILL = 72
rl.RAYGUI_ICON_REDO_FILL = 73
rl.RAYGUI_ICON_REREDO_FILL = 74
rl.RAYGUI_ICON_MUTATE_FILL = 75
rl.RAYGUI_ICON_ROTATE_FILL = 76
rl.RAYGUI_ICON_REPEAT_FILL = 77
rl.RAYGUI_ICON_SHUFFLE_FILL = 78
rl.RAYGUI_ICON_EMPTYBOX_SMALL = 79
rl.RAYGUI_ICON_BOX = 80
rl.RAYGUI_ICON_BOX_TOP = 81
rl.RAYGUI_ICON_BOX_TOP_RIGHT = 82
rl.RAYGUI_ICON_BOX_RIGHT = 83
rl.RAYGUI_ICON_BOX_BOTTOM_RIGHT = 84
rl.RAYGUI_ICON_BOX_BOTTOM = 85
rl.RAYGUI_ICON_BOX_BOTTOM_LEFT = 86
rl.RAYGUI_ICON_BOX_LEFT = 87
rl.RAYGUI_ICON_BOX_TOP_LEFT = 88
rl.RAYGUI_ICON_BOX_CENTER = 89
rl.RAYGUI_ICON_BOX_CIRCLE_MASK = 90
rl.RAYGUI_ICON_POT = 91
rl.RAYGUI_ICON_ALPHA_MULTIPLY = 92
rl.RAYGUI_ICON_ALPHA_CLEAR = 93
rl.RAYGUI_ICON_DITHERING = 94
rl.RAYGUI_ICON_MIPMAPS = 95
rl.RAYGUI_ICON_BOX_GRID = 96
rl.RAYGUI_ICON_GRID = 97
rl.RAYGUI_ICON_BOX_CORNERS_SMALL = 98
rl.RAYGUI_ICON_BOX_CORNERS_BIG = 99
rl.RAYGUI_ICON_FOUR_BOXES = 100
rl.RAYGUI_ICON_GRID_FILL = 101
rl.RAYGUI_ICON_BOX_MULTISIZE = 102
rl.RAYGUI_ICON_ZOOM_SMALL = 103
rl.RAYGUI_ICON_ZOOM_MEDIUM = 104
rl.RAYGUI_ICON_ZOOM_BIG = 105
rl.RAYGUI_ICON_ZOOM_ALL = 106
rl.RAYGUI_ICON_ZOOM_CENTER = 107
rl.RAYGUI_ICON_BOX_DOTS_SMALL = 108
rl.RAYGUI_ICON_BOX_DOTS_BIG = 109
rl.RAYGUI_ICON_BOX_CONCENTRIC = 110
rl.RAYGUI_ICON_BOX_GRID_BIG = 111
rl.RAYGUI_ICON_OK_TICK = 112
rl.RAYGUI_ICON_CROSS = 113
rl.RAYGUI_ICON_ARROW_LEFT = 114
rl.RAYGUI_ICON_ARROW_RIGHT = 115
rl.RAYGUI_ICON_ARROW_DOWN = 116
rl.RAYGUI_ICON_ARROW_UP = 117
rl.RAYGUI_ICON_ARROW_LEFT_FILL = 118
rl.RAYGUI_ICON_ARROW_RIGHT_FILL = 119
rl.RAYGUI_ICON_ARROW_DOWN_FILL = 120
rl.RAYGUI_ICON_ARROW_UP_FILL = 121
rl.RAYGUI_ICON_AUDIO = 122
rl.RAYGUI_ICON_FX = 123
rl.RAYGUI_ICON_WAVE = 124
rl.RAYGUI_ICON_WAVE_SINUS = 125
rl.RAYGUI_ICON_WAVE_SQUARE = 126
rl.RAYGUI_ICON_WAVE_TRIANGULAR = 127
rl.RAYGUI_ICON_CROSS_SMALL = 128
rl.RAYGUI_ICON_PLAYER_PREVIOUS = 129
rl.RAYGUI_ICON_PLAYER_PLAY_BACK = 130
rl.RAYGUI_ICON_PLAYER_PLAY = 131
rl.RAYGUI_ICON_PLAYER_PAUSE = 132
rl.RAYGUI_ICON_PLAYER_STOP = 133
rl.RAYGUI_ICON_PLAYER_NEXT = 134
rl.RAYGUI_ICON_PLAYER_RECORD = 135
rl.RAYGUI_ICON_MAGNET = 136
rl.RAYGUI_ICON_LOCK_CLOSE = 137
rl.RAYGUI_ICON_LOCK_OPEN = 138
rl.RAYGUI_ICON_CLOCK = 139
rl.RAYGUI_ICON_TOOLS = 140
rl.RAYGUI_ICON_GEAR = 141
rl.RAYGUI_ICON_GEAR_BIG = 142
rl.RAYGUI_ICON_BIN = 143
rl.RAYGUI_ICON_HAND_POINTER = 144
rl.RAYGUI_ICON_LASER = 145
rl.RAYGUI_ICON_COIN = 146
rl.RAYGUI_ICON_EXPLOSION = 147
rl.RAYGUI_ICON_1UP = 148
rl.RAYGUI_ICON_PLAYER = 149
rl.RAYGUI_ICON_PLAYER_JUMP = 150
rl.RAYGUI_ICON_KEY = 151
rl.RAYGUI_ICON_DEMON = 152
rl.RAYGUI_ICON_TEXT_POPUP = 153
rl.RAYGUI_ICON_GEAR_EX = 154
rl.RAYGUI_ICON_CRACK = 155
rl.RAYGUI_ICON_CRACK_POINTS = 156
rl.RAYGUI_ICON_STAR = 157
rl.RAYGUI_ICON_DOOR = 158
rl.RAYGUI_ICON_EXIT = 159
rl.RAYGUI_ICON_MODE_2D = 160
rl.RAYGUI_ICON_MODE_3D = 161
rl.RAYGUI_ICON_CUBE = 162
rl.RAYGUI_ICON_CUBE_FACE_TOP = 163
rl.RAYGUI_ICON_CUBE_FACE_LEFT = 164
rl.RAYGUI_ICON_CUBE_FACE_FRONT = 165
rl.RAYGUI_ICON_CUBE_FACE_BOTTOM = 166
rl.RAYGUI_ICON_CUBE_FACE_RIGHT = 167
rl.RAYGUI_ICON_CUBE_FACE_BACK = 168
rl.RAYGUI_ICON_CAMERA = 169
rl.RAYGUI_ICON_SPECIAL = 170
rl.RAYGUI_ICON_LINK_NET = 171
rl.RAYGUI_ICON_LINK_BOXES = 172
rl.RAYGUI_ICON_LINK_MULTI = 173
rl.RAYGUI_ICON_LINK = 174
rl.RAYGUI_ICON_LINK_BROKE = 175
rl.RAYGUI_ICON_TEXT_NOTES = 176
rl.RAYGUI_ICON_NOTEBOOK = 177
rl.RAYGUI_ICON_SUITCASE = 178
rl.RAYGUI_ICON_SUITCASE_ZIP = 179
rl.RAYGUI_ICON_MAILBOX = 180
rl.RAYGUI_ICON_MONITOR = 181
rl.RAYGUI_ICON_PRINTER = 182
rl.RAYGUI_ICON_PHOTO_CAMERA = 183
rl.RAYGUI_ICON_PHOTO_CAMERA_FLASH = 184
rl.RAYGUI_ICON_HOUSE = 185
rl.RAYGUI_ICON_HEART = 186
rl.RAYGUI_ICON_CORNER = 187
rl.RAYGUI_ICON_VERTICAL_BARS = 188
rl.RAYGUI_ICON_VERTICAL_BARS_FILL = 189
rl.RAYGUI_ICON_LIFE_BARS = 190
rl.RAYGUI_ICON_INFO = 191
rl.RAYGUI_ICON_CROSSLINE = 192
rl.RAYGUI_ICON_HELP = 193
rl.RAYGUI_ICON_FILETYPE_ALPHA = 194
rl.RAYGUI_ICON_FILETYPE_HOME = 195
rl.RAYGUI_ICON_LAYERS_VISIBLE = 196
rl.RAYGUI_ICON_LAYERS = 197
rl.RAYGUI_ICON_WINDOW = 198
rl.RAYGUI_ICON_HIDPI = 199
rl.RAYGUI_ICON_FILETYPE_BINARY = 200
rl.RAYGUI_ICON_HEX = 201
rl.RAYGUI_ICON_SHIELD = 202
rl.RAYGUI_ICON_FILE_NEW = 203
rl.RAYGUI_ICON_FOLDER_ADD = 204
rl.RAYGUI_ICON_205 = 205
rl.RAYGUI_ICON_206 = 206
rl.RAYGUI_ICON_207 = 207
rl.RAYGUI_ICON_208 = 208
rl.RAYGUI_ICON_209 = 209
rl.RAYGUI_ICON_210 = 210
rl.RAYGUI_ICON_211 = 211
rl.RAYGUI_ICON_212 = 212
rl.RAYGUI_ICON_213 = 213
rl.RAYGUI_ICON_214 = 214
rl.RAYGUI_ICON_215 = 215
rl.RAYGUI_ICON_216 = 216
rl.RAYGUI_ICON_217 = 217
rl.RAYGUI_ICON_218 = 218
rl.RAYGUI_ICON_219 = 219
rl.RAYGUI_ICON_220 = 220
rl.RAYGUI_ICON_221 = 221
rl.RAYGUI_ICON_222 = 222
rl.RAYGUI_ICON_223 = 223
rl.RAYGUI_ICON_224 = 224
rl.RAYGUI_ICON_225 = 225
rl.RAYGUI_ICON_226 = 226
rl.RAYGUI_ICON_227 = 227
rl.RAYGUI_ICON_228 = 228
rl.RAYGUI_ICON_229 = 229
rl.RAYGUI_ICON_230 = 230
rl.RAYGUI_ICON_231 = 231
rl.RAYGUI_ICON_232 = 232
rl.RAYGUI_ICON_233 = 233
rl.RAYGUI_ICON_234 = 234
rl.RAYGUI_ICON_235 = 235
rl.RAYGUI_ICON_236 = 236
rl.RAYGUI_ICON_237 = 237
rl.RAYGUI_ICON_238 = 238
rl.RAYGUI_ICON_239 = 239
rl.RAYGUI_ICON_240 = 240
rl.RAYGUI_ICON_241 = 241
rl.RAYGUI_ICON_242 = 242
rl.RAYGUI_ICON_243 = 243
rl.RAYGUI_ICON_244 = 244
rl.RAYGUI_ICON_245 = 245
rl.RAYGUI_ICON_246 = 246
rl.RAYGUI_ICON_247 = 247
rl.RAYGUI_ICON_248 = 248
rl.RAYGUI_ICON_249 = 249
rl.RAYGUI_ICON_250 = 250
rl.RAYGUI_ICON_251 = 251
rl.RAYGUI_ICON_252 = 252
rl.RAYGUI_ICON_253 = 253
rl.RAYGUI_ICON_254 = 254
rl.RAYGUI_ICON_255 = 255
---@class Vector2 @ Vector2 type
---@alias Vector2_ptr Vector2
---@alias Vector2_ptr_ptr Vector2
---@field x number
---@field y number
---Constructed using `rl.new("Vector2", ...)`
local Vector2 = {}
---@class Vector3 @ Vector3 type                 // -- ConvertHSVtoRGB(), ConvertRGBtoHSV()
---@alias Vector3_ptr Vector3
---@alias Vector3_ptr_ptr Vector3
---@field x number
---@field y number
---@field z number
---Constructed using `rl.new("Vector3", ...)`
local Vector3 = {}
---@class Color @ Color type, RGBA (32bit)
---@alias Color_ptr Color
---@alias Color_ptr_ptr Color
---@field r number|string[]
---@field g number|string[]
---@field b number|string[]
---@field a number|string[]
---Constructed using `rl.new("Color", ...)`
local Color = {}
---@class Rectangle @ Rectangle type
---@alias Rectangle_ptr Rectangle
---@alias Rectangle_ptr_ptr Rectangle
---@field x number
---@field y number
---@field width number
---@field height number
---Constructed using `rl.new("Rectangle", ...)`
local Rectangle = {}
---@class Texture2D @ It should be redesigned to be provided by user
---@alias Texture2D_ptr Texture2D
---@alias Texture2D_ptr_ptr Texture2D
---@field id number # OpenGL texture id
---@field width number # Texture base width
---@field height number # Texture base height
---@field mipmaps number # Mipmap levels, 1 by default
---@field format number # Data format (PixelFormat type)
---Constructed using `rl.new("Texture2D", ...)`
local Texture2D = {}
---@class GlyphInfo @ GlyphInfo, font characters glyphs info
---@alias GlyphInfo_ptr GlyphInfo
---@alias GlyphInfo_ptr_ptr GlyphInfo
---@field value number # Character value (Unicode)
---@field offsetX number # Character offset X when drawing
---@field offsetY number # Character offset Y when drawing
---@field advanceX number # Character advance position X
---@field image Image # Character image data
---Constructed using `rl.new("GlyphInfo", ...)`
local GlyphInfo = {}
---@class Font @ It should be redesigned to be provided by user
---@alias Font_ptr Font
---@alias Font_ptr_ptr Font
---@field baseSize number # Base size (default chars height)
---@field glyphCount number # Number of characters
---@field texture Texture2D # Characters texture atlas
---@field recs Rectangle_ptr|lightuserdata # Characters rectangles in texture
---@field chars GlyphInfo_ptr|lightuserdata # Characters info data
---Constructed using `rl.new("Font", ...)`
local Font = {}
---@class GuiStyleProp @ Style property
---@alias GuiStyleProp_ptr GuiStyleProp
---@alias GuiStyleProp_ptr_ptr GuiStyleProp
---@field controlId unsigned_short
---@field propertyId unsigned_short
---@field propertyValue number
---Constructed using `rl.new("GuiStyleProp", ...)`
local GuiStyleProp = {}
---@return PI_void
---Enable gui controls (global state)
function rl.GuiEnable() end
---@return PI_void
---Disable gui controls (global state)
function rl.GuiDisable() end
---@return PI_void
---Lock gui controls (global state)
function rl.GuiLock() end
---@return PI_void
---Unlock gui controls (global state)
function rl.GuiUnlock() end
---@return PI_bool
---Check if gui is locked (global state)
function rl.GuiIsLocked() end
---@param alpha number
---@return PI_void
---Set gui controls alpha (global state), alpha goes from 0.0f to 1.0f
function rl.GuiFade(alpha) end
---@param state number
---@return PI_void
---Set gui state (global state)
function rl.GuiSetState(state) end
---@return number
---Get gui state (global state)
function rl.GuiGetState() end
---@param font Font
---@return PI_void
---Set gui custom font (global state)
function rl.GuiSetFont(font) end
---@return PI_Font
---Get gui custom font (global state)
function rl.GuiGetFont() end
---@param control number
---@param property number
---@param value number
---@return PI_void
---Set one style property
function rl.GuiSetStyle(control,property,value) end
---@param control number
---@param property number
---@return number
---Get one style property
function rl.GuiGetStyle(control,property) end
---@param bounds Rectangle
---@param title string|lightuserdata
---@return PI_bool
---Window Box control, shows a window that can be closed
function rl.GuiWindowBox(bounds,title) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_void
---Group Box control with text name
function rl.GuiGroupBox(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_void
---Line separator control, could contain text
function rl.GuiLine(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_void
---Panel control, useful to group controls
function rl.GuiPanel(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param content Rectangle
---@param scroll Vector2_ptr|lightuserdata
---@return PI_Rectangle
---Scroll Panel control
function rl.GuiScrollPanel(bounds,text,content,scroll) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_void
---Label control, shows text
function rl.GuiLabel(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_bool
---Button control, returns true when clicked
function rl.GuiButton(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_bool
---Label button control, show true when clicked
function rl.GuiLabelButton(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param active bool
---@return PI_bool
---Toggle Button control, returns true when active
function rl.GuiToggle(bounds,text,active) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param active number
---@return number
---Toggle Group control, returns active toggle index
function rl.GuiToggleGroup(bounds,text,active) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param checked bool
---@return PI_bool
---Check Box control, returns true when active
function rl.GuiCheckBox(bounds,text,checked) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param active number
---@return number
---Combo Box control, returns selected item index
function rl.GuiComboBox(bounds,text,active) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param active number
---@param editMode bool
---@return PI_bool
---Dropdown Box control, returns selected item
function rl.GuiDropdownBox(bounds,text,active,editMode) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param value number
---@param minValue number
---@param maxValue number
---@param editMode bool
---@return PI_bool
---Spinner control, returns selected value
function rl.GuiSpinner(bounds,text,value,minValue,maxValue,editMode) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param value number
---@param minValue number
---@param maxValue number
---@param editMode bool
---@return PI_bool
---Value Box control, updates input text with numbers
function rl.GuiValueBox(bounds,text,value,minValue,maxValue,editMode) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param textSize number
---@param editMode bool
---@return PI_bool
---Text Box control, updates input text
function rl.GuiTextBox(bounds,text,textSize,editMode) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param textSize number
---@param editMode bool
---@return PI_bool
---Text Box control with multiple lines
function rl.GuiTextBoxMulti(bounds,text,textSize,editMode) end
---@param bounds Rectangle
---@param textLeft string|lightuserdata
---@param textRight string|lightuserdata
---@param value number
---@param minValue number
---@param maxValue number
---@return number
---Slider control, returns selected value
function rl.GuiSlider(bounds,textLeft,textRight,value,minValue,maxValue) end
---@param bounds Rectangle
---@param textLeft string|lightuserdata
---@param textRight string|lightuserdata
---@param value number
---@param minValue number
---@param maxValue number
---@return number
---Slider Bar control, returns selected value
function rl.GuiSliderBar(bounds,textLeft,textRight,value,minValue,maxValue) end
---@param bounds Rectangle
---@param textLeft string|lightuserdata
---@param textRight string|lightuserdata
---@param value number
---@param minValue number
---@param maxValue number
---@return number
---Progress Bar control, shows current progress value
function rl.GuiProgressBar(bounds,textLeft,textRight,value,minValue,maxValue) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_void
---Status Bar control, shows info text
function rl.GuiStatusBar(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@return PI_void
---Dummy control for placeholders
function rl.GuiDummyRec(bounds,text) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param spacing number
---@param subdivs number
---@return PI_Vector2
---Grid control, returns mouse cell position
function rl.GuiGrid(bounds,text,spacing,subdivs) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param scrollIndex number
---@param active number
---@return number
---List View control, returns selected list item index
function rl.GuiListView(bounds,text,scrollIndex,active) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param count number
---@param focus number
---@param scrollIndex number
---@param active number
---@return number
---List View with extended parameters
function rl.GuiListViewEx(bounds,text,count,focus,scrollIndex,active) end
---@param bounds Rectangle
---@param title string|lightuserdata
---@param message string|lightuserdata
---@param buttons string|lightuserdata
---@return number
---Message Box control, displays a message
function rl.GuiMessageBox(bounds,title,message,buttons) end
---@param bounds Rectangle
---@param title string|lightuserdata
---@param message string|lightuserdata
---@param buttons string|lightuserdata
---@param text string|lightuserdata
---@param textMaxSize number
---@param secretViewActive number
---@return number
---Text Input Box control, ask for text, supports secret
function rl.GuiTextInputBox(bounds,title,message,buttons,text,textMaxSize,secretViewActive) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param color Color
---@return PI_Color
---Color Picker control (multiple color controls)
function rl.GuiColorPicker(bounds,text,color) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param color Color
---@return PI_Color
---Color Panel control
function rl.GuiColorPanel(bounds,text,color) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param alpha number
---@return number
---Color Bar Alpha control
function rl.GuiColorBarAlpha(bounds,text,alpha) end
---@param bounds Rectangle
---@param text string|lightuserdata
---@param value number
---@return number
---Color Bar Hue control
function rl.GuiColorBarHue(bounds,text,value) end
---@param fileName string|lightuserdata
---@return PI_void
---Load style file over global style variable (.rgs)
function rl.GuiLoadStyle(fileName) end
---@return PI_void
---Load style default over global style
function rl.GuiLoadStyleDefault() end
---@param iconId number
---@param text string|lightuserdata
---@return string|lightuserdata
---Get text with icon id prepended (if supported)
function rl.GuiIconText(iconId,text) end
---@param iconId number
---@param posX number
---@param posY number
---@param pixelSize number
---@param color Color
---@return PI_void
function rl.GuiDrawIcon(iconId,posX,posY,pixelSize,color) end
---@return number
---Get full icons data pointer
function rl.GuiGetIcons() end
---@param iconId number
---@return number
---Get icon bit data
function rl.GuiGetIconData(iconId) end
---@param iconId number
---@param data number
---@return PI_void
---Set icon bit data
function rl.GuiSetIconData(iconId,data) end
---@param scale number
---@return PI_void
---Set icon scale (1 by default)
function rl.GuiSetIconScale(scale) end
---@param iconId number
---@param x number
---@param y number
---@return PI_void
---Set icon pixel value
function rl.GuiSetIconPixel(iconId,x,y) end
---@param iconId number
---@param x number
---@param y number
---@return PI_void
---Clear icon pixel value
function rl.GuiClearIconPixel(iconId,x,y) end
---@param iconId number
---@param x number
---@param y number
---@return PI_bool
---Check icon pixel value
function rl.GuiCheckIconPixel(iconId,x,y) end
---@alias ConfigFlags
---| 'FLAG_VSYNC_HINT'
---| 'FLAG_FULLSCREEN_MODE'
---| 'FLAG_WINDOW_RESIZABLE'
---| 'FLAG_WINDOW_UNDECORATED'
---| 'FLAG_WINDOW_HIDDEN'
---| 'FLAG_WINDOW_MINIMIZED'
---| 'FLAG_WINDOW_MAXIMIZED'
---| 'FLAG_WINDOW_UNFOCUSED'
---| 'FLAG_WINDOW_TOPMOST'
---| 'FLAG_WINDOW_ALWAYS_RUN'
---| 'FLAG_WINDOW_TRANSPARENT'
---| 'FLAG_WINDOW_HIGHDPI'
---| 'FLAG_WINDOW_MOUSE_PASSTHROUGH'
---| 'FLAG_MSAA_4X_HINT'
---| 'FLAG_INTERLACED_HINT'
---System/Window config flags

---Set to try enabling V-Sync on GPU
rl.FLAG_VSYNC_HINT = 64
---Set to run program in fullscreen
rl.FLAG_FULLSCREEN_MODE = 2
---Set to allow resizable window
rl.FLAG_WINDOW_RESIZABLE = 4
---Set to disable window decoration (frame and buttons)
rl.FLAG_WINDOW_UNDECORATED = 8
---Set to hide window
rl.FLAG_WINDOW_HIDDEN = 128
---Set to minimize window (iconify)
rl.FLAG_WINDOW_MINIMIZED = 512
---Set to maximize window (expanded to monitor)
rl.FLAG_WINDOW_MAXIMIZED = 1024
---Set to window non focused
rl.FLAG_WINDOW_UNFOCUSED = 2048
---Set to window always on top
rl.FLAG_WINDOW_TOPMOST = 4096
---Set to allow windows running while minimized
rl.FLAG_WINDOW_ALWAYS_RUN = 256
---Set to allow transparent framebuffer
rl.FLAG_WINDOW_TRANSPARENT = 16
---Set to support HighDPI
rl.FLAG_WINDOW_HIGHDPI = 8192
---Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
rl.FLAG_WINDOW_MOUSE_PASSTHROUGH = 16384
---Set to try enabling MSAA 4X
rl.FLAG_MSAA_4X_HINT = 32
---Set to try enabling interlaced video format (for V3D)
rl.FLAG_INTERLACED_HINT = 65536
---@alias TraceLogLevel
---| 'LOG_ALL'
---| 'LOG_TRACE'
---| 'LOG_DEBUG'
---| 'LOG_INFO'
---| 'LOG_WARNING'
---| 'LOG_ERROR'
---| 'LOG_FATAL'
---| 'LOG_NONE'
---Trace log level

---Display all logs
rl.LOG_ALL = 0
---Trace logging, intended for internal use only
rl.LOG_TRACE = 1
---Debug logging, used for internal debugging, it should be disabled on release builds
rl.LOG_DEBUG = 2
---Info logging, used for program execution info
rl.LOG_INFO = 3
---Warning logging, used on recoverable failures
rl.LOG_WARNING = 4
---Error logging, used on unrecoverable failures
rl.LOG_ERROR = 5
---Fatal logging, used to abort program: exit(EXIT_FAILURE)
rl.LOG_FATAL = 6
---Disable logging
rl.LOG_NONE = 7
---@alias KeyboardKey
---| 'KEY_NULL'
---| 'KEY_APOSTROPHE'
---| 'KEY_COMMA'
---| 'KEY_MINUS'
---| 'KEY_PERIOD'
---| 'KEY_SLASH'
---| 'KEY_ZERO'
---| 'KEY_ONE'
---| 'KEY_TWO'
---| 'KEY_THREE'
---| 'KEY_FOUR'
---| 'KEY_FIVE'
---| 'KEY_SIX'
---| 'KEY_SEVEN'
---| 'KEY_EIGHT'
---| 'KEY_NINE'
---| 'KEY_SEMICOLON'
---| 'KEY_EQUAL'
---| 'KEY_A'
---| 'KEY_B'
---| 'KEY_C'
---| 'KEY_D'
---| 'KEY_E'
---| 'KEY_F'
---| 'KEY_G'
---| 'KEY_H'
---| 'KEY_I'
---| 'KEY_J'
---| 'KEY_K'
---| 'KEY_L'
---| 'KEY_M'
---| 'KEY_N'
---| 'KEY_O'
---| 'KEY_P'
---| 'KEY_Q'
---| 'KEY_R'
---| 'KEY_S'
---| 'KEY_T'
---| 'KEY_U'
---| 'KEY_V'
---| 'KEY_W'
---| 'KEY_X'
---| 'KEY_Y'
---| 'KEY_Z'
---| 'KEY_LEFT_BRACKET'
---| 'KEY_BACKSLASH'
---| 'KEY_RIGHT_BRACKET'
---| 'KEY_GRAVE'
---| 'KEY_SPACE'
---| 'KEY_ESCAPE'
---| 'KEY_ENTER'
---| 'KEY_TAB'
---| 'KEY_BACKSPACE'
---| 'KEY_INSERT'
---| 'KEY_DELETE'
---| 'KEY_RIGHT'
---| 'KEY_LEFT'
---| 'KEY_DOWN'
---| 'KEY_UP'
---| 'KEY_PAGE_UP'
---| 'KEY_PAGE_DOWN'
---| 'KEY_HOME'
---| 'KEY_END'
---| 'KEY_CAPS_LOCK'
---| 'KEY_SCROLL_LOCK'
---| 'KEY_NUM_LOCK'
---| 'KEY_PRINT_SCREEN'
---| 'KEY_PAUSE'
---| 'KEY_F1'
---| 'KEY_F2'
---| 'KEY_F3'
---| 'KEY_F4'
---| 'KEY_F5'
---| 'KEY_F6'
---| 'KEY_F7'
---| 'KEY_F8'
---| 'KEY_F9'
---| 'KEY_F10'
---| 'KEY_F11'
---| 'KEY_F12'
---| 'KEY_LEFT_SHIFT'
---| 'KEY_LEFT_CONTROL'
---| 'KEY_LEFT_ALT'
---| 'KEY_LEFT_SUPER'
---| 'KEY_RIGHT_SHIFT'
---| 'KEY_RIGHT_CONTROL'
---| 'KEY_RIGHT_ALT'
---| 'KEY_RIGHT_SUPER'
---| 'KEY_KB_MENU'
---| 'KEY_KP_0'
---| 'KEY_KP_1'
---| 'KEY_KP_2'
---| 'KEY_KP_3'
---| 'KEY_KP_4'
---| 'KEY_KP_5'
---| 'KEY_KP_6'
---| 'KEY_KP_7'
---| 'KEY_KP_8'
---| 'KEY_KP_9'
---| 'KEY_KP_DECIMAL'
---| 'KEY_KP_DIVIDE'
---| 'KEY_KP_MULTIPLY'
---| 'KEY_KP_SUBTRACT'
---| 'KEY_KP_ADD'
---| 'KEY_KP_ENTER'
---| 'KEY_KP_EQUAL'
---| 'KEY_BACK'
---| 'KEY_MENU'
---| 'KEY_VOLUME_UP'
---| 'KEY_VOLUME_DOWN'
---Keyboard keys (US keyboard layout)

---Key: NULL, used for no key pressed
rl.KEY_NULL = 0
---Key: '
rl.KEY_APOSTROPHE = 39
---Key: ,
rl.KEY_COMMA = 44
---Key: -
rl.KEY_MINUS = 45
---Key: .
rl.KEY_PERIOD = 46
---Key: /
rl.KEY_SLASH = 47
---Key: 0
rl.KEY_ZERO = 48
---Key: 1
rl.KEY_ONE = 49
---Key: 2
rl.KEY_TWO = 50
---Key: 3
rl.KEY_THREE = 51
---Key: 4
rl.KEY_FOUR = 52
---Key: 5
rl.KEY_FIVE = 53
---Key: 6
rl.KEY_SIX = 54
---Key: 7
rl.KEY_SEVEN = 55
---Key: 8
rl.KEY_EIGHT = 56
---Key: 9
rl.KEY_NINE = 57
---Key: ;
rl.KEY_SEMICOLON = 59
---Key: =
rl.KEY_EQUAL = 61
---Key: A | a
rl.KEY_A = 65
---Key: B | b
rl.KEY_B = 66
---Key: C | c
rl.KEY_C = 67
---Key: D | d
rl.KEY_D = 68
---Key: E | e
rl.KEY_E = 69
---Key: F | f
rl.KEY_F = 70
---Key: G | g
rl.KEY_G = 71
---Key: H | h
rl.KEY_H = 72
---Key: I | i
rl.KEY_I = 73
---Key: J | j
rl.KEY_J = 74
---Key: K | k
rl.KEY_K = 75
---Key: L | l
rl.KEY_L = 76
---Key: M | m
rl.KEY_M = 77
---Key: N | n
rl.KEY_N = 78
---Key: O | o
rl.KEY_O = 79
---Key: P | p
rl.KEY_P = 80
---Key: Q | q
rl.KEY_Q = 81
---Key: R | r
rl.KEY_R = 82
---Key: S | s
rl.KEY_S = 83
---Key: T | t
rl.KEY_T = 84
---Key: U | u
rl.KEY_U = 85
---Key: V | v
rl.KEY_V = 86
---Key: W | w
rl.KEY_W = 87
---Key: X | x
rl.KEY_X = 88
---Key: Y | y
rl.KEY_Y = 89
---Key: Z | z
rl.KEY_Z = 90
---Key: [
rl.KEY_LEFT_BRACKET = 91
---Key: '\'
rl.KEY_BACKSLASH = 92
---Key: ]
rl.KEY_RIGHT_BRACKET = 93
---Key: `
rl.KEY_GRAVE = 96
---Key: Space
rl.KEY_SPACE = 32
---Key: Esc
rl.KEY_ESCAPE = 256
---Key: Enter
rl.KEY_ENTER = 257
---Key: Tab
rl.KEY_TAB = 258
---Key: Backspace
rl.KEY_BACKSPACE = 259
---Key: Ins
rl.KEY_INSERT = 260
---Key: Del
rl.KEY_DELETE = 261
---Key: Cursor right
rl.KEY_RIGHT = 262
---Key: Cursor left
rl.KEY_LEFT = 263
---Key: Cursor down
rl.KEY_DOWN = 264
---Key: Cursor up
rl.KEY_UP = 265
---Key: Page up
rl.KEY_PAGE_UP = 266
---Key: Page down
rl.KEY_PAGE_DOWN = 267
---Key: Home
rl.KEY_HOME = 268
---Key: End
rl.KEY_END = 269
---Key: Caps lock
rl.KEY_CAPS_LOCK = 280
---Key: Scroll down
rl.KEY_SCROLL_LOCK = 281
---Key: Num lock
rl.KEY_NUM_LOCK = 282
---Key: Print screen
rl.KEY_PRINT_SCREEN = 283
---Key: Pause
rl.KEY_PAUSE = 284
---Key: F1
rl.KEY_F1 = 290
---Key: F2
rl.KEY_F2 = 291
---Key: F3
rl.KEY_F3 = 292
---Key: F4
rl.KEY_F4 = 293
---Key: F5
rl.KEY_F5 = 294
---Key: F6
rl.KEY_F6 = 295
---Key: F7
rl.KEY_F7 = 296
---Key: F8
rl.KEY_F8 = 297
---Key: F9
rl.KEY_F9 = 298
---Key: F10
rl.KEY_F10 = 299
---Key: F11
rl.KEY_F11 = 300
---Key: F12
rl.KEY_F12 = 301
---Key: Shift left
rl.KEY_LEFT_SHIFT = 340
---Key: Control left
rl.KEY_LEFT_CONTROL = 341
---Key: Alt left
rl.KEY_LEFT_ALT = 342
---Key: Super left
rl.KEY_LEFT_SUPER = 343
---Key: Shift right
rl.KEY_RIGHT_SHIFT = 344
---Key: Control right
rl.KEY_RIGHT_CONTROL = 345
---Key: Alt right
rl.KEY_RIGHT_ALT = 346
---Key: Super right
rl.KEY_RIGHT_SUPER = 347
---Key: KB menu
rl.KEY_KB_MENU = 348
---Key: Keypad 0
rl.KEY_KP_0 = 320
---Key: Keypad 1
rl.KEY_KP_1 = 321
---Key: Keypad 2
rl.KEY_KP_2 = 322
---Key: Keypad 3
rl.KEY_KP_3 = 323
---Key: Keypad 4
rl.KEY_KP_4 = 324
---Key: Keypad 5
rl.KEY_KP_5 = 325
---Key: Keypad 6
rl.KEY_KP_6 = 326
---Key: Keypad 7
rl.KEY_KP_7 = 327
---Key: Keypad 8
rl.KEY_KP_8 = 328
---Key: Keypad 9
rl.KEY_KP_9 = 329
---Key: Keypad .
rl.KEY_KP_DECIMAL = 330
---Key: Keypad /
rl.KEY_KP_DIVIDE = 331
---Key: Keypad *
rl.KEY_KP_MULTIPLY = 332
---Key: Keypad -
rl.KEY_KP_SUBTRACT = 333
---Key: Keypad +
rl.KEY_KP_ADD = 334
---Key: Keypad Enter
rl.KEY_KP_ENTER = 335
---Key: Keypad =
rl.KEY_KP_EQUAL = 336
---Key: Android back button
rl.KEY_BACK = 4
---Key: Android menu button
rl.KEY_MENU = 82
---Key: Android volume up button
rl.KEY_VOLUME_UP = 24
---Key: Android volume down button
rl.KEY_VOLUME_DOWN = 25
---@alias MouseButton
---| 'MOUSE_BUTTON_LEFT'
---| 'MOUSE_BUTTON_RIGHT'
---| 'MOUSE_BUTTON_MIDDLE'
---| 'MOUSE_BUTTON_SIDE'
---| 'MOUSE_BUTTON_EXTRA'
---| 'MOUSE_BUTTON_FORWARD'
---| 'MOUSE_BUTTON_BACK'
---Mouse buttons

---Mouse button left
rl.MOUSE_BUTTON_LEFT = 0
---Mouse button right
rl.MOUSE_BUTTON_RIGHT = 1
---Mouse button middle (pressed wheel)
rl.MOUSE_BUTTON_MIDDLE = 2
---Mouse button side (advanced mouse device)
rl.MOUSE_BUTTON_SIDE = 3
---Mouse button extra (advanced mouse device)
rl.MOUSE_BUTTON_EXTRA = 4
---Mouse button forward (advanced mouse device)
rl.MOUSE_BUTTON_FORWARD = 5
---Mouse button back (advanced mouse device)
rl.MOUSE_BUTTON_BACK = 6
---@alias MouseCursor
---| 'MOUSE_CURSOR_DEFAULT'
---| 'MOUSE_CURSOR_ARROW'
---| 'MOUSE_CURSOR_IBEAM'
---| 'MOUSE_CURSOR_CROSSHAIR'
---| 'MOUSE_CURSOR_POINTING_HAND'
---| 'MOUSE_CURSOR_RESIZE_EW'
---| 'MOUSE_CURSOR_RESIZE_NS'
---| 'MOUSE_CURSOR_RESIZE_NWSE'
---| 'MOUSE_CURSOR_RESIZE_NESW'
---| 'MOUSE_CURSOR_RESIZE_ALL'
---| 'MOUSE_CURSOR_NOT_ALLOWED'
---Mouse cursor

---Default pointer shape
rl.MOUSE_CURSOR_DEFAULT = 0
---Arrow shape
rl.MOUSE_CURSOR_ARROW = 1
---Text writing cursor shape
rl.MOUSE_CURSOR_IBEAM = 2
---Cross shape
rl.MOUSE_CURSOR_CROSSHAIR = 3
---Pointing hand cursor
rl.MOUSE_CURSOR_POINTING_HAND = 4
---Horizontal resize/move arrow shape
rl.MOUSE_CURSOR_RESIZE_EW = 5
---Vertical resize/move arrow shape
rl.MOUSE_CURSOR_RESIZE_NS = 6
---Top-left to bottom-right diagonal resize/move arrow shape
rl.MOUSE_CURSOR_RESIZE_NWSE = 7
---The top-right to bottom-left diagonal resize/move arrow shape
rl.MOUSE_CURSOR_RESIZE_NESW = 8
---The omnidirectional resize/move cursor shape
rl.MOUSE_CURSOR_RESIZE_ALL = 9
---The operation-not-allowed shape
rl.MOUSE_CURSOR_NOT_ALLOWED = 10
---@alias GamepadButton
---| 'GAMEPAD_BUTTON_UNKNOWN'
---| 'GAMEPAD_BUTTON_LEFT_FACE_UP'
---| 'GAMEPAD_BUTTON_LEFT_FACE_RIGHT'
---| 'GAMEPAD_BUTTON_LEFT_FACE_DOWN'
---| 'GAMEPAD_BUTTON_LEFT_FACE_LEFT'
---| 'GAMEPAD_BUTTON_RIGHT_FACE_UP'
---| 'GAMEPAD_BUTTON_RIGHT_FACE_RIGHT'
---| 'GAMEPAD_BUTTON_RIGHT_FACE_DOWN'
---| 'GAMEPAD_BUTTON_RIGHT_FACE_LEFT'
---| 'GAMEPAD_BUTTON_LEFT_TRIGGER_1'
---| 'GAMEPAD_BUTTON_LEFT_TRIGGER_2'
---| 'GAMEPAD_BUTTON_RIGHT_TRIGGER_1'
---| 'GAMEPAD_BUTTON_RIGHT_TRIGGER_2'
---| 'GAMEPAD_BUTTON_MIDDLE_LEFT'
---| 'GAMEPAD_BUTTON_MIDDLE'
---| 'GAMEPAD_BUTTON_MIDDLE_RIGHT'
---| 'GAMEPAD_BUTTON_LEFT_THUMB'
---| 'GAMEPAD_BUTTON_RIGHT_THUMB'
---Gamepad buttons

---Unknown button, just for error checking
rl.GAMEPAD_BUTTON_UNKNOWN = 0
---Gamepad left DPAD up button
rl.GAMEPAD_BUTTON_LEFT_FACE_UP = 1
---Gamepad left DPAD right button
rl.GAMEPAD_BUTTON_LEFT_FACE_RIGHT = 2
---Gamepad left DPAD down button
rl.GAMEPAD_BUTTON_LEFT_FACE_DOWN = 3
---Gamepad left DPAD left button
rl.GAMEPAD_BUTTON_LEFT_FACE_LEFT = 4
---Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
rl.GAMEPAD_BUTTON_RIGHT_FACE_UP = 5
---Gamepad right button right (i.e. PS3: Square, Xbox: X)
rl.GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = 6
---Gamepad right button down (i.e. PS3: Cross, Xbox: A)
rl.GAMEPAD_BUTTON_RIGHT_FACE_DOWN = 7
---Gamepad right button left (i.e. PS3: Circle, Xbox: B)
rl.GAMEPAD_BUTTON_RIGHT_FACE_LEFT = 8
---Gamepad top/back trigger left (first), it could be a trailing button
rl.GAMEPAD_BUTTON_LEFT_TRIGGER_1 = 9
---Gamepad top/back trigger left (second), it could be a trailing button
rl.GAMEPAD_BUTTON_LEFT_TRIGGER_2 = 10
---Gamepad top/back trigger right (one), it could be a trailing button
rl.GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = 11
---Gamepad top/back trigger right (second), it could be a trailing button
rl.GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = 12
---Gamepad center buttons, left one (i.e. PS3: Select)
rl.GAMEPAD_BUTTON_MIDDLE_LEFT = 13
---Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
rl.GAMEPAD_BUTTON_MIDDLE = 14
---Gamepad center buttons, right one (i.e. PS3: Start)
rl.GAMEPAD_BUTTON_MIDDLE_RIGHT = 15
---Gamepad joystick pressed button left
rl.GAMEPAD_BUTTON_LEFT_THUMB = 16
---Gamepad joystick pressed button right
rl.GAMEPAD_BUTTON_RIGHT_THUMB = 17
---@alias GamepadAxis
---| 'GAMEPAD_AXIS_LEFT_X'
---| 'GAMEPAD_AXIS_LEFT_Y'
---| 'GAMEPAD_AXIS_RIGHT_X'
---| 'GAMEPAD_AXIS_RIGHT_Y'
---| 'GAMEPAD_AXIS_LEFT_TRIGGER'
---| 'GAMEPAD_AXIS_RIGHT_TRIGGER'
---Gamepad axis

---Gamepad left stick X axis
rl.GAMEPAD_AXIS_LEFT_X = 0
---Gamepad left stick Y axis
rl.GAMEPAD_AXIS_LEFT_Y = 1
---Gamepad right stick X axis
rl.GAMEPAD_AXIS_RIGHT_X = 2
---Gamepad right stick Y axis
rl.GAMEPAD_AXIS_RIGHT_Y = 3
---Gamepad back trigger left, pressure level: [1..-1]
rl.GAMEPAD_AXIS_LEFT_TRIGGER = 4
---Gamepad back trigger right, pressure level: [1..-1]
rl.GAMEPAD_AXIS_RIGHT_TRIGGER = 5
---@alias MaterialMapIndex
---| 'MATERIAL_MAP_ALBEDO'
---| 'MATERIAL_MAP_METALNESS'
---| 'MATERIAL_MAP_NORMAL'
---| 'MATERIAL_MAP_ROUGHNESS'
---| 'MATERIAL_MAP_OCCLUSION'
---| 'MATERIAL_MAP_EMISSION'
---| 'MATERIAL_MAP_HEIGHT'
---| 'MATERIAL_MAP_CUBEMAP'
---| 'MATERIAL_MAP_IRRADIANCE'
---| 'MATERIAL_MAP_PREFILTER'
---| 'MATERIAL_MAP_BRDF'
---Material map index

---Albedo material (same as: MATERIAL_MAP_DIFFUSE)
rl.MATERIAL_MAP_ALBEDO = 0
---Metalness material (same as: MATERIAL_MAP_SPECULAR)
rl.MATERIAL_MAP_METALNESS = 1
---Normal material
rl.MATERIAL_MAP_NORMAL = 2
---Roughness material
rl.MATERIAL_MAP_ROUGHNESS = 3
---Ambient occlusion material
rl.MATERIAL_MAP_OCCLUSION = 4
---Emission material
rl.MATERIAL_MAP_EMISSION = 5
---Heightmap material
rl.MATERIAL_MAP_HEIGHT = 6
---Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
rl.MATERIAL_MAP_CUBEMAP = 7
---Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
rl.MATERIAL_MAP_IRRADIANCE = 8
---Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
rl.MATERIAL_MAP_PREFILTER = 9
---Brdf material
rl.MATERIAL_MAP_BRDF = 10
---@alias ShaderLocationIndex
---| 'SHADER_LOC_VERTEX_POSITION'
---| 'SHADER_LOC_VERTEX_TEXCOORD01'
---| 'SHADER_LOC_VERTEX_TEXCOORD02'
---| 'SHADER_LOC_VERTEX_NORMAL'
---| 'SHADER_LOC_VERTEX_TANGENT'
---| 'SHADER_LOC_VERTEX_COLOR'
---| 'SHADER_LOC_MATRIX_MVP'
---| 'SHADER_LOC_MATRIX_VIEW'
---| 'SHADER_LOC_MATRIX_PROJECTION'
---| 'SHADER_LOC_MATRIX_MODEL'
---| 'SHADER_LOC_MATRIX_NORMAL'
---| 'SHADER_LOC_VECTOR_VIEW'
---| 'SHADER_LOC_COLOR_DIFFUSE'
---| 'SHADER_LOC_COLOR_SPECULAR'
---| 'SHADER_LOC_COLOR_AMBIENT'
---| 'SHADER_LOC_MAP_ALBEDO'
---| 'SHADER_LOC_MAP_METALNESS'
---| 'SHADER_LOC_MAP_NORMAL'
---| 'SHADER_LOC_MAP_ROUGHNESS'
---| 'SHADER_LOC_MAP_OCCLUSION'
---| 'SHADER_LOC_MAP_EMISSION'
---| 'SHADER_LOC_MAP_HEIGHT'
---| 'SHADER_LOC_MAP_CUBEMAP'
---| 'SHADER_LOC_MAP_IRRADIANCE'
---| 'SHADER_LOC_MAP_PREFILTER'
---| 'SHADER_LOC_MAP_BRDF'
---Shader location index

---Shader location: vertex attribute: position
rl.SHADER_LOC_VERTEX_POSITION = 0
---Shader location: vertex attribute: texcoord01
rl.SHADER_LOC_VERTEX_TEXCOORD01 = 1
---Shader location: vertex attribute: texcoord02
rl.SHADER_LOC_VERTEX_TEXCOORD02 = 2
---Shader location: vertex attribute: normal
rl.SHADER_LOC_VERTEX_NORMAL = 3
---Shader location: vertex attribute: tangent
rl.SHADER_LOC_VERTEX_TANGENT = 4
---Shader location: vertex attribute: color
rl.SHADER_LOC_VERTEX_COLOR = 5
---Shader location: matrix uniform: model-view-projection
rl.SHADER_LOC_MATRIX_MVP = 6
---Shader location: matrix uniform: view (camera transform)
rl.SHADER_LOC_MATRIX_VIEW = 7
---Shader location: matrix uniform: projection
rl.SHADER_LOC_MATRIX_PROJECTION = 8
---Shader location: matrix uniform: model (transform)
rl.SHADER_LOC_MATRIX_MODEL = 9
---Shader location: matrix uniform: normal
rl.SHADER_LOC_MATRIX_NORMAL = 10
---Shader location: vector uniform: view
rl.SHADER_LOC_VECTOR_VIEW = 11
---Shader location: vector uniform: diffuse color
rl.SHADER_LOC_COLOR_DIFFUSE = 12
---Shader location: vector uniform: specular color
rl.SHADER_LOC_COLOR_SPECULAR = 13
---Shader location: vector uniform: ambient color
rl.SHADER_LOC_COLOR_AMBIENT = 14
---Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
rl.SHADER_LOC_MAP_ALBEDO = 15
---Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
rl.SHADER_LOC_MAP_METALNESS = 16
---Shader location: sampler2d texture: normal
rl.SHADER_LOC_MAP_NORMAL = 17
---Shader location: sampler2d texture: roughness
rl.SHADER_LOC_MAP_ROUGHNESS = 18
---Shader location: sampler2d texture: occlusion
rl.SHADER_LOC_MAP_OCCLUSION = 19
---Shader location: sampler2d texture: emission
rl.SHADER_LOC_MAP_EMISSION = 20
---Shader location: sampler2d texture: height
rl.SHADER_LOC_MAP_HEIGHT = 21
---Shader location: samplerCube texture: cubemap
rl.SHADER_LOC_MAP_CUBEMAP = 22
---Shader location: samplerCube texture: irradiance
rl.SHADER_LOC_MAP_IRRADIANCE = 23
---Shader location: samplerCube texture: prefilter
rl.SHADER_LOC_MAP_PREFILTER = 24
---Shader location: sampler2d texture: brdf
rl.SHADER_LOC_MAP_BRDF = 25
---@alias ShaderUniformDataType
---| 'SHADER_UNIFORM_FLOAT'
---| 'SHADER_UNIFORM_VEC2'
---| 'SHADER_UNIFORM_VEC3'
---| 'SHADER_UNIFORM_VEC4'
---| 'SHADER_UNIFORM_INT'
---| 'SHADER_UNIFORM_IVEC2'
---| 'SHADER_UNIFORM_IVEC3'
---| 'SHADER_UNIFORM_IVEC4'
---| 'SHADER_UNIFORM_SAMPLER2D'
---Shader uniform data type

---Shader uniform type: float
rl.SHADER_UNIFORM_FLOAT = 0
---Shader uniform type: vec2 (2 float)
rl.SHADER_UNIFORM_VEC2 = 1
---Shader uniform type: vec3 (3 float)
rl.SHADER_UNIFORM_VEC3 = 2
---Shader uniform type: vec4 (4 float)
rl.SHADER_UNIFORM_VEC4 = 3
---Shader uniform type: int
rl.SHADER_UNIFORM_INT = 4
---Shader uniform type: ivec2 (2 int)
rl.SHADER_UNIFORM_IVEC2 = 5
---Shader uniform type: ivec3 (3 int)
rl.SHADER_UNIFORM_IVEC3 = 6
---Shader uniform type: ivec4 (4 int)
rl.SHADER_UNIFORM_IVEC4 = 7
---Shader uniform type: sampler2d
rl.SHADER_UNIFORM_SAMPLER2D = 8
---@alias ShaderAttributeDataType
---| 'SHADER_ATTRIB_FLOAT'
---| 'SHADER_ATTRIB_VEC2'
---| 'SHADER_ATTRIB_VEC3'
---| 'SHADER_ATTRIB_VEC4'
---Shader attribute data types

---Shader attribute type: float
rl.SHADER_ATTRIB_FLOAT = 0
---Shader attribute type: vec2 (2 float)
rl.SHADER_ATTRIB_VEC2 = 1
---Shader attribute type: vec3 (3 float)
rl.SHADER_ATTRIB_VEC3 = 2
---Shader attribute type: vec4 (4 float)
rl.SHADER_ATTRIB_VEC4 = 3
---@alias PixelFormat
---| 'PIXELFORMAT_UNCOMPRESSED_GRAYSCALE'
---| 'PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA'
---| 'PIXELFORMAT_UNCOMPRESSED_R5G6B5'
---| 'PIXELFORMAT_UNCOMPRESSED_R8G8B8'
---| 'PIXELFORMAT_UNCOMPRESSED_R5G5B5A1'
---| 'PIXELFORMAT_UNCOMPRESSED_R4G4B4A4'
---| 'PIXELFORMAT_UNCOMPRESSED_R8G8B8A8'
---| 'PIXELFORMAT_UNCOMPRESSED_R32'
---| 'PIXELFORMAT_UNCOMPRESSED_R32G32B32'
---| 'PIXELFORMAT_UNCOMPRESSED_R32G32B32A32'
---| 'PIXELFORMAT_COMPRESSED_DXT1_RGB'
---| 'PIXELFORMAT_COMPRESSED_DXT1_RGBA'
---| 'PIXELFORMAT_COMPRESSED_DXT3_RGBA'
---| 'PIXELFORMAT_COMPRESSED_DXT5_RGBA'
---| 'PIXELFORMAT_COMPRESSED_ETC1_RGB'
---| 'PIXELFORMAT_COMPRESSED_ETC2_RGB'
---| 'PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA'
---| 'PIXELFORMAT_COMPRESSED_PVRT_RGB'
---| 'PIXELFORMAT_COMPRESSED_PVRT_RGBA'
---| 'PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA'
---| 'PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA'
---Pixel formats

---8 bit per pixel (no alpha)
rl.PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1
---8*2 bpp (2 channels)
rl.PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2
---16 bpp
rl.PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3
---24 bpp
rl.PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4
---16 bpp (1 bit alpha)
rl.PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5
---16 bpp (4 bit alpha)
rl.PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6
---32 bpp
rl.PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7
---32 bpp (1 channel - float)
rl.PIXELFORMAT_UNCOMPRESSED_R32 = 8
---32*3 bpp (3 channels - float)
rl.PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9
---32*4 bpp (4 channels - float)
rl.PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10
---4 bpp (no alpha)
rl.PIXELFORMAT_COMPRESSED_DXT1_RGB = 11
---4 bpp (1 bit alpha)
rl.PIXELFORMAT_COMPRESSED_DXT1_RGBA = 12
---8 bpp
rl.PIXELFORMAT_COMPRESSED_DXT3_RGBA = 13
---8 bpp
rl.PIXELFORMAT_COMPRESSED_DXT5_RGBA = 14
---4 bpp
rl.PIXELFORMAT_COMPRESSED_ETC1_RGB = 15
---4 bpp
rl.PIXELFORMAT_COMPRESSED_ETC2_RGB = 16
---8 bpp
rl.PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 17
---4 bpp
rl.PIXELFORMAT_COMPRESSED_PVRT_RGB = 18
---4 bpp
rl.PIXELFORMAT_COMPRESSED_PVRT_RGBA = 19
---8 bpp
rl.PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 20
---2 bpp
rl.PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 21
---@alias TextureFilter
---| 'TEXTURE_FILTER_POINT'
---| 'TEXTURE_FILTER_BILINEAR'
---| 'TEXTURE_FILTER_TRILINEAR'
---| 'TEXTURE_FILTER_ANISOTROPIC_4X'
---| 'TEXTURE_FILTER_ANISOTROPIC_8X'
---| 'TEXTURE_FILTER_ANISOTROPIC_16X'
---Texture parameters: filter mode

---No filter, just pixel approximation
rl.TEXTURE_FILTER_POINT = 0
---Linear filtering
rl.TEXTURE_FILTER_BILINEAR = 1
---Trilinear filtering (linear with mipmaps)
rl.TEXTURE_FILTER_TRILINEAR = 2
---Anisotropic filtering 4x
rl.TEXTURE_FILTER_ANISOTROPIC_4X = 3
---Anisotropic filtering 8x
rl.TEXTURE_FILTER_ANISOTROPIC_8X = 4
---Anisotropic filtering 16x
rl.TEXTURE_FILTER_ANISOTROPIC_16X = 5
---@alias TextureWrap
---| 'TEXTURE_WRAP_REPEAT'
---| 'TEXTURE_WRAP_CLAMP'
---| 'TEXTURE_WRAP_MIRROR_REPEAT'
---| 'TEXTURE_WRAP_MIRROR_CLAMP'
---Texture parameters: wrap mode

---Repeats texture in tiled mode
rl.TEXTURE_WRAP_REPEAT = 0
---Clamps texture to edge pixel in tiled mode
rl.TEXTURE_WRAP_CLAMP = 1
---Mirrors and repeats the texture in tiled mode
rl.TEXTURE_WRAP_MIRROR_REPEAT = 2
---Mirrors and clamps to border the texture in tiled mode
rl.TEXTURE_WRAP_MIRROR_CLAMP = 3
---@alias CubemapLayout
---| 'CUBEMAP_LAYOUT_AUTO_DETECT'
---| 'CUBEMAP_LAYOUT_LINE_VERTICAL'
---| 'CUBEMAP_LAYOUT_LINE_HORIZONTAL'
---| 'CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR'
---| 'CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE'
---| 'CUBEMAP_LAYOUT_PANORAMA'
---Cubemap layouts

---Automatically detect layout type
rl.CUBEMAP_LAYOUT_AUTO_DETECT = 0
---Layout is defined by a vertical line with faces
rl.CUBEMAP_LAYOUT_LINE_VERTICAL = 1
---Layout is defined by a horizontal line with faces
rl.CUBEMAP_LAYOUT_LINE_HORIZONTAL = 2
---Layout is defined by a 3x4 cross with cubemap faces
rl.CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = 3
---Layout is defined by a 4x3 cross with cubemap faces
rl.CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = 4
---Layout is defined by a panorama image (equirrectangular map)
rl.CUBEMAP_LAYOUT_PANORAMA = 5
---@alias FontType
---| 'FONT_DEFAULT'
---| 'FONT_BITMAP'
---| 'FONT_SDF'
---Font type, defines generation method

---Default font generation, anti-aliased
rl.FONT_DEFAULT = 0
---Bitmap font generation, no anti-aliasing
rl.FONT_BITMAP = 1
---SDF font generation, requires external shader
rl.FONT_SDF = 2
---@alias BlendMode
---| 'BLEND_ALPHA'
---| 'BLEND_ADDITIVE'
---| 'BLEND_MULTIPLIED'
---| 'BLEND_ADD_COLORS'
---| 'BLEND_SUBTRACT_COLORS'
---| 'BLEND_ALPHA_PREMULTIPLY'
---| 'BLEND_CUSTOM'
---| 'BLEND_CUSTOM_SEPARATE'
---Color blending modes (pre-defined)

---Blend textures considering alpha (default)
rl.BLEND_ALPHA = 0
---Blend textures adding colors
rl.BLEND_ADDITIVE = 1
---Blend textures multiplying colors
rl.BLEND_MULTIPLIED = 2
---Blend textures adding colors (alternative)
rl.BLEND_ADD_COLORS = 3
---Blend textures subtracting colors (alternative)
rl.BLEND_SUBTRACT_COLORS = 4
---Blend premultiplied textures considering alpha
rl.BLEND_ALPHA_PREMULTIPLY = 5
---Blend textures using custom src/dst factors (use rlSetBlendFactors())
rl.BLEND_CUSTOM = 6
---Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
rl.BLEND_CUSTOM_SEPARATE = 7
---@alias Gesture
---| 'GESTURE_NONE'
---| 'GESTURE_TAP'
---| 'GESTURE_DOUBLETAP'
---| 'GESTURE_HOLD'
---| 'GESTURE_DRAG'
---| 'GESTURE_SWIPE_RIGHT'
---| 'GESTURE_SWIPE_LEFT'
---| 'GESTURE_SWIPE_UP'
---| 'GESTURE_SWIPE_DOWN'
---| 'GESTURE_PINCH_IN'
---| 'GESTURE_PINCH_OUT'
---Gesture

---No gesture
rl.GESTURE_NONE = 0
---Tap gesture
rl.GESTURE_TAP = 1
---Double tap gesture
rl.GESTURE_DOUBLETAP = 2
---Hold gesture
rl.GESTURE_HOLD = 4
---Drag gesture
rl.GESTURE_DRAG = 8
---Swipe right gesture
rl.GESTURE_SWIPE_RIGHT = 16
---Swipe left gesture
rl.GESTURE_SWIPE_LEFT = 32
---Swipe up gesture
rl.GESTURE_SWIPE_UP = 64
---Swipe down gesture
rl.GESTURE_SWIPE_DOWN = 128
---Pinch in gesture
rl.GESTURE_PINCH_IN = 256
---Pinch out gesture
rl.GESTURE_PINCH_OUT = 512
---@alias CameraMode
---| 'CAMERA_CUSTOM'
---| 'CAMERA_FREE'
---| 'CAMERA_ORBITAL'
---| 'CAMERA_FIRST_PERSON'
---| 'CAMERA_THIRD_PERSON'
---Camera system modes

---Custom camera
rl.CAMERA_CUSTOM = 0
---Free camera
rl.CAMERA_FREE = 1
---Orbital camera
rl.CAMERA_ORBITAL = 2
---First person camera
rl.CAMERA_FIRST_PERSON = 3
---Third person camera
rl.CAMERA_THIRD_PERSON = 4
---@alias CameraProjection
---| 'CAMERA_PERSPECTIVE'
---| 'CAMERA_ORTHOGRAPHIC'
---Camera projection

---Perspective projection
rl.CAMERA_PERSPECTIVE = 0
---Orthographic projection
rl.CAMERA_ORTHOGRAPHIC = 1
---@alias NPatchLayout
---| 'NPATCH_NINE_PATCH'
---| 'NPATCH_THREE_PATCH_VERTICAL'
---| 'NPATCH_THREE_PATCH_HORIZONTAL'
---N-patch layout

---Npatch layout: 3x3 tiles
rl.NPATCH_NINE_PATCH = 0
---Npatch layout: 1x3 tiles
rl.NPATCH_THREE_PATCH_VERTICAL = 1
---Npatch layout: 3x1 tiles
rl.NPATCH_THREE_PATCH_HORIZONTAL = 2
---@class Vector2 @ Vector2, 2 components
---@alias Vector2_ptr Vector2
---@alias Vector2_ptr_ptr Vector2
---@field x number # Vector x component
---@field y number # Vector y component
---Constructed using `rl.new("Vector2", ...)`
local Vector2 = {}
---@class Vector3 @ Vector3, 3 components
---@alias Vector3_ptr Vector3
---@alias Vector3_ptr_ptr Vector3
---@field x number # Vector x component
---@field y number # Vector y component
---@field z number # Vector z component
---Constructed using `rl.new("Vector3", ...)`
local Vector3 = {}
---@class Vector4 @ Vector4, 4 components
---@alias Vector4_ptr Vector4
---@alias Vector4_ptr_ptr Vector4
---@field x number # Vector x component
---@field y number # Vector y component
---@field z number # Vector z component
---@field w number # Vector w component
---Constructed using `rl.new("Vector4", ...)`
local Vector4 = {}
---@class Matrix @ Matrix, 4x4 components, column major, OpenGL style, right-handed
---@alias Matrix_ptr Matrix
---@alias Matrix_ptr_ptr Matrix
---@field m0 number # Matrix first row (4 components)
---@field m4 number # Matrix first row (4 components)
---@field m8 number # Matrix first row (4 components)
---@field m12 number # Matrix first row (4 components)
---@field m1 number # Matrix second row (4 components)
---@field m5 number # Matrix second row (4 components)
---@field m9 number # Matrix second row (4 components)
---@field m13 number # Matrix second row (4 components)
---@field m2 number # Matrix third row (4 components)
---@field m6 number # Matrix third row (4 components)
---@field m10 number # Matrix third row (4 components)
---@field m14 number # Matrix third row (4 components)
---@field m3 number # Matrix fourth row (4 components)
---@field m7 number # Matrix fourth row (4 components)
---@field m11 number # Matrix fourth row (4 components)
---@field m15 number # Matrix fourth row (4 components)
---Constructed using `rl.new("Matrix", ...)`
local Matrix = {}
---@class Color @ Color, 4 components, R8G8B8A8 (32bit)
---@alias Color_ptr Color
---@alias Color_ptr_ptr Color
---@field r number|string[] # Color red value
---@field g number|string[] # Color green value
---@field b number|string[] # Color blue value
---@field a number|string[] # Color alpha value
---Constructed using `rl.new("Color", ...)`
local Color = {}
---@class Rectangle @ Rectangle, 4 components
---@alias Rectangle_ptr Rectangle
---@alias Rectangle_ptr_ptr Rectangle
---@field x number # Rectangle top-left corner position x
---@field y number # Rectangle top-left corner position y
---@field width number # Rectangle width
---@field height number # Rectangle height
---Constructed using `rl.new("Rectangle", ...)`
local Rectangle = {}
---@class Image @ Image, pixel data stored in CPU memory (RAM)
---@alias Image_ptr Image
---@alias Image_ptr_ptr Image
---@field data string|lightuserdata # Image raw data
---@field width number # Image base width
---@field height number # Image base height
---@field mipmaps number # Mipmap levels, 1 by default
---@field format number # Data format (PixelFormat type)
---Constructed using `rl.new("Image", ...)`
local Image = {}
---@class Texture @ Texture, tex data stored in GPU memory (VRAM)
---@alias Texture_ptr Texture
---@alias Texture_ptr_ptr Texture
---@alias Texture2D Texture
---@field id number # OpenGL texture id
---@field width number # Texture base width
---@field height number # Texture base height
---@field mipmaps number # Mipmap levels, 1 by default
---@field format number # Data format (PixelFormat type)
---Constructed using `rl.new("Texture", ...)`
local Texture = {}
---@class RenderTexture @ RenderTexture, fbo for texture rendering
---@alias RenderTexture_ptr RenderTexture
---@alias RenderTexture_ptr_ptr RenderTexture
---@alias RenderTexture2D RenderTexture
---@field id number # OpenGL framebuffer object id
---@field texture Texture # Color buffer attachment texture
---@field depth Texture # Depth buffer attachment texture
---Constructed using `rl.new("RenderTexture", ...)`
local RenderTexture = {}
---@class NPatchInfo @ NPatchInfo, n-patch layout info
---@alias NPatchInfo_ptr NPatchInfo
---@alias NPatchInfo_ptr_ptr NPatchInfo
---@field source Rectangle # Texture source rectangle
---@field left number # Left border offset
---@field top number # Top border offset
---@field right number # Right border offset
---@field bottom number # Bottom border offset
---@field layout number # Layout of the n-patch: 3x3, 1x3 or 3x1
---Constructed using `rl.new("NPatchInfo", ...)`
local NPatchInfo = {}
---@class GlyphInfo @ GlyphInfo, font characters glyphs info
---@alias GlyphInfo_ptr GlyphInfo
---@alias GlyphInfo_ptr_ptr GlyphInfo
---@field value number # Character value (Unicode)
---@field offsetX number # Character offset X when drawing
---@field offsetY number # Character offset Y when drawing
---@field advanceX number # Character advance position X
---@field image Image # Character image data
---Constructed using `rl.new("GlyphInfo", ...)`
local GlyphInfo = {}
---@class Font @ Font, font texture and GlyphInfo array data
---@alias Font_ptr Font
---@alias Font_ptr_ptr Font
---@field baseSize number # Base size (default chars height)
---@field glyphCount number # Number of glyph characters
---@field glyphPadding number # Padding around the glyph characters
---@field texture Texture2D # Texture atlas containing the glyphs
---@field recs Rectangle_ptr|lightuserdata # Rectangles in texture for the glyphs
---@field glyphs GlyphInfo_ptr|lightuserdata # Glyphs info data
---Constructed using `rl.new("Font", ...)`
local Font = {}
---@class Camera3D @ Camera, defines position/orientation in 3d space
---@alias Camera3D_ptr Camera3D
---@alias Camera3D_ptr_ptr Camera3D
---@field position Vector3 # Camera position
---@field target Vector3 # Camera target it looks-at
---@field up Vector3 # Camera up vector (rotation over its axis)
---@field fovy number # Camera field-of-view aperture in Y (degrees) in perspective, used as near plane width in orthographic
---@field projection number # Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
---Constructed using `rl.new("Camera3D", ...)`
local Camera3D = {}
---@class Camera2D @ Camera2D, defines position/orientation in 2d space
---@alias Camera2D_ptr Camera2D
---@alias Camera2D_ptr_ptr Camera2D
---@field offset Vector2 # Camera offset (displacement from target)
---@field target Vector2 # Camera target (rotation and zoom origin)
---@field rotation number # Camera rotation in degrees
---@field zoom number # Camera zoom (scaling), should be 1.0f by default
---Constructed using `rl.new("Camera2D", ...)`
local Camera2D = {}
---@class Mesh @ Mesh, vertex data and vao/vbo
---@alias Mesh_ptr Mesh
---@alias Mesh_ptr_ptr Mesh
---@field vertexCount number # Number of vertices stored in arrays
---@field triangleCount number # Number of triangles stored (indexed or not)
---@field vertices number # Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
---@field texcoords number # Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
---@field texcoords2 number # Vertex texture second coordinates (UV - 2 components per vertex) (shader-location = 5)
---@field normals number # Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
---@field tangents number # Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
---@field colors string|lightuserdata # Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
---@field indices unsigned_short_ptr|lightuserdata # Vertex indices (in case vertex data comes indexed)
---@field animVertices number # Animated vertex positions (after bones transformations)
---@field animNormals number # Animated normals (after bones transformations)
---@field boneIds string|lightuserdata # Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
---@field boneWeights number # Vertex bone weight, up to 4 bones influence by vertex (skinning)
---@field vaoId number # OpenGL Vertex Array Object id
---@field vboId number # OpenGL Vertex Buffer Objects id (default vertex data)
---Constructed using `rl.new("Mesh", ...)`
local Mesh = {}
---@class Shader @ Shader
---@alias Shader_ptr Shader
---@alias Shader_ptr_ptr Shader
---@field id number # Shader program id
---@field locs number # Shader locations array (RL_MAX_SHADER_LOCATIONS)
---Constructed using `rl.new("Shader", ...)`
local Shader = {}
---@class MaterialMap @ MaterialMap
---@alias MaterialMap_ptr MaterialMap
---@alias MaterialMap_ptr_ptr MaterialMap
---@field texture Texture2D # Material map texture
---@field color Color # Material map color
---@field value number # Material map value
---Constructed using `rl.new("MaterialMap", ...)`
local MaterialMap = {}
---@class Material @ Material, includes shader and maps
---@alias Material_ptr Material
---@alias Material_ptr_ptr Material
---@field shader Shader # Material shader
---@field maps MaterialMap_ptr|lightuserdata # Material maps array (MAX_MATERIAL_MAPS)
---@field params number # Material generic parameters (if required)
---Constructed using `rl.new("Material", ...)`
local Material = {}
---@class Transform @ Transform, vertex transformation data
---@alias Transform_ptr Transform
---@alias Transform_ptr_ptr Transform
---@field translation Vector3 # Translation
---@field rotation Quaternion # Rotation
---@field scale Vector3 # Scale
---Constructed using `rl.new("Transform", ...)`
local Transform = {}
---@class BoneInfo @ Bone, skeletal animation bone
---@alias BoneInfo_ptr BoneInfo
---@alias BoneInfo_ptr_ptr BoneInfo
---@field name number|string[] # Bone name
---@field parent number # Bone parent
---Constructed using `rl.new("BoneInfo", ...)`
local BoneInfo = {}
---@class Model @ Model, meshes, materials and animation data
---@alias Model_ptr Model
---@alias Model_ptr_ptr Model
---@field transform Matrix # Local transform matrix
---@field meshCount number # Number of meshes
---@field materialCount number # Number of materials
---@field meshes Mesh_ptr|lightuserdata # Meshes array
---@field materials Material_ptr|lightuserdata # Materials array
---@field meshMaterial number # Mesh material number
---@field boneCount number # Number of bones
---@field bones BoneInfo_ptr|lightuserdata # Bones information (skeleton)
---@field bindPose Transform_ptr|lightuserdata # Bones base transformation (pose)
---Constructed using `rl.new("Model", ...)`
local Model = {}
---@class ModelAnimation @ ModelAnimation
---@alias ModelAnimation_ptr ModelAnimation
---@alias ModelAnimation_ptr_ptr ModelAnimation
---@field boneCount number # Number of bones
---@field frameCount number # Number of animation frames
---@field bones BoneInfo_ptr|lightuserdata # Bones information (skeleton)
---@field framePoses Transform_ptr_ptr|lightuserdata # Poses array by frame
---Constructed using `rl.new("ModelAnimation", ...)`
local ModelAnimation = {}
---@class Ray @ Ray, ray for raycasting
---@alias Ray_ptr Ray
---@alias Ray_ptr_ptr Ray
---@field position Vector3 # Ray position (origin)
---@field direction Vector3 # Ray direction
---Constructed using `rl.new("Ray", ...)`
local Ray = {}
---@class RayCollision @ RayCollision, ray hit information
---@alias RayCollision_ptr RayCollision
---@alias RayCollision_ptr_ptr RayCollision
---@field hit bool # Did the ray hit something?
---@field distance number # Distance to the nearest hit
---@field point Vector3 # Point of the nearest hit
---@field normal Vector3 # Surface normal of hit
---Constructed using `rl.new("RayCollision", ...)`
local RayCollision = {}
---@class BoundingBox @ BoundingBox
---@alias BoundingBox_ptr BoundingBox
---@alias BoundingBox_ptr_ptr BoundingBox
---@field min Vector3 # Minimum vertex box-corner
---@field max Vector3 # Maximum vertex box-corner
---Constructed using `rl.new("BoundingBox", ...)`
local BoundingBox = {}
---@class Wave @ Wave, audio wave data
---@alias Wave_ptr Wave
---@alias Wave_ptr_ptr Wave
---@field frameCount number # Total number of frames (considering channels)
---@field sampleRate number # Frequency (samples per second)
---@field sampleSize number # Bit depth (bits per sample): 8, 16, 32 (24 not supported)
---@field channels number # Number of channels (1-mono, 2-stereo, ...)
---@field data string|lightuserdata # Buffer data pointer
---Constructed using `rl.new("Wave", ...)`
local Wave = {}
---@class AudioStream @ AudioStream, custom audio stream
---@alias AudioStream_ptr AudioStream
---@alias AudioStream_ptr_ptr AudioStream
---@field buffer rAudioBuffer_ptr|lightuserdata # Pointer to internal data used by the audio system
---@field processor rAudioProcessor_ptr|lightuserdata # Pointer to internal data processor, useful for audio effects
---@field sampleRate number # Frequency (samples per second)
---@field sampleSize number # Bit depth (bits per sample): 8, 16, 32 (24 not supported)
---@field channels number # Number of channels (1-mono, 2-stereo, ...)
---Constructed using `rl.new("AudioStream", ...)`
local AudioStream = {}
---@class Sound @ Sound
---@alias Sound_ptr Sound
---@alias Sound_ptr_ptr Sound
---@field stream AudioStream # Audio stream
---@field frameCount number # Total number of frames (considering channels)
---Constructed using `rl.new("Sound", ...)`
local Sound = {}
---@class Music @ Music, audio stream, anything longer than ~10 seconds should be streamed
---@alias Music_ptr Music
---@alias Music_ptr_ptr Music
---@field stream AudioStream # Audio stream
---@field frameCount number # Total number of frames (considering channels)
---@field looping bool # Music looping enable
---@field ctxType number # Type of music context (audio filetype)
---@field ctxData string|lightuserdata # Audio context data, depends on type
---Constructed using `rl.new("Music", ...)`
local Music = {}
---@class VrDeviceInfo @ VrDeviceInfo, Head-Mounted-Display device parameters
---@alias VrDeviceInfo_ptr VrDeviceInfo
---@alias VrDeviceInfo_ptr_ptr VrDeviceInfo
---@field hResolution number # Horizontal resolution in pixels
---@field vResolution number # Vertical resolution in pixels
---@field hScreenSize number # Horizontal size in meters
---@field vScreenSize number # Vertical size in meters
---@field vScreenCenter number # Screen center in meters
---@field eyeToScreenDistance number # Distance between eye and display in meters
---@field lensSeparationDistance number # Lens separation distance in meters
---@field interpupillaryDistance number # IPD (distance between pupils) in meters
---@field lensDistortionValues number # Lens distortion constant parameters
---@field chromaAbCorrection number # Chromatic aberration correction parameters
---Constructed using `rl.new("VrDeviceInfo", ...)`
local VrDeviceInfo = {}
---@class VrStereoConfig @ VrStereoConfig, VR stereo rendering configuration for simulator
---@alias VrStereoConfig_ptr VrStereoConfig
---@alias VrStereoConfig_ptr_ptr VrStereoConfig
---@field projection Matrix[2] # VR projection matrices (per eye)
---@field viewOffset Matrix[2] # VR view offset matrices (per eye)
---@field leftLensCenter number # VR left lens center
---@field rightLensCenter number # VR right lens center
---@field leftScreenCenter number # VR left screen center
---@field rightScreenCenter number # VR right screen center
---@field scale number # VR distortion scale
---@field scaleIn number # VR distortion scale in
---Constructed using `rl.new("VrStereoConfig", ...)`
local VrStereoConfig = {}
---@class FilePathList @ File path list
---@alias FilePathList_ptr FilePathList
---@alias FilePathList_ptr_ptr FilePathList
---@field capacity number # Filepaths max entries
---@field count number # Filepaths entries count
---@field paths string|lightuserdata # Filepaths entries
---Constructed using `rl.new("FilePathList", ...)`
local FilePathList = {}
---@param width number
---@param height number
---@param title string|lightuserdata
---Initialize window and OpenGL context
function rl.InitWindow(width,height,title) end
---@return bool
---Check if KEY_ESCAPE pressed or Close icon pressed
function rl.WindowShouldClose() end
---Close window and unload OpenGL context
function rl.CloseWindow() end
---@return bool
---Check if window has been initialized successfully
function rl.IsWindowReady() end
---@return bool
---Check if window is currently fullscreen
function rl.IsWindowFullscreen() end
---@return bool
---Check if window is currently hidden (only PLATFORM_DESKTOP)
function rl.IsWindowHidden() end
---@return bool
---Check if window is currently minimized (only PLATFORM_DESKTOP)
function rl.IsWindowMinimized() end
---@return bool
---Check if window is currently maximized (only PLATFORM_DESKTOP)
function rl.IsWindowMaximized() end
---@return bool
---Check if window is currently focused (only PLATFORM_DESKTOP)
function rl.IsWindowFocused() end
---@return bool
---Check if window has been resized last frame
function rl.IsWindowResized() end
---@param flag number
---@return bool
---Check if one specific window flag is enabled
function rl.IsWindowState(flag) end
---@param flags number
---Set window configuration state using flags (only PLATFORM_DESKTOP)
function rl.SetWindowState(flags) end
---@param flags number
---Clear window configuration state flags
function rl.ClearWindowState(flags) end
---Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
function rl.ToggleFullscreen() end
---Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
function rl.MaximizeWindow() end
---Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
function rl.MinimizeWindow() end
---Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
function rl.RestoreWindow() end
---@param image Image
---Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
function rl.SetWindowIcon(image) end
---@param images Image_ptr|lightuserdata
---@param count number
---Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
function rl.SetWindowIcons(images,count) end
---@param title string|lightuserdata
---Set title for window (only PLATFORM_DESKTOP)
function rl.SetWindowTitle(title) end
---@param x number
---@param y number
---Set window position on screen (only PLATFORM_DESKTOP)
function rl.SetWindowPosition(x,y) end
---@param monitor number
---Set monitor for the current window (fullscreen mode)
function rl.SetWindowMonitor(monitor) end
---@param width number
---@param height number
---Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
function rl.SetWindowMinSize(width,height) end
---@param width number
---@param height number
---Set window dimensions
function rl.SetWindowSize(width,height) end
---@param opacity number
---Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
function rl.SetWindowOpacity(opacity) end
---@return string|lightuserdata
---Get native window handle
function rl.GetWindowHandle() end
---@return number
---Get current screen width
function rl.GetScreenWidth() end
---@return number
---Get current screen height
function rl.GetScreenHeight() end
---@return number
---Get current render width (it considers HiDPI)
function rl.GetRenderWidth() end
---@return number
---Get current render height (it considers HiDPI)
function rl.GetRenderHeight() end
---@return number
---Get number of connected monitors
function rl.GetMonitorCount() end
---@return number
---Get current connected monitor
function rl.GetCurrentMonitor() end
---@param monitor number
---@return Vector2
---Get specified monitor position
function rl.GetMonitorPosition(monitor) end
---@param monitor number
---@return number
---Get specified monitor width (current video mode used by monitor)
function rl.GetMonitorWidth(monitor) end
---@param monitor number
---@return number
---Get specified monitor height (current video mode used by monitor)
function rl.GetMonitorHeight(monitor) end
---@param monitor number
---@return number
---Get specified monitor physical width in millimetres
function rl.GetMonitorPhysicalWidth(monitor) end
---@param monitor number
---@return number
---Get specified monitor physical height in millimetres
function rl.GetMonitorPhysicalHeight(monitor) end
---@param monitor number
---@return number
---Get specified monitor refresh rate
function rl.GetMonitorRefreshRate(monitor) end
---@return Vector2
---Get window position XY on monitor
function rl.GetWindowPosition() end
---@return Vector2
---Get window scale DPI factor
function rl.GetWindowScaleDPI() end
---@param monitor number
---@return string|lightuserdata
---Get the human-readable, UTF-8 encoded name of the primary monitor
function rl.GetMonitorName(monitor) end
---@param text string|lightuserdata
---Set clipboard text content
function rl.SetClipboardText(text) end
---@return string|lightuserdata
---Get clipboard text content
function rl.GetClipboardText() end
---Enable waiting for events on EndDrawing(), no automatic event polling
function rl.EnableEventWaiting() end
---Disable waiting for events on EndDrawing(), automatic events polling
function rl.DisableEventWaiting() end
---Swap back buffer with front buffer (screen drawing)
function rl.SwapScreenBuffer() end
---Register all input events
function rl.PollInputEvents() end
---@param seconds number
---Wait for some time (halt program execution)
function rl.WaitTime(seconds) end
---Shows cursor
function rl.ShowCursor() end
---Hides cursor
function rl.HideCursor() end
---@return bool
---Check if cursor is not visible
function rl.IsCursorHidden() end
---Enables cursor (unlock cursor)
function rl.EnableCursor() end
---Disables cursor (lock cursor)
function rl.DisableCursor() end
---@return bool
---Check if cursor is on the screen
function rl.IsCursorOnScreen() end
---@param color Color
---Set background color (framebuffer clear color)
function rl.ClearBackground(color) end
---Setup canvas (framebuffer) to start drawing
function rl.BeginDrawing() end
---End canvas drawing and swap buffers (double buffering)
function rl.EndDrawing() end
---@param camera Camera2D
---Begin 2D mode with custom camera (2D)
function rl.BeginMode2D(camera) end
---Ends 2D mode with custom camera
function rl.EndMode2D() end
---@param camera Camera3D
---Begin 3D mode with custom camera (3D)
function rl.BeginMode3D(camera) end
---Ends 3D mode and returns to default 2D orthographic mode
function rl.EndMode3D() end
---@param target RenderTexture2D
---Begin drawing to render texture
function rl.BeginTextureMode(target) end
---Ends drawing to render texture
function rl.EndTextureMode() end
---@param shader Shader
---Begin custom shader drawing
function rl.BeginShaderMode(shader) end
---End custom shader drawing (use default shader)
function rl.EndShaderMode() end
---@param mode number
---Begin blending mode (alpha, additive, multiplied, subtract, custom)
function rl.BeginBlendMode(mode) end
---End blending mode (reset to default: alpha blending)
function rl.EndBlendMode() end
---@param x number
---@param y number
---@param width number
---@param height number
---Begin scissor mode (define screen area for following drawing)
function rl.BeginScissorMode(x,y,width,height) end
---End scissor mode
function rl.EndScissorMode() end
---@param config VrStereoConfig
---Begin stereo rendering (requires VR simulator)
function rl.BeginVrStereoMode(config) end
---End stereo rendering (requires VR simulator)
function rl.EndVrStereoMode() end
---@param device VrDeviceInfo
---@return VrStereoConfig
---Load VR stereo config for VR simulator device parameters
function rl.LoadVrStereoConfig(device) end
---@param config VrStereoConfig
---Unload VR stereo config
function rl.UnloadVrStereoConfig(config) end
---@param vsFileName string|lightuserdata
---@param fsFileName string|lightuserdata
---@return Shader
---Load shader from files and bind default locations
function rl.LoadShader(vsFileName,fsFileName) end
---@param vsCode string|lightuserdata
---@param fsCode string|lightuserdata
---@return Shader
---Load shader from code strings and bind default locations
function rl.LoadShaderFromMemory(vsCode,fsCode) end
---@param shader Shader
---@return bool
---Check if a shader is ready
function rl.IsShaderReady(shader) end
---@param shader Shader
---@param uniformName string|lightuserdata
---@return number
---Get shader uniform location
function rl.GetShaderLocation(shader,uniformName) end
---@param shader Shader
---@param attribName string|lightuserdata
---@return number
---Get shader attribute location
function rl.GetShaderLocationAttrib(shader,attribName) end
---@param shader Shader
---@param locIndex number
---@param value string|lightuserdata
---@param uniformType number
---Set shader uniform value
function rl.SetShaderValue(shader,locIndex,value,uniformType) end
---@param shader Shader
---@param locIndex number
---@param value string|lightuserdata
---@param uniformType number
---@param count number
---Set shader uniform value vector
function rl.SetShaderValueV(shader,locIndex,value,uniformType,count) end
---@param shader Shader
---@param locIndex number
---@param mat Matrix
---Set shader uniform value (matrix 4x4)
function rl.SetShaderValueMatrix(shader,locIndex,mat) end
---@param shader Shader
---@param locIndex number
---@param texture Texture2D
---Set shader uniform value for texture (sampler2d)
function rl.SetShaderValueTexture(shader,locIndex,texture) end
---@param shader Shader
---Unload shader from GPU memory (VRAM)
function rl.UnloadShader(shader) end
---@param mousePosition Vector2
---@param camera Camera
---@return Ray
---Get a ray trace from mouse position
function rl.GetMouseRay(mousePosition,camera) end
---@param camera Camera
---@return Matrix
---Get camera transform matrix (view matrix)
function rl.GetCameraMatrix(camera) end
---@param camera Camera2D
---@return Matrix
---Get camera 2d transform matrix
function rl.GetCameraMatrix2D(camera) end
---@param position Vector3
---@param camera Camera
---@return Vector2
---Get the screen space position for a 3d world space position
function rl.GetWorldToScreen(position,camera) end
---@param position Vector2
---@param camera Camera2D
---@return Vector2
---Get the world space position for a 2d camera screen space position
function rl.GetScreenToWorld2D(position,camera) end
---@param position Vector3
---@param camera Camera
---@param width number
---@param height number
---@return Vector2
---Get size position for a 3d world space position
function rl.GetWorldToScreenEx(position,camera,width,height) end
---@param position Vector2
---@param camera Camera2D
---@return Vector2
---Get the screen space position for a 2d camera world space position
function rl.GetWorldToScreen2D(position,camera) end
---@param fps number
---Set target FPS (maximum)
function rl.SetTargetFPS(fps) end
---@return number
---Get current FPS
function rl.GetFPS() end
---@return number
---Get time in seconds for last frame drawn (delta time)
function rl.GetFrameTime() end
---@return number
---Get elapsed time in seconds since InitWindow()
function rl.GetTime() end
---@param min number
---@param max number
---@return number
---Get a random value between min and max (both included)
function rl.GetRandomValue(min,max) end
---@param seed number
---Set the seed for the random number generator
function rl.SetRandomSeed(seed) end
---@param fileName string|lightuserdata
---Takes a screenshot of current screen (filename extension defines format)
function rl.TakeScreenshot(fileName) end
---@param flags number
---Setup init configuration flags (view FLAGS)
function rl.SetConfigFlags(flags) end
---@param logLevel number
---@param text string|lightuserdata
---@param args ...
---Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
function rl.TraceLog(logLevel,text,args) end
---@param logLevel number
---Set the current threshold (minimum) log level
function rl.SetTraceLogLevel(logLevel) end
---@param size number
---@return string|lightuserdata
---Internal memory allocator
function rl.MemAlloc(size) end
---@param ptr string|lightuserdata
---@param size number
---@return string|lightuserdata
---Internal memory reallocator
function rl.MemRealloc(ptr,size) end
---@param ptr string|lightuserdata
---Internal memory free
function rl.MemFree(ptr) end
---@param url string|lightuserdata
---Open URL with default system browser (if available)
function rl.OpenURL(url) end
---@param callback TraceLogCallback
---Set custom trace log
function rl.SetTraceLogCallback(callback) end
---@param callback LoadFileDataCallback
---Set custom file binary data loader
function rl.SetLoadFileDataCallback(callback) end
---@param callback SaveFileDataCallback
---Set custom file binary data saver
function rl.SetSaveFileDataCallback(callback) end
---@param callback LoadFileTextCallback
---Set custom file text data loader
function rl.SetLoadFileTextCallback(callback) end
---@param callback SaveFileTextCallback
---Set custom file text data saver
function rl.SetSaveFileTextCallback(callback) end
---@param fileName string|lightuserdata
---@param bytesRead number
---@return string|lightuserdata
---Load file data as byte array (read)
function rl.LoadFileData(fileName,bytesRead) end
---@param data string|lightuserdata
---Unload file data allocated by LoadFileData()
function rl.UnloadFileData(data) end
---@param fileName string|lightuserdata
---@param data string|lightuserdata
---@param bytesToWrite number
---@return bool
---Save data to file from byte array (write), returns true on success
function rl.SaveFileData(fileName,data,bytesToWrite) end
---@param data string|lightuserdata
---@param size number
---@param fileName string|lightuserdata
---@return bool
---Export data to code (.h), returns true on success
function rl.ExportDataAsCode(data,size,fileName) end
---@param fileName string|lightuserdata
---@return string|lightuserdata
---Load text data from file (read), returns a '\0' terminated string
function rl.LoadFileText(fileName) end
---@param text string|lightuserdata
---Unload file text data allocated by LoadFileText()
function rl.UnloadFileText(text) end
---@param fileName string|lightuserdata
---@param text string|lightuserdata
---@return bool
---Save text data to file (write), string must be '\0' terminated, returns true on success
function rl.SaveFileText(fileName,text) end
---@param fileName string|lightuserdata
---@return bool
---Check if file exists
function rl.FileExists(fileName) end
---@param dirPath string|lightuserdata
---@return bool
---Check if a directory path exists
function rl.DirectoryExists(dirPath) end
---@param fileName string|lightuserdata
---@param ext string|lightuserdata
---@return bool
---Check file extension (including point: .png, .wav)
function rl.IsFileExtension(fileName,ext) end
---@param fileName string|lightuserdata
---@return number
---Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
function rl.GetFileLength(fileName) end
---@param fileName string|lightuserdata
---@return string|lightuserdata
---Get pointer to extension for a filename string (includes dot: '.png')
function rl.GetFileExtension(fileName) end
---@param filePath string|lightuserdata
---@return string|lightuserdata
---Get pointer to filename for a path string
function rl.GetFileName(filePath) end
---@param filePath string|lightuserdata
---@return string|lightuserdata
---Get filename string without extension (uses static string)
function rl.GetFileNameWithoutExt(filePath) end
---@param filePath string|lightuserdata
---@return string|lightuserdata
---Get full path for a given fileName with path (uses static string)
function rl.GetDirectoryPath(filePath) end
---@param dirPath string|lightuserdata
---@return string|lightuserdata
---Get previous directory path for a given path (uses static string)
function rl.GetPrevDirectoryPath(dirPath) end
---@return string|lightuserdata
---Get current working directory (uses static string)
function rl.GetWorkingDirectory() end
---@return string|lightuserdata
---Get the directory if the running application (uses static string)
function rl.GetApplicationDirectory() end
---@param dir string|lightuserdata
---@return bool
---Change working directory, return true on success
function rl.ChangeDirectory(dir) end
---@param path string|lightuserdata
---@return bool
---Check if a given path is a file or a directory
function rl.IsPathFile(path) end
---@param dirPath string|lightuserdata
---@return FilePathList
---Load directory filepaths
function rl.LoadDirectoryFiles(dirPath) end
---@param basePath string|lightuserdata
---@param filter string|lightuserdata
---@param scanSubdirs bool
---@return FilePathList
---Load directory filepaths with extension filtering and recursive directory scan
function rl.LoadDirectoryFilesEx(basePath,filter,scanSubdirs) end
---@param files FilePathList
---Unload filepaths
function rl.UnloadDirectoryFiles(files) end
---@return bool
---Check if a file has been dropped into window
function rl.IsFileDropped() end
---@return FilePathList
---Load dropped filepaths
function rl.LoadDroppedFiles() end
---@param files FilePathList
---Unload dropped filepaths
function rl.UnloadDroppedFiles(files) end
---@param fileName string|lightuserdata
---@return number
---Get file modification time (last write time)
function rl.GetFileModTime(fileName) end
---@param data string|lightuserdata
---@param dataSize number
---@param compDataSize number
---@return string|lightuserdata
---Compress data (DEFLATE algorithm), memory must be MemFree()
function rl.CompressData(data,dataSize,compDataSize) end
---@param compData string|lightuserdata
---@param compDataSize number
---@param dataSize number
---@return string|lightuserdata
---Decompress data (DEFLATE algorithm), memory must be MemFree()
function rl.DecompressData(compData,compDataSize,dataSize) end
---@param data string|lightuserdata
---@param dataSize number
---@param outputSize number
---@return string|lightuserdata
---Encode data to Base64 string, memory must be MemFree()
function rl.EncodeDataBase64(data,dataSize,outputSize) end
---@param data string|lightuserdata
---@param outputSize number
---@return string|lightuserdata
---Decode Base64 string data, memory must be MemFree()
function rl.DecodeDataBase64(data,outputSize) end
---@param key number
---@return bool
---Check if a key has been pressed once
function rl.IsKeyPressed(key) end
---@param key number
---@return bool
---Check if a key is being pressed
function rl.IsKeyDown(key) end
---@param key number
---@return bool
---Check if a key has been released once
function rl.IsKeyReleased(key) end
---@param key number
---@return bool
---Check if a key is NOT being pressed
function rl.IsKeyUp(key) end
---@param key number
---Set a custom key to exit program (default is ESC)
function rl.SetExitKey(key) end
---@return number
---Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
function rl.GetKeyPressed() end
---@return number
---Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
function rl.GetCharPressed() end
---@param gamepad number
---@return bool
---Check if a gamepad is available
function rl.IsGamepadAvailable(gamepad) end
---@param gamepad number
---@return string|lightuserdata
---Get gamepad internal name id
function rl.GetGamepadName(gamepad) end
---@param gamepad number
---@param button number
---@return bool
---Check if a gamepad button has been pressed once
function rl.IsGamepadButtonPressed(gamepad,button) end
---@param gamepad number
---@param button number
---@return bool
---Check if a gamepad button is being pressed
function rl.IsGamepadButtonDown(gamepad,button) end
---@param gamepad number
---@param button number
---@return bool
---Check if a gamepad button has been released once
function rl.IsGamepadButtonReleased(gamepad,button) end
---@param gamepad number
---@param button number
---@return bool
---Check if a gamepad button is NOT being pressed
function rl.IsGamepadButtonUp(gamepad,button) end
---@return number
---Get the last gamepad button pressed
function rl.GetGamepadButtonPressed() end
---@param gamepad number
---@return number
---Get gamepad axis count for a gamepad
function rl.GetGamepadAxisCount(gamepad) end
---@param gamepad number
---@param axis number
---@return number
---Get axis movement value for a gamepad axis
function rl.GetGamepadAxisMovement(gamepad,axis) end
---@param mappings string|lightuserdata
---@return number
---Set internal gamepad mappings (SDL_GameControllerDB)
function rl.SetGamepadMappings(mappings) end
---@param button number
---@return bool
---Check if a mouse button has been pressed once
function rl.IsMouseButtonPressed(button) end
---@param button number
---@return bool
---Check if a mouse button is being pressed
function rl.IsMouseButtonDown(button) end
---@param button number
---@return bool
---Check if a mouse button has been released once
function rl.IsMouseButtonReleased(button) end
---@param button number
---@return bool
---Check if a mouse button is NOT being pressed
function rl.IsMouseButtonUp(button) end
---@return number
---Get mouse position X
function rl.GetMouseX() end
---@return number
---Get mouse position Y
function rl.GetMouseY() end
---@return Vector2
---Get mouse position XY
function rl.GetMousePosition() end
---@return Vector2
---Get mouse delta between frames
function rl.GetMouseDelta() end
---@param x number
---@param y number
---Set mouse position XY
function rl.SetMousePosition(x,y) end
---@param offsetX number
---@param offsetY number
---Set mouse offset
function rl.SetMouseOffset(offsetX,offsetY) end
---@param scaleX number
---@param scaleY number
---Set mouse scaling
function rl.SetMouseScale(scaleX,scaleY) end
---@return number
---Get mouse wheel movement for X or Y, whichever is larger
function rl.GetMouseWheelMove() end
---@return Vector2
---Get mouse wheel movement for both X and Y
function rl.GetMouseWheelMoveV() end
---@param cursor number
---Set mouse cursor
function rl.SetMouseCursor(cursor) end
---@return number
---Get touch position X for touch point 0 (relative to screen size)
function rl.GetTouchX() end
---@return number
---Get touch position Y for touch point 0 (relative to screen size)
function rl.GetTouchY() end
---@param index number
---@return Vector2
---Get touch position XY for a touch point index (relative to screen size)
function rl.GetTouchPosition(index) end
---@param index number
---@return number
---Get touch point identifier for given index
function rl.GetTouchPointId(index) end
---@return number
---Get number of touch points
function rl.GetTouchPointCount() end
---@param flags number
---Enable a set of gestures using flags
function rl.SetGesturesEnabled(flags) end
---@param gesture number
---@return bool
---Check if a gesture have been detected
function rl.IsGestureDetected(gesture) end
---@return number
---Get latest detected gesture
function rl.GetGestureDetected() end
---@return number
---Get gesture hold time in milliseconds
function rl.GetGestureHoldDuration() end
---@return Vector2
---Get gesture drag vector
function rl.GetGestureDragVector() end
---@return number
---Get gesture drag angle
function rl.GetGestureDragAngle() end
---@return Vector2
---Get gesture pinch delta
function rl.GetGesturePinchVector() end
---@return number
---Get gesture pinch angle
function rl.GetGesturePinchAngle() end
---@param camera Camera_ptr|lightuserdata
---@param mode number
---Update camera position for selected mode
function rl.UpdateCamera(camera,mode) end
---@param camera Camera_ptr|lightuserdata
---@param movement Vector3
---@param rotation Vector3
---@param zoom number
---Update camera movement/rotation
function rl.UpdateCameraPro(camera,movement,rotation,zoom) end
---@param texture Texture2D
---@param source Rectangle
---Set texture and rectangle to be used on shapes drawing
function rl.SetShapesTexture(texture,source) end
---@param posX number
---@param posY number
---@param color Color
---Draw a pixel
function rl.DrawPixel(posX,posY,color) end
---@param position Vector2
---@param color Color
---Draw a pixel (Vector version)
function rl.DrawPixelV(position,color) end
---@param startPosX number
---@param startPosY number
---@param endPosX number
---@param endPosY number
---@param color Color
---Draw a line
function rl.DrawLine(startPosX,startPosY,endPosX,endPosY,color) end
---@param startPos Vector2
---@param endPos Vector2
---@param color Color
---Draw a line (Vector version)
function rl.DrawLineV(startPos,endPos,color) end
---@param startPos Vector2
---@param endPos Vector2
---@param thick number
---@param color Color
---Draw a line defining thickness
function rl.DrawLineEx(startPos,endPos,thick,color) end
---@param startPos Vector2
---@param endPos Vector2
---@param thick number
---@param color Color
---Draw a line using cubic-bezier curves in-out
function rl.DrawLineBezier(startPos,endPos,thick,color) end
---@param startPos Vector2
---@param endPos Vector2
---@param controlPos Vector2
---@param thick number
---@param color Color
---Draw line using quadratic bezier curves with a control point
function rl.DrawLineBezierQuad(startPos,endPos,controlPos,thick,color) end
---@param startPos Vector2
---@param endPos Vector2
---@param startControlPos Vector2
---@param endControlPos Vector2
---@param thick number
---@param color Color
---Draw line using cubic bezier curves with 2 control points
function rl.DrawLineBezierCubic(startPos,endPos,startControlPos,endControlPos,thick,color) end
---@param points Vector2_ptr|lightuserdata
---@param pointCount number
---@param color Color
---Draw lines sequence
function rl.DrawLineStrip(points,pointCount,color) end
---@param centerX number
---@param centerY number
---@param radius number
---@param color Color
---Draw a color-filled circle
function rl.DrawCircle(centerX,centerY,radius,color) end
---@param center Vector2
---@param radius number
---@param startAngle number
---@param endAngle number
---@param segments number
---@param color Color
---Draw a piece of a circle
function rl.DrawCircleSector(center,radius,startAngle,endAngle,segments,color) end
---@param center Vector2
---@param radius number
---@param startAngle number
---@param endAngle number
---@param segments number
---@param color Color
---Draw circle sector outline
function rl.DrawCircleSectorLines(center,radius,startAngle,endAngle,segments,color) end
---@param centerX number
---@param centerY number
---@param radius number
---@param color1 Color
---@param color2 Color
---Draw a gradient-filled circle
function rl.DrawCircleGradient(centerX,centerY,radius,color1,color2) end
---@param center Vector2
---@param radius number
---@param color Color
---Draw a color-filled circle (Vector version)
function rl.DrawCircleV(center,radius,color) end
---@param centerX number
---@param centerY number
---@param radius number
---@param color Color
---Draw circle outline
function rl.DrawCircleLines(centerX,centerY,radius,color) end
---@param centerX number
---@param centerY number
---@param radiusH number
---@param radiusV number
---@param color Color
---Draw ellipse
function rl.DrawEllipse(centerX,centerY,radiusH,radiusV,color) end
---@param centerX number
---@param centerY number
---@param radiusH number
---@param radiusV number
---@param color Color
---Draw ellipse outline
function rl.DrawEllipseLines(centerX,centerY,radiusH,radiusV,color) end
---@param center Vector2
---@param innerRadius number
---@param outerRadius number
---@param startAngle number
---@param endAngle number
---@param segments number
---@param color Color
---Draw ring
function rl.DrawRing(center,innerRadius,outerRadius,startAngle,endAngle,segments,color) end
---@param center Vector2
---@param innerRadius number
---@param outerRadius number
---@param startAngle number
---@param endAngle number
---@param segments number
---@param color Color
---Draw ring outline
function rl.DrawRingLines(center,innerRadius,outerRadius,startAngle,endAngle,segments,color) end
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param color Color
---Draw a color-filled rectangle
function rl.DrawRectangle(posX,posY,width,height,color) end
---@param position Vector2
---@param size Vector2
---@param color Color
---Draw a color-filled rectangle (Vector version)
function rl.DrawRectangleV(position,size,color) end
---@param rec Rectangle
---@param color Color
---Draw a color-filled rectangle
function rl.DrawRectangleRec(rec,color) end
---@param rec Rectangle
---@param origin Vector2
---@param rotation number
---@param color Color
---Draw a color-filled rectangle with pro parameters
function rl.DrawRectanglePro(rec,origin,rotation,color) end
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param color1 Color
---@param color2 Color
---Draw a vertical-gradient-filled rectangle
function rl.DrawRectangleGradientV(posX,posY,width,height,color1,color2) end
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param color1 Color
---@param color2 Color
---Draw a horizontal-gradient-filled rectangle
function rl.DrawRectangleGradientH(posX,posY,width,height,color1,color2) end
---@param rec Rectangle
---@param col1 Color
---@param col2 Color
---@param col3 Color
---@param col4 Color
---Draw a gradient-filled rectangle with custom vertex colors
function rl.DrawRectangleGradientEx(rec,col1,col2,col3,col4) end
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param color Color
---Draw rectangle outline
function rl.DrawRectangleLines(posX,posY,width,height,color) end
---@param rec Rectangle
---@param lineThick number
---@param color Color
---Draw rectangle outline with extended parameters
function rl.DrawRectangleLinesEx(rec,lineThick,color) end
---@param rec Rectangle
---@param roundness number
---@param segments number
---@param color Color
---Draw rectangle with rounded edges
function rl.DrawRectangleRounded(rec,roundness,segments,color) end
---@param rec Rectangle
---@param roundness number
---@param segments number
---@param lineThick number
---@param color Color
---Draw rectangle with rounded edges outline
function rl.DrawRectangleRoundedLines(rec,roundness,segments,lineThick,color) end
---@param v1 Vector2
---@param v2 Vector2
---@param v3 Vector2
---@param color Color
---Draw a color-filled triangle (vertex in counter-clockwise order!)
function rl.DrawTriangle(v1,v2,v3,color) end
---@param v1 Vector2
---@param v2 Vector2
---@param v3 Vector2
---@param color Color
---Draw triangle outline (vertex in counter-clockwise order!)
function rl.DrawTriangleLines(v1,v2,v3,color) end
---@param points Vector2_ptr|lightuserdata
---@param pointCount number
---@param color Color
---Draw a triangle fan defined by points (first vertex is the center)
function rl.DrawTriangleFan(points,pointCount,color) end
---@param points Vector2_ptr|lightuserdata
---@param pointCount number
---@param color Color
---Draw a triangle strip defined by points
function rl.DrawTriangleStrip(points,pointCount,color) end
---@param center Vector2
---@param sides number
---@param radius number
---@param rotation number
---@param color Color
---Draw a regular polygon (Vector version)
function rl.DrawPoly(center,sides,radius,rotation,color) end
---@param center Vector2
---@param sides number
---@param radius number
---@param rotation number
---@param color Color
---Draw a polygon outline of n sides
function rl.DrawPolyLines(center,sides,radius,rotation,color) end
---@param center Vector2
---@param sides number
---@param radius number
---@param rotation number
---@param lineThick number
---@param color Color
---Draw a polygon outline of n sides with extended parameters
function rl.DrawPolyLinesEx(center,sides,radius,rotation,lineThick,color) end
---@param rec1 Rectangle
---@param rec2 Rectangle
---@return bool
---Check collision between two rectangles
function rl.CheckCollisionRecs(rec1,rec2) end
---@param center1 Vector2
---@param radius1 number
---@param center2 Vector2
---@param radius2 number
---@return bool
---Check collision between two circles
function rl.CheckCollisionCircles(center1,radius1,center2,radius2) end
---@param center Vector2
---@param radius number
---@param rec Rectangle
---@return bool
---Check collision between circle and rectangle
function rl.CheckCollisionCircleRec(center,radius,rec) end
---@param point Vector2
---@param rec Rectangle
---@return bool
---Check if point is inside rectangle
function rl.CheckCollisionPointRec(point,rec) end
---@param point Vector2
---@param center Vector2
---@param radius number
---@return bool
---Check if point is inside circle
function rl.CheckCollisionPointCircle(point,center,radius) end
---@param point Vector2
---@param p1 Vector2
---@param p2 Vector2
---@param p3 Vector2
---@return bool
---Check if point is inside a triangle
function rl.CheckCollisionPointTriangle(point,p1,p2,p3) end
---@param point Vector2
---@param points Vector2_ptr|lightuserdata
---@param pointCount number
---@return bool
---Check if point is within a polygon described by array of vertices
function rl.CheckCollisionPointPoly(point,points,pointCount) end
---@param startPos1 Vector2
---@param endPos1 Vector2
---@param startPos2 Vector2
---@param endPos2 Vector2
---@param collisionPoint Vector2_ptr|lightuserdata
---@return bool
---Check the collision between two lines defined by two points each, returns collision point by reference
function rl.CheckCollisionLines(startPos1,endPos1,startPos2,endPos2,collisionPoint) end
---@param point Vector2
---@param p1 Vector2
---@param p2 Vector2
---@param threshold number
---@return bool
---Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
function rl.CheckCollisionPointLine(point,p1,p2,threshold) end
---@param rec1 Rectangle
---@param rec2 Rectangle
---@return Rectangle
---Get collision rectangle for two rectangles collision
function rl.GetCollisionRec(rec1,rec2) end
---@param fileName string|lightuserdata
---@return Image
---Load image from file into CPU memory (RAM)
function rl.LoadImage(fileName) end
---@param fileName string|lightuserdata
---@param width number
---@param height number
---@param format number
---@param headerSize number
---@return Image
---Load image from RAW file data
function rl.LoadImageRaw(fileName,width,height,format,headerSize) end
---@param fileName string|lightuserdata
---@param frames number
---@return Image
---Load image sequence from file (frames appended to image.data)
function rl.LoadImageAnim(fileName,frames) end
---@param fileType string|lightuserdata
---@param fileData string|lightuserdata
---@param dataSize number
---@return Image
---Load image from memory buffer, fileType refers to extension: i.e. '.png'
function rl.LoadImageFromMemory(fileType,fileData,dataSize) end
---@param texture Texture2D
---@return Image
---Load image from GPU texture data
function rl.LoadImageFromTexture(texture) end
---@return Image
---Load image from screen buffer and (screenshot)
function rl.LoadImageFromScreen() end
---@param image Image
---@return bool
---Check if an image is ready
function rl.IsImageReady(image) end
---@param image Image
---Unload image from CPU memory (RAM)
function rl.UnloadImage(image) end
---@param image Image
---@param fileName string|lightuserdata
---@return bool
---Export image data to file, returns true on success
function rl.ExportImage(image,fileName) end
---@param image Image
---@param fileName string|lightuserdata
---@return bool
---Export image as code file defining an array of bytes, returns true on success
function rl.ExportImageAsCode(image,fileName) end
---@param width number
---@param height number
---@param color Color
---@return Image
---Generate image: plain color
function rl.GenImageColor(width,height,color) end
---@param width number
---@param height number
---@param top Color
---@param bottom Color
---@return Image
---Generate image: vertical gradient
function rl.GenImageGradientV(width,height,top,bottom) end
---@param width number
---@param height number
---@param left Color
---@param right Color
---@return Image
---Generate image: horizontal gradient
function rl.GenImageGradientH(width,height,left,right) end
---@param width number
---@param height number
---@param density number
---@param inner Color
---@param outer Color
---@return Image
---Generate image: radial gradient
function rl.GenImageGradientRadial(width,height,density,inner,outer) end
---@param width number
---@param height number
---@param checksX number
---@param checksY number
---@param col1 Color
---@param col2 Color
---@return Image
---Generate image: checked
function rl.GenImageChecked(width,height,checksX,checksY,col1,col2) end
---@param width number
---@param height number
---@param factor number
---@return Image
---Generate image: white noise
function rl.GenImageWhiteNoise(width,height,factor) end
---@param width number
---@param height number
---@param offsetX number
---@param offsetY number
---@param scale number
---@return Image
---Generate image: perlin noise
function rl.GenImagePerlinNoise(width,height,offsetX,offsetY,scale) end
---@param width number
---@param height number
---@param tileSize number
---@return Image
---Generate image: cellular algorithm, bigger tileSize means bigger cells
function rl.GenImageCellular(width,height,tileSize) end
---@param width number
---@param height number
---@param text string|lightuserdata
---@return Image
---Generate image: grayscale image from text data
function rl.GenImageText(width,height,text) end
---@param image Image
---@return Image
---Create an image duplicate (useful for transformations)
function rl.ImageCopy(image) end
---@param image Image
---@param rec Rectangle
---@return Image
---Create an image from another image piece
function rl.ImageFromImage(image,rec) end
---@param text string|lightuserdata
---@param fontSize number
---@param color Color
---@return Image
---Create an image from text (default font)
function rl.ImageText(text,fontSize,color) end
---@param font Font
---@param text string|lightuserdata
---@param fontSize number
---@param spacing number
---@param tint Color
---@return Image
---Create an image from text (custom sprite font)
function rl.ImageTextEx(font,text,fontSize,spacing,tint) end
---@param image Image_ptr|lightuserdata
---@param newFormat number
---Convert image data to desired format
function rl.ImageFormat(image,newFormat) end
---@param image Image_ptr|lightuserdata
---@param fill Color
---Convert image to POT (power-of-two)
function rl.ImageToPOT(image,fill) end
---@param image Image_ptr|lightuserdata
---@param crop Rectangle
---Crop an image to a defined rectangle
function rl.ImageCrop(image,crop) end
---@param image Image_ptr|lightuserdata
---@param threshold number
---Crop image depending on alpha value
function rl.ImageAlphaCrop(image,threshold) end
---@param image Image_ptr|lightuserdata
---@param color Color
---@param threshold number
---Clear alpha channel to desired color
function rl.ImageAlphaClear(image,color,threshold) end
---@param image Image_ptr|lightuserdata
---@param alphaMask Image
---Apply alpha mask to image
function rl.ImageAlphaMask(image,alphaMask) end
---@param image Image_ptr|lightuserdata
---Premultiply alpha channel
function rl.ImageAlphaPremultiply(image) end
---@param image Image_ptr|lightuserdata
---@param blurSize number
---Apply Gaussian blur using a box blur approximation
function rl.ImageBlurGaussian(image,blurSize) end
---@param image Image_ptr|lightuserdata
---@param newWidth number
---@param newHeight number
---Resize image (Bicubic scaling algorithm)
function rl.ImageResize(image,newWidth,newHeight) end
---@param image Image_ptr|lightuserdata
---@param newWidth number
---@param newHeight number
---Resize image (Nearest-Neighbor scaling algorithm)
function rl.ImageResizeNN(image,newWidth,newHeight) end
---@param image Image_ptr|lightuserdata
---@param newWidth number
---@param newHeight number
---@param offsetX number
---@param offsetY number
---@param fill Color
---Resize canvas and fill with color
function rl.ImageResizeCanvas(image,newWidth,newHeight,offsetX,offsetY,fill) end
---@param image Image_ptr|lightuserdata
---Compute all mipmap levels for a provided image
function rl.ImageMipmaps(image) end
---@param image Image_ptr|lightuserdata
---@param rBpp number
---@param gBpp number
---@param bBpp number
---@param aBpp number
---Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
function rl.ImageDither(image,rBpp,gBpp,bBpp,aBpp) end
---@param image Image_ptr|lightuserdata
---Flip image vertically
function rl.ImageFlipVertical(image) end
---@param image Image_ptr|lightuserdata
---Flip image horizontally
function rl.ImageFlipHorizontal(image) end
---@param image Image_ptr|lightuserdata
---Rotate image clockwise 90deg
function rl.ImageRotateCW(image) end
---@param image Image_ptr|lightuserdata
---Rotate image counter-clockwise 90deg
function rl.ImageRotateCCW(image) end
---@param image Image_ptr|lightuserdata
---@param color Color
---Modify image color: tint
function rl.ImageColorTint(image,color) end
---@param image Image_ptr|lightuserdata
---Modify image color: invert
function rl.ImageColorInvert(image) end
---@param image Image_ptr|lightuserdata
---Modify image color: grayscale
function rl.ImageColorGrayscale(image) end
---@param image Image_ptr|lightuserdata
---@param contrast number
---Modify image color: contrast (-100 to 100)
function rl.ImageColorContrast(image,contrast) end
---@param image Image_ptr|lightuserdata
---@param brightness number
---Modify image color: brightness (-255 to 255)
function rl.ImageColorBrightness(image,brightness) end
---@param image Image_ptr|lightuserdata
---@param color Color
---@param replace Color
---Modify image color: replace color
function rl.ImageColorReplace(image,color,replace) end
---@param image Image
---@return Color_ptr|lightuserdata
---Load color data from image as a Color array (RGBA - 32bit)
function rl.LoadImageColors(image) end
---@param image Image
---@param maxPaletteSize number
---@param colorCount number
---@return Color_ptr|lightuserdata
---Load colors palette from image as a Color array (RGBA - 32bit)
function rl.LoadImagePalette(image,maxPaletteSize,colorCount) end
---@param colors Color_ptr|lightuserdata
---Unload color data loaded with LoadImageColors()
function rl.UnloadImageColors(colors) end
---@param colors Color_ptr|lightuserdata
---Unload colors palette loaded with LoadImagePalette()
function rl.UnloadImagePalette(colors) end
---@param image Image
---@param threshold number
---@return Rectangle
---Get image alpha border rectangle
function rl.GetImageAlphaBorder(image,threshold) end
---@param image Image
---@param x number
---@param y number
---@return Color
---Get image pixel color at (x, y) position
function rl.GetImageColor(image,x,y) end
---@param dst Image_ptr|lightuserdata
---@param color Color
---Clear image background with given color
function rl.ImageClearBackground(dst,color) end
---@param dst Image_ptr|lightuserdata
---@param posX number
---@param posY number
---@param color Color
---Draw pixel within an image
function rl.ImageDrawPixel(dst,posX,posY,color) end
---@param dst Image_ptr|lightuserdata
---@param position Vector2
---@param color Color
---Draw pixel within an image (Vector version)
function rl.ImageDrawPixelV(dst,position,color) end
---@param dst Image_ptr|lightuserdata
---@param startPosX number
---@param startPosY number
---@param endPosX number
---@param endPosY number
---@param color Color
---Draw line within an image
function rl.ImageDrawLine(dst,startPosX,startPosY,endPosX,endPosY,color) end
---@param dst Image_ptr|lightuserdata
---@param start Vector2
---@param end_ Vector2
---@param color Color
---Draw line within an image (Vector version)
function rl.ImageDrawLineV(dst,start,end_,color) end
---@param dst Image_ptr|lightuserdata
---@param centerX number
---@param centerY number
---@param radius number
---@param color Color
---Draw a filled circle within an image
function rl.ImageDrawCircle(dst,centerX,centerY,radius,color) end
---@param dst Image_ptr|lightuserdata
---@param center Vector2
---@param radius number
---@param color Color
---Draw a filled circle within an image (Vector version)
function rl.ImageDrawCircleV(dst,center,radius,color) end
---@param dst Image_ptr|lightuserdata
---@param centerX number
---@param centerY number
---@param radius number
---@param color Color
---Draw circle outline within an image
function rl.ImageDrawCircleLines(dst,centerX,centerY,radius,color) end
---@param dst Image_ptr|lightuserdata
---@param center Vector2
---@param radius number
---@param color Color
---Draw circle outline within an image (Vector version)
function rl.ImageDrawCircleLinesV(dst,center,radius,color) end
---@param dst Image_ptr|lightuserdata
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param color Color
---Draw rectangle within an image
function rl.ImageDrawRectangle(dst,posX,posY,width,height,color) end
---@param dst Image_ptr|lightuserdata
---@param position Vector2
---@param size Vector2
---@param color Color
---Draw rectangle within an image (Vector version)
function rl.ImageDrawRectangleV(dst,position,size,color) end
---@param dst Image_ptr|lightuserdata
---@param rec Rectangle
---@param color Color
---Draw rectangle within an image
function rl.ImageDrawRectangleRec(dst,rec,color) end
---@param dst Image_ptr|lightuserdata
---@param rec Rectangle
---@param thick number
---@param color Color
---Draw rectangle lines within an image
function rl.ImageDrawRectangleLines(dst,rec,thick,color) end
---@param dst Image_ptr|lightuserdata
---@param src Image
---@param srcRec Rectangle
---@param dstRec Rectangle
---@param tint Color
---Draw a source image within a destination image (tint applied to source)
function rl.ImageDraw(dst,src,srcRec,dstRec,tint) end
---@param dst Image_ptr|lightuserdata
---@param text string|lightuserdata
---@param posX number
---@param posY number
---@param fontSize number
---@param color Color
---Draw text (using default font) within an image (destination)
function rl.ImageDrawText(dst,text,posX,posY,fontSize,color) end
---@param dst Image_ptr|lightuserdata
---@param font Font
---@param text string|lightuserdata
---@param position Vector2
---@param fontSize number
---@param spacing number
---@param tint Color
---Draw text (custom sprite font) within an image (destination)
function rl.ImageDrawTextEx(dst,font,text,position,fontSize,spacing,tint) end
---@param fileName string|lightuserdata
---@return Texture2D
---Load texture from file into GPU memory (VRAM)
function rl.LoadTexture(fileName) end
---@param image Image
---@return Texture2D
---Load texture from image data
function rl.LoadTextureFromImage(image) end
---@param image Image
---@param layout number
---@return TextureCubemap
---Load cubemap from image, multiple image cubemap layouts supported
function rl.LoadTextureCubemap(image,layout) end
---@param width number
---@param height number
---@return RenderTexture2D
---Load texture for rendering (framebuffer)
function rl.LoadRenderTexture(width,height) end
---@param texture Texture2D
---@return bool
---Check if a texture is ready
function rl.IsTextureReady(texture) end
---@param texture Texture2D
---Unload texture from GPU memory (VRAM)
function rl.UnloadTexture(texture) end
---@param target RenderTexture2D
---@return bool
---Check if a render texture is ready
function rl.IsRenderTextureReady(target) end
---@param target RenderTexture2D
---Unload render texture from GPU memory (VRAM)
function rl.UnloadRenderTexture(target) end
---@param texture Texture2D
---@param pixels string|lightuserdata
---Update GPU texture with new data
function rl.UpdateTexture(texture,pixels) end
---@param texture Texture2D
---@param rec Rectangle
---@param pixels string|lightuserdata
---Update GPU texture rectangle with new data
function rl.UpdateTextureRec(texture,rec,pixels) end
---@param texture Texture2D_ptr|lightuserdata
---Generate GPU mipmaps for a texture
function rl.GenTextureMipmaps(texture) end
---@param texture Texture2D
---@param filter number
---Set texture scaling filter mode
function rl.SetTextureFilter(texture,filter) end
---@param texture Texture2D
---@param wrap number
---Set texture wrapping mode
function rl.SetTextureWrap(texture,wrap) end
---@param texture Texture2D
---@param posX number
---@param posY number
---@param tint Color
---Draw a Texture2D
function rl.DrawTexture(texture,posX,posY,tint) end
---@param texture Texture2D
---@param position Vector2
---@param tint Color
---Draw a Texture2D with position defined as Vector2
function rl.DrawTextureV(texture,position,tint) end
---@param texture Texture2D
---@param position Vector2
---@param rotation number
---@param scale number
---@param tint Color
---Draw a Texture2D with extended parameters
function rl.DrawTextureEx(texture,position,rotation,scale,tint) end
---@param texture Texture2D
---@param source Rectangle
---@param position Vector2
---@param tint Color
---Draw a part of a texture defined by a rectangle
function rl.DrawTextureRec(texture,source,position,tint) end
---@param texture Texture2D
---@param source Rectangle
---@param dest Rectangle
---@param origin Vector2
---@param rotation number
---@param tint Color
---Draw a part of a texture defined by a rectangle with 'pro' parameters
function rl.DrawTexturePro(texture,source,dest,origin,rotation,tint) end
---@param texture Texture2D
---@param nPatchInfo NPatchInfo
---@param dest Rectangle
---@param origin Vector2
---@param rotation number
---@param tint Color
---Draws a texture (or part of it) that stretches or shrinks nicely
function rl.DrawTextureNPatch(texture,nPatchInfo,dest,origin,rotation,tint) end
---@param color Color
---@param alpha number
---@return Color
---Get color with alpha applied, alpha goes from 0.0f to 1.0f
function rl.Fade(color,alpha) end
---@param color Color
---@return number
---Get hexadecimal value for a Color
function rl.ColorToInt(color) end
---@param color Color
---@return Vector4
---Get Color normalized as float [0..1]
function rl.ColorNormalize(color) end
---@param normalized Vector4
---@return Color
---Get Color from normalized values [0..1]
function rl.ColorFromNormalized(normalized) end
---@param color Color
---@return Vector3
---Get HSV values for a Color, hue [0..360], saturation/value [0..1]
function rl.ColorToHSV(color) end
---@param hue number
---@param saturation number
---@param value number
---@return Color
---Get a Color from HSV values, hue [0..360], saturation/value [0..1]
function rl.ColorFromHSV(hue,saturation,value) end
---@param color Color
---@param tint Color
---@return Color
---Get color multiplied with another color
function rl.ColorTint(color,tint) end
---@param color Color
---@param factor number
---@return Color
---Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
function rl.ColorBrightness(color,factor) end
---@param color Color
---@param contrast number
---@return Color
---Get color with contrast correction, contrast values between -1.0f and 1.0f
function rl.ColorContrast(color,contrast) end
---@param color Color
---@param alpha number
---@return Color
---Get color with alpha applied, alpha goes from 0.0f to 1.0f
function rl.ColorAlpha(color,alpha) end
---@param dst Color
---@param src Color
---@param tint Color
---@return Color
---Get src alpha-blended into dst color with tint
function rl.ColorAlphaBlend(dst,src,tint) end
---@param hexValue number
---@return Color
---Get Color structure from hexadecimal value
function rl.GetColor(hexValue) end
---@param srcPtr string|lightuserdata
---@param format number
---@return Color
---Get Color from a source pixel pointer of certain format
function rl.GetPixelColor(srcPtr,format) end
---@param dstPtr string|lightuserdata
---@param color Color
---@param format number
---Set color formatted into destination pixel pointer
function rl.SetPixelColor(dstPtr,color,format) end
---@param width number
---@param height number
---@param format number
---@return number
---Get pixel data size in bytes for certain format
function rl.GetPixelDataSize(width,height,format) end
---@return Font
---Get the default Font
function rl.GetFontDefault() end
---@param fileName string|lightuserdata
---@return Font
---Load font from file into GPU memory (VRAM)
function rl.LoadFont(fileName) end
---@param fileName string|lightuserdata
---@param fontSize number
---@param fontChars number
---@param glyphCount number
---@return Font
---Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set
function rl.LoadFontEx(fileName,fontSize,fontChars,glyphCount) end
---@param image Image
---@param key Color
---@param firstChar number
---@return Font
---Load font from Image (XNA style)
function rl.LoadFontFromImage(image,key,firstChar) end
---@param fileType string|lightuserdata
---@param fileData string|lightuserdata
---@param dataSize number
---@param fontSize number
---@param fontChars number
---@param glyphCount number
---@return Font
---Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
function rl.LoadFontFromMemory(fileType,fileData,dataSize,fontSize,fontChars,glyphCount) end
---@param font Font
---@return bool
---Check if a font is ready
function rl.IsFontReady(font) end
---@param fileData string|lightuserdata
---@param dataSize number
---@param fontSize number
---@param fontChars number
---@param glyphCount number
---@param type number
---@return GlyphInfo_ptr|lightuserdata
---Load font data for further use
function rl.LoadFontData(fileData,dataSize,fontSize,fontChars,glyphCount,type) end
---@param chars const_GlyphInfo_ptr|lightuserdata
---@param recs Rectangle_ptr_ptr|lightuserdata
---@param glyphCount number
---@param fontSize number
---@param padding number
---@param packMethod number
---@return Image
---Generate image font atlas using chars info
function rl.GenImageFontAtlas(chars,recs,glyphCount,fontSize,padding,packMethod) end
---@param chars GlyphInfo_ptr|lightuserdata
---@param glyphCount number
---Unload font chars info data (RAM)
function rl.UnloadFontData(chars,glyphCount) end
---@param font Font
---Unload font from GPU memory (VRAM)
function rl.UnloadFont(font) end
---@param font Font
---@param fileName string|lightuserdata
---@return bool
---Export font as code file, returns true on success
function rl.ExportFontAsCode(font,fileName) end
---@param posX number
---@param posY number
---Draw current FPS
function rl.DrawFPS(posX,posY) end
---@param text string|lightuserdata
---@param posX number
---@param posY number
---@param fontSize number
---@param color Color
---Draw text (using default font)
function rl.DrawText(text,posX,posY,fontSize,color) end
---@param font Font
---@param text string|lightuserdata
---@param position Vector2
---@param fontSize number
---@param spacing number
---@param tint Color
---Draw text using font and additional parameters
function rl.DrawTextEx(font,text,position,fontSize,spacing,tint) end
---@param font Font
---@param text string|lightuserdata
---@param position Vector2
---@param origin Vector2
---@param rotation number
---@param fontSize number
---@param spacing number
---@param tint Color
---Draw text using Font and pro parameters (rotation)
function rl.DrawTextPro(font,text,position,origin,rotation,fontSize,spacing,tint) end
---@param font Font
---@param codepoint number
---@param position Vector2
---@param fontSize number
---@param tint Color
---Draw one character (codepoint)
function rl.DrawTextCodepoint(font,codepoint,position,fontSize,tint) end
---@param font Font
---@param codepoints number
---@param count number
---@param position Vector2
---@param fontSize number
---@param spacing number
---@param tint Color
---Draw multiple character (codepoint)
function rl.DrawTextCodepoints(font,codepoints,count,position,fontSize,spacing,tint) end
---@param text string|lightuserdata
---@param fontSize number
---@return number
---Measure string width for default font
function rl.MeasureText(text,fontSize) end
---@param font Font
---@param text string|lightuserdata
---@param fontSize number
---@param spacing number
---@return Vector2
---Measure string size for Font
function rl.MeasureTextEx(font,text,fontSize,spacing) end
---@param font Font
---@param codepoint number
---@return number
---Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
function rl.GetGlyphIndex(font,codepoint) end
---@param font Font
---@param codepoint number
---@return GlyphInfo
---Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
function rl.GetGlyphInfo(font,codepoint) end
---@param font Font
---@param codepoint number
---@return Rectangle
---Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
function rl.GetGlyphAtlasRec(font,codepoint) end
---@param codepoints number
---@param length number
---@return string|lightuserdata
---Load UTF-8 text encoded from codepoints array
function rl.LoadUTF8(codepoints,length) end
---@param text string|lightuserdata
---Unload UTF-8 text encoded from codepoints array
function rl.UnloadUTF8(text) end
---@param text string|lightuserdata
---@param count number
---@return number
---Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
function rl.LoadCodepoints(text,count) end
---@param codepoints number
---Unload codepoints data from memory
function rl.UnloadCodepoints(codepoints) end
---@param text string|lightuserdata
---@return number
---Get total number of codepoints in a UTF-8 encoded string
function rl.GetCodepointCount(text) end
---@param text string|lightuserdata
---@param codepointSize number
---@return number
---Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
function rl.GetCodepoint(text,codepointSize) end
---@param text string|lightuserdata
---@param codepointSize number
---@return number
---Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
function rl.GetCodepointNext(text,codepointSize) end
---@param text string|lightuserdata
---@param codepointSize number
---@return number
---Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
function rl.GetCodepointPrevious(text,codepointSize) end
---@param codepoint number
---@param utf8Size number
---@return string|lightuserdata
---Encode one codepoint into UTF-8 byte array (array length returned as parameter)
function rl.CodepointToUTF8(codepoint,utf8Size) end
---@param dst string|lightuserdata
---@param src string|lightuserdata
---@return number
---Copy one string to another, returns bytes copied
function rl.TextCopy(dst,src) end
---@param text1 string|lightuserdata
---@param text2 string|lightuserdata
---@return bool
---Check if two text string are equal
function rl.TextIsEqual(text1,text2) end
---@param text string|lightuserdata
---@return number
---Get text length, checks for '\0' ending
function rl.TextLength(text) end
---@param text string|lightuserdata
---@param args ...
---@return string|lightuserdata
---Text formatting with variables (sprintf() style)
function rl.TextFormat(text,args) end
---@param text string|lightuserdata
---@param position number
---@param length number
---@return string|lightuserdata
---Get a piece of a text string
function rl.TextSubtext(text,position,length) end
---@param text string|lightuserdata
---@param replace string|lightuserdata
---@param by string|lightuserdata
---@return string|lightuserdata
---Replace text string (WARNING: memory must be freed!)
function rl.TextReplace(text,replace,by) end
---@param text string|lightuserdata
---@param insert string|lightuserdata
---@param position number
---@return string|lightuserdata
---Insert text in a position (WARNING: memory must be freed!)
function rl.TextInsert(text,insert,position) end
---@param textList string|lightuserdata
---@param count number
---@param delimiter string|lightuserdata
---@return string|lightuserdata
---Join text strings with delimiter
function rl.TextJoin(textList,count,delimiter) end
---@param text string|lightuserdata
---@param delimiter number|string[]
---@param count number
---@return string|lightuserdata
---Split text into multiple strings
function rl.TextSplit(text,delimiter,count) end
---@param text string|lightuserdata
---@param append string|lightuserdata
---@param position number
---Append text at specific position and move cursor!
function rl.TextAppend(text,append,position) end
---@param text string|lightuserdata
---@param find string|lightuserdata
---@return number
---Find first text occurrence within a string
function rl.TextFindIndex(text,find) end
---@param text string|lightuserdata
---@return string|lightuserdata
---Get upper case version of provided string
function rl.TextToUpper(text) end
---@param text string|lightuserdata
---@return string|lightuserdata
---Get lower case version of provided string
function rl.TextToLower(text) end
---@param text string|lightuserdata
---@return string|lightuserdata
---Get Pascal case notation version of provided string
function rl.TextToPascal(text) end
---@param text string|lightuserdata
---@return number
---Get integer value from text (negative values not supported)
function rl.TextToInteger(text) end
---@param startPos Vector3
---@param endPos Vector3
---@param color Color
---Draw a line in 3D world space
function rl.DrawLine3D(startPos,endPos,color) end
---@param position Vector3
---@param color Color
---Draw a point in 3D space, actually a small line
function rl.DrawPoint3D(position,color) end
---@param center Vector3
---@param radius number
---@param rotationAxis Vector3
---@param rotationAngle number
---@param color Color
---Draw a circle in 3D world space
function rl.DrawCircle3D(center,radius,rotationAxis,rotationAngle,color) end
---@param v1 Vector3
---@param v2 Vector3
---@param v3 Vector3
---@param color Color
---Draw a color-filled triangle (vertex in counter-clockwise order!)
function rl.DrawTriangle3D(v1,v2,v3,color) end
---@param points Vector3_ptr|lightuserdata
---@param pointCount number
---@param color Color
---Draw a triangle strip defined by points
function rl.DrawTriangleStrip3D(points,pointCount,color) end
---@param position Vector3
---@param width number
---@param height number
---@param length number
---@param color Color
---Draw cube
function rl.DrawCube(position,width,height,length,color) end
---@param position Vector3
---@param size Vector3
---@param color Color
---Draw cube (Vector version)
function rl.DrawCubeV(position,size,color) end
---@param position Vector3
---@param width number
---@param height number
---@param length number
---@param color Color
---Draw cube wires
function rl.DrawCubeWires(position,width,height,length,color) end
---@param position Vector3
---@param size Vector3
---@param color Color
---Draw cube wires (Vector version)
function rl.DrawCubeWiresV(position,size,color) end
---@param centerPos Vector3
---@param radius number
---@param color Color
---Draw sphere
function rl.DrawSphere(centerPos,radius,color) end
---@param centerPos Vector3
---@param radius number
---@param rings number
---@param slices number
---@param color Color
---Draw sphere with extended parameters
function rl.DrawSphereEx(centerPos,radius,rings,slices,color) end
---@param centerPos Vector3
---@param radius number
---@param rings number
---@param slices number
---@param color Color
---Draw sphere wires
function rl.DrawSphereWires(centerPos,radius,rings,slices,color) end
---@param position Vector3
---@param radiusTop number
---@param radiusBottom number
---@param height number
---@param slices number
---@param color Color
---Draw a cylinder/cone
function rl.DrawCylinder(position,radiusTop,radiusBottom,height,slices,color) end
---@param startPos Vector3
---@param endPos Vector3
---@param startRadius number
---@param endRadius number
---@param sides number
---@param color Color
---Draw a cylinder with base at startPos and top at endPos
function rl.DrawCylinderEx(startPos,endPos,startRadius,endRadius,sides,color) end
---@param position Vector3
---@param radiusTop number
---@param radiusBottom number
---@param height number
---@param slices number
---@param color Color
---Draw a cylinder/cone wires
function rl.DrawCylinderWires(position,radiusTop,radiusBottom,height,slices,color) end
---@param startPos Vector3
---@param endPos Vector3
---@param startRadius number
---@param endRadius number
---@param sides number
---@param color Color
---Draw a cylinder wires with base at startPos and top at endPos
function rl.DrawCylinderWiresEx(startPos,endPos,startRadius,endRadius,sides,color) end
---@param startPos Vector3
---@param endPos Vector3
---@param radius number
---@param slices number
---@param rings number
---@param color Color
---Draw a capsule with the center of its sphere caps at startPos and endPos
function rl.DrawCapsule(startPos,endPos,radius,slices,rings,color) end
---@param startPos Vector3
---@param endPos Vector3
---@param radius number
---@param slices number
---@param rings number
---@param color Color
---Draw capsule wireframe with the center of its sphere caps at startPos and endPos
function rl.DrawCapsuleWires(startPos,endPos,radius,slices,rings,color) end
---@param centerPos Vector3
---@param size Vector2
---@param color Color
---Draw a plane XZ
function rl.DrawPlane(centerPos,size,color) end
---@param ray Ray
---@param color Color
---Draw a ray line
function rl.DrawRay(ray,color) end
---@param slices number
---@param spacing number
---Draw a grid (centered at (0, 0, 0))
function rl.DrawGrid(slices,spacing) end
---@param fileName string|lightuserdata
---@return Model
---Load model from files (meshes and materials)
function rl.LoadModel(fileName) end
---@param mesh Mesh
---@return Model
---Load model from generated mesh (default material)
function rl.LoadModelFromMesh(mesh) end
---@param model Model
---@return bool
---Check if a model is ready
function rl.IsModelReady(model) end
---@param model Model
---Unload model (including meshes) from memory (RAM and/or VRAM)
function rl.UnloadModel(model) end
---@param model Model
---@return BoundingBox
---Compute model bounding box limits (considers all meshes)
function rl.GetModelBoundingBox(model) end
---@param model Model
---@param position Vector3
---@param scale number
---@param tint Color
---Draw a model (with texture if set)
function rl.DrawModel(model,position,scale,tint) end
---@param model Model
---@param position Vector3
---@param rotationAxis Vector3
---@param rotationAngle number
---@param scale Vector3
---@param tint Color
---Draw a model with extended parameters
function rl.DrawModelEx(model,position,rotationAxis,rotationAngle,scale,tint) end
---@param model Model
---@param position Vector3
---@param scale number
---@param tint Color
---Draw a model wires (with texture if set)
function rl.DrawModelWires(model,position,scale,tint) end
---@param model Model
---@param position Vector3
---@param rotationAxis Vector3
---@param rotationAngle number
---@param scale Vector3
---@param tint Color
---Draw a model wires (with texture if set) with extended parameters
function rl.DrawModelWiresEx(model,position,rotationAxis,rotationAngle,scale,tint) end
---@param box BoundingBox
---@param color Color
---Draw bounding box (wires)
function rl.DrawBoundingBox(box,color) end
---@param camera Camera
---@param texture Texture2D
---@param position Vector3
---@param size number
---@param tint Color
---Draw a billboard texture
function rl.DrawBillboard(camera,texture,position,size,tint) end
---@param camera Camera
---@param texture Texture2D
---@param source Rectangle
---@param position Vector3
---@param size Vector2
---@param tint Color
---Draw a billboard texture defined by source
function rl.DrawBillboardRec(camera,texture,source,position,size,tint) end
---@param camera Camera
---@param texture Texture2D
---@param source Rectangle
---@param position Vector3
---@param up Vector3
---@param size Vector2
---@param origin Vector2
---@param rotation number
---@param tint Color
---Draw a billboard texture defined by source and rotation
function rl.DrawBillboardPro(camera,texture,source,position,up,size,origin,rotation,tint) end
---@param mesh Mesh_ptr|lightuserdata
---@param dynamic bool
---Upload mesh vertex data in GPU and provide VAO/VBO ids
function rl.UploadMesh(mesh,dynamic) end
---@param mesh Mesh
---@param index number
---@param data string|lightuserdata
---@param dataSize number
---@param offset number
---Update mesh vertex data in GPU for a specific buffer index
function rl.UpdateMeshBuffer(mesh,index,data,dataSize,offset) end
---@param mesh Mesh
---Unload mesh data from CPU and GPU
function rl.UnloadMesh(mesh) end
---@param mesh Mesh
---@param material Material
---@param transform Matrix
---Draw a 3d mesh with material and transform
function rl.DrawMesh(mesh,material,transform) end
---@param mesh Mesh
---@param material Material
---@param transforms const_Matrix_ptr|lightuserdata
---@param instances number
---Draw multiple mesh instances with material and different transforms
function rl.DrawMeshInstanced(mesh,material,transforms,instances) end
---@param mesh Mesh
---@param fileName string|lightuserdata
---@return bool
---Export mesh data to file, returns true on success
function rl.ExportMesh(mesh,fileName) end
---@param mesh Mesh
---@return BoundingBox
---Compute mesh bounding box limits
function rl.GetMeshBoundingBox(mesh) end
---@param mesh Mesh_ptr|lightuserdata
---Compute mesh tangents
function rl.GenMeshTangents(mesh) end
---@param sides number
---@param radius number
---@return Mesh
---Generate polygonal mesh
function rl.GenMeshPoly(sides,radius) end
---@param width number
---@param length number
---@param resX number
---@param resZ number
---@return Mesh
---Generate plane mesh (with subdivisions)
function rl.GenMeshPlane(width,length,resX,resZ) end
---@param width number
---@param height number
---@param length number
---@return Mesh
---Generate cuboid mesh
function rl.GenMeshCube(width,height,length) end
---@param radius number
---@param rings number
---@param slices number
---@return Mesh
---Generate sphere mesh (standard sphere)
function rl.GenMeshSphere(radius,rings,slices) end
---@param radius number
---@param rings number
---@param slices number
---@return Mesh
---Generate half-sphere mesh (no bottom cap)
function rl.GenMeshHemiSphere(radius,rings,slices) end
---@param radius number
---@param height number
---@param slices number
---@return Mesh
---Generate cylinder mesh
function rl.GenMeshCylinder(radius,height,slices) end
---@param radius number
---@param height number
---@param slices number
---@return Mesh
---Generate cone/pyramid mesh
function rl.GenMeshCone(radius,height,slices) end
---@param radius number
---@param size number
---@param radSeg number
---@param sides number
---@return Mesh
---Generate torus mesh
function rl.GenMeshTorus(radius,size,radSeg,sides) end
---@param radius number
---@param size number
---@param radSeg number
---@param sides number
---@return Mesh
---Generate trefoil knot mesh
function rl.GenMeshKnot(radius,size,radSeg,sides) end
---@param heightmap Image
---@param size Vector3
---@return Mesh
---Generate heightmap mesh from image data
function rl.GenMeshHeightmap(heightmap,size) end
---@param cubicmap Image
---@param cubeSize Vector3
---@return Mesh
---Generate cubes-based map mesh from image data
function rl.GenMeshCubicmap(cubicmap,cubeSize) end
---@param fileName string|lightuserdata
---@param materialCount number
---@return Material_ptr|lightuserdata
---Load materials from model file
function rl.LoadMaterials(fileName,materialCount) end
---@return Material
---Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
function rl.LoadMaterialDefault() end
---@param material Material
---@return bool
---Check if a material is ready
function rl.IsMaterialReady(material) end
---@param material Material
---Unload material from GPU memory (VRAM)
function rl.UnloadMaterial(material) end
---@param material Material_ptr|lightuserdata
---@param mapType number
---@param texture Texture2D
---Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
function rl.SetMaterialTexture(material,mapType,texture) end
---@param model Model_ptr|lightuserdata
---@param meshId number
---@param materialId number
---Set material for a mesh
function rl.SetModelMeshMaterial(model,meshId,materialId) end
---@param fileName string|lightuserdata
---@param animCount number
---@return ModelAnimation_ptr|lightuserdata
---Load model animations from file
function rl.LoadModelAnimations(fileName,animCount) end
---@param model Model
---@param anim ModelAnimation
---@param frame number
---Update model animation pose
function rl.UpdateModelAnimation(model,anim,frame) end
---@param anim ModelAnimation
---Unload animation data
function rl.UnloadModelAnimation(anim) end
---@param animations ModelAnimation_ptr|lightuserdata
---@param count number
---Unload animation array data
function rl.UnloadModelAnimations(animations,count) end
---@param model Model
---@param anim ModelAnimation
---@return bool
---Check model animation skeleton match
function rl.IsModelAnimationValid(model,anim) end
---@param center1 Vector3
---@param radius1 number
---@param center2 Vector3
---@param radius2 number
---@return bool
---Check collision between two spheres
function rl.CheckCollisionSpheres(center1,radius1,center2,radius2) end
---@param box1 BoundingBox
---@param box2 BoundingBox
---@return bool
---Check collision between two bounding boxes
function rl.CheckCollisionBoxes(box1,box2) end
---@param box BoundingBox
---@param center Vector3
---@param radius number
---@return bool
---Check collision between box and sphere
function rl.CheckCollisionBoxSphere(box,center,radius) end
---@param ray Ray
---@param center Vector3
---@param radius number
---@return RayCollision
---Get collision info between ray and sphere
function rl.GetRayCollisionSphere(ray,center,radius) end
---@param ray Ray
---@param box BoundingBox
---@return RayCollision
---Get collision info between ray and box
function rl.GetRayCollisionBox(ray,box) end
---@param ray Ray
---@param mesh Mesh
---@param transform Matrix
---@return RayCollision
---Get collision info between ray and mesh
function rl.GetRayCollisionMesh(ray,mesh,transform) end
---@param ray Ray
---@param p1 Vector3
---@param p2 Vector3
---@param p3 Vector3
---@return RayCollision
---Get collision info between ray and triangle
function rl.GetRayCollisionTriangle(ray,p1,p2,p3) end
---@param ray Ray
---@param p1 Vector3
---@param p2 Vector3
---@param p3 Vector3
---@param p4 Vector3
---@return RayCollision
---Get collision info between ray and quad
function rl.GetRayCollisionQuad(ray,p1,p2,p3,p4) end
---Initialize audio device and context
function rl.InitAudioDevice() end
---Close the audio device and context
function rl.CloseAudioDevice() end
---@return bool
---Check if audio device has been initialized successfully
function rl.IsAudioDeviceReady() end
---@param volume number
---Set master volume (listener)
function rl.SetMasterVolume(volume) end
---@param fileName string|lightuserdata
---@return Wave
---Load wave data from file
function rl.LoadWave(fileName) end
---@param fileType string|lightuserdata
---@param fileData string|lightuserdata
---@param dataSize number
---@return Wave
---Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
function rl.LoadWaveFromMemory(fileType,fileData,dataSize) end
---@param wave Wave
---@return bool
---Checks if wave data is ready
function rl.IsWaveReady(wave) end
---@param fileName string|lightuserdata
---@return Sound
---Load sound from file
function rl.LoadSound(fileName) end
---@param wave Wave
---@return Sound
---Load sound from wave data
function rl.LoadSoundFromWave(wave) end
---@param sound Sound
---@return bool
---Checks if a sound is ready
function rl.IsSoundReady(sound) end
---@param sound Sound
---@param data string|lightuserdata
---@param sampleCount number
---Update sound buffer with new data
function rl.UpdateSound(sound,data,sampleCount) end
---@param wave Wave
---Unload wave data
function rl.UnloadWave(wave) end
---@param sound Sound
---Unload sound
function rl.UnloadSound(sound) end
---@param wave Wave
---@param fileName string|lightuserdata
---@return bool
---Export wave data to file, returns true on success
function rl.ExportWave(wave,fileName) end
---@param wave Wave
---@param fileName string|lightuserdata
---@return bool
---Export wave sample data to code (.h), returns true on success
function rl.ExportWaveAsCode(wave,fileName) end
---@param sound Sound
---Play a sound
function rl.PlaySound(sound) end
---@param sound Sound
---Stop playing a sound
function rl.StopSound(sound) end
---@param sound Sound
---Pause a sound
function rl.PauseSound(sound) end
---@param sound Sound
---Resume a paused sound
function rl.ResumeSound(sound) end
---@param sound Sound
---@return bool
---Check if a sound is currently playing
function rl.IsSoundPlaying(sound) end
---@param sound Sound
---@param volume number
---Set volume for a sound (1.0 is max level)
function rl.SetSoundVolume(sound,volume) end
---@param sound Sound
---@param pitch number
---Set pitch for a sound (1.0 is base level)
function rl.SetSoundPitch(sound,pitch) end
---@param sound Sound
---@param pan number
---Set pan for a sound (0.5 is center)
function rl.SetSoundPan(sound,pan) end
---@param wave Wave
---@return Wave
---Copy a wave to a new wave
function rl.WaveCopy(wave) end
---@param wave Wave_ptr|lightuserdata
---@param initSample number
---@param finalSample number
---Crop a wave to defined samples range
function rl.WaveCrop(wave,initSample,finalSample) end
---@param wave Wave_ptr|lightuserdata
---@param sampleRate number
---@param sampleSize number
---@param channels number
---Convert wave data to desired format
function rl.WaveFormat(wave,sampleRate,sampleSize,channels) end
---@param wave Wave
---@return number
---Load samples data from wave as a 32bit float data array
function rl.LoadWaveSamples(wave) end
---@param samples number
---Unload samples data loaded with LoadWaveSamples()
function rl.UnloadWaveSamples(samples) end
---@param fileName string|lightuserdata
---@return Music
---Load music stream from file
function rl.LoadMusicStream(fileName) end
---@param fileType string|lightuserdata
---@param data string|lightuserdata
---@param dataSize number
---@return Music
---Load music stream from data
function rl.LoadMusicStreamFromMemory(fileType,data,dataSize) end
---@param music Music
---@return bool
---Checks if a music stream is ready
function rl.IsMusicReady(music) end
---@param music Music
---Unload music stream
function rl.UnloadMusicStream(music) end
---@param music Music
---Start music playing
function rl.PlayMusicStream(music) end
---@param music Music
---@return bool
---Check if music is playing
function rl.IsMusicStreamPlaying(music) end
---@param music Music
---Updates buffers for music streaming
function rl.UpdateMusicStream(music) end
---@param music Music
---Stop music playing
function rl.StopMusicStream(music) end
---@param music Music
---Pause music playing
function rl.PauseMusicStream(music) end
---@param music Music
---Resume playing paused music
function rl.ResumeMusicStream(music) end
---@param music Music
---@param position number
---Seek music to a position (in seconds)
function rl.SeekMusicStream(music,position) end
---@param music Music
---@param volume number
---Set volume for music (1.0 is max level)
function rl.SetMusicVolume(music,volume) end
---@param music Music
---@param pitch number
---Set pitch for a music (1.0 is base level)
function rl.SetMusicPitch(music,pitch) end
---@param music Music
---@param pan number
---Set pan for a music (0.5 is center)
function rl.SetMusicPan(music,pan) end
---@param music Music
---@return number
---Get music time length (in seconds)
function rl.GetMusicTimeLength(music) end
---@param music Music
---@return number
---Get current music time played (in seconds)
function rl.GetMusicTimePlayed(music) end
---@param sampleRate number
---@param sampleSize number
---@param channels number
---@return AudioStream
---Load audio stream (to stream raw audio pcm data)
function rl.LoadAudioStream(sampleRate,sampleSize,channels) end
---@param stream AudioStream
---@return bool
---Checks if an audio stream is ready
function rl.IsAudioStreamReady(stream) end
---@param stream AudioStream
---Unload audio stream and free memory
function rl.UnloadAudioStream(stream) end
---@param stream AudioStream
---@param data string|lightuserdata
---@param frameCount number
---Update audio stream buffers with data
function rl.UpdateAudioStream(stream,data,frameCount) end
---@param stream AudioStream
---@return bool
---Check if any audio stream buffers requires refill
function rl.IsAudioStreamProcessed(stream) end
---@param stream AudioStream
---Play audio stream
function rl.PlayAudioStream(stream) end
---@param stream AudioStream
---Pause audio stream
function rl.PauseAudioStream(stream) end
---@param stream AudioStream
---Resume audio stream
function rl.ResumeAudioStream(stream) end
---@param stream AudioStream
---@return bool
---Check if audio stream is playing
function rl.IsAudioStreamPlaying(stream) end
---@param stream AudioStream
---Stop audio stream
function rl.StopAudioStream(stream) end
---@param stream AudioStream
---@param volume number
---Set volume for audio stream (1.0 is max level)
function rl.SetAudioStreamVolume(stream,volume) end
---@param stream AudioStream
---@param pitch number
---Set pitch for audio stream (1.0 is base level)
function rl.SetAudioStreamPitch(stream,pitch) end
---@param stream AudioStream
---@param pan number
---Set pan for audio stream (0.5 is centered)
function rl.SetAudioStreamPan(stream,pan) end
---@param size number
---Default size for new audio streams
function rl.SetAudioStreamBufferSizeDefault(size) end
---@param stream AudioStream
---@param callback AudioCallback
---Audio thread callback to request new data
function rl.SetAudioStreamCallback(stream,callback) end
---@param stream AudioStream
---@param processor AudioCallback
---Attach audio stream processor to stream
function rl.AttachAudioStreamProcessor(stream,processor) end
---@param stream AudioStream
---@param processor AudioCallback
---Detach audio stream processor from stream
function rl.DetachAudioStreamProcessor(stream,processor) end
---@param processor AudioCallback
---Attach audio stream processor to the entire audio pipeline
function rl.AttachAudioMixedProcessor(processor) end
---@param processor AudioCallback
---Detach audio stream processor from the entire audio pipeline
function rl.DetachAudioMixedProcessor(processor) end
---@alias CameraProjection
---| 'CAMERA_PERSPECTIVE'
---| 'CAMERA_ORTHOGRAPHIC'
---Camera projection

---Perspective projection
rl.CAMERA_PERSPECTIVE = 0
---Orthographic projection
rl.CAMERA_ORTHOGRAPHIC = 1
---@alias CameraMode
---| 'CAMERA_CUSTOM'
---| 'CAMERA_FREE'
---| 'CAMERA_ORBITAL'
---| 'CAMERA_FIRST_PERSON'
---| 'CAMERA_THIRD_PERSON'
---Camera system modes

---Camera custom, controlled by user (UpdateCamera() does nothing)
rl.CAMERA_CUSTOM = 0
---Camera free mode
rl.CAMERA_FREE = 1
---Camera orbital, around target, zoom supported
rl.CAMERA_ORBITAL = 2
---Camera first person
rl.CAMERA_FIRST_PERSON = 3
---Camera third person
rl.CAMERA_THIRD_PERSON = 4
---@class Vector2 @ Vector2, 2 components
---@alias Vector2_ptr Vector2
---@alias Vector2_ptr_ptr Vector2
---@field x number # Vector x component
---@field y number # Vector y component
---Constructed using `rl.new("Vector2", ...)`
local Vector2 = {}
---@class Vector3 @ Vector3, 3 components
---@alias Vector3_ptr Vector3
---@alias Vector3_ptr_ptr Vector3
---@field x number # Vector x component
---@field y number # Vector y component
---@field z number # Vector z component
---Constructed using `rl.new("Vector3", ...)`
local Vector3 = {}
---@class Camera3D @ Camera type, defines a camera position/orientation in 3d space
---@alias Camera3D_ptr Camera3D
---@alias Camera3D_ptr_ptr Camera3D
---@field position Vector3 # Camera position
---@field target Vector3 # Camera target it looks-at
---@field up Vector3 # Camera up vector (rotation over its axis)
---@field fovy number # Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
---@field projection number # Camera projection type: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
---Constructed using `rl.new("Camera3D", ...)`
local Camera3D = {}
---@param camera Camera_ptr|lightuserdata
---@return Vector3
function rl.GetCameraForward(camera) end
---@param camera Camera_ptr|lightuserdata
---@return Vector3
function rl.GetCameraUp(camera) end
---@param camera Camera_ptr|lightuserdata
---@return Vector3
function rl.GetCameraRight(camera) end
---@param camera Camera_ptr|lightuserdata
---@param distance number
---@param moveInWorldPlane bool
function rl.CameraMoveForward(camera,distance,moveInWorldPlane) end
---@param camera Camera_ptr|lightuserdata
---@param distance number
function rl.CameraMoveUp(camera,distance) end
---@param camera Camera_ptr|lightuserdata
---@param distance number
---@param moveInWorldPlane bool
function rl.CameraMoveRight(camera,distance,moveInWorldPlane) end
---@param camera Camera_ptr|lightuserdata
---@param delta number
function rl.CameraMoveToTarget(camera,delta) end
---@param camera Camera_ptr|lightuserdata
---@param angle number
---@param rotateAroundTarget bool
function rl.CameraYaw(camera,angle,rotateAroundTarget) end
---@param camera Camera_ptr|lightuserdata
---@param angle number
---@param lockView bool
---@param rotateAroundTarget bool
---@param rotateUp bool
function rl.CameraPitch(camera,angle,lockView,rotateAroundTarget,rotateUp) end
---@param camera Camera_ptr|lightuserdata
---@param angle number
function rl.CameraRoll(camera,angle) end
---@param camera Camera_ptr|lightuserdata
---@return Matrix
function rl.GetCameraViewMatrix(camera) end
---@param camera Camera_ptr|lightuserdata
---@param aspect number
---@return Matrix
function rl.GetCameraProjectionMatrix(camera,aspect) end
---@alias rlGlVersion
---| 'OPENGL_11'
---| 'OPENGL_21'
---| 'OPENGL_33'
---| 'OPENGL_43'
---| 'OPENGL_ES_20'

rl.OPENGL_11 = 1
rl.OPENGL_21 = 2
rl.OPENGL_33 = 3
rl.OPENGL_43 = 4
rl.OPENGL_ES_20 = 5
---@alias rlFramebufferAttachType
---| 'RL_ATTACHMENT_COLOR_CHANNEL0'
---| 'RL_ATTACHMENT_COLOR_CHANNEL1'
---| 'RL_ATTACHMENT_COLOR_CHANNEL2'
---| 'RL_ATTACHMENT_COLOR_CHANNEL3'
---| 'RL_ATTACHMENT_COLOR_CHANNEL4'
---| 'RL_ATTACHMENT_COLOR_CHANNEL5'
---| 'RL_ATTACHMENT_COLOR_CHANNEL6'
---| 'RL_ATTACHMENT_COLOR_CHANNEL7'
---| 'RL_ATTACHMENT_DEPTH'
---| 'RL_ATTACHMENT_STENCIL'

rl.RL_ATTACHMENT_COLOR_CHANNEL0 = 0
rl.RL_ATTACHMENT_COLOR_CHANNEL1 = 1
rl.RL_ATTACHMENT_COLOR_CHANNEL2 = 2
rl.RL_ATTACHMENT_COLOR_CHANNEL3 = 3
rl.RL_ATTACHMENT_COLOR_CHANNEL4 = 4
rl.RL_ATTACHMENT_COLOR_CHANNEL5 = 5
rl.RL_ATTACHMENT_COLOR_CHANNEL6 = 6
rl.RL_ATTACHMENT_COLOR_CHANNEL7 = 7
rl.RL_ATTACHMENT_DEPTH = 100
rl.RL_ATTACHMENT_STENCIL = 200
---@alias rlFramebufferAttachTextureType
---| 'RL_ATTACHMENT_CUBEMAP_POSITIVE_X'
---| 'RL_ATTACHMENT_CUBEMAP_NEGATIVE_X'
---| 'RL_ATTACHMENT_CUBEMAP_POSITIVE_Y'
---| 'RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y'
---| 'RL_ATTACHMENT_CUBEMAP_POSITIVE_Z'
---| 'RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z'
---| 'RL_ATTACHMENT_TEXTURE2D'
---| 'RL_ATTACHMENT_RENDERBUFFER'

rl.RL_ATTACHMENT_CUBEMAP_POSITIVE_X = 0
rl.RL_ATTACHMENT_CUBEMAP_NEGATIVE_X = 1
rl.RL_ATTACHMENT_CUBEMAP_POSITIVE_Y = 2
rl.RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y = 3
rl.RL_ATTACHMENT_CUBEMAP_POSITIVE_Z = 4
rl.RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z = 5
rl.RL_ATTACHMENT_TEXTURE2D = 100
rl.RL_ATTACHMENT_RENDERBUFFER = 200
---@alias rlTraceLogLevel
---| 'RL_LOG_ALL'
---| 'RL_LOG_TRACE'
---| 'RL_LOG_DEBUG'
---| 'RL_LOG_INFO'
---| 'RL_LOG_WARNING'
---| 'RL_LOG_ERROR'
---| 'RL_LOG_FATAL'
---| 'RL_LOG_NONE'
---Trace log level

---Display all logs
rl.RL_LOG_ALL = 0
---Trace logging, intended for internal use only
rl.RL_LOG_TRACE = 1
---Debug logging, used for internal debugging, it should be disabled on release builds
rl.RL_LOG_DEBUG = 2
---Info logging, used for program execution info
rl.RL_LOG_INFO = 3
---Warning logging, used on recoverable failures
rl.RL_LOG_WARNING = 4
---Error logging, used on unrecoverable failures
rl.RL_LOG_ERROR = 5
---Fatal logging, used to abort program: exit(EXIT_FAILURE)
rl.RL_LOG_FATAL = 6
---Disable logging
rl.RL_LOG_NONE = 7
---@alias rlPixelFormat
---| 'RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R32'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32'
---| 'RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32'
---| 'RL_PIXELFORMAT_COMPRESSED_DXT1_RGB'
---| 'RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA'
---| 'RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA'
---| 'RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA'
---| 'RL_PIXELFORMAT_COMPRESSED_ETC1_RGB'
---| 'RL_PIXELFORMAT_COMPRESSED_ETC2_RGB'
---| 'RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA'
---| 'RL_PIXELFORMAT_COMPRESSED_PVRT_RGB'
---| 'RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA'
---| 'RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA'
---| 'RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA'
---Texture formats (support depends on OpenGL version)

---8 bit per pixel (no alpha)
rl.RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1
---8*2 bpp (2 channels)
rl.RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2
---16 bpp
rl.RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3
---24 bpp
rl.RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4
---16 bpp (1 bit alpha)
rl.RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5
---16 bpp (4 bit alpha)
rl.RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6
---32 bpp
rl.RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7
---32 bpp (1 channel - float)
rl.RL_PIXELFORMAT_UNCOMPRESSED_R32 = 8
---32*3 bpp (3 channels - float)
rl.RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9
---32*4 bpp (4 channels - float)
rl.RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10
---4 bpp (no alpha)
rl.RL_PIXELFORMAT_COMPRESSED_DXT1_RGB = 11
---4 bpp (1 bit alpha)
rl.RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA = 12
---8 bpp
rl.RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA = 13
---8 bpp
rl.RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA = 14
---4 bpp
rl.RL_PIXELFORMAT_COMPRESSED_ETC1_RGB = 15
---4 bpp
rl.RL_PIXELFORMAT_COMPRESSED_ETC2_RGB = 16
---8 bpp
rl.RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 17
---4 bpp
rl.RL_PIXELFORMAT_COMPRESSED_PVRT_RGB = 18
---4 bpp
rl.RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA = 19
---8 bpp
rl.RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 20
---2 bpp
rl.RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 21
---@alias rlTextureFilter
---| 'RL_TEXTURE_FILTER_POINT'
---| 'RL_TEXTURE_FILTER_BILINEAR'
---| 'RL_TEXTURE_FILTER_TRILINEAR'
---| 'RL_TEXTURE_FILTER_ANISOTROPIC_4X'
---| 'RL_TEXTURE_FILTER_ANISOTROPIC_8X'
---| 'RL_TEXTURE_FILTER_ANISOTROPIC_16X'
---Texture parameters: filter mode

---No filter, just pixel approximation
rl.RL_TEXTURE_FILTER_POINT = 0
---Linear filtering
rl.RL_TEXTURE_FILTER_BILINEAR = 1
---Trilinear filtering (linear with mipmaps)
rl.RL_TEXTURE_FILTER_TRILINEAR = 2
---Anisotropic filtering 4x
rl.RL_TEXTURE_FILTER_ANISOTROPIC_4X = 3
---Anisotropic filtering 8x
rl.RL_TEXTURE_FILTER_ANISOTROPIC_8X = 4
---Anisotropic filtering 16x
rl.RL_TEXTURE_FILTER_ANISOTROPIC_16X = 5
---@alias rlBlendMode
---| 'RL_BLEND_ALPHA'
---| 'RL_BLEND_ADDITIVE'
---| 'RL_BLEND_MULTIPLIED'
---| 'RL_BLEND_ADD_COLORS'
---| 'RL_BLEND_SUBTRACT_COLORS'
---| 'RL_BLEND_ALPHA_PREMULTIPLY'
---| 'RL_BLEND_CUSTOM'
---Color blending modes (pre-defined)

---Blend textures considering alpha (default)
rl.RL_BLEND_ALPHA = 0
---Blend textures adding colors
rl.RL_BLEND_ADDITIVE = 1
---Blend textures multiplying colors
rl.RL_BLEND_MULTIPLIED = 2
---Blend textures adding colors (alternative)
rl.RL_BLEND_ADD_COLORS = 3
---Blend textures subtracting colors (alternative)
rl.RL_BLEND_SUBTRACT_COLORS = 4
---Blend premultiplied textures considering alpha
rl.RL_BLEND_ALPHA_PREMULTIPLY = 5
---Blend textures using custom src/dst factors (use rlSetBlendFactors())
rl.RL_BLEND_CUSTOM = 6
---@alias rlShaderLocationIndex
---| 'RL_SHADER_LOC_VERTEX_POSITION'
---| 'RL_SHADER_LOC_VERTEX_TEXCOORD01'
---| 'RL_SHADER_LOC_VERTEX_TEXCOORD02'
---| 'RL_SHADER_LOC_VERTEX_NORMAL'
---| 'RL_SHADER_LOC_VERTEX_TANGENT'
---| 'RL_SHADER_LOC_VERTEX_COLOR'
---| 'RL_SHADER_LOC_MATRIX_MVP'
---| 'RL_SHADER_LOC_MATRIX_VIEW'
---| 'RL_SHADER_LOC_MATRIX_PROJECTION'
---| 'RL_SHADER_LOC_MATRIX_MODEL'
---| 'RL_SHADER_LOC_MATRIX_NORMAL'
---| 'RL_SHADER_LOC_VECTOR_VIEW'
---| 'RL_SHADER_LOC_COLOR_DIFFUSE'
---| 'RL_SHADER_LOC_COLOR_SPECULAR'
---| 'RL_SHADER_LOC_COLOR_AMBIENT'
---| 'RL_SHADER_LOC_MAP_ALBEDO'
---| 'RL_SHADER_LOC_MAP_METALNESS'
---| 'RL_SHADER_LOC_MAP_NORMAL'
---| 'RL_SHADER_LOC_MAP_ROUGHNESS'
---| 'RL_SHADER_LOC_MAP_OCCLUSION'
---| 'RL_SHADER_LOC_MAP_EMISSION'
---| 'RL_SHADER_LOC_MAP_HEIGHT'
---| 'RL_SHADER_LOC_MAP_CUBEMAP'
---| 'RL_SHADER_LOC_MAP_IRRADIANCE'
---| 'RL_SHADER_LOC_MAP_PREFILTER'
---| 'RL_SHADER_LOC_MAP_BRDF'
---Shader location point type

---Shader location: vertex attribute: position
rl.RL_SHADER_LOC_VERTEX_POSITION = 0
---Shader location: vertex attribute: texcoord01
rl.RL_SHADER_LOC_VERTEX_TEXCOORD01 = 1
---Shader location: vertex attribute: texcoord02
rl.RL_SHADER_LOC_VERTEX_TEXCOORD02 = 2
---Shader location: vertex attribute: normal
rl.RL_SHADER_LOC_VERTEX_NORMAL = 3
---Shader location: vertex attribute: tangent
rl.RL_SHADER_LOC_VERTEX_TANGENT = 4
---Shader location: vertex attribute: color
rl.RL_SHADER_LOC_VERTEX_COLOR = 5
---Shader location: matrix uniform: model-view-projection
rl.RL_SHADER_LOC_MATRIX_MVP = 6
---Shader location: matrix uniform: view (camera transform)
rl.RL_SHADER_LOC_MATRIX_VIEW = 7
---Shader location: matrix uniform: projection
rl.RL_SHADER_LOC_MATRIX_PROJECTION = 8
---Shader location: matrix uniform: model (transform)
rl.RL_SHADER_LOC_MATRIX_MODEL = 9
---Shader location: matrix uniform: normal
rl.RL_SHADER_LOC_MATRIX_NORMAL = 10
---Shader location: vector uniform: view
rl.RL_SHADER_LOC_VECTOR_VIEW = 11
---Shader location: vector uniform: diffuse color
rl.RL_SHADER_LOC_COLOR_DIFFUSE = 12
---Shader location: vector uniform: specular color
rl.RL_SHADER_LOC_COLOR_SPECULAR = 13
---Shader location: vector uniform: ambient color
rl.RL_SHADER_LOC_COLOR_AMBIENT = 14
---Shader location: sampler2d texture: albedo (same as: RL_SHADER_LOC_MAP_DIFFUSE)
rl.RL_SHADER_LOC_MAP_ALBEDO = 15
---Shader location: sampler2d texture: metalness (same as: RL_SHADER_LOC_MAP_SPECULAR)
rl.RL_SHADER_LOC_MAP_METALNESS = 16
---Shader location: sampler2d texture: normal
rl.RL_SHADER_LOC_MAP_NORMAL = 17
---Shader location: sampler2d texture: roughness
rl.RL_SHADER_LOC_MAP_ROUGHNESS = 18
---Shader location: sampler2d texture: occlusion
rl.RL_SHADER_LOC_MAP_OCCLUSION = 19
---Shader location: sampler2d texture: emission
rl.RL_SHADER_LOC_MAP_EMISSION = 20
---Shader location: sampler2d texture: height
rl.RL_SHADER_LOC_MAP_HEIGHT = 21
---Shader location: samplerCube texture: cubemap
rl.RL_SHADER_LOC_MAP_CUBEMAP = 22
---Shader location: samplerCube texture: irradiance
rl.RL_SHADER_LOC_MAP_IRRADIANCE = 23
---Shader location: samplerCube texture: prefilter
rl.RL_SHADER_LOC_MAP_PREFILTER = 24
---Shader location: sampler2d texture: brdf
rl.RL_SHADER_LOC_MAP_BRDF = 25
---@alias rlShaderUniformDataType
---| 'RL_SHADER_UNIFORM_FLOAT'
---| 'RL_SHADER_UNIFORM_VEC2'
---| 'RL_SHADER_UNIFORM_VEC3'
---| 'RL_SHADER_UNIFORM_VEC4'
---| 'RL_SHADER_UNIFORM_INT'
---| 'RL_SHADER_UNIFORM_IVEC2'
---| 'RL_SHADER_UNIFORM_IVEC3'
---| 'RL_SHADER_UNIFORM_IVEC4'
---| 'RL_SHADER_UNIFORM_SAMPLER2D'
---Shader uniform data type

---Shader uniform type: float
rl.RL_SHADER_UNIFORM_FLOAT = 0
---Shader uniform type: vec2 (2 float)
rl.RL_SHADER_UNIFORM_VEC2 = 1
---Shader uniform type: vec3 (3 float)
rl.RL_SHADER_UNIFORM_VEC3 = 2
---Shader uniform type: vec4 (4 float)
rl.RL_SHADER_UNIFORM_VEC4 = 3
---Shader uniform type: int
rl.RL_SHADER_UNIFORM_INT = 4
---Shader uniform type: ivec2 (2 int)
rl.RL_SHADER_UNIFORM_IVEC2 = 5
---Shader uniform type: ivec3 (3 int)
rl.RL_SHADER_UNIFORM_IVEC3 = 6
---Shader uniform type: ivec4 (4 int)
rl.RL_SHADER_UNIFORM_IVEC4 = 7
---Shader uniform type: sampler2d
rl.RL_SHADER_UNIFORM_SAMPLER2D = 8
---@alias rlShaderAttributeDataType
---| 'RL_SHADER_ATTRIB_FLOAT'
---| 'RL_SHADER_ATTRIB_VEC2'
---| 'RL_SHADER_ATTRIB_VEC3'
---| 'RL_SHADER_ATTRIB_VEC4'
---Shader attribute data types

---Shader attribute type: float
rl.RL_SHADER_ATTRIB_FLOAT = 0
---Shader attribute type: vec2 (2 float)
rl.RL_SHADER_ATTRIB_VEC2 = 1
---Shader attribute type: vec3 (3 float)
rl.RL_SHADER_ATTRIB_VEC3 = 2
---Shader attribute type: vec4 (4 float)
rl.RL_SHADER_ATTRIB_VEC4 = 3
---@class rlVertexBuffer @ Dynamic vertex buffers (position + texcoords + colors + indices arrays)
---@alias rlVertexBuffer_ptr rlVertexBuffer
---@alias rlVertexBuffer_ptr_ptr rlVertexBuffer
---@field elementCount number # Number of elements in the buffer (QUADS)
---@field vertices number # Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
---@field texcoords number # Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
---@field colors string|lightuserdata # Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
---@field vaoId number # Vertex array id to be used on the draw -> Using RLGL.currentBatch->vertexBuffer.vaoId
---@field indices number # Vertex indices (in case vertex data comes indexed) (6 indices per quad)
---@field rlRenderBatch #endif
---@field vertexAlignment #if_defined(GRAPHICS_API_OPENGL_ES2) # Number of vertex required for index alignment (LINES, TRIANGLES)
---@field indices unsigned_short_ptr|lightuserdata # Vertex indices (in case vertex data comes indexed) (6 indices per quad)
---@field mode #endif # Drawing mode: LINES, TRIANGLES, QUADS
---@field vaoId number # OpenGL Vertex Array Object id
---@field vboId number # OpenGL Vertex Buffer Objects id (4 types of vertex data)
---Constructed using `rl.new("rlVertexBuffer", ...)`
local rlVertexBuffer = {}
---@class rlDrawCall @ of those state-change happens (this is done in core module)
---@alias rlDrawCall_ptr rlDrawCall
---@alias rlDrawCall_ptr_ptr rlDrawCall
---@field mode number # Drawing mode: LINES, TRIANGLES, QUADS
---@field vertexCount number # Number of vertex of the draw
---@field vertexAlignment number # Number of vertex required for index alignment (LINES, TRIANGLES)
---@field textureId number # Texture id to be used on the draw -> Use to create new draw call if changes
---Constructed using `rl.new("rlDrawCall", ...)`
local rlDrawCall = {}
---@class rlRenderBatch @ rlRenderBatch type
---@alias rlRenderBatch_ptr rlRenderBatch
---@alias rlRenderBatch_ptr_ptr rlRenderBatch
---@field bufferCount number # Number of vertex buffers (multi-buffering support)
---@field currentBuffer number # Current buffer tracking in case of multi-buffering
---@field vertexBuffer rlVertexBuffer_ptr|lightuserdata # Dynamic buffer(s) for vertex data
---@field draws rlDrawCall_ptr|lightuserdata # Draw calls array, depends on textureId
---@field drawCounter number # Draw calls counter
---@field currentDepth number # Current depth value for next draw
---Constructed using `rl.new("rlRenderBatch", ...)`
local rlRenderBatch = {}
---@class Matrix @ Matrix, 4x4 components, column major, OpenGL style, right handed
---@alias Matrix_ptr Matrix
---@alias Matrix_ptr_ptr Matrix
---@field m0 number # Matrix first row (4 components)
---@field m4 number # Matrix first row (4 components)
---@field m8 number # Matrix first row (4 components)
---@field m12 number # Matrix first row (4 components)
---@field m1 number # Matrix second row (4 components)
---@field m5 number # Matrix second row (4 components)
---@field m9 number # Matrix second row (4 components)
---@field m13 number # Matrix second row (4 components)
---@field m2 number # Matrix third row (4 components)
---@field m6 number # Matrix third row (4 components)
---@field m10 number # Matrix third row (4 components)
---@field m14 number # Matrix third row (4 components)
---@field m3 number # Matrix fourth row (4 components)
---@field m7 number # Matrix fourth row (4 components)
---@field m11 number # Matrix fourth row (4 components)
---@field m15 number # Matrix fourth row (4 components)
---Constructed using `rl.new("Matrix", ...)`
local Matrix = {}
---@class rlglData
---@alias rlglData_ptr rlglData
---@alias rlglData_ptr_ptr rlglData
---@field currentBatch rlRenderBatch_ptr|lightuserdata # Current render batch
---@field defaultBatch rlRenderBatch # Default internal render batch
---@field vertexCounter number # Current active render batch vertex counter (generic, used for all batches)
---@field texcoordx number # Current active texture coordinate (added on glVertex*())
---@field texcoordy number # Current active texture coordinate (added on glVertex*())
---@field normalx number # Current active normal (added on glVertex*())
---@field normaly number # Current active normal (added on glVertex*())
---@field normalz number # Current active normal (added on glVertex*())
---@field colorr number|string[] # Current active color (added on glVertex*())
---@field colorg number|string[] # Current active color (added on glVertex*())
---@field colorb number|string[] # Current active color (added on glVertex*())
---@field colora number|string[] # Current active color (added on glVertex*())
---@field currentMatrixMode number # Current matrix mode
---@field currentMatrix Matrix_ptr|lightuserdata # Current matrix pointer
---@field modelview Matrix # Default modelview matrix
---@field projection Matrix # Default projection matrix
---@field transform Matrix # Transform matrix to be used with rlTranslate, rlRotate, rlScale
---@field transformRequired bool # Require transform matrix application to current draw-call vertex (if required)
---@field stack Matrix[RL_MAX_MATRIX_STACK_SIZE] # Matrix stack for push/pop
---@field stackCounter number # Matrix stack counter
---@field defaultTextureId number # Default texture used on shapes/poly drawing (required by shader)
---@field activeTextureId number # Active texture ids to be enabled on batch drawing (0 active by default)
---@field defaultVShaderId number # Default vertex shader id (used by default shader program)
---@field defaultFShaderId number # Default fragment shader id (used by default shader program)
---@field defaultShaderId number # Default shader program id, supports vertex color and diffuse texture
---@field defaultShaderLocs number # Default shader locations pointer to be used on rendering
---@field currentShaderId number # Current shader id to be used on rendering (by default, defaultShaderId)
---@field currentShaderLocs number # Current shader locations pointer to be used on rendering (by default, defaultShaderLocs)
---@field stereoRender bool # Stereo rendering flag
---@field projectionStereo Matrix[2] # VR stereo rendering eyes projection matrices
---@field viewOffsetStereo Matrix[2] # VR stereo rendering eyes view offset matrices
---@field currentBlendMode number # Blending mode active
---@field glBlendSrcFactor number # Blending source factor
---@field glBlendDstFactor number # Blending destination factor
---@field glBlendEquation number # Blending equation
---@field framebufferWidth number # Current framebuffer width
---@field framebufferHeight number # Current framebuffer height
---Constructed using `rl.new("rlglData", ...)`
local rlglData = {}
---@param mode number
---Choose the current matrix to be transformed
function rl.rlMatrixMode(mode) end
---Push the current matrix to stack
function rl.rlPushMatrix() end
---Pop lattest inserted matrix from stack
function rl.rlPopMatrix() end
---Reset current matrix to identity matrix
function rl.rlLoadIdentity() end
---@param x number
---@param y number
---@param z number
---Multiply the current matrix by a translation matrix
function rl.rlTranslatef(x,y,z) end
---@param angle number
---@param x number
---@param y number
---@param z number
---Multiply the current matrix by a rotation matrix
function rl.rlRotatef(angle,x,y,z) end
---@param x number
---@param y number
---@param z number
---Multiply the current matrix by a scaling matrix
function rl.rlScalef(x,y,z) end
---@param matf number
---Multiply the current matrix by another matrix
function rl.rlMultMatrixf(matf) end
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param znear number
---@param zfar number
function rl.rlFrustum(left,right,bottom,top,znear,zfar) end
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param znear number
---@param zfar number
function rl.rlOrtho(left,right,bottom,top,znear,zfar) end
---@param x number
---@param y number
---@param width number
---@param height number
---Set the viewport area
function rl.rlViewport(x,y,width,height) end
---@param mode number
---Initialize drawing mode (how to organize vertex)
function rl.rlBegin(mode) end
---Finish vertex providing
function rl.rlEnd() end
---@param x number
---@param y number
---Define one vertex (position) - 2 int
function rl.rlVertex2i(x,y) end
---@param x number
---@param y number
---Define one vertex (position) - 2 float
function rl.rlVertex2f(x,y) end
---@param x number
---@param y number
---@param z number
---Define one vertex (position) - 3 float
function rl.rlVertex3f(x,y,z) end
---@param x number
---@param y number
---Define one vertex (texture coordinate) - 2 float
function rl.rlTexCoord2f(x,y) end
---@param x number
---@param y number
---@param z number
---Define one vertex (normal) - 3 float
function rl.rlNormal3f(x,y,z) end
---@param r number|string[]
---@param g number|string[]
---@param b number|string[]
---@param a number|string[]
---Define one vertex (color) - 4 byte
function rl.rlColor4ub(r,g,b,a) end
---@param x number
---@param y number
---@param z number
---Define one vertex (color) - 3 float
function rl.rlColor3f(x,y,z) end
---@param x number
---@param y number
---@param z number
---@param w number
---Define one vertex (color) - 4 float
function rl.rlColor4f(x,y,z,w) end
---@param vaoId number
---@return bool
---Enable vertex array (VAO, if supported)
function rl.rlEnableVertexArray(vaoId) end
---Disable vertex array (VAO, if supported)
function rl.rlDisableVertexArray() end
---@param id number
---Enable vertex buffer (VBO)
function rl.rlEnableVertexBuffer(id) end
---Disable vertex buffer (VBO)
function rl.rlDisableVertexBuffer() end
---@param id number
---Enable vertex buffer element (VBO element)
function rl.rlEnableVertexBufferElement(id) end
---Disable vertex buffer element (VBO element)
function rl.rlDisableVertexBufferElement() end
---@param index number
---Enable vertex attribute index
function rl.rlEnableVertexAttribute(index) end
---@param index number
---Disable vertex attribute index
function rl.rlDisableVertexAttribute(index) end
---@param vertexAttribType number
---@param buffer string|lightuserdata
---Enable attribute state pointer
function rl.rlEnableStatePointer(vertexAttribType,buffer) end
---@param vertexAttribType number
---Disable attribute state pointer
function rl.rlDisableStatePointer(vertexAttribType) end
---@param slot number
---Select and active a texture slot
function rl.rlActiveTextureSlot(slot) end
---@param id number
---Enable texture
function rl.rlEnableTexture(id) end
---Disable texture
function rl.rlDisableTexture() end
---@param id number
---Enable texture cubemap
function rl.rlEnableTextureCubemap(id) end
---Disable texture cubemap
function rl.rlDisableTextureCubemap() end
---@param id number
---@param param number
---@param value number
---Set texture parameters (filter, wrap)
function rl.rlTextureParameters(id,param,value) end
---@param id number
---Enable shader program
function rl.rlEnableShader(id) end
---Disable shader program
function rl.rlDisableShader() end
---@param id number
---Enable render texture (fbo)
function rl.rlEnableFramebuffer(id) end
---Disable render texture (fbo), return to default framebuffer
function rl.rlDisableFramebuffer() end
---@param count number
---Activate multiple draw color buffers
function rl.rlActiveDrawBuffers(count) end
---Enable color blending
function rl.rlEnableColorBlend() end
---Disable color blending
function rl.rlDisableColorBlend() end
---Enable depth test
function rl.rlEnableDepthTest() end
---Disable depth test
function rl.rlDisableDepthTest() end
---Enable depth write
function rl.rlEnableDepthMask() end
---Disable depth write
function rl.rlDisableDepthMask() end
---Enable backface culling
function rl.rlEnableBackfaceCulling() end
---Disable backface culling
function rl.rlDisableBackfaceCulling() end
---Enable scissor test
function rl.rlEnableScissorTest() end
---Disable scissor test
function rl.rlDisableScissorTest() end
---@param x number
---@param y number
---@param width number
---@param height number
---Scissor test
function rl.rlScissor(x,y,width,height) end
---Enable wire mode
function rl.rlEnableWireMode() end
---Disable wire mode
function rl.rlDisableWireMode() end
---@param width number
---Set the line drawing width
function rl.rlSetLineWidth(width) end
---@return number
---Get the line drawing width
function rl.rlGetLineWidth() end
---Enable line aliasing
function rl.rlEnableSmoothLines() end
---Disable line aliasing
function rl.rlDisableSmoothLines() end
---Enable stereo rendering
function rl.rlEnableStereoRender() end
---Disable stereo rendering
function rl.rlDisableStereoRender() end
---@return bool
---Check if stereo render is enabled
function rl.rlIsStereoRenderEnabled() end
---@param r number|string[]
---@param g number|string[]
---@param b number|string[]
---@param a number|string[]
---Clear color buffer with color
function rl.rlClearColor(r,g,b,a) end
---Clear used screen buffers (color and depth)
function rl.rlClearScreenBuffers() end
---Check and log OpenGL error codes
function rl.rlCheckErrors() end
---@param mode number
---Set blending mode
function rl.rlSetBlendMode(mode) end
---@param glSrcFactor number
---@param glDstFactor number
---@param glEquation number
---Set blending mode factor and equation (using OpenGL factors)
function rl.rlSetBlendFactors(glSrcFactor,glDstFactor,glEquation) end
---@param width number
---@param height number
---Initialize rlgl (buffers, shaders, textures, states)
function rl.rlglInit(width,height) end
---De-inititialize rlgl (buffers, shaders, textures)
function rl.rlglClose() end
---@param loader string|lightuserdata
---Load OpenGL extensions (loader function required)
function rl.rlLoadExtensions(loader) end
---@return number
---Get current OpenGL version
function rl.rlGetVersion() end
---@param width number
---Set current framebuffer width
function rl.rlSetFramebufferWidth(width) end
---@return number
---Get default framebuffer width
function rl.rlGetFramebufferWidth() end
---@param height number
---Set current framebuffer height
function rl.rlSetFramebufferHeight(height) end
---@return number
---Get default framebuffer height
function rl.rlGetFramebufferHeight() end
---@return number
---Get default texture id
function rl.rlGetTextureIdDefault() end
---@return number
---Get default shader id
function rl.rlGetShaderIdDefault() end
---@return number
---Get default shader locations
function rl.rlGetShaderLocsDefault() end
---@param numBuffers number
---@param bufferElements number
---@return rlRenderBatch
---Load a render batch system
function rl.rlLoadRenderBatch(numBuffers,bufferElements) end
---@param batch rlRenderBatch
---Unload render batch system
function rl.rlUnloadRenderBatch(batch) end
---@param batch rlRenderBatch_ptr|lightuserdata
---Draw render batch data (Update->Draw->Reset)
function rl.rlDrawRenderBatch(batch) end
---@param batch rlRenderBatch_ptr|lightuserdata
---Set the active render batch for rlgl (NULL for default internal)
function rl.rlSetRenderBatchActive(batch) end
---Update and draw internal render batch
function rl.rlDrawRenderBatchActive() end
---@param vCount number
---@return bool
---Check internal buffer overflow for a given number of vertex
function rl.rlCheckRenderBatchLimit(vCount) end
---@param id number
---Set current texture for render batch and check buffers limits
function rl.rlSetTexture(id) end
---@return number
---Load vertex array (vao) if supported
function rl.rlLoadVertexArray() end
---@param buffer string|lightuserdata
---@param size number
---@param dynamic bool
---@return number
---Load a vertex buffer attribute
function rl.rlLoadVertexBuffer(buffer,size,dynamic) end
---@param buffer string|lightuserdata
---@param size number
---@param dynamic bool
---@return number
---Load a new attributes element buffer
function rl.rlLoadVertexBufferElement(buffer,size,dynamic) end
---@param bufferId number
---@param data string|lightuserdata
---@param dataSize number
---@param offset number
---Update GPU buffer with new data
function rl.rlUpdateVertexBuffer(bufferId,data,dataSize,offset) end
---@param id number
---@param data string|lightuserdata
---@param dataSize number
---@param offset number
---Update vertex buffer elements with new data
function rl.rlUpdateVertexBufferElements(id,data,dataSize,offset) end
---@param vaoId number
function rl.rlUnloadVertexArray(vaoId) end
---@param vboId number
function rl.rlUnloadVertexBuffer(vboId) end
---@param index number
---@param compSize number
---@param type number
---@param normalized bool
---@param stride number
---@param pointer string|lightuserdata
function rl.rlSetVertexAttribute(index,compSize,type,normalized,stride,pointer) end
---@param index number
---@param divisor number
function rl.rlSetVertexAttributeDivisor(index,divisor) end
---@param locIndex number
---@param value string|lightuserdata
---@param attribType number
---@param count number
---Set vertex attribute default value
function rl.rlSetVertexAttributeDefault(locIndex,value,attribType,count) end
---@param offset number
---@param count number
function rl.rlDrawVertexArray(offset,count) end
---@param offset number
---@param count number
---@param buffer string|lightuserdata
function rl.rlDrawVertexArrayElements(offset,count,buffer) end
---@param offset number
---@param count number
---@param instances number
function rl.rlDrawVertexArrayInstanced(offset,count,instances) end
---@param offset number
---@param count number
---@param buffer string|lightuserdata
---@param instances number
function rl.rlDrawVertexArrayElementsInstanced(offset,count,buffer,instances) end
---@param data string|lightuserdata
---@param width number
---@param height number
---@param format number
---@param mipmapCount number
---@return number
---Load texture in GPU
function rl.rlLoadTexture(data,width,height,format,mipmapCount) end
---@param width number
---@param height number
---@param useRenderBuffer bool
---@return number
---Load depth texture/renderbuffer (to be attached to fbo)
function rl.rlLoadTextureDepth(width,height,useRenderBuffer) end
---@param data string|lightuserdata
---@param size number
---@param format number
---@return number
---Load texture cubemap
function rl.rlLoadTextureCubemap(data,size,format) end
---@param id number
---@param offsetX number
---@param offsetY number
---@param width number
---@param height number
---@param format number
---@param data string|lightuserdata
---Update GPU texture with new data
function rl.rlUpdateTexture(id,offsetX,offsetY,width,height,format,data) end
---@param format number
---@param glInternalFormat number
---@param glFormat number
---@param glType number
---Get OpenGL internal formats
function rl.rlGetGlTextureFormats(format,glInternalFormat,glFormat,glType) end
---@param format number
---@return string|lightuserdata
---Get name string for pixel format
function rl.rlGetPixelFormatName(format) end
---@param id number
---Unload texture from GPU memory
function rl.rlUnloadTexture(id) end
---@param id number
---@param width number
---@param height number
---@param format number
---@param mipmaps number
---Generate mipmap data for selected texture
function rl.rlGenTextureMipmaps(id,width,height,format,mipmaps) end
---@param id number
---@param width number
---@param height number
---@param format number
---@return string|lightuserdata
---Read texture pixel data
function rl.rlReadTexturePixels(id,width,height,format) end
---@param width number
---@param height number
---@return string|lightuserdata
---Read screen pixel data (color buffer)
function rl.rlReadScreenPixels(width,height) end
---@param width number
---@param height number
---@return number
---Load an empty framebuffer
function rl.rlLoadFramebuffer(width,height) end
---@param fboId number
---@param texId number
---@param attachType number
---@param texType number
---@param mipLevel number
---Attach texture/renderbuffer to a framebuffer
function rl.rlFramebufferAttach(fboId,texId,attachType,texType,mipLevel) end
---@param id number
---@return bool
---Verify framebuffer is complete
function rl.rlFramebufferComplete(id) end
---@param id number
---Delete framebuffer from GPU
function rl.rlUnloadFramebuffer(id) end
---@param vsCode string|lightuserdata
---@param fsCode string|lightuserdata
---@return number
---Load shader from code strings
function rl.rlLoadShaderCode(vsCode,fsCode) end
---@param shaderCode string|lightuserdata
---@param type number
---@return number
---Compile custom shader and return shader id (type: RL_VERTEX_SHADER, RL_FRAGMENT_SHADER, RL_COMPUTE_SHADER)
function rl.rlCompileShader(shaderCode,type) end
---@param vShaderId number
---@param fShaderId number
---@return number
---Load custom shader program
function rl.rlLoadShaderProgram(vShaderId,fShaderId) end
---@param id number
---Unload shader program
function rl.rlUnloadShaderProgram(id) end
---@param shaderId number
---@param uniformName string|lightuserdata
---@return number
---Get shader location uniform
function rl.rlGetLocationUniform(shaderId,uniformName) end
---@param shaderId number
---@param attribName string|lightuserdata
---@return number
---Get shader location attribute
function rl.rlGetLocationAttrib(shaderId,attribName) end
---@param locIndex number
---@param value string|lightuserdata
---@param uniformType number
---@param count number
---Set shader value uniform
function rl.rlSetUniform(locIndex,value,uniformType,count) end
---@param locIndex number
---@param mat Matrix
---Set shader value matrix
function rl.rlSetUniformMatrix(locIndex,mat) end
---@param locIndex number
---@param textureId number
---Set shader value sampler
function rl.rlSetUniformSampler(locIndex,textureId) end
---@param id number
---@param locs number
---Set shader currently active (id and locations)
function rl.rlSetShader(id,locs) end
---@param shaderId number
---@return number
---Load compute shader program
function rl.rlLoadComputeShaderProgram(shaderId) end
---@param groupX number
---@param groupY number
---@param groupZ number
---Dispatch compute shader (equivalent to *draw* for graphics pilepine)
function rl.rlComputeShaderDispatch(groupX,groupY,groupZ) end
---@param size number
---@param data string|lightuserdata
---@param usageHint number
---@return number
---Load shader storage buffer object (SSBO)
function rl.rlLoadShaderBuffer(size,data,usageHint) end
---@param ssboId number
---Unload shader storage buffer object (SSBO)
function rl.rlUnloadShaderBuffer(ssboId) end
---@param id number
---@param data string|lightuserdata
---@param dataSize number
---@param offset number
---Update SSBO buffer data
function rl.rlUpdateShaderBufferElements(id,data,dataSize,offset) end
---@param id number
---@return number
---Get SSBO buffer size
function rl.rlGetShaderBufferSize(id) end
---@param id number
---@param dest string|lightuserdata
---@param count number
---@param offset number
---Bind SSBO buffer
function rl.rlReadShaderBufferElements(id,dest,count,offset) end
---@param id number
---@param index number
---Copy SSBO buffer data
function rl.rlBindShaderBuffer(id,index) end
---@param destId number
---@param srcId number
---@param destOffset number
---@param srcOffset number
---@param count number
---Copy SSBO buffer data
function rl.rlCopyBuffersElements(destId,srcId,destOffset,srcOffset,count) end
---@param id number
---@param index number
---@param format number
---@param readonly number
---Bind image texture
function rl.rlBindImageTexture(id,index,format,readonly) end
---@return Matrix
---Get internal modelview matrix
function rl.rlGetMatrixModelview() end
---@return Matrix
---Get internal projection matrix
function rl.rlGetMatrixProjection() end
---@return Matrix
---Get internal accumulated transform matrix
function rl.rlGetMatrixTransform() end
---@param eye number
---@return Matrix
---Get internal projection matrix for stereo render (selected eye)
function rl.rlGetMatrixProjectionStereo(eye) end
---@param eye number
---@return Matrix
---Get internal view offset matrix for stereo render (selected eye)
function rl.rlGetMatrixViewOffsetStereo(eye) end
---@param proj Matrix
---Set a custom projection matrix (replaces internal projection matrix)
function rl.rlSetMatrixProjection(proj) end
---@param view Matrix
---Set a custom modelview matrix (replaces internal modelview matrix)
function rl.rlSetMatrixModelview(view) end
---@param right Matrix
---@param left Matrix
---Set eyes projection matrices for stereo rendering
function rl.rlSetMatrixProjectionStereo(right,left) end
---@param right Matrix
---@param left Matrix
---Set eyes view offsets matrices for stereo rendering
function rl.rlSetMatrixViewOffsetStereo(right,left) end
---Load and draw a cube
function rl.rlLoadDrawCube() end
---Load and draw a quad
function rl.rlLoadDrawQuad() end
---@param eye number
---@return Matrix
function rl.rlGetMatrixProjectionStereo(eye) end
---@param eye number
---@return Matrix
function rl.rlGetMatrixViewOffsetStereo(eye) end
---Create a new variable of ffi type `t`
---@overload fun(t: '"Vector2"', ...): Vector2
---@overload fun(t: '"Matrix2x2"', ...): Matrix2x2
---@overload fun(t: '"PhysicsVertexData"', ...): PhysicsVertexData
---@overload fun(t: '"PhysicsShape"', ...): PhysicsShape
---@overload fun(t: '"PhysicsBodyData"', ...): PhysicsBodyData
---@overload fun(t: '"PhysicsManifoldData"', ...): PhysicsManifoldData
---@overload fun(t: '"Vector2"', ...): Vector2
---@overload fun(t: '"Vector3"', ...): Vector3
---@overload fun(t: '"Color"', ...): Color
---@overload fun(t: '"Rectangle"', ...): Rectangle
---@overload fun(t: '"Texture2D"', ...): Texture2D
---@overload fun(t: '"GlyphInfo"', ...): GlyphInfo
---@overload fun(t: '"Font"', ...): Font
---@overload fun(t: '"GuiStyleProp"', ...): GuiStyleProp
---@overload fun(t: '"Vector2"', ...): Vector2
---@overload fun(t: '"Vector3"', ...): Vector3
---@overload fun(t: '"Vector4"', ...): Vector4
---@overload fun(t: '"Matrix"', ...): Matrix
---@overload fun(t: '"Color"', ...): Color
---@overload fun(t: '"Rectangle"', ...): Rectangle
---@overload fun(t: '"Image"', ...): Image
---@overload fun(t: '"Texture"', ...): Texture
---@overload fun(t: '"RenderTexture"', ...): RenderTexture
---@overload fun(t: '"NPatchInfo"', ...): NPatchInfo
---@overload fun(t: '"GlyphInfo"', ...): GlyphInfo
---@overload fun(t: '"Font"', ...): Font
---@overload fun(t: '"Camera3D"', ...): Camera3D
---@overload fun(t: '"Camera2D"', ...): Camera2D
---@overload fun(t: '"Mesh"', ...): Mesh
---@overload fun(t: '"Shader"', ...): Shader
---@overload fun(t: '"MaterialMap"', ...): MaterialMap
---@overload fun(t: '"Material"', ...): Material
---@overload fun(t: '"Transform"', ...): Transform
---@overload fun(t: '"BoneInfo"', ...): BoneInfo
---@overload fun(t: '"Model"', ...): Model
---@overload fun(t: '"ModelAnimation"', ...): ModelAnimation
---@overload fun(t: '"Ray"', ...): Ray
---@overload fun(t: '"RayCollision"', ...): RayCollision
---@overload fun(t: '"BoundingBox"', ...): BoundingBox
---@overload fun(t: '"Wave"', ...): Wave
---@overload fun(t: '"AudioStream"', ...): AudioStream
---@overload fun(t: '"Sound"', ...): Sound
---@overload fun(t: '"Music"', ...): Music
---@overload fun(t: '"VrDeviceInfo"', ...): VrDeviceInfo
---@overload fun(t: '"VrStereoConfig"', ...): VrStereoConfig
---@overload fun(t: '"FilePathList"', ...): FilePathList
---@overload fun(t: '"Vector2"', ...): Vector2
---@overload fun(t: '"Vector3"', ...): Vector3
---@overload fun(t: '"Camera3D"', ...): Camera3D
---@overload fun(t: '"rlVertexBuffer"', ...): rlVertexBuffer
---@overload fun(t: '"rlDrawCall"', ...): rlDrawCall
---@overload fun(t: '"rlRenderBatch"', ...): rlRenderBatch
---@overload fun(t: '"Matrix"', ...): Matrix
---@overload fun(t: '"rlglData"', ...): rlglData
function rl.new(...) end
