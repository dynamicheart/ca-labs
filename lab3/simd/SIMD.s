	.file	"SIMD.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movdqa	.LC0(%rip), %xmm1
	movl	$a, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	addq	$16, %rax
	movdqa	-16(%rax), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	$a+4194304, %rax
	jne	.L2
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
	.comm	a,4194304,32
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1
	.long	1
	.long	1
	.long	1
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
