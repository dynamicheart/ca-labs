	.file	"proc2.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$131128, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movl	$0, %r13d
	movl	$0, %ebx
	movl	$0, %r12d
	movl	$0, %ebx
	jmp	.L2
.L5:
	movl	$1, %r12d
	jmp	.L3
.L4:
	movl	%r13d, %eax
	leal	1(%rax), %r13d
	movslq	%ebx, %rdx
	movslq	%r12d, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movl	%eax, -131152(%rbp,%rdx,4)
	addl	$1, %r12d
.L3:
	cmpl	$4096, %r12d
	jle	.L4
	addl	$1, %ebx
.L2:
	cmpl	$7, %ebx
	jle	.L5
	movl	$0, %eax
	movq	-40(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L7
	call	__stack_chk_fail
.L7:
	addq	$131128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
