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
	.file	"dialogue.c"
	.text
	.align	2
	.global	drawDialogueUI
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDialogueUI, %function
drawDialogueUI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L20
	ldr	r6, .L20+4
	ldr	r4, .L20+8
	mov	r0, #255
	ldr	r5, .L20+12
	sub	sp, sp, #12
	str	r3, [r6]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L2
	mov	r1, #4
	mov	r3, #92
	str	r2, [sp]
	mov	r0, r1
	mov	r2, #116
	ldr	r7, .L20+16
	mov	lr, pc
	bx	r7
	ldr	r3, [r4]
.L2:
	ldr	r2, [r3, #416]
	cmp	r2, #0
	beq	.L3
	mov	r3, #254
	mov	r1, #4
	mov	r0, #124
	ldr	r7, .L20+20
	mov	lr, pc
	bx	r7
.L3:
	mov	r3, #100663296
	mov	r0, #255
	str	r3, [r6]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L4
	mov	r1, #4
	mov	r3, #92
	str	r2, [sp]
	mov	r0, r1
	mov	r2, #116
	ldr	r5, .L20+16
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
.L4:
	ldr	r2, [r3, #416]
	cmp	r2, #0
	beq	.L1
	mov	r3, #254
	mov	r1, #4
	mov	r0, #124
	ldr	r4, .L20+20
	mov	lr, pc
	bx	r4
.L1:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	100704256
	.word	videoBuffer
	.word	currentTarget
	.word	fillScreen4
	.word	drawImage4
	.word	drawString4
	.size	drawDialogueUI, .-drawDialogueUI
	.align	2
	.global	typeDialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	typeDialogue, %function
typeDialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L22
	mov	r5, r0
	mov	r9, r1
	mov	r10, r3
	ldr	r8, .L38
	ldr	r7, .L38+4
	ldr	fp, .L38+8
	rsb	r6, r4, #0
.L24:
	tst	r2, #223
	moveq	r3, #6
	beq	.L29
	mov	r2, r4
	add	r0, r6, #1
.L25:
	add	r3, r0, r2
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	tst	r1, #223
	bne	.L25
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	lsl	r3, r3, #1
.L29:
	add	r3, r5, r3
	cmp	r3, #223
	movgt	r5, #124
	ldr	r3, .L38+12
	str	r3, [r8]
	addle	r5, r5, #6
	addgt	r9, r9, #10
	ldrb	r2, [r4]	@ zero_extendqisi2
	mov	r3, r10
	mov	r1, r9
	mov	r0, r5
	mov	lr, pc
	bx	r7
	mov	r3, #100663296
	str	r3, [r8]
	mov	r1, r9
	ldrb	r2, [r4]	@ zero_extendqisi2
	mov	r3, r10
	mov	r0, r5
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	fp
	ldr	r3, .L38+16
	mov	lr, pc
	bx	r3
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	sub	r6, r6, #1
	bne	.L24
.L22:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	videoBuffer
	.word	drawChar4
	.word	waitForVBlank
	.word	100704256
	.word	flipPage
	.size	typeDialogue, .-typeDialogue
	.align	2
	.global	drawChoices
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChoices, %function
drawChoices:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L42
	ldr	r3, [r5]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #108]
	ldr	r4, .L42+4
	mov	r3, #254
	mov	r1, #112
	mov	r0, #12
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	ldr	r2, [r3, #404]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #112]
	mov	r1, #136
	mov	r3, #254
	mov	r0, #12
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	currentTarget
	.word	drawString4
	.size	drawChoices, .-drawChoices
	.align	2
	.global	drawSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSelector, %function
drawSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L49
	ldr	r3, [r3]
	cmp	r3, #0
	sub	sp, sp, #8
	beq	.L45
	cmp	r3, #1
	bne	.L44
	mov	r2, #4
	ldr	r3, .L49+4
	mov	r0, r2
	mov	r1, #136
	str	r3, [sp]
	ldr	r4, .L49+8
	mov	r3, #8
	mov	lr, pc
	bx	r4
	mov	r3, #255
	mov	r2, #4
	str	r3, [sp]
	mov	r0, r2
	mov	r3, #8
	mov	r1, #112
	ldr	r4, .L49+12
	mov	lr, pc
	bx	r4
.L44:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L45:
	mov	r2, #4
	ldr	r3, .L49+4
	mov	r0, r2
	str	r3, [sp]
	mov	r1, #112
	mov	r3, #8
	ldr	r4, .L49+8
	mov	lr, pc
	bx	r4
	mov	r2, #4
	mov	r3, #255
	mov	r0, r2
	str	r3, [sp]
	mov	r1, #136
	mov	r3, #8
	ldr	r4, .L49+12
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	selectedChoice
	.word	selectorBitmap
	.word	drawImage4
	.word	drawRect4
	.size	drawSelector, .-drawSelector
	.align	2
	.global	selectChoice
	.syntax unified
	.arm
	.fpu softvfp
	.type	selectChoice, %function
selectChoice:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawDialogueUI
	ldr	r3, .L60
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L52
	cmp	r3, #1
	ldr	r3, .L60+4
	ldr	r2, [r3]
	ldr	r3, [r2, #404]
	addeq	r3, r2, r3, lsl #5
	ldreq	r3, [r3, #92]
	streq	r3, [r2, #404]
.L54:
	add	r3, r2, r3, lsl #5
	ldr	r1, [r3, #100]
	cmp	r1, #0
	movne	r1, #1
	strne	r1, [r2, #412]
	mov	r0, #124
	ldr	r2, [r3, #104]
	mov	r1, #16
	mov	r3, #254
	pop	{r4, lr}
	b	typeDialogue
.L52:
	ldr	r3, .L60+4
	ldr	r2, [r3]
	ldr	r3, [r2, #404]
	add	r3, r2, r3, lsl #5
	ldr	r3, [r3, #88]
	str	r3, [r2, #404]
	b	.L54
.L61:
	.align	2
.L60:
	.word	selectedChoice
	.word	currentTarget
	.size	selectChoice, .-selectChoice
	.comm	selectedChoice,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
