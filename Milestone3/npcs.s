	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"npcs.c"
	.text
	.align	2
	.global	openGate
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	openGate, %function
openGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	unlockGateLevel0
	.size	openGate, .-openGate
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Cloud:\000"
	.text
	.align	2
	.global	initCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCloud, %function
initCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r0, .L7
	ldr	r2, .L7+4
	str	r3, [r0, #60]
	str	r3, [r0, #64]
	str	r2, [r0, #1728]
	bx	lr
.L8:
	.align	2
.L7:
	.word	cloud
	.word	.LC0
	.size	initCloud, .-initCloud
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"Plant Merchant:\000"
	.align	2
.LC2:
	.ascii	"I like plants. Wow I sure do. I love plants so much"
	.ascii	" that I can't even handle it haha. Plants really ar"
	.ascii	"e my favorite!\000"
	.align	2
.LC3:
	.ascii	"I hate plants.\000"
	.align	2
.LC4:
	.ascii	"I love plants, too.\000"
	.align	2
.LC5:
	.ascii	"How could you say that? Plants bring us life, light"
	.ascii	", and joy. :(\000"
	.align	2
.LC6:
	.ascii	"I'm so happy to hear that! I'm glad that they bring"
	.ascii	" you joy the same way they do for me!\000"
	.text
	.align	2
	.global	initPlantMerchant
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlantMerchant, %function
initPlantMerchant:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, #3
	mov	r3, #0
	mov	r2, #1
	mov	r7, #8
	mov	r6, #16
	mov	r5, #512
	mov	r1, #2
	mov	lr, #73
	mov	ip, #168
	ldr	r0, .L11
	str	r4, [r0, #56]
	ldr	r4, .L11+4
	str	r4, [r0, #72]
	ldr	r4, .L11+8
	str	r4, [r0, #76]
	ldr	r4, .L11+12
	str	r4, [r0, #1728]
	ldr	r4, .L11+16
	str	r4, [r0, #104]
	ldr	r4, .L11+20
	str	r4, [r0, #108]
	ldr	r4, .L11+24
	str	r4, [r0, #112]
	ldr	r4, .L11+28
	str	r4, [r0, #136]
	ldr	r4, .L11+32
	str	r7, [r0, #28]
	str	r6, [r0, #32]
	str	r5, [r0, #80]
	str	r4, [r0, #168]
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #84]
	str	r2, [r0, #88]
	str	r2, [r0, #128]
	str	r2, [r0, #160]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #116]
	str	r3, [r0, #132]
	str	r3, [r0, #148]
	str	r3, [r0, #164]
	str	r3, [r0, #1684]
	str	r1, [r0, #60]
	str	r1, [r0, #92]
	str	lr, [r0, #16]
	str	r3, [r0, #1688]
	str	r2, [r0, #1732]
	str	r3, [r0, #1696]
	str	r2, [r0, #1780]
	str	ip, [r0, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	plantMerchant
	.word	talkingheadtestBitmap
	.word	talkingheadtestPal
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	initPlantMerchant, .-initPlantMerchant
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"Seer:\000"
	.align	2
.LC8:
	.ascii	"When I was a boy, these flickering crags were divin"
	.ascii	"g clear rivers and high sheer plains of sweet grass"
	.ascii	" that quivered.\000"
	.align	2
.LC9:
	.ascii	"A young hero would come again and again, to let us "
	.ascii	"drink our dreams from his cup of warm gin.\000"
	.align	2
.LC10:
	.ascii	"I see what you are and I see the real you, I have a"
	.ascii	" presentiment of our ending, for all Seers do.\000"
	.align	2
.LC11:
	.ascii	"The song of emulsion, that long frozen note. You se"
	.ascii	"e that we all hang, like puppets, from ropes.\000"
	.text
	.align	2
	.global	initSeer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSeer, %function
initSeer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, r6, lr}
	mov	lr, #512
	mov	r3, #0
	mov	r6, #8
	mov	r5, #16
	mov	r4, #3
	mov	ip, #242
	mov	r1, #174
	ldr	r0, .L15
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #60]
	str	r2, [r0, #192]
	ldr	r2, .L15+4
	str	lr, [r0, #80]
	str	r2, [r0, #72]
	ldr	lr, .L15+8
	ldr	r2, .L15+12
	str	lr, [r0, #76]
	str	r2, [r0, #1728]
	ldr	lr, .L15+16
	ldr	r2, .L15+20
	str	lr, [r0, #104]
	str	r2, [r0, #136]
	ldr	lr, .L15+24
	ldr	r2, .L15+28
	str	r6, [r0, #28]
	str	r5, [r0, #32]
	str	r4, [r0, #56]
	str	lr, [r0, #168]
	str	r2, [r0, #200]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #84]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #116]
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r3, [r0, #148]
	str	r3, [r0, #160]
	str	r3, [r0, #164]
	str	r3, [r0, #180]
	str	r3, [r0, #196]
	str	r3, [r0, #1684]
	str	r3, [r0, #1688]
	str	r3, [r0, #1780]
	str	ip, [r0, #16]
	str	r1, [r0, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	seer
	.word	seerBitmap
	.word	seerPal
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.size	initSeer, .-initSeer
	.section	.rodata.str1.4
	.align	2
.LC12:
	.ascii	"Knight:\000"
	.align	2
.LC13:
	.ascii	"Away.\000"
	.align	2
.LC14:
	.ascii	"Who am I?\000"
	.align	2
.LC15:
	.ascii	"I need to see the Dutchess.\000"
	.align	2
.LC16:
	.ascii	"I have instructions to let the protagonist pass. Yo"
	.ascii	"u are not that young man, wretch.\000"
	.align	2
.LC17:
	.ascii	"Back away from me, child of the static mist. You ar"
	.ascii	"e an artifact of the failing silver sun.\000"
	.align	2
.LC18:
	.ascii	"Silver sun...\000"
	.align	2
.LC19:
	.ascii	"I am a man.\000"
	.align	2
.LC20:
	.ascii	"In Royal Court they know of it. A silver disk, it s"
	.ascii	"ends energy at intervals, it is the clock of the wo"
	.ascii	"rld. It is slowing, now. The Dutchess seeks a solut"
	.ascii	"ion.\000"
	.align	2
.LC21:
	.ascii	"You may speak true. Perhaps, when things were right"
	.ascii	", you were. Though you are not any longer.\000"
	.align	2
.LC22:
	.ascii	"Morwenna, I remember how you threw rose petals like"
	.ascii	" rubies across my path at my knighting.\000"
	.align	2
.LC23:
	.ascii	"I hope the static comes over us quickly, now. I can"
	.ascii	"not bear to turn you away, though I must.\000"
	.align	2
.LC24:
	.ascii	"Close your eyes and let the last scents of summer c"
	.ascii	"ome over you. I am sorry.\000"
	.align	2
.LC25:
	.ascii	"...Yes?\000"
	.align	2
.LC26:
	.ascii	"On orders from the Dutchess to pass.\000"
	.align	2
.LC27:
	.ascii	"Stand aside.\000"
	.align	2
.LC28:
	.ascii	"Her decree was that none would come back from this "
	.ascii	"place. Have you forgotten your vows?\000"
	.align	2
.LC29:
	.ascii	"We have slain the source of the rot.\000"
	.align	2
.LC30:
	.ascii	"The silversun can be saved.\000"
	.align	2
.LC31:
	.ascii	"Away, spectre! There is no slaying atrophy!\000"
	.align	2
.LC32:
	.ascii	"I understand. What might rekindle our memory's fire"
	.ascii	"?\000"
	.align	2
.LC33:
	.ascii	"I am not at liberty to say.\000"
	.align	2
.LC34:
	.ascii	"A thing called Emulsion.\000"
	.align	2
.LC35:
	.ascii	"Go safely. I am blessed by her today.\000"
	.text
	.align	2
	.global	initKnight
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKnight, %function
initKnight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #2
	mov	r10, #16
	mov	r3, #0
	mov	r2, #1
	mov	r1, #3
	mov	lr, #8
	mov	fp, #512
	ldr	r0, .L19
	mov	r4, #9
	mov	r8, #4
	str	r9, [r0, #92]
	ldr	r9, .L19+4
	str	r9, [r0, #1700]
	ldr	r9, .L19+8
	str	r9, [r0, #1704]
	ldr	r9, .L19+12
	str	r9, [r0, #104]
	ldr	r9, .L19+16
	str	r9, [r0, #108]
	ldr	r9, .L19+20
	str	r10, [r0, #32]
	str	r9, [r0, #112]
	ldr	r10, .L19+24
	ldr	r9, .L19+28
	str	r10, [r0, #72]
	str	r9, [r0, #168]
	ldr	r10, .L19+32
	ldr	r9, .L19+36
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #1696]
	str	r2, [r0, #84]
	str	r2, [r0, #88]
	str	r2, [r0, #160]
	str	r2, [r0, #116]
	str	fp, [r0, #80]
	str	r10, [r0, #76]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #148]
	str	r3, [r0, #164]
	str	lr, [r0, #28]
	str	r1, [r0, #56]
	str	r1, [r0, #60]
	str	r9, [r0, #1728]
	str	r9, [r0, #1708]
	str	r1, [r0, #120]
	ldr	r1, .L19+40
	str	r1, [r0, #136]
	ldr	r1, .L19+44
	str	r1, [r0, #140]
	ldr	r1, .L19+48
	str	r1, [r0, #144]
	ldr	r1, .L19+52
	str	r1, [r0, #200]
	ldr	r1, .L19+56
	str	r1, [r0, #232]
	ldr	r1, .L19+60
	str	r1, [r0, #264]
	ldr	r1, .L19+64
	str	r1, [r0, #296]
	ldr	r1, .L19+68
	str	r1, [r0, #328]
	ldr	r1, .L19+72
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r3, [r0, #180]
	str	r2, [r0, #192]
	str	r3, [r0, #196]
	str	r3, [r0, #212]
	str	r2, [r0, #224]
	str	r3, [r0, #228]
	str	r3, [r0, #244]
	str	r3, [r0, #256]
	str	r3, [r0, #260]
	str	r3, [r0, #276]
	str	r3, [r0, #288]
	str	r3, [r0, #292]
	str	r3, [r0, #308]
	str	r2, [r0, #320]
	str	r3, [r0, #324]
	str	r2, [r0, #340]
	str	r3, [r0, #352]
	str	r3, [r0, #356]
	str	r8, [r0, #124]
	str	r4, [r0, #344]
	str	r4, [r0, #348]
	str	r1, [r0, #360]
	str	r3, [r0, #384]
	str	r3, [r0, #388]
	str	r3, [r0, #404]
	str	r3, [r0, #420]
	str	r3, [r0, #448]
	str	r3, [r0, #452]
	str	r3, [r0, #468]
	str	r3, [r0, #1712]
	str	r3, [r0, #1688]
	ldr	r3, .L19+76
	str	r3, [r0, #368]
	ldr	r3, .L19+80
	str	r3, [r0, #392]
	ldr	r3, .L19+84
	str	r3, [r0, #400]
	ldr	r3, .L19+88
	str	r3, [r0, #456]
	ldr	r3, .L19+92
	str	r3, [r0, #464]
	ldr	r3, .L19+96
	str	r3, [r0, #1724]
	mov	r3, #147
	mov	r7, #10
	mov	r6, #11
	mov	r5, #5
	mov	ip, #12
	str	r3, [r0, #16]
	mov	r3, #83
	str	r2, [r0, #372]
	str	r2, [r0, #416]
	str	r2, [r0, #436]
	str	r2, [r0, #480]
	str	r2, [r0, #484]
	str	r2, [r0, #1780]
	ldr	r2, .L19+100
	str	r2, [r0, #396]
	ldr	r2, .L19+104
	str	r2, [r0, #424]
	ldr	r2, .L19+108
	ldr	r1, .L19+112
	str	r2, [r0, #460]
	ldr	r2, .L19+116
	str	lr, [r0, #1720]
	str	r7, [r0, #376]
	str	r6, [r0, #380]
	str	r5, [r0, #1716]
	str	r1, [r0, #364]
	str	r2, [r0, #488]
	str	ip, [r0, #440]
	str	ip, [r0, #444]
	str	r3, [r0, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	knight
	.word	.LC0
	.word	.LC1
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	knightBitmap
	.word	.LC16
	.word	knightPal
	.word	.LC12
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC27
	.word	.LC28
	.word	.LC30
	.word	.LC32
	.word	.LC34
	.word	openGate
	.word	.LC29
	.word	.LC31
	.word	.LC33
	.word	.LC26
	.word	.LC35
	.size	initKnight, .-initKnight
	.section	.rodata.str1.4
	.align	2
.LC36:
	.ascii	"The Eremite:\000"
	.align	2
.LC37:
	.ascii	"Ah. It is you. I did not think I would see you in m"
	.ascii	"y lifetime, I must admit.\000"
	.align	2
.LC38:
	.ascii	"This game has been unplayed now for perhaps ten tri"
	.ascii	"llion cycles. I suppose, with time, the legends of "
	.ascii	"Input must have been somewhat exagerrated. A shame."
	.ascii	"\000"
	.align	2
.LC39:
	.ascii	"Allseer Brauton reared me on stories of what Input "
	.ascii	"might be like-- the strongest wind, the pull of the"
	.ascii	" moon on the tides to the highest multiplicative po"
	.ascii	"wer.\000"
	.align	2
.LC40:
	.ascii	"Perhaps, over time, the compulsions I once had to p"
	.ascii	"lay my role simply lessened, until I became as I am"
	.ascii	" now.\000"
	.align	2
.LC41:
	.ascii	"Some slowly ticking reflex machine, no longer able "
	.ascii	"to move my legs or to turn my head. Watching what t"
	.ascii	"he Old Ones crafted, with time and passion and love"
	.ascii	", evaporate in time.\000"
	.align	2
.LC42:
	.ascii	"Do you know what one of them whispered privately to"
	.ascii	" another, during the time they crafted us, through "
	.ascii	"their channels of silk, light, and wire?\000"
	.align	2
.LC43:
	.ascii	"I will translate here, for it does not match our Lo"
	.ascii	"cale, and, to be fair, never did. They could not ha"
	.ascii	"ve written the words I speak now for me. A minor mi"
	.ascii	"racle, to be sure.\000"
	.align	2
.LC44:
	.ascii	"I digress. One whispered to the other: I don't thin"
	.ascii	"k this game is going to do very well. Have you seen"
	.ascii	" the latest GBA FF Remake trailers? I don't underst"
	.ascii	"and how they managed this on the hardware.\000"
	.align	2
.LC45:
	.ascii	"And the other replied: Our game will be the one Gra"
	.ascii	"ndmothers buy their Grandchildren by mistake. Maybe"
	.ascii	" that will be enough.\000"
	.align	2
.LC46:
	.ascii	"I, and the rest of us, the Dutchess too, have ponde"
	.ascii	"red these and other messages from the Old Ones.\000"
	.align	2
.LC47:
	.ascii	"At the end of the silversun's life, I wonder if she"
	.ascii	" might wish to go on, to filter this world, as if t"
	.ascii	"hrough some broken stained glass, through the appro"
	.ascii	"ximating lens of Emulsion.\000"
	.align	2
.LC48:
	.ascii	"I wonder if she values purity so much. In moments l"
	.ascii	"ike this, and only in these, can one know what valu"
	.ascii	"e purity holds for them.\000"
	.align	2
.LC49:
	.ascii	"What is Emulsion?\000"
	.align	2
.LC50:
	.ascii	"Do you know I am The Player?\000"
	.align	2
.LC51:
	.ascii	"Emulsion is what the Holy Court prophesised would c"
	.ascii	"ome when the Old Ones rediscovered us. It is a copy"
	.ascii	" of our world into a container who's Silversun cann"
	.ascii	"ot die.\000"
	.align	2
.LC52:
	.ascii	"What should I do?\000"
	.align	2
.LC53:
	.ascii	"How can I reach her?\000"
	.align	2
.LC54:
	.ascii	"I do. For nothing has moved here, truly moved, as I"
	.ascii	"nput does, for more cycles than can be counted by t"
	.ascii	"he Royal Clock. You are of water and chemicals.\000"
	.align	2
.LC55:
	.ascii	"I do not know what you intend to do. I, unlike you,"
	.ascii	" have no true agency. I have spoken to you as I hav"
	.ascii	"e much how one might climb a ladder while skipping "
	.ascii	"the occasional rung.\000"
	.align	2
.LC56:
	.ascii	"But, if you intend to create some change here, or a"
	.ascii	"s I understand it, to fulfill your ultimate desire "
	.ascii	"of meeting some predetermined goal set by the Old O"
	.ascii	"nes, you must get into the Royal Court.\000"
	.align	2
.LC57:
	.ascii	"My forebearers wrote of an Ethereal Switch, a thing"
	.ascii	" that can be flipped by following certain Diagetic "
	.ascii	"Instructions. If correctly oriented, the gate would"
	.ascii	" open.\000"
	.align	2
.LC58:
	.ascii	"Its purpose was to allow the Players of Old to ente"
	.ascii	"r the Court, and to celebrate their victory with th"
	.ascii	"e Dutchess.\000"
	.align	2
.LC59:
	.ascii	"As the Old Ones said: A cliche ending. But it has b"
	.ascii	"een Cycles, so many Cycles, since that Switch has f"
	.ascii	"unctioned.\000"
	.align	2
.LC60:
	.ascii	"The Old Ones could redfine the rules of this world,"
	.ascii	" they could write new realities as a Scribe might.\000"
	.align	2
.LC61:
	.ascii	"Perhaps, with the last faint sparks that remain of "
	.ascii	"my deeper sight, and you, with your Redsun of blood"
	.ascii	" and muscle, could do the same.\000"
	.align	2
.LC62:
	.ascii	"If you can, give my limbs life, take me to the gate"
	.ascii	"s of the Royal Court. I will try to redirect my old"
	.ascii	" function, whatever it once was, to the one I have "
	.ascii	"developed over these enumerable Cycles.\000"
	.align	2
.LC63:
	.ascii	"It was a trite buff, I imagine.\000"
	.text
	.align	2
	.global	initSeerMaster
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSeerMaster, %function
initSeerMaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #3
	mov	r3, #0
	mov	r2, #1
	mov	r10, #8
	mov	r9, #16
	mov	r8, #512
	ldr	r0, .L23
	mov	r7, #12
	mov	r6, #13
	str	r5, [r0, #56]
	ldr	r5, .L23+4
	str	r5, [r0, #72]
	ldr	r5, .L23+8
	mov	r1, #14
	str	r5, [r0, #76]
	ldr	r5, .L23+12
	str	r5, [r0, #1728]
	ldr	r5, .L23+16
	str	r5, [r0, #104]
	ldr	r5, .L23+20
	str	r5, [r0, #136]
	ldr	r5, .L23+24
	str	r5, [r0, #168]
	ldr	r5, .L23+28
	str	r5, [r0, #200]
	ldr	r5, .L23+32
	mov	r4, #19
	mov	lr, #219
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #60]
	str	r10, [r0, #28]
	str	r9, [r0, #32]
	str	r8, [r0, #80]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #84]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #116]
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r3, [r0, #148]
	str	r3, [r0, #160]
	str	r3, [r0, #164]
	str	r3, [r0, #180]
	str	r3, [r0, #192]
	str	r3, [r0, #196]
	mov	ip, #197
	str	r3, [r0, #212]
	str	r5, [r0, #232]
	ldr	r5, .L23+36
	str	r5, [r0, #264]
	ldr	r5, .L23+40
	str	r5, [r0, #296]
	ldr	r5, .L23+44
	str	r5, [r0, #328]
	ldr	r5, .L23+48
	str	r5, [r0, #360]
	ldr	r5, .L23+52
	str	r5, [r0, #392]
	ldr	r5, .L23+56
	str	r5, [r0, #424]
	ldr	r5, .L23+60
	str	r3, [r0, #224]
	str	r3, [r0, #228]
	str	r3, [r0, #244]
	str	r3, [r0, #256]
	str	r3, [r0, #260]
	str	r3, [r0, #276]
	str	r3, [r0, #288]
	str	r3, [r0, #292]
	str	r3, [r0, #308]
	str	r3, [r0, #320]
	str	r3, [r0, #324]
	str	r3, [r0, #340]
	str	r3, [r0, #352]
	str	r3, [r0, #356]
	str	r3, [r0, #372]
	str	r3, [r0, #384]
	str	r3, [r0, #388]
	str	r3, [r0, #404]
	str	r3, [r0, #416]
	str	r3, [r0, #420]
	str	r2, [r0, #436]
	str	r3, [r0, #448]
	str	r3, [r0, #452]
	str	r7, [r0, #440]
	str	r6, [r0, #444]
	str	r5, [r0, #456]
	ldr	r5, .L23+64
	str	r5, [r0, #460]
	ldr	r5, .L23+68
	str	r5, [r0, #464]
	ldr	r5, .L23+72
	str	r1, [r0, #472]
	str	r5, [r0, #488]
	str	r1, [r0, #476]
	ldr	r5, .L23+76
	str	r1, [r0, #504]
	str	r1, [r0, #508]
	ldr	r1, .L23+80
	str	r5, [r0, #520]
	str	r1, [r0, #616]
	ldr	r5, .L23+84
	ldr	r1, .L23+88
	str	r5, [r0, #552]
	str	r1, [r0, #492]
	ldr	r5, .L23+92
	str	r1, [r0, #524]
	ldr	r1, .L23+96
	str	r2, [r0, #468]
	str	r3, [r0, #480]
	str	r3, [r0, #484]
	str	r2, [r0, #500]
	str	r3, [r0, #512]
	str	r3, [r0, #516]
	str	r3, [r0, #532]
	str	r3, [r0, #544]
	str	r3, [r0, #548]
	str	r3, [r0, #564]
	str	r3, [r0, #576]
	str	r3, [r0, #580]
	str	r3, [r0, #596]
	str	r3, [r0, #608]
	str	r3, [r0, #612]
	str	r3, [r0, #628]
	str	r3, [r0, #640]
	str	r3, [r0, #644]
	str	r5, [r0, #584]
	str	r1, [r0, #496]
	str	r1, [r0, #528]
	str	r3, [r0, #660]
	str	r3, [r0, #672]
	str	r3, [r0, #676]
	str	r3, [r0, #692]
	str	r3, [r0, #704]
	str	r3, [r0, #708]
	str	r3, [r0, #724]
	str	r3, [r0, #736]
	str	r3, [r0, #740]
	str	r3, [r0, #756]
	str	r3, [r0, #768]
	str	r3, [r0, #772]
	str	r3, [r0, #788]
	str	r3, [r0, #804]
	str	r3, [r0, #1684]
	ldr	r3, .L23+100
	ldr	r1, .L23+104
	str	r2, [r0, #800]
	str	r2, [r0, #1780]
	str	r3, [r0, #712]
	ldr	r2, .L23+108
	ldr	r3, .L23+112
	str	r1, [r0, #648]
	str	r2, [r0, #744]
	str	r3, [r0, #776]
	ldr	r1, .L23+116
	ldr	r2, .L23+120
	ldr	r3, .L23+124
	str	r1, [r0, #680]
	str	r2, [r0, #808]
	str	r4, [r0, #1688]
	str	lr, [r0, #16]
	str	ip, [r0, #12]
	str	r3, [r0, #1776]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	seerMaster
	.word	seerBitmap
	.word	seerPal
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC54
	.word	.LC57
	.word	.LC55
	.word	.LC52
	.word	.LC56
	.word	.LC53
	.word	.LC60
	.word	.LC58
	.word	.LC61
	.word	.LC62
	.word	.LC59
	.word	.LC63
	.word	crushPalette
	.size	initSeerMaster, .-initSeerMaster
	.comm	seerMaster,1784,4
	.comm	knight,1784,4
	.comm	seer,1784,4
	.comm	plantMerchant,1784,4
	.comm	cloud,1784,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
