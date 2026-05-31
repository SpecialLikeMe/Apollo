	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"barriers.cpp"
	.def	_ZN6apollo7codegen26declareGcRuntimeIntrinsicsEPv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo7codegen26declareGcRuntimeIntrinsicsEPv # -- Begin function _ZN6apollo7codegen26declareGcRuntimeIntrinsicsEPv
	.p2align	4
_ZN6apollo7codegen26declareGcRuntimeIntrinsicsEPv: # @_ZN6apollo7codegen26declareGcRuntimeIntrinsicsEPv
.seh_proc _ZN6apollo7codegen26declareGcRuntimeIntrinsicsEPv
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 112(%rsp)
	cmpq	$0, 112(%rsp)
	jne	.LBB0_2
# %bb.1:
	movq	120(%rsp), %rax
	movq	%rax, 128(%rsp)
	jmp	.LBB0_3
.LBB0_2:
	movq	112(%rsp), %rcx
	callq	_ZNK4llvm6Module10getContextEv
	movq	%rax, 104(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r9
	leaq	88(%rsp), %rcx
	leaq	.L.str(%rip), %r8
	callq	_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r9
	leaq	72(%rsp), %rcx
	leaq	.L.str.1(%rip), %r8
	callq	_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
	movq	112(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r9
	leaq	56(%rsp), %rcx
	leaq	.L.str.2(%rip), %r8
	callq	_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
	movq	120(%rsp), %rax
	movq	%rax, 128(%rsp)
.LBB0_3:
	movq	128(%rsp), %rax
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm6Module10getContextEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm6Module10getContextEv,"xr",discard,_ZNK4llvm6Module10getContextEv
	.globl	_ZNK4llvm6Module10getContextEv  # -- Begin function _ZNK4llvm6Module10getContextEv
	.p2align	4
_ZNK4llvm6Module10getContextEv:         # @_ZNK4llvm6Module10getContextEv
.seh_proc _ZNK4llvm6Module10getContextEv
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
	.def	_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE: # @_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
.seh_proc _ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rdx
	leaq	56(%rsp), %rcx
	callq	_ZN4llvm9StringRefC2EPKc
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r9
	leaq	56(%rsp), %r8
	callq	_ZN4llvm6Module19getOrInsertFunctionENS_9StringRefEPNS_12FunctionTypeE
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE
_ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE: # @_ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE
.seh_proc _ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$16, %r8d
	callq	memset
	leaq	48(%rsp), %rcx
	callq	_ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	48(%rsp), %rdx
	xorl	%r8d, %r8d
	callq	_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE
_ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE: # @_ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE
.seh_proc _ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rcx
	callq	_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	leaq	64(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	xorl	%r8d, %r8d
	callq	_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE
_ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE: # @_ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE
.seh_proc _ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	112(%rsp), %rcx
	callq	_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
	movq	%rax, 104(%rsp)
	movq	112(%rsp), %rcx
	callq	_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$3, 80(%rsp)
	leaq	88(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	88(%rsp), %rdx
	xorl	%r8d, %r8d
	callq	_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo7codegen19emit_attach_mutatorEPv;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo7codegen19emit_attach_mutatorEPv # -- Begin function _ZN6apollo7codegen19emit_attach_mutatorEPv
	.p2align	4
_ZN6apollo7codegen19emit_attach_mutatorEPv: # @_ZN6apollo7codegen19emit_attach_mutatorEPv
.seh_proc _ZN6apollo7codegen19emit_attach_mutatorEPv
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	152(%rsp), %rcx
	callq	_ZNK4llvm13IRBuilderBase14GetInsertBlockEv
	movq	%rax, %rcx
	callq	_ZN4llvm10BasicBlock9getParentEv
	movq	%rax, %rcx
	callq	_ZN4llvm11GlobalValue9getParentEv
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rcx
	callq	_ZNK4llvm6Module10getContextEv
	movq	%rax, %rcx
	callq	_ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r9
	leaq	128(%rsp), %rcx
	leaq	.L.str(%rip), %r8
	callq	_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
	movq	152(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	96(%rsp), %rcx
	xorl	%edx, %edx
	movl	$16, %r8d
	callq	memset
	leaq	96(%rsp), %rcx
	callq	_ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev
	leaq	56(%rsp), %rcx
	leaq	.L.str.3(%rip), %rdx
	callq	_ZN4llvm5TwineC2EPKc
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	112(%rsp), %rdx
	leaq	96(%rsp), %r8
	leaq	56(%rsp), %r9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	$0, 32(%rsp)
	callq	_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
	nop
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm13IRBuilderBase14GetInsertBlockEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm13IRBuilderBase14GetInsertBlockEv,"xr",discard,_ZNK4llvm13IRBuilderBase14GetInsertBlockEv
	.globl	_ZNK4llvm13IRBuilderBase14GetInsertBlockEv # -- Begin function _ZNK4llvm13IRBuilderBase14GetInsertBlockEv
	.p2align	4
_ZNK4llvm13IRBuilderBase14GetInsertBlockEv: # @_ZNK4llvm13IRBuilderBase14GetInsertBlockEv
.seh_proc _ZNK4llvm13IRBuilderBase14GetInsertBlockEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	56(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm10BasicBlock9getParentEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm10BasicBlock9getParentEv,"xr",discard,_ZN4llvm10BasicBlock9getParentEv
	.globl	_ZN4llvm10BasicBlock9getParentEv # -- Begin function _ZN4llvm10BasicBlock9getParentEv
	.p2align	4
_ZN4llvm10BasicBlock9getParentEv:       # @_ZN4llvm10BasicBlock9getParentEv
.seh_proc _ZN4llvm10BasicBlock9getParentEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	72(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm11GlobalValue9getParentEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm11GlobalValue9getParentEv,"xr",discard,_ZN4llvm11GlobalValue9getParentEv
	.globl	_ZN4llvm11GlobalValue9getParentEv # -- Begin function _ZN4llvm11GlobalValue9getParentEv
	.p2align	4
_ZN4llvm11GlobalValue9getParentEv:      # @_ZN4llvm11GlobalValue9getParentEv
.seh_proc _ZN4llvm11GlobalValue9getParentEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	40(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE,"xr",discard,_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
	.globl	_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE # -- Begin function _ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
	.p2align	4
_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE: # @_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
.seh_proc _ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	176(%rsp), %rdx
	movq	%rax, 128(%rsp)
	movq	%rcx, 120(%rsp)
	movq	%r8, 112(%rsp)
	movq	%r9, 104(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZN4llvm14FunctionCallee15getFunctionTypeEv
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	callq	_ZN4llvm14FunctionCallee9getCalleeEv
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %r9
	movq	%r9, 88(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 96(%rsp)
	movq	104(%rsp), %r10
	movq	176(%rsp), %rax
	leaq	88(%rsp), %r9
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE
	nop
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev,"xr",discard,_ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev
	.globl	_ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev # -- Begin function _ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev
	.p2align	4
_ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev:     # @_ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev
.seh_proc _ZN4llvm8ArrayRefIPNS_5ValueEEC2Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm5TwineC2EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm5TwineC2EPKc,"xr",discard,_ZN4llvm5TwineC2EPKc
	.globl	_ZN4llvm5TwineC2EPKc            # -- Begin function _ZN4llvm5TwineC2EPKc
	.p2align	4
_ZN4llvm5TwineC2EPKc:                   # @_ZN4llvm5TwineC2EPKc
.seh_proc _ZN4llvm5TwineC2EPKc
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movb	$1, 32(%rax)
	movb	$1, 33(%rax)
	movq	40(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB12_2
# %bb.1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movb	$3, 32(%rax)
	jmp	.LBB12_3
.LBB12_2:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	$1, 32(%rax)
.LBB12_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine7isValidEv
	testb	$1, %al
	jne	.LBB12_5
# %bb.4:
	leaq	.L.str.15(%rip), %rcx
	leaq	.L.str.16(%rip), %rdx
	movl	$265, %r8d                      # imm = 0x109
	callq	_assert
	nop
.LBB12_5:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo7codegen19emit_safepoint_pollEPvS1_;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo7codegen19emit_safepoint_pollEPvS1_ # -- Begin function _ZN6apollo7codegen19emit_safepoint_pollEPvS1_
	.p2align	4
_ZN6apollo7codegen19emit_safepoint_pollEPvS1_: # @_ZN6apollo7codegen19emit_safepoint_pollEPvS1_
.seh_proc _ZN6apollo7codegen19emit_safepoint_pollEPvS1_
# %bb.0:
	subq	$216, %rsp
	.seh_stackalloc 216
	.seh_endprologue
	movq	%rcx, 208(%rsp)
	movq	%rdx, 200(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	192(%rsp), %rcx
	callq	_ZNK4llvm13IRBuilderBase14GetInsertBlockEv
	movq	%rax, %rcx
	callq	_ZN4llvm10BasicBlock9getParentEv
	movq	%rax, %rcx
	callq	_ZN4llvm11GlobalValue9getParentEv
	movq	%rax, 184(%rsp)
	movq	184(%rsp), %rcx
	callq	_ZNK4llvm6Module10getContextEv
	movq	%rax, 176(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 168(%rsp)
	cmpq	$0, 168(%rsp)
	jne	.LBB13_2
# %bb.1:
	movq	208(%rsp), %rcx
	callq	_ZN6apollo7codegen19emit_attach_mutatorEPv
	movq	%rax, 168(%rsp)
.LBB13_2:
	movq	184(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	callq	_ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r9
	leaq	152(%rsp), %rcx
	leaq	.L.str.1(%rip), %r8
	callq	_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
	movq	192(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	$1, 112(%rsp)
	leaq	120(%rsp), %rcx
	leaq	104(%rsp), %rdx
	callq	_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E
	leaq	56(%rsp), %rcx
	leaq	.L.str.4(%rip), %rdx
	callq	_ZN4llvm5TwineC2EPKc
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	136(%rsp), %rdx
	leaq	120(%rsp), %r8
	leaq	56(%rsp), %r9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	$0, 32(%rsp)
	callq	_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
	nop
	.seh_startepilogue
	addq	$216, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E,"xr",discard,_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E
	.globl	_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E # -- Begin function _ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E
	.p2align	4
_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E: # @_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E
.seh_proc _ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB14_2
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB14_3:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rax)
	callq	_ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo7codegen18emit_write_barrierEPvS1_S1_S1_;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo7codegen18emit_write_barrierEPvS1_S1_S1_ # -- Begin function _ZN6apollo7codegen18emit_write_barrierEPvS1_S1_S1_
	.p2align	4
_ZN6apollo7codegen18emit_write_barrierEPvS1_S1_S1_: # @_ZN6apollo7codegen18emit_write_barrierEPvS1_S1_S1_
.seh_proc _ZN6apollo7codegen18emit_write_barrierEPvS1_S1_S1_
# %bb.0:
	subq	$248, %rsp
	.seh_stackalloc 248
	.seh_endprologue
	movq	%rcx, 240(%rsp)
	movq	%rdx, 232(%rsp)
	movq	%r8, 224(%rsp)
	movq	%r9, 216(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNK4llvm13IRBuilderBase14GetInsertBlockEv
	movq	%rax, %rcx
	callq	_ZN4llvm10BasicBlock9getParentEv
	movq	%rax, %rcx
	callq	_ZN4llvm11GlobalValue9getParentEv
	movq	%rax, 200(%rsp)
	movq	200(%rsp), %rcx
	callq	_ZNK4llvm6Module10getContextEv
	movq	%rax, 192(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 184(%rsp)
	cmpq	$0, 184(%rsp)
	jne	.LBB15_2
# %bb.1:
	movq	240(%rsp), %rcx
	callq	_ZN6apollo7codegen19emit_attach_mutatorEPv
	movq	%rax, 184(%rsp)
.LBB15_2:
	movq	200(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	192(%rsp), %rcx
	callq	_ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r9
	leaq	168(%rsp), %rcx
	leaq	.L.str.2(%rip), %r8
	callq	_ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
	movq	208(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	168(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	$3, 128(%rsp)
	leaq	136(%rsp), %rcx
	leaq	120(%rsp), %rdx
	callq	_ZN4llvm8ArrayRefIPNS_5ValueEEC2ESt16initializer_listIS2_E
	leaq	56(%rsp), %rcx
	leaq	.L.str.4(%rip), %rdx
	callq	_ZN4llvm5TwineC2EPKc
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	152(%rsp), %rdx
	leaq	136(%rsp), %r8
	leaq	56(%rsp), %r9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	$0, 32(%rsp)
	callq	_ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
	nop
	.seh_startepilogue
	addq	$248, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm9StringRefC2EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm9StringRefC2EPKc,"xr",discard,_ZN4llvm9StringRefC2EPKc
	.globl	_ZN4llvm9StringRefC2EPKc        # -- Begin function _ZN4llvm9StringRefC2EPKc
	.p2align	4
_ZN4llvm9StringRefC2EPKc:               # @_ZN4llvm9StringRefC2EPKc
.seh_proc _ZN4llvm9StringRefC2EPKc
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpq	$0, 56(%rsp)
	je	.LBB16_2
# %bb.1:
	movq	56(%rsp), %rdx
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
	jmp	.LBB16_3
.LBB16_2:
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
.LBB16_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	40(%rsp), %rdx
	callq	_ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc,"xr",discard,_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
	.globl	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc # -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
	.p2align	4
_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc: # @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
.seh_proc _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
	.globl	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev: # @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
.seh_proc _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE,"xr",discard,_ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE
	.globl	_ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE # -- Begin function _ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE
	.p2align	4
_ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE: # @_ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE
.seh_proc _ZN4llvm9StringRefC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rdx, (%rax)
	callq	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE,"xr",discard,_ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE
	.globl	_ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE # -- Begin function _ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE
	.p2align	4
_ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE: # @_ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE
.seh_proc _ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc,"xr",discard,_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.globl	_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc # -- Begin function _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.p2align	4
_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc: # @_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
.seh_proc _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_,"xr",discard,_ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.globl	_ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_ # -- Begin function _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.p2align	4
_ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_: # @_ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
.seh_proc _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	strlen
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev: # @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
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
	.def	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev: # @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
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
	.def	_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE,"xr",discard,_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
	.globl	_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE # -- Begin function _ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
	.p2align	4
_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE: # @_ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
.seh_proc _ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	xorl	%edx, %edx
	callq	_ZN4llvm11PointerType3getERNS_11LLVMContextEj
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev,"xr",discard,_ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev
	.globl	_ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev # -- Begin function _ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev
	.p2align	4
_ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev:      # @_ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev
.seh_proc _ZN4llvm8ArrayRefIPNS_4TypeEEC2Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E,"xr",discard,_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E
	.globl	_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E # -- Begin function _ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E
	.p2align	4
_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E: # @_ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E
.seh_proc _ZN4llvm8ArrayRefIPNS_4TypeEEC2ESt16initializer_listIS2_E
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB27_2
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB27_3
.LBB27_2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB27_3:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rax)
	callq	_ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev: # @_ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev
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
	.def	_ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev: # @_ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev: # @_ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev
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
	.def	_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE,"xr",discard,_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE
	.globl	_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE # -- Begin function _ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE
	.p2align	4
_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE: # @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE
.seh_proc _ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE
# %bb.0:
	subq	$216, %rsp
	.seh_stackalloc 216
	.seh_endprologue
	movq	264(%rsp), %rax
	movq	256(%rsp), %rax
	movq	%rcx, 208(%rsp)
	movq	%rdx, 200(%rsp)
	movq	%r8, 192(%rsp)
	movq	%r9, 184(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	200(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	192(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	(%r9), %rcx
	movq	%rcx, 160(%rsp)
	movq	8(%r9), %rcx
	movq	%rcx, 168(%rsp)
	movq	120(%rax), %rcx
	movq	%rcx, 144(%rsp)
	movq	128(%rax), %rax
	movq	%rax, 152(%rsp)
	leaq	104(%rsp), %rcx
	leaq	.L.str.4(%rip), %rdx
	callq	_ZN4llvm5TwineC2EPKc
	leaq	88(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZN4llvm14InsertPositionC2EDn
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	leaq	160(%rsp), %r8
	leaq	144(%rsp), %r9
	leaq	104(%rsp), %r10
	leaq	88(%rsp), %rax
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 176(%rsp)
	testb	$1, 116(%rax)
	je	.LBB31_2
# %bb.1:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	176(%rsp), %rdx
	callq	_ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE
.LBB31_2:
	leaq	176(%rsp), %rcx
	callq	_ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_
	testb	$1, %al
	jne	.LBB31_3
	jmp	.LBB31_4
.LBB31_3:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	176(%rsp), %rdx
	movq	264(%rsp), %r8
	movl	112(%rcx), %eax
	movl	%eax, 84(%rsp)
	movl	84(%rsp), %r9d
	callq	_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE
.LBB31_4:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	176(%rsp), %rdx
	movq	256(%rsp), %r8
	callq	_ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE
	nop
	.seh_startepilogue
	addq	$216, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14FunctionCallee15getFunctionTypeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14FunctionCallee15getFunctionTypeEv,"xr",discard,_ZN4llvm14FunctionCallee15getFunctionTypeEv
	.globl	_ZN4llvm14FunctionCallee15getFunctionTypeEv # -- Begin function _ZN4llvm14FunctionCallee15getFunctionTypeEv
	.p2align	4
_ZN4llvm14FunctionCallee15getFunctionTypeEv: # @_ZN4llvm14FunctionCallee15getFunctionTypeEv
.seh_proc _ZN4llvm14FunctionCallee15getFunctionTypeEv
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
	.def	_ZN4llvm14FunctionCallee9getCalleeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14FunctionCallee9getCalleeEv,"xr",discard,_ZN4llvm14FunctionCallee9getCalleeEv
	.globl	_ZN4llvm14FunctionCallee9getCalleeEv # -- Begin function _ZN4llvm14FunctionCallee9getCalleeEv
	.p2align	4
_ZN4llvm14FunctionCallee9getCalleeEv:   # @_ZN4llvm14FunctionCallee9getCalleeEv
.seh_proc _ZN4llvm14FunctionCallee9getCalleeEv
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
	.def	_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE,"xr",discard,_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
	.globl	_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE # -- Begin function _ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
	.p2align	4
_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE: # @_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
.Lfunc_begin0:
.seh_proc _ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$296, %rsp                      # imm = 0x128
	.seh_stackalloc 296
	.seh_endprologue
	movq	%r9, 104(%rsp)                  # 8-byte Spill
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%rcx, %rax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	344(%rsp), %r8
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	336(%rsp), %r8
	movq	%rax, 288(%rsp)
	movq	%rdx, 280(%rsp)
	movq	%rcx, 272(%rsp)
	movq	%r9, 264(%rsp)
	callq	_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv
	movq	104(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	movups	(%r9), %xmm0
	movaps	%xmm0, 240(%rsp)
	leaq	240(%rsp), %rcx
	callq	_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE
	movl	92(%rsp), %ecx                  # 4-byte Reload
	movl	%eax, %edx
	callq	_ZN4llvm8CallInst18ComputeNumOperandsEjj
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, 256(%rsp)
	callq	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv
                                        # kill: def $eax killed $eax killed $rax
	shll	$4, %eax
	movl	%eax, 260(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	232(%rsp), %rdx
	movl	$88, %ecx
	callq	_ZN4llvm4UsernwEyNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
	movq	96(%rsp), %r8                   # 8-byte Reload
	movq	104(%rsp), %r9                  # 8-byte Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	288(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	280(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movups	(%r8), %xmm0
	movaps	%xmm0, 208(%rsp)
	movups	(%r9), %xmm0
	movaps	%xmm0, 192(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	256(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	176(%rsp), %rdx
.Ltmp0:                                 # EH_LABEL
	leaq	188(%rsp), %rcx
	callq	_ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB34_1
.LBB34_1:
	movq	128(%rsp), %r8                  # 8-byte Reload
	movq	120(%rsp), %rdx                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	136(%rsp), %r9                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movaps	%xmm0, 144(%rsp)
	movl	188(%rsp), %r10d
.Ltmp2:                                 # EH_LABEL
	movq	%rsp, %rax
	leaq	144(%rsp), %r11
	movq	%r11, 56(%rax)
	movl	%r10d, 48(%rax)
	movq	%r9, 40(%rax)
	leaq	192(%rsp), %r9
	movq	%r9, 32(%rax)
	leaq	208(%rsp), %r9
	callq	_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
.Ltmp3:                                 # EH_LABEL
	jmp	.LBB34_2
.LBB34_2:
	movq	112(%rsp), %rax                 # 8-byte Reload
	.seh_startepilogue
	addq	$296, %rsp                      # imm = 0x128
	.seh_endepilogue
	retq
.LBB34_3:
.Ltmp4:                                 # EH_LABEL
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	72(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 168(%rsp)
	movl	%eax, 164(%rsp)
	movq	232(%rsp), %rdx
	callq	_ZN4llvm4UserdlEPvNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
# %bb.4:
	movq	168(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.section	.text$_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE,"xr",discard,_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
	.seh_endproc
	.section	.xdata$_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table34:
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
	.section	.text$_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE,"xr",discard,_ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
                                        # -- End function
	.def	_ZN4llvm14InsertPositionC2EDn;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14InsertPositionC2EDn,"xr",discard,_ZN4llvm14InsertPositionC2EDn
	.globl	_ZN4llvm14InsertPositionC2EDn   # -- Begin function _ZN4llvm14InsertPositionC2EDn
	.p2align	4
_ZN4llvm14InsertPositionC2EDn:          # @_ZN4llvm14InsertPositionC2EDn
.seh_proc _ZN4llvm14InsertPositionC2EDn
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movl	$16, %r8d
	callq	memset
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE,"xr",discard,_ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE
	.globl	_ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE # -- Begin function _ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE
	.p2align	4
_ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE: # @_ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE
.seh_proc _ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	movl	$75, %edx
	callq	_ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_,"xr",discard,_ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_
	.globl	_ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_ # -- Begin function _ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_
	.p2align	4
_ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_: # @_ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_
.seh_proc _ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE,"xr",discard,_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE
	.globl	_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE # -- Begin function _ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE
	.p2align	4
_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE: # @_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE
.seh_proc _ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	%r9d, 84(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpq	$0, 56(%rsp)
	jne	.LBB38_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	104(%rax), %rax
	movq	%rax, 56(%rsp)
.LBB38_2:
	cmpq	$0, 56(%rsp)
	je	.LBB38_4
# %bb.3:
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	movl	$3, %edx
	callq	_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE
.LBB38_4:
	movq	64(%rsp), %rcx
	movl	84(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	52(%rsp), %edx
	callq	_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE,"xr",discard,_ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE
	.globl	_ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE # -- Begin function _ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE
	.p2align	4
_ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE: # @_ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE
.seh_proc _ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	96(%rax), %rcx
	movq	72(%rsp), %rdx
	movq	64(%rsp), %r8
	movq	64(%rax), %r9
	movq	%r9, 48(%rsp)
	movq	72(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	(%rcx), %rax
	leaq	48(%rsp), %r9
	callq	*16(%rax)
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx
	callq	_ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE
	movq	72(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CallInst18ComputeNumOperandsEjj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CallInst18ComputeNumOperandsEjj,"xr",discard,_ZN4llvm8CallInst18ComputeNumOperandsEjj
	.globl	_ZN4llvm8CallInst18ComputeNumOperandsEjj # -- Begin function _ZN4llvm8CallInst18ComputeNumOperandsEjj
	.p2align	4
_ZN4llvm8CallInst18ComputeNumOperandsEjj: # @_ZN4llvm8CallInst18ComputeNumOperandsEjj
.seh_proc _ZN4llvm8CallInst18ComputeNumOperandsEjj
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movl	%ecx, 4(%rsp)
	movl	%edx, (%rsp)
	movl	4(%rsp), %eax
	addl	$1, %eax
	addl	(%rsp), %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv,"xr",discard,_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv
	.globl	_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv # -- Begin function _ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv
	.p2align	4
_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv: # @_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv
.seh_proc _ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv
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
	.def	_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE,"xr",discard,_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE
	.globl	_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE # -- Begin function _ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE
	.p2align	4
_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE: # @_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE
.seh_proc _ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movl	$0, 76(%rsp)
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv
	movq	%rax, 48(%rsp)
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB42_4
# %bb.2:                                #   in Loop: Header=BB42_1 Depth=1
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv
	movq	%rax, %rcx
	movl	76(%rsp), %eax
                                        # kill: def $rax killed $eax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 76(%rsp)
# %bb.3:                                #   in Loop: Header=BB42_1 Depth=1
	movq	56(%rsp), %rax
	addq	$48, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB42_1
.LBB42_4:
	movl	76(%rsp), %eax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv,"xr",discard,_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv
	.globl	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv # -- Begin function _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv
	.p2align	4
_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv: # @_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv
.seh_proc _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv
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
	.def	_ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE,"xr",discard,_ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
	.globl	_ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE # -- Begin function _ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
	.p2align	4
_ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE: # @_ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
.seh_proc _ZN4llvm4User9AllocInfoC2ENS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movl	8(%rsp), %edx
	movl	(%rax), %ecx
	andl	$134217727, %edx                # imm = 0x7FFFFFF
	andl	$-134217728, %ecx               # imm = 0xF8000000
	orl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	(%rax), %ecx
	andl	$-134217729, %ecx               # imm = 0xF7FFFFFF
	orl	$0, %ecx
	movl	%ecx, (%rax)
	cmpl	$0, 12(%rsp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	(%rax), %ecx
	andl	$1, %edx
	shll	$28, %edx
	andl	$-268435457, %ecx               # imm = 0xEFFFFFFF
	orl	%edx, %ecx
	movl	%ecx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE,"xr",discard,_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
	.globl	_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE # -- Begin function _ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
	.p2align	4
_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE: # @_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
.Lfunc_begin1:
.seh_proc _ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$248, %rsp
	.seh_stackalloc 248
	.seh_endprologue
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	movq	312(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movl	304(%rsp), %eax
	movq	296(%rsp), %r10
	movq	288(%rsp), %r10
	movq	%r10, 88(%rsp)                  # 8-byte Spill
	movl	%eax, 244(%rsp)
	movq	%rcx, 232(%rsp)
	movq	%rdx, 224(%rsp)
	movq	%r8, 216(%rsp)
	movq	%r9, 208(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	224(%rsp), %rcx
	callq	_ZNK4llvm12FunctionType13getReturnTypeEv
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	244(%rsp), %r8d
	movl	%r8d, 204(%rsp)
	movups	(%rax), %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	204(%rsp), %r9d
	movq	%rsp, %rax
	leaq	176(%rsp), %r8
	movq	%r8, 32(%rax)
	movl	$57, %r8d
	callq	_ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movl	244(%rsp), %eax
	andl	$134217727, %eax                # imm = 0x7FFFFFF
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	callq	_ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movups	(%rax), %xmm0
	movaps	%xmm0, 160(%rsp)
.Ltmp5:                                 # EH_LABEL
	leaq	160(%rsp), %rcx
	callq	_ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE
.Ltmp6:                                 # EH_LABEL
	movl	%eax, 108(%rsp)                 # 4-byte Spill
	jmp	.LBB45_1
.LBB45_1:
	movl	84(%rsp), %eax                  # 4-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	108(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %edx
                                        # kill: def $rdx killed $edx
	addq	%rdx, %rcx
	addq	$1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	je	.LBB45_5
# %bb.2:
.Ltmp7:                                 # EH_LABEL
	leaq	.L.str.5(%rip), %rcx
	leaq	.L.str.6(%rip), %rdx
	movl	$1680, %r8d                     # imm = 0x690
	callq	_assert
.Ltmp8:                                 # EH_LABEL
	jmp	.LBB45_3
.LBB45_3:
.LBB45_4:
.Ltmp11:                                # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	48(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 152(%rsp)
	movl	%eax, 148(%rsp)
	callq	_ZN4llvm8CallBaseD2Ev
	jmp	.LBB45_7
.LBB45_5:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	72(%rsp), %r9                   # 8-byte Reload
	movq	224(%rsp), %rdx
	movq	216(%rsp), %r8
	movups	(%r9), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	(%rax), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	296(%rsp), %r9
.Ltmp9:                                 # EH_LABEL
	movq	%rsp, %rax
	movq	%r9, 40(%rax)
	leaq	112(%rsp), %r9
	movq	%r9, 32(%rax)
	leaq	128(%rsp), %r9
	callq	_ZN4llvm8CallInst4initEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineE
.Ltmp10:                                # EH_LABEL
	jmp	.LBB45_6
.LBB45_6:
	.seh_startepilogue
	addq	$248, %rsp
	.seh_endepilogue
	retq
.LBB45_7:
	movq	152(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE,"xr",discard,_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
	.seh_endproc
	.section	.xdata$_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table45:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp10-.Ltmp5                 #   Call between .Ltmp5 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.section	.text$_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE,"xr",discard,_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
                                        # -- End function
	.def	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv,"xr",discard,_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv
	.globl	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv # -- Begin function _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv
	.p2align	4
_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv: # @_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv
.seh_proc _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv
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
	.def	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv,"xr",discard,_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv
	.globl	_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv # -- Begin function _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv
	.p2align	4
_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv: # @_ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv
.seh_proc _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	(%rcx), %rax
	imulq	$48, 8(%rcx), %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv,"xr",discard,_ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv
	.globl	_ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv # -- Begin function _ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv
	.p2align	4
_ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv: # @_ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv
.seh_proc _ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
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
	.def	_ZNK4llvm12FunctionType13getReturnTypeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm12FunctionType13getReturnTypeEv,"xr",discard,_ZNK4llvm12FunctionType13getReturnTypeEv
	.globl	_ZNK4llvm12FunctionType13getReturnTypeEv # -- Begin function _ZNK4llvm12FunctionType13getReturnTypeEv
	.p2align	4
_ZNK4llvm12FunctionType13getReturnTypeEv: # @_ZNK4llvm12FunctionType13getReturnTypeEv
.seh_proc _ZNK4llvm12FunctionType13getReturnTypeEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE,"xr",discard,_ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE
	.globl	_ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE # -- Begin function _ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE
	.p2align	4
_ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE: # @_ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE
.seh_proc _ZN4llvm8CallBaseCI2NS_11InstructionEEPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	128(%rsp), %rax
	movl	%r9d, 84(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rdx
	movl	60(%rsp), %r8d
	movl	84(%rsp), %r9d
	movq	%rax, 32(%rsp)
	callq	_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	$72, %rcx
	callq	_ZN4llvm13AttributeListC2Ev
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CallBaseD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CallBaseD2Ev,"xr",discard,_ZN4llvm8CallBaseD2Ev
	.globl	_ZN4llvm8CallBaseD2Ev           # -- Begin function _ZN4llvm8CallBaseD2Ev
	.p2align	4
_ZN4llvm8CallBaseD2Ev:                  # @_ZN4llvm8CallBaseD2Ev
.seh_proc _ZN4llvm8CallBaseD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm11InstructionD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13AttributeListC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13AttributeListC2Ev,"xr",discard,_ZN4llvm13AttributeListC2Ev
	.globl	_ZN4llvm13AttributeListC2Ev     # -- Begin function _ZN4llvm13AttributeListC2Ev
	.p2align	4
_ZN4llvm13AttributeListC2Ev:            # @_ZN4llvm13AttributeListC2Ev
.seh_proc _ZN4llvm13AttributeListC2Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev,"xr",discard,_ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev
	.globl	_ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev # -- Begin function _ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev
	.p2align	4
_ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev: # @_ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev
.seh_proc _ZN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEC2Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	movb	$0, 8(%rax)
	movb	$0, 9(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE,"xr",discard,_ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE
	.globl	_ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE # -- Begin function _ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE
	.p2align	4
_ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE: # @_ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE
.seh_proc _ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movl	%edx, 60(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	addq	$72, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm5Value10getContextEv
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movl	60(%rsp), %r8d
	callq	_ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 72(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE,"xr",discard,_ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE
	.globl	_ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE # -- Begin function _ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE
	.p2align	4
_ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE: # @_ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE
.seh_proc _ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movl	%r8d, 44(%rsp)
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	movl	44(%rsp), %r9d
	movl	$4294967295, %r8d               # imm = 0xFFFFFFFF
	callq	_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_,"xr",discard,_ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_
	.globl	_ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_ # -- Begin function _ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_
	.p2align	4
_ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_: # @_ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_
.seh_proc _ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_,"xr",discard,_ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_
	.globl	_ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_ # -- Begin function _ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_
	.p2align	4
_ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_: # @_ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_
.seh_proc _ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_,"xr",discard,_ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_
	.globl	_ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_ # -- Begin function _ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_
	.p2align	4
_ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_: # @_ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_
.seh_proc _ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_
	.globl	_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_: # @_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_
.seh_proc _ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_
	.globl	_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_: # @_ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_
.seh_proc _ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_,"xr",discard,_ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_
	.globl	_ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_ # -- Begin function _ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_
	.p2align	4
_ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_: # @_ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_
.seh_proc _ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_,"xr",discard,_ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_
	.globl	_ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_ # -- Begin function _ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_
	.p2align	4
_ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_: # @_ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_
.seh_proc _ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	cmpq	$0, 32(%rsp)
	jne	.LBB63_2
# %bb.1:
	leaq	.L.str.7(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$109, %r8d
	callq	_assert
.LBB63_2:
	movq	32(%rsp), %rcx
	callq	_ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_,"xr",discard,_ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_
	.globl	_ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_ # -- Begin function _ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_
	.p2align	4
_ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_: # @_ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_
.seh_proc _ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE,"xr",discard,_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE
	.globl	_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE # -- Begin function _ZN4llvm14FPMathOperator7classofEPKNS_5ValueE
	.p2align	4
_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE: # @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE
.seh_proc _ZN4llvm14FPMathOperator7classofEPKNS_5ValueE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rcx
	callq	_ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_
	movq	%rax, 40(%rsp)
	cmpq	$0, 40(%rsp)
	je	.LBB65_2
# %bb.1:
	movq	40(%rsp), %rcx
	callq	_ZNK4llvm11Instruction9getOpcodeEv
	movl	%eax, 52(%rsp)
	jmp	.LBB65_3
.LBB65_2:
	movb	$0, 71(%rsp)
	jmp	.LBB65_7
.LBB65_3:
	movl	52(%rsp), %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	subl	$12, %eax
	je	.LBB65_4
	jmp	.LBB65_8
.LBB65_8:
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$14, %eax
	je	.LBB65_4
	jmp	.LBB65_9
.LBB65_9:
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$16, %eax
	je	.LBB65_4
	jmp	.LBB65_10
.LBB65_10:
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$18, %eax
	je	.LBB65_4
	jmp	.LBB65_11
.LBB65_11:
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$21, %eax
	je	.LBB65_4
	jmp	.LBB65_12
.LBB65_12:
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$24, %eax
	je	.LBB65_4
	jmp	.LBB65_13
.LBB65_13:
	movl	36(%rsp), %eax                  # 4-byte Reload
	addl	$-45, %eax
	subl	$2, %eax
	jb	.LBB65_4
	jmp	.LBB65_14
.LBB65_14:
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$55, %eax
	je	.LBB65_4
	jmp	.LBB65_15
.LBB65_15:
	movl	36(%rsp), %eax                  # 4-byte Reload
	addl	$-56, %eax
	subl	$3, %eax
	jb	.LBB65_5
	jmp	.LBB65_6
.LBB65_4:
	movb	$1, 71(%rsp)
	jmp	.LBB65_7
.LBB65_5:
	movq	56(%rsp), %rcx
	callq	_ZNK4llvm5Value7getTypeEv
	movq	%rax, %rcx
	callq	_ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE
	andb	$1, %al
	movb	%al, 71(%rsp)
	jmp	.LBB65_7
.LBB65_6:
	movb	$0, 71(%rsp)
.LBB65_7:
	movb	71(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_,"xr",discard,_ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_
	.globl	_ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_ # -- Begin function _ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_
	.p2align	4
_ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_: # @_ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_
.seh_proc _ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	32(%rsp), %rcx
	callq	_ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_
	testb	$1, %al
	jne	.LBB66_2
# %bb.1:
	leaq	.L.str.9(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$656, %r8d                      # imm = 0x290
	callq	_assert
.LBB66_2:
	leaq	32(%rsp), %rcx
	callq	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm11Instruction9getOpcodeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm11Instruction9getOpcodeEv,"xr",discard,_ZNK4llvm11Instruction9getOpcodeEv
	.globl	_ZNK4llvm11Instruction9getOpcodeEv # -- Begin function _ZNK4llvm11Instruction9getOpcodeEv
	.p2align	4
_ZNK4llvm11Instruction9getOpcodeEv:     # @_ZNK4llvm11Instruction9getOpcodeEv
.seh_proc _ZNK4llvm11Instruction9getOpcodeEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm5Value10getValueIDEv
	subl	$29, %eax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE,"xr",discard,_ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE
	.globl	_ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE # -- Begin function _ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE
	.p2align	4
_ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE: # @_ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE
.seh_proc _ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNK4llvm4Type16isFPOrFPVectorTyEv
	movb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jne	.LBB68_2
# %bb.1:
	movq	48(%rsp), %rcx
	callq	_ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE
	movb	%al, 47(%rsp)                   # 1-byte Spill
.LBB68_2:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Value7getTypeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Value7getTypeEv,"xr",discard,_ZNK4llvm5Value7getTypeEv
	.globl	_ZNK4llvm5Value7getTypeEv       # -- Begin function _ZNK4llvm5Value7getTypeEv
	.p2align	4
_ZNK4llvm5Value7getTypeEv:              # @_ZNK4llvm5Value7getTypeEv
.seh_proc _ZNK4llvm5Value7getTypeEv
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
	.def	_ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_,"xr",discard,_ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_
	.globl	_ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_ # -- Begin function _ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_
	.p2align	4
_ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_: # @_ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_
.seh_proc _ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_
	movq	%rax, %rcx
	callq	_ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_,"xr",discard,_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_
	.globl	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_ # -- Begin function _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_
	.p2align	4
_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_: # @_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_
.seh_proc _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_
	testb	$1, %al
	jne	.LBB71_2
# %bb.1:
	callq	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv
	movq	%rax, 48(%rsp)
	jmp	.LBB71_3
.LBB71_2:
	movq	40(%rsp), %rcx
	callq	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_
	movq	%rax, 48(%rsp)
.LBB71_3:
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_,"xr",discard,_ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_
	.globl	_ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_ # -- Begin function _ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_
	.p2align	4
_ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_: # @_ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_
.seh_proc _ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	cmpq	$0, (%rax)
	setne	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_,"xr",discard,_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_
	.globl	_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_ # -- Begin function _ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_
	.p2align	4
_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_: # @_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_
.seh_proc _ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_
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
	.def	_ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_,"xr",discard,_ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_
	.globl	_ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_ # -- Begin function _ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_
	.p2align	4
_ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_: # @_ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_
.seh_proc _ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv,"xr",discard,_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv
	.globl	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv # -- Begin function _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv
	.p2align	4
_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv: # @_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv
# %bb.0:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_,"xr",discard,_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_
	.globl	_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_ # -- Begin function _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_
	.p2align	4
_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_: # @_ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_
.seh_proc _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_
	.globl	_ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_: # @_ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_
.seh_proc _ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_
	.globl	_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_: # @_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_
.seh_proc _ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_,"xr",discard,_ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_
	.globl	_ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_ # -- Begin function _ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_
	.p2align	4
_ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_: # @_ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_
.seh_proc _ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_,"xr",discard,_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_
	.globl	_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_ # -- Begin function _ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_
	.p2align	4
_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_: # @_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_
.seh_proc _ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	cmpq	$0, 32(%rsp)
	jne	.LBB80_2
# %bb.1:
	leaq	.L.str.7(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$109, %r8d
	callq	_assert
.LBB80_2:
	movq	32(%rsp), %rcx
	callq	_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_,"xr",discard,_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_
	.globl	_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_ # -- Begin function _ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_
	.p2align	4
_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_: # @_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_
.seh_proc _ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm5Value10getValueIDEv
	cmpl	$29, %eax
	setae	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Value10getValueIDEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Value10getValueIDEv,"xr",discard,_ZNK4llvm5Value10getValueIDEv
	.globl	_ZNK4llvm5Value10getValueIDEv   # -- Begin function _ZNK4llvm5Value10getValueIDEv
	.p2align	4
_ZNK4llvm5Value10getValueIDEv:          # @_ZNK4llvm5Value10getValueIDEv
.seh_proc _ZNK4llvm5Value10getValueIDEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_,"xr",discard,_ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_
	.globl	_ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_ # -- Begin function _ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_
	.p2align	4
_ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_: # @_ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_
.seh_proc _ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_
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
	.def	_ZNK4llvm4Type16isFPOrFPVectorTyEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type16isFPOrFPVectorTyEv,"xr",discard,_ZNK4llvm4Type16isFPOrFPVectorTyEv
	.globl	_ZNK4llvm4Type16isFPOrFPVectorTyEv # -- Begin function _ZNK4llvm4Type16isFPOrFPVectorTyEv
	.p2align	4
_ZNK4llvm4Type16isFPOrFPVectorTyEv:     # @_ZNK4llvm4Type16isFPOrFPVectorTyEv
.seh_proc _ZNK4llvm4Type16isFPOrFPVectorTyEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm4Type13getScalarTypeEv
	movq	%rax, %rcx
	callq	_ZNK4llvm4Type17isFloatingPointTyEv
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE,"xr",discard,_ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE
	.globl	_ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE # -- Begin function _ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE
	.p2align	4
_ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE: # @_ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE
.seh_proc _ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_
	movq	%rax, 64(%rsp)
	cmpq	$0, 64(%rsp)
	je	.LBB85_5
# %bb.1:
	movq	64(%rsp), %rcx
	callq	_ZNK4llvm10StructType9isLiteralEv
	testb	$1, %al
	jne	.LBB85_2
	jmp	.LBB85_3
.LBB85_2:
	movq	64(%rsp), %rcx
	callq	_ZNK4llvm10StructType24containsHomogeneousTypesEv
	testb	$1, %al
	jne	.LBB85_4
.LBB85_3:
	movb	$0, 87(%rsp)
	jmp	.LBB85_12
.LBB85_4:
	movq	64(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNK4llvm10StructType8elementsEv
	leaq	48(%rsp), %rcx
	callq	_ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv
	movq	(%rax), %rax
	movq	%rax, 72(%rsp)
	jmp	.LBB85_11
.LBB85_5:
	movq	72(%rsp), %rcx
	callq	_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_
	movq	%rax, 40(%rsp)
	cmpq	$0, 40(%rsp)
	je	.LBB85_10
# %bb.6:
	jmp	.LBB85_7
.LBB85_7:                               # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rcx
	callq	_ZNK4llvm9ArrayType14getElementTypeEv
	movq	%rax, 72(%rsp)
# %bb.8:                                #   in Loop: Header=BB85_7 Depth=1
	movq	72(%rsp), %rcx
	callq	_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_
	movq	%rax, 40(%rsp)
	cmpq	$0, %rax
	jne	.LBB85_7
# %bb.9:
	jmp	.LBB85_10
.LBB85_10:
	jmp	.LBB85_11
.LBB85_11:
	movq	72(%rsp), %rcx
	callq	_ZNK4llvm4Type16isFPOrFPVectorTyEv
	andb	$1, %al
	movb	%al, 87(%rsp)
.LBB85_12:
	movb	87(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm4Type13getScalarTypeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type13getScalarTypeEv,"xr",discard,_ZNK4llvm4Type13getScalarTypeEv
	.globl	_ZNK4llvm4Type13getScalarTypeEv # -- Begin function _ZNK4llvm4Type13getScalarTypeEv
	.p2align	4
_ZNK4llvm4Type13getScalarTypeEv:        # @_ZNK4llvm4Type13getScalarTypeEv
.seh_proc _ZNK4llvm4Type13getScalarTypeEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm4Type10isVectorTyEv
	testb	$1, %al
	jne	.LBB86_1
	jmp	.LBB86_2
.LBB86_1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	xorl	%edx, %edx
	callq	_ZNK4llvm4Type16getContainedTypeEj
	movq	%rax, 48(%rsp)
	jmp	.LBB86_3
.LBB86_2:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 48(%rsp)
.LBB86_3:
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm4Type17isFloatingPointTyEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type17isFloatingPointTyEv,"xr",discard,_ZNK4llvm4Type17isFloatingPointTyEv
	.globl	_ZNK4llvm4Type17isFloatingPointTyEv # -- Begin function _ZNK4llvm4Type17isFloatingPointTyEv
	.p2align	4
_ZNK4llvm4Type17isFloatingPointTyEv:    # @_ZNK4llvm4Type17isFloatingPointTyEv
.seh_proc _ZNK4llvm4Type17isFloatingPointTyEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm4Type14isIEEELikeFPTyEv
	movb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jne	.LBB87_3
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm4Type9getTypeIDEv
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$4, %ecx
	movb	%al, 47(%rsp)                   # 1-byte Spill
	je	.LBB87_3
# %bb.2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm4Type9getTypeIDEv
	cmpl	$6, %eax
	sete	%al
	movb	%al, 47(%rsp)                   # 1-byte Spill
.LBB87_3:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm4Type10isVectorTyEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type10isVectorTyEv,"xr",discard,_ZNK4llvm4Type10isVectorTyEv
	.globl	_ZNK4llvm4Type10isVectorTyEv    # -- Begin function _ZNK4llvm4Type10isVectorTyEv
	.p2align	4
_ZNK4llvm4Type10isVectorTyEv:           # @_ZNK4llvm4Type10isVectorTyEv
.seh_proc _ZNK4llvm4Type10isVectorTyEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm4Type9getTypeIDEv
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$18, %ecx
	movb	%al, 47(%rsp)                   # 1-byte Spill
	je	.LBB88_2
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm4Type9getTypeIDEv
	cmpl	$17, %eax
	sete	%al
	movb	%al, 47(%rsp)                   # 1-byte Spill
.LBB88_2:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm4Type16getContainedTypeEj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type16getContainedTypeEj,"xr",discard,_ZNK4llvm4Type16getContainedTypeEj
	.globl	_ZNK4llvm4Type16getContainedTypeEj # -- Begin function _ZNK4llvm4Type16getContainedTypeEj
	.p2align	4
_ZNK4llvm4Type16getContainedTypeEj:     # @_ZNK4llvm4Type16getContainedTypeEj
.seh_proc _ZNK4llvm4Type16getContainedTypeEj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	44(%rsp), %eax
	cmpl	12(%rcx), %eax
	jb	.LBB89_2
# %bb.1:
	leaq	.L.str.10(%rip), %rcx
	leaq	.L.str.11(%rip), %rdx
	movl	$382, %r8d                      # imm = 0x17E
	callq	_assert
.LBB89_2:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movl	44(%rsp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm4Type9getTypeIDEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type9getTypeIDEv,"xr",discard,_ZNK4llvm4Type9getTypeIDEv
	.globl	_ZNK4llvm4Type9getTypeIDEv      # -- Begin function _ZNK4llvm4Type9getTypeIDEv
	.p2align	4
_ZNK4llvm4Type9getTypeIDEv:             # @_ZNK4llvm4Type9getTypeIDEv
.seh_proc _ZNK4llvm4Type9getTypeIDEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movl	8(%rax), %eax
	andl	$255, %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm4Type14isIEEELikeFPTyEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type14isIEEELikeFPTyEv,"xr",discard,_ZNK4llvm4Type14isIEEELikeFPTyEv
	.globl	_ZNK4llvm4Type14isIEEELikeFPTyEv # -- Begin function _ZNK4llvm4Type14isIEEELikeFPTyEv
	.p2align	4
_ZNK4llvm4Type14isIEEELikeFPTyEv:       # @_ZNK4llvm4Type14isIEEELikeFPTyEv
.seh_proc _ZNK4llvm4Type14isIEEELikeFPTyEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNK4llvm4Type9getTypeIDEv
	movl	%eax, %ecx
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	subl	$4, %eax
	jb	.LBB91_1
	jmp	.LBB91_4
.LBB91_4:
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	jne	.LBB91_2
	jmp	.LBB91_1
.LBB91_1:
	movb	$1, 55(%rsp)
	jmp	.LBB91_3
.LBB91_2:
	movb	$0, 55(%rsp)
.LBB91_3:
	movb	55(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_,"xr",discard,_ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_
	.globl	_ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_ # -- Begin function _ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_
	.p2align	4
_ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_: # @_ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_
.seh_proc _ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	32(%rsp), %rcx
	callq	_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_
	testb	$1, %al
	jne	.LBB92_2
# %bb.1:
	leaq	.L.str.9(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$656, %r8d                      # imm = 0x290
	callq	_assert
.LBB92_2:
	leaq	32(%rsp), %rcx
	callq	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm10StructType9isLiteralEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm10StructType9isLiteralEv,"xr",discard,_ZNK4llvm10StructType9isLiteralEv
	.globl	_ZNK4llvm10StructType9isLiteralEv # -- Begin function _ZNK4llvm10StructType9isLiteralEv
	.p2align	4
_ZNK4llvm10StructType9isLiteralEv:      # @_ZNK4llvm10StructType9isLiteralEv
.seh_proc _ZNK4llvm10StructType9isLiteralEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm4Type15getSubclassDataEv
	andl	$4, %eax
	cmpl	$0, %eax
	setne	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm10StructType8elementsEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm10StructType8elementsEv,"xr",discard,_ZNK4llvm10StructType8elementsEv
	.globl	_ZNK4llvm10StructType8elementsEv # -- Begin function _ZNK4llvm10StructType8elementsEv
	.p2align	4
_ZNK4llvm10StructType8elementsEv:       # @_ZNK4llvm10StructType8elementsEv
.seh_proc _ZNK4llvm10StructType8elementsEv
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm10StructType13element_beginEv
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm10StructType11element_endEv
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_
	movq	64(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv,"xr",discard,_ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv
	.globl	_ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv # -- Begin function _ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv
	.p2align	4
_ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv: # @_ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv
.seh_proc _ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv
	testb	$1, %al
	jne	.LBB95_1
	jmp	.LBB95_2
.LBB95_1:
	leaq	.L.str.14(%rip), %rcx
	leaq	.L.str.13(%rip), %rdx
	movl	$146, %r8d
	callq	_assert
.LBB95_2:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_,"xr",discard,_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_
	.globl	_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_ # -- Begin function _ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_
	.p2align	4
_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_: # @_ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_
.seh_proc _ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	32(%rsp), %rcx
	callq	_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_
	testb	$1, %al
	jne	.LBB96_2
# %bb.1:
	leaq	.L.str.9(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$656, %r8d                      # imm = 0x290
	callq	_assert
.LBB96_2:
	leaq	32(%rsp), %rcx
	callq	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm9ArrayType14getElementTypeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm9ArrayType14getElementTypeEv,"xr",discard,_ZNK4llvm9ArrayType14getElementTypeEv
	.globl	_ZNK4llvm9ArrayType14getElementTypeEv # -- Begin function _ZNK4llvm9ArrayType14getElementTypeEv
	.p2align	4
_ZNK4llvm9ArrayType14getElementTypeEv:  # @_ZNK4llvm9ArrayType14getElementTypeEv
.seh_proc _ZNK4llvm9ArrayType14getElementTypeEv
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
	.def	_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_,"xr",discard,_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_
	.globl	_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_ # -- Begin function _ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_
	.p2align	4
_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_: # @_ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_
.seh_proc _ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_
	movq	%rax, %rcx
	callq	_ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_,"xr",discard,_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	.globl	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_ # -- Begin function _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	.p2align	4
_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_: # @_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
.seh_proc _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_
	testb	$1, %al
	jne	.LBB99_2
# %bb.1:
	callq	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv
	movq	%rax, 48(%rsp)
	jmp	.LBB99_3
.LBB99_2:
	movq	40(%rsp), %rcx
	callq	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_
	movq	%rax, 48(%rsp)
.LBB99_3:
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_,"xr",discard,_ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_
	.globl	_ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_ # -- Begin function _ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_
	.p2align	4
_ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_: # @_ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_
.seh_proc _ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	cmpq	$0, (%rax)
	setne	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_,"xr",discard,_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_
	.globl	_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_ # -- Begin function _ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_
	.p2align	4
_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_: # @_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_
.seh_proc _ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_
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
	.def	_ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_,"xr",discard,_ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_
	.globl	_ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_ # -- Begin function _ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_
	.p2align	4
_ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_: # @_ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_
.seh_proc _ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv,"xr",discard,_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv
	.globl	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv # -- Begin function _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv
	.p2align	4
_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv: # @_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv
# %bb.0:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_,"xr",discard,_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_
	.globl	_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_ # -- Begin function _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_
	.p2align	4
_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_: # @_ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_
.seh_proc _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_
	.globl	_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_: # @_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_
.seh_proc _ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_
	.globl	_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_: # @_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_
.seh_proc _ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_,"xr",discard,_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_
	.globl	_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_ # -- Begin function _ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_
	.p2align	4
_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_: # @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_
.seh_proc _ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_,"xr",discard,_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_
	.globl	_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_ # -- Begin function _ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_
	.p2align	4
_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_: # @_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_
.seh_proc _ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	cmpq	$0, 32(%rsp)
	jne	.LBB108_2
# %bb.1:
	leaq	.L.str.7(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$109, %r8d
	callq	_assert
.LBB108_2:
	movq	32(%rsp), %rcx
	callq	_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_,"xr",discard,_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_
	.globl	_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_ # -- Begin function _ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_
	.p2align	4
_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_: # @_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_
.seh_proc _ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm10StructType7classofEPKNS_4TypeE
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm10StructType7classofEPKNS_4TypeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm10StructType7classofEPKNS_4TypeE,"xr",discard,_ZN4llvm10StructType7classofEPKNS_4TypeE
	.globl	_ZN4llvm10StructType7classofEPKNS_4TypeE # -- Begin function _ZN4llvm10StructType7classofEPKNS_4TypeE
	.p2align	4
_ZN4llvm10StructType7classofEPKNS_4TypeE: # @_ZN4llvm10StructType7classofEPKNS_4TypeE
.seh_proc _ZN4llvm10StructType7classofEPKNS_4TypeE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm4Type9getTypeIDEv
	cmpl	$15, %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_,"xr",discard,_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_
	.globl	_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_ # -- Begin function _ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_
	.p2align	4
_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_: # @_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_
.seh_proc _ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_
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
	.def	_ZNK4llvm4Type15getSubclassDataEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm4Type15getSubclassDataEv,"xr",discard,_ZNK4llvm4Type15getSubclassDataEv
	.globl	_ZNK4llvm4Type15getSubclassDataEv # -- Begin function _ZNK4llvm4Type15getSubclassDataEv
	.p2align	4
_ZNK4llvm4Type15getSubclassDataEv:      # @_ZNK4llvm4Type15getSubclassDataEv
.seh_proc _ZNK4llvm4Type15getSubclassDataEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movl	8(%rax), %eax
	shrl	$8, %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm10StructType13element_beginEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm10StructType13element_beginEv,"xr",discard,_ZNK4llvm10StructType13element_beginEv
	.globl	_ZNK4llvm10StructType13element_beginEv # -- Begin function _ZNK4llvm10StructType13element_beginEv
	.p2align	4
_ZNK4llvm10StructType13element_beginEv: # @_ZNK4llvm10StructType13element_beginEv
.seh_proc _ZNK4llvm10StructType13element_beginEv
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
	.def	_ZNK4llvm10StructType11element_endEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm10StructType11element_endEv,"xr",discard,_ZNK4llvm10StructType11element_endEv
	.globl	_ZNK4llvm10StructType11element_endEv # -- Begin function _ZNK4llvm10StructType11element_endEv
	.p2align	4
_ZNK4llvm10StructType11element_endEv:   # @_ZNK4llvm10StructType11element_endEv
.seh_proc _ZNK4llvm10StructType11element_endEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movl	12(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$3, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_,"xr",discard,_ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_
	.globl	_ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_ # -- Begin function _ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_
	.p2align	4
_ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_: # @_ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_
.seh_proc _ZN4llvm8ArrayRefIPNS_4TypeEEC2EPKS2_S5_
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
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	movq	%rcx, 8(%rax)
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	jbe	.LBB115_2
# %bb.1:
	leaq	.L.str.12(%rip), %rcx
	leaq	.L.str.13(%rip), %rdx
	movl	$80, %r8d
	callq	_assert
	nop
.LBB115_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv,"xr",discard,_ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv
	.globl	_ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv # -- Begin function _ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv
	.p2align	4
_ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv: # @_ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv
.seh_proc _ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	cmpq	$0, 8(%rax)
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_,"xr",discard,_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	.globl	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_ # -- Begin function _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	.p2align	4
_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_: # @_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
.seh_proc _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_
	testb	$1, %al
	jne	.LBB117_2
# %bb.1:
	callq	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv
	movq	%rax, 48(%rsp)
	jmp	.LBB117_3
.LBB117_2:
	movq	40(%rsp), %rcx
	callq	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_
	movq	%rax, 48(%rsp)
.LBB117_3:
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_,"xr",discard,_ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_
	.globl	_ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_ # -- Begin function _ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_
	.p2align	4
_ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_: # @_ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_
.seh_proc _ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv,"xr",discard,_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv
	.globl	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv # -- Begin function _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv
	.p2align	4
_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv: # @_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv
# %bb.0:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
                                        # -- End function
	.def	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_,"xr",discard,_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_
	.globl	_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_ # -- Begin function _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_
	.p2align	4
_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_: # @_ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_
.seh_proc _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_
	.globl	_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_: # @_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_
.seh_proc _ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_,"xr",discard,_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_
	.globl	_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_ # -- Begin function _ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_
	.p2align	4
_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_: # @_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_
.seh_proc _ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_,"xr",discard,_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_
	.globl	_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_ # -- Begin function _ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_
	.p2align	4
_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_: # @_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_
.seh_proc _ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	cmpq	$0, 32(%rsp)
	jne	.LBB123_2
# %bb.1:
	leaq	.L.str.7(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$109, %r8d
	callq	_assert
.LBB123_2:
	movq	32(%rsp), %rcx
	callq	_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_,"xr",discard,_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_
	.globl	_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_ # -- Begin function _ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_
	.p2align	4
_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_: # @_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_
.seh_proc _ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4llvm9ArrayType7classofEPKNS_4TypeE
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm9ArrayType7classofEPKNS_4TypeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm9ArrayType7classofEPKNS_4TypeE,"xr",discard,_ZN4llvm9ArrayType7classofEPKNS_4TypeE
	.globl	_ZN4llvm9ArrayType7classofEPKNS_4TypeE # -- Begin function _ZN4llvm9ArrayType7classofEPKNS_4TypeE
	.p2align	4
_ZN4llvm9ArrayType7classofEPKNS_4TypeE: # @_ZN4llvm9ArrayType7classofEPKNS_4TypeE
.seh_proc _ZN4llvm9ArrayType7classofEPKNS_4TypeE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm4Type9getTypeIDEv
	cmpl	$16, %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_,"xr",discard,_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_
	.globl	_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_ # -- Begin function _ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_
	.p2align	4
_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_: # @_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_
.seh_proc _ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_
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
	.def	_ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_,"xr",discard,_ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_
	.globl	_ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_ # -- Begin function _ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_
	.p2align	4
_ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_: # @_ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_
.seh_proc _ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_
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
	.def	_ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_,"xr",discard,_ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_
	.globl	_ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_ # -- Begin function _ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_
	.p2align	4
_ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_: # @_ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_
.seh_proc _ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_
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
	.def	_ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE,"xr",discard,_ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE
	.globl	_ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE # -- Begin function _ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE
	.p2align	4
_ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE: # @_ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE
.seh_proc _ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv
	movq	%rax, 48(%rsp)
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB129_4
# %bb.2:                                #   in Loop: Header=BB129_1 Depth=1
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rax
	movl	(%rax), %edx
	movq	40(%rsp), %rax
	movq	8(%rax), %r8
	callq	_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE
# %bb.3:                                #   in Loop: Header=BB129_1 Depth=1
	movq	56(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB129_1
.LBB129_4:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx
	callq	_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv,"xr",discard,_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv
	.globl	_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv # -- Begin function _ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv
	.p2align	4
_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv: # @_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv
.seh_proc _ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv
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
	.def	_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv,"xr",discard,_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv
	.globl	_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv # -- Begin function _ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv
	.p2align	4
_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv: # @_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv
.seh_proc _ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm15SmallVectorBaseIjE4sizeEv
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	shlq	$4, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Twine7isValidEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Twine7isValidEv,"xr",discard,_ZNK4llvm5Twine7isValidEv
	.globl	_ZNK4llvm5Twine7isValidEv       # -- Begin function _ZNK4llvm5Twine7isValidEv
	.p2align	4
_ZNK4llvm5Twine7isValidEv:              # @_ZNK4llvm5Twine7isValidEv
.seh_proc _ZNK4llvm5Twine7isValidEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm5Twine9isNullaryEv
	testb	$1, %al
	jne	.LBB132_1
	jmp	.LBB132_3
.LBB132_1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine10getRHSKindEv
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB132_3
# %bb.2:
	movb	$0, 55(%rsp)
	jmp	.LBB132_15
.LBB132_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine10getRHSKindEv
	movzbl	%al, %eax
	cmpl	$0, %eax
	jne	.LBB132_5
# %bb.4:
	movb	$0, 55(%rsp)
	jmp	.LBB132_15
.LBB132_5:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine10getRHSKindEv
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB132_8
# %bb.6:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine10getLHSKindEv
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB132_8
# %bb.7:
	movb	$0, 55(%rsp)
	jmp	.LBB132_15
.LBB132_8:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine10getLHSKindEv
	movzbl	%al, %eax
	cmpl	$2, %eax
	jne	.LBB132_11
# %bb.9:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNK4llvm5Twine8isBinaryEv
	testb	$1, %al
	jne	.LBB132_11
# %bb.10:
	movb	$0, 55(%rsp)
	jmp	.LBB132_15
.LBB132_11:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine10getRHSKindEv
	movzbl	%al, %eax
	cmpl	$2, %eax
	jne	.LBB132_14
# %bb.12:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rcx
	callq	_ZNK4llvm5Twine8isBinaryEv
	testb	$1, %al
	jne	.LBB132_14
# %bb.13:
	movb	$0, 55(%rsp)
	jmp	.LBB132_15
.LBB132_14:
	movb	$1, 55(%rsp)
.LBB132_15:
	movb	55(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Twine9isNullaryEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Twine9isNullaryEv,"xr",discard,_ZNK4llvm5Twine9isNullaryEv
	.globl	_ZNK4llvm5Twine9isNullaryEv     # -- Begin function _ZNK4llvm5Twine9isNullaryEv
	.p2align	4
_ZNK4llvm5Twine9isNullaryEv:            # @_ZNK4llvm5Twine9isNullaryEv
.seh_proc _ZNK4llvm5Twine9isNullaryEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm5Twine6isNullEv
	movb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jne	.LBB133_2
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine7isEmptyEv
	movb	%al, 47(%rsp)                   # 1-byte Spill
.LBB133_2:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Twine10getRHSKindEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Twine10getRHSKindEv,"xr",discard,_ZNK4llvm5Twine10getRHSKindEv
	.globl	_ZNK4llvm5Twine10getRHSKindEv   # -- Begin function _ZNK4llvm5Twine10getRHSKindEv
	.p2align	4
_ZNK4llvm5Twine10getRHSKindEv:          # @_ZNK4llvm5Twine10getRHSKindEv
.seh_proc _ZNK4llvm5Twine10getRHSKindEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	33(%rax), %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Twine10getLHSKindEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Twine10getLHSKindEv,"xr",discard,_ZNK4llvm5Twine10getLHSKindEv
	.globl	_ZNK4llvm5Twine10getLHSKindEv   # -- Begin function _ZNK4llvm5Twine10getLHSKindEv
	.p2align	4
_ZNK4llvm5Twine10getLHSKindEv:          # @_ZNK4llvm5Twine10getLHSKindEv
.seh_proc _ZNK4llvm5Twine10getLHSKindEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	32(%rax), %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Twine8isBinaryEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Twine8isBinaryEv,"xr",discard,_ZNK4llvm5Twine8isBinaryEv
	.globl	_ZNK4llvm5Twine8isBinaryEv      # -- Begin function _ZNK4llvm5Twine8isBinaryEv
	.p2align	4
_ZNK4llvm5Twine8isBinaryEv:             # @_ZNK4llvm5Twine8isBinaryEv
.seh_proc _ZNK4llvm5Twine8isBinaryEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK4llvm5Twine10getLHSKindEv
	movzbl	%al, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, 47(%rsp)                   # 1-byte Spill
	je	.LBB136_2
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNK4llvm5Twine10getRHSKindEv
	movzbl	%al, %eax
	cmpl	$1, %eax
	setne	%al
	movb	%al, 47(%rsp)                   # 1-byte Spill
.LBB136_2:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Twine6isNullEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Twine6isNullEv,"xr",discard,_ZNK4llvm5Twine6isNullEv
	.globl	_ZNK4llvm5Twine6isNullEv        # -- Begin function _ZNK4llvm5Twine6isNullEv
	.p2align	4
_ZNK4llvm5Twine6isNullEv:               # @_ZNK4llvm5Twine6isNullEv
.seh_proc _ZNK4llvm5Twine6isNullEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm5Twine10getLHSKindEv
	movzbl	%al, %eax
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK4llvm5Twine7isEmptyEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK4llvm5Twine7isEmptyEv,"xr",discard,_ZNK4llvm5Twine7isEmptyEv
	.globl	_ZNK4llvm5Twine7isEmptyEv       # -- Begin function _ZNK4llvm5Twine7isEmptyEv
	.p2align	4
_ZNK4llvm5Twine7isEmptyEv:              # @_ZNK4llvm5Twine7isEmptyEv
.seh_proc _ZNK4llvm5Twine7isEmptyEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNK4llvm5Twine10getLHSKindEv
	movzbl	%al, %eax
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev: # @_ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev
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
	.def	_ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev: # @_ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev: # @_ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev
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
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"apollo_gc_concurrent_attach"

.L.str.1:                               # @.str.1
	.asciz	"apollo_gc_concurrent_safepoint"

.L.str.2:                               # @.str.2
	.asciz	"apollo_gc_concurrent_write_barrier"

.L.str.3:                               # @.str.3
	.asciz	"apollo.gc.mutator"

.L.str.4:                               # @.str.4
	.zero	1

.L.str.5:                               # @.str.5
	.asciz	"AllocInfo.NumOps == unsigned(Args.size() + CountBundleInputs(Bundles) + 1)"

.L.str.6:                               # @.str.6
	.asciz	"C:/msys64/clang64/include/llvm/IR/Instructions.h"

.L.str.7:                               # @.str.7
	.asciz	"Val && \"isa<> used on a null pointer\""

.L.str.8:                               # @.str.8
	.asciz	"C:/msys64/clang64/include/llvm/Support/Casting.h"

.L.str.9:                               # @.str.9
	.asciz	"detail::isPresent(Val) && \"dyn_cast on a non-existent value\""

.L.str.10:                              # @.str.10
	.asciz	"i < NumContainedTys && \"Index out of range!\""

.L.str.11:                              # @.str.11
	.asciz	"C:/msys64/clang64/include/llvm/IR/Type.h"

.L.str.12:                              # @.str.12
	.asciz	"begin <= end"

.L.str.13:                              # @.str.13
	.asciz	"C:/msys64/clang64/include/llvm/ADT/ArrayRef.h"

.L.str.14:                              # @.str.14
	.asciz	"!empty()"

.L.str.15:                              # @.str.15
	.asciz	"isValid() && \"Invalid twine!\""

.L.str.16:                              # @.str.16
	.asciz	"C:/msys64/clang64/include/llvm/ADT/Twine.h"

	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp13-.Ltmp12                 # Subsection size
.Ltmp12:
	.short	.Ltmp15-.Ltmp14                 # Record length
.Ltmp14:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp15:
	.short	.Ltmp17-.Ltmp16                 # Record length
.Ltmp16:
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
.Ltmp17:
.Ltmp13:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZNK4llvm6Module10getContextEv
	.addrsig_sym _ZN6apollo7codegen12_GLOBAL__N_112getOrDeclareEPN4llvm6ModuleEPKcPNS2_12FunctionTypeE
	.addrsig_sym _ZN6apollo7codegen12_GLOBAL__N_18tyAttachERN4llvm11LLVMContextE
	.addrsig_sym _ZN6apollo7codegen12_GLOBAL__N_111tySafepointERN4llvm11LLVMContextE
	.addrsig_sym _ZN6apollo7codegen12_GLOBAL__N_114tyWriteBarrierERN4llvm11LLVMContextE
	.addrsig_sym _ZN6apollo7codegen19emit_attach_mutatorEPv
	.addrsig_sym _ZNK4llvm13IRBuilderBase14GetInsertBlockEv
	.addrsig_sym _ZN4llvm10BasicBlock9getParentEv
	.addrsig_sym _ZN4llvm11GlobalValue9getParentEv
	.addrsig_sym _ZN4llvm13IRBuilderBase10CreateCallENS_14FunctionCalleeENS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEPNS_6MDNodeE
	.addrsig_sym _ZN4llvm6Module19getOrInsertFunctionENS_9StringRefEPNS_12FunctionTypeE
	.addrsig_sym _ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE
	.addrsig_sym _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.addrsig_sym _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.addrsig_sym strlen
	.addrsig_sym _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb
	.addrsig_sym _ZN4llvm11PointerType9getUnqualERNS_11LLVMContextE
	.addrsig_sym _ZN4llvm11PointerType3getERNS_11LLVMContextEj
	.addrsig_sym _ZN4llvm4Type9getVoidTyERNS_11LLVMContextE
	.addrsig_sym _ZNKSt16initializer_listIPN4llvm4TypeEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPN4llvm4TypeEE3endB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPN4llvm4TypeEE4sizeB9nqe220103Ev
	.addrsig_sym _ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE
	.addrsig_sym _ZN4llvm14FunctionCallee15getFunctionTypeEv
	.addrsig_sym _ZN4llvm14FunctionCallee9getCalleeEv
	.addrsig_sym _ZN4llvm8CallInst6CreateEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineENS_14InsertPositionE
	.addrsig_sym _ZN4llvm13IRBuilderBase24setConstrainedFPCallAttrEPNS_8CallBaseE
	.addrsig_sym _ZN4llvm3isaIJNS_14FPMathOperatorEEPNS_8CallInstEEEbRKT0_
	.addrsig_sym _ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE
	.addrsig_sym _ZNK4llvm13IRBuilderBase6InsertINS_8CallInstEEEPT_S4_RKNS_5TwineE
	.addrsig_sym _ZN4llvm8CallInst18ComputeNumOperandsEjj
	.addrsig_sym _ZNK4llvm8ArrayRefIPNS_5ValueEE4sizeEv
	.addrsig_sym _ZN4llvm8CallBase17CountBundleInputsENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE
	.addrsig_sym _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE4sizeEv
	.addrsig_sym _ZN4llvm4UsernwEyNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZN4llvm4UserdlEPvNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE
	.addrsig_sym _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE5beginEv
	.addrsig_sym _ZNK4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEE3endEv
	.addrsig_sym _ZNK4llvm17OperandBundleDefTIPNS_5ValueEE10input_sizeEv
	.addrsig_sym _ZNKSt3__16vectorIPN4llvm5ValueENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNK4llvm12FunctionType13getReturnTypeEv
	.addrsig_sym _assert
	.addrsig_sym _ZN4llvm8CallInst4initEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineE
	.addrsig_sym _ZN4llvm8CallBase9addFnAttrENS_9Attribute8AttrKindE
	.addrsig_sym _ZNK4llvm13AttributeList14addFnAttributeERNS_11LLVMContextENS_9Attribute8AttrKindE
	.addrsig_sym _ZNK4llvm5Value10getContextEv
	.addrsig_sym _ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE
	.addrsig_sym _ZN4llvm8CastInfoINS_14FPMathOperatorEKPNS_8CallInstEvE10isPossibleERS4_
	.addrsig_sym _ZN4llvm14CastIsPossibleINS_14FPMathOperatorEPKNS_8CallInstEvE10isPossibleERKS4_
	.addrsig_sym _ZN4llvm13simplify_typeIKPNS_8CallInstEE18getSimplifiedValueERS3_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEKPKNS_8CallInstES4_E4doitERS5_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_14FPMathOperatorEPKNS_8CallInstES4_E4doitERKS4_
	.addrsig_sym _ZN4llvm13simplify_typeIKPKNS_8CallInstEE18getSimplifiedValueERS4_
	.addrsig_sym _ZN4llvm11isa_impl_clINS_14FPMathOperatorEPKNS_8CallInstEE4doitES4_
	.addrsig_sym _ZN4llvm8isa_implINS_14FPMathOperatorENS_8CallInstEvE4doitERKS2_
	.addrsig_sym _ZN4llvm14FPMathOperator7classofEPKNS_5ValueE
	.addrsig_sym _ZN4llvm8dyn_castINS_11InstructionEKNS_5ValueEEEDcPT0_
	.addrsig_sym _ZNK4llvm11Instruction9getOpcodeEv
	.addrsig_sym _ZN4llvm14FPMathOperator28isSupportedFloatingPointTypeEPNS_4TypeE
	.addrsig_sym _ZNK4llvm5Value7getTypeEv
	.addrsig_sym _ZN4llvm6detail9isPresentIPKNS_5ValueEEEbRKT_
	.addrsig_sym _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE16doCastIfPossibleERKS4_
	.addrsig_sym _ZN4llvm14ValueIsPresentIPKNS_5ValueEvE9isPresentERKS3_
	.addrsig_sym _ZN4llvm13simplify_typeIPKNS_5ValueEE18getSimplifiedValueERS3_
	.addrsig_sym _ZN4llvm14CastIsPossibleINS_11InstructionEPKNS_5ValueEvE10isPossibleERKS4_
	.addrsig_sym _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE10castFailedEv
	.addrsig_sym _ZN4llvm8CastInfoINS_11InstructionEPKNS_5ValueEvE6doCastERKS4_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_11InstructionEKPKNS_5ValueES4_E4doitERS5_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_
	.addrsig_sym _ZN4llvm13simplify_typeIKPKNS_5ValueEE18getSimplifiedValueERS4_
	.addrsig_sym _ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_
	.addrsig_sym _ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_
	.addrsig_sym _ZNK4llvm5Value10getValueIDEv
	.addrsig_sym _ZN4llvm16cast_convert_valINS_11InstructionEPKNS_5ValueES4_E4doitES4_
	.addrsig_sym _ZNK4llvm4Type16isFPOrFPVectorTyEv
	.addrsig_sym _ZN4llvm14FPMathOperator41isComposedOfHomogeneousFloatingPointTypesEPNS_4TypeE
	.addrsig_sym _ZNK4llvm4Type13getScalarTypeEv
	.addrsig_sym _ZNK4llvm4Type17isFloatingPointTyEv
	.addrsig_sym _ZNK4llvm4Type10isVectorTyEv
	.addrsig_sym _ZNK4llvm4Type16getContainedTypeEj
	.addrsig_sym _ZNK4llvm4Type9getTypeIDEv
	.addrsig_sym _ZNK4llvm4Type14isIEEELikeFPTyEv
	.addrsig_sym _ZN4llvm8dyn_castINS_10StructTypeENS_4TypeEEEDcPT0_
	.addrsig_sym _ZNK4llvm10StructType9isLiteralEv
	.addrsig_sym _ZNK4llvm10StructType24containsHomogeneousTypesEv
	.addrsig_sym _ZNK4llvm10StructType8elementsEv
	.addrsig_sym _ZNK4llvm8ArrayRefIPNS_4TypeEE5frontEv
	.addrsig_sym _ZN4llvm8dyn_castINS_9ArrayTypeENS_4TypeEEEDcPT0_
	.addrsig_sym _ZNK4llvm9ArrayType14getElementTypeEv
	.addrsig_sym _ZN4llvm6detail9isPresentIPNS_4TypeEEEbRKT_
	.addrsig_sym _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	.addrsig_sym _ZN4llvm14ValueIsPresentIPNS_4TypeEvE9isPresentERKS2_
	.addrsig_sym _ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_
	.addrsig_sym _ZN4llvm14CastIsPossibleINS_10StructTypeEPNS_4TypeEvE10isPossibleERKS3_
	.addrsig_sym _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE10castFailedEv
	.addrsig_sym _ZN4llvm8CastInfoINS_10StructTypeEPNS_4TypeEvE6doCastERKS3_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_
	.addrsig_sym _ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_
	.addrsig_sym _ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_
	.addrsig_sym _ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_
	.addrsig_sym _ZN4llvm10StructType7classofEPKNS_4TypeE
	.addrsig_sym _ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitEPKS2_
	.addrsig_sym _ZNK4llvm4Type15getSubclassDataEv
	.addrsig_sym _ZNK4llvm10StructType13element_beginEv
	.addrsig_sym _ZNK4llvm10StructType11element_endEv
	.addrsig_sym _ZNK4llvm8ArrayRefIPNS_4TypeEE5emptyEv
	.addrsig_sym _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE16doCastIfPossibleERKS3_
	.addrsig_sym _ZN4llvm14CastIsPossibleINS_9ArrayTypeEPNS_4TypeEvE10isPossibleERKS3_
	.addrsig_sym _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE10castFailedEv
	.addrsig_sym _ZN4llvm8CastInfoINS_9ArrayTypeEPNS_4TypeEvE6doCastERKS3_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_
	.addrsig_sym _ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_
	.addrsig_sym _ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_
	.addrsig_sym _ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_
	.addrsig_sym _ZN4llvm9ArrayType7classofEPKNS_4TypeE
	.addrsig_sym _ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitEPKS2_
	.addrsig_sym _ZN4llvm13simplify_typeIPKNS_8CallInstEE18getSimplifiedValueERS3_
	.addrsig_sym _ZN4llvm13simplify_typeIPNS_8CallInstEE18getSimplifiedValueERS2_
	.addrsig_sym _ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE
	.addrsig_sym _ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE
	.addrsig_sym _ZNK4llvm13IRBuilderBase17AddMetadataToInstEPNS_11InstructionE
	.addrsig_sym _ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE5beginEv
	.addrsig_sym _ZNK4llvm25SmallVectorTemplateCommonINSt3__14pairIjPNS_6MDNodeEEEvE3endEv
	.addrsig_sym _ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE
	.addrsig_sym _ZNK4llvm15SmallVectorBaseIjE4sizeEv
	.addrsig_sym _ZNK4llvm5Twine7isValidEv
	.addrsig_sym _ZNK4llvm5Twine9isNullaryEv
	.addrsig_sym _ZNK4llvm5Twine10getRHSKindEv
	.addrsig_sym _ZNK4llvm5Twine10getLHSKindEv
	.addrsig_sym _ZNK4llvm5Twine8isBinaryEv
	.addrsig_sym _ZNK4llvm5Twine6isNullEv
	.addrsig_sym _ZNK4llvm5Twine7isEmptyEv
	.addrsig_sym _ZNKSt16initializer_listIPN4llvm5ValueEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPN4llvm5ValueEE3endB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPN4llvm5ValueEE4sizeB9nqe220103Ev
	.addrsig_sym _Unwind_Resume
