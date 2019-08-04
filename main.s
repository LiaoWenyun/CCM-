	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"main.c"
	.global	__aeabi_f2d
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"base_2_log(%f): %f\012\000"
	.text
	.align	2
	.global	test_log_2
	.type	test_log_2, %function
test_log_2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L5+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L2
.L3:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L5
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #15
	bl	fix_binary_log
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L5+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L5+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L2:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L3
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L6:
	.align	3
.L5:
	.word	-1632115060
	.word	1063816919
	.word	1048576000
	.word	1191182336
	.word	.LC0
	.size	test_log_2, .-test_log_2
	.section	.rodata
	.align	2
.LC1:
	.ascii	"base_e_log(%f): %f\012\000"
	.text
	.align	2
	.global	test_ln
	.type	test_ln, %function
test_ln:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L11+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L8
.L9:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L11
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #15
	bl	fix_ln_log
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L11+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L11+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L8:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L9
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	-842610736
	.word	1063817402
	.word	1048576000
	.word	1191182336
	.word	.LC1
	.size	test_ln, .-test_ln
	.section	.rodata
	.align	2
.LC2:
	.ascii	"base_10_log(%f): %f\012\000"
	.text
	.align	2
	.global	test_log_10
	.type	test_log_10, %function
test_log_10:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L17+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L14
.L15:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L17
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #15
	bl	fix_decimal_log
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L17+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L17+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L14:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L15
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L18:
	.align	3
.L17:
	.word	-842610736
	.word	1063817402
	.word	1048576000
	.word	1191182336
	.word	.LC2
	.size	test_log_10, .-test_log_10
	.section	.rodata
	.align	2
.LC3:
	.ascii	"2^(%f): %f\012\000"
	.text
	.align	2
	.global	test_exp_2
	.type	test_exp_2, %function
test_exp_2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L23+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L20
.L21:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L23
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #15
	bl	base_2_exp
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L23+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L23+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L20:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L21
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L24:
	.align	3
.L23:
	.word	-596540034
	.word	1064920014
	.word	0
	.word	1191182336
	.word	.LC3
	.size	test_exp_2, .-test_exp_2
	.section	.rodata
	.align	2
.LC4:
	.ascii	"e^(%f): %f\012\000"
	.text
	.align	2
	.global	test_exp_e
	.type	test_exp_e, %function
test_exp_e:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L29+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L26
.L27:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L29
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #15
	bl	base_e_exp
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L29+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L29+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L26:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L27
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L30:
	.align	3
.L29:
	.word	-596540034
	.word	1064920014
	.word	0
	.word	1191182336
	.word	.LC4
	.size	test_exp_e, .-test_exp_e
	.section	.rodata
	.align	2
.LC5:
	.ascii	"10^(%f): %f\012\000"
	.text
	.align	2
	.global	test_exp_10
	.type	test_exp_10, %function
test_exp_10:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L35+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L32
.L33:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L35
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #15
	bl	base_10_exp
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L35+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L35+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L32:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L33
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L36:
	.align	3
.L35:
	.word	-596540034
	.word	1064920014
	.word	0
	.word	1191182336
	.word	.LC5
	.size	test_exp_10, .-test_exp_10
	.section	.rodata
	.align	2
.LC6:
	.ascii	"sqrt(%f): %f\012\000"
	.text
	.align	2
	.global	test_sqrt
	.type	test_sqrt, %function
test_sqrt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L41+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L38
.L39:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L41
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #8
	bl	fix_sqrt
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L41+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L41+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L38:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L39
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L42:
	.align	3
.L41:
	.word	599233837
	.word	1067194012
	.word	1065353216
	.word	1132462080
	.word	.LC6
	.size	test_sqrt, .-test_sqrt
	.section	.rodata
	.align	2
.LC7:
	.ascii	"cubic root(%f): %f\012\000"
	.text
	.align	2
	.global	test_cubicrt
	.type	test_cubicrt, %function
test_cubicrt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #28
	ldr	r3, .L47+8	@ float
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L44
.L45:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L47
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-40]	@ float
	mov	r1, #8
	bl	fix_sqrt_3
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]	@ float
	ldr	r2, .L47+12	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L47+16
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L44:
	ldr	r3, [fp, #-44]
	cmp	r3, #19
	ble	.L45
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L48:
	.align	3
.L47:
	.word	-1246571308
	.word	1067993278
	.word	1065353216
	.word	1132462080
	.word	.LC7
	.size	test_cubicrt, .-test_cubicrt
	.section	.rodata
	.align	2
.LC8:
	.ascii	"1\000"
	.align	2
.LC9:
	.ascii	"2\000"
	.align	2
.LC10:
	.ascii	"3\000"
	.align	2
.LC11:
	.ascii	"4\000"
	.align	2
.LC12:
	.ascii	"5\000"
	.align	2
.LC13:
	.ascii	"6\000"
	.align	2
.LC14:
	.ascii	"7\000"
	.align	2
.LC15:
	.ascii	"8\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L50
	bl	test_log_2
	b	.L59
.L50:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60+4
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L52
	bl	test_ln
	b	.L59
.L52:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60+8
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L53
	bl	test_log_10
	b	.L59
.L53:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60+12
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L54
	bl	test_exp_2
	b	.L59
.L54:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60+16
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L55
	bl	test_exp_e
	b	.L59
.L55:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60+20
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L56
	bl	test_exp_10
	b	.L59
.L56:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60+24
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L57
	bl	test_sqrt
	b	.L59
.L57:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L60+28
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L59
	bl	test_cubicrt
.L59:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
