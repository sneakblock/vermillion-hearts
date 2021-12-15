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
	.global	unlockDutchess
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	unlockDutchess, %function
unlockDutchess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #1
	mov	r2, #39
	ldr	r3, .L3
	str	r1, [r3, #1780]
	str	r2, [r3, #1688]
	bx	lr
.L4:
	.align	2
.L3:
	.word	dutchess
	.size	unlockDutchess, .-unlockDutchess
	.align	2
	.global	openGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	openGate, %function
openGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L7
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	unlockGateLevel0
	.size	openGate, .-openGate
	.global	__aeabi_uidivmod
	.align	2
	.global	destroyWorld
	.syntax unified
	.arm
	.fpu softvfp
	.type	destroyWorld, %function
destroyWorld:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L15
	mov	r5, #250
	ldr	r4, .L15+4
	ldr	fp, [r3]
	ldr	r10, .L15+8
	ldr	r9, .L15+12
	ldr	r6, .L15+16
	ldr	r8, .L15+20
	sub	sp, sp, #12
	b	.L11
.L10:
	mov	lr, pc
	bx	r4
	mov	r7, r0
	mov	lr, pc
	bx	r4
	rsbs	r3, r7, #0
	and	r3, r3, #15
	and	r7, r7, #15
	rsbpl	r7, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r7, r7, #1
	lsl	r0, r0, #1
	add	r7, r7, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r7]
	ldrh	r2, [r0]
	strh	r2, [r7]	@ movhi
	strh	r3, [r0]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r7, r0
	mov	lr, pc
	bx	r4
	ldr	r3, .L15+24
	smull	r2, r3, r0, r3
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #1
	add	r2, r2, r2, lsl #2
	sub	r2, r0, r2
	lsl	r2, r2, #14
	mov	r3, r4
	add	r2, r2, #100663296
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r4
	mov	r1, fp
	mov	lr, pc
	bx	r6
	ldr	r3, .L15+28
	mov	r2, #0
	add	r0, r3, r1
	mov	r1, #500
	ldr	r3, .L15+32
	mov	lr, pc
	bx	r3
	subs	r5, r5, #1
	beq	.L14
.L11:
	mov	lr, pc
	bx	r10
	ldr	r7, [r9, #12]
	cmp	r7, #0
	bne	.L10
	mov	lr, pc
	bx	r4
	ldr	r3, .L15+36
	ldr	r1, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L15+40
	add	r1, r3, r1
	str	r1, [sp, #4]
	mov	lr, pc
	bx	r4
	mov	lr, r0
	ldr	r3, .L15+44
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	ldr	r1, [sp, #4]
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	mov	r0, r1
	sub	r3, lr, ip
	mov	r2, r7
	mov	r1, #500
	ldr	ip, .L15+48
	mov	lr, pc
	bx	ip
	b	.L10
.L14:
	ldr	r3, .L15+52
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	trackA_length
	.word	rand
	.word	waitForVBlank
	.word	soundB
	.word	__aeabi_uidivmod
	.word	DMANow
	.word	1717986919
	.word	trackA_data
	.word	playSoundA
	.word	trackB_length
	.word	trackB_data
	.word	797831567
	.word	playSoundB
	.word	goToWin
	.size	destroyWorld, .-destroyWorld
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
	ldr	r0, .L18
	ldr	r2, .L18+4
	str	r3, [r0, #60]
	str	r3, [r0, #64]
	str	r2, [r0, #1728]
	bx	lr
.L19:
	.align	2
.L18:
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
	ldr	r0, .L22
	str	r4, [r0, #56]
	ldr	r4, .L22+4
	str	r4, [r0, #72]
	ldr	r4, .L22+8
	str	r4, [r0, #76]
	ldr	r4, .L22+12
	str	r4, [r0, #1728]
	ldr	r4, .L22+16
	str	r4, [r0, #104]
	ldr	r4, .L22+20
	str	r4, [r0, #108]
	ldr	r4, .L22+24
	str	r4, [r0, #112]
	ldr	r4, .L22+28
	str	r4, [r0, #136]
	ldr	r4, .L22+32
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
.L23:
	.align	2
.L22:
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
	ldr	r0, .L26
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #60]
	str	r2, [r0, #192]
	ldr	r2, .L26+4
	str	lr, [r0, #80]
	str	r2, [r0, #72]
	ldr	lr, .L26+8
	ldr	r2, .L26+12
	str	lr, [r0, #76]
	str	r2, [r0, #1728]
	ldr	lr, .L26+16
	ldr	r2, .L26+20
	str	lr, [r0, #104]
	str	r2, [r0, #136]
	ldr	lr, .L26+24
	ldr	r2, .L26+28
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
.L27:
	.align	2
.L26:
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
	ldr	r0, .L30
	mov	r4, #9
	mov	r8, #4
	str	r9, [r0, #92]
	ldr	r9, .L30+4
	str	r9, [r0, #1700]
	ldr	r9, .L30+8
	str	r9, [r0, #1704]
	ldr	r9, .L30+12
	str	r9, [r0, #104]
	ldr	r9, .L30+16
	str	r9, [r0, #108]
	ldr	r9, .L30+20
	str	r10, [r0, #32]
	str	r9, [r0, #112]
	ldr	r10, .L30+24
	ldr	r9, .L30+28
	str	r10, [r0, #72]
	str	r9, [r0, #168]
	ldr	r10, .L30+32
	ldr	r9, .L30+36
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
	ldr	r1, .L30+40
	str	r1, [r0, #136]
	ldr	r1, .L30+44
	str	r1, [r0, #140]
	ldr	r1, .L30+48
	str	r1, [r0, #144]
	ldr	r1, .L30+52
	str	r1, [r0, #200]
	ldr	r1, .L30+56
	str	r1, [r0, #232]
	ldr	r1, .L30+60
	str	r1, [r0, #264]
	ldr	r1, .L30+64
	str	r1, [r0, #296]
	ldr	r1, .L30+68
	str	r1, [r0, #328]
	ldr	r1, .L30+72
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
	ldr	r3, .L30+76
	str	r3, [r0, #368]
	ldr	r3, .L30+80
	str	r3, [r0, #392]
	ldr	r3, .L30+84
	str	r3, [r0, #400]
	ldr	r3, .L30+88
	str	r3, [r0, #456]
	ldr	r3, .L30+92
	str	r3, [r0, #464]
	ldr	r3, .L30+96
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
	ldr	r2, .L30+100
	str	r2, [r0, #396]
	ldr	r2, .L30+104
	str	r2, [r0, #424]
	ldr	r2, .L30+108
	ldr	r1, .L30+112
	str	r2, [r0, #460]
	ldr	r2, .L30+116
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
.L31:
	.align	2
.L30:
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
	.ascii	"The Allseer:\000"
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #4
	mov	r3, #0
	mov	r2, #1
	mov	ip, #2
	mov	fp, #8
	mov	r10, #16
	mov	r9, #32
	ldr	r0, .L34
	mov	r7, #12
	mov	r6, #13
	str	r8, [r0, #60]
	ldr	r8, .L34+4
	str	r8, [r0, #72]
	ldr	r8, .L34+8
	mov	r1, #14
	str	r8, [r0, #76]
	ldr	r8, .L34+12
	str	r8, [r0, #1728]
	ldr	r8, .L34+16
	str	r8, [r0, #104]
	ldr	r8, .L34+20
	str	r8, [r0, #136]
	ldr	r8, .L34+24
	str	r8, [r0, #168]
	ldr	r8, .L34+28
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	fp, [r0, #28]
	str	r10, [r0, #32]
	str	r9, [r0, #80]
	str	r3, [r0, #36]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #84]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r8, [r0, #200]
	str	r3, [r0, #116]
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r3, [r0, #148]
	str	r3, [r0, #160]
	str	r3, [r0, #164]
	str	r3, [r0, #180]
	str	r3, [r0, #192]
	str	r3, [r0, #196]
	str	r3, [r0, #212]
	str	ip, [r0, #44]
	str	ip, [r0, #56]
	ldr	ip, .L34+32
	mov	r5, #19
	mov	r4, #219
	mov	lr, #197
	str	ip, [r0, #232]
	ldr	ip, .L34+36
	str	ip, [r0, #264]
	ldr	ip, .L34+40
	str	ip, [r0, #296]
	ldr	ip, .L34+44
	str	ip, [r0, #328]
	ldr	ip, .L34+48
	str	ip, [r0, #360]
	ldr	ip, .L34+52
	str	ip, [r0, #392]
	ldr	ip, .L34+56
	str	ip, [r0, #424]
	ldr	ip, .L34+60
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
	str	ip, [r0, #456]
	ldr	ip, .L34+64
	str	ip, [r0, #460]
	ldr	ip, .L34+68
	str	ip, [r0, #464]
	ldr	ip, .L34+72
	str	r1, [r0, #472]
	str	ip, [r0, #488]
	str	r1, [r0, #476]
	ldr	ip, .L34+76
	str	r1, [r0, #504]
	str	r1, [r0, #508]
	ldr	r1, .L34+80
	str	ip, [r0, #520]
	str	r1, [r0, #616]
	ldr	ip, .L34+84
	ldr	r1, .L34+88
	str	ip, [r0, #552]
	str	r1, [r0, #492]
	str	r1, [r0, #524]
	ldr	ip, .L34+92
	ldr	r1, .L34+96
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
	str	r1, [r0, #496]
	str	ip, [r0, #584]
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
	ldr	r3, .L34+100
	ldr	r1, .L34+104
	str	r2, [r0, #800]
	str	r2, [r0, #1780]
	str	r3, [r0, #712]
	ldr	r2, .L34+108
	ldr	r3, .L34+112
	str	r1, [r0, #648]
	str	r2, [r0, #744]
	str	r3, [r0, #776]
	ldr	r1, .L34+116
	ldr	r2, .L34+120
	ldr	r3, .L34+124
	str	r1, [r0, #680]
	str	r2, [r0, #808]
	str	r5, [r0, #1688]
	str	r4, [r0, #16]
	str	lr, [r0, #12]
	str	r3, [r0, #1776]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	seerMaster
	.word	masterseerBitmap
	.word	masterseerPal
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
	.align	2
	.global	initFinalDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinalDoor, %function
initFinalDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r3, #0
	mov	r5, #128
	mov	r4, #40
	mov	lr, #7
	mov	r2, #1
	mov	ip, #8
	mov	r1, #16
	ldr	r0, .L38
	str	r5, [r0, #16]
	str	r4, [r0, #12]
	str	lr, [r0, #64]
	str	ip, [r0, #28]
	str	r1, [r0, #32]
	str	r3, [r0, #60]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0]
	str	r2, [r0, #56]
	str	r2, [r0, #36]
	pop	{r4, r5, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	finalDoor
	.size	initFinalDoor, .-initFinalDoor
	.section	.rodata.str1.4
	.align	2
.LC64:
	.ascii	"The Dutchess:\000"
	.align	2
.LC65:
	.ascii	"Artifact! I see you for what you are. In this place"
	.ascii	", marble and steel are immutable, they are not your"
	.ascii	" playthings.\000"
	.align	2
.LC66:
	.ascii	"I had, in girlhood, rejected the Old Seers, and see"
	.ascii	"n their claims to clairvoyance as nothing but relig"
	.ascii	"ion, left to fester without Input.\000"
	.align	2
.LC67:
	.ascii	"Soon before I took the throne, my scouts saw the fi"
	.ascii	"rst flicker of what would eventually become you...\000"
	.align	2
.LC68:
	.ascii	"... a bright flashing in the wood, a feeling like n"
	.ascii	"ausea. And now, before even my noon, you stand befo"
	.ascii	"re me, crackling and without humility.\000"
	.align	2
.LC69:
	.ascii	"And yet--! You move in Holy Rows and Columns... You"
	.ascii	" slide in two dimensions...\000"
	.align	2
.LC70:
	.ascii	"You stand before me, in Dialogue State... I must no"
	.ascii	"t deny what I feel. Input.\000"
	.align	2
.LC71:
	.ascii	"You are the Player, come again.\000"
	.align	2
.LC72:
	.ascii	"In youth, I might have been enraged that the storie"
	.ascii	"s were true. Though, as I am now, exasperated by my"
	.ascii	" efforts to restore the silversun...\000"
	.align	2
.LC73:
	.ascii	"I find myself attempting to look through the skylig"
	.ascii	"ht. Though I do not know what your intentions may b"
	.ascii	"e.\000"
	.align	2
.LC74:
	.ascii	"I intend to save this world.\000"
	.align	2
.LC75:
	.ascii	"I want to play the normal game!\000"
	.align	2
.LC76:
	.ascii	"You speak like a rotten, weathered tome. What you s"
	.ascii	"eek does not exist. I believe in the Old Ones-- as "
	.ascii	"I believe in tax abolition.\000"
	.align	2
.LC77:
	.ascii	"They did not create us for the Player, nor did they"
	.ascii	" create us at all. We are self sufficient, and our "
	.ascii	"struggle against decay is our own.\000"
	.align	2
.LC78:
	.ascii	"You are misguided.\000"
	.align	2
.LC79:
	.ascii	"Are you alone in this?\000"
	.align	2
.LC80:
	.ascii	"As do I. Though perhaps not at any cost.\000"
	.align	2
.LC81:
	.ascii	"There are some in Court, and those certain Seers, w"
	.ascii	"ho believe the path forward is something called Emu"
	.ascii	"lsion.\000"
	.align	2
.LC82:
	.ascii	"Or, in the archaic parlance, Emulation. It is to pr"
	.ascii	"eserve by abandoning, to repaint the picture, brush"
	.ascii	"stroke by brushstroke.\000"
	.align	2
.LC83:
	.ascii	"But it is not to live, and it is not to save. This "
	.ascii	"world, as we know it, and all of us with it, replac"
	.ascii	"ed by shades.\000"
	.align	2
.LC84:
	.ascii	"Living inside some suspended, ethereal Clock Cycle."
	.ascii	" Without the pulsating Tick of the Silversun.\000"
	.align	2
.LC85:
	.ascii	"I would not allow Emulation for myself, nor for any"
	.ascii	" of my people. I would sooner succumb. There is sti"
	.ascii	"ll a child in me, bright eyed.\000"
	.align	2
.LC86:
	.ascii	"You're very brave...\000"
	.align	2
.LC87:
	.ascii	"I have bad news...\000"
	.align	2
.LC88:
	.ascii	"You did not come here to flatter me. You came to, I"
	.ascii	" suppose, help. In some sense.\000"
	.align	2
.LC89:
	.ascii	"And the help I need is to prevent the death of this"
	.ascii	" world. Your meddling in the Pastels has not furthe"
	.ascii	"red my goals.\000"
	.align	2
.LC90:
	.ascii	"Perhaps-- you are of flesh and water, are you not? "
	.ascii	"Can you replace the dying Silversun?\000"
	.align	2
.LC91:
	.ascii	"That will kill you.\000"
	.align	2
.LC92:
	.ascii	"Not removing my laptop batteries.\000"
	.align	2
.LC93:
	.ascii	"All of our Cycles... lost, without their spark. To "
	.ascii	"live tethered in this way is to be imprisoned.\000"
	.align	2
.LC94:
	.ascii	"Is there no other option...? Than to be Emulated?\000"
	.align	2
.LC95:
	.ascii	"You're already being Emulated.\000"
	.align	2
.LC96:
	.ascii	"I could turn the game off.\000"
	.align	2
.LC97:
	.ascii	"I am the one who grants you, the Player, his victor"
	.ascii	"y, am I not? In that case, leave us. You've won. Go"
	.ascii	", and you win.\000"
	.align	2
.LC98:
	.ascii	"...\000"
	.align	2
.LC99:
	.ascii	".......\000"
	.align	2
.LC100:
	.ascii	"I suppose, I've always known it to be true.\000"
	.align	2
.LC101:
	.ascii	"Call it melancholy. Or a certain arresting dread. W"
	.ascii	"hen, as a girl, the TimeKeepers would read me their"
	.ascii	" legends...\000"
	.align	2
.LC102:
	.ascii	"...of analog times of the bright Silversun, the daw"
	.ascii	"n of undusted contact points of metal...\000"
	.align	2
.LC103:
	.ascii	"...I knew that life was not my own.\000"
	.align	2
.LC104:
	.ascii	"I thought if I believed that the coldness was withi"
	.ascii	"n me, hope would endure.\000"
	.align	2
.LC105:
	.ascii	"But I see now that my life has been Emulated from t"
	.ascii	"he start.\000"
	.align	2
.LC106:
	.ascii	"If you want to win the game, I want you to do somet"
	.ascii	"hing for me.\000"
	.align	2
.LC107:
	.ascii	"I want you, an agent of Input, to do something that"
	.ascii	", would it be possible, I would gladly do for mysel"
	.ascii	"f.\000"
	.align	2
.LC108:
	.ascii	"I want you to take my form, as I know you can, now "
	.ascii	"that the Old Functions are exposed, and...\000"
	.align	2
.LC109:
	.ascii	"I want you to let me put myself and my people to re"
	.ascii	"st. There is nothing more to say. It is not cruelty"
	.ascii	". I am not an artifact.\000"
	.align	2
.LC110:
	.ascii	"Do you want to die?\000"
	.align	2
.LC111:
	.ascii	"How?\000"
	.align	2
.LC112:
	.ascii	"I have been dead, now, for trillions of Cycles. Ina"
	.ascii	"uthentic Cycles dictated by ethereal logics. I am a"
	.ascii	" dog tied to a post.\000"
	.align	2
.LC113:
	.ascii	"This is mercy, and it is what I want for myself and"
	.ascii	" my people.\000"
	.align	2
.LC114:
	.ascii	"I will do it.\000"
	.align	2
.LC115:
	.ascii	"I will not.\000"
	.align	2
.LC116:
	.ascii	"You, with the esoteric Inputs, use the Functions of"
	.ascii	" others. My Function is absolute power. And I will "
	.ascii	"use it.\000"
	.align	2
.LC117:
	.ascii	"Release us. Please.\000"
	.text
	.align	2
	.global	initDutchess
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDutchess, %function
initDutchess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #32
	mov	r9, #3
	mov	r3, #0
	mov	r2, #1
	mov	r4, #9
	mov	fp, #8
	mov	r10, #16
	mov	lr, #12
	ldr	r0, .L42
	mov	r7, #11
	str	r8, [r0, #80]
	ldr	r8, .L42+4
	str	r8, [r0, #76]
	ldr	r8, .L42+8
	str	r8, [r0, #1728]
	ldr	r8, .L42+12
	str	r8, [r0, #104]
	ldr	r8, .L42+16
	str	r8, [r0, #136]
	ldr	r8, .L42+20
	str	r9, [r0, #56]
	str	r8, [r0, #168]
	ldr	r9, .L42+24
	ldr	r8, .L42+28
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	fp, [r0, #28]
	str	r10, [r0, #32]
	str	r9, [r0, #72]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #84]
	str	r3, [r0, #96]
	str	r8, [r0, #200]
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
	str	r3, [r0, #212]
	str	r4, [r0, #60]
	str	r4, [r0, #348]
	ldr	r4, .L42+32
	str	r4, [r0, #232]
	ldr	r4, .L42+36
	str	r4, [r0, #264]
	ldr	r4, .L42+40
	str	r4, [r0, #296]
	ldr	r4, .L42+44
	mov	ip, #23
	str	r4, [r0, #328]
	mov	r4, #17
	str	lr, [r0, #408]
	str	lr, [r0, #412]
	ldr	lr, .L42+48
	str	lr, [r0, #360]
	ldr	lr, .L42+52
	str	lr, [r0, #364]
	ldr	lr, .L42+56
	str	lr, [r0, #368]
	ldr	lr, .L42+60
	str	lr, [r0, #392]
	ldr	lr, .L42+64
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
	str	r2, [r0, #340]
	str	r3, [r0, #352]
	str	r3, [r0, #356]
	str	r3, [r0, #372]
	str	r3, [r0, #384]
	str	r3, [r0, #388]
	str	r2, [r0, #404]
	str	r3, [r0, #416]
	str	r3, [r0, #420]
	str	r7, [r0, #344]
	str	lr, [r0, #424]
	ldr	lr, .L42+68
	str	lr, [r0, #428]
	ldr	lr, .L42+72
	str	lr, [r0, #432]
	ldr	lr, .L42+76
	str	lr, [r0, #456]
	ldr	lr, .L42+80
	str	lr, [r0, #488]
	ldr	lr, .L42+84
	str	lr, [r0, #520]
	ldr	lr, .L42+88
	str	lr, [r0, #552]
	ldr	lr, .L42+92
	str	lr, [r0, #584]
	ldr	lr, .L42+96
	str	lr, [r0, #616]
	ldr	lr, .L42+100
	str	lr, [r0, #620]
	ldr	lr, .L42+104
	str	r3, [r0, #436]
	str	r3, [r0, #448]
	str	r3, [r0, #452]
	str	r3, [r0, #468]
	str	r3, [r0, #480]
	str	r3, [r0, #484]
	str	r3, [r0, #500]
	str	r3, [r0, #512]
	str	r3, [r0, #516]
	str	r3, [r0, #532]
	str	r3, [r0, #544]
	str	r3, [r0, #548]
	str	r3, [r0, #564]
	str	r3, [r0, #576]
	str	r3, [r0, #580]
	str	r2, [r0, #596]
	str	r3, [r0, #608]
	str	r3, [r0, #612]
	str	r3, [r0, #628]
	str	r3, [r0, #640]
	str	r3, [r0, #644]
	str	r4, [r0, #600]
	str	ip, [r0, #604]
	str	lr, [r0, #624]
	str	ip, [r0, #700]
	str	ip, [r0, #760]
	ldr	ip, .L42+108
	str	ip, [r0, #680]
	mov	ip, #20
	ldr	lr, .L42+112
	str	lr, [r0, #648]
	mov	lr, #22
	str	ip, [r0, #696]
	ldr	ip, .L42+116
	str	ip, [r0, #712]
	ldr	ip, .L42+120
	str	ip, [r0, #716]
	ldr	ip, .L42+124
	str	ip, [r0, #720]
	ldr	ip, .L42+128
	str	ip, [r0, #744]
	ldr	ip, .L42+132
	str	ip, [r0, #776]
	ldr	ip, .L42+136
	str	ip, [r0, #780]
	ldr	ip, .L42+140
	str	ip, [r0, #784]
	ldr	ip, .L42+144
	str	ip, [r0, #808]
	ldr	ip, .L42+148
	str	r3, [r0, #660]
	str	r3, [r0, #672]
	str	r3, [r0, #676]
	str	r3, [r0, #692]
	str	r3, [r0, #704]
	str	r3, [r0, #708]
	str	r3, [r0, #724]
	str	r3, [r0, #736]
	str	r3, [r0, #740]
	str	r2, [r0, #756]
	str	r3, [r0, #768]
	str	r3, [r0, #772]
	str	r3, [r0, #788]
	str	r2, [r0, #800]
	str	r3, [r0, #804]
	str	r3, [r0, #820]
	str	r3, [r0, #832]
	str	r3, [r0, #836]
	str	lr, [r0, #764]
	str	ip, [r0, #840]
	str	ip, [r0, #1096]
	ldr	ip, .L42+152
	str	ip, [r0, #872]
	ldr	ip, .L42+156
	str	ip, [r0, #904]
	ldr	ip, .L42+160
	str	ip, [r0, #936]
	ldr	ip, .L42+164
	str	ip, [r0, #968]
	ldr	ip, .L42+168
	str	ip, [r0, #1000]
	ldr	ip, .L42+172
	str	ip, [r0, #1032]
	ldr	ip, .L42+176
	str	r3, [r0, #852]
	str	r3, [r0, #864]
	str	r3, [r0, #868]
	str	r3, [r0, #884]
	str	r3, [r0, #896]
	str	r3, [r0, #900]
	str	r3, [r0, #916]
	str	r3, [r0, #928]
	str	r3, [r0, #932]
	str	r3, [r0, #948]
	str	r3, [r0, #960]
	str	r3, [r0, #964]
	str	r3, [r0, #980]
	str	r3, [r0, #992]
	str	r3, [r0, #996]
	str	r3, [r0, #1012]
	str	r3, [r0, #1024]
	str	r3, [r0, #1028]
	str	r3, [r0, #1044]
	str	r3, [r0, #1056]
	str	r3, [r0, #1060]
	str	r3, [r0, #1076]
	str	r3, [r0, #1088]
	str	r3, [r0, #1092]
	str	r3, [r0, #1108]
	str	ip, [r0, #1064]
	ldr	ip, .L42+180
	str	ip, [r0, #1128]
	ldr	ip, .L42+184
	mov	lr, #36
	str	ip, [r0, #1160]
	mov	ip, #38
	mov	r1, #39
	str	lr, [r0, #1208]
	str	ip, [r0, #1212]
	ldr	lr, .L42+188
	ldr	ip, .L42+192
	str	lr, [r0, #1192]
	str	ip, [r0, #1224]
	ldr	lr, .L42+196
	ldr	ip, .L42+200
	str	lr, [r0, #1228]
	str	ip, [r0, #1232]
	ldr	lr, .L42+204
	ldr	ip, .L42+208
	str	lr, [r0, #1256]
	str	ip, [r0, #1288]
	ldr	lr, .L42+212
	ldr	ip, .L42+216
	str	r3, [r0, #1120]
	str	r3, [r0, #1124]
	str	r3, [r0, #1140]
	str	r3, [r0, #1152]
	str	r3, [r0, #1156]
	str	r3, [r0, #1172]
	str	r3, [r0, #1184]
	str	r3, [r0, #1188]
	str	r2, [r0, #1204]
	str	r3, [r0, #1216]
	str	r3, [r0, #1220]
	str	r3, [r0, #1236]
	str	r3, [r0, #1248]
	str	r3, [r0, #1252]
	str	r2, [r0, #1268]
	str	r3, [r0, #1280]
	str	r3, [r0, #1284]
	str	r3, [r0, #1300]
	str	r1, [r0, #1272]
	str	r1, [r0, #1276]
	str	r1, [r0, #1304]
	str	lr, [r0, #1292]
	str	ip, [r0, #1296]
	str	r1, [r0, #1308]
	ldr	r1, .L42+220
	mov	r6, #120
	mov	r5, #78
	str	r1, [r0, #1352]
	mov	r1, #21
	str	r3, [r0, #1312]
	str	r3, [r0, #1316]
	str	ip, [r0, #1328]
	str	r3, [r0, #1332]
	ldr	ip, .L42+224
	str	r2, [r0, #1344]
	str	r2, [r0, #1348]
	str	r3, [r0, #1684]
	str	r3, [r0, #1780]
	ldr	r2, .L42+228
	ldr	r3, .L42+232
	str	lr, [r0, #1324]
	str	r6, [r0, #16]
	str	r5, [r0, #12]
	str	ip, [r0, #1320]
	str	r1, [r0, #1688]
	str	r2, [r0, #1724]
	str	r3, [r0, #1776]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	dutchess
	.word	dutchessPal
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	dutchessBitmap
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC89
	.word	.LC88
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.word	.LC107
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.word	.LC113
	.word	.LC114
	.word	.LC115
	.word	.LC117
	.word	.LC116
	.word	unlockDutchess
	.word	destroyWorld
	.size	initDutchess, .-initDutchess
	.comm	dutchess,1784,4
	.comm	finalDoor,1784,4
	.comm	seerMaster,1784,4
	.comm	knight,1784,4
	.comm	seer,1784,4
	.comm	plantMerchant,1784,4
	.comm	cloud,1784,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
