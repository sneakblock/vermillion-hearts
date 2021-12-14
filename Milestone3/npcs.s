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
	.ascii	"Cloud:\000"
	.text
	.align	2
	.global	initCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCloud, %function
initCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r0, .L6
	ldr	r2, .L6+4
	str	r3, [r0, #60]
	str	r3, [r0, #64]
	str	r2, [r0, #1728]
	bx	lr
.L7:
	.align	2
.L6:
	.word	cloud
	.word	.LC0
	.size	initCloud, .-initCloud
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"Plant Merchant:\000"
	.align	2
.LC2:
	.ascii	"I like plants. Wow I sure do. I love plants so much"
	.ascii	" that I can't even handle it haha. Plants really ar"
	.ascii	"e my favorite!\000"
	.align	2
.LC3:
	.ascii	"I hate plants.\000"
	.align	2
.LC4:
	.ascii	"I love plants, too.\000"
	.align	2
.LC5:
	.ascii	"How could you say that? Plants bring us life, light"
	.ascii	", and joy. :(\000"
	.align	2
.LC6:
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
	ldr	r0, .L10
	str	r4, [r0, #56]
	ldr	r4, .L10+4
	str	r4, [r0, #72]
	ldr	r4, .L10+8
	str	r4, [r0, #76]
	ldr	r4, .L10+12
	str	r4, [r0, #1728]
	ldr	r4, .L10+16
	str	r4, [r0, #104]
	ldr	r4, .L10+20
	str	r4, [r0, #108]
	ldr	r4, .L10+24
	str	r4, [r0, #112]
	ldr	r4, .L10+28
	str	r4, [r0, #136]
	ldr	r4, .L10+32
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
	str	r3, [r0, #1684]
	str	r1, [r0, #60]
	str	r1, [r0, #92]
	str	lr, [r0, #16]
	str	r3, [r0, #1688]
	str	r2, [r0, #1732]
	str	r3, [r0, #1696]
	str	r2, [r0, #1780]
	str	ip, [r0, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	plantMerchant
	.word	talkingheadtestBitmap
	.word	talkingheadtestPal
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	initPlantMerchant, .-initPlantMerchant
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"Seer:\000"
	.align	2
.LC8:
	.ascii	"When I was a boy, these flickering crags were divin"
	.ascii	"g clear rivers and high green blades of sweet smell"
	.ascii	"ing grass.\000"
	.align	2
.LC9:
	.ascii	"A young hero would come again and again to us, to l"
	.ascii	"et us drink our dreams from the cup his long tales."
	.ascii	" He would always move on.\000"
	.align	2
.LC10:
	.ascii	"My brother, older than I. He, even as a boy, saw al"
	.ascii	"l the colors of the world. Find him.\000"
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
	push	{r4, r5, r6, lr}
	mov	r2, #1
	mov	lr, #3
	mov	r3, #0
	mov	r6, #8
	mov	r5, #16
	mov	r4, #512
	mov	ip, #242
	mov	r1, #174
	ldr	r0, .L14
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #60]
	str	r2, [r0, #160]
	str	lr, [r0, #56]
	ldr	r2, .L14+4
	ldr	lr, .L14+8
	str	r2, [r0, #76]
	str	lr, [r0, #72]
	ldr	r2, .L14+12
	ldr	lr, .L14+16
	str	r2, [r0, #104]
	str	lr, [r0, #1728]
	ldr	r2, .L14+20
	ldr	lr, .L14+24
	str	r6, [r0, #28]
	str	r5, [r0, #32]
	str	r4, [r0, #80]
	str	lr, [r0, #136]
	str	r2, [r0, #168]
	str	ip, [r0, #16]
	str	r1, [r0, #12]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #84]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #116]
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r3, [r0, #148]
	str	r3, [r0, #164]
	str	r3, [r0, #1684]
	str	r3, [r0, #1688]
	str	r3, [r0, #1780]
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	seer
	.word	seerPal
	.word	seerBitmap
	.word	.LC8
	.word	.LC7
	.word	.LC10
	.word	.LC9
	.size	initSeer, .-initSeer
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"Knight:\000"
	.align	2
.LC12:
	.ascii	"Away.\000"
	.align	2
.LC13:
	.ascii	"Who am I?\000"
	.align	2
.LC14:
	.ascii	"I need to see the Dutchess.\000"
	.align	2
.LC15:
	.ascii	"I have instructions to let the protagonist pass. Yo"
	.ascii	"u are not that young man, wretch.\000"
	.align	2
.LC16:
	.ascii	"Back away from me, child of the static mist. You, l"
	.ascii	"ike the rest, are an artifact of the failing silver"
	.ascii	" sun.\000"
	.align	2
.LC17:
	.ascii	"Silver sun...\000"
	.align	2
.LC18:
	.ascii	"I am a man.\000"
	.align	2
.LC19:
	.ascii	"In Royal Court they know of it. A silver disk, it s"
	.ascii	"ends energy at intervals, it is the clock of the wo"
	.ascii	"rld. It is slowing, now. The Dutchess seeks a solut"
	.ascii	"ion.\000"
	.align	2
.LC20:
	.ascii	"You may speak true. Perhaps, when things were right"
	.ascii	", you were. Though you are not any longer.\000"
	.align	2
.LC21:
	.ascii	"Morwenna, I remember how you threw rose petals like"
	.ascii	" rubies across my path at my knighting.\000"
	.align	2
.LC22:
	.ascii	"I hope the static comes over us quickly, now. I can"
	.ascii	"not bear to turn you away, though I must.\000"
	.align	2
.LC23:
	.ascii	"Close your eyes and let the last scents of summer c"
	.ascii	"ome over you. I am sorry.\000"
	.align	2
.LC24:
	.ascii	"...Yes?\000"
	.align	2
.LC25:
	.ascii	"On orders from the Dutchess to pass.\000"
	.align	2
.LC26:
	.ascii	"Stand aside.\000"
	.align	2
.LC27:
	.ascii	"Her decree was that none would come back from this "
	.ascii	"place. Have you forgotten your vows?\000"
	.align	2
.LC28:
	.ascii	"We have slain the source of the rot.\000"
	.align	2
.LC29:
	.ascii	"I am to investigate the death of the silversun.\000"
	.align	2
.LC30:
	.ascii	"Away, spectre! There is no slaying atrophy.\000"
	.align	2
.LC31:
	.ascii	"I understand. What might rekindle our memory's fire"
	.ascii	"?\000"
	.align	2
.LC32:
	.ascii	"I am not at liberty to say.\000"
	.align	2
.LC33:
	.ascii	"We must bring her to Emulsion.\000"
	.align	2
.LC34:
	.ascii	"Go safely. I am blessed by her today.\000"
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #2
	mov	r10, #16
	mov	r3, #0
	mov	r2, #1
	mov	r1, #3
	mov	lr, #8
	mov	fp, #512
	ldr	r0, .L18
	mov	r4, #9
	mov	r8, #4
	str	r9, [r0, #92]
	ldr	r9, .L18+4
	str	r9, [r0, #1700]
	ldr	r9, .L18+8
	str	r9, [r0, #1704]
	ldr	r9, .L18+12
	str	r9, [r0, #104]
	ldr	r9, .L18+16
	str	r9, [r0, #108]
	ldr	r9, .L18+20
	str	r10, [r0, #32]
	str	r9, [r0, #112]
	ldr	r10, .L18+24
	ldr	r9, .L18+28
	str	r10, [r0, #72]
	str	r9, [r0, #168]
	ldr	r10, .L18+32
	ldr	r9, .L18+36
	str	r2, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #1696]
	str	r2, [r0, #84]
	str	r2, [r0, #88]
	str	r2, [r0, #160]
	str	r2, [r0, #116]
	str	fp, [r0, #80]
	str	r10, [r0, #76]
	str	r3, [r0, #36]
	str	r3, [r0, #44]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	str	r3, [r0, #96]
	str	r3, [r0, #100]
	str	r3, [r0, #148]
	str	r3, [r0, #164]
	str	lr, [r0, #28]
	str	r1, [r0, #56]
	str	r1, [r0, #60]
	str	r9, [r0, #1728]
	str	r9, [r0, #1708]
	str	r1, [r0, #120]
	ldr	r1, .L18+40
	str	r1, [r0, #136]
	ldr	r1, .L18+44
	str	r1, [r0, #140]
	ldr	r1, .L18+48
	str	r1, [r0, #144]
	ldr	r1, .L18+52
	str	r1, [r0, #200]
	ldr	r1, .L18+56
	str	r1, [r0, #232]
	ldr	r1, .L18+60
	str	r1, [r0, #264]
	ldr	r1, .L18+64
	str	r1, [r0, #296]
	ldr	r1, .L18+68
	str	r1, [r0, #328]
	ldr	r1, .L18+72
	str	r3, [r0, #128]
	str	r3, [r0, #132]
	str	r3, [r0, #180]
	str	r2, [r0, #192]
	str	r3, [r0, #196]
	str	r3, [r0, #212]
	str	r2, [r0, #224]
	str	r3, [r0, #228]
	str	r3, [r0, #244]
	str	r3, [r0, #256]
	str	r3, [r0, #260]
	str	r3, [r0, #276]
	str	r3, [r0, #288]
	str	r3, [r0, #292]
	str	r3, [r0, #308]
	str	r2, [r0, #320]
	str	r3, [r0, #324]
	str	r2, [r0, #340]
	str	r3, [r0, #352]
	str	r3, [r0, #356]
	str	r8, [r0, #124]
	str	r4, [r0, #344]
	str	r4, [r0, #348]
	str	r1, [r0, #360]
	str	r3, [r0, #384]
	str	r3, [r0, #388]
	str	r3, [r0, #404]
	str	r3, [r0, #420]
	str	r3, [r0, #448]
	str	r3, [r0, #452]
	str	r3, [r0, #468]
	str	r3, [r0, #1712]
	str	r3, [r0, #1688]
	ldr	r3, .L18+76
	str	r3, [r0, #368]
	ldr	r3, .L18+80
	str	r3, [r0, #392]
	ldr	r3, .L18+84
	str	r3, [r0, #400]
	ldr	r3, .L18+88
	str	r3, [r0, #456]
	ldr	r3, .L18+92
	str	r3, [r0, #464]
	ldr	r3, .L18+96
	str	r3, [r0, #1724]
	mov	r3, #147
	mov	r7, #10
	mov	r6, #11
	mov	r5, #5
	mov	ip, #12
	str	r3, [r0, #16]
	mov	r3, #83
	str	r2, [r0, #372]
	str	r2, [r0, #416]
	str	r2, [r0, #436]
	str	r2, [r0, #480]
	str	r2, [r0, #484]
	str	r2, [r0, #1780]
	ldr	r2, .L18+100
	str	r2, [r0, #396]
	ldr	r2, .L18+104
	str	r2, [r0, #424]
	ldr	r2, .L18+108
	ldr	r1, .L18+112
	str	r2, [r0, #460]
	ldr	r2, .L18+116
	str	lr, [r0, #1720]
	str	r7, [r0, #376]
	str	r6, [r0, #380]
	str	r5, [r0, #1716]
	str	r1, [r0, #364]
	str	r2, [r0, #488]
	str	ip, [r0, #440]
	str	ip, [r0, #444]
	str	r3, [r0, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	knight
	.word	.LC0
	.word	.LC1
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	knightBitmap
	.word	.LC15
	.word	knightPal
	.word	.LC11
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC26
	.word	.LC27
	.word	.LC29
	.word	.LC31
	.word	.LC33
	.word	openGate
	.word	.LC28
	.word	.LC30
	.word	.LC32
	.word	.LC25
	.word	.LC34
	.size	initKnight, .-initKnight
	.comm	knight,1784,4
	.comm	seer,1784,4
	.comm	plantMerchant,1784,4
	.comm	cloud,1784,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
