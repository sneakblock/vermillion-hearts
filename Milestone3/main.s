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
	ldr	r6, .L18
	mov	lr, pc
	bx	r6
	mov	r5, #0
	mov	r2, #67108864
	mov	r1, #5888
	strh	r5, [r2]	@ movhi
	ldr	r4, .L18+4
	strh	r1, [r2]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L18+8
	ldr	r1, .L18+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L18+16
	ldr	r1, .L18+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L18+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L18+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L18+32
	mov	r1, r5
	ldr	r0, [r3]
	ldr	r3, .L18+36
	mov	lr, pc
	bx	r3
	mov	r4, #200
	ldr	r7, .L18+40
	ldr	r5, .L18+44
	ldr	fp, .L18+48
	ldr	r10, .L18+52
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
	ldr	r3, .L18+56
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L18+60
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
	ldr	ip, .L18+64
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
	subs	r3, r0, #0
	and	r3, r3, #1
	rsblt	r3, r3, #0
	cmp	r3, #1
	beq	.L17
.L13:
	mov	r2, #1
	ldr	r3, .L18+68
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	ldr	r3, .L18+32
	mov	r1, r4
	ldr	r0, [r3]
	ldr	r3, .L18+36
	mov	lr, pc
	bx	r3
	b	.L13
.L19:
	.align	2
