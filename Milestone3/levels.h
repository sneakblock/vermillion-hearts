extern LEVEL startLevel;
extern LEVEL instructionsLevel;
extern LEVEL pauseLevel;

extern LEVEL level0;
extern LEVEL level2;

void glitchPalette(int duration);
void glitchDMA(int duration);
void crushPalette(int duration);

void initStart();

void animateStart();
void animateLevel0();
void unlockGateLevel0();

void initInstructions();

void initPause();

void initLevel0();
void initLevel1();
void initLevel2();
void animateLevel2();