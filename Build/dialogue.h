#define TEXT_SPEED_FAST 1
#define TEXT_SPEED_STANDARD 3
#define TEXT_SPEED_SLOW 5

#define TEXTBOX_COL 124
#define TEXTBOX_ROW 16
#define TEXTBOX_WIDTH 100
#define TEXTBOX_HEIGHT 152

#define CHOICE_A_COL 12
#define CHOICE_A_ROW 112

#define CHOICE_B_COL 12
#define CHOICE_B_ROW 136

#define SELECTOR_A_COL 4
#define SELECTOR_A_ROW 112

#define SELECTOR_B_COL 4
#define SELECTOR_B_ROW 136

#define TALKING_HEAD_WIDTH 116
#define TALKING_HEAD_HEIGHT 92

enum{CHOICE_A, CHOICE_B};

extern int selectedChoice;

void drawDialogueUI();
void typeDialogue(int textboxCol, int textboxRow, char* string, unsigned char colorIndex);
void drawChoices();
void drawSelector();
void selectChoice();