	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"apollo_gc_cards.cpp"
	.def	_ZN6apollo2gc17global_card_tableEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc17global_card_tableEv # -- Begin function _ZN6apollo2gc17global_card_tableEv
	.p2align	4
_ZN6apollo2gc17global_card_tableEv:     # @_ZN6apollo2gc17global_card_tableEv
.seh_proc _ZN6apollo2gc17global_card_tableEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	cmpb	$0, _ZGVZN6apollo2gc17global_card_tableEvE4inst(%rip)
	jne	.LBB0_3
# %bb.1:
	leaq	_ZGVZN6apollo2gc17global_card_tableEvE4inst(%rip), %rcx
	callq	__cxa_guard_acquire
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	leaq	__dtor__ZZN6apollo2gc17global_card_tableEvE4inst(%rip), %rcx
	callq	atexit
	leaq	_ZGVZN6apollo2gc17global_card_tableEvE4inst(%rip), %rcx
	callq	__cxa_guard_release
.LBB0_3:
	leaq	_ZZN6apollo2gc17global_card_tableEvE4inst(%rip), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc9CardTableD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc9CardTableD2Ev,"xr",discard,_ZN6apollo2gc9CardTableD2Ev
	.globl	_ZN6apollo2gc9CardTableD2Ev     # -- Begin function _ZN6apollo2gc9CardTableD2Ev
	.p2align	4
_ZN6apollo2gc9CardTableD2Ev:            # @_ZN6apollo2gc9CardTableD2Ev
.seh_proc _ZN6apollo2gc9CardTableD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	__dtor__ZZN6apollo2gc17global_card_tableEvE4inst;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function __dtor__ZZN6apollo2gc17global_card_tableEvE4inst
__dtor__ZZN6apollo2gc17global_card_tableEvE4inst: # @__dtor__ZZN6apollo2gc17global_card_tableEvE4inst
.seh_proc __dtor__ZZN6apollo2gc17global_card_tableEvE4inst
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	_ZZN6apollo2gc17global_card_tableEvE4inst(%rip), %rcx
	callq	_ZN6apollo2gc9CardTableD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc9CardTable8index_ofEPKv;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZNK6apollo2gc9CardTable8index_ofEPKv # -- Begin function _ZNK6apollo2gc9CardTable8index_ofEPKv
	.p2align	4
_ZNK6apollo2gc9CardTable8index_ofEPKv:  # @_ZNK6apollo2gc9CardTable8index_ofEPKv
.seh_proc _ZNK6apollo2gc9CardTable8index_ofEPKv
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	cmpq	8(%rcx), %rax
	jae	.LBB3_2
# %bb.1:
	movq	$-1, 80(%rsp)
	jmp	.LBB3_5
.LBB3_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rax
	subq	8(%rcx), %rax
	shrq	$9, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB3_4
# %bb.3:
	movq	$-1, 80(%rsp)
	jmp	.LBB3_5
.LBB3_4:
	movq	48(%rsp), %rax
	movq	%rax, 80(%rsp)
.LBB3_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc9CardTable7grow_toEy;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc9CardTable7grow_toEy # -- Begin function _ZN6apollo2gc9CardTable7grow_toEy
	.p2align	4
_ZN6apollo2gc9CardTable7grow_toEy:      # @_ZN6apollo2gc9CardTable7grow_toEy
.seh_proc _ZN6apollo2gc9CardTable7grow_toEy
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax
	cmpq	16(%rcx), %rax
	ja	.LBB5_2
# %bb.1:
	jmp	.LBB5_9
.LBB5_2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rax
	subq	8(%rcx), %rax
	addq	$512, %rax                      # imm = 0x200
	subq	$1, %rax
	shrq	$9, %rax
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rcx
	leaq	_ZN6apollo2gc12_GLOBAL__N_113kInitialCardsE(%rip), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 96(%rsp)
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	cmpq	96(%rsp), %rax
	jae	.LBB5_8
