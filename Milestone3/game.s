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
	ldr	ip, [r1, #72]
	str	lr, [sp, #-4]!
	ldr	lr, [r1, #60]
	asr	r2, r2, #3
	mla	r2, lr, r2, ip
	ldr	ip, [r1, #48]
	ldr	lr, [r1, #68]
	asr	r0, r0, #3
	mla	r0, ip, r0, lr
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
	ldr	lr, [sp], #4
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
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	mov	r0, #8
	mov	ip, #16
	mov	r2, #0
	mov	r1, #1
	mov	lr, #2
	mov	r4, #20
	ldr	r3, .L8+12
	str	r0, [r3, #28]
	str	ip, [r3, #32]
	ldr	r0, .L8+16
	ldr	ip, .L8+20
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	ldr	r2, .L8+24
	str	r4, [r3, #44]
	str	lr, [r3, #64]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #52]
	str	ip, [r0]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	initPause
	.word	initLevel0
	.word	initLevel1
	.word	player
	.word	currentLevel
	.word	level0
	.word	initNPCS
	.size	initGame, .-initGame
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
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	initPause
	.word	initLevel0
	.word	initLevel1
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
	push	{r4, lr}
	mov	r2, #0
	mov	r1, #1
	mov	r4, #8
	mov	lr, #16
	mov	ip, #20
	mov	r0, #2
	ldr	r3, .L16
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	ip, [r3, #44]
	str	r0, [r3, #64]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	player
	.size	initPlayer, .-initPlayer
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
	mov	r7, #67108864
	mov	r4, r0
	ldrh	r2, [r0]
	ldr	r3, [r0, #32]
	orr	r2, r2, #7680
	add	r3, r3, r3, lsr #31
	ldr	r5, .L32
	strh	r2, [r7, #8]	@ movhi
	asr	r3, r3, #1
	mov	r2, #100663296
	mov	r6, r1
	ldr	r1, [r0, #40]
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #36]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r4, #44]
	ldr	r2, .L32+4
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #84]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #80]
	mov	r2, #83886080
	mov	r0, #3
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #56]
	cmp	r1, #0
	beq	.L19
	ldrh	r2, [r4]
	ldr	r3, [r4, #48]
	orr	r2, r2, #7168
	orr	r2, r2, #4
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	strh	r2, [r7, #10]	@ movhi
	asr	r3, r3, #1
	ldr	r2, .L32+8
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #52]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r2, .L32+12
	ldr	r1, [r4, #60]
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #84]
	ldr	r3, [r4, #92]
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r4, #88]
	add	r2, r2, #83886080
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
.L19:
	ldr	r1, [r4, #72]
	cmp	r1, #0
	beq	.L20
	mov	r0, #67108864
	ldrh	r2, [r4]
	ldr	r3, [r4, #64]
	orr	r2, r2, #6656
	orr	r2, r2, #8
	add	r3, r3, r3, lsr #31
	strh	r2, [r0, #12]	@ movhi
	asr	r3, r3, #1
	mov	r0, #3
	ldr	r2, .L32+16
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #68]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r2, .L32+20
	ldr	r1, [r4, #76]
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #92]
	ldr	r1, [r4, #84]
	add	r3, r3, r3, lsr #31
	asr	r2, r3, #1
	add	r1, r1, r1, lsr #31
	ldr	r3, [r4, #100]
	add	r2, r2, r1, asr #1
	lsl	r2, r2, #1
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r4, #96]
	add	r2, r2, #83886080
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
.L20:
	cmp	r6, #0
	beq	.L18
	add	r2, r4, #16
	ldm	r2, {r2, lr}
	ldr	r3, .L32+24
	ldr	r0, .L32+28
	ldr	ip, [r4, #24]
	ldr	r1, [r4, #28]
	str	r2, [r3, #16]
	ldr	r2, .L32+32
	str	lr, [r3, #12]
	str	ip, [r0]
	str	r1, [r2]
.L18:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	DMANow
	.word	100724736
	.word	100679680
	.word	100720640
	.word	100696064
	.word	100716544
	.word	player
	.word	hOff
	.word	vOff
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
	mov	r3, #1
	str	r3, [r0]
	bx	lr
	.size	loadNPC, .-loadNPC
	.global	__aeabi_idivmod
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L99
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r4, .L99+4
	sub	sp, sp, #20
	beq	.L36
	ldr	r7, .L99+8
.L37:
	ldr	r3, .L99
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L40
	ldr	r2, [r7]
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #32]
	ldr	r0, [r2, #12]
	add	r3, r1, r3
	cmp	r3, r0
	blt	.L94
.L40:
	ldr	r3, .L99
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L43
	ldr	r1, [r4, #16]
	cmp	r1, #0
	ble	.L43
	ldr	r2, [r7]
	ldr	r3, [r4, #12]
	ldr	r0, [r2, #8]
	mul	ip, r0, r3
	ldr	lr, [r4, #24]
	ldr	r2, [r2, #4]
	sub	r1, r1, lr
	add	r2, r2, r1
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L43
	ldr	ip, [r4, #32]
	add	r3, r3, ip
	sub	r3, r3, #1
	mul	r3, r0, r3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L43
	ldr	r2, .L99+12
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [r4, #16]
	ble	.L43
	sub	r1, r1, r3
	cmp	r1, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L43:
	ldr	r3, .L99
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L46
	ldr	ip, [r7]
	ldr	r0, [r4, #16]
	ldr	r3, [r4, #28]
	ldr	r1, [ip, #8]
	add	r3, r0, r3
	cmp	r3, r1
	blt	.L95
.L46:
	ldr	r9, .L99+16
	ldrh	r3, [r9]
	tst	r3, #8
	beq	.L48
	ldr	r3, .L99+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L96
.L48:
	ldr	r3, [r7]
	ldr	r3, [r3, #108]
	cmp	r3, #0
	ble	.L54
	mov	r6, #0
	ldr	r5, .L99+24
	ldr	r8, .L99+28
	ldr	r10, .L99+20
	ldr	fp, .L99+32
.L53:
	add	r2, r5, #12
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #32]
	ldr	r1, [r5, #28]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #12]
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	add	r6, r6, #1
	beq	.L52
	ldrh	r3, [r9]
	tst	r3, #1
	beq	.L52
	ldrh	r3, [r10]
	tst	r3, #1
	beq	.L97
.L52:
	ldr	r3, [r7]
	ldr	r3, [r3, #108]
	cmp	r3, r6
	add	r5, r5, #468
	bgt	.L53
.L54:
	ldr	r5, [r4, #40]
	ldr	r6, .L99+36
	mov	r0, r5
	ldr	r1, [r4, #44]
	mov	lr, pc
	bx	r6
	cmp	r1, #0
	bne	.L98
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	mov	r5, #1
	str	r1, [r4, #60]
	str	r5, [r4, #40]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	ldr	r2, [r4, #12]
	cmp	r2, #0
	ldr	r7, .L99+8
	ble	.L37
	ldr	r1, [r7]
	ldr	ip, [r4, #20]
	ldmib	r1, {r0, r3}
	sub	r2, r2, ip
	mla	r3, r2, r3, r0
	ldr	r1, [r4, #16]
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r1
	beq	.L37
	ldr	r1, [r4, #28]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	ldr	r1, .L99+40
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r4, #12]
	ble	.L37
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
	b	.L37
.L98:
	add	r5, r5, #1
	str	r5, [r4, #40]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L94:
	ldr	ip, [r4, #20]
	ldr	lr, [r2, #4]
	sub	r3, r3, #1
	ldr	r2, [r2, #8]
	add	r3, r3, ip
	mla	r3, r2, r3, lr
	ldr	r2, [r4, #16]
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r2
	beq	.L40
	ldr	r2, [r4, #28]
	add	r3, r3, r2
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	ldr	r5, .L99+40
	ldr	lr, [r5]
	sub	r2, r0, #160
	add	r3, r1, ip
	cmp	r2, lr
	str	r3, [r4, #12]
	ble	.L40
	sub	r3, r3, lr
	cmp	r3, #80
	addgt	lr, lr, #1
	strgt	lr, [r5]
	b	.L40
.L95:
	ldr	r2, [r4, #12]
	mul	r5, r2, r1
	ldr	lr, [r4, #24]
	ldr	ip, [ip, #4]
	sub	r3, r3, #1
	add	r3, r3, lr
	add	r3, ip, r3
	ldrb	ip, [r3, r5]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L46
	ldr	ip, [r4, #32]
	add	r2, r2, ip
	sub	r2, r2, #1
	mul	r2, r1, r2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L46
	ldr	ip, .L99+12
	ldr	r2, [ip]
	sub	r3, r1, #240
	add	r0, r0, lr
	cmp	r3, r2
	str	r0, [r4, #16]
	ble	.L46
	sub	r0, r0, r2
	cmp	r0, #120
	addgt	r2, r2, #1
	strgt	r2, [ip]
	b	.L46
.L97:
	ldr	r3, .L99+44
	str	r5, [fp]
	mov	lr, pc
	bx	r3
	b	.L52
.L96:
	ldr	r3, .L99+48
	mov	lr, pc
	bx	r3
	b	.L48
.L100:
	.align	2
.L99:
	.word	67109120
	.word	player
	.word	currentLevel
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	npcs
	.word	collision
	.word	currentTarget
	.word	__aeabi_idivmod
	.word	vOff
	.word	goToDialogue
	.word	goToPause
	.size	updatePlayer, .-updatePlayer
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
	ldr	r4, .L105
	ldr	r5, [r4, #40]
	ldr	r1, [r4, #44]
	mov	r0, r5
	ldr	r6, .L105+4
	mov	lr, pc
	bx	r6
	cmp	r1, #0
	addne	r5, r5, #1
	bne	.L103
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	mov	r5, #1
	str	r1, [r4, #60]
.L103:
	str	r5, [r4, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	player
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L113
	ldr	r7, .L113+4
	ldr	r5, .L113+8
	add	r6, r4, #1872
.L110:
	ldr	r2, [r4, #40]
	smull	r3, r1, r7, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r1, [r4, #420]
	cmp	r2, r3, lsl #2
	str	r1, [r4, #44]
	addne	r2, r2, #1
	bne	.L109
	add	r0, r4, #52
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r5
	mov	r2, #1
	str	r1, [r4, #52]
.L109:
	str	r2, [r4, #40]
	add	r4, r4, #468
	cmp	r4, r6
	bne	.L110
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	npcs
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
	push	{r4, lr}
	bl	updatePlayer
	bl	animateNPCS
	ldr	r3, .L119
	ldr	r3, [r3]
	ldr	r3, [r3, #104]
	cmp	r3, #0
	popne	{r4, lr}
	bxne	r3	@ indirect register sibling call
.L116:
	pop	{r4, lr}
	bx	lr
.L120:
	.align	2
.L119:
	.word	currentLevel
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
	ldr	r3, .L125
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L122
	ldr	r2, .L125+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L122:
	b	drawPlayer.part.0
.L126:
	.align	2
.L125:
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
	ldr	r2, .L133
	ldr	r1, .L133+4
	ldr	r3, .L133+8
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	ip, .L133+12
	ldrh	r4, [r2]
	ldrh	r5, [r1]
	ldr	r2, .L133+16
	ldr	lr, .L133+20
	add	r0, r3, #1872
.L130:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L128
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L129:
	add	r3, r3, #468
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L130
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L128:
	add	r1, r3, #28
	ldm	r1, {r1, r6}
	add	r8, r6, #7
	cmp	r6, #0
	movlt	r6, r8
	add	r7, r1, #7
	cmp	r1, #0
	movlt	r1, r7
	ldr	r9, [r3, #52]
	ldr	r7, [r3, #64]
	asr	r6, r6, #3
	mla	r6, r9, r6, r7
	ldr	r8, [r3, #44]
	ldr	r7, [r3, #60]
	asr	r1, r1, #3
	mla	r8, r1, r8, r7
	add	r1, r3, #12
	ldm	r1, {r1, r7}
	sub	r1, r1, r5
	and	r1, r1, #255
	sub	r7, r7, r4
	add	r6, r8, r6, lsl #5
	orr	r1, r1, lr
	and	r7, r7, ip
	strh	r6, [r2, #12]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	strh	r7, [r2, #10]	@ movhi
	b	.L129
.L134:
	.align	2
.L133:
	.word	hOff
	.word	vOff
	.word	npcs
	.word	511
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
	ldr	r3, .L139
	ldr	r3, [r3, #36]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L136
	ldr	r2, .L139+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L137:
	bl	drawNPCS
	ldr	r3, .L139+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L139+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L139+4
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L139+16
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	ldr	r1, .L139+20
	strh	r2, [ip, #16]	@ movhi
	ldr	r2, .L139+24
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
.L136:
	bl	drawPlayer.part.0
	b	.L137
.L140:
	.align	2
.L139:
	.word	player
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawGame, .-drawGame
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	npcs,2340,4
	.comm	player,124,4
	.comm	level1,2452,4
	.comm	currentLevel,4,4
	.comm	currentTarget,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
