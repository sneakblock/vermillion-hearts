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
	ldr	r3, .L4+4
	mov	r1, #0
	ldr	r0, .L4+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	initStart
	.word	loadLevel
	.word	startLevel
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
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	instructions.part.0,win.part.0
	.set	lose.part.0,win.part.0
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
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r2, #67108864
	mov	r1, #5888
	strh	r5, [r2]	@ movhi
	ldr	r4, .L16+4
	strh	r1, [r2]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	ldr	r3, .L16+32
	ldr	r0, .L16+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
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
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	ldr	r6, .L24
	ldr	r5, .L24+4
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #80]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r2, #76]
	strh	r4, [r7]	@ movhi
	mov	r2, #83886080
	ldr	r8, .L24+8
	asr	r3, r3, #1
	mov	lr, pc
	bx	r8
	mvn	r2, #32768
	ldr	r1, .L24+12
	ldr	r3, .L24+16
	strh	r1, [r7]	@ movhi
	strh	r4, [r3, #254]	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #104]
	mov	r1, #16
	mov	r0, #124
	mov	r3, #254
	ldr	r6, .L24+24
	mov	lr, pc
	bx	r6
	ldr	r3, .L24+28
	str	r4, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L24+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L24+36
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
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
	ldr	r3, .L55
	ldrh	r3, [r3]
	tst	r3, #64
	push	{r4, lr}
	beq	.L27
	ldr	r2, .L55+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L27
.L28:
	ldr	r2, .L55+8
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r1, #1
	movne	r1, #0
	str	r1, [r2]
.L29:
	ldr	r4, .L55+12
	ldr	r2, [r4]
	ldr	r1, [r2, #404]
	tst	r3, #1
	add	r0, r2, r1, lsl #5
	ldr	r3, [r0, #84]
	beq	.L31
	ldr	ip, .L55+4
	ldrh	ip, [ip]
	tst	ip, #1
	beq	.L51
.L31:
	cmp	r3, #0
	bne	.L52
.L34:
	ldr	r3, .L55+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L27:
	tst	r3, #128
	beq	.L29
	ldr	r2, .L55+4
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L29
	b	.L28
.L51:
	cmp	r3, #0
	bne	.L53
	ldr	r3, [r0, #96]
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r2, #408]
	str	r3, [r2, #404]
	bl	goToGame
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L31
.L52:
	ldr	r3, .L55+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+28
	mov	lr, pc
	bx	r3
	b	.L34
.L53:
	ldr	r3, .L55+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L31
.L54:
	add	r1, r1, #1
	str	r1, [r2, #404]
	add	r3, r2, r1, lsl #5
	ldr	r3, [r3, #84]
	b	.L31
.L56:
	.align	2
.L55:
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
	ldr	lr, .L59
	ldr	r2, .L59+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L60:
	.align	2
.L59:
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
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+4
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L68+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L61
	ldr	r3, .L68+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
.L61:
	pop	{r4, lr}
	bx	lr
.L67:
	pop	{r4, lr}
	b	goToGame
.L69:
	.align	2
.L68:
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
	ldr	lr, .L72
	ldr	r2, .L72+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L73:
	.align	2
.L72:
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
	popne	{r4, lr}
	bne	win.part.0
.L74:
	pop	{r4, lr}
	bx	lr
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
	ldr	r2, .L86
	ldr	r4, .L86+4
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L86+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L86+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.0
.L83:
	pop	{r4, lr}
	bx	lr
.L87:
	.align	2
.L86:
	.word	.LC3
	.word	drawString4
	.word	.LC4
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"DIRECTIONAL BUTTONS TO MOVE.\000"
	.align	2
.LC6:
	.ascii	"A TO GLITCH TIME.\000"
	.align	2
.LC7:
	.ascii	"START TO PAUSE.\000"
	.align	2
.LC8:
	.ascii	"AVOID ENTITIES. REACH END.\000"
	.align	2
.LC9:
	.ascii	"PRESS START TO RETURN TO START.\000"
	.text
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
	push	{r4, lr}
	mov	r0, #1
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	ldr	r4, .L90+4
	mov	r3, #0
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L90+8
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #90
	mov	r0, #20
	ldr	r2, .L90+12
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L90+16
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #110
	mov	r0, #20
	ldr	r2, .L90+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L90+24
	mov	r1, #120
	mov	r0, #20
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L90+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L90+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
	.word	fillScreen4
	.word	drawString4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	waitForVBlank
	.word	flipPage
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
	ldr	r4, .L104
	ldr	r3, [r4]
	ldr	r5, .L104+4
	add	r3, r3, #1
	ldr	r2, .L104+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L93
	ldr	r2, .L104+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L102
.L93:
	tst	r3, #4
	beq	.L92
	ldr	r3, .L104+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L103
.L92:
	pop	{r4, r5, r6, lr}
	bx	lr
.L103:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L102:
	ldr	r0, [r4]
	ldr	r3, .L104+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+20
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r0, .L104+24
	ldr	r3, .L104+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+32
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L104+36
	ldr	r3, .L104+40
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r5]
	b	.L93
.L105:
	.align	2
.L104:
	.word	seed
	.word	oldButtons
	.word	animateStart
	.word	buttons
	.word	srand
	.word	initGame
	.word	level1
	.word	loadLevel
	.word	trackA_length
	.word	trackA_data
	.word	playSoundA
	.size	start, .-start
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
	ldr	r6, .L121
	ldr	r7, .L121+4
	ldr	r3, .L121+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L121+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L121+16
	ldr	r10, .L121+20
	ldr	r9, .L121+24
	ldr	r8, .L121+28
	ldr	r4, .L121+32
.L108:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L118
.L110:
	.word	.L116
	.word	.L115
	.word	.L114
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L109
.L109:
	ldr	r3, .L121+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L108
.L111:
	tst	r0, #8
	beq	.L118
	ldr	r3, .L121+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L108
.L112:
	ldr	r3, .L121+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L108
.L113:
	ldr	r3, .L121+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L108
.L114:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L108
.L115:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L108
.L116:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L108
.L118:
	mov	r0, r3
	b	.L108
.L122:
	.align	2
.L121:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	updateGame
	.word	drawGame
	.word	dialogue
	.word	67109120
	.word	lose
	.word	instructions.part.0
	.word	win
	.word	pause
	.size	main, .-main
	.text
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
	@ link register save eliminated.
	ldr	r3, .L125
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instructions.part.0
.L126:
	.align	2
.L125:
	.word	oldButtons
	.size	instructions, .-instructions
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
