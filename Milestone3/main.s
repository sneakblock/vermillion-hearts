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
	.global	__aeabi_uidivmod
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L17
	mov	lr, pc
	bx	r6
	mov	r5, #0
	mov	r2, #67108864
	mov	r1, #5888
	strh	r5, [r2]	@ movhi
	ldr	r4, .L17+4
	strh	r1, [r2]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L17+8
	ldr	r1, .L17+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L17+16
	ldr	r1, .L17+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L17+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L17+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L17+32
	mov	r1, r5
	ldr	r0, [r3]
	ldr	r3, .L17+36
	mov	lr, pc
	bx	r3
	mov	r4, #200
	ldr	r7, .L17+40
	ldr	r5, .L17+44
	ldr	fp, .L17+48
	ldr	r10, .L17+52
	b	.L12
.L11:
	subs	r4, r4, #1
	beq	.L16
.L12:
	mov	lr, pc
	bx	r6
	ldr	r8, [r7, #12]
	cmp	r8, #0
	bne	.L11
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L17+56
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L17+60
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r8
	mov	r1, #500
	ldr	ip, .L17+64
	mov	r0, r9
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r5
	mov	r8, r0
	mov	lr, pc
	bx	r5
	rsbs	r3, r8, #0
	and	r3, r3, #15
	and	r8, r8, #15
	rsbpl	r8, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	add	r8, r8, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r8]
	ldrh	r2, [r0]
	subs	r4, r4, #1
	strh	r2, [r8]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L12
.L16:
	mov	lr, pc
	bx	r5
	ldr	r3, .L17+68
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	cmp	r0, #1
	ble	.L13
	ldr	r3, .L17+32
	mov	r1, r4
	ldr	r0, [r3]
	ldr	r3, .L17+36
	mov	lr, pc
	bx	r3
