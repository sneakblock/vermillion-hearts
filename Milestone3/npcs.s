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
	.file	"npcs.c"
	.text
	.align	2
	.global	openGate
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	openGate, %function
openGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	ldr	r2, .L3+4
	ldr	r3, [r3]
	str	r2, [r3, #4]
	bx	lr
.L4:
	.align	2
.L3:
	.word	currentLevel
	.word	level0collisionmap2Bitmap
	.size	openGate, .-openGate
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Plant Merchant:\000"
	.align	2
.LC1:
	.ascii	"I like plants. Wow I sure do. I love plants so much"
	.ascii	" that I can't even handle it haha. Plants really ar"
	.ascii	"e my favorite!\000"
	.align	2
.LC2:
	.ascii	"I hate plants.\000"
	.align	2
.LC3:
	.ascii	"I love plants, too.\000"
	.align	2
.LC4:
	.ascii	"How could you say that? Plants bring us life, light"
	.ascii	", and joy. :(\000"
	.align	2
.LC5:
	.ascii	"I'm so happy to hear that! I'm glad that they bring"
	.ascii	" you joy the same way they do for me!\000"
	.text
	.align	2
	.global	initPlantMerchant
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlantMerchant, %function
initPlantMerchant:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, #3
	mov	r3, #0
	mov	r2, #1
	mov	r7, #8
	mov	r6, #16
	mov	r5, #512
	mov	r1, #2
	mov	lr, #73
	mov	ip, #168
	ldr	r0, .L7
	str	r4, [r0, #56]
	ldr	r4, .L7+4
	str	r4, [r0, #72]
	ldr	r4, .L7+8
	str	r4, [r0, #76]
	ldr	r4, .L7+12
	str	r4, [r0, #420]
	ldr	r4, .L7+16
	str	r4, [r0, #104]
	ldr	r4, .L7+20
	str	r4, [r0, #108]
	ldr	r4, .L7+24
	str	r4, [r0, #112]
	ldr	r4, .L7+28
	str	r4, [r0, #136]
	ldr	r4, .L7+32
	str	r7, [r0, #28]
	str	r6, [r0, #32]
	str	r5, [r0, #80]
	str	r4, [r0, #168]
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #84]
	str	r2, [r0, #88]
	str	r2, [r0, #128]
	str	r2, [r0, #160]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #116]
	str	r3, [r0, #132]
	str	r3, [r0, #148]
	str	r3, [r0, #164]
	str	r3, [r0, #404]
	str	r1, [r0, #60]
	str	r1, [r0, #92]
	str	lr, [r0, #16]
	str	r3, [r0, #408]
	str	r2, [r0, #424]
	str	ip, [r0, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	plantMerchant
	.word	talkingheadtestBitmap
	.word	talkingheadtestPal
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.size	initPlantMerchant, .-initPlantMerchant
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"Seer:\000"
	.align	2
.LC7:
	.ascii	"When I was a boy, these flickering crags were divin"
	.ascii	"g clear rivers and high green blades of sweet smell"
	.ascii	"ing grass.\000"
	.align	2
.LC8:
	.ascii	"A young hero would come again and again to us, to l"
	.ascii	"et us drink our dreams from the cup his long tales."
	.ascii	" He would always move on.\000"
	.align	2
.LC9:
	.ascii	"Are you that hero, now?\000"
	.align	2
.LC10:
	.ascii	"I am.\000"
	.align	2
.LC11:
	.ascii	"I am not and never was.\000"
	.align	2
.LC12:
	.ascii	"I see that now, as I see all the colours of this wo"
	.ascii	"rld. I shall obliterate the gate for you.\000"
	.align	2
.LC13:
	.ascii	"I see.\000"
	.text
	.align	2
	.global	initSeer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSeer, %function
initSeer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, #16
	mov	r3, #0
	mov	r2, #1
	mov	r1, #3
	mov	r7, #8
	mov	r6, #512
	mov	r5, #4
	mov	lr, #242
	mov	ip, #174
	ldr	r0, .L11
	str	r4, [r0, #32]
	ldr	r4, .L11+4
	str	r4, [r0, #72]
	ldr	r4, .L11+8
	str	r4, [r0, #76]
	ldr	r4, .L11+12
	str	r4, [r0, #420]
	ldr	r4, .L11+16
	str	r4, [r0, #104]
	ldr	r4, .L11+20
	str	r4, [r0, #136]
	ldr	r4, .L11+24
	str	r4, [r0, #168]
	ldr	r4, .L11+28
	str	r4, [r0, #172]
	ldr	r4, .L11+32
	str	r7, [r0, #28]
	str	r6, [r0, #80]
	str	r5, [r0, #156]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #84]
	str	r3, [r0, #96]
	str	r4, [r0, #176]
	str	r3, [r0, #100]
	ldr	r4, .L11+36
	str	r3, [r0, #116]
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r3, [r0, #160]
	str	r3, [r0, #164]
	str	r3, [r0, #180]
	str	r1, [r0, #56]
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #60]
	str	r2, [r0, #148]
	str	r1, [r0, #152]
	ldr	r1, .L11+40
	str	r3, [r0, #212]
	str	r3, [r0, #228]
	str	r3, [r0, #404]
	str	r3, [r0, #408]
	ldr	r3, .L11+44
	str	r4, [r0, #200]
	str	lr, [r0, #16]
	str	r2, [r0, #192]
	str	r2, [r0, #196]
	str	r2, [r0, #224]
	str	r1, [r0, #232]
	str	ip, [r0, #12]
	str	r3, [r0, #416]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	seer
	.word	seerBitmap
	.word	seerPal
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	openGate
	.size	initSeer, .-initSeer
	.section	.rodata.str1.4
	.align	2
.LC14:
	.ascii	"Knight:\000"
	.align	2
.LC15:
	.ascii	"I am sorry. You, like the rest, must stay here and "
	.ascii	"let the decay take you. I, sworn to protect the dut"
	.ascii	"chess, have orders not to let this scourge reach he"
	.ascii	"r.\000"
	.align	2
.LC16:
	.ascii	"Who am I?\000"
	.align	2
.LC17:
	.ascii	"I feel as if I need to see her.\000"
	.align	2
.LC18:
	.ascii	"I have some memory of letting a young man pass... s"
	.ascii	"ome quest. Or, love. I cannot remember. You are not"
	.ascii	" that young man, wretch.\000"
	.align	2
.LC19:
	.ascii	"Back away from me, child of the static mist. You, l"
	.ascii	"ike the rest, are an artifact of the failing silver"
	.ascii	" sun.\000"
	.align	2
.LC20:
	.ascii	"Silver sun...\000"
	.align	2
.LC21:
	.ascii	"I am that young hero.\000"
	.align	2
.LC22:
	.ascii	"In Royal Court they know of it. A silver disk, it s"
	.ascii	"ends energy at intervals, it is the clock of the wo"
	.ascii	"rld. It is slowing, now. The dutchess seeks a solut"
	.ascii	"ion, though you and the rest here are doomed.\000"
	.align	2
.LC23:
	.ascii	"You may speak true. Perhaps, when things were right"
	.ascii	", you were. Though you are not any longer. I cannot"
	.ascii	" let you, or the rest, through. It is our only hope"
	.ascii	".\000"
	.text
	.align	2
	.global	initKnight
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKnight, %function
initKnight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #16
	mov	r3, #0
	mov	r2, #1
	mov	r1, #3
	mov	r8, #8
	mov	r7, #512
	mov	r6, #2
	mov	r5, #4
	mov	lr, #147
	mov	ip, #83
	ldr	r0, .L15
	str	r4, [r0, #32]
	ldr	r4, .L15+4
	str	r4, [r0, #72]
	ldr	r4, .L15+8
	str	r4, [r0, #76]
	ldr	r4, .L15+12
	str	r4, [r0, #420]
	ldr	r4, .L15+16
	str	r4, [r0, #104]
	ldr	r4, .L15+20
	str	r4, [r0, #108]
	ldr	r4, .L15+24
	str	r4, [r0, #112]
	ldr	r4, .L15+28
	str	r4, [r0, #168]
	ldr	r4, .L15+32
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #84]
	str	r2, [r0, #88]
	str	r2, [r0, #160]
	str	r2, [r0, #116]
	str	r8, [r0, #28]
	str	r7, [r0, #80]
	str	r6, [r0, #92]
	str	r5, [r0, #124]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #148]
	str	r3, [r0, #164]
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r1, [r0, #56]
	str	r1, [r0, #60]
	str	r1, [r0, #120]
	str	r4, [r0, #136]
	str	r3, [r0, #180]
	ldr	r4, .L15+36
	str	r2, [r0, #192]
	str	r3, [r0, #196]
	str	r3, [r0, #212]
	str	r2, [r0, #224]
	ldr	r1, .L15+40
	str	r3, [r0, #228]
	str	r3, [r0, #404]
	str	r3, [r0, #408]
	ldr	r2, .L15+44
	ldr	r3, .L15+48
	str	r4, [r0, #140]
	str	lr, [r0, #16]
	str	r1, [r0, #144]
	str	r2, [r0, #200]
	str	r3, [r0, #232]
	str	ip, [r0, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	knight
	.word	knightBitmap
	.word	knightPal
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.size	initKnight, .-initKnight
	.comm	knight,472,4
	.comm	seer,472,4
	.comm	plantMerchant,472,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