.L18:
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
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r6, .L26
	ldr	r5, .L26+4
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #80]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r2, #76]
	strh	r4, [r7]	@ movhi
	mov	r2, #83886080
	ldr	r8, .L26+8
	asr	r3, r3, #1
	mov	lr, pc
	bx	r8
	mvn	r2, #32768
	ldr	r1, .L26+12
	ldr	r3, .L26+16
	strh	r1, [r7]	@ movhi
	strh	r4, [r3, #254]	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r3, .L26+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #104]
	mov	r1, #16
	mov	r0, #124
	mov	r3, #254
	ldr	r6, .L26+24
	mov	lr, pc
	bx	r6
	ldr	r3, .L26+28
	str	r4, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L26+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L26+36
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r3, .L57
	ldrh	r3, [r3]
	tst	r3, #64
	push	{r4, lr}
	beq	.L29
	ldr	r2, .L57+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L29
.L30:
	ldr	r2, .L57+8
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r1, #1
	movne	r1, #0
	str	r1, [r2]
.L31:
	ldr	r4, .L57+12
	ldr	r2, [r4]
	ldr	r1, [r2, #404]
	tst	r3, #1
	add	r0, r2, r1, lsl #5
	ldr	r3, [r0, #84]
	beq	.L33
	ldr	ip, .L57+4
	ldrh	ip, [ip]
	tst	ip, #1
	beq	.L53
.L33:
	cmp	r3, #0
	bne	.L54
.L36:
	ldr	r3, .L57+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L29:
	tst	r3, #128
	beq	.L31
	ldr	r2, .L57+4
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L31
	b	.L30
.L53:
	cmp	r3, #0
	bne	.L55
	ldr	r3, [r0, #96]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r2, #408]
	str	r3, [r2, #404]
	bl	goToGame
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L33
.L54:
	ldr	r3, .L57+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+28
	mov	lr, pc
	bx	r3
	b	.L36
.L55:
	ldr	r3, .L57+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L33
.L56:
	add	r1, r1, #1
	str	r1, [r2, #404]
	add	r3, r2, r1, lsl #5
	ldr	r3, [r3, #84]
	b	.L33
.L58:
	.align	2
.L57:
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
	ldr	lr, .L61
	ldr	r2, .L61+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	ldr	r4, .L70+4
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L70+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L70+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
.L63:
	pop	{r4, lr}
	bx	lr
.L69:
	pop	{r4, lr}
	b	goToGame
.L71:
	.align	2
.L70:
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
	ldr	lr, .L74
	ldr	r2, .L74+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L75:
	.align	2
.L74:
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
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	ldr	r4, .L83+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L83+8
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L83+12
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L83+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
	ldr	r3, .L83+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
.L76:
	pop	{r4, lr}
	bx	lr
.L82:
	pop	{r4, lr}
	b	goToStart
.L84:
	.align	2
.L83:
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
	ldr	r0, .L87
	push	{r4, lr}
	strh	ip, [r3]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	mov	r0, #1
	ldr	r3, .L87+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+12
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L87+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r2, .L96
	ldr	r4, .L96+4
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L96+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L96+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L89
	ldr	r3, .L96+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L95
.L89:
	pop	{r4, lr}
	bx	lr
.L95:
	pop	{r4, lr}
	b	goToStart
.L97:
	.align	2
.L96:
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
	ldr	r3, .L100
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L100+4
	ldr	r3, .L100+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+12
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L100+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L101:
	.align	2
.L100:
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
	ldr	r1, .L118
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r1]
	ldr	r2, .L118+4
	add	r3, r3, #1
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L118+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L103
	ldr	r2, .L118+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L115
.L103:
	tst	r3, #4
	beq	.L102
	ldr	r3, .L118+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L116
.L102:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L116:
	ldr	r3, .L118
	ldr	r0, [r3]
	ldr	r3, .L118+16
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToInstructions
.L115:
	ldr	r3, .L118
	ldr	r0, [r3]
	ldr	r3, .L118+16
	mov	lr, pc
	bx	r3
	mov	r4, #1000
	ldr	r7, .L118+20
	ldr	r6, .L118+24
	ldr	r5, .L118+28
	ldr	fp, .L118+32
	ldr	r10, .L118+36
	b	.L105
.L104:
	subs	r4, r4, #1
	beq	.L117
.L105:
	mov	lr, pc
	bx	r7
	ldr	r8, [r6, #12]
	cmp	r8, #0
	bne	.L104
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L118+40
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L118+44
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
	ldr	ip, .L118+48
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
	bne	.L105
.L117:
	ldr	r3, .L118+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+56
	mov	r1, #1
	ldr	r0, [r3]
	ldr	r3, .L118+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+68
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L118+72
	ldr	r3, .L118+76
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L118+8
	ldrh	r3, [r3]
	b	.L103
.L119:
	.align	2
.L118:
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L129
	mov	lr, pc
	bx	r3
	ldr	r3, .L129+4
	ldr	r4, [r3, #12]
	cmp	r4, #0
	beq	.L127
.L121:
	ldr	r3, .L129+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L120
	ldr	r3, .L129+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L128
.L120:
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	ldr	r5, .L129+16
	mov	lr, pc
	bx	r5
	ldr	r2, .L129+20
	ldr	r3, .L129+24
	ldr	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r6, .L129+28
	add	r6, r6, r1
	mov	lr, pc
	bx	r5
	mov	r3, r0
	ldr	ip, .L129+32
	smull	r1, r2, ip, r0
	asr	ip, r0, #31
	rsb	ip, ip, r2, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	mov	r2, r4
	sub	r3, r3, ip
	mov	r1, #500
	mov	r0, r6
	ldr	r4, .L129+36
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r4, r0
	mov	lr, pc
	bx	r5
	rsbs	r3, r4, #0
	and	r3, r3, #15
	and	r4, r4, #15
	rsbpl	r4, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r4, r4, #1
	lsl	r0, r0, #1
	add	r4, r4, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r4]
	ldrh	r2, [r0]
	strh	r2, [r4]	@ movhi
	strh	r3, [r0]	@ movhi
	b	.L121
.L128:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L130:
	.align	2
.L129:
	.word	waitForVBlank
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
	ldr	r3, .L145
	mov	lr, pc
	bx	r3
	ldr	r6, .L145+4
	ldr	r7, .L145+8
	ldr	r5, .L145+12
	ldr	fp, .L145+16
	ldr	r10, .L145+20
	ldr	r9, .L145+24
	ldr	r8, .L145+28
	ldr	r4, .L145+32
.L132:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L133:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L133
.L135:
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L138
	.word	.L137
	.word	.L136
	.word	.L134
.L134:
	ldr	r3, .L145+36
	mov	lr, pc
	bx	r3
	b	.L132
.L136:
	ldr	r3, .L145+40
	mov	lr, pc
	bx	r3
	b	.L132
.L137:
	ldr	r3, .L145+44
	mov	lr, pc
	bx	r3
	b	.L132
.L138:
	ldr	r3, .L145+48
	mov	lr, pc
	bx	r3
	b	.L132
.L139:
	mov	lr, pc
	bx	r8
	b	.L132
.L140:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	b	.L132
.L141:
	mov	lr, pc
	bx	fp
	b	.L132
.L146:
	.align	2
.L145:
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