.L13:
	mov	r2, #1
	ldr	r3, .L17+72
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	waitForVBlank
	.word	DMANow
	.word	100728832
	.word	SPRITESHEETTiles
	.word	83886592
	.word	SPRITESHEETPal
	.word	hideSprites
	.word	shadowOAM
	.word	currentLevel
	.word	loadLevel
	.word	soundB
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
	.word	1717986919
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
	ldr	r3, .L21
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
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
	ldr	r6, .L25
	ldr	r5, .L25+4
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #80]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r2, #76]
	strh	r4, [r7]	@ movhi
	mov	r2, #83886080
	ldr	r8, .L25+8
	asr	r3, r3, #1
	mov	lr, pc
	bx	r8
	mvn	r2, #32768
	ldr	r1, .L25+12
	ldr	r3, .L25+16
	strh	r1, [r7]	@ movhi
	strh	r4, [r3, #254]	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r3, .L25+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #104]
	mov	r1, #16
	mov	r0, #124
	mov	r3, #254
	ldr	r6, .L25+24
	mov	lr, pc
	bx	r6
	ldr	r3, .L25+28
	str	r4, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L25+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L25+36
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L56
	ldrh	r3, [r3]
	tst	r3, #64
	push	{r4, lr}
	beq	.L28
	ldr	r2, .L56+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L28
.L29:
	ldr	r2, .L56+8
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r1, #1
	movne	r1, #0
	str	r1, [r2]
.L30:
	ldr	r4, .L56+12
	ldr	r2, [r4]
	ldr	r1, [r2, #404]
	tst	r3, #1
	add	r0, r2, r1, lsl #5
	ldr	r3, [r0, #84]
	beq	.L32
	ldr	ip, .L56+4
	ldrh	ip, [ip]
	tst	ip, #1
	beq	.L52
.L32:
	cmp	r3, #0
	bne	.L53
.L35:
	ldr	r3, .L56+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L28:
	tst	r3, #128
	beq	.L30
	ldr	r2, .L56+4
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L30
	b	.L29
.L52:
	cmp	r3, #0
	bne	.L54
	ldr	r3, [r0, #96]
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r2, #408]
	str	r3, [r2, #404]
	bl	goToGame
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L32
.L53:
	ldr	r3, .L56+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+28
	mov	lr, pc
	bx	r3
	b	.L35
.L54:
	ldr	r3, .L56+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L32
.L55:
	add	r1, r1, #1
	str	r1, [r2, #404]
	add	r3, r2, r1, lsl #5
	ldr	r3, [r3, #84]
	b	.L32
.L57:
	.align	2
.L56:
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
	ldr	lr, .L60
	ldr	r2, .L60+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L69
	mov	lr, pc
	bx	r3
	ldr	r4, .L69+4
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L69+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L69+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L62
	ldr	r3, .L69+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L68
.L62:
	pop	{r4, lr}
	bx	lr
.L68:
	pop	{r4, lr}
	b	goToGame
.L70:
	.align	2
.L69:
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
	ldr	lr, .L73
	ldr	r2, .L73+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r3, .L82
	mov	lr, pc
	bx	r3
	ldr	r4, .L82+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L82+8
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L82+12
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L75
	ldr	r3, .L82+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L81
.L75:
	pop	{r4, lr}
	bx	lr
.L81:
	pop	{r4, lr}
	b	goToStart
.L83:
	.align	2
.L82:
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
	ldr	r0, .L86
	push	{r4, lr}
	strh	ip, [r3]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	mov	r0, #1
	ldr	r3, .L86+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+12
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L86+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r2, .L95
	ldr	r4, .L95+4
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L95+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L95+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L88
	ldr	r3, .L95+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L94
.L88:
	pop	{r4, lr}
	bx	lr
.L94:
	pop	{r4, lr}
	b	goToStart
.L96:
	.align	2
.L95:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	r1, [r2]	@ movhi
	ldr	r3, .L103
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L103+4
	ldr	r3, .L103+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L103+12
	mov	lr, pc
	bx	r3
	mov	r4, #500
	ldr	r7, .L103+16
	ldr	r6, .L103+20
	ldr	r5, .L103+24
	ldr	fp, .L103+28
	ldr	r10, .L103+32
	b	.L99
.L98:
	subs	r4, r4, #1
	beq	.L102
.L99:
	mov	lr, pc
	bx	r7
	ldr	r8, [r6, #12]
	cmp	r8, #0
	bne	.L98
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L103+36
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L103+40
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r8
	mov	r1, #500
	ldr	ip, .L103+44
	mov	r0, r9
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r5
	mov	r8, r0
	mov	lr, pc
	bx	r5
	rsbs	r3, r8, #0
	and	r3, r3, #15
	and	r8, r8, #15
	rsbpl	r8, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	add	r8, r8, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r8]
	ldrh	r2, [r0]
	subs	r4, r4, #1
	strh	r2, [r8]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L99
.L102:
	mov	r2, #5
	ldr	r3, .L103+48
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	initInstructions
	.word	instructionsLevel
	.word	loadLevel
	.word	stopSound
	.word	waitForVBlank
	.word	soundB
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
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
	ldr	r1, .L121
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r1]
	ldr	r2, .L121+4
	add	r3, r3, #1
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L106
	ldr	r2, .L121+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L118
.L106:
	tst	r3, #4
	beq	.L105
	ldr	r3, .L121+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L119
.L105:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L119:
	ldr	r3, .L121
	ldr	r0, [r3]
	ldr	r3, .L121+16
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToInstructions
.L118:
	ldr	r3, .L121
	ldr	r0, [r3]
	ldr	r3, .L121+16
	mov	lr, pc
	bx	r3
	mov	r4, #1000
	ldr	r7, .L121+20
	ldr	r6, .L121+24
	ldr	r5, .L121+28
	ldr	fp, .L121+32
	ldr	r10, .L121+36
	b	.L108
.L107:
	subs	r4, r4, #1
	beq	.L120
.L108:
	mov	lr, pc
	bx	r7
	ldr	r8, [r6, #12]
	cmp	r8, #0
	bne	.L107
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L121+40
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L121+44
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r8
	mov	r1, #500
	ldr	ip, .L121+48
	mov	r0, r9
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r5
	mov	r8, r0
	mov	lr, pc
	bx	r5
	rsbs	r3, r8, #0
	and	r3, r3, #15
	and	r8, r8, #15
	rsbpl	r8, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	add	r8, r8, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r8]
	ldrh	r2, [r0]
	subs	r4, r4, #1
	strh	r2, [r8]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L108
.L120:
	ldr	r3, .L121+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+56
	mov	r1, #1
	ldr	r0, [r3]
	ldr	r3, .L121+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+68
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L121+72
	ldr	r3, .L121+76
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	b	.L106
.L122:
	.align	2
.L121:
	.word	seed
	.word	animateStart
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	waitForVBlank
	.word	soundB
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
	.word	initGame
	.word	currentLevel
	.word	loadLevel
	.word	stopSound
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
	ldr	r6, .L140
	ldr	r7, .L140+4
	ldr	r3, .L140+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L140+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L140+16
	ldr	r10, .L140+20
	ldr	r9, .L140+24
	ldr	r8, .L140+28
	ldr	r4, .L140+32
.L125:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L135
.L127:
	.word	.L133
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L126
.L126:
	ldr	r3, .L140+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L125
.L128:
	tst	r0, #4
	beq	.L135
	tst	r3, #4
	beq	.L139
.L135:
	mov	r0, r3
	b	.L125
.L129:
	ldr	r3, .L140+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L125
.L130:
	ldr	r3, .L140+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L125
.L131:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L125
.L133:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L125
.L132:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L125
.L139:
	ldr	r3, .L140+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L125
.L141:
	.align	2
.L140:
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
	.word	win
	.word	pause
	.word	goToStart
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
	ldr	r3, .L147
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L147+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L148:
	.align	2
.L147:
	.word	oldButtons
	.word	buttons
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
