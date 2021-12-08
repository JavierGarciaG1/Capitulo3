@ Practicas Capitulo 3
@ Archivo 3-1.s
@ Nombre: garcia gomez javier Ernesto
@ Descripcion: Minimo de un vector
@ Fecha: 8 diciembre 2021


	.type	minimo, %function
.global main

main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	mov	r1, #8
	ldr	r0, .L7
	bl	minimo
	mov	r3, r0
	mov	r1, r3
	ldr	r0, .L7+4
	bl	printf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
minimo:
	
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L2
.L4:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	ble	.L3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L4
	ldr	r3, [fp, #-12]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	minimo, .-minimo
	.global	vect
	.data
	.align	2
	.type	vect, %object
	.size	vect, 32
vect:
	.word	8
	.word	10
	.word	-3
	.word	4
	.word	-5
	.word	50
	.word	2
	.word	3
	.section	.rodata
	.align	2
.LC0:
	.ascii	" %d\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function

.L8:
	.align	2
.L7:
	.word	vect
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"

