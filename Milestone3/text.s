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
	.file	"text.c"
	.text
	.align	2
	.global	drawString
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawString, %function
drawString:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r2]	@ zero_extendqisi2
	cmp	r3, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	lr, #0
	lsl	ip, r1, #16
	ldr	r3, .L11
	lsr	ip, ip, #16
.L3:
	strh	r0, [r3, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	add	r0, r0, #8
	bne	.L3
	ldr	lr, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	shadowOAM
	.size	drawString, .-drawString
	.align	2
	.global	drawChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChar, %function
drawChar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L14
	strh	r1, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L15:
	.align	2
.L14:
	.word	shadowOAM
	.size	drawChar, .-drawChar
	.align	2
	.global	hideText
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideText, %function
hideText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L20
.L17:
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #728
	bne	.L17
	bx	lr
.L21:
	.align	2
.L20:
	.word	shadowOAM+256
	.size	hideText, .-hideText
	.ident	"GCC: (devkitARM release 53) 9.1.0"
