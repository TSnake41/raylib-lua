void GuiEnable(void)
void GuiDisable(void)
void GuiLock(void)
void GuiUnlock(void)
bool GuiIsLocked(void)
void GuiFade(float alpha)
void GuiSetState(int state)
int GuiGetState(void)
void GuiSetFont(Font font)
Font GuiGetFont(void)
void GuiSetStyle(int control, int property, int value)
int GuiGetStyle(int control, int property)
bool GuiWindowBox(Rectangle bounds, const char *title)
void GuiGroupBox(Rectangle bounds, const char *text)
void GuiLine(Rectangle bounds, const char *text)
void GuiPanel(Rectangle bounds, const char *text)
int GuiTabBar(Rectangle bounds, const char **text, int count, int *active)
Rectangle GuiScrollPanel(Rectangle bounds, const char *text, Rectangle content, Vector2 *scroll)
void GuiLabel(Rectangle bounds, const char *text)
bool GuiButton(Rectangle bounds, const char *text)
bool GuiLabelButton(Rectangle bounds, const char *text)
bool GuiToggle(Rectangle bounds, const char *text, bool active)
int GuiToggleGroup(Rectangle bounds, const char *text, int active)
bool GuiCheckBox(Rectangle bounds, const char *text, bool checked)
int GuiComboBox(Rectangle bounds, const char *text, int active)
bool GuiDropdownBox(Rectangle bounds, const char *text, int *active, bool editMode)
bool GuiSpinner(Rectangle bounds, const char *text, int *value, int minValue, int maxValue, bool editMode)
bool GuiValueBox(Rectangle bounds, const char *text, int *value, int minValue, int maxValue, bool editMode)
bool GuiTextBox(Rectangle bounds, char *text, int textSize, bool editMode)
bool GuiTextBoxMulti(Rectangle bounds, char *text, int textSize, bool editMode)
float GuiSlider(Rectangle bounds, const char *textLeft, const char *textRight, float value, float minValue, float maxValue)
float GuiSliderBar(Rectangle bounds, const char *textLeft, const char *textRight, float value, float minValue, float maxValue)
float GuiProgressBar(Rectangle bounds, const char *textLeft, const char *textRight, float value, float minValue, float maxValue)
void GuiStatusBar(Rectangle bounds, const char *text)
void GuiDummyRec(Rectangle bounds, const char *text)
Vector2 GuiGrid(Rectangle bounds, const char *text, float spacing, int subdivs)
int GuiListView(Rectangle bounds, const char *text, int *scrollIndex, int active)
int GuiListViewEx(Rectangle bounds, const char **text, int count, int *focus, int *scrollIndex, int active)
int GuiMessageBox(Rectangle bounds, const char *title, const char *message, const char *buttons)
int GuiTextInputBox(Rectangle bounds, const char *title, const char *message, const char *buttons, char *text, int textMaxSize, int *secretViewActive)
Color GuiColorPicker(Rectangle bounds, const char *text, Color color)
Color GuiColorPanel(Rectangle bounds, const char *text, Color color)
float GuiColorBarAlpha(Rectangle bounds, const char *text, float alpha)
float GuiColorBarHue(Rectangle bounds, const char *text, float value)
void GuiLoadStyle(const char *fileName)
void GuiLoadStyleDefault(void)
void GuiEnableTooltip(void)
void GuiDisableTooltip(void)
void GuiSetTooltip(const char *tooltip)
const char *GuiIconText(int iconId, const char *text)
unsigned int *GuiGetIcons(void)
char **GuiLoadIcons(const char *fileName, bool loadIconsName)
void GuiDrawIcon(int iconId, int posX, int posY, int pixelSize, Color color)
void GuiSetIconScale(int scale)