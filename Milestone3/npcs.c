#include "game.h"
#include "myLib.h"
#include "npcs.h"

#include "talkingheadtest.h"
#include "seer.h"
#include "knight.h"
#include "level0collisionmap2.h"

// NPC npcs[];

NPC cloud;
NPC plantMerchant;
NPC seer;
NPC knight;

// void initNPCS() {

//     initPlantMerchant();
//     initSeer();
    
// }

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
    plantMerchant.talkingHeadPalLen = talkingheadtestPalLen;
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
    seer.talkingHeadPalLen = seerPalLen;
    seer.name = "Seer:";

    DIALOGUE greeting;
    greeting.string = "When I was a boy, these flickering crags were diving clear rivers and high green blades of sweet smelling grass.";
    greeting.promptsChoice = 0;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE greeting2;
    greeting2.string = "A young hero would come again and again to us, to let us drink our dreams from the cup his long tales. He would always move on.";
    greeting2.promptsChoice = 0;
    greeting2.endsConversation = 0;
    greeting2.satisfiesBool = 0;

    DIALOGUE end;
    end.string = "My brother, older than I. He, even as a boy, saw all the colors of the world. Find him.";
    end.promptsChoice = 0;
    end.endsConversation = 1;
    end.satisfiesBool = 0;
    

    seer.dialogues[0] = greeting;
    seer.dialogues[1] = greeting2;
    seer.dialogues[2] = end;
    seer.dialoguesIndex = 0;
    seer.postConvoIndex = 0;

    seer.worldCol = 242;
    seer.worldRow = 174;

    // seer.convoFunc = openGate;
    seer.isStealable = 0;
    // seer.abilityFunc = goToSeer;


    return &seer;
}

void openGate() {

    currentLevel->collisionMap = level0collisionmap2Bitmap;

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
    knight.talkingHeadPalLen = knightPalLen;
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
    whoAmI.string = "Back away from me, child of the static mist. You, like the rest, are an artifact of the failing silver sun.";
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
    knightFollow.choiceB = "I am to investigate the death of the silversun.";
    knightFollow.choiceAIndex = 10;
    knightFollow.choiceBIndex = 11;
    knightFollow.endsConversation = 0;
    knightFollow.satisfiesBool = 0;

    DIALOGUE knightEnd;
    knightEnd.string = "Away, spectre! There is no slaying atrophy.";
    knightEnd.promptsChoice = 0;
    knightEnd.endsConversation = 1;
    knightEnd.satisfiesBool = 0;

    DIALOGUE knightUnlock;
    knightUnlock.string = "I understand. What might rekindle our memory's fire?";
    knightUnlock.promptsChoice = 1;
    knightUnlock.choiceA = "I am not at liberty to say.";
    knightUnlock.choiceB = "We must bring her to Emulsion.";
    knightUnlock.choiceAIndex = 12;
    knightUnlock.choiceBIndex = 12;
    knightUnlock.endsConversation = 0;
    knightUnlock.satisfiesBool = 0;

    DIALOGUE knightWin;
    knightWin.string = "Go safely. I am blessed by her today.";
    knightWin.promptsChoice = 0;
    knightWin.endsConversation = 1;
    knightWin.satisfiesBool = 1;
    
    // Static mist
    knight.dialogues[0] = greeting;
    knight.dialogues[2] = needToSee;
    knight.dialogues[1] = whoAmI;
    knight.dialogues[3] = silverSun;
    knight.dialogues[4] = youngHero;

    // Plant merchant
    knight.dialogues[5] = plantGreeting;
    knight.dialogues[6] = plantFollow;
    knight.dialogues[7] = plantEnd;

    // Knight
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

