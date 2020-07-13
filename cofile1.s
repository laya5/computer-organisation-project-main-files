	.file	"sd.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%d\0"
.LC1:
	.ascii "%d%d\12\0"
.LC2:
	.ascii "%c\0"
.LC3:
	.ascii "%d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	-84(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	scanf
	movl	$0, -52(%rbp)
	jmp	.L2
.L7:
	movq	%rsp, %rax
	movq	%rax, %rdi
	leaq	-92(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rbx
	movl	$0, %esi
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	cltq
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -56(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L3
.L6:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	movq	-80(%rbp), %rdx
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	$48, %al
	jne	.L4
	addl	$1, -60(%rbp)
	jmp	.L5
.L4:
	movl	-92(%rbp), %eax
	subl	%eax, -60(%rbp)
	movl	-92(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	addl	%eax, -64(%rbp)
	movl	$0, -60(%rbp)
.L5:
	addl	$1, -56(%rbp)
.L3:
	movl	-88(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L6
	movl	-92(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movq	%rdi, %rsp
	addl	$1, -52(%rbp)
.L2:
	movl	-84(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L7
	movl	$0, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (tdm64-1) 4.9.2"
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
