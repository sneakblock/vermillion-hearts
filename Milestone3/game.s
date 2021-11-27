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
	.global	initLevels
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevels, %function
initLevels:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #256
	mov	r1, #177
	mov	r2, #64
	push	{r4, r5, lr}
	mov	ip, #4096
	mov	r5, #16384
	mov	r4, #512
	mov	lr, #38656
	ldr	r3, .L8
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	add	r0, r0, #194
	add	r1, r1, #85
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	ldr	r0, .L8+4
	ldr	r1, .L8+8
	str	r2, [r3, #24]
	ldr	r2, .L8+12
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #28]
	str	ip, [r3, #32]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	pop	{r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	level1
	.word	level1foregroundTiles
	.word	level1foregroundMap
	.word	level1foregroundPal
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
	ldr	r3, .L12
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
.L13:
	.align	2
.L12:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	initNPCS, %function
initNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L18
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r2, #1
	mov	r3, r1
	mov	r0, #0
	mov	r5, #8
	mov	r4, #16
	mov	ip, #2
	add	lr, r1, #1328
.L15:
	str	r2, [r3]
	str	r0, [r3, #36]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	r2, [r3, #44]
	str	r0, [r3, #52]
	str	ip, [r3, #56]
	str	r2, [r3, #60]
	str	r0, [r3, #64]
	add	r3, r3, #332
	cmp	r3, lr
	bne	.L15
	mov	r3, #177
	mov	r9, #241
	mov	r8, #208
	mov	r7, #178
	mov	r6, #240
	mov	r5, #3
	mov	r4, #172
	mov	lr, #135
	str	r3, [r1, #680]
	add	r3, r3, #126
	str	r9, [r1, #12]
	str	r8, [r1, #348]
	str	r7, [r1, #344]
	str	r6, [r1, #676]
	str	r5, [r1, #952]
	str	r4, [r1, #1012]
	str	lr, [r1, #1008]
	str	r0, [r1, #288]
	str	ip, [r1, #620]
	str	r2, [r1, #1284]
	str	r3, [r1, #16]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	npcs
	.size	initNPCS, .-initNPCS
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #4096
	mov	r7, #256
	mov	fp, #16384
	mov	r10, #512
	mov	r9, #177
	mov	r8, #64
	mov	r6, #38656
	mov	r2, #0
	mov	r1, #1
	mov	r4, #8
	mov	lr, #16
	mov	ip, #20
	mov	r0, #2
	ldr	r3, .L22
	str	r5, [r3, #32]
	ldr	r5, .L22+4
	str	r5, [r3, #36]
	ldr	r5, .L22+8
	str	r7, [r3, #8]
	str	r5, [r3, #40]
	add	r7, r7, #194
	ldr	r5, .L22+12
	str	r7, [r3, #12]
	sub	r7, r7, #188
	str	fp, [r3]
	str	r8, [r3, #24]
	str	r7, [r3, #20]
	str	r6, [r3, #28]
	str	r5, [r3, #44]
	str	r10, [r3, #4]
	str	r9, [r3, #16]
	ldr	r3, .L22+16
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	ip, [r3, #44]
	str	r0, [r3, #64]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #52]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initNPCS
.L23:
	.align	2
.L22:
	.word	level1
	.word	level1foregroundTiles
	.word	level1foregroundMap
	.word	level1foregroundPal
	.word	player
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
	push	{r4, r5, r6, lr}
	mov	ip, #67108864
	mov	r4, r0
	ldrsh	r3, [r0]
	orr	r0, r3, #7296
	orr	r2, r3, #6784
	orr	r0, r0, #4
	orr	r3, r3, #7808
	orr	r2, r2, #8
	lsl	r0, r0, #16
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r0, r0, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r3, [ip, #8]	@ movhi
	ldr	r1, [r4, #44]
	ldr	r5, .L26
	strh	r0, [ip, #10]	@ movhi
	mov	r3, #256
	strh	r2, [ip, #12]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #36]
	mov	r2, #100663296
	mov	r0, #3
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #32]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #40]
	mov	r0, #3
	ldr	r2, .L26+4
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, .L26+8
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #20]
	ldr	lr, .L26+12
	ldr	ip, [r4, #24]
	str	r4, [r3]
	ldr	r0, .L26+16
	ldr	r3, .L26+20
	str	r5, [lr]
	str	ip, [r0]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	DMANow
	.word	100724736
	.word	currentLevel
	.word	hOff
	.word	vOff
	.word	player
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r5, .L85+4
	sub	sp, sp, #16
	bne	.L31
	ldr	r2, [r5, #12]
	cmp	r2, #0
	ble	.L31
	ldr	r3, .L85+8
	ldr	r1, .L85+12
	ldr	r3, [r3]
	ldr	r0, [r5, #20]
	ldr	r1, [r1]
	ldr	r3, [r3, #4]
	sub	r2, r2, r0
	mla	r3, r2, r3, r1
	ldr	r1, [r5, #16]
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r1
	beq	.L31
	ldr	r1, [r5, #28]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	ldr	r1, .L85+16
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r5, #12]
	ble	.L31
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
.L31:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L34
	ldr	r3, .L85+8
	ldr	r2, [r3]
	ldr	r1, [r5, #12]
	ldr	r3, [r5, #32]
	ldr	r0, [r2, #8]
	add	r3, r1, r3
	cmp	r3, r0
	blt	.L80
.L34:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L37
	ldr	r1, [r5, #16]
	cmp	r1, #0
	ble	.L37
	ldr	r3, .L85+8
	ldr	r2, [r3]
	ldr	r3, [r5, #12]
	ldr	r0, [r2, #4]
	mul	ip, r0, r3
	ldr	r2, .L85+12
	ldr	lr, [r5, #24]
	ldr	r2, [r2]
	sub	r1, r1, lr
	add	r2, r2, r1
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L37
	ldr	ip, [r5, #32]
	add	r3, r3, ip
	sub	r3, r3, #1
	mul	r3, r0, r3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	ldr	r2, .L85+20
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [r5, #16]
	ble	.L37
	sub	r1, r1, r3
	cmp	r1, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L37:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L40
	ldr	r3, .L85+8
	ldr	r1, [r3]
	ldr	r0, [r5, #16]
	ldr	r3, [r5, #28]
	ldr	ip, [r1, #4]
	add	r3, r0, r3
	cmp	r3, ip
	blt	.L81
.L40:
	ldr	r3, .L85+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
	ldr	r3, .L85+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
.L42:
	ldr	r4, .L85+32
	ldr	r7, .L85+36
	ldr	r8, .L85+40
	add	r6, r4, #1328
.L44:
	add	r2, r4, #12
	ldr	r0, [r4, #32]
	ldr	r1, [r4, #28]
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #28
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #12]
	ldr	r0, [r5, #16]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	add	r4, r4, #332
	bne	.L83
.L43:
	cmp	r4, r6
	bne	.L44
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L84
.L45:
	ldr	r4, [r5, #40]
	ldr	r6, .L85+44
	mov	r0, r4
	ldr	r1, [r5, #44]
	mov	lr, pc
	bx	r6
	cmp	r1, #0
	addne	r4, r4, #1
	bne	.L47
	add	r0, r5, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	mov	r4, #1
	str	r1, [r5, #60]
.L47:
	str	r4, [r5, #40]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L83:
	mov	lr, pc
	bx	r8
	b	.L43
.L80:
	ldr	r4, .L85+12
	ldr	ip, [r5, #20]
	ldr	lr, [r2, #4]
	sub	r3, r3, #1
	ldr	r2, [r4]
	add	r3, r3, ip
	mla	r3, lr, r3, r2
	ldr	r2, [r5, #16]
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r2
	beq	.L34
	ldr	r2, [r5, #28]
	add	r3, r3, r2
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	ldr	r4, .L85+16
	ldr	lr, [r4]
	sub	r2, r0, #160
	add	r3, r1, ip
	cmp	r2, lr
	str	r3, [r5, #12]
	ble	.L34
	sub	r3, r3, lr
	cmp	r3, #80
	addgt	lr, lr, #1
	strgt	lr, [r4]
	b	.L34
.L81:
	ldr	r2, [r5, #12]
	mul	r4, r2, ip
	ldr	r1, .L85+12
	ldr	lr, [r5, #24]
	ldr	r1, [r1]
	sub	r3, r3, #1
	add	r3, r3, lr
	add	r3, r1, r3
	ldrb	r1, [r3, r4]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L40
	ldr	r1, [r5, #32]
	add	r2, r2, r1
	sub	r2, r2, #1
	mul	r2, ip, r2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	ldr	r4, .L85+20
	ldr	r1, [r4]
	sub	r3, ip, #240
	add	r2, r0, lr
	cmp	r3, r1
	str	r2, [r5, #16]
	ble	.L40
	sub	r2, r2, r1
	cmp	r2, #120
	addgt	r1, r1, #1
	strgt	r1, [r4]
	b	.L40
.L84:
	ldr	r3, .L85+48
	mov	lr, pc
	bx	r3
	b	.L45
.L82:
	ldr	r3, .L85+52
	mov	lr, pc
	bx	r3
	b	.L42
.L86:
	.align	2
.L85:
	.word	67109120
	.word	player
	.word	currentLevel
	.word	.LANCHOR0
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	npcs
	.word	collision
	.word	goToLose
	.word	__aeabi_idivmod
	.word	goToWin
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
	ldr	r4, .L91
	ldr	r5, [r4, #40]
	ldr	r1, [r4, #44]
	mov	r0, r5
	ldr	r6, .L91+4
	mov	lr, pc
	bx	r6
	cmp	r1, #0
	addne	r5, r5, #1
	bne	.L89
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	mov	r5, #1
	str	r1, [r4, #60]
.L89:
	str	r5, [r4, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r4, .L99
	ldr	r7, .L99+4
	ldr	r5, .L99+8
	add	r6, r4, #1328
.L96:
	ldr	r2, [r4, #40]
	smull	r3, r1, r7, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r1, [r4, #288]
	cmp	r2, r3, lsl #2
	str	r1, [r4, #44]
	addne	r2, r2, #1
	bne	.L95
	add	r0, r4, #52
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r5
	mov	r2, #1
	str	r1, [r4, #52]
.L95:
	str	r2, [r4, #40]
	add	r4, r4, #332
	cmp	r4, r6
	bne	.L96
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L100:
	.align	2
.L99:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L140
	ldr	r7, .L140+4
	ldr	r6, .L140+8
	ldr	r8, .L140+12
	add	r5, r4, #1328
.L112:
	ldr	r3, [r4, #288]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L102
.L104:
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L103
.L103:
	ldr	r2, [r7]
	ldr	r3, [r4, #28]
	ldr	r0, [r2, #4]
	ldr	r1, [r4, #16]
	sub	r2, r0, r3
	cmp	r1, r2
	bge	.L111
	ldr	r2, [r4, #12]
	mul	lr, r2, r0
	ldr	ip, [r4, #24]
	add	r3, r1, r3
	ldr	r9, [r8]
	sub	r3, r3, #1
	add	r3, r3, ip
	add	r3, r9, r3
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L139
.L111:
	mov	lr, pc
	bx	r6
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	str	r0, [r4, #288]
.L102:
	add	r4, r4, #332
	cmp	r4, r5
	bne	.L112
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	animateNPCS
.L105:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	ble	.L111
	ldr	r1, [r7]
	ldr	r3, [r4, #12]
	ldr	r0, [r1, #4]
	mul	ip, r0, r3
	ldr	lr, [r4, #24]
	ldr	r1, [r8]
	sub	r2, r2, lr
	add	r1, r1, r2
	ldrb	ip, [r1, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L111
	ldr	ip, [r4, #32]
	add	r3, r3, ip
	sub	r3, r3, #1
	mul	r3, r0, r3
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	strne	r2, [r4, #16]
	bne	.L102
	b	.L111
.L107:
	ldr	r2, [r4, #12]
	cmp	r2, #0
	ble	.L111
	ldr	r3, [r7]
	ldr	r0, [r4, #20]
	ldr	r1, [r8]
	ldr	r3, [r3, #4]
	sub	r2, r2, r0
	mla	r3, r2, r3, r1
	ldr	r1, [r4, #16]
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r1
	beq	.L111
	ldr	r1, [r4, #28]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	strne	r2, [r4, #12]
	bne	.L102
	b	.L111
.L106:
	ldr	r0, [r7]
	ldr	r3, [r4, #32]
	ldr	r2, [r0, #8]
	ldr	r1, [r4, #12]
	sub	r2, r2, r3
	cmp	r1, r2
	bge	.L111
	ldr	r2, [r4, #20]
	add	r3, r1, r3
	ldr	ip, [r0, #4]
	sub	r3, r3, #1
	ldr	r0, [r8]
	add	r3, r3, r2
	mla	r3, ip, r3, r0
	ldr	r0, [r4, #16]
	ldrb	ip, [r3, r0]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r3, r0
	beq	.L111
	ldr	r0, [r4, #28]
	add	r3, r3, r0
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r1, r1, r2
	strne	r1, [r4, #12]
	bne	.L102
	b	.L111
.L139:
	ldr	lr, [r4, #32]
	add	r2, r2, lr
	sub	r2, r2, #1
	mul	r2, r0, r2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r3, r1, ip
	strne	r3, [r4, #16]
	bne	.L102
	b	.L111
.L141:
	.align	2
.L140:
	.word	npcs
	.word	currentLevel
	.word	rand
	.word	.LANCHOR0
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
	pop	{r4, lr}
	b	updateNPCS
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
	ldr	r3, .L148
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L145
	ldr	r2, .L148+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L145:
	b	drawPlayer.part.0
.L149:
	.align	2
.L148:
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
	ldr	r2, .L156
	ldr	r1, .L156+4
	ldr	r3, .L156+8
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	ip, .L156+12
	ldrh	r4, [r2]
	ldrh	r5, [r1]
	ldr	r2, .L156+16
	ldr	lr, .L156+20
	add	r0, r3, #1328
.L153:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L151
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L152:
	add	r3, r3, #332
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L153
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L151:
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
	b	.L152
.L157:
	.align	2
.L156:
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
	ldr	r3, .L162
	ldr	r3, [r3, #36]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L159
	ldr	r2, .L162+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L160:
	bl	drawNPCS
	ldr	r3, .L162+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L162+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L162+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L162+16
	ldrh	r1, [r2]
	ldr	r2, .L162+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L159:
	bl	drawPlayer.part.0
	b	.L160
.L163:
	.align	2
.L162:
	.word	player
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.global	level1collisionmap
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	npcs,1660,4
	.comm	player,76,4
	.comm	level1,1712,4
	.comm	currentLevel,4,4
	.comm	currentTarget,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	level1collisionmap, %object
	.size	level1collisionmap, 4
level1collisionmap:
	.word	level1collisionmapBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
