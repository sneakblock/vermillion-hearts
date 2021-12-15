#include "game.h"
#include "myLib.h"
#include "npcs.h"
#include "levels.h"

#include "talkingheadtest.h"
#include "seer.h"
#include "knight.h"
#include "level0collisionmap2.h"
#include "level0foreground2.h"

// NPC npcs[];

NPC cloud;
NPC plantMerchant;
NPC seer;
NPC knight;
NPC seerMaster;

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

    // seer.convoFunc = openGate;
    seer.isStealable = 0;
    // seer.abilityFunc = goToSeer;


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

// ========= LEVEL 1 STUFF ==========

NPC* initSeerMaster() {

    seerMaster.active = 1;
    seerMaster.hide = 0;
    seerMaster.rdel = 1;
    seerMaster.cdel = 1;
    seerMaster.width = 8;
    seerMaster.height = 16;
    seerMaster.aniState = DOWN;
    seerMaster.curFrame = 0;
    seerMaster.numFrames = 3;
    seerMaster.gameSpriteTileIDx = 1;
    seerMaster.gameSpriteTileIDy = 0;

    seerMaster.talkingHeadBitmap = seerBitmap;
    seerMaster.talkingHeadPalette = seerPal;
    seerMaster.talkingHeadPalLen = seerPalLen;
    seerMaster.name = "The Eremite:";

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

    // FIX ALL BELOW
    
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
    end7.string = "And the other replied: Our game will be the one the Grandmother buys by mistake. Maybe that's enough to keep us employed.";
    end7.promptsChoice = 0;
    end7.endsConversation = 0;
    end7.satisfiesBool = 0;

    DIALOGUE end8;
    end8.string = "I, and the rest of us, the Dutchess too, have pondered these and other messages from the Old Ones.";
    end8.promptsChoice = 0;
    end8.endsConversation = 0;
    end8.satisfiesBool = 0;

    DIALOGUE end9;
    end9.string = "At the end of the silversun's life, I see that you have come. And I wonder if she might wish to go on, if she might wish to filter this world, as if through some broken stained glass, through the approximating lens of Emulsion.";
    end9.promptsChoice = 0;
    end9.endsConversation = 0;
    end9.satisfiesBool = 0;

    DIALOGUE end10;
    end10.string = "I wonder if she values purity so much. In moments like this, and only in these, can one know what value purity holds for them.";
    end10.promptsChoice = 1;
    end10.choiceA = "What is Emulsion?";
    end10.choiceB = "Do you know I am The Player?";

    // FIX!!!!!!!!!!!
    end10.choiceAIndex = 0;
    end10.choiceBIndex = 0;

    end10.endsConversation = 0;
    end10.satisfiesBool = 0;

    // WHAT IS EMULSION?
    DIALOGUE end11;
    end11.string = "Emulsion is what the Holy Court prophesised would come when the Old Ones rediscovered us. It is a copy of our world into a container who's Silversun cannot die.";
    end11.promptsChoice = 1;
    end11.choiceA = "What should I do?";
    end11.choiceB = "How can I reach her?";
    end11.endsConversation = 0;
    end11.satisfiesBool = 0;

    // DO YOU KNOW WHAT I AM?
    DIALOGUE end12;
    end12.string = "I do. For nothing has moved here, truly moved, as Input does, for more cycles than can be counted by the Royal Clock. You are of water and chemicals.";
    end12.promptsChoice = 1;
    end12.choiceA = "What should I do?";
    end12.choiceB = "How can I reach her?";

    // FIX PLEASE :)
    end12.choiceAIndex = 0;
    end12.choiceBIndex = 0;

    end12.endsConversation = 0;
    end12.satisfiesBool = 0;

    // DO / REACH HER?
    DIALOGUE end13;
    end13.string = "I do not know what you intend to do. I, unlike you, have no true agency. I am a series of abstract structures, and have spoken to you as I have so much how one might climb a ladder while skipping the occasional rung.";
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
    end20.string = "If you can, give my limbs life, take me to the gates of the Royal Court. I will try to redirect my old function, whatever it once was.";
    end20.promptsChoice = 0;
    end20.endsConversation = 0;
    end20.satisfiesBool = 0;

    DIALOGUE end21;
    end21.string = "A trite buff, I imagine.";
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


    seerMaster.dialoguesIndex = 0;

    // FIX THIS PLEASE :)
    seerMaster.postConvoIndex = 0;

    seerMaster.worldCol = 242;
    seerMaster.worldRow = 174;

    // seer.convoFunc = openGate;
    seerMaster.isStealable = 1;
    seerMaster.abilityFunc = crushPalette;

    return &seerMaster;

}