# %bb.3:
	movq	96(%rsp), %rdx
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey
	movq	$0, 64(%rsp)
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	movq	64(%rsp), %rdx
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	addq	$24, %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	movq	%rax, %rcx
	xorl	%edx, %edx
	callq	_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	xorl	%r8d, %r8d
	callq	_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	movq	64(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB5_4
.LBB5_7:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
.LBB5_8:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	96(%rsp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
.LBB5_9:
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_,"xr",discard,_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.globl	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_ # -- Begin function _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.p2align	4
_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_: # @_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
.seh_proc _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey
.Lfunc_begin0:
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_
	movq	64(%rsp), %rdx
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_
	cmpq	$0, 88(%rsp)
	jbe	.LBB7_5
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
.Ltmp0:                                 # EH_LABEL
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB7_2
.LBB7_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
.Ltmp2:                                 # EH_LABEL
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
.Ltmp3:                                 # EH_LABEL
	jmp	.LBB7_3
.LBB7_3:
	jmp	.LBB7_5
.LBB7_4:
.Ltmp4:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
	jmp	.LBB7_6
.LBB7_5:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB7_6:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table7:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp3             #   Call between .Ltmp3 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	addq	(%rsp), %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE,"xr",discard,_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
	.globl	_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE # -- Begin function _ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
	.p2align	4
_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE: # @_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
.seh_proc _ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 47(%rsp)
	movl	%r8d, 40(%rsp)
	movq	48(%rsp), %rcx
	movb	47(%rsp), %dl
	movl	40(%rsp), %r8d
	callq	_ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE,"xr",discard,_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	.globl	_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE # -- Begin function _ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	.p2align	4
_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE: # @_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
.seh_proc _ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	44(%rsp), %edx
	callq	_ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_ # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rdx
	movb	55(%rsp), %r8b
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
.Lfunc_begin1:
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp5:                                 # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_
.Ltmp6:                                 # EH_LABEL
	jmp	.LBB12_1
.LBB12_1:
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB12_2:
.Ltmp7:                                 # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table12:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin1           #     jumps to .Ltmp7
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZN6apollo2gc9CardTable14register_rangeEPKvS3_;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc9CardTable14register_rangeEPKvS3_ # -- Begin function _ZN6apollo2gc9CardTable14register_rangeEPKvS3_
	.p2align	4
_ZN6apollo2gc9CardTable14register_rangeEPKvS3_: # @_ZN6apollo2gc9CardTable14register_rangeEPKvS3_
.Lfunc_begin2:
.seh_proc _ZN6apollo2gc9CardTable14register_rangeEPKvS3_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB13_1
	jmp	.LBB13_4
.LBB13_1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	72(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	64(%rsp), %rdx
.Ltmp10:                                # EH_LABEL
	callq	_ZN6apollo2gc9CardTable7grow_toEy
.Ltmp11:                                # EH_LABEL
	jmp	.LBB13_2
.LBB13_2:
	movl	$1, 40(%rsp)
	jmp	.LBB13_10
.LBB13_3:
.Ltmp12:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 48(%rsp)
	movl	%eax, 44(%rsp)
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	jmp	.LBB13_12
.LBB13_4:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	cmpq	8(%rcx), %rax
	jae	.LBB13_6
# %bb.5:
	movl	$1, 40(%rsp)
	jmp	.LBB13_10
.LBB13_6:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rax
	cmpq	16(%rcx), %rax
	jbe	.LBB13_9
# %bb.7:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx
.Ltmp8:                                 # EH_LABEL
	callq	_ZN6apollo2gc9CardTable7grow_toEy
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB13_8
.LBB13_8:
	jmp	.LBB13_9
.LBB13_9:
	movl	$0, 40(%rsp)
.LBB13_10:
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	nop
# %bb.11:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB13_12:
	movq	48(%rsp), %rcx
	callq	_Unwind_Resume
# %bb.13:
	int3
.Lfunc_end2:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table13:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp10                 #   Call between .Ltmp10 and .Ltmp9
	.uleb128 .Ltmp12-.Lfunc_begin2          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin2           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_,"xr",discard,_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
	.globl	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_ # -- Begin function _ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
	.p2align	4
_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_: # @_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.seh_proc _ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	(%rax), %rcx
	callq	_ZNSt3__15mutex4lockEv
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	(%rcx), %rax
	cmpq	8(%rcx), %rax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev,"xr",discard,_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	.globl	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev # -- Begin function _ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev: # @_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
.seh_proc _ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__15mutex6unlockEv
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc9CardTable6coversEPKv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo2gc9CardTable6coversEPKv # -- Begin function _ZNK6apollo2gc9CardTable6coversEPKv
	.p2align	4
_ZNK6apollo2gc9CardTable6coversEPKv:    # @_ZNK6apollo2gc9CardTable6coversEPKv
.seh_proc _ZNK6apollo2gc9CardTable6coversEPKv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	8(%rdx), %rcx
	movb	%al, 15(%rsp)                   # 1-byte Spill
	jb	.LBB17_2
# %bb.1:
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	16(%rsp), %rax
	cmpq	16(%rcx), %rax
	setb	%al
	movb	%al, 15(%rsp)                   # 1-byte Spill
.LBB17_2:
	movb	15(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc9CardTable10mark_dirtyEPKv;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo2gc9CardTable10mark_dirtyEPKv # -- Begin function _ZN6apollo2gc9CardTable10mark_dirtyEPKv
	.p2align	4
_ZN6apollo2gc9CardTable10mark_dirtyEPKv: # @_ZN6apollo2gc9CardTable10mark_dirtyEPKv
.seh_proc _ZN6apollo2gc9CardTable10mark_dirtyEPKv
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rdx
	callq	_ZNK6apollo2gc9CardTable8index_ofEPKv
	movq	%rax, 48(%rsp)
	cmpq	$-1, 48(%rsp)
	jne	.LBB18_2
# %bb.1:
	jmp	.LBB18_3
.LBB18_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	movq	48(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	movq	%rax, %rcx
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
	nop
.LBB18_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc9CardTable8is_dirtyEPKv;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZNK6apollo2gc9CardTable8is_dirtyEPKv # -- Begin function _ZNK6apollo2gc9CardTable8is_dirtyEPKv
	.p2align	4
_ZNK6apollo2gc9CardTable8is_dirtyEPKv:  # @_ZNK6apollo2gc9CardTable8is_dirtyEPKv
.seh_proc _ZNK6apollo2gc9CardTable8is_dirtyEPKv
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rdx
	callq	_ZNK6apollo2gc9CardTable8index_ofEPKv
	movq	%rax, 40(%rsp)
	cmpq	$-1, 40(%rsp)
	jne	.LBB19_2
# %bb.1:
	movb	$0, 71(%rsp)
	jmp	.LBB19_3
.LBB19_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	movq	%rax, %rcx
	xorl	%edx, %edx
	callq	_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	movzbl	%al, %eax
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movb	%al, 71(%rsp)
.LBB19_3:
	movb	71(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	addq	(%rsp), %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc9CardTable9clear_allEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc9CardTable9clear_allEv # -- Begin function _ZN6apollo2gc9CardTable9clear_allEv
	.p2align	4
_ZN6apollo2gc9CardTable9clear_allEv:    # @_ZN6apollo2gc9CardTable9clear_allEv
.Lfunc_begin3:
.seh_proc _ZN6apollo2gc9CardTable9clear_allEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
.Ltmp13:                                # EH_LABEL
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp14:                                # EH_LABEL
	jmp	.LBB21_1
.LBB21_1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$24, %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	movq	%rax, 48(%rsp)
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB21_3
	jmp	.LBB21_5
.LBB21_3:                               #   in Loop: Header=BB21_2 Depth=1
	leaq	56(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	callq	_ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
# %bb.4:                                #   in Loop: Header=BB21_2 Depth=1
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev
	jmp	.LBB21_2
.LBB21_5:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB21_6:
.Ltmp15:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table21:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp13-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin3          #     jumps to .Ltmp15
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	__clang_call_terminate;
	.scl	2;
	.type	32;
	.endef
	.section	.text$__clang_call_terminate,"xr",discard,__clang_call_terminate
	.globl	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.p2align	4
__clang_call_terminate:                 # @__clang_call_terminate
.seh_proc __clang_call_terminate
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_,"xr",discard,_ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_
	.globl	_ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_ # -- Begin function _ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_: # @_ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_
.seh_proc _ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc9CardTable11dirty_countEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo2gc9CardTable11dirty_countEv # -- Begin function _ZNK6apollo2gc9CardTable11dirty_countEv
	.p2align	4
_ZNK6apollo2gc9CardTable11dirty_countEv: # @_ZNK6apollo2gc9CardTable11dirty_countEv
.Lfunc_begin4:
.seh_proc _ZNK6apollo2gc9CardTable11dirty_countEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
.Ltmp16:                                # EH_LABEL
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp17:                                # EH_LABEL
	jmp	.LBB28_1
.LBB28_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	$0, 80(%rsp)
	addq	$24, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	leaq	64(%rsp), %rcx
	leaq	56(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB28_3
	jmp	.LBB28_7
.LBB28_3:                               #   in Loop: Header=BB28_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB28_5
# %bb.4:                                #   in Loop: Header=BB28_2 Depth=1
	movq	80(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
.LBB28_5:                               #   in Loop: Header=BB28_2 Depth=1
	jmp	.LBB28_6
.LBB28_6:                               #   in Loop: Header=BB28_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev
	jmp	.LBB28_2
.LBB28_7:
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB28_8:
.Ltmp18:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end4:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table28:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp16-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin4          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_
	.globl	_ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_: # @_ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_
.seh_proc _ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc15note_card_dirtyEPKv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc15note_card_dirtyEPKv # -- Begin function _ZN6apollo2gc15note_card_dirtyEPKv
	.p2align	4
_ZN6apollo2gc15note_card_dirtyEPKv:     # @_ZN6apollo2gc15note_card_dirtyEPKv
.seh_proc _ZN6apollo2gc15note_card_dirtyEPKv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	cmpq	$0, 48(%rsp)
	jne	.LBB34_2
# %bb.1:
	jmp	.LBB34_4
.LBB34_2:
	callq	_ZN6apollo2gc17global_card_tableEv
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZNK6apollo2gc9CardTable6coversEPKv
	testb	$1, %al
	jne	.LBB34_3
	jmp	.LBB34_4
.LBB34_3:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZN6apollo2gc9CardTable10mark_dirtyEPKv
	nop
.LBB34_4:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_,"xr",discard,_ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	_ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_ # -- Begin function _ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	4
_ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_: # @_ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
.seh_proc _ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movb	%r8b, 71(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	leaq	71(%rsp), %rcx
	callq	_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
	testb	$1, %al
	jne	.LBB35_1
	jmp	.LBB35_2
.LBB35_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB35_3
.LBB35_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB35_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_,"xr",discard,_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
	.globl	_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_ # -- Begin function _ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
	.p2align	4
_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_: # @_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
.seh_proc _ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rsp), %rcx
	cmpq	(%rcx), %rax
	setb	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_ # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_
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
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB39_2
# %bb.1:
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev
.LBB39_2:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rax
	movq	%rax, (%rcx)
	movq	56(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	(%rcx), %rax
	addq	64(%rsp), %rax
	movq	%rax, 16(%rcx)
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
.Lfunc_begin5:
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r8
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 64(%rsp)
.LBB40_1:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	72(%rsp), %rax
	je	.LBB40_6
# %bb.2:                                #   in Loop: Header=BB40_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp19:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_
.Ltmp20:                                # EH_LABEL
	jmp	.LBB40_3
.LBB40_3:                               #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_4
.LBB40_4:                               #   in Loop: Header=BB40_1 Depth=1
	movq	64(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	movq	%rax, 88(%rsp)
	jmp	.LBB40_1
.LBB40_5:
.Ltmp21:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB40_7
.LBB40_6:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB40_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table40:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp19-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin5          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	$1, 8(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
.Lfunc_begin6:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 8(%rax)
	jne	.LBB42_3
# %bb.1:
.Ltmp22:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp23:                                # EH_LABEL
	jmp	.LBB42_2
.LBB42_2:
	jmp	.LBB42_3
.LBB42_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB42_4:
.Ltmp24:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table42:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp22-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin6          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEC2B9nqe220103ES7_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movb	$0, 8(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin7:
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp25:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp26:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB44_1
.LBB44_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB44_2:
.Ltmp27:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table44:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp25-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin7          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin8:
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax
	addq	%rax, %r8
.Ltmp28:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp29:                                # EH_LABEL
	jmp	.LBB47_1
.LBB47_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB47_2:
.Ltmp30:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table47:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp28-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin8          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_,"xr",discard,_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.globl	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_ # -- Begin function _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.p2align	4
_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_: # @_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.seh_proc _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	shrq	$0, %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev,"xr",discard,_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	.globl	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev # -- Begin function _ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	.p2align	4
_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev: # @_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
.seh_proc _ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_,"xr",discard,_ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	_ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_ # -- Begin function _ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	4
_ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_: # @_ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
.seh_proc _ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movb	%r8b, 71(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	leaq	71(%rsp), %rcx
	callq	_ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
	testb	$1, %al
	jne	.LBB51_1
	jmp	.LBB51_2
.LBB51_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB51_3
.LBB51_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB51_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev,"xr",discard,_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	.globl	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev # -- Begin function _ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	.p2align	4
_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev: # @_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
.seh_proc _ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev,"xr",discard,_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev
	.globl	_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev # -- Begin function _ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev
	.p2align	4
_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev: # @_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev
# %bb.0:
	movq	$-1, %rax
	retq
                                        # -- End function
	.def	_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev,"xr",discard,_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev
	.globl	_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev # -- Begin function _ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev
	.p2align	4
_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev: # @_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev
# %bb.0:
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	retq
                                        # -- End function
	.def	_ZNSt3__120__throw_length_errorB9nqe220103EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.globl	_ZNSt3__120__throw_length_errorB9nqe220103EPKc # -- Begin function _ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.p2align	4
_ZNSt3__120__throw_length_errorB9nqe220103EPKc: # @_ZNSt3__120__throw_length_errorB9nqe220103EPKc
.Lfunc_begin9:
.seh_proc _ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rdx
.Ltmp31:                                # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp32:                                # EH_LABEL
	jmp	.LBB55_1
.LBB55_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB55_2:
.Ltmp33:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 56(%rsp)
	movl	%eax, 52(%rsp)
	callq	__cxa_free_exception
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table55:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin9          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp32            #   Call between .Ltmp32 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
                                        # -- End function
	.def	_ZNSt12length_errorC2B9nqe220103EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12length_errorC2B9nqe220103EPKc,"xr",discard,_ZNSt12length_errorC2B9nqe220103EPKc
	.globl	_ZNSt12length_errorC2B9nqe220103EPKc # -- Begin function _ZNSt12length_errorC2B9nqe220103EPKc
	.p2align	4
_ZNSt12length_errorC2B9nqe220103EPKc:   # @_ZNSt12length_errorC2B9nqe220103EPKc
.seh_proc _ZNSt12length_errorC2B9nqe220103EPKc
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZNSt11logic_errorC2EPKc
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	.refptr._ZTVSt12length_error(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB57_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB57_2:
	movq	40(%rsp), %rcx
	movl	$1, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y,"xr",discard,_ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y
	.globl	_ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y # -- Begin function _ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y
	.p2align	4
_ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y: # @_ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y
.seh_proc _ZNSt3__119__allocation_resultIPNS_6atomicIhEEyEC2B9nqe220103ES3_y
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZSt28__throw_bad_array_new_lengthB9nqe220103v;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt28__throw_bad_array_new_lengthB9nqe220103v,"xr",discard,_ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.globl	_ZSt28__throw_bad_array_new_lengthB9nqe220103v # -- Begin function _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.p2align	4
_ZSt28__throw_bad_array_new_lengthB9nqe220103v: # @_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.seh_proc _ZSt28__throw_bad_array_new_lengthB9nqe220103v
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	$8, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt20bad_array_new_lengthC1Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt20bad_array_new_length(%rip), %rdx
	leaq	_ZNSt20bad_array_new_lengthD1Ev(%rip), %r8
	callq	__cxa_throw
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$0, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB60_1
	jmp	.LBB60_2
.LBB60_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB60_3
.LBB60_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB60_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey,"xr",discard,_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.globl	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey # -- Begin function _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.p2align	4
_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey: # @_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
.seh_proc _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	cmpq	$16, (%rsp)
	seta	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_ # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	.globl	_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_: # @_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
.seh_proc _ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
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
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	40(%rsp), %rcx
	movq	8(%rcx), %rcx
	addq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	8(%rcx), %rdx
	movq	(%rcx), %rax
	movq	%rdx, 8(%rax)
	movq	8(%rcx), %rax
	cmpq	16(%rcx), %rax
	je	.LBB69_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB69_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin10:
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
	movq	72(%rsp), %rax
	addq	%rax, %r8
.Ltmp34:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp35:                                # EH_LABEL
	jmp	.LBB70_1
.LBB70_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB70_2:
.Ltmp36:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table70:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp34-.Lfunc_begin10         # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin10         #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movl	$1, %r8d
	callq	memset
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16atomicIhEC2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16atomicIhEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16atomicIhEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16atomicIhEC2B9nqe220103Ev
	.globl	_ZNSt3__16atomicIhEC2B9nqe220103Ev # -- Begin function _ZNSt3__16atomicIhEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16atomicIhEC2B9nqe220103Ev:     # @_ZNSt3__16atomicIhEC2B9nqe220103Ev
.seh_proc _ZNSt3__16atomicIhEC2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev,"xr",discard,_ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev
	.globl	_ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev # -- Begin function _ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev: # @_ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev
.seh_proc _ZNSt3__113__atomic_baseIhLb1EEC2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev,"xr",discard,_ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev
	.globl	_ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev # -- Begin function _ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev: # @_ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev
.seh_proc _ZNSt3__113__atomic_baseIhLb0EEC2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	xorl	%edx, %edx
	callq	_ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh,"xr",discard,_ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh
	.globl	_ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh # -- Begin function _ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh
	.p2align	4
_ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh: # @_ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh
.seh_proc _ZNSt3__117__cxx_atomic_implIhNS_22__cxx_atomic_base_implIhEEEC2B9nqe220103Eh
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 47(%rsp)
	movq	48(%rsp), %rcx
	movb	47(%rsp), %dl
	callq	_ZNSt3__122__cxx_atomic_base_implIhEC2Eh
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__cxx_atomic_base_implIhEC2Eh;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__cxx_atomic_base_implIhEC2Eh,"xr",discard,_ZNSt3__122__cxx_atomic_base_implIhEC2Eh
	.globl	_ZNSt3__122__cxx_atomic_base_implIhEC2Eh # -- Begin function _ZNSt3__122__cxx_atomic_base_implIhEC2Eh
	.p2align	4
_ZNSt3__122__cxx_atomic_base_implIhEC2Eh: # @_ZNSt3__122__cxx_atomic_base_implIhEC2Eh
.seh_proc _ZNSt3__122__cxx_atomic_base_implIhEC2Eh
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movb	%dl, 7(%rsp)
	movq	8(%rsp), %rax
	movb	7(%rsp), %cl
	movb	%cl, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin11:
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
.Ltmp37:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp38:                                # EH_LABEL
	jmp	.LBB78_1
.LBB78_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB78_2:
.Ltmp39:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table78:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp37-.Lfunc_begin11         # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin11         #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB79_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
	nop
.LBB79_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin12:
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
.Ltmp40:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp41:                                # EH_LABEL
	jmp	.LBB81_1
.LBB81_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB81_2:
.Ltmp42:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table81:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp40-.Lfunc_begin12         # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin12         #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	32(%rsp), %r8
	callq	_ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_ # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
.Lfunc_begin13:
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, 48(%rsp)
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB83_4
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	decq	%rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp43:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
.Ltmp44:                                # EH_LABEL
	jmp	.LBB83_3
.LBB83_3:                               #   in Loop: Header=BB83_1 Depth=1
	jmp	.LBB83_1
.LBB83_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB83_5:
.Ltmp45:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table83:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp43-.Lfunc_begin13         # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin13         #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y,"xr",discard,_ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y
	.globl	_ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y # -- Begin function _ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y
	.p2align	4
_ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y: # @_ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y
.seh_proc _ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$0, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB87_1
	jmp	.LBB87_2
.LBB87_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB87_3
.LBB87_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB87_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movb	%r8b, 71(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	48(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	48(%rsp), %rax
	movq	$0, 16(%rax)
	movq	48(%rsp), %rax
	movq	$0, 8(%rax)
	movq	48(%rsp), %rax
	movq	$0, (%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpq	$0, (%rax)
	je	.LBB89_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	(%rcx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
.LBB89_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_ # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movb	%r8b, 23(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_ # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_ # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
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
	.def	_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_,"xr",discard,_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_
	.globl	_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_ # -- Begin function _ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_
	.p2align	4
_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_: # @_ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_
.seh_proc _ZNSt3__111__wrap_iterIPNS_6atomicIhEEEC2B9nqe220103ES3_
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
	.def	_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_ # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_
.seh_proc _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_,"xr",discard,_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_
	.globl	_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_ # -- Begin function _ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_
	.p2align	4
_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_: # @_ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_
.seh_proc _ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEC2B9nqe220103ES4_
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
	.def	_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE,"xr",discard,_ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.globl	_ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE # -- Begin function _ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.p2align	4
_ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE: # @_ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
.seh_proc _ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movl	%edx, 20(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	20(%rsp), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	decl	%eax
	subl	$2, %eax
	jb	.LBB99_2
	jmp	.LBB99_5
.LBB99_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB99_3
	jmp	.LBB99_1
.LBB99_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB99_4
.LBB99_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB99_4
.LBB99_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
.LBB99_4:
	movb	19(%rsp), %al
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE,"xr",discard,_ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.globl	_ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE # -- Begin function _ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.p2align	4
_ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE: # @_ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
.seh_proc _ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movb	%dl, 23(%rsp)
	movl	%r8d, 16(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	16(%rsp), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movb	23(%rsp), %cl
	movb	%cl, 15(%rsp)
	subl	$3, %eax
	je	.LBB100_2
	jmp	.LBB100_5
.LBB100_5:
	movl	8(%rsp), %eax                   # 4-byte Reload
	subl	$5, %eax
	je	.LBB100_3
	jmp	.LBB100_1
.LBB100_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	15(%rsp), %cl
	movb	%cl, (%rax)
	jmp	.LBB100_4
.LBB100_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	15(%rsp), %cl
	movb	%cl, (%rax)
	jmp	.LBB100_4
.LBB100_3:
	movq	(%rsp), %rcx                    # 8-byte Reload
	movb	15(%rsp), %al
	xchgb	%al, (%rcx)
.LBB100_4:
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.lcomm	_ZZN6apollo2gc17global_card_tableEvE4inst,48,8 # @_ZZN6apollo2gc17global_card_tableEvE4inst
	.lcomm	_ZGVZN6apollo2gc17global_card_tableEvE4inst,8,8 # @_ZGVZN6apollo2gc17global_card_tableEvE4inst
	.section	.rdata,"dr"
	.p2align	3, 0x0                          # @_ZN6apollo2gc12_GLOBAL__N_113kInitialCardsE
_ZN6apollo2gc12_GLOBAL__N_113kInitialCardsE:
	.quad	1024                            # 0x400

.L.str:                                 # @.str
	.asciz	"vector"

	.section	.rdata$_ZTISt12length_error,"dr",discard,_ZTISt12length_error
	.globl	_ZTISt12length_error            # @_ZTISt12length_error
	.p2align	3, 0x0
_ZTISt12length_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12length_error
	.quad	_ZTISt11logic_error

	.section	.rdata$_ZTSSt12length_error,"dr",discard,_ZTSSt12length_error
	.globl	_ZTSSt12length_error            # @_ZTSSt12length_error
_ZTSSt12length_error:
	.asciz	"St12length_error"

	.section	.rdata$_ZTISt11logic_error,"dr",discard,_ZTISt11logic_error
	.globl	_ZTISt11logic_error             # @_ZTISt11logic_error
	.p2align	3, 0x0
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception

	.section	.rdata$_ZTSSt11logic_error,"dr",discard,_ZTSSt11logic_error
	.globl	_ZTSSt11logic_error             # @_ZTSSt11logic_error
_ZTSSt11logic_error:
	.asciz	"St11logic_error"

	.section	.rdata$_ZTISt9exception,"dr",discard,_ZTISt9exception
	.globl	_ZTISt9exception                # @_ZTISt9exception
	.p2align	3, 0x0
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception

	.section	.rdata$_ZTSSt9exception,"dr",discard,_ZTSSt9exception
	.globl	_ZTSSt9exception                # @_ZTSSt9exception
_ZTSSt9exception:
	.asciz	"St9exception"

	.section	.rdata$_ZTISt20bad_array_new_length,"dr",discard,_ZTISt20bad_array_new_length
	.globl	_ZTISt20bad_array_new_length    # @_ZTISt20bad_array_new_length
	.p2align	3, 0x0
_ZTISt20bad_array_new_length:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt20bad_array_new_length
	.quad	_ZTISt9bad_alloc

	.section	.rdata$_ZTSSt20bad_array_new_length,"dr",discard,_ZTSSt20bad_array_new_length
	.globl	_ZTSSt20bad_array_new_length    # @_ZTSSt20bad_array_new_length
_ZTSSt20bad_array_new_length:
	.asciz	"St20bad_array_new_length"

	.section	.rdata$_ZTISt9bad_alloc,"dr",discard,_ZTISt9bad_alloc
	.globl	_ZTISt9bad_alloc                # @_ZTISt9bad_alloc
	.p2align	3, 0x0
_ZTISt9bad_alloc:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt9bad_alloc
	.quad	_ZTISt9exception

	.section	.rdata$_ZTSSt9bad_alloc,"dr",discard,_ZTSSt9bad_alloc
	.globl	_ZTSSt9bad_alloc                # @_ZTSSt9bad_alloc
_ZTSSt9bad_alloc:
	.asciz	"St9bad_alloc"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.rdata$.refptr._ZTVSt12length_error,"dr",discard,.refptr._ZTVSt12length_error
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt12length_error
.refptr._ZTVSt12length_error:
	.quad	_ZTVSt12length_error
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp47-.Ltmp46                 # Subsection size
.Ltmp46:
	.short	.Ltmp49-.Ltmp48                 # Record length
.Ltmp48:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp49:
	.short	.Ltmp51-.Ltmp50                 # Record length
.Ltmp50:
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
.Ltmp51:
.Ltmp47:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo2gc17global_card_tableEv
	.addrsig_sym __cxa_guard_acquire
	.addrsig_sym __dtor__ZZN6apollo2gc17global_card_tableEvE4inst
	.addrsig_sym atexit
	.addrsig_sym __cxa_guard_release
	.addrsig_sym _ZNK6apollo2gc9CardTable8index_ofEPKv
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZN6apollo2gc9CardTable7grow_toEy
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	.addrsig_sym _ZNSt3__113__atomic_baseIhLb0EE5storeB9nqe220103EhNS_12memory_orderE
	.addrsig_sym _ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEaSB9nqe220103EOS5_
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNK6apollo2gc9CardTable6coversEPKv
	.addrsig_sym _ZN6apollo2gc9CardTable10mark_dirtyEPKv
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES8_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPNS_6atomicIhEEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPNS_6atomicIhEEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKNS_6atomicIhEEEEbRKNS_11__wrap_iterIT_EES9_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKNS_6atomicIhEEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__vallocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE18__construct_at_endEy
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_6atomicIhEENS_9allocatorIS3_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6atomicIhEEEENS_16allocator_traitsIS4_EEEENS_19__allocation_resultINT0_7pointerENS8_9size_typeEEERT_y
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE8max_sizeB9nqe220103IS4_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS4_
	.addrsig_sym _ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym _ZNSt3__19allocatorINS_6atomicIhEEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103INS_6atomicIhEEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE9constructB9nqe220103IS3_JETnNS_9enable_ifIXnt17__has_construct_vIS4_PT_DpT0_EEiE4typeELi0EEEvRS4_S9_DpOSA_
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103INS_6atomicIhEEJEPS2_EEPT_S5_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_
	.addrsig_sym _ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE13__vdeallocateEv
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPS2_
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe220103IPS2_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES7_S9_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPNS_6atomicIhEEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE11__make_iterB9nqe220103EPKS2_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKNS_6atomicIhEEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__15mutex4lockEv
	.addrsig_sym _ZNSt3__15mutex6unlockEv
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.addrsig_sym _ZNSt3__118__cxx_atomic_storeB9nqe220103IhEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZZN6apollo2gc17global_card_tableEvE4inst
	.addrsig_sym _ZGVZN6apollo2gc17global_card_tableEvE4inst
	.addrsig_sym _ZN6apollo2gc12_GLOBAL__N_113kInitialCardsE
	.addrsig_sym _ZTISt12length_error
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSSt12length_error
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTSSt11logic_error
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSSt9exception
	.addrsig_sym _ZTISt20bad_array_new_length
	.addrsig_sym _ZTSSt20bad_array_new_length
	.addrsig_sym _ZTISt9bad_alloc
	.addrsig_sym _ZTSSt9bad_alloc
