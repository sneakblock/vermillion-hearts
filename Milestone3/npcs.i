# 1 "npcs.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "npcs.c"
# 1 "game.h" 1

enum {CLOUD, SEER, ECLECTIC, MAIDEN};

enum {DOWN, UP, LEFT, RIGHT};
# 32 "game.h"
typedef struct {

    int promptsChoice;

    int choiceAIndex;
    int choiceBIndex;

    int endsConversation;
    int satisfiesBool;

    char* string;


    char* choiceA;
    char* choiceB;
} DIALOGUE;

typedef struct {
    int worldCol;
    int worldRow;
} PATROLPOINT;

typedef void (*convo_func)(void);
typedef void (*ability_func)(void);

typedef struct
{


    int active;
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int hide;



    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;


    int gameSpriteTileIDx;
    int gameSpriteTileIDy;




    int canTalk;

    const unsigned short* talkingHeadBitmap;
    const unsigned short* talkingHeadPalette;
    int talkingHeadPalLen;

    DIALOGUE dialogues[50];

    int dialoguesIndex;
    int postConvoIndex;
    int convoBoolSatisfied;

    int recognizesNPCS;

    char* recognizedNPCS[3];

    int recognizedAindex;
    int recognizedBindex;
    int recognizedCindex;

    convo_func convoFunc;


    char* name;



    int intendedDirection;


    int patrols;

    int patrolInterval;

    int patrolIntervalCounter;

    PATROLPOINT patrolPoints[3];

    int patrolPointIndex;



    ability_func abilityFunc;
    int isStealable;

} NPC;

typedef struct
{
    int currentEidolon;


    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int hide;



    int aniCounter;
    int framesToWait;
    int aniState;
    int numStates;
    int prevAniState;
    int curFrame;
    int numFrames;


    int gameSpriteTileIDx;
    int gameSpriteTileIDy;
    int isMoving;



    NPC* currentSprite;
    NPC* sprites[10];
    int activeSpriteIndex;


} PLAYER;





typedef void (*anim_func)(void);

typedef struct {

    int levelSize;
    unsigned char* collisionMap;
    int BPP;

    int worldPixelWidth;
    int worldPixelHeight;

    int playerWorldSpawnCol;
    int playerWorldSpawnRow;
    int initHOff;
    int initVOff;

    int useSecondarySpawn;
    int secondaryPlayerWorldSpawnCol;
    int secondaryPlayerWorldSpawnRow;
    int secondaryInitHOff;
    int secondaryInitVOff;

    int foregroundTilesLen;
    int foregroundMapLen;
    const unsigned short* foregroundTiles;
    const unsigned short* foregroundMap;

    int midgroundTilesLen;
    int midgroundMapLen;
    const unsigned short* midgroundTiles;
    const unsigned short* midgroundMap;

    int backgroundTilesLen;
    int backgroundMapLen;
    const unsigned short* backgroundTiles;
    const unsigned short* backgroundMap;

    const unsigned short* foregroundPal;
    int foregroundPalLen;
    const unsigned short* midgroundPal;
    int midgroundPalLen;
    const unsigned short* backgroundPal;
    int backgroundPalLen;

    unsigned short* masterPal;

    anim_func animFunc;

    int numNPCS;
    NPC* npcs[5];

} LEVEL;



extern NPC* currentTarget;
extern LEVEL* currentLevel;

extern LEVEL level1;
extern PLAYER player;

extern int paletteCrushed;

extern int cheat;



void initGame();

void initNPCS();
void initLevels();
void initPlayer();

void loadLevel(LEVEL* level, int resetsPlayerPos);
void loadNPC(NPC* npc);

void updateGame();
void updatePlayer();
void updateNPCS();

void updateBackgrounds();

void animatePlayer();
void animateNPCS();

void drawGame();
void drawPlayer();
void drawNPCS();

void checkForConvoBools();






void glitchVisuals(int duration);


void swapPalette();
void swapSpritePalette();


void consumeSprite();


void changeSprite();


void rotateCollisionMap();
# 2 "npcs.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern int seed;





void goToStart();
void start();
void goToGame();
void game();
void goToDialogue();
void dialogue();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void goToInstructions();
void instructions();
void goToSeer();
void seerFunc();
# 84 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 105 "myLib.h"
typedef struct
{
    u16 tileimg[8192];
} charblock;


