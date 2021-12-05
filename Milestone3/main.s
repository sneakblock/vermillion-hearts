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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5888
	push	{r4, lr}
	ldr	r3, .L4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L4+4
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+12
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	initStart
	.word	startLevel
	.word	loadLevel
	.word	trackB_length
	.word	trackB_data
	.word	playSoundA
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	ldr	r1, .L8
	ldr	r2, .L8+4
	str	r3, [r1]
	ldrh	r0, [r2, #48]
	ldr	ip, .L8+8
	ldr	r1, .L8+12
	ldr	r2, .L8+16
	strh	r3, [ip]	@ movhi
	strh	r0, [r1]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	seed
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	setupInterrupts
	.word	setupSounds
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r2, #67108864
	mov	r1, #5888
	strh	r5, [r2]	@ movhi
	ldr	r4, .L12+4
	strh	r1, [r2]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	ldr	r3, .L12+32
	ldr	r0, .L12+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	waitForVBlank
	.word	DMANow
	.word	100728832
	.word	SPRITESHEETTiles
	.word	83886592
	.word	SPRITESHEETPal
	.word	hideSprites
	.word	shadowOAM
	.word	loadLevel
	.word	level1
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	updateGame
	.word	drawGame
	.size	game, .-game
	.align	2
	.global	goToDialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToDialogue, %function
goToDialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r7, #67108864
	ldr	r6, .L20
	ldr	r5, .L20+4
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #80]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r2, #76]
	strh	r4, [r7]	@ movhi
	mov	r2, #83886080
	ldr	r8, .L20+8
	asr	r3, r3, #1
	mov	lr, pc
	bx	r8
	mvn	r2, #32768
	ldr	r1, .L20+12
	ldr	r3, .L20+16
	strh	r1, [r7]	@ movhi
	strh	r4, [r3, #254]	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r3, .L20+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #104]
	mov	r1, #16
	mov	r0, #124
	mov	r3, #254
	ldr	r6, .L20+24
	mov	lr, pc
	bx	r6
	ldr	r3, .L20+28
	str	r4, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L20+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L20+36
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	currentTarget
	.word	waitForVBlank
	.word	DMANow
	.word	1044
	.word	83886336
	.word	drawDialogueUI
	.word	typeDialogue
	.word	selectedChoice
	.word	flipPage
	.word	state
	.size	goToDialogue, .-goToDialogue
	.align	2
	.global	dialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	dialogue, %function
dialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L51
	ldrh	r3, [r3]
	tst	r3, #64
	push	{r4, lr}
	beq	.L23
	ldr	r2, .L51+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L23
.L24:
	ldr	r2, .L51+8
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r1, #1
	movne	r1, #0
	str	r1, [r2]
.L25:
	ldr	r4, .L51+12
	ldr	r2, [r4]
	ldr	r1, [r2, #404]
	tst	r3, #1
	add	r0, r2, r1, lsl #5
	ldr	r3, [r0, #84]
	beq	.L27
	ldr	ip, .L51+4
	ldrh	ip, [ip]
	tst	ip, #1
	beq	.L47
.L27:
	cmp	r3, #0
	bne	.L48
.L30:
	ldr	r3, .L51+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L23:
	tst	r3, #128
	beq	.L25
	ldr	r2, .L51+4
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L25
	b	.L24
.L47:
	cmp	r3, #0
	bne	.L49
	ldr	r3, [r0, #96]
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r2, #408]
	str	r3, [r2, #404]
	bl	goToGame
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L27
.L48:
	ldr	r3, .L51+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+28
	mov	lr, pc
	bx	r3
	b	.L30
.L49:
	ldr	r3, .L51+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L27
.L50:
	add	r1, r1, #1
	str	r1, [r2, #404]
	add	r3, r2, r1, lsl #5
	ldr	r3, [r3, #84]
	b	.L27
.L52:
	.align	2
.L51:
	.word	oldButtons
	.word	buttons
	.word	selectedChoice
	.word	currentTarget
	.word	waitForVBlank
	.word	flipPage
	.word	drawChoices
	.word	drawSelector
	.word	selectChoice
	.size	dialogue, .-dialogue
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #83886080
	mvn	r2, #32768
	mov	ip, #67108864
	mov	r0, #0
	mov	r1, #3
	str	lr, [sp, #-4]!
	strh	r2, [r3]	@ movhi
	ldr	lr, .L55
	ldr	r2, .L55+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L56:
	.align	2
.L55:
	.word	1044
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"PAUSED.\000"
	.text
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #1
	ldr	r3, .L64
	mov	lr, pc
	bx	r3
	ldr	r4, .L64+4
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L64+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L64+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L57
	ldr	r3, .L64+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
.L57:
	pop	{r4, lr}
	bx	lr
.L63:
	pop	{r4, lr}
	b	goToGame
.L65:
	.align	2
.L64:
	.word	fillScreen4
	.word	drawString4
	.word	.LC0
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #83886080
	mvn	r2, #32768
	mov	ip, #67108864
	mov	r0, #31744
	mov	r1, #4
	str	lr, [sp, #-4]!
	strh	r2, [r3]	@ movhi
	ldr	lr, .L68
	ldr	r2, .L68+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L69:
	.align	2
.L68:
	.word	1044
	.word	state
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"YOU REACH AETHER.\000"
	.align	2
.LC2:
	.ascii	"PRESS START TO REPLAY.\000"
	.text
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #1
	ldr	r3, .L77
	mov	lr, pc
	bx	r3
	ldr	r4, .L77+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L77+8
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L77+12
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
	ldr	r3, .L77+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
.L70:
	pop	{r4, lr}
	bx	lr
.L76:
	pop	{r4, lr}
	b	goToStart
.L78:
	.align	2
.L77:
	.word	fillScreen4
	.word	drawString4
	.word	.LC1
	.word	.LC2
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r1, #67108864
	mov	ip, #31
	mov	r3, #83886080
	ldr	r0, .L81
	push	{r4, lr}
	strh	ip, [r3]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	mov	r0, #1
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+12
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L81+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L82:
	.align	2
.L81:
	.word	1044
	.word	fillScreen4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"YOU PERISH.\000"
	.align	2
.LC4:
	.ascii	"PRESS START TO BEGIN ANEW.\000"
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #0
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L90
	ldr	r4, .L90+4
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L90+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L90+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L83
	ldr	r3, .L90+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L89
.L83:
	pop	{r4, lr}
	bx	lr
.L89:
	pop	{r4, lr}
	b	goToStart
.L91:
	.align	2
.L90:
	.word	.LC3
	.word	drawString4
	.word	.LC4
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #256
	push	{r4, lr}
	ldr	r3, .L94
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L94+4
	ldr	r3, .L94+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L94+12
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L94+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	initInstructions
	.word	instructionsLevel
	.word	loadLevel
	.word	stopSound
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L108
	ldr	r3, [r4]
	ldr	r5, .L108+4
	add	r3, r3, #1
	ldr	r2, .L108+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L97
	ldr	r2, .L108+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L106
.L97:
	tst	r3, #4
	beq	.L96
	ldr	r3, .L108+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L107
.L96:
	pop	{r4, r5, r6, lr}
	bx	lr
.L107:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L106:
	ldr	r0, [r4]
	ldr	r3, .L108+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+20
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r0, .L108+24
	ldr	r3, .L108+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L108+40
	ldr	r3, .L108+44
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r5]
	b	.L97
.L109:
	.align	2
.L108:
	.word	seed
	.word	oldButtons
	.word	animateStart
	.word	buttons
	.word	srand
	.word	initGame
	.word	level1
	.word	loadLevel
	.word	stopSound
	.word	trackA_length
	.word	trackA_data
	.word	playSoundA
	.size	start, .-start
	.global	__aeabi_uidivmod
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L119
	push	{r4, r5, r6, lr}
	ldr	r4, [r3, #12]
	cmp	r4, #0
	beq	.L117
.L111:
	ldr	r3, .L119+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L110
	ldr	r3, .L119+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L118
.L110:
	pop	{r4, r5, r6, lr}
	bx	lr
.L117:
	ldr	r6, .L119+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L119+16
	ldr	r3, .L119+20
	ldr	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r5, .L119+24
	add	r5, r5, r1
	mov	lr, pc
	bx	r6
	mov	r3, r0
	ldr	ip, .L119+28
	smull	r1, r2, ip, r0
	asr	ip, r0, #31
	rsb	ip, ip, r2, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	mov	r2, r4
	mov	r0, r5
	mov	r1, #500
	ldr	r4, .L119+32
	sub	r3, r3, ip
	mov	lr, pc
	bx	r4
	b	.L111
.L118:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L120:
	.align	2
.L119:
	.word	soundB
	.word	oldButtons
	.word	buttons
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
	.size	instructions, .-instructions
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L135
	mov	lr, pc
	bx	r3
	ldr	r6, .L135+4
	ldr	r7, .L135+8
	ldr	r5, .L135+12
	ldr	fp, .L135+16
	ldr	r10, .L135+20
	ldr	r9, .L135+24
	ldr	r8, .L135+28
	ldr	r4, .L135+32
.L122:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L123:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L123
.L125:
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L127
	.word	.L126
	.word	.L124
.L124:
	ldr	r3, .L135+36
	mov	lr, pc
	bx	r3
	b	.L122
.L126:
	ldr	r3, .L135+40
	mov	lr, pc
	bx	r3
	b	.L122
.L127:
	ldr	r3, .L135+44
	mov	lr, pc
	bx	r3
	b	.L122
.L128:
	ldr	r3, .L135+48
	mov	lr, pc
	bx	r3
	b	.L122
.L129:
	mov	lr, pc
	bx	r8
	b	.L122
.L130:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	b	.L122
.L131:
	mov	lr, pc
	bx	fp
	b	.L122
.L136:
	.align	2
.L135:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	updateGame
	.word	drawGame
	.word	dialogue
	.word	67109120
	.word	lose
	.word	instructions
	.word	win
	.word	pause
	.size	main, .-main
	.comm	index,4,4
	.comm	clone,4,4
	.comm	source,4,4
	.global	dialogueTypeRow
	.global	dialogueTypeCol
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	seed,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.type	dialogueTypeRow, %object
	.size	dialogueTypeRow, 4
dialogueTypeRow:
	.word	12
	.type	dialogueTypeCol, %object
	.size	dialogueTypeCol, 4
dialogueTypeCol:
	.word	124
	.ident	"GCC: (devkitARM release 53) 9.1.0"
