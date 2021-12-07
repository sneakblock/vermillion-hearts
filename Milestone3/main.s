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
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
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
	ldr	r5, .L29
	mov	lr, pc
	bx	r5
	mov	r4, #0
	mov	r2, #67108864
	mov	r3, #83886080
	mvn	r1, #32768
	ldr	r0, .L29+4
	ldr	r6, .L29+8
	strh	r4, [r2]	@ movhi
	strh	r4, [r3]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	ldr	r3, .L29+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	mov	r1, #16
	mov	r0, #124
	ldr	r2, [r3, #104]
	ldr	r7, .L29+16
	mov	r3, #1
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	cmp	r3, r4
	ldrne	r3, .L29+20
	strne	r4, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L29+24
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L29+28
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	waitForVBlank
	.word	1044
	.word	currentTarget
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
	ldr	r3, .L75
	ldrh	r3, [r3]
	tst	r3, #64
	push	{r4, lr}
	beq	.L32
	ldr	r0, .L75+4
	ldrh	r2, [r0]
	tst	r2, #64
	bne	.L32
.L33:
	ldr	r4, .L75+8
	ldr	r2, [r4]
	ldr	r1, [r2, #404]
	add	ip, r2, r1, lsl #5
	ldr	ip, [ip, #84]
	cmp	ip, #0
	and	r3, r3, #1
	lsl	ip, r1, #5
	beq	.L35
	ldr	r2, .L75+12
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r1, #1
	movne	r1, #0
	cmp	r3, #0
	str	r1, [r2]
	bne	.L72
.L41:
	ldr	r3, .L75+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+20
	mov	lr, pc
	bx	r3
	b	.L42
.L32:
	tst	r3, #128
	beq	.L34
	ldr	r0, .L75+4
	ldrh	r2, [r0]
	tst	r2, #128
	beq	.L33
.L34:
	ldr	r4, .L75+8
	ldr	r2, [r4]
	ldr	r1, [r2, #404]
	tst	r3, #1
	add	r3, r2, r1, lsl #5
	ldr	r3, [r3, #84]
	lsl	ip, r1, #5
	bne	.L73
.L38:
	cmp	r3, #0
	bne	.L41
.L42:
	ldr	r3, .L75+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L73:
	ldr	r0, .L75+4
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L38
	cmp	r3, #0
	bne	.L45
.L39:
	add	ip, r2, ip
	ldr	r3, [ip, #96]
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r2, #408]
	str	r3, [r2, #404]
	bl	goToGame
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L38
.L35:
	cmp	r3, #0
	beq	.L42
	ldrh	r3, [r0]
	tst	r3, #1
	beq	.L39
	b	.L42
.L72:
	ldrh	r3, [r0]
	tst	r3, #1
	bne	.L41
.L45:
	ldr	r3, .L75+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L38
.L74:
	add	r1, r1, #1
	str	r1, [r2, #404]
	bl	goToDialogue
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L38
.L76:
	.align	2
.L75:
	.word	oldButtons
	.word	buttons
	.word	currentTarget
	.word	selectedChoice
	.word	drawChoices
	.word	drawSelector
	.word	waitForVBlank
	.word	flipPage
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
	mov	r2, #256
	mov	r3, #67108864
	push	{r4, lr}
	mov	r1, #0
	strh	r2, [r3]	@ movhi
	ldr	r0, .L79
	ldr	r3, .L79+4
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L79+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
	.word	pauseLevel
	.word	loadLevel
	.word	state
	.size	goToPause, .-goToPause
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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L86
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r1]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L86+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L87:
	.align	2
.L86:
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
	ldr	lr, .L90
	ldr	r2, .L90+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L91:
	.align	2
.L90:
	.word	1044
	.word	state
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"YOU REACH AETHER.\000"
	.align	2
.LC1:
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
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r4, .L99+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L99+8
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L99+12
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L99+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
	ldr	r3, .L99+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L98
.L92:
	pop	{r4, lr}
	bx	lr
.L98:
	pop	{r4, lr}
	b	goToStart
.L100:
	.align	2
.L99:
	.word	fillScreen4
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	ldr	r3, .L107
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L107+4
	ldr	r3, .L107+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+12
	mov	lr, pc
	bx	r3
	mov	r4, #100
	ldr	r7, .L107+16
	ldr	r6, .L107+20
	ldr	r5, .L107+24
	ldr	fp, .L107+28
	ldr	r10, .L107+32
	b	.L103
.L102:
	subs	r4, r4, #1
	beq	.L106
.L103:
	mov	lr, pc
	bx	r7
	ldr	r8, [r6, #12]
	cmp	r8, #0
	bne	.L102
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L107+36
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L107+40
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
	ldr	ip, .L107+44
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
	bne	.L103
.L106:
	mov	r1, r4
	ldr	r3, .L107+8
	ldr	r0, .L107+4
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L107+48
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L108:
	.align	2
.L107:
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
	ldr	r1, .L125
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r1]
	ldr	r2, .L125+4
	add	r3, r3, #1
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L125+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L110
	ldr	r2, .L125+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L122
.L110:
	tst	r3, #4
	beq	.L109
	ldr	r3, .L125+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L123
.L109:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L123:
	ldr	r3, .L125
	ldr	r0, [r3]
	ldr	r3, .L125+16
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToInstructions
.L122:
	ldr	r3, .L125
	ldr	r0, [r3]
	ldr	r3, .L125+16
	mov	lr, pc
	bx	r3
	mov	r4, #1000
	ldr	r7, .L125+20
	ldr	r6, .L125+24
	ldr	r5, .L125+28
	ldr	fp, .L125+32
	ldr	r10, .L125+36
	b	.L112
.L111:
	subs	r4, r4, #1
	beq	.L124
.L112:
	mov	lr, pc
	bx	r7
	ldr	r8, [r6, #12]
	cmp	r8, #0
	bne	.L111
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L125+40
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L125+44
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
	ldr	ip, .L125+48
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
	bne	.L112
.L124:
	ldr	r3, .L125+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+56
	mov	r1, #1
	ldr	r0, [r3]
	ldr	r3, .L125+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+68
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L125+72
	ldr	r3, .L125+76
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L125+8
	ldrh	r3, [r3]
	b	.L110
.L126:
	.align	2
.L125:
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
	mov	r8, #67108864
	mov	r7, #0
	ldr	r6, .L145
	ldr	r9, .L145+4
	ldr	r3, .L145+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L145+12
	ldr	r2, [r6]
	ldrh	r0, [r9]
	ldr	fp, .L145+16
	ldr	r10, .L145+20
	ldr	r5, .L145+24
.L129:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L139
.L131:
	.word	.L136
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L132
	.word	.L130
.L130:
	tst	r0, #4
	beq	.L139
	tst	r3, #4
	beq	.L144
.L139:
	mov	r0, r3
	b	.L129
.L132:
	ldr	r3, .L145+28
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
.L143:
	ldrh	r0, [r9]
	b	.L129
.L133:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L143
	ldrh	r0, [r9]
	tst	r0, #8
	bne	.L129
	ldr	r3, .L145+32
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L129
.L134:
	ldr	r3, .L145+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L129
.L136:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L129
.L135:
	mov	lr, pc
	bx	r10
	ldr	r3, .L145+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L129
.L144:
	ldr	r3, .L145+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L129
.L146:
	.align	2
.L145:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	updateGame
	.word	67109120
	.word	win
	.word	goToGame
	.word	dialogue
	.word	drawGame
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
	ldr	r3, .L152
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L152+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L153:
	.align	2
.L152:
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