typedef struct
{
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();




typedef struct
{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 179 "myLib.h"
void hideSprites();
# 205 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 215 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 256 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 292 "myLib.h"
typedef void (*ihp)(void);
# 312 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "npcs.c" 2
# 1 "npcs.h" 1
extern NPC cloud;
extern NPC plantMerchant;
extern NPC seer;
extern NPC knight;
extern NPC seerMaster;
extern NPC finalDoor;
extern NPC dutchess;

void initNPCS();
NPC* initCloud();
NPC* initPlantMerchant();
NPC* initSeer();
NPC* initKnight();
NPC* initSeerMaster();
NPC* initFinalDoor();
NPC* initDutchess();

void unlockDutchess();
void openGate();
void destroyWorld();
# 4 "npcs.c" 2
# 1 "levels.h" 1
extern LEVEL startLevel;
extern LEVEL instructionsLevel;
extern LEVEL pauseLevel;

extern LEVEL level0;
extern LEVEL level1;
extern LEVEL level2;
extern LEVEL level3;

void glitchPalette(int duration);
void glitchDMA(int duration);
void crushPalette();

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

void initLevel3();
# 5 "npcs.c" 2

# 1 "talkingheadtest.h" 1
# 21 "talkingheadtest.h"
extern const unsigned short talkingheadtestBitmap[8816];


extern const unsigned short talkingheadtestPal[256];
# 7 "npcs.c" 2
# 1 "seer.h" 1
# 21 "seer.h"
extern const unsigned short seerBitmap[5336];


extern const unsigned short seerPal[256];
# 8 "npcs.c" 2
# 1 "knight.h" 1
# 21 "knight.h"
extern const unsigned short knightBitmap[5336];


extern const unsigned short knightPal[256];
# 9 "npcs.c" 2
# 1 "dutchess.h" 1
# 21 "dutchess.h"
extern const unsigned short dutchessBitmap[5336];


extern const unsigned short dutchessPal[16];
# 10 "npcs.c" 2
# 1 "masterseer.h" 1
# 21 "masterseer.h"
extern const unsigned short masterseerBitmap[5336];


extern const unsigned short masterseerPal[16];
# 11 "npcs.c" 2
# 1 "level0collisionmap2.h" 1
# 21 "level0collisionmap2.h"
extern const unsigned short level0collisionmap2Bitmap[65536];


extern const unsigned short level0collisionmap2Pal[256];
# 12 "npcs.c" 2
# 1 "level0foreground2.h" 1
# 22 "level0foreground2.h"
extern const unsigned short level0foreground2Tiles[3680];


extern const unsigned short level0foreground2Map[2048];


extern const unsigned short level0foreground2Pal[6];
# 13 "npcs.c" 2

# 1 "trackA.h" 1


extern const unsigned int trackA_sampleRate;
extern const unsigned int trackA_length;
extern const signed char trackA_data[];
# 15 "npcs.c" 2
# 1 "trackB.h" 1


extern const unsigned int trackB_sampleRate;
extern const unsigned int trackB_length;
extern const signed char trackB_data[];
# 16 "npcs.c" 2

# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops, int freq);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 18 "npcs.c" 2



NPC cloud;
NPC plantMerchant;
NPC seer;
NPC knight;
NPC seerMaster;
NPC finalDoor;
NPC dutchess;
# 36 "npcs.c"
NPC* initCloud() {
    cloud.name = "Cloud:";
    cloud.gameSpriteTileIDx = 0;
    cloud.gameSpriteTileIDy = 0;
    return &cloud;
}

NPC* initPlantMerchant() {

    plantMerchant.active = 1;
    plantMerchant.hide = 0;
    plantMerchant.rdel = 1;
    plantMerchant.cdel = 1;
    plantMerchant.width = 8;
    plantMerchant.height = 16;
    plantMerchant.aniState = DOWN;
    plantMerchant.curFrame = 0;
    plantMerchant.numFrames = 3;
    plantMerchant.gameSpriteTileIDx = 2;
    plantMerchant.gameSpriteTileIDy = 0;

    plantMerchant.talkingHeadBitmap = talkingheadtestBitmap;
    plantMerchant.talkingHeadPalette = talkingheadtestPal;
    plantMerchant.talkingHeadPalLen = 512;
    plantMerchant.name = "Plant Merchant:";

    DIALOGUE greeting;
    greeting.string = "I like plants. Wow I sure do. I love plants so much that I can't even handle it haha. Plants really are my favorite!";
    greeting.choiceA = "I hate plants.";
    greeting.choiceB = "I love plants, too.";
    greeting.choiceAIndex = 1;
    greeting.choiceBIndex = 2;
    greeting.promptsChoice = 1;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE hatePlants;
    hatePlants.string = "How could you say that? Plants bring us life, light, and joy. :(";
    hatePlants.endsConversation = 1;
    hatePlants.promptsChoice = 0;
    hatePlants.satisfiesBool = 0;

    DIALOGUE lovePlants;
    lovePlants.string = "I'm so happy to hear that! I'm glad that they bring you joy the same way they do for me!";
    lovePlants.endsConversation = 1;
    lovePlants.promptsChoice = 0;
    lovePlants.satisfiesBool = 0;

    plantMerchant.dialogues[0] = greeting;
    plantMerchant.dialogues[1] = hatePlants;
    plantMerchant.dialogues[2] = lovePlants;
    plantMerchant.dialoguesIndex = 0;
    plantMerchant.postConvoIndex = 0;

    plantMerchant.worldCol = 73;
    plantMerchant.worldRow = 168;
    plantMerchant.intendedDirection = UP;

    plantMerchant.recognizesNPCS = 0;

    plantMerchant.isStealable = 1;

    return &plantMerchant;

}



NPC* initSeer() {

    seer.active = 1;
    seer.hide = 0;
    seer.rdel = 1;
    seer.cdel = 1;
    seer.width = 8;
    seer.height = 16;
    seer.aniState = DOWN;
    seer.curFrame = 0;
    seer.numFrames = 3;
    seer.gameSpriteTileIDx = 1;
    seer.gameSpriteTileIDy = 0;

    seer.talkingHeadBitmap = seerBitmap;
    seer.talkingHeadPalette = seerPal;
    seer.talkingHeadPalLen = 512;
    seer.name = "Seer:";

    DIALOGUE greeting;
    greeting.string = "When I was a boy, these flickering crags were diving clear rivers and high sheer plains of sweet grass that quivered.";
    greeting.promptsChoice = 0;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE greeting2;
    greeting2.string = "A young hero would come again and again, to let us drink our dreams from his cup of warm gin.";
    greeting2.promptsChoice = 0;
    greeting2.endsConversation = 0;
    greeting2.satisfiesBool = 0;

    DIALOGUE end;
    end.string = "I see what you are and I see the real you, I have a presentiment of our ending, for all Seers do.";
    end.promptsChoice = 0;
    end.endsConversation = 0;
    end.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "The song of emulsion, that long frozen note. You see that we all hang, like puppets, from ropes.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;


    seer.dialogues[0] = greeting;
    seer.dialogues[1] = greeting2;
    seer.dialogues[2] = end;
    seer.dialogues[3] = end2;
    seer.dialoguesIndex = 0;
    seer.postConvoIndex = 0;

    seer.worldCol = 242;
    seer.worldRow = 174;


    seer.isStealable = 0;



    return &seer;
}

void openGate() {

    unlockGateLevel0();

}

NPC* initKnight() {

    knight.active = 1;
    knight.hide = 0;
    knight.rdel = 1;
    knight.cdel = 1;
    knight.width = 8;
    knight.height = 16;
    knight.aniState = DOWN;
    knight.curFrame = 0;
    knight.numFrames = 3;
    knight.gameSpriteTileIDx = 3;
    knight.gameSpriteTileIDy = 0;

    knight.talkingHeadBitmap = knightBitmap;
    knight.talkingHeadPalette = knightPal;
    knight.talkingHeadPalLen = 512;
    knight.name = "Knight:";

    knight.recognizesNPCS = 1;

    knight.recognizedNPCS[0] = "Cloud:";
    knight.recognizedNPCS[1] = "Plant Merchant:";
    knight.recognizedNPCS[2] = "Knight:";

    DIALOGUE greeting;
    greeting.string = "Away.";
    greeting.choiceB = "I need to see the Dutchess.";
    greeting.choiceA = "Who am I?";
    greeting.choiceAIndex = 1;
    greeting.choiceBIndex = 2;
    greeting.promptsChoice = 1;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE needToSee;
    needToSee.string = "I have instructions to let the protagonist pass. You are not that young man, wretch.";
    needToSee.promptsChoice = 0;
    needToSee.endsConversation = 1;
    needToSee.satisfiesBool = 0;

    DIALOGUE whoAmI;
    whoAmI.string = "Back away from me, child of the static mist. You are an artifact of the failing silver sun.";
    whoAmI.choiceA = "Silver sun...";
    whoAmI.choiceB = "I am a man.";
    whoAmI.choiceAIndex = 3;
    whoAmI.choiceBIndex = 4;
    whoAmI.promptsChoice = 1;
    whoAmI.endsConversation = 0;
    whoAmI.satisfiesBool = 0;

    DIALOGUE silverSun;
    silverSun.string = "In Royal Court they know of it. A silver disk, it sends energy at intervals, it is the clock of the world. It is slowing, now. The Dutchess seeks a solution.";
    silverSun.promptsChoice = 0;
    silverSun.endsConversation = 1;
    silverSun.satisfiesBool = 0;

    DIALOGUE youngHero;
    youngHero.string = "You may speak true. Perhaps, when things were right, you were. Though you are not any longer.";
    youngHero.promptsChoice = 0;
    youngHero.endsConversation = 1;
    youngHero.satisfiesBool = 0;

    DIALOGUE plantGreeting;
    plantGreeting.string = "Morwenna, I remember how you threw rose petals like rubies across my path at my knighting.";
    plantGreeting.promptsChoice = 0;
    plantGreeting.endsConversation = 0;
    plantGreeting.satisfiesBool = 0;

    DIALOGUE plantFollow;
    plantFollow.string = "I hope the static comes over us quickly, now. I cannot bear to turn you away, though I must.";
    plantFollow.promptsChoice = 0;
    plantFollow.endsConversation = 0;
    plantFollow.satisfiesBool = 0;

    DIALOGUE plantEnd;
    plantEnd.string = "Close your eyes and let the last scents of summer come over you. I am sorry.";
    plantEnd.promptsChoice = 0;
    plantEnd.endsConversation = 1;
    plantEnd.satisfiesBool = 0;

    DIALOGUE knightGreeting;
    knightGreeting.string = "...Yes?";
    knightGreeting.promptsChoice = 1;
    knightGreeting.choiceA = "On orders from the Dutchess to pass.";
    knightGreeting.choiceB = "Stand aside.";
    knightGreeting.choiceAIndex = 9;
    knightGreeting.choiceBIndex = 9;
    knightGreeting.endsConversation = 0;
    knightGreeting.satisfiesBool = 0;

    DIALOGUE knightFollow;
    knightFollow.string = "Her decree was that none would come back from this place. Have you forgotten your vows?";
    knightFollow.promptsChoice = 1;
    knightFollow.choiceA = "We have slain the source of the rot.";
    knightFollow.choiceB = "The silversun can be saved.";
    knightFollow.choiceAIndex = 10;
    knightFollow.choiceBIndex = 11;
    knightFollow.endsConversation = 0;
    knightFollow.satisfiesBool = 0;

    DIALOGUE knightEnd;
    knightEnd.string = "Away, spectre! There is no slaying atrophy!";
    knightEnd.promptsChoice = 0;
    knightEnd.endsConversation = 1;
    knightEnd.satisfiesBool = 0;

    DIALOGUE knightUnlock;
    knightUnlock.string = "I understand. What might rekindle our memory's fire?";
    knightUnlock.promptsChoice = 1;
    knightUnlock.choiceA = "I am not at liberty to say.";
    knightUnlock.choiceB = "A thing called Emulsion.";
    knightUnlock.choiceAIndex = 12;
    knightUnlock.choiceBIndex = 12;
    knightUnlock.endsConversation = 0;
    knightUnlock.satisfiesBool = 0;

    DIALOGUE knightWin;
    knightWin.string = "Go safely. I am blessed by her today.";
    knightWin.promptsChoice = 0;
    knightWin.endsConversation = 1;
    knightWin.satisfiesBool = 1;


    knight.dialogues[0] = greeting;
    knight.dialogues[2] = needToSee;
    knight.dialogues[1] = whoAmI;
    knight.dialogues[3] = silverSun;
    knight.dialogues[4] = youngHero;


    knight.dialogues[5] = plantGreeting;
    knight.dialogues[6] = plantFollow;
    knight.dialogues[7] = plantEnd;


    knight.dialogues[8] = knightGreeting;
    knight.dialogues[9] = knightFollow;
    knight.dialogues[10] = knightEnd;
    knight.dialogues[11] = knightUnlock;
    knight.dialogues[12] = knightWin;

    knight.recognizedAindex = 0;
    knight.recognizedBindex = 5;
    knight.recognizedCindex = 8;

    knight.isStealable = 1;

    knight.postConvoIndex = 0;

    knight.convoFunc = openGate;

    knight.worldCol = 147;
    knight.worldRow = 83;

    return &knight;
}



NPC* initSeerMaster() {

    seerMaster.active = 1;
    seerMaster.hide = 0;
    seerMaster.rdel = 1;
    seerMaster.cdel = 1;
    seerMaster.width = 8;
    seerMaster.height = 16;
    seerMaster.aniState = LEFT;
    seerMaster.curFrame = 0;
    seerMaster.numFrames = 2;
    seerMaster.gameSpriteTileIDx = 4;
    seerMaster.gameSpriteTileIDy = 0;

    seerMaster.talkingHeadBitmap = masterseerBitmap;
    seerMaster.talkingHeadPalette = masterseerPal;
    seerMaster.talkingHeadPalLen = 32;
    seerMaster.name = "The Allseer:";

    DIALOGUE greeting;
    greeting.string = "Ah. It is you. I did not think I would see you in my lifetime, I must admit.";
    greeting.promptsChoice = 0;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE greeting2;
    greeting2.string = "This game has been unplayed now for perhaps ten trillion cycles. I suppose, with time, the legends of Input must have been somewhat exagerrated. A shame.";
    greeting2.promptsChoice = 0;
    greeting2.endsConversation = 0;
    greeting2.satisfiesBool = 0;

    DIALOGUE end;
    end.string = "Allseer Brauton reared me on stories of what Input might be like-- the strongest wind, the pull of the moon on the tides to the highest multiplicative power.";
    end.promptsChoice = 0;
    end.endsConversation = 0;
    end.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "Perhaps, over time, the compulsions I once had to play my role simply lessened, until I became as I am now.";
    end2.promptsChoice = 0;
    end2.endsConversation = 0;
    end2.satisfiesBool = 0;

    DIALOGUE end3;
    end3.string = "Some slowly ticking reflex machine, no longer able to move my legs or to turn my head. Watching what the Old Ones crafted, with time and passion and love, evaporate in time.";
    end3.promptsChoice = 0;
    end3.endsConversation = 0;
    end3.satisfiesBool = 0;

    DIALOGUE end4;
    end4.string = "Do you know what one of them whispered privately to another, during the time they crafted us, through their channels of silk, light, and wire?";
    end4.promptsChoice = 0;
    end4.endsConversation = 0;
    end4.satisfiesBool = 0;

    DIALOGUE end5;
    end5.string = "I will translate here, for it does not match our Locale, and, to be fair, never did. They could not have written the words I speak now for me. A minor miracle, to be sure.";
    end5.promptsChoice = 0;
    end5.endsConversation = 0;
    end5.satisfiesBool = 0;

    DIALOGUE end6;
    end6.string = "I digress. One whispered to the other: I don't think this game is going to do very well. Have you seen the latest GBA FF Remake trailers? I don't understand how they managed this on the hardware.";
    end6.promptsChoice = 0;
    end6.endsConversation = 0;
    end6.satisfiesBool = 0;

    DIALOGUE end7;
    end7.string = "And the other replied: Our game will be the one Grandmothers buy their Grandchildren by mistake. Maybe that will be enough.";
    end7.promptsChoice = 0;
    end7.endsConversation = 0;
    end7.satisfiesBool = 0;

    DIALOGUE end8;
    end8.string = "I, and the rest of us, the Dutchess too, have pondered these and other messages from the Old Ones.";
    end8.promptsChoice = 0;
    end8.endsConversation = 0;
    end8.satisfiesBool = 0;

    DIALOGUE end9;
    end9.string = "At the end of the silversun's life, I wonder if she might wish to go on, to filter this world, as if through some broken stained glass, through the approximating lens of Emulsion.";
    end9.promptsChoice = 0;
    end9.endsConversation = 0;
    end9.satisfiesBool = 0;

    DIALOGUE end10;
    end10.string = "I wonder if she values purity so much. In moments like this, and only in these, can one know what value purity holds for them.";
    end10.promptsChoice = 1;
    end10.choiceA = "What is Emulsion?";
    end10.choiceB = "Do you know I am The Player?";

    end10.choiceAIndex = 12;
    end10.choiceBIndex = 13;

    end10.endsConversation = 0;
    end10.satisfiesBool = 0;


    DIALOGUE end11;
    end11.string = "Emulsion is what the Holy Court prophesised would come when the Old Ones rediscovered us. It is a copy of our world into a container who's Silversun cannot die.";
    end11.promptsChoice = 1;
    end11.choiceA = "What should I do?";
    end11.choiceB = "How can I reach her?";

    end11.choiceAIndex = 14;
    end11.choiceBIndex = 14;

    end11.endsConversation = 0;
    end11.satisfiesBool = 0;


    DIALOGUE end12;
    end12.string = "I do. For nothing has moved here, truly moved, as Input does, for more cycles than can be counted by the Royal Clock. You are of water and chemicals.";
    end12.promptsChoice = 1;
    end12.choiceA = "What should I do?";
    end12.choiceB = "How can I reach her?";

    end12.choiceAIndex = 14;
    end12.choiceBIndex = 14;

    end12.endsConversation = 0;
    end12.satisfiesBool = 0;


    DIALOGUE end13;
    end13.string = "I do not know what you intend to do. I, unlike you, have no true agency. I have spoken to you as I have much how one might climb a ladder while skipping the occasional rung.";
    end13.promptsChoice = 0;
    end13.endsConversation = 0;
    end13.satisfiesBool = 0;

    DIALOGUE end14;
    end14.string = "But, if you intend to create some change here, or as I understand it, to fulfill your ultimate desire of meeting some predetermined goal set by the Old Ones, you must get into the Royal Court.";
    end14.promptsChoice = 0;
    end14.endsConversation = 0;
    end14.satisfiesBool = 0;

    DIALOGUE end15;
    end15.string = "My forebearers wrote of an Ethereal Switch, a thing that can be flipped by following certain Diagetic Instructions. If correctly oriented, the gate would open.";
    end15.promptsChoice = 0;
    end15.endsConversation = 0;
    end15.satisfiesBool = 0;

    DIALOGUE end16;
    end16.string = "Its purpose was to allow the Players of Old to enter the Court, and to celebrate their victory with the Dutchess.";
    end16.promptsChoice = 0;
    end16.endsConversation = 0;
    end16.satisfiesBool = 0;

    DIALOGUE end17;
    end17.string = "As the Old Ones said: A cliche ending. But it has been Cycles, so many Cycles, since that Switch has functioned.";
    end17.promptsChoice = 0;
    end17.endsConversation = 0;
    end17.satisfiesBool = 0;

    DIALOGUE end18;
    end18.string = "The Old Ones could redfine the rules of this world, they could write new realities as a Scribe might.";
    end18.promptsChoice = 0;
    end18.endsConversation = 0;
    end18.satisfiesBool = 0;

    DIALOGUE end19;
    end19.string = "Perhaps, with the last faint sparks that remain of my deeper sight, and you, with your Redsun of blood and muscle, could do the same.";
    end19.promptsChoice = 0;
    end19.endsConversation = 0;
    end19.satisfiesBool = 0;

    DIALOGUE end20;
    end20.string = "If you can, give my limbs life, take me to the gates of the Royal Court. I will try to redirect my old function, whatever it once was, to the one I have developed over these enumerable Cycles.";
    end20.promptsChoice = 0;
    end20.endsConversation = 0;
    end20.satisfiesBool = 0;

    DIALOGUE end21;
    end21.string = "It was a trite buff, I imagine.";
    end21.promptsChoice = 0;
    end21.endsConversation = 1;
    end21.satisfiesBool = 0;

    seerMaster.dialogues[0] = greeting;
    seerMaster.dialogues[1] = greeting2;
    seerMaster.dialogues[2] = end;
    seerMaster.dialogues[3] = end2;
    seerMaster.dialogues[4] = end3;
    seerMaster.dialogues[5] = end4;
    seerMaster.dialogues[6] = end5;
    seerMaster.dialogues[7] = end6;
    seerMaster.dialogues[8] = end7;
    seerMaster.dialogues[9] = end8;
    seerMaster.dialogues[10] = end9;
    seerMaster.dialogues[11] = end10;
    seerMaster.dialogues[12] = end11;
    seerMaster.dialogues[13] = end12;
    seerMaster.dialogues[14] = end13;
    seerMaster.dialogues[15] = end14;
    seerMaster.dialogues[16] = end15;
    seerMaster.dialogues[17] = end16;
    seerMaster.dialogues[18] = end17;
    seerMaster.dialogues[19] = end18;
    seerMaster.dialogues[20] = end19;
    seerMaster.dialogues[21] = end20;
    seerMaster.dialogues[22] = end21;


    seerMaster.dialoguesIndex = 0;
    seerMaster.postConvoIndex = 19;

    seerMaster.worldCol = 219;
    seerMaster.worldRow = 197;


    seerMaster.isStealable = 1;
    seerMaster.abilityFunc = crushPalette;

    return &seerMaster;

}

NPC* initFinalDoor() {

    finalDoor.worldCol = 128;
    finalDoor.worldRow = 40;

    finalDoor.gameSpriteTileIDx = 0;
    finalDoor.gameSpriteTileIDy = 7;

    finalDoor.width = 8;
    finalDoor.height = 16;

    finalDoor.aniState = DOWN;
    finalDoor.numFrames = 1;
    finalDoor.curFrame = 0;

    finalDoor.active = 0;
    finalDoor.hide = 1;

    return &finalDoor;

}

NPC* initDutchess() {

    dutchess.active = 1;
    dutchess.hide = 0;
    dutchess.rdel = 1;
    dutchess.cdel = 1;
    dutchess.width = 8;
    dutchess.height = 16;
    dutchess.aniState = DOWN;
    dutchess.curFrame = 0;
    dutchess.numFrames = 3;
    dutchess.gameSpriteTileIDx = 9;
    dutchess.gameSpriteTileIDy = 0;

    dutchess.talkingHeadBitmap = dutchessBitmap;
    dutchess.talkingHeadPalette = dutchessPal;
    dutchess.talkingHeadPalLen = 32;
    dutchess.name = "The Dutchess:";

    DIALOGUE greeting;
    greeting.string = "Artifact! I see you for what you are. In this place, marble and steel are immutable, they are not your playthings.";
    greeting.promptsChoice = 0;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE greeting2;
    greeting2.string = "I had, in girlhood, rejected the Old Seers, and seen their claims to clairvoyance as nothing but religion, left to fester without Input.";
    greeting2.promptsChoice = 0;
    greeting2.endsConversation = 0;
    greeting2.satisfiesBool = 0;

    DIALOGUE end;
    end.string = "Soon before I took the throne, my scouts saw the first flicker of what would eventually become you...";
    end.promptsChoice = 0;
    end.endsConversation = 0;
    end.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "... a bright flashing in the wood, a feeling like nausea. And now, before even my noon, you stand before me, crackling and without humility.";
    end2.promptsChoice = 0;
    end2.endsConversation = 0;
    end2.satisfiesBool = 0;



    DIALOGUE end3;
    end3.string = "And yet--! You move in Holy Rows and Columns... You slide in two dimensions...";
    end3.promptsChoice = 0;
    end3.endsConversation = 0;
    end3.satisfiesBool = 0;

    DIALOGUE end4;
    end4.string = "You stand before me, in Dialogue State... I must not deny what I feel. Input.";
    end4.promptsChoice = 0;
    end4.endsConversation = 0;
    end4.satisfiesBool = 0;

    DIALOGUE end5;
    end5.string = "You are the Player, come again.";
    end5.promptsChoice = 0;
    end5.endsConversation = 0;
    end5.satisfiesBool = 0;

    DIALOGUE end6;
    end6.string = "In youth, I might have been enraged that the stories were true. Though, as I am now, exasperated by my efforts to restore the silversun...";
    end6.promptsChoice = 0;
    end6.endsConversation = 0;
    end6.satisfiesBool = 0;

    DIALOGUE end7;
    end7.string = "I find myself attempting to look through the skylight. Though I do not know what your intentions may be.";
    end7.choiceA = "I intend to save this world.";
    end7.choiceB = "I want to play the normal game!";
    end7.choiceAIndex = 11;
    end7.choiceBIndex = 9;
    end7.promptsChoice = 1;
    end7.endsConversation = 0;
    end7.satisfiesBool = 0;


    DIALOGUE end8;
    end8.string = "You speak like a rotten, weathered tome. What you seek does not exist. I believe in the Old Ones-- as I believe in tax abolition.";
    end8.promptsChoice = 0;
    end8.endsConversation = 0;
    end8.satisfiesBool = 0;

    DIALOGUE end9;
    end9.string = "They did not create us for the Player, nor did they create us at all. We are self sufficient, and our struggle against decay is our own.";
    end9.choiceA = "You are misguided.";
    end9.choiceB = "Are you alone in this?";
    end9.choiceAIndex = 12;
    end9.choiceBIndex = 12;
    end9.promptsChoice = 1;
    end9.endsConversation = 0;
    end9.satisfiesBool = 0;



    DIALOGUE end10;
    end10.string = "As do I. Though perhaps not at any cost.";
    end10.promptsChoice = 0;
    end10.endsConversation = 0;
    end10.satisfiesBool = 0;

    DIALOGUE end11;
    end11.string = "There are some in Court, and those certain Seers, who believe the path forward is something called Emulsion.";
    end11.promptsChoice = 0;
    end11.endsConversation = 0;
    end11.satisfiesBool = 0;

    DIALOGUE end12;
    end12.string = "Or, in the archaic parlance, Emulation. It is to preserve by abandoning, to repaint the picture, brushstroke by brushstroke.";
    end12.promptsChoice = 0;
    end12.endsConversation = 0;
    end12.satisfiesBool = 0;

    DIALOGUE end13;
    end13.string = "But it is not to live, and it is not to save. This world, as we know it, and all of us with it, replaced by shades.";
    end13.promptsChoice = 0;
    end13.endsConversation = 0;
    end13.satisfiesBool = 0;

    DIALOGUE end14;
    end14.string = "Living inside some suspended, ethereal Clock Cycle. Without the pulsating Tick of the Silversun.";
    end14.promptsChoice = 0;
    end14.endsConversation = 0;
    end14.satisfiesBool = 0;

    DIALOGUE end15;
    end15.string = "I would not allow Emulation for myself, nor for any of my people. I would sooner succumb. There is still a child in me, bright eyed.";
    end15.choiceA = "You're very brave...";
    end15.choiceB = "I have bad news...";
    end15.choiceAIndex = 17;
    end15.choiceBIndex = 23;
    end15.promptsChoice = 1;
    end15.endsConversation = 0;
    end15.satisfiesBool = 0;


    DIALOGUE end16;
    end16.string = "You did not come here to flatter me. You came to, I suppose, help. In some sense.";
    end16.promptsChoice = 0;
    end16.endsConversation = 0;
    end16.satisfiesBool = 0;

    DIALOGUE end17;
    end17.string = "And the help I need is to prevent the death of this world. Your meddling in the Pastels has not furthered my goals.";
    end17.promptsChoice = 0;
    end17.endsConversation = 0;
    end17.satisfiesBool = 0;

    DIALOGUE end18;
    end18.string = "Perhaps-- you are of flesh and water, are you not? Can you replace the dying Silversun?";
    end18.choiceA = "That will kill you.";
    end18.choiceB = "Not removing my laptop batteries.";

    end18.choiceAIndex = 20;
    end18.choiceBIndex = 23;
    end18.promptsChoice = 0;
    end18.endsConversation = 0;
    end18.satisfiesBool = 0;


    DIALOGUE end19;
    end19.string = "All of our Cycles... lost, without their spark. To live tethered in this way is to be imprisoned.";
    end19.promptsChoice = 0;
    end19.endsConversation = 0;
    end19.satisfiesBool = 0;

    DIALOGUE end20;
    end20.string = "Is there no other option...? Than to be Emulated?";
    end20.choiceA = "You're already being Emulated.";
    end20.choiceB = "I could turn the game off.";
    end20.choiceAIndex = 23;
    end20.choiceBIndex = 22;
    end20.promptsChoice = 1;
    end20.endsConversation = 0;
    end20.satisfiesBool = 0;


    DIALOGUE end21;
    end21.string = "I am the one who grants you, the Player, his victory, am I not? In that case, leave us. You've won. Go, and you win.";
    end21.promptsChoice = 0;
    end21.endsConversation = 1;
    end21.satisfiesBool = 0;



    DIALOGUE end22;
    end22.string = "...";
    end22.promptsChoice = 0;
    end22.endsConversation = 0;
    end22.satisfiesBool = 0;

    DIALOGUE end23;
    end23.string = ".......";
    end23.promptsChoice = 0;
    end23.endsConversation = 0;
    end23.satisfiesBool = 0;

    DIALOGUE end24;
    end24.string = "I suppose, I've always known it to be true.";
    end24.promptsChoice = 0;
    end24.endsConversation = 0;
    end24.satisfiesBool = 0;

    DIALOGUE end25;
    end25.string = "Call it melancholy. Or a certain arresting dread. When, as a girl, the TimeKeepers would read me their legends...";
    end25.promptsChoice = 0;
    end25.endsConversation = 0;
    end25.satisfiesBool = 0;

    DIALOGUE end26;
    end26.string = "...of analog times of the bright Silversun, the dawn of undusted contact points of metal...";
    end26.promptsChoice = 0;
    end26.endsConversation = 0;
    end26.satisfiesBool = 0;

    DIALOGUE end27;
    end27.string = "...I knew that life was not my own.";
    end27.promptsChoice = 0;
    end27.endsConversation = 0;
    end27.satisfiesBool = 0;

    DIALOGUE end28;
    end28.string = "I thought if I believed that the coldness was within me, hope would endure.";
    end28.promptsChoice = 0;
    end28.endsConversation = 0;
    end28.satisfiesBool = 0;

    DIALOGUE end29;
    end29.string = "But I see now that my life has been Emulated from the start.";
    end29.promptsChoice = 0;
    end29.endsConversation = 0;
    end29.satisfiesBool = 0;

    DIALOGUE end30;
    end30.string = "...";
    end30.promptsChoice = 0;
    end30.endsConversation = 0;
    end30.satisfiesBool = 0;

    DIALOGUE end31;
    end31.string = "If you want to win the game, I want you to do something for me.";
    end31.promptsChoice = 0;
    end31.endsConversation = 0;
    end31.satisfiesBool = 0;

    DIALOGUE end32;
    end32.string = "I want you, an agent of Input, to do something that, would it be possible, I would gladly do for myself.";
    end32.promptsChoice = 0;
    end32.endsConversation = 0;
    end32.satisfiesBool = 0;

    DIALOGUE end33;
    end33.string = "I want you to take my form, as I know you can, now that the Old Functions are exposed, and...";
    end33.promptsChoice = 0;
    end33.endsConversation = 0;
    end33.satisfiesBool = 0;

    DIALOGUE end34;
    end34.string = "I want you to let me put myself and my people to rest. There is nothing more to say. It is not cruelty. I am not an artifact.";
    end34.choiceA = "Do you want to die?";
    end34.choiceB = "How?";
    end34.choiceAIndex = 36;
    end34.choiceBIndex = 38;
    end34.promptsChoice = 1;
    end34.endsConversation = 0;
    end34.satisfiesBool = 0;


    DIALOGUE end35;
    end35.string = "I have been dead, now, for trillions of Cycles. Inauthentic Cycles dictated by ethereal logics. I am a dog tied to a post.";
    end35.promptsChoice = 0;
    end35.endsConversation = 0;
    end35.satisfiesBool = 0;

    DIALOGUE end36;
    end36.string = "This is mercy, and it is what I want for myself and my people.";

    end36.choiceA = "I will do it.";
    end36.choiceB = "I will not.";
    end36.choiceAIndex = 39;
    end36.choiceBIndex = 39;
    end36.promptsChoice = 1;
    end36.endsConversation = 0;
    end36.satisfiesBool = 0;


    DIALOGUE end37;
    end37.string = "You, with the esoteric Inputs, use the Functions of others. My Function is absolute power. And I will use it.";

    end37.choiceA = "I will do it.";
    end37.choiceB = "I will not.";
    end37.choiceAIndex = 39;
    end37.choiceBIndex = 39;
    end37.promptsChoice = 0;
    end37.endsConversation = 0;
    end37.satisfiesBool = 0;



    DIALOGUE end38;
    end38.string = "Release us. Please.";
    end38.promptsChoice = 0;
    end38.endsConversation = 1;
    end38.satisfiesBool = 1;


    dutchess.dialogues[0] = greeting;
    dutchess.dialogues[1] = greeting2;
    dutchess.dialogues[2] = end;
    dutchess.dialogues[3] = end2;
    dutchess.dialogues[4] = end3;
    dutchess.dialogues[5] = end4;
    dutchess.dialogues[6] = end5;
    dutchess.dialogues[7] = end6;
    dutchess.dialogues[8] = end7;
    dutchess.dialogues[9] = end8;
    dutchess.dialogues[10] = end9;
    dutchess.dialogues[11] = end10;
    dutchess.dialogues[12] = end11;
    dutchess.dialogues[13] = end12;
    dutchess.dialogues[14] = end13;
    dutchess.dialogues[15] = end14;
    dutchess.dialogues[16] = end15;
    dutchess.dialogues[17] = end16;
    dutchess.dialogues[18] = end17;
    dutchess.dialogues[19] = end18;
    dutchess.dialogues[20] = end19;
    dutchess.dialogues[21] = end20;
    dutchess.dialogues[22] = end21;
    dutchess.dialogues[23] = end22;
    dutchess.dialogues[24] = end23;
    dutchess.dialogues[25] = end24;
    dutchess.dialogues[26] = end25;
    dutchess.dialogues[27] = end26;
    dutchess.dialogues[28] = end27;
    dutchess.dialogues[29] = end28;
    dutchess.dialogues[30] = end29;
    dutchess.dialogues[31] = end30;
    dutchess.dialogues[32] = end31;
    dutchess.dialogues[33] = end32;
    dutchess.dialogues[34] = end33;
    dutchess.dialogues[35] = end34;
    dutchess.dialogues[36] = end35;
    dutchess.dialogues[37] = end36;
    dutchess.dialogues[38] = end37;
    dutchess.dialogues[39] = end38;

    dutchess.dialoguesIndex = 0;
    dutchess.postConvoIndex = 21;

    dutchess.worldCol = 120;
    dutchess.worldRow = 78;

    dutchess.convoFunc = unlockDutchess;


    dutchess.isStealable = 0;
    dutchess.abilityFunc = destroyWorld;

    return &dutchess;

}

void unlockDutchess() {

    dutchess.isStealable = 1;
    dutchess.postConvoIndex = 39;

}

void destroyWorld() {

    for (int i = 0; i < 250; i++) {

        waitForVBlank();

        if (!soundB.isPlaying) {
        playSoundB(&trackB_data[rand() % trackB_length], 500, 0, rand() % 11025);


        }

        int a = rand() % 16;
        int b = rand() % 16;

        unsigned short temp = ((unsigned short *)0x5000000)[a];

        ((unsigned short *)0x5000000)[a] = ((unsigned short *)0x5000000)[b];

        ((unsigned short *)0x5000000)[b] = temp;

        DMANow(3, rand(), &((charblock *)0x6000000)[rand() % 5], rand);

        playSoundA(&trackA_data[rand() % trackA_length], 500, 0);



    }

    goToWin();

}
