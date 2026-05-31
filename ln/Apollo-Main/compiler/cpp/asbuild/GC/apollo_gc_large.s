	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"apollo_gc_large.cpp"
	.def	_ZN6apollo2gc22global_large_allocatorEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc22global_large_allocatorEv # -- Begin function _ZN6apollo2gc22global_large_allocatorEv
	.p2align	4
_ZN6apollo2gc22global_large_allocatorEv: # @_ZN6apollo2gc22global_large_allocatorEv
.seh_proc _ZN6apollo2gc22global_large_allocatorEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	cmpb	$0, _ZGVZN6apollo2gc22global_large_allocatorEvE4inst(%rip)
	jne	.LBB0_3
# %bb.1:
	leaq	_ZGVZN6apollo2gc22global_large_allocatorEvE4inst(%rip), %rcx
	callq	__cxa_guard_acquire
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	leaq	__dtor__ZZN6apollo2gc22global_large_allocatorEvE4inst(%rip), %rcx
	callq	atexit
	leaq	_ZGVZN6apollo2gc22global_large_allocatorEvE4inst(%rip), %rcx
	callq	__cxa_guard_release
.LBB0_3:
	leaq	_ZZN6apollo2gc22global_large_allocatorEvE4inst(%rip), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc14LargeAllocatorD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc14LargeAllocatorD2Ev,"xr",discard,_ZN6apollo2gc14LargeAllocatorD2Ev
	.globl	_ZN6apollo2gc14LargeAllocatorD2Ev # -- Begin function _ZN6apollo2gc14LargeAllocatorD2Ev
	.p2align	4
_ZN6apollo2gc14LargeAllocatorD2Ev:      # @_ZN6apollo2gc14LargeAllocatorD2Ev
.seh_proc _ZN6apollo2gc14LargeAllocatorD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$8, %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	__dtor__ZZN6apollo2gc22global_large_allocatorEvE4inst;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function __dtor__ZZN6apollo2gc22global_large_allocatorEvE4inst
__dtor__ZZN6apollo2gc22global_large_allocatorEvE4inst: # @__dtor__ZZN6apollo2gc22global_large_allocatorEvE4inst
.seh_proc __dtor__ZZN6apollo2gc22global_large_allocatorEvE4inst
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	_ZZN6apollo2gc22global_large_allocatorEvE4inst(%rip), %rcx
	callq	_ZN6apollo2gc14LargeAllocatorD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt # -- Begin function _ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
	.p2align	4
_ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt: # @_ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
.Lfunc_begin0:
.seh_proc _ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movw	224(%rsp), %ax
	movq	%rcx, 168(%rsp)
	movq	%rdx, 160(%rsp)
	movq	%r8, 152(%rsp)
	movq	%r9, 144(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 136(%rsp)
	movq	$0, 128(%rsp)
	movq	136(%rsp), %rcx
.Ltmp0:                                 # EH_LABEL
	movq	__imp__aligned_malloc(%rip), %rax
	movl	$16, %edx
	callq	*%rax
.Ltmp1:                                 # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	cmpq	$0, 128(%rsp)
	jne	.LBB3_3
# %bb.2:
	movq	$0, 176(%rsp)
	jmp	.LBB3_8
.LBB3_3:
	movq	128(%rsp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	128(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movaps	%xmm0, 16(%rcx)
	movaps	%xmm0, (%rcx)
	callq	_ZN6apollo2gc3BoxC2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	movl	136(%rsp), %ecx
	movq	120(%rsp), %rax
	movl	%ecx, 8(%rax)
	movq	144(%rsp), %rcx
	movq	120(%rsp), %rax
	movq	%rcx, 16(%rax)
	movw	224(%rsp), %cx
	movq	120(%rsp), %rax
	movw	%cx, 12(%rax)
	movq	120(%rsp), %rax
	movq	$0, 24(%rax)
	movq	120(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	160(%rsp), %rcx
	callq	_ZN6apollo2gc7Mutator7runtimeEv
	movq	%rax, %rcx
	callq	_ZNK6apollo2gc7Runtime16allocation_colorEv
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	movl	$3, %r8d
	movl	%r8d, 52(%rsp)                  # 4-byte Spill
	callq	_ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE
	movq	120(%rsp), %rcx
	xorl	%edx, %edx
	callq	_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	movl	52(%rsp), %r8d                  # 4-byte Reload
	movq	%rax, 112(%rsp)
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rdx
	orq	$8, %rdx
	callq	_ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE
.Ltmp2:                                 # EH_LABEL
	movl	$32, %ecx
	callq	_Znwy
.Ltmp3:                                 # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB3_4
.LBB3_4:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	addq	$24, %rcx
	xorl	%eax, %eax
	movb	%al, %dl
	callq	_ZNSt3__16atomicIbEC2B9nqe220103Eb
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, 104(%rsp)
	movq	120(%rsp), %rcx
	movq	104(%rsp), %rax
	movq	%rcx, (%rax)
	movq	136(%rsp), %rcx
	movq	104(%rsp), %rax
	movq	%rcx, 8(%rax)
	movq	128(%rsp), %rcx
	movq	104(%rsp), %rax
	movq	%rcx, 16(%rax)
.Ltmp4:                                 # EH_LABEL
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp5:                                 # EH_LABEL
	jmp	.LBB3_5
.LBB3_5:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
.Ltmp6:                                 # EH_LABEL
	leaq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
.Ltmp7:                                 # EH_LABEL
	jmp	.LBB3_6
.LBB3_6:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movq	128(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	88(%rsp), %rax
	movq	136(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 80(%rsp)
	callq	_ZN6apollo2gc17global_card_tableEv
	movq	%rax, %rcx
	movq	88(%rsp), %rdx
	movq	80(%rsp), %r8
.Ltmp8:                                 # EH_LABEL
	callq	_ZN6apollo2gc9CardTable14register_rangeEPKvS3_
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB3_7
.LBB3_7:
	movq	120(%rsp), %rax
	movq	%rax, 176(%rsp)
.LBB3_8:
	movq	176(%rsp), %rax
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
.LBB3_9:
.Ltmp10:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	1                               #   On action: 1
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
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
	.def	_ZN6apollo2gc3BoxC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc3BoxC2Ev,"xr",discard,_ZN6apollo2gc3BoxC2Ev
	.globl	_ZN6apollo2gc3BoxC2Ev           # -- Begin function _ZN6apollo2gc3BoxC2Ev
	.p2align	4
_ZN6apollo2gc3BoxC2Ev:                  # @_ZN6apollo2gc3BoxC2Ev
.seh_proc _ZN6apollo2gc3BoxC2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__16atomicIyEC2B9nqe220103Ey
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	$0, 8(%rax)
	movw	$0, 12(%rax)
	movb	$0, 14(%rax)
	movb	$0, 15(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE,"xr",discard,_ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE
	.globl	_ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE # -- Begin function _ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE
	.p2align	4
_ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE: # @_ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE
.seh_proc _ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movb	%dl, 79(%rsp)
	movl	%r8d, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	callq	_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	movq	%rax, 64(%rsp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rax
	andq	$-4, %rax
	movzbl	79(%rsp), %edx
                                        # kill: def $rdx killed $edx
	orq	%rdx, %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %r8
	movl	72(%rsp), %r9d
	leaq	64(%rsp), %rdx
	xorl	%eax, %eax
	movl	$0, 32(%rsp)
	callq	_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
	testb	$1, %al
	jne	.LBB6_2
	jmp	.LBB6_3
.LBB6_2:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_1
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc7Mutator7runtimeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc7Mutator7runtimeEv,"xr",discard,_ZN6apollo2gc7Mutator7runtimeEv
	.globl	_ZN6apollo2gc7Mutator7runtimeEv # -- Begin function _ZN6apollo2gc7Mutator7runtimeEv
	.p2align	4
_ZN6apollo2gc7Mutator7runtimeEv:        # @_ZN6apollo2gc7Mutator7runtimeEv
.seh_proc _ZN6apollo2gc7Mutator7runtimeEv
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
	.def	_ZNK6apollo2gc7Runtime16allocation_colorEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo2gc7Runtime16allocation_colorEv,"xr",discard,_ZNK6apollo2gc7Runtime16allocation_colorEv
	.globl	_ZNK6apollo2gc7Runtime16allocation_colorEv # -- Begin function _ZNK6apollo2gc7Runtime16allocation_colorEv
	.p2align	4
_ZNK6apollo2gc7Runtime16allocation_colorEv: # @_ZNK6apollo2gc7Runtime16allocation_colorEv
.seh_proc _ZNK6apollo2gc7Runtime16allocation_colorEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$49, %rcx
	movl	$2, %edx
	callq	_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE,"xr",discard,_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	.globl	_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE # -- Begin function _ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	.p2align	4
_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE: # @_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
.seh_proc _ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	44(%rsp), %edx
	callq	_ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE,"xr",discard,_ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE
	.globl	_ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE # -- Begin function _ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE
	.p2align	4
_ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE: # @_ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE
.seh_proc _ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	%r8d, 36(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movl	36(%rsp), %r8d
	callq	_ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16atomicIbEC2B9nqe220103Eb;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16atomicIbEC2B9nqe220103Eb,"xr",discard,_ZNSt3__16atomicIbEC2B9nqe220103Eb
	.globl	_ZNSt3__16atomicIbEC2B9nqe220103Eb # -- Begin function _ZNSt3__16atomicIbEC2B9nqe220103Eb
	.p2align	4
_ZNSt3__16atomicIbEC2B9nqe220103Eb:     # @_ZNSt3__16atomicIbEC2B9nqe220103Eb
.seh_proc _ZNSt3__16atomicIbEC2B9nqe220103Eb
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	andb	$1, %dl
	movb	%dl, 47(%rsp)
	movq	48(%rsp), %rcx
	movb	47(%rsp), %dl
	andb	$1, %dl
	callq	_ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
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
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
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
	.def	_ZN6apollo2gc14LargeAllocator5sweepENS0_5ColorE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc14LargeAllocator5sweepENS0_5ColorE # -- Begin function _ZN6apollo2gc14LargeAllocator5sweepENS0_5ColorE
	.p2align	4
_ZN6apollo2gc14LargeAllocator5sweepENS0_5ColorE: # @_ZN6apollo2gc14LargeAllocator5sweepENS0_5ColorE
.Lfunc_begin1:
.seh_proc _ZN6apollo2gc14LargeAllocator5sweepENS0_5ColorE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 160(%rsp)
	movb	%dl, 159(%rsp)
	movq	160(%rsp), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movq	$0, 144(%rsp)
.Ltmp11:                                # EH_LABEL
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp12:                                # EH_LABEL
	jmp	.LBB15_1
.LBB15_1:
	leaq	112(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp13:                                # EH_LABEL
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
.Ltmp14:                                # EH_LABEL
	jmp	.LBB15_2
.LBB15_2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	104(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	movq	%rax, 88(%rsp)
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	leaq	96(%rsp), %rcx
	leaq	88(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB15_4
	jmp	.LBB15_16
.LBB15_4:                               #   in Loop: Header=BB15_3 Depth=1
	leaq	96(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
	cmpq	$0, 80(%rsp)
	je	.LBB15_6
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=1
	movq	80(%rsp), %rax
	cmpq	$0, (%rax)
	jne	.LBB15_7
.LBB15_6:                               #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_15
.LBB15_7:                               #   in Loop: Header=BB15_3 Depth=1
	movq	80(%rsp), %rax
	movq	(%rax), %rcx
	movl	$2, %edx
	callq	_ZNK6apollo2gc3Box5colorENSt3__112memory_orderE
	movb	%al, 79(%rsp)
	movb	79(%rsp), %al
	cmpb	159(%rsp), %al
	jne	.LBB15_12
# %bb.8:                                #   in Loop: Header=BB15_3 Depth=1
	movq	80(%rsp), %rax
	movq	8(%rax), %rcx
	movq	144(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, 144(%rsp)
	movq	80(%rsp), %rax
	movq	16(%rax), %rcx
.Ltmp17:                                # EH_LABEL
	movq	__imp__aligned_free(%rip), %rax
	callq	*%rax
.Ltmp18:                                # EH_LABEL
	jmp	.LBB15_9
.LBB15_9:                               #   in Loop: Header=BB15_3 Depth=1
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB15_11
# %bb.10:                               #   in Loop: Header=BB15_3 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZdlPv
.LBB15_11:                              #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_14
.LBB15_12:                              #   in Loop: Header=BB15_3 Depth=1
.Ltmp15:                                # EH_LABEL
	leaq	112(%rsp), %rcx
	leaq	80(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
.Ltmp16:                                # EH_LABEL
	jmp	.LBB15_13
.LBB15_13:                              #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_14
.LBB15_14:                              #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_15
.LBB15_15:                              #   in Loop: Header=BB15_3 Depth=1
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	jmp	.LBB15_3
.LBB15_16:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	leaq	112(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB15_17:
.Ltmp19:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end1:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table15:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
.Lcst_end1:
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
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEC2B9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
.Lfunc_begin2:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 128(%rsp)
	movq	%rdx, 120(%rsp)
	movq	128(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB17_6
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB17_3
# %bb.2:
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.LBB17_3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	leaq	88(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp20:                                # EH_LABEL
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.Ltmp21:                                # EH_LABEL
	jmp	.LBB17_4
.LBB17_4:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB17_6
.LBB17_5:
.Ltmp22:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 80(%rsp)
	movl	%eax, 76(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB17_7
.LBB17_6:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB17_7:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table17:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin2          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
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
	.def	_ZNK6apollo2gc3Box5colorENSt3__112memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo2gc3Box5colorENSt3__112memory_orderE,"xr",discard,_ZNK6apollo2gc3Box5colorENSt3__112memory_orderE
	.globl	_ZNK6apollo2gc3Box5colorENSt3__112memory_orderE # -- Begin function _ZNK6apollo2gc3Box5colorENSt3__112memory_orderE
	.p2align	4
_ZNK6apollo2gc3Box5colorENSt3__112memory_orderE: # @_ZNK6apollo2gc3Box5colorENSt3__112memory_orderE
.seh_proc _ZNK6apollo2gc3Box5colorENSt3__112memory_orderE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	44(%rsp), %edx
	callq	_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	andq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_
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
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
.Lfunc_begin3:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp23:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
.Ltmp24:                                # EH_LABEL
	jmp	.LBB26_1
.LBB26_1:
.Ltmp25:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp26:                                # EH_LABEL
	jmp	.LBB26_2
.LBB26_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB26_3:
.Ltmp27:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end3:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table26:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp23-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp23                #   Call between .Ltmp23 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNK6apollo2gc14LargeAllocator10live_bytesEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo2gc14LargeAllocator10live_bytesEv # -- Begin function _ZNK6apollo2gc14LargeAllocator10live_bytesEv
	.p2align	4
_ZNK6apollo2gc14LargeAllocator10live_bytesEv: # @_ZNK6apollo2gc14LargeAllocator10live_bytesEv
.Lfunc_begin4:
.seh_proc _ZNK6apollo2gc14LargeAllocator10live_bytesEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
.Ltmp28:                                # EH_LABEL
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp29:                                # EH_LABEL
	jmp	.LBB27_1
.LBB27_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	$0, 80(%rsp)
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	leaq	64(%rsp), %rcx
	leaq	56(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB27_3
	jmp	.LBB27_7
.LBB27_3:                               #   in Loop: Header=BB27_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	cmpq	$0, 48(%rsp)
	je	.LBB27_5
# %bb.4:                                #   in Loop: Header=BB27_2 Depth=1
	movq	48(%rsp), %rax
	movq	8(%rax), %rax
	addq	80(%rsp), %rax
	movq	%rax, 80(%rsp)
.LBB27_5:                               #   in Loop: Header=BB27_2 Depth=1
	jmp	.LBB27_6
.LBB27_6:                               #   in Loop: Header=BB27_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	jmp	.LBB27_2
.LBB27_7:
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB27_8:
.Ltmp30:                                # EH_LABEL
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
GCC_except_table27:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp28-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin4          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_
	.globl	_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_: # @_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_
.seh_proc _ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc14LargeAllocator15live_span_countEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo2gc14LargeAllocator15live_span_countEv # -- Begin function _ZNK6apollo2gc14LargeAllocator15live_span_countEv
	.p2align	4
_ZNK6apollo2gc14LargeAllocator15live_span_countEv: # @_ZNK6apollo2gc14LargeAllocator15live_span_countEv
.Lfunc_begin5:
.seh_proc _ZNK6apollo2gc14LargeAllocator15live_span_countEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
.Ltmp31:                                # EH_LABEL
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp32:                                # EH_LABEL
	jmp	.LBB33_1
.LBB33_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	$0, 80(%rsp)
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	leaq	64(%rsp), %rcx
	leaq	56(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB33_3
	jmp	.LBB33_7
.LBB33_3:                               #   in Loop: Header=BB33_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	cmpq	$0, 48(%rsp)
	je	.LBB33_5
# %bb.4:                                #   in Loop: Header=BB33_2 Depth=1
	movq	80(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
.LBB33_5:                               #   in Loop: Header=BB33_2 Depth=1
	jmp	.LBB33_6
.LBB33_6:                               #   in Loop: Header=BB33_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	jmp	.LBB33_2
.LBB33_7:
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB33_8:
.Ltmp33:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table33:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp31-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin5          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo2gc18try_large_allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo2gc18try_large_allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt # -- Begin function _ZN6apollo2gc18try_large_allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
	.p2align	4
_ZN6apollo2gc18try_large_allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt: # @_ZN6apollo2gc18try_large_allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
.seh_proc _ZN6apollo2gc18try_large_allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movw	%r9w, 54(%rsp)
	cmpq	$32768, 64(%rsp)                # imm = 0x8000
	jae	.LBB34_2
# %bb.1:
	movq	$0, 80(%rsp)
	jmp	.LBB34_3
.LBB34_2:
	callq	_ZN6apollo2gc22global_large_allocatorEv
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	64(%rsp), %r8
	movq	56(%rsp), %r9
	movw	54(%rsp), %ax
	movw	%ax, 32(%rsp)
	callq	_ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
	movq	%rax, 80(%rsp)
.LBB34_3:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16atomicIyEC2B9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16atomicIyEC2B9nqe220103Ey,"xr",discard,_ZNSt3__16atomicIyEC2B9nqe220103Ey
	.globl	_ZNSt3__16atomicIyEC2B9nqe220103Ey # -- Begin function _ZNSt3__16atomicIyEC2B9nqe220103Ey
	.p2align	4
_ZNSt3__16atomicIyEC2B9nqe220103Ey:     # @_ZNSt3__16atomicIyEC2B9nqe220103Ey
.seh_proc _ZNSt3__16atomicIyEC2B9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey,"xr",discard,_ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey
	.globl	_ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey # -- Begin function _ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey
	.p2align	4
_ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey: # @_ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey
.seh_proc _ZNSt3__113__atomic_baseIyLb1EEC2B9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey,"xr",discard,_ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey
	.globl	_ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey # -- Begin function _ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey
	.p2align	4
_ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey: # @_ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey
.seh_proc _ZNSt3__113__atomic_baseIyLb0EEC2B9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey,"xr",discard,_ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey
	.globl	_ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey # -- Begin function _ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey
	.p2align	4
_ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey: # @_ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey
.seh_proc _ZNSt3__117__cxx_atomic_implIyNS_22__cxx_atomic_base_implIyEEEC2B9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__122__cxx_atomic_base_implIyEC2Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__cxx_atomic_base_implIyEC2Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__cxx_atomic_base_implIyEC2Ey,"xr",discard,_ZNSt3__122__cxx_atomic_base_implIyEC2Ey
	.globl	_ZNSt3__122__cxx_atomic_base_implIyEC2Ey # -- Begin function _ZNSt3__122__cxx_atomic_base_implIyEC2Ey
	.p2align	4
_ZNSt3__122__cxx_atomic_base_implIyEC2Ey: # @_ZNSt3__122__cxx_atomic_base_implIyEC2Ey
.seh_proc _ZNSt3__122__cxx_atomic_base_implIyEC2Ey
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
	.def	_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_,"xr",discard,_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
	.globl	_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_ # -- Begin function _ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
	.p2align	4
_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_: # @_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
.seh_proc _ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movl	112(%rsp), %eax
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movl	%r9d, 44(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	movl	44(%rsp), %r9d
	movl	112(%rsp), %eax
	movl	%eax, 32(%rsp)
	callq	_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	andb	$1, %al
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,"xr",discard,_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	.globl	_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_ # -- Begin function _ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	.p2align	4
_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_: # @_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
.Lfunc_begin6:
.seh_proc _ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$360, %rsp                      # imm = 0x168
	.seh_stackalloc 360
	.seh_endprologue
	movl	400(%rsp), %eax
	movq	%rcx, 352(%rsp)
	movq	%rdx, 344(%rsp)
	movq	%r8, 336(%rsp)
	movl	%r9d, 332(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movl	332(%rsp), %eax
	movl	%eax, 300(%rsp)                 # 4-byte Spill
	movq	344(%rsp), %rax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	movq	336(%rsp), %rax
	movq	%rax, 320(%rsp)
	movl	400(%rsp), %ecx
.Ltmp34:                                # EH_LABEL
	callq	_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
.Ltmp35:                                # EH_LABEL
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	jmp	.LBB41_1
.LBB41_1:
	movl	300(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB41_2
# %bb.59:
	movq	280(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI41_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB41_2:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB41_9
	jmp	.LBB41_64
.LBB41_64:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB41_10
	jmp	.LBB41_8
.LBB41_3:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB41_19
	jmp	.LBB41_63
.LBB41_63:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB41_20
	jmp	.LBB41_18
.LBB41_4:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB41_29
	jmp	.LBB41_62
.LBB41_62:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB41_30
	jmp	.LBB41_28
.LBB41_5:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB41_39
	jmp	.LBB41_61
.LBB41_61:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB41_40
	jmp	.LBB41_38
.LBB41_6:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB41_49
	jmp	.LBB41_60
.LBB41_60:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB41_50
	jmp	.LBB41_48
.LBB41_7:
	movb	319(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$360, %rsp                      # imm = 0x168
	.seh_endepilogue
	retq
.LBB41_8:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 271(%rsp)                  # 1-byte Spill
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_13
	jmp	.LBB41_12
.LBB41_9:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 255(%rsp)                  # 1-byte Spill
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_15
	jmp	.LBB41_14
.LBB41_10:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 239(%rsp)                  # 1-byte Spill
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_17
	jmp	.LBB41_16
.LBB41_11:
	jmp	.LBB41_7
.LBB41_12:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_13:
	movb	271(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_11
.LBB41_14:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_15:
	movb	255(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_11
.LBB41_16:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_17:
	movb	239(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_11
.LBB41_18:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 223(%rsp)                  # 1-byte Spill
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_23
	jmp	.LBB41_22
.LBB41_19:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 207(%rsp)                  # 1-byte Spill
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_25
	jmp	.LBB41_24
.LBB41_20:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 191(%rsp)                  # 1-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_27
	jmp	.LBB41_26
.LBB41_21:
	jmp	.LBB41_7
.LBB41_22:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_23:
	movb	223(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_21
.LBB41_24:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_25:
	movb	207(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_21
.LBB41_26:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_27:
	movb	191(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_21
.LBB41_28:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 175(%rsp)                  # 1-byte Spill
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_33
	jmp	.LBB41_32
.LBB41_29:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 159(%rsp)                  # 1-byte Spill
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_35
	jmp	.LBB41_34
.LBB41_30:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 143(%rsp)                  # 1-byte Spill
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_37
	jmp	.LBB41_36
.LBB41_31:
	jmp	.LBB41_7
.LBB41_32:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_33:
	movb	175(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_31
.LBB41_34:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_35:
	movb	159(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_31
.LBB41_36:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_37:
	movb	143(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_31
.LBB41_38:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 127(%rsp)                  # 1-byte Spill
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_43
	jmp	.LBB41_42
.LBB41_39:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 111(%rsp)                  # 1-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_45
	jmp	.LBB41_44
.LBB41_40:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 95(%rsp)                   # 1-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_47
	jmp	.LBB41_46
.LBB41_41:
	jmp	.LBB41_7
.LBB41_42:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_43:
	movb	127(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_41
.LBB41_44:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_45:
	movb	111(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_41
.LBB41_46:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_47:
	movb	95(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_41
.LBB41_48:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 79(%rsp)                   # 1-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_53
	jmp	.LBB41_52
.LBB41_49:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 63(%rsp)                   # 1-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_55
	jmp	.LBB41_54
.LBB41_50:
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	320(%rsp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	movb	%al, 47(%rsp)                   # 1-byte Spill
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	testb	$1, %al
	jne	.LBB41_57
	jmp	.LBB41_56
.LBB41_51:
	jmp	.LBB41_7
.LBB41_52:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_53:
	movb	79(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_51
.LBB41_54:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_55:
	movb	63(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_51
.LBB41_56:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB41_57:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB41_51
.LBB41_58:
.Ltmp36:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.section	.rdata,"dr",associative,_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,unique,0
	.p2align	2, 0x0
.LJTI41_0:
	.long	.LBB41_3-.LJTI41_0
	.long	.LBB41_3-.LJTI41_0
	.long	.LBB41_4-.LJTI41_0
	.long	.LBB41_5-.LJTI41_0
	.long	.LBB41_6-.LJTI41_0
	.seh_handlerdata
	.section	.text$_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,"xr",discard,_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	.seh_endproc
	.section	.xdata$_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table41:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp34-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin6          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,"xr",discard,_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
                                        # -- End function
	.def	_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE,"xr",discard,_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
	.globl	_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE # -- Begin function _ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
	.p2align	4
_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE: # @_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
.seh_proc _ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movl	%ecx, 12(%rsp)
	cmpl	$3, 12(%rsp)
	jne	.LBB42_2
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	jmp	.LBB42_6
.LBB42_2:
	cmpl	$4, 12(%rsp)
	jne	.LBB42_4
# %bb.3:
	movl	$2, %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	jmp	.LBB42_5
.LBB42_4:
	movl	12(%rsp), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
.LBB42_5:
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	%eax, 8(%rsp)                   # 4-byte Spill
.LBB42_6:
	movl	8(%rsp), %eax                   # 4-byte Reload
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE,"xr",discard,_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
	.globl	_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE # -- Begin function _ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
	.p2align	4
_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE: # @_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
.seh_proc _ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	44(%rsp), %edx
	callq	_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE,"xr",discard,_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE
	.globl	_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE # -- Begin function _ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE
	.p2align	4
_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE: # @_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE
.seh_proc _ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE
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
	jb	.LBB44_2
	jmp	.LBB44_5
.LBB44_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB44_3
	jmp	.LBB44_1
.LBB44_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB44_4
.LBB44_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB44_4
.LBB44_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
.LBB44_4:
	movb	19(%rsp), %al
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb,"xr",discard,_ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb
	.globl	_ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb # -- Begin function _ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb
	.p2align	4
_ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb: # @_ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb
.seh_proc _ZNSt3__113__atomic_baseIbLb0EEC2B9nqe220103Eb
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	andb	$1, %dl
	movb	%dl, 47(%rsp)
	movq	48(%rsp), %rcx
	movb	47(%rsp), %dl
	andb	$1, %dl
	callq	_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb,"xr",discard,_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb
	.globl	_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb # -- Begin function _ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb
	.p2align	4
_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb: # @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb
.seh_proc _ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B9nqe220103Eb
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	andb	$1, %dl
	movb	%dl, 47(%rsp)
	movq	48(%rsp), %rcx
	movb	47(%rsp), %dl
	andb	$1, %dl
	callq	_ZNSt3__122__cxx_atomic_base_implIbEC2Eb
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__cxx_atomic_base_implIbEC2Eb;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__cxx_atomic_base_implIbEC2Eb,"xr",discard,_ZNSt3__122__cxx_atomic_base_implIbEC2Eb
	.globl	_ZNSt3__122__cxx_atomic_base_implIbEC2Eb # -- Begin function _ZNSt3__122__cxx_atomic_base_implIbEC2Eb
	.p2align	4
_ZNSt3__122__cxx_atomic_base_implIbEC2Eb: # @_ZNSt3__122__cxx_atomic_base_implIbEC2Eb
.seh_proc _ZNSt3__122__cxx_atomic_base_implIbEC2Eb
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	andb	$1, %dl
	movb	%dl, 7(%rsp)
	movq	8(%rsp), %rax
	movb	7(%rsp), %cl
	andb	$1, %cl
	movb	%cl, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	96(%rsp), %rcx
	cmpq	16(%rax), %rcx
	setb	%cl
	movq	104(%rsp), %rdx
	movq	%rdx, 72(%rsp)
	movq	%rax, 80(%rsp)
	leaq	96(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	leaq	96(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	104(%rsp), %rdx
	movq	%rdx, 56(%rsp)
	movq	%rax, 64(%rsp)
	andb	$1, %cl
	leaq	72(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	96(%rsp), %rax
	addq	$-8, %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	andb	$1, %cl
	movb	%cl, 71(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
# %bb.1:
	testb	$1, 71(%rsp)
	je	.LBB49_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	jmp	.LBB49_4
.LBB49_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
.LBB49_4:
	jmp	.LBB49_5
.LBB49_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
.Lfunc_begin7:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	leaq	64(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp37:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
.Ltmp38:                                # EH_LABEL
	jmp	.LBB52_1
.LBB52_1:
	movq	72(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB52_2:
.Ltmp39:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table52:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp37-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin7          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
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
	movq	32(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	.globl	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_: # @_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB56_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB56_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin8:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp40:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp41:                                # EH_LABEL
	jmp	.LBB57_1
.LBB57_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB57_2:
.Ltmp42:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table57:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp40-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin8          #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_ # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_
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
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin9:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp43:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp44:                                # EH_LABEL
	jmp	.LBB64_1
.LBB64_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB64_2:
.Ltmp45:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table64:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp43-.Lfunc_begin9          # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin9          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
.Lfunc_begin10:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp46:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
.Ltmp47:                                # EH_LABEL
	jmp	.LBB65_1
.LBB65_1:
	movq	96(%rsp), %rdx
	addq	$8, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp48:                                # EH_LABEL
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.Ltmp49:                                # EH_LABEL
	jmp	.LBB65_2
.LBB65_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB65_3:
.Ltmp50:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table65:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp46-.Lfunc_begin10         #   Call between .Lfunc_begin10 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp49-.Ltmp46                #   Call between .Ltmp46 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin10         #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp49           #   Call between .Ltmp49 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB66_2
# %bb.1:
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.LBB66_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB66_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB66_5
.LBB66_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB66_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_ # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_: # @_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 72(%rsp)
	movq	96(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	cmpq	$0, 88(%rsp)
	jbe	.LBB67_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB67_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 16(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB71_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
	nop
.LBB71_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin11:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp51:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp52:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB72_1
.LBB72_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB72_2:
.Ltmp53:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table72:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp51-.Lfunc_begin11         # >> Call Site 1 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin11         #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	shrq	$3, %rax
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
	jne	.LBB78_1
	jmp	.LBB78_2
.LBB78_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB78_3
.LBB78_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB78_3:
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
.Lfunc_begin12:
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
.Ltmp54:                                # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp55:                                # EH_LABEL
	jmp	.LBB83_1
.LBB83_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB83_2:
.Ltmp56:                                # EH_LABEL
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
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table83:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp54-.Lfunc_begin12         #   Call between .Lfunc_begin12 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin12         # >> Call Site 2 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin12         #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin12         # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp55           #   Call between .Ltmp55 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
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
	jne	.LBB85_1
	jmp	.LBB85_2
.LBB85_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB85_3
.LBB85_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB85_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$24, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB93_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB93_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y,"xr",discard,_ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y
	.globl	_ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y # -- Begin function _ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y
	.p2align	4
_ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y: # @_ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y
.seh_proc _ZNSt3__119__allocation_resultIPPN6apollo2gc9LargeSpanEyEC2B9nqe220103ES5_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$3, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB96_1
	jmp	.LBB96_2
.LBB96_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB96_3
.LBB96_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB96_3:
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
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin13:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp57:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp58:                                # EH_LABEL
	jmp	.LBB98_1
.LBB98_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB98_2:
.Ltmp59:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table98:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp57-.Lfunc_begin13         # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin13         #     jumps to .Ltmp59
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
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %rax
	subq	%rax, %r8
	sarq	$3, %r8
	shlq	$3, %r8
	callq	memcpy
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 40(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	72(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin14:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp60:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp61:                                # EH_LABEL
	jmp	.LBB102_1
.LBB102_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB102_2:
.Ltmp62:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table102:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp60-.Lfunc_begin14         # >> Call Site 1 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin14         #     jumps to .Ltmp62
	.byte	1                               #   On action: 1
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
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
	callq	_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_ # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_: # @_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
.Lfunc_begin15:
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movb	%r8b, 87(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB110_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB110_4
# %bb.2:                                #   in Loop: Header=BB110_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp63:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.Ltmp64:                                # EH_LABEL
	jmp	.LBB110_3
.LBB110_3:                              #   in Loop: Header=BB110_1 Depth=1
	jmp	.LBB110_1
.LBB110_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB110_5:
.Ltmp65:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table110:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp63-.Lfunc_begin15         # >> Call Site 1 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin15         #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_
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
	.def	_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y,"xr",discard,_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y
	.globl	_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y # -- Begin function _ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y
	.p2align	4
_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y: # @_ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y
.seh_proc _ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	movl	$8, %r8d
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$3, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB114_1
	jmp	.LBB114_2
.LBB114_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB114_3
.LBB114_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB114_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
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
	.def	_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movb	%r8b, 71(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpq	$0, (%rax)
	je	.LBB120_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	(%rcx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
.LBB120_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
.Lfunc_begin16:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
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
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB123_4
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp66:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.Ltmp67:                                # EH_LABEL
	jmp	.LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	jmp	.LBB123_1
.LBB123_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB123_5:
.Ltmp68:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table123:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp66-.Lfunc_begin16         # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin16         #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE
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
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB126_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
	nop
.LBB126_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	.globl	_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_ # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_: # @_ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_,"xr",discard,_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_
	.globl	_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_ # -- Begin function _ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_
	.p2align	4
_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_: # @_ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_
.seh_proc _ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEC2B9nqe220103ES6_
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
	.def	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE,"xr",discard,_ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.globl	_ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE # -- Begin function _ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.p2align	4
_ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE: # @_ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
.seh_proc _ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movl	%edx, 28(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	28(%rsp), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	decl	%eax
	subl	$2, %eax
	jb	.LBB130_2
	jmp	.LBB130_5
.LBB130_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB130_3
	jmp	.LBB130_1
.LBB130_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB130_4
.LBB130_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB130_4
.LBB130_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
.LBB130_4:
	movq	16(%rsp), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE,"xr",discard,_ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.globl	_ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE # -- Begin function _ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.p2align	4
_ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE: # @_ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
.seh_proc _ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
# %bb.0:
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movl	%r8d, 28(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	28(%rsp), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	subl	$3, %eax
	je	.LBB131_2
	jmp	.LBB131_5
.LBB131_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB131_3
	jmp	.LBB131_1
.LBB131_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB131_4
.LBB131_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB131_4
.LBB131_3:
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	16(%rsp), %rax
	xchgq	%rax, (%rcx)
.LBB131_4:
	.seh_startepilogue
	addq	$48, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.lcomm	_ZZN6apollo2gc22global_large_allocatorEvE4inst,32,8 # @_ZZN6apollo2gc22global_large_allocatorEvE4inst
	.lcomm	_ZGVZN6apollo2gc22global_large_allocatorEvE4inst,8,8 # @_ZGVZN6apollo2gc22global_large_allocatorEvE4inst
	.section	.rdata,"dr"
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
	.long	.Ltmp70-.Ltmp69                 # Subsection size
.Ltmp69:
	.short	.Ltmp72-.Ltmp71                 # Record length
.Ltmp71:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp72:
	.short	.Ltmp74-.Ltmp73                 # Record length
.Ltmp73:
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
.Ltmp74:
.Ltmp70:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo2gc22global_large_allocatorEv
	.addrsig_sym __cxa_guard_acquire
	.addrsig_sym __dtor__ZZN6apollo2gc22global_large_allocatorEvE4inst
	.addrsig_sym atexit
	.addrsig_sym __cxa_guard_release
	.addrsig_sym _ZN6apollo2gc14LargeAllocator8allocateERNS0_7MutatorEyPFvPNS0_3BoxEPvEt
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZN6apollo2gc3Box9set_colorENS0_5ColorENSt3__112memory_orderE
	.addrsig_sym _ZN6apollo2gc7Mutator7runtimeEv
	.addrsig_sym _ZNK6apollo2gc7Runtime16allocation_colorEv
	.addrsig_sym _ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNSt3__113__atomic_baseIyLb0EE5storeB9nqe220103EyNS_12memory_orderE
	.addrsig_sym _Znwy
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
	.addrsig_sym _ZN6apollo2gc17global_card_tableEv
	.addrsig_sym _ZN6apollo2gc9CardTable14register_rangeEPKvS3_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE7reserveEy
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	.addrsig_sym _ZNK6apollo2gc3Box5colorENSt3__112memory_orderE
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEEaSB9nqe220103EOS7_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKPN6apollo2gc9LargeSpanEEEbRKNS_11__wrap_iterIT_EESB_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
	.addrsig_sym _ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	.addrsig_sym _ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_S6_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEEEvPKvS8_S8_S8_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IPN6apollo2gc9LargeSpanEJRKS4_EPS4_EEPT_S9_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.addrsig_sym _ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
	.addrsig_sym _ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc9LargeSpanEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc9LargeSpanEEEPS5_EEvRT_T0_SA_SA_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE10deallocateB9nqe220103ERS6_PS5_y
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc9LargeSpanEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc9LargeSpanEEEvPT_
	.addrsig_sym _ZNSt3__19allocatorIPN6apollo2gc9LargeSpanEE10deallocateB9nqe220103EPS4_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc9LargeSpanEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__move_assignERS7_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE13__vdeallocateEv
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE19__move_assign_allocB9nqe220103ERS7_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc9LargeSpanENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKPN6apollo2gc9LargeSpanEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__15mutex4lockEv
	.addrsig_sym _ZNSt3__15mutex6unlockEv
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.addrsig_sym _ZNSt3__118__cxx_atomic_storeB9nqe220103IyEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZZN6apollo2gc22global_large_allocatorEvE4inst
	.addrsig_sym _ZGVZN6apollo2gc22global_large_allocatorEvE4inst
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
