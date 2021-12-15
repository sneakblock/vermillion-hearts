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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L4
	ldr	r3, .L4+4
	ldr	r2, [r3]
	ldr	r3, [r1, #12]
	sub	r3, r3, r2
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	add	r0, r1, #28
	ldm	r0, {r0, r2}
	add	ip, r2, #7
	cmp	r2, #0
	movlt	r2, ip
	add	ip, r0, #7
	cmp	r0, #0
	movlt	r0, ip
	mvn	r3, r3, lsr #17
	ldr	ip, [r1, #80]
	push	{r4, r5, lr}
	ldr	r5, [r1, #60]
	ldr	r4, [ip, #64]
	ldr	lr, [ip, #60]
	ldr	ip, [r1, #48]
	asr	r2, r2, #3
	asr	r0, r0, #3
	mla	r0, ip, r0, lr
	mla	r2, r5, r2, r4
	ldr	ip, .L4+8
	ldr	r1, [r1, #16]
	ldr	ip, [ip]
	sub	r1, r1, ip
	lsl	r1, r1, #23
	ldr	ip, .L4+12
	add	r2, r0, r2, lsl #5
	lsr	r1, r1, #23
	strh	r2, [ip, #4]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.global	checkForConvoBools
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkForConvoBools, %function
checkForConvoBools:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L18
	ldr	r3, [r7]
	ldr	r2, [r3, #136]
	cmp	r2, #0
	ble	.L6
	mov	r5, #0
	mov	r6, r5
	b	.L7
.L8:
	ldr	r3, [r3, #1724]
	cmp	r3, #0
	beq	.L10
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	add	r2, r3, r4
	ldr	r2, [r2, #4]
	str	r6, [r2, #1692]
	ldr	r2, [r3, #136]
	add	r5, r5, #1
	cmp	r2, r5
	ble	.L6
.L7:
	add	r2, r5, #34
	add	r3, r3, r2, lsl #2
	ldr	r3, [r3, #4]
	ldr	r1, [r3, #1692]
	cmp	r1, #0
	lsl	r4, r2, #2
	bne	.L8
.L10:
	ldr	r3, [r7]
	ldr	r2, [r3, #136]
	add	r5, r5, #1
	cmp	r2, r5
	bgt	.L7
.L6:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	currentLevel
	.size	checkForConvoBools, .-checkForConvoBools
	.align	2
	.global	initLevels
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevels, %function
initLevels:
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
	ldr	r3, .L22+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	initPause
	.word	initLevel0
	.word	initLevel1
	.word	initLevel2
	.word	initLevel3
	.size	initLevels, .-initLevels
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	mov	r3, #0
	push	{r4, lr}
	mov	ip, #16
	mov	lr, #8
	mov	r0, #20
	mov	r1, #3
	ldr	r4, .L26
	str	r2, [r4, #20]
	str	r2, [r4, #24]
	str	r2, [r4, #52]
	ldr	r2, .L26+4
	str	lr, [r4, #28]
	str	ip, [r4, #32]
	str	r0, [r4, #44]
	str	r1, [r4, #64]
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	mov	lr, pc
	bx	r2
	str	r0, [r4, #84]
	str	r0, [r4, #80]
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	player
	.word	initCloud
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	initLevels
	ldr	r3, .L30
	ldr	r2, .L30+4
	str	r2, [r3]
	bl	initPlayer
	mov	r2, #0
	ldr	r3, .L30+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	currentLevel
	.word	level0
	.word	paletteCrushed
	.size	initGame, .-initGame
	.align	2
	.global	loadLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadLevel, %function
loadLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r6, #67108864
	mov	r0, #4352
	ldr	r3, [r4, #8]
	ldr	r2, [r4]
	orr	r2, r2, r3
	orr	r2, r2, #7680
	ldr	r3, [r4, #56]
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r3, r3, r3, lsr #31
	strh	r0, [r6]	@ movhi
	ldr	r5, .L62
	mov	r0, #3
	strh	r2, [r6, #8]	@ movhi
	asr	r3, r3, #1
	mov	r2, #100663296
	mov	r7, r1
	ldr	r1, [r4, #64]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #60]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r4, #68]
	ldr	r2, .L62+4
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #108]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #104]
	mov	r2, #83886080
	mov	r0, #3
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #80]
	cmp	r1, #0
	beq	.L34
	ldr	r3, [r4, #8]
	ldr	r2, [r4]
	orr	r2, r2, r3
	orr	r2, r2, #7168
	ldrh	r0, [r6]
	ldr	r3, [r4, #72]
	orr	r2, r2, #4
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	orr	r0, r0, #512
	add	r3, r3, r3, lsr #31
	strh	r0, [r6]	@ movhi
	asr	r3, r3, #1
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r2, .L62+8
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #76]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #84]
	mov	r0, #3
	ldr	r2, .L62+12
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #112]
	cmp	r1, #0
	beq	.L34
	ldr	r2, [r4, #108]
	ldr	r3, [r4, #116]
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	add	r2, r2, #83886080
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
.L34:
	ldr	r1, [r4, #96]
	cmp	r1, #0
	beq	.L37
	mov	r0, #67108864
	ldr	r3, [r4, #8]
	ldr	r2, [r4]
	orr	r2, r2, r3
	orr	r2, r2, #6656
	ldrh	ip, [r0]
	ldr	r3, [r4, #88]
	orr	r2, r2, #8
	lsl	r2, r2, #16
	orr	ip, ip, #1024
	lsr	r2, r2, #16
	add	r3, r3, r3, lsr #31
	strh	ip, [r0]	@ movhi
	asr	r3, r3, #1
	strh	r2, [r0, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L62+16
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #92]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #100]
	mov	r0, #3
	ldr	r2, .L62+20
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #120]
	cmp	r1, #0
	beq	.L37
	ldr	r3, [r4, #116]
	ldr	r0, [r4, #108]
	add	r3, r3, r3, lsr #31
	asr	r2, r3, #1
	add	r0, r0, r0, lsr #31
	ldr	r3, [r4, #124]
	add	r2, r2, r0, asr #1
	lsl	r2, r2, #1
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	add	r2, r2, #83886080
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
.L37:
	cmp	r7, #0
	beq	.L39
	ldr	r3, [r4, #36]
	cmp	r3, #0
	ldr	r3, .L62+24
	beq	.L40
	add	r2, r4, #40
	ldm	r2, {r2, ip}
	ldr	r1, .L62+28
	str	r2, [r3, #16]
	ldr	r0, [r4, #48]
	ldr	r2, .L62+32
	str	ip, [r3, #12]
	ldr	r3, [r4, #52]
	str	r0, [r1]
	str	r3, [r2]
.L39:
	ldr	r3, [r4, #136]
	cmp	r3, #0
	beq	.L32
	mov	ip, #0
	mov	r0, #1
	ldr	r1, .L62+36
	add	r2, r4, #140
	add	r4, r4, #160
.L44:
	ldr	r3, [r2], #4
	cmp	r3, r1
	beq	.L42
	cmp	r3, #0
	strne	r0, [r3]
	strne	ip, [r3, #36]
.L43:
	cmp	r2, r4
	bne	.L44
.L32:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L42:
	str	ip, [r1]
	str	r0, [r1, #36]
	b	.L43
.L40:
	add	r2, r4, #20
	ldm	r2, {r2, ip}
	ldr	r1, .L62+28
	str	r2, [r3, #16]
	ldr	r0, [r4, #28]
	ldr	r2, .L62+32
	str	ip, [r3, #12]
	ldr	r3, [r4, #32]
	str	r0, [r1]
	str	r3, [r2]
	b	.L39
.L63:
	.align	2
.L62:
	.word	DMANow
	.word	100724736
	.word	100679680
	.word	100720640
	.word	100696064
	.word	100716544
	.word	player
	.word	hOff
	.word	vOff
	.word	finalDoor
	.size	loadLevel, .-loadLevel
	.align	2
	.global	loadNPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadNPC, %function
loadNPC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r0]
	strne	r3, [r0, #36]
	bx	lr
	.size	loadNPC, .-loadNPC
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L76
	add	r0, r4, #40
	ldr	r6, .L76+4
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r6
	subs	r5, r1, #0
	bne	.L70
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r5, [r4, #40]
	str	r1, [r4, #60]
.L70:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	ldrne	r3, [r4, #40]
	addne	r3, r3, #1
	strne	r3, [r4, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	player
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L173
	ldrh	r2, [r2, #48]
	ldr	r4, .L173+4
	tst	r2, #64
	str	r3, [r4, #76]
	sub	sp, sp, #20
	bne	.L80
	ldr	r2, [r4, #12]
	cmp	r2, r3
	ble	.L80
	ldr	r3, .L173+8
	ldr	r1, [r3]
	ldr	ip, [r4, #20]
	ldr	r0, [r1, #4]
	ldr	r3, [r1, #12]
	sub	r2, r2, ip
	mla	r3, r2, r3, r0
	ldr	r1, [r4, #16]
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r1
	beq	.L80
	ldr	r1, [r4, #28]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L80
	mov	r0, #1
	ldr	r1, .L173+12
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r4, #12]
	str	r0, [r4, #76]
	ble	.L80
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
.L80:
	ldr	r3, .L173
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L83
	ldr	r3, .L173+8
	ldr	r2, [r3]
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #32]
	ldr	r0, [r2, #16]
	add	r3, r1, r3
	cmp	r3, r0
	blt	.L164
.L83:
	ldr	r3, .L173
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L86
	ldr	r1, [r4, #16]
	cmp	r1, #0
	ble	.L86
	ldr	r3, .L173+8
	ldr	r2, [r3]
	ldr	r3, [r4, #12]
	ldr	r0, [r2, #12]
	mul	ip, r0, r3
	ldr	lr, [r4, #24]
	ldr	r2, [r2, #4]
	sub	r1, r1, lr
	add	r2, r2, r1
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L86
	ldr	ip, [r4, #32]
	add	r3, r3, ip
	sub	r3, r3, #1
	mul	r3, r0, r3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L86
	mov	r0, #1
	ldr	r2, .L173+16
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [r4, #16]
	str	r0, [r4, #76]
	ble	.L86
	sub	r1, r1, r3
	cmp	r1, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L86:
	ldr	r3, .L173
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L89
	ldr	r3, .L173+8
	ldr	ip, [r3]
	ldr	r0, [r4, #16]
	ldr	r3, [r4, #28]
	ldr	r1, [ip, #12]
	add	r3, r0, r3
	cmp	r3, r1
	blt	.L165
.L89:
	ldr	r8, .L173+20
	ldrh	r3, [r8]
	tst	r3, #8
	beq	.L91
	ldr	r3, .L173+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L166
.L91:
	ldr	r3, .L173
	ldrh	r3, [r3, #48]
	tst	r3, #256
	bne	.L92
	ldr	r3, [r4, #80]
	ldr	r1, .L173+28
	ldr	r2, [r3, #1776]
	sub	ip, r3, r1
	rsbs	r3, ip, #0
	adc	r3, r3, ip
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	bne	.L167
.L92:
	ldrh	r2, [r8]
	tst	r2, #256
	bne	.L93
.L96:
	ldr	r7, .L173+8
	ldr	r3, [r7]
	ldr	r1, [r3, #136]
	cmp	r1, #0
	ble	.L95
	mov	r5, #0
	mov	r10, r5
	ldr	r9, .L173+32
	ldr	fp, .L173+24
.L112:
	add	r6, r5, #34
	add	r3, r3, r6, lsl #2
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #32]
	str	r2, [sp, #12]
	ldr	r2, [r3, #28]
	str	r2, [sp, #8]
	ldr	r2, [r3, #12]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	ldr	r1, [r4, #12]
	str	r2, [sp]
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #28]
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	lsl	r1, r6, #2
	beq	.L163
	ldrh	r2, [r8]
	tst	r2, #512
	ldr	r3, [r7]
	beq	.L100
	ldrh	r10, [fp]
	ands	r10, r10, #512
	beq	.L168
.L100:
	tst	r2, #1
	beq	.L119
	ldrh	r2, [fp]
	tst	r2, #1
	bne	.L119
	add	r6, r3, r6, lsl #2
	ldr	r3, [r6, #4]
	ldr	r2, [r3, #1696]
	cmp	r2, #0
	ldr	r2, .L173+36
	str	r3, [r2]
	bne	.L169
.L111:
	ldr	r3, .L173+40
	mov	lr, pc
	bx	r3
	mov	r10, #1
.L163:
	ldr	r3, [r7]
	ldr	r2, [r3, #136]
	add	r5, r5, #1
	cmp	r2, r5
	bgt	.L112
	cmp	r10, #0
	beq	.L170
.L114:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L168:
	add	r1, r3, r1
	ldr	r0, [r1, #4]
	ldr	r1, .L173+44
.L103:
	ldr	r2, [r1], #4
	cmp	r2, r0
	beq	.L119
	cmp	r2, #0
	beq	.L171
	add	r10, r10, #1
	cmp	r10, #10
	bne	.L103
.L119:
	mov	r10, #1
.L99:
	ldr	r2, [r3, #136]
	add	r5, r5, #1
	cmp	r2, r5
	bgt	.L112
	cmp	r10, #0
	bne	.L114
	b	.L170
.L93:
	ldr	r3, .L173+24
	ldrh	r3, [r3]
	tst	r3, #256
	bne	.L96
	ldr	r1, [r4, #80]
	ldr	r3, .L173+48
	sub	r0, r1, r3
	ldr	r1, [r1, #1776]
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	cmp	r1, #0
	moveq	r3, #0
	cmp	r3, #0
	beq	.L96
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	r1	@ indirect register sibling call
.L170:
	ldrh	r2, [r8]
.L95:
	tst	r2, #512
	beq	.L114
	ldr	r3, .L173+24
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L114
	ldr	r3, .L173+52
	mov	r0, #10
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #124]
	add	r1, r4, r3, lsl #2
	ldr	r1, [r1, #88]
	cmp	r3, #9
	movgt	r2, #0
	movle	r2, #1
	cmp	r1, #0
	moveq	r2, #0
	cmp	r2, #0
	addne	r3, r3, #1
	moveq	r3, #0
	add	r2, r4, r3, lsl #2
	ldr	r2, [r2, #84]
	str	r3, [r4, #124]
	str	r2, [r4, #80]
	b	.L114
.L164:
	ldr	ip, [r4, #20]
	ldr	lr, [r2, #4]
	sub	r3, r3, #1
	ldr	r2, [r2, #12]
	add	r3, r3, ip
	mla	r3, r2, r3, lr
	ldr	r2, [r4, #16]
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r2
	beq	.L83
	ldr	r2, [r4, #28]
	add	r3, r3, r2
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L83
	mov	r5, #1
	ldr	lr, .L173+12
	add	r3, r1, ip
	ldr	r1, [lr]
	sub	r2, r0, #160
	cmp	r2, r1
	str	r3, [r4, #12]
	str	r5, [r4, #76]
	ble	.L83
	sub	r3, r3, r1
	cmp	r3, #80
	addgt	r1, r1, r5
	strgt	r1, [lr]
	b	.L83
.L165:
	ldr	r2, [r4, #12]
	mul	r5, r2, r1
	ldr	lr, [r4, #24]
	ldr	ip, [ip, #4]
	sub	r3, r3, #1
	add	r3, r3, lr
	add	r3, ip, r3
	ldrb	ip, [r3, r5]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L89
	ldr	ip, [r4, #32]
	add	r2, r2, ip
	sub	r2, r2, #1
	mul	r2, r1, r2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
	mov	r5, #1
	ldr	ip, .L173+16
	ldr	r2, [ip]
	sub	r3, r1, #240
	add	r0, r0, lr
	cmp	r3, r2
	str	r0, [r4, #16]
	str	r5, [r4, #76]
	ble	.L89
	sub	r0, r0, r2
	cmp	r0, #120
	addgt	r2, r2, r5
	strgt	r2, [ip]
	b	.L89
.L166:
	ldr	r3, .L173+56
	mov	lr, pc
	bx	r3
	b	.L91
.L167:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	r2	@ indirect register sibling call
.L169:
	ldr	r2, [r4, #80]
	ldr	r1, [r3, #1700]
	ldr	r2, [r2, #1728]
	cmp	r2, r1
	beq	.L105
.L108:
	ldr	r1, [r3, #1704]
	cmp	r2, r1
	beq	.L172
	ldr	r1, [r3, #1708]
	cmp	r2, r1
	bne	.L111
.L109:
	ldr	r2, [r3, #1720]
	str	r2, [r3, #1684]
	b	.L111
.L171:
	ldr	r3, [r0, #1780]
	cmp	r3, #0
	beq	.L102
	mov	r0, #500
	ldr	r3, .L173+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L173+52
	mov	r0, #10
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	add	r6, r3, r6, lsl #2
	ldr	r2, [r6, #4]
	add	r1, r4, r10, lsl #2
	str	r10, [r4, #124]
	str	r2, [r4, #80]
	mov	r10, #1
	str	r2, [r1, #84]
	b	.L99
.L102:
	ldr	r3, .L173+52
	mov	r0, #50
	mov	lr, pc
	bx	r3
	mov	r10, #1
	ldr	r3, [r7]
	b	.L99
.L105:
	ldr	r1, [r3, #1712]
	str	r1, [r3, #1684]
	b	.L108
.L172:
	ldr	r0, [r3, #1708]
	ldr	r1, [r3, #1716]
	cmp	r2, r0
	str	r1, [r3, #1684]
	bne	.L111
	b	.L109
.L174:
	.align	2
.L173:
	.word	67109120
	.word	player
	.word	currentLevel
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	seerMaster
	.word	collision
	.word	currentTarget
	.word	goToDialogue
	.word	player+84
	.word	dutchess
	.word	glitchDMA
	.word	goToPause
	.word	glitchPalette
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	animateNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateNPCS, %function
animateNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L183
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, [r3]
	ldr	r8, [r6, #136]
	cmp	r8, #0
	ble	.L175
	mov	r5, #0
	ldr	r9, .L183+4
	ldr	r7, .L183+8
	add	r6, r6, #140
.L179:
	ldr	r4, [r6], #4
	ldr	r2, [r4, #40]
	smull	r3, r1, r9, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	addne	r2, r2, #1
	bne	.L178
	add	r0, r4, #52
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r7
	mov	r2, #1
	str	r1, [r4, #52]
.L178:
	add	r5, r5, #1
	cmp	r5, r8
	str	r2, [r4, #40]
	bne	.L179
.L175:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L184:
	.align	2
.L183:
	.word	currentLevel
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateNPCS, .-animateNPCS
	.align	2
	.global	updateNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateNPCS, %function
updateNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	animateNPCS
	.size	updateNPCS, .-updateNPCS
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L240
	sub	sp, sp, #16
	bl	updatePlayer
	bl	animateNPCS
	ldr	r3, [r5]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	movne	lr, pc
	bxne	r3
.L187:
	ldr	r4, .L240+4
	bl	checkForConvoBools
	ldr	r3, [r4, #12]
	cmp	r3, #59
	ldr	r3, [r5]
	bgt	.L233
	ldr	r2, .L240+8
	cmp	r3, r2
	beq	.L229
.L233:
	ldr	r6, .L240+12
.L189:
	ldr	r1, [r4, #16]
	cmp	r1, #0
	bne	.L234
	ldr	r2, [r4, #12]
	sub	r2, r2, #136
	cmp	r2, #20
	bls	.L231
.L234:
	ldr	r7, .L240+16
.L193:
	ldr	r2, [r7, #12]
	ldr	r0, [r4, #28]
	sub	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	beq	.L235
.L198:
	cmp	r3, r6
	beq	.L236
.L186:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L235:
	cmp	r3, r7
	bne	.L198
.L212:
	ldr	r1, [r7, #136]
	cmp	r1, #0
	ble	.L201
	mov	ip, #0
	mov	r0, #1
	ldr	r3, .L240+20
	add	r1, r3, r1, lsl #2
.L200:
	ldr	r2, [r3], #4
	cmp	r3, r1
	str	ip, [r2]
	str	r0, [r2, #36]
	bne	.L200
.L201:
	ldr	r3, .L240+24
	str	r6, [r5]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r0, [r5]
	bl	loadLevel
	ldr	r3, [r5]
	cmp	r3, r6
	bne	.L186
.L236:
	mov	r0, #83886080
	ldr	ip, .L240+28
.L202:
	ldrh	r1, [r0]
	ldr	r3, .L240+32
	b	.L205
.L238:
	cmp	r3, #83886080
	beq	.L237
.L205:
	ldrh	r2, [r3]
	cmp	r2, r1
	sub	r3, r3, #2
	beq	.L238
	mov	r3, #0
.L204:
	add	r0, r0, #2
	cmp	r0, ip
	bne	.L202
	ldr	r2, .L240+36
	cmp	r3, #0
	str	r3, [r2]
	beq	.L186
	mov	r7, #0
	mov	r8, #1
	ldr	r1, .L240+40
	add	r0, r1, #28
	ldm	r0, {r0, r3}
	ldr	r2, [r1, #12]
	str	r3, [sp, #12]
	ldr	r3, [r1, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp]
	ldr	ip, .L240+44
	add	r2, r4, #28
	str	r8, [r1]
	str	r7, [r1, #36]
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #12]
	ldm	r2, {r2, r3}
	ldr	r4, .L240+48
	str	ip, [r6, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, r7
	beq	.L186
	ldr	r2, [r5]
	ldr	r0, [r2, #136]
	cmp	r0, r7
	movgt	r3, r7
	addgt	r2, r2, #140
	movgt	ip, r3
	ble	.L210
.L209:
	ldr	r1, [r2], #4
	add	r3, r3, #1
	cmp	r3, r0
	str	ip, [r1]
	str	r8, [r1, #36]
	bne	.L209
.L210:
	ldr	r2, .L240+52
	ldr	r3, .L240+24
	str	r2, [r5]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r0, [r5]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	loadLevel
.L237:
	mov	r3, #1
	b	.L204
.L229:
	ldr	r1, [r3, #136]
	cmp	r1, #0
	ble	.L192
	mov	ip, #0
	mov	r0, #1
	add	r3, r3, #140
	add	r1, r3, r1, lsl #2
.L191:
	ldr	r2, [r3], #4
	cmp	r1, r3
	str	ip, [r2]
	str	r0, [r2, #36]
	bne	.L191
.L192:
	ldr	r6, .L240+12
	ldr	r3, .L240+24
	str	r6, [r5]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r0, [r5]
	bl	loadLevel
	ldr	r3, [r5]
	b	.L189
.L231:
	cmp	r3, r6
	beq	.L239
	ldr	r7, .L240+16
	ldr	r1, [r4, #28]
	ldr	r2, [r7, #12]
	sub	r2, r2, r1
	cmp	r2, #1
	bne	.L186
	cmp	r3, r7
	bne	.L186
	b	.L212
.L239:
	ldr	r3, [r6, #136]
	cmp	r3, #0
	addgt	r2, r6, #140
	movgt	ip, #1
	addgt	r3, r2, r3, lsl #2
	ble	.L197
.L196:
	ldr	r0, [r2], #4
	cmp	r3, r2
	str	r1, [r0]
	str	ip, [r0, #36]
	bne	.L196
.L197:
	mov	r8, #1
	ldr	r7, .L240+16
	ldr	r3, .L240+24
	str	r8, [r6, #36]
	str	r7, [r5]
	mov	lr, pc
	bx	r3
	mov	r1, r8
	ldr	r0, [r5]
	bl	loadLevel
	ldr	r1, [r4, #16]
	ldr	r3, [r5]
	b	.L193
.L241:
	.align	2
.L240:
	.word	currentLevel
	.word	player
	.word	level0
	.word	level2
	.word	level1
	.word	level1+140
	.word	goToGame
	.word	83886144
	.word	83886142
	.word	paletteCrushed
	.word	finalDoor
	.word	level2collisionmap2Bitmap
	.word	collision
	.word	level3
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L246
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L243
	ldr	r2, .L246+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L243:
	b	drawPlayer.part.0
.L247:
	.align	2
.L246:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNPCS, %function
drawNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L257
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	lr, [r3]
	ldr	r4, [lr, #136]
	cmp	r4, #0
	ble	.L248
	ldr	r2, .L257+4
	ldr	r3, .L257+8
	ldrh	r7, [r2]
	mov	ip, #0
	ldrh	r6, [r3]
	ldr	r2, .L257+12
	ldr	r5, .L257+16
	add	lr, lr, #140
	b	.L252
.L256:
	ldrh	r3, [r2, #8]
	cmp	ip, r4
	orr	r3, r3, #512
	strh	r3, [r2, #8]	@ movhi
	add	r2, r2, #8
	beq	.L248
.L252:
	ldr	r3, [lr], #4
	ldr	r1, [r3, #36]
	cmp	r1, #0
	add	ip, ip, #1
	bne	.L256
	add	r0, r3, #28
	ldm	r0, {r0, r8}
	add	r9, r8, #7
	cmp	r8, #0
	movlt	r8, r9
	add	r1, r0, #7
	cmp	r0, #0
	movlt	r0, r1
	ldr	r9, [r3, #64]
	ldr	r1, [r3, #52]
	asr	r8, r8, #3
	ldr	r10, [r3, #44]
	mla	r9, r1, r8, r9
	ldr	r1, [r3, #60]
	asr	r0, r0, #3
	mla	r0, r10, r0, r1
	add	r1, r3, #12
	ldm	r1, {r1, r8}
	sub	r3, r1, r7
	orr	r3, r3, r5
	add	r1, r0, r9, lsl #5
	cmp	ip, r4
	sub	r0, r8, r6
	strh	r1, [r2, #12]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	add	r2, r2, #8
	bne	.L252
.L248:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L258:
	.align	2
.L257:
	.word	currentLevel
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	-32768
	.size	drawNPCS, .-drawNPCS
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L263
	ldr	r3, [r3, #36]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L260
	ldr	r2, .L263+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L261:
	bl	drawNPCS
	ldr	r3, .L263+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L263+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L263+4
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L263+16
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	ldr	r1, .L263+20
	strh	r2, [ip, #16]	@ movhi
	ldr	r2, .L263+24
	ldr	r1, [r1]
	smull	lr, r0, r2, r3
	smull	lr, r2, r1, r2
	sub	r0, r0, r3, asr #31
	add	lr, r1, r1, lsr #31
	add	r3, r3, r3, lsr #31
	sub	r2, r2, r1, asr #31
	asr	r3, r3, #1
	asr	lr, lr, #1
	lsl	r1, r1, #16
	lsl	r3, r3, #16
	lsl	lr, lr, #16
	lsl	r0, r0, #16
	lsl	r2, r2, #16
	lsr	lr, lr, #16
	lsr	r1, r1, #16
	lsr	r3, r3, #16
	lsr	r0, r0, #16
	lsr	r2, r2, #16
	strh	r1, [ip, #18]	@ movhi
	strh	r3, [ip, #20]	@ movhi
	strh	lr, [ip, #22]	@ movhi
	strh	r0, [ip, #24]	@ movhi
	pop	{r4, lr}
	strh	r2, [ip, #26]	@ movhi
	bx	lr
.L260:
	bl	drawPlayer.part.0
	b	.L261
.L264:
	.align	2
.L263:
	.word	player
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawGame, .-drawGame
	.comm	paletteCrushed,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	player,128,4
	.comm	level3,160,4
	.comm	level2,160,4
	.comm	level1,160,4
	.comm	level0,160,4
	.comm	currentLevel,4,4
	.comm	currentTarget,4,4
	.comm	gateUnlocked,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
