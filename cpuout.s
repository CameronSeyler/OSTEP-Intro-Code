	.file	"cpu.c"
	.section	.rodata
.LC0:
	.string	"common.h"
.LC1:
	.string	"rc == 0"
	.text
	.globl	GetTime
	.type	GetTime, @function
GetTime:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L2
	movl	$__PRETTY_FUNCTION__.3244, %ecx
	movl	$11, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L2:
	movq	-16(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	GetTime, .-GetTime
	.globl	Spin
	.type	Spin, @function
Spin:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, %eax
	call	GetTime
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L5:
	movl	$0, %eax
	call	GetTime
	movapd	%xmm0, %xmm1
	subsd	-8(%rbp), %xmm1
	cvtsi2sd	-20(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Spin, .-Spin
	.globl	Pthread_create
	.type	Pthread_create, @function
Pthread_create:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L6
	movl	$__PRETTY_FUNCTION__.3260, %ecx
	movl	$24, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Pthread_create, .-Pthread_create
	.globl	Pthread_join
	.type	Pthread_join, @function
Pthread_join:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_join
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L8
	movl	$__PRETTY_FUNCTION__.3266, %ecx
	movl	$29, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Pthread_join, .-Pthread_join
	.globl	Pthread_mutex_lock
	.type	Pthread_mutex_lock, @function
Pthread_mutex_lock:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L10
	movl	$__PRETTY_FUNCTION__.3271, %ecx
	movl	$34, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Pthread_mutex_lock, .-Pthread_mutex_lock
	.globl	Pthread_mutex_unlock
	.type	Pthread_mutex_unlock, @function
Pthread_mutex_unlock:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L12
	movl	$__PRETTY_FUNCTION__.3276, %ecx
	movl	$39, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Pthread_mutex_unlock, .-Pthread_mutex_unlock
	.globl	Pthread_mutex_init
	.type	Pthread_mutex_init, @function
Pthread_mutex_init:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_mutex_init
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L14
	movl	$__PRETTY_FUNCTION__.3282, %ecx
	movl	$44, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Pthread_mutex_init, .-Pthread_mutex_init
	.section	.rodata
.LC3:
	.string	"usage: cpu <string>\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$2, -20(%rbp)
	je	.L17
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L17:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	$1, %edi
	call	Spin
	jmp	.L18
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3244, @object
	.size	__PRETTY_FUNCTION__.3244, 8
__PRETTY_FUNCTION__.3244:
	.string	"GetTime"
	.type	__PRETTY_FUNCTION__.3260, @object
	.size	__PRETTY_FUNCTION__.3260, 15
__PRETTY_FUNCTION__.3260:
	.string	"Pthread_create"
	.type	__PRETTY_FUNCTION__.3266, @object
	.size	__PRETTY_FUNCTION__.3266, 13
__PRETTY_FUNCTION__.3266:
	.string	"Pthread_join"
	.align 16
	.type	__PRETTY_FUNCTION__.3271, @object
	.size	__PRETTY_FUNCTION__.3271, 19
__PRETTY_FUNCTION__.3271:
	.string	"Pthread_mutex_lock"
	.align 16
	.type	__PRETTY_FUNCTION__.3276, @object
	.size	__PRETTY_FUNCTION__.3276, 21
__PRETTY_FUNCTION__.3276:
	.string	"Pthread_mutex_unlock"
	.align 16
	.type	__PRETTY_FUNCTION__.3282, @object
	.size	__PRETTY_FUNCTION__.3282, 19
__PRETTY_FUNCTION__.3282:
	.string	"Pthread_mutex_init"
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
