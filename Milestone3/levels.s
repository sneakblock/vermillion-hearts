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
	.file	"levels.c"
	.text
	.align	2
	.global	initStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStart, %function
initStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	lr, #0
	mov	r1, #1888
	mov	r2, #2048
	mov	r5, #10
	mov	r4, #16
	mov	ip, #4
	mov	r0, #1
	ldr	r3, .L4
	str	lr, [r3]
	ldr	lr, .L4+4
	str	lr, [r3, #36]
	ldr	lr, .L4+8
	str	r1, [r3, #60]
	str	lr, [r3, #40]
	ldr	r1, .L4+12
	ldr	lr, .L4+16
	str	r1, [r3, #76]
	str	lr, [r3, #28]
	ldr	r1, .L4+20
	ldr	lr, .L4+24
	str	r1, [r3, #56]
	str	lr, [r3, #52]
	ldr	r1, .L4+28
	ldr	lr, .L4+32
	str	r1, [r3, #84]
	str	lr, [r3, #44]
	ldr	r1, .L4+36
	ldr	lr, .L4+40
	str	r1, [r3, #72]
	str	lr, [r3, #68]
	ldr	r1, .L4+44
	ldr	lr, .L4+48
	str	r5, [r3, #80]
	str	r4, [r3, #88]
	str	lr, [r3, #92]
	str	ip, [r3, #96]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #64]
	str	r0, [r1]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	startLevel
	.word	startforegroundTiles
	.word	startforegroundMap
	.word	startforegroundPal
	.word	5728
	.word	startmidgroundMap
	.word	startmidgroundTiles
	.word	startmidgroundPal
	.word	7968
	.word	startbackgroundMap
	.word	startbackgroundTiles
	.word	movingUp
	.word	startbackgroundPal
	.size	initStart, .-initStart
	.align	2
	.global	animateStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateStart, %function
animateStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L15
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	ip, .L15+4
	ldr	r3, .L15+8
	ldr	r2, [ip]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	beq	.L7
	ldr	r1, .L15+12
	ldr	r3, .L15+16
	add	r0, r2, #1
	ldr	r3, [r3]
	ldr	r2, [r1]
.L8:
	ldr	lr, .L15+20
	cmp	r2, #10
	ldr	r2, [lr]
	bne	.L13
	cmp	r2, #49
	movle	r4, #0
	addle	r2, r2, #1
	strle	r2, [lr]
	strle	r4, [r1]
.L13:
	mov	r1, #67108864
	mov	r4, #5
	mov	lr, #10
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	str	r0, [ip]
	strh	r3, [r1, #18]	@ movhi
	strh	r4, [r1, #16]	@ movhi
	strh	lr, [r1, #22]	@ movhi
	strh	r2, [r1, #26]	@ movhi
	pop	{r4, lr}
	bx	lr
.L7:
	ldr	r2, .L15+24
	ldr	r1, .L15+16
	ldr	r3, [r2]
	cmp	r3, #0
	ldr	r3, [r1]
	addne	r3, r3, #1
	subeq	r3, r3, #1
	cmp	r3, #14
	str	r3, [r1]
	movle	r1, #1
	strle	r1, [r2]
	ble	.L12
	cmp	r3, #24
	movgt	r1, #0
	strgt	r1, [r2]
.L12:
	mov	r0, #1
	ldr	r1, .L15+12
	ldr	r2, [r1]
	add	r2, r2, r0
	str	r2, [r1]
	b	.L8
.L16:
	.align	2
.L15:
	.word	waitForVBlank
	.word	textAniTimer
	.word	1717986919
	.word	sunAniTimer
	.word	vOffBG0
	.word	vOffBG2
	.word	movingUp
	.size	animateStart, .-animateStart
	.align	2
	.global	initInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	initInstructions, %function
initInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #2048
	mov	r2, #0
	mov	r1, #67108864
	mov	r0, #32
	ldr	r3, .L19
	ldr	ip, .L19+4
	str	ip, [r3, #36]
	ldr	ip, .L19+8
	str	lr, [r3, #32]
	str	ip, [r3, #40]
	ldr	lr, .L19+12
	ldr	ip, .L19+16
	str	lr, [r3, #28]
	str	r2, [r3]
	str	ip, [r3, #76]
	str	r0, [r3, #80]
	ldr	lr, [sp], #4
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L20:
	.align	2
.L19:
	.word	instructionsLevel
	.word	instructionsforegroundTiles
	.word	instructionsforegroundMap
	.word	19936
	.word	instructionsforegroundPal
	.size	initInstructions, .-initInstructions
	.align	2
	.global	initPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPause, %function
initPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #10816
	mov	lr, #2048
	mov	r1, #67108864
	mov	r0, #32
	ldr	r3, .L23
	ldr	ip, .L23+4
	str	ip, [r3, #36]
	ldr	ip, .L23+8
	str	ip, [r3, #40]
	ldr	ip, .L23+12
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3]
	str	ip, [r3, #76]
	str	r0, [r3, #80]
	pop	{r4, lr}
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L24:
	.align	2
.L23:
	.word	pauseLevel
	.word	pauseTiles
	.word	pauseMap
	.word	pausePal
	.size	initPause, .-initPause
	.align	2
	.global	initLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel1, %function
initLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #6336
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #18
	mov	r4, #256
	mov	r2, #4096
	mov	r8, #16384
	mov	r7, #512
	mov	r6, #177
	mov	r5, #64
	mov	r1, #4
	mov	ip, #2
	ldr	r3, .L27
	str	r0, [r3, #28]
	ldr	r0, .L27+4
	str	lr, [r3, #80]
	str	r0, [r3, #36]
	ldr	lr, .L27+8
	ldr	r0, .L27+12
	str	lr, [r3, #40]
	str	r0, [r3, #44]
	ldr	lr, .L27+16
	ldr	r0, .L27+20
	str	lr, [r3, #52]
	str	r0, [r3, #56]
	ldr	lr, .L27+24
	ldr	r0, .L27+28
	str	lr, [r3, #60]
	str	r0, [r3, #68]
	ldr	lr, .L27+32
	ldr	r0, .L27+36
	str	r4, [r3, #8]
	str	lr, [r3, #72]
	str	r0, [r3, #76]
	ldr	lr, .L27+40
	add	r4, r4, #194
	ldr	r0, .L27+44
	str	r4, [r3, #12]
	sub	r4, r4, #188
	str	r8, [r3]
	str	r7, [r3, #4]
	str	r6, [r3, #16]
	str	r5, [r3, #24]
	str	r4, [r3, #20]
	str	lr, [r3, #84]
	str	ip, [r3, #88]
	str	r0, [r3, #92]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #64]
	str	r1, [r3, #96]
	str	r1, [r3, #100]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	level1
	.word	level1foregroundTiles
	.word	level1foregroundMap
	.word	5280
	.word	level1midgroundTiles
	.word	level1midgroundMap
	.word	17216
	.word	level1backgroundTiles
	.word	level1backgroundMap
	.word	level1foregroundPal
	.word	level1midgroundPal
	.word	level1backgroundPal
	.size	initLevel1, .-initLevel1
	.comm	movingUp,4,4
	.comm	sunAniTimer,4,4
	.comm	textAniTimer,4,4
	.comm	vOffBG2,4,4
	.comm	vOffBG1,4,4
	.comm	vOffBG0,4,4
	.comm	pauseLevel,2424,4
	.comm	instructionsLevel,2424,4
	.comm	startLevel,2424,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
