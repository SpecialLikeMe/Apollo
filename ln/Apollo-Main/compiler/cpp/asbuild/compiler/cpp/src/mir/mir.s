	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"mir.cpp"
	.def	_ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE # -- Begin function _ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE
	.p2align	4
_ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE: # @_ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE
.seh_proc _ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 104(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	104(%rsp), %rax
	movl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB0_2
# %bb.1:
	movq	$0, 112(%rsp)
	jmp	.LBB0_28
.LBB0_2:
	movq	96(%rsp), %rcx
	addq	$24, %rcx
	movq	104(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	leaq	64(%rsp), %rcx
	leaq	56(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_27
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	movq	%rax, 48(%rsp)
	cmpq	$0, 80(%rsp)
	jne	.LBB0_6
# %bb.5:
	movq	$0, 112(%rsp)
	jmp	.LBB0_28
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	48(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	subq	$7, %rax
	ja	.LBB0_25
# %bb.29:                               #   in Loop: Header=BB0_3 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	cmpb	$10, (%rax)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	cmpb	$11, (%rax)
	jne	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB0_11
.LBB0_10:
	movq	$0, 112(%rsp)
	jmp	.LBB0_28
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_25
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	48(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB0_25
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	cmpb	$8, (%rax)
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	cmpb	$9, (%rax)
	jne	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB0_17
.LBB0_16:
	movq	$0, 112(%rsp)
	jmp	.LBB0_28
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_25
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	cmpb	$8, (%rax)
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	cmpb	$9, (%rax)
	jne	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB0_22
.LBB0_21:
	movq	$0, 112(%rsp)
	jmp	.LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	movq	48(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	jmp	.LBB0_3
.LBB0_27:
	movq	80(%rsp), %rax
	movq	%rax, 112(%rsp)
.LBB0_28:
	movq	112(%rsp), %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI0_0:
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_23-.LJTI0_0
	.long	.LBB0_24-.LJTI0_0
	.long	.LBB0_24-.LJTI0_0
	.text
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$56, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	imulq	$56, (%rsp), %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$64, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.globl	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_: # @_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.globl	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_: # @_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
.seh_proc _ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp1-.Ltmp0                   # Subsection size
.Ltmp0:
	.short	.Ltmp3-.Ltmp2                   # Record length
.Ltmp2:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp3:
	.short	.Ltmp5-.Ltmp4                   # Record length
.Ltmp4:
	.short	4412                            # Record kind: S_COMPILE3
	.long	1                               # Flags and language
	.short	208                             # CPUType
	.short	22                              # Frontend version
	.short	1
	.short	4
	.short	0
	.short	22014                           # Backend version
	.short	0
	.short	0
	.short	0
	.asciz	"clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)" # Null-terminated compiler version string
	.p2align	2, 0x0
.Ltmp5:
.Ltmp1:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
