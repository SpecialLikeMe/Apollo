	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"apollo_gc_typedesc.cpp"
	.def	_ZN6apollo2gc20global_type_registryEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc20global_type_registryEv # -- Begin function _ZN6apollo2gc20global_type_registryEv
	.p2align	4
_ZN6apollo2gc20global_type_registryEv:  # @_ZN6apollo2gc20global_type_registryEv
.seh_proc _ZN6apollo2gc20global_type_registryEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	cmpb	$0, _ZGVZN6apollo2gc20global_type_registryEvE4inst(%rip)
	jne	.LBB0_3
# %bb.1:
	leaq	_ZGVZN6apollo2gc20global_type_registryEvE4inst(%rip), %rcx
	callq	__cxa_guard_acquire
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	leaq	__dtor__ZZN6apollo2gc20global_type_registryEvE4inst(%rip), %rcx
	callq	atexit
	leaq	_ZGVZN6apollo2gc20global_type_registryEvE4inst(%rip), %rcx
	callq	__cxa_guard_release
.LBB0_3:
	leaq	_ZZN6apollo2gc20global_type_registryEvE4inst(%rip), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc12TypeRegistryD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc12TypeRegistryD2Ev,"xr",discard,_ZN6apollo2gc12TypeRegistryD2Ev
	.globl	_ZN6apollo2gc12TypeRegistryD2Ev # -- Begin function _ZN6apollo2gc12TypeRegistryD2Ev
	.p2align	4
_ZN6apollo2gc12TypeRegistryD2Ev:        # @_ZN6apollo2gc12TypeRegistryD2Ev
.seh_proc _ZN6apollo2gc12TypeRegistryD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$8, %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	__dtor__ZZN6apollo2gc20global_type_registryEvE4inst;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function __dtor__ZZN6apollo2gc20global_type_registryEvE4inst
__dtor__ZZN6apollo2gc20global_type_registryEvE4inst: # @__dtor__ZZN6apollo2gc20global_type_registryEvE4inst
.seh_proc __dtor__ZZN6apollo2gc20global_type_registryEvE4inst
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	_ZZN6apollo2gc20global_type_registryEvE4inst(%rip), %rcx
	callq	_ZN6apollo2gc12TypeRegistryD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE # -- Begin function _ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
	.p2align	4
_ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE: # @_ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
.Lfunc_begin0:
.seh_proc _ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	88(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	80(%rsp), %rcx
	movzwl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	ja	.LBB3_4
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movq	80(%rsp), %rax
	movzwl	(%rax), %eax
	incl	%eax
	movl	%eax, %edx
	movq	$0, 64(%rsp)
.Ltmp0:                                 # EH_LABEL
	leaq	64(%rsp), %r8
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB3_2
.LBB3_2:
	jmp	.LBB3_4
.LBB3_3:
.Ltmp2:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	jmp	.LBB3_8
.LBB3_4:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movq	80(%rsp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	cmpq	$0, (%rax)
	je	.LBB3_6
# %bb.5:
	movb	$0, 103(%rsp)
	movl	$1, 48(%rsp)
	jmp	.LBB3_7
.LBB3_6:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	addq	$8, %rcx
	movq	80(%rsp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	movb	$1, 103(%rsp)
	movl	$1, 48(%rsp)
.LBB3_7:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movb	103(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB3_8:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
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
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
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
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_ # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
.Lfunc_begin1:
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 128(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%r8, 112(%rsp)
	movq	128(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rax
	cmpq	120(%rsp), %rax
	jae	.LBB6_8
# %bb.1:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	ja	.LBB6_3
# %bb.2:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	subq	104(%rsp), %rdx
	movq	112(%rsp), %r8
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
	jmp	.LBB6_7
.LBB6_3:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %rdx
	movq	104(%rsp), %r8
	addq	$16, %r9
	leaq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	movq	104(%rsp), %rax
	subq	%rax, %rdx
	movq	112(%rsp), %r8
.Ltmp3:                                 # EH_LABEL
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
.Ltmp4:                                 # EH_LABEL
	jmp	.LBB6_4
.LBB6_4:
.Ltmp5:                                 # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
.Ltmp6:                                 # EH_LABEL
	jmp	.LBB6_5
.LBB6_5:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB6_7
.LBB6_6:
.Ltmp7:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB6_12
.LBB6_7:
	jmp	.LBB6_11
.LBB6_8:
	movq	104(%rsp), %rax
	cmpq	120(%rsp), %rax
	jbe	.LBB6_10
# %bb.9:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	120(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rdx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_
.LBB6_10:
	jmp	.LBB6_11
.LBB6_11:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB6_12:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin1           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rsp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
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
	.def	_ZNK6apollo2gc12TypeRegistry6lookupEt;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo2gc12TypeRegistry6lookupEt # -- Begin function _ZNK6apollo2gc12TypeRegistry6lookupEt
	.p2align	4
_ZNK6apollo2gc12TypeRegistry6lookupEt:  # @_ZNK6apollo2gc12TypeRegistry6lookupEt
.Lfunc_begin2:
.seh_proc _ZNK6apollo2gc12TypeRegistry6lookupEt
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movw	%dx, 70(%rsp)
	movq	72(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
.Ltmp8:                                 # EH_LABEL
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB9_1
.LBB9_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movzwl	70(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	addq	$8, %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB9_3
# %bb.2:
	movq	$0, 80(%rsp)
	movl	$1, 52(%rsp)
	jmp	.LBB9_4
.LBB9_3:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movzwl	70(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
	movl	$1, 52(%rsp)
.LBB9_4:
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB9_5:
.Ltmp10:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end2:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table9:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp8-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin2          #     jumps to .Ltmp10
	.byte	1                               #   On action: 1
.Lcst_end2:
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
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rsp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc12TypeRegistry4sizeEv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo2gc12TypeRegistry4sizeEv # -- Begin function _ZNK6apollo2gc12TypeRegistry4sizeEv
	.p2align	4
_ZNK6apollo2gc12TypeRegistry4sizeEv:    # @_ZNK6apollo2gc12TypeRegistry4sizeEv
.Lfunc_begin3:
.seh_proc _ZNK6apollo2gc12TypeRegistry4sizeEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
.Ltmp11:                                # EH_LABEL
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
.Ltmp12:                                # EH_LABEL
	jmp	.LBB12_1
.LBB12_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	$0, 80(%rsp)
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	leaq	64(%rsp), %rcx
	leaq	56(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB12_3
	jmp	.LBB12_7
.LBB12_3:                               #   in Loop: Header=BB12_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	cmpq	$0, 48(%rsp)
	je	.LBB12_5
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=1
	movq	80(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
.LBB12_5:                               #   in Loop: Header=BB12_2 Depth=1
	jmp	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_2 Depth=1
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev
	jmp	.LBB12_2
.LBB12_7:
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB12_8:
.Ltmp13:                                # EH_LABEL
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
GCC_except_table12:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp11-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin3          #     jumps to .Ltmp13
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
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_
	.globl	_ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_: # @_ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_
.seh_proc _ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev
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
	.def	_ZN6apollo2gc13generic_traceEPNS0_3BoxEPv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo2gc13generic_traceEPNS0_3BoxEPv # -- Begin function _ZN6apollo2gc13generic_traceEPNS0_3BoxEPv
	.p2align	4
_ZN6apollo2gc13generic_traceEPNS0_3BoxEPv: # @_ZN6apollo2gc13generic_traceEPNS0_3BoxEPv
.Lfunc_begin4:
.seh_proc _ZN6apollo2gc13generic_traceEPNS0_3BoxEPv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	cmpq	$0, 96(%rsp)
	je	.LBB18_2
# %bb.1:
	cmpq	$0, 88(%rsp)
	jne	.LBB18_3
.LBB18_2:
	jmp	.LBB18_14
.LBB18_3:
	callq	_ZN6apollo2gc20global_type_registryEv
	movq	%rax, %rcx
	movq	96(%rsp), %rax
	movw	12(%rax), %dx
	callq	_ZNK6apollo2gc12TypeRegistry6lookupEt
	movq	%rax, 80(%rsp)
	cmpq	$0, 80(%rsp)
	jne	.LBB18_5
# %bb.4:
	jmp	.LBB18_14
.LBB18_5:
	movq	80(%rsp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB18_8
# %bb.6:
	movq	80(%rsp), %rax
	movq	32(%rax), %rax
	movq	96(%rsp), %rcx
	movq	88(%rsp), %rdx
.Ltmp14:                                # EH_LABEL
	callq	*%rax
.Ltmp15:                                # EH_LABEL
	jmp	.LBB18_7
.LBB18_7:
	jmp	.LBB18_14
.LBB18_8:
	movq	88(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	96(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 64(%rsp)
	movw	$0, 62(%rsp)
.LBB18_9:                               # =>This Inner Loop Header: Depth=1
	movzwl	62(%rsp), %eax
	movq	80(%rsp), %rcx
	movzwl	12(%rcx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB18_14
# %bb.10:                               #   in Loop: Header=BB18_9 Depth=1
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	62(%rsp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 56(%rsp)
	movq	64(%rsp), %rax
	movl	56(%rsp), %ecx
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)
	cmpq	$0, 40(%rsp)
	je	.LBB18_12
# %bb.11:                               #   in Loop: Header=BB18_9 Depth=1
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZN6apollo2gc6Tracer4markEPNS0_3BoxE
.LBB18_12:                              #   in Loop: Header=BB18_9 Depth=1
	jmp	.LBB18_13
.LBB18_13:                              #   in Loop: Header=BB18_9 Depth=1
	movw	62(%rsp), %ax
	addw	$1, %ax
	movw	%ax, 62(%rsp)
	jmp	.LBB18_9
.LBB18_14:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB18_15:
.Ltmp16:                                # EH_LABEL
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
GCC_except_table18:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp14-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin4          #     jumps to .Ltmp16
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
	.def	_ZN6apollo2gc14allocate_typedERNS0_7MutatorEt;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo2gc14allocate_typedERNS0_7MutatorEt # -- Begin function _ZN6apollo2gc14allocate_typedERNS0_7MutatorEt
	.p2align	4
_ZN6apollo2gc14allocate_typedERNS0_7MutatorEt: # @_ZN6apollo2gc14allocate_typedERNS0_7MutatorEt
.seh_proc _ZN6apollo2gc14allocate_typedERNS0_7MutatorEt
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movw	%dx, 70(%rsp)
	callq	_ZN6apollo2gc20global_type_registryEv
	movq	%rax, %rcx
	movw	70(%rsp), %dx
	callq	_ZNK6apollo2gc12TypeRegistry6lookupEt
	movq	%rax, 56(%rsp)
	cmpq	$0, 56(%rsp)
	jne	.LBB19_2
# %bb.1:
	movq	$0, 80(%rsp)
	jmp	.LBB19_6
.LBB19_2:
	movq	56(%rsp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB19_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB19_5
.LBB19_4:
	leaq	_ZN6apollo2gc13generic_traceEPNS0_3BoxEPv(%rip), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB19_5
.LBB19_5:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rcx
	movq	56(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	48(%rsp), %r8
	movw	70(%rsp), %r9w
	callq	_ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 80(%rsp)
.LBB19_6:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	apollo_gc_register_type;
	.scl	2;
	.type	32;
	.endef
	.globl	apollo_gc_register_type         # -- Begin function apollo_gc_register_type
	.p2align	4
apollo_gc_register_type:                # @apollo_gc_register_type
.seh_proc apollo_gc_register_type
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	cmpq	$0, 32(%rsp)
	jne	.LBB20_2
# %bb.1:
	jmp	.LBB20_3
.LBB20_2:
	callq	_ZN6apollo2gc20global_type_registryEv
	movq	%rax, %rcx
	movq	32(%rsp), %rdx
	callq	_ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
	nop
.LBB20_3:
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	apollo_gc_alloc_typed;
	.scl	2;
	.type	32;
	.endef
	.globl	apollo_gc_alloc_typed           # -- Begin function apollo_gc_alloc_typed
	.p2align	4
apollo_gc_alloc_typed:                  # @apollo_gc_alloc_typed
.seh_proc apollo_gc_alloc_typed
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movw	%dx, 54(%rsp)
	cmpq	$0, 56(%rsp)
	jne	.LBB21_2
# %bb.1:
	movq	$0, 64(%rsp)
	jmp	.LBB21_3
.LBB21_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	movw	54(%rsp), %dx
	callq	_ZN6apollo2gc14allocate_typedERNS0_7MutatorEt
	movq	%rax, 64(%rsp)
.LBB21_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	apollo_gc_run_finalizer;
	.scl	2;
	.type	32;
	.endef
	.globl	apollo_gc_run_finalizer         # -- Begin function apollo_gc_run_finalizer
	.p2align	4
apollo_gc_run_finalizer:                # @apollo_gc_run_finalizer
.seh_proc apollo_gc_run_finalizer
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	cmpq	$0, 56(%rsp)
	jne	.LBB22_2
# %bb.1:
	jmp	.LBB22_6
.LBB22_2:
	callq	_ZN6apollo2gc20global_type_registryEv
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movw	12(%rax), %dx
	callq	_ZNK6apollo2gc12TypeRegistry6lookupEt
	movq	%rax, 48(%rsp)
	cmpq	$0, 48(%rsp)
	je	.LBB22_4
# %bb.3:
	movq	48(%rsp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB22_5
.LBB22_4:
	jmp	.LBB22_6
.LBB22_5:
	movq	56(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rax
	movq	24(%rax), %rax
	movq	40(%rsp), %rcx
	callq	*%rax
	nop
.LBB22_6:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev
.Lfunc_begin5:
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp17:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
.Ltmp18:                                # EH_LABEL
	jmp	.LBB23_1
.LBB23_1:
.Ltmp19:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp20:                                # EH_LABEL
	jmp	.LBB23_2
.LBB23_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB23_3:
.Ltmp21:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table23:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp17-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Ltmp17                #   Call between .Ltmp17 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin5          #     jumps to .Ltmp21
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_ # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
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
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB25_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y
	nop
.LBB25_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin6:
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp22:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp23:                                # EH_LABEL
	jmp	.LBB27_1
.LBB27_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB27_2:
.Ltmp24:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table27:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
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
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y
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
	callq	_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_ # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
.Lfunc_begin7:
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
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
.LBB30_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB30_4
# %bb.2:                                #   in Loop: Header=BB30_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp25:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
.Ltmp26:                                # EH_LABEL
	jmp	.LBB30_3
.LBB30_3:                               #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_1
.LBB30_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB30_5:
.Ltmp27:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table30:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
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
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin8:
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp28:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp29:                                # EH_LABEL
	jmp	.LBB31_1
.LBB31_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB31_2:
.Ltmp30:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table31:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
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
.Lttbase6:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	.globl	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_: # @_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
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
	.def	_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_
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
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_ # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_
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
	.def	_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y,"xr",discard,_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y
	.globl	_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y # -- Begin function _ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y
	.p2align	4
_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y: # @_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y
.seh_proc _ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB39_1
	jmp	.LBB39_2
.LBB39_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB39_3
.LBB39_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB39_3:
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
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_ # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
.Lfunc_begin9:
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 128(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%r8, 112(%rsp)
	movq	128(%rsp), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %r8
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	cmpq	80(%rsp), %rax
	je	.LBB41_6
# %bb.2:                                #   in Loop: Header=BB41_1 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	112(%rsp), %r8
.Ltmp31:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
.Ltmp32:                                # EH_LABEL
	jmp	.LBB41_3
.LBB41_3:                               #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_4
.LBB41_4:                               #   in Loop: Header=BB41_1 Depth=1
	movq	72(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	movq	%rax, 96(%rsp)
	jmp	.LBB41_1
.LBB41_5:
.Ltmp33:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB41_7
.LBB41_6:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB41_7:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table41:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp31-.Lfunc_begin9          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin9          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Lfunc_end9-.Ltmp32            #   Call between .Ltmp32 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB42_2
# %bb.1:
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
.LBB42_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB42_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB42_5
.LBB42_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB42_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_ # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEEC2EyyRS7_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_
	cmpq	$0, 88(%rsp)
	jbe	.LBB43_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB43_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_ # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
.Lfunc_begin10:
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	104(%rsp), %r9
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	cmpq	80(%rsp), %rax
	je	.LBB44_6
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	96(%rsp), %r8
.Ltmp34:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
.Ltmp35:                                # EH_LABEL
	jmp	.LBB44_3
.LBB44_3:                               #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_4
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	movq	72(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	jmp	.LBB44_1
.LBB44_5:
.Ltmp36:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB44_7
.LBB44_6:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB44_7:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table44:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp34-.Lfunc_begin10         # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin10         #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Lfunc_end10-.Ltmp35           #   Call between .Ltmp35 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
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
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB46_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y
	nop
.LBB46_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_ # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rdx
	callq	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
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
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB50_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB50_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin11:
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp37:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp38:                                # EH_LABEL
	jmp	.LBB51_1
.LBB51_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB51_2:
.Ltmp39:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table51:
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
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
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
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin12:
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp40:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp41:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB54_1
.LBB54_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB54_2:
.Ltmp42:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table54:
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
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
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
	jne	.LBB60_1
	jmp	.LBB60_2
.LBB60_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB60_3
.LBB60_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB60_3:
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
.Lfunc_begin13:
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
.Ltmp43:                                # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp44:                                # EH_LABEL
	jmp	.LBB65_1
.LBB65_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB65_2:
.Ltmp45:                                # EH_LABEL
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
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table65:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Lfunc_begin13         #   Call between .Lfunc_begin13 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin13         # >> Call Site 2 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin13         #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin13         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp44           #   Call between .Ltmp44 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
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
	jne	.LBB67_1
	jmp	.LBB67_2
.LBB67_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB67_3
.LBB67_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB67_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_EC2B9nqe220103ERKS8_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey
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
	.def	_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB75_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB75_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y,"xr",discard,_ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y
	.globl	_ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y # -- Begin function _ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y
	.p2align	4
_ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y: # @_ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y
.seh_proc _ZNSt3__119__allocation_resultIPPKN6apollo2gc14TypeDescriptorEyEC2B9nqe220103ES6_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy
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
	jne	.LBB78_1
	jmp	.LBB78_2
.LBB78_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB78_3
.LBB78_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB78_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
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
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS9_PS5_y
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsp), %rcx
	movq	%rcx, 16(%rax)
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	16(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
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
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin14:
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp46:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp47:                                # EH_LABEL
	jmp	.LBB86_1
.LBB86_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB86_2:
.Ltmp48:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table86:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp46-.Lfunc_begin14         # >> Call Site 1 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin14         #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_
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
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev
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
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_ # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
.Lfunc_begin15:
.seh_proc _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB93_4
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp49:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
.Ltmp50:                                # EH_LABEL
	jmp	.LBB93_3
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_1
.LBB93_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB93_5:
.Ltmp51:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table93:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp49-.Lfunc_begin15         # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin15         #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_,"xr",discard,_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	.globl	_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_ # -- Begin function _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_: # @_ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
.seh_proc _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_,"xr",discard,_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	.globl	_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_ # -- Begin function _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_: # @_ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
.seh_proc _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
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
	.def	_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_,"xr",discard,_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_
	.globl	_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_ # -- Begin function _ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_
	.p2align	4
_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_: # @_ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_
.seh_proc _ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEC2B9nqe220103ES7_
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
	.def	_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev
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
	.lcomm	_ZZN6apollo2gc20global_type_registryEvE4inst,32,8 # @_ZZN6apollo2gc20global_type_registryEvE4inst
	.lcomm	_ZGVZN6apollo2gc20global_type_registryEvE4inst,8,8 # @_ZGVZN6apollo2gc20global_type_registryEvE4inst
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
	.long	.Ltmp53-.Ltmp52                 # Subsection size
.Ltmp52:
	.short	.Ltmp55-.Ltmp54                 # Record length
.Ltmp54:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp55:
	.short	.Ltmp57-.Ltmp56                 # Record length
.Ltmp56:
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
.Ltmp57:
.Ltmp53:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo2gc20global_type_registryEv
	.addrsig_sym __cxa_guard_acquire
	.addrsig_sym __dtor__ZZN6apollo2gc20global_type_registryEvE4inst
	.addrsig_sym atexit
	.addrsig_sym __cxa_guard_release
	.addrsig_sym _ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE6resizeEyRKS5_
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	.addrsig_sym _ZNK6apollo2gc12TypeRegistry6lookupEt
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKPKN6apollo2gc14TypeDescriptorEEEbRKNS_11__wrap_iterIT_EESC_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEEppB9nqe220103Ev
	.addrsig_sym _ZN6apollo2gc13generic_traceEPNS0_3BoxEPv
	.addrsig_sym _ZN6apollo2gc6Tracer4markEPNS0_3BoxE
	.addrsig_sym _ZN6apollo2gc14allocate_typedERNS0_7MutatorEt
	.addrsig_sym _ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE10deallocateB9nqe220103ERS7_PS6_y
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_S7_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPT_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEEEvPKvS9_S9_S9_
	.addrsig_sym _ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE10deallocateB9nqe220103EPS5_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE18__construct_at_endEyRKS5_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEyRKS5_
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE17__destruct_at_endB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IPKN6apollo2gc14TypeDescriptorEJRKS5_EPS5_EEPT_SA_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
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
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E10__set_dataB9nqe220103EPS6_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E17__set_valid_rangeB9nqe220103EPS6_SB_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIPKN6apollo2gc14TypeDescriptorEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo2gc14TypeDescriptorEEEPT_NS_15__element_countEy
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_sentinelB9nqe220103EPS6_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPKN6apollo2gc14TypeDescriptorEEEPS6_EEvRT_T0_SB_SB_
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS5_S7_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E14__set_capacityB9nqe220103EPS6_
	.addrsig_sym _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS6_EES0_EES6_S8_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__114__split_bufferIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS5_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo2gc14TypeDescriptorENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKPKN6apollo2gc14TypeDescriptorEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__15mutex4lockEv
	.addrsig_sym _ZNSt3__15mutex6unlockEv
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZZN6apollo2gc20global_type_registryEvE4inst
	.addrsig_sym _ZGVZN6apollo2gc20global_type_registryEvE4inst
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
