	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"ty.cpp"
	.def	_ZNK6apollo3mir6TyData18structurally_equalERKS1_;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir6TyData18structurally_equalERKS1_ # -- Begin function _ZNK6apollo3mir6TyData18structurally_equalERKS1_
	.p2align	4
_ZNK6apollo3mir6TyData18structurally_equalERKS1_: # @_ZNK6apollo3mir6TyData18structurally_equalERKS1_
.Lfunc_begin0:
.seh_proc _ZNK6apollo3mir6TyData18structurally_equalERKS1_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movb	(%rax), %al
	movq	64(%rsp), %rcx
	cmpb	(%rcx), %al
	je	.LBB0_2
# %bb.1:
	movb	$0, 87(%rsp)
	jmp	.LBB0_26
.LBB0_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	subq	$16, %rax
	ja	.LBB0_25
# %bb.28:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movb	$1, 87(%rsp)
	jmp	.LBB0_26
.LBB0_4:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	1(%rax), %al
	movq	64(%rsp), %rcx
	cmpb	1(%rcx), %al
	sete	%al
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_5:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	2(%rax), %al
	movq	64(%rsp), %rcx
	cmpb	2(%rcx), %al
	sete	%al
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_6:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	3(%rax), %al
	movq	64(%rsp), %rcx
	cmpb	3(%rcx), %al
	sete	%al
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_7:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movq	64(%rsp), %rdx
	addq	$8, %rdx
	callq	_ZNK6apollo3mir6RegioneqERKS1_
	movb	%al, %cl
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %cl
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jne	.LBB0_8
	jmp	.LBB0_10
.LBB0_8:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rcx
	movq	64(%rsp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	16(%rdx), %rcx
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jne	.LBB0_10
# %bb.9:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	4(%rax), %al
	movq	64(%rsp), %rcx
	cmpb	4(%rcx), %al
	sete	%al
	movb	%al, 47(%rsp)                   # 1-byte Spill
.LBB0_10:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_11:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rcx
	movq	64(%rsp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	16(%rdx), %rcx
	movb	%al, 46(%rsp)                   # 1-byte Spill
	jne	.LBB0_13
# %bb.12:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	4(%rax), %al
	movq	64(%rsp), %rcx
	cmpb	4(%rcx), %al
	sete	%al
	movb	%al, 46(%rsp)                   # 1-byte Spill
.LBB0_13:
	movb	46(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_14:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rcx
	movq	64(%rsp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	16(%rdx), %rcx
	movb	%al, 45(%rsp)                   # 1-byte Spill
	jne	.LBB0_16
# %bb.15:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	24(%rax), %rax
	movq	64(%rsp), %rcx
	cmpq	24(%rcx), %rax
	sete	%al
	movb	%al, 45(%rsp)                   # 1-byte Spill
.LBB0_16:
	movb	45(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_17:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	64(%rsp), %rcx
	cmpq	16(%rcx), %rax
	sete	%al
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_18:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
	movq	64(%rsp), %rdx
	addq	$32, %rdx
.Ltmp2:                                 # EH_LABEL
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_
.Ltmp3:                                 # EH_LABEL
	movb	%al, 44(%rsp)                   # 1-byte Spill
	jmp	.LBB0_19
.LBB0_19:
	movb	44(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_20:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	56(%rax), %ecx
	movq	64(%rsp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	56(%rdx), %ecx
	movb	%al, 43(%rsp)                   # 1-byte Spill
	jne	.LBB0_23
# %bb.21:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	movq	64(%rsp), %rdx
	addq	$64, %rdx
.Ltmp0:                                 # EH_LABEL
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_
.Ltmp1:                                 # EH_LABEL
	movb	%al, 42(%rsp)                   # 1-byte Spill
	jmp	.LBB0_22
.LBB0_22:
	movb	42(%rsp), %al                   # 1-byte Reload
	movb	%al, 43(%rsp)                   # 1-byte Spill
	jmp	.LBB0_23
.LBB0_23:
	movb	43(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_24:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	88(%rax), %eax
	movq	64(%rsp), %rcx
	cmpl	88(%rcx), %eax
	sete	%al
	andb	$1, %al
	movb	%al, 87(%rsp)
	jmp	.LBB0_26
.LBB0_25:
	movb	$0, 87(%rsp)
.LBB0_26:
	movb	87(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB0_27:
.Ltmp4:                                 # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end0:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI0_0:
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_24-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp1
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
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
	.def	_ZNK6apollo3mir6RegioneqERKS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo3mir6RegioneqERKS1_,"xr",discard,_ZNK6apollo3mir6RegioneqERKS1_
	.globl	_ZNK6apollo3mir6RegioneqERKS1_  # -- Begin function _ZNK6apollo3mir6RegioneqERKS1_
	.p2align	4
_ZNK6apollo3mir6RegioneqERKS1_:         # @_ZNK6apollo3mir6RegioneqERKS1_
.seh_proc _ZNK6apollo3mir6RegioneqERKS1_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	movq	(%rsp), %rcx
	cmpl	(%rcx), %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, 55(%rsp)                   # 1-byte Spill
	jne	.LBB2_2
# %bb.1:
	movq	96(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	movq	%rax, 72(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	72(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	56(%rsp), %r8
	callq	_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_
	movb	%al, 55(%rsp)                   # 1-byte Spill
.LBB2_2:
	movb	55(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
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
	.def	_ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE # -- Begin function _ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE
	.p2align	4
_ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE: # @_ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE
.Lfunc_begin1:
.seh_proc _ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movabsq	$-3750763034362895579, %rcx     # imm = 0xCBF29CE484222325
	movq	%rcx, 128(%rsp)
	movabsq	$1099511628211, %rax            # imm = 0x100000001B3
	movq	%rax, 120(%rsp)
	movq	136(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	xorq	%rcx, %rax
	movq	%rax, 112(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	136(%rsp), %rax
	movb	(%rax), %al
	addb	$-2, %al
	movzbl	%al, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	subb	$13, %al
	ja	.LBB4_34
# %bb.37:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI4_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB4_1:
	movq	136(%rsp), %rax
	movzbl	1(%rax), %eax
	movl	%eax, %edx
.Ltmp33:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp34:                                # EH_LABEL
	jmp	.LBB4_2
.LBB4_2:
	jmp	.LBB4_35
.LBB4_3:
	movq	136(%rsp), %rax
	movzbl	2(%rax), %eax
	movl	%eax, %edx
.Ltmp31:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp32:                                # EH_LABEL
	jmp	.LBB4_4
.LBB4_4:
	jmp	.LBB4_35
.LBB4_5:
	movq	136(%rsp), %rax
	movzbl	3(%rax), %eax
	movl	%eax, %edx
.Ltmp29:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp30:                                # EH_LABEL
	jmp	.LBB4_6
.LBB4_6:
	jmp	.LBB4_35
.LBB4_7:
	movq	136(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
.Ltmp23:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp24:                                # EH_LABEL
	jmp	.LBB4_8
.LBB4_8:
	movq	136(%rsp), %rax
	movq	16(%rax), %rdx
.Ltmp25:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp26:                                # EH_LABEL
	jmp	.LBB4_9
.LBB4_9:
	movq	136(%rsp), %rax
	movzbl	4(%rax), %eax
	movl	%eax, %edx
.Ltmp27:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp28:                                # EH_LABEL
	jmp	.LBB4_10
.LBB4_10:
	jmp	.LBB4_35
.LBB4_11:
	movq	136(%rsp), %rax
	movq	16(%rax), %rdx
.Ltmp19:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp20:                                # EH_LABEL
	jmp	.LBB4_12
.LBB4_12:
	movq	136(%rsp), %rax
	movzbl	4(%rax), %eax
	movl	%eax, %edx
.Ltmp21:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp22:                                # EH_LABEL
	jmp	.LBB4_13
.LBB4_13:
	jmp	.LBB4_35
.LBB4_14:
	movq	136(%rsp), %rax
	movq	16(%rax), %rdx
.Ltmp15:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp16:                                # EH_LABEL
	jmp	.LBB4_15
.LBB4_15:
	movq	136(%rsp), %rax
	movq	24(%rax), %rdx
.Ltmp17:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp18:                                # EH_LABEL
	jmp	.LBB4_16
.LBB4_16:
	jmp	.LBB4_35
.LBB4_17:
	movq	136(%rsp), %rax
	movq	16(%rax), %rdx
.Ltmp13:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp14:                                # EH_LABEL
	jmp	.LBB4_18
.LBB4_18:
	jmp	.LBB4_35
.LBB4_19:
	movq	136(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	movq	%rax, 88(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
	movq	%rax, 80(%rsp)
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	leaq	88(%rsp), %rcx
	leaq	80(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB4_21
	jmp	.LBB4_24
.LBB4_21:                               #   in Loop: Header=BB4_20 Depth=1
	leaq	88(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rdx
.Ltmp11:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp12:                                # EH_LABEL
	jmp	.LBB4_22
.LBB4_22:                               #   in Loop: Header=BB4_20 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               #   in Loop: Header=BB4_20 Depth=1
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev
	jmp	.LBB4_20
.LBB4_24:
	jmp	.LBB4_35
.LBB4_25:
	movq	136(%rsp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edx
.Ltmp7:                                 # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp8:                                 # EH_LABEL
	jmp	.LBB4_26
.LBB4_26:
	movq	136(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
	movq	%rax, 48(%rsp)
.LBB4_27:                               # =>This Inner Loop Header: Depth=1
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB4_28
	jmp	.LBB4_31
.LBB4_28:                               #   in Loop: Header=BB4_27 Depth=1
	leaq	56(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rdx
.Ltmp9:                                 # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp10:                                # EH_LABEL
	jmp	.LBB4_29
.LBB4_29:                               #   in Loop: Header=BB4_27 Depth=1
	jmp	.LBB4_30
.LBB4_30:                               #   in Loop: Header=BB4_27 Depth=1
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev
	jmp	.LBB4_27
.LBB4_31:
	jmp	.LBB4_35
.LBB4_32:
	movq	136(%rsp), %rax
	movl	88(%rax), %eax
	movl	%eax, %edx
.Ltmp5:                                 # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
.Ltmp6:                                 # EH_LABEL
	jmp	.LBB4_33
.LBB4_33:
	jmp	.LBB4_35
.LBB4_34:
	jmp	.LBB4_35
.LBB4_35:
	movq	112(%rsp), %rax
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB4_36:
.Ltmp35:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end1:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI4_0:
	.long	.LBB4_1-.LJTI4_0
	.long	.LBB4_3-.LJTI4_0
	.long	.LBB4_5-.LJTI4_0
	.long	.LBB4_34-.LJTI4_0
	.long	.LBB4_34-.LJTI4_0
	.long	.LBB4_19-.LJTI4_0
	.long	.LBB4_14-.LJTI4_0
	.long	.LBB4_17-.LJTI4_0
	.long	.LBB4_7-.LJTI4_0
	.long	.LBB4_11-.LJTI4_0
	.long	.LBB4_25-.LJTI4_0
	.long	.LBB4_25-.LJTI4_0
	.long	.LBB4_19-.LJTI4_0
	.long	.LBB4_32-.LJTI4_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Ltmp33                 #   Call between .Ltmp33 and .Ltmp6
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
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
	.def	_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy: # @"_ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy"
.seh_proc _ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rdx
	movq	(%rax), %rcx
	xorq	(%rcx), %rdx
	movq	%rdx, (%rcx)
	movq	(%rax), %rax
	movabsq	$1099511628211, %rcx            # imm = 0x100000001B3
	imulq	(%rax), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_
	.globl	_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_: # @_ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_
.seh_proc _ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev
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
	.def	_ZN6apollo3mir6TyCtxtC2Ev;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir6TyCtxtC2Ev       # -- Begin function _ZN6apollo3mir6TyCtxtC2Ev
	.p2align	4
_ZN6apollo3mir6TyCtxtC2Ev:              # @_ZN6apollo3mir6TyCtxtC2Ev
.Lfunc_begin2:
.seh_proc _ZN6apollo3mir6TyCtxtC2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 160(%rsp)
	movq	160(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	addq	$48, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$88, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 152(%rsp)
.Ltmp36:                                # EH_LABEL
	xorl	%eax, %eax
	movb	%al, %dl
	leaq	152(%rsp), %rcx
	callq	_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
.Ltmp37:                                # EH_LABEL
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB11_1
.LBB11_1:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp38:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	movb	$1, %dl
	callq	_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
.Ltmp39:                                # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB11_2
.LBB11_2:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rax)
.Ltmp40:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	movb	$5, %dl
	callq	_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
.Ltmp41:                                # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB11_3
.LBB11_3:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 16(%rax)
.Ltmp42:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	movb	$6, %dl
	callq	_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
.Ltmp43:                                # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB11_4
.LBB11_4:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 24(%rax)
.Ltmp44:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	movb	$16, %dl
	callq	_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
.Ltmp45:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB11_5
.LBB11_5:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 32(%rax)
.Ltmp46:                                # EH_LABEL
	leaq	128(%rsp), %rcx
	callq	_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_
.Ltmp47:                                # EH_LABEL
	jmp	.LBB11_6
.LBB11_6:
	leaq	128(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movb	$7, (%rax)
	callq	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, %r8
	addq	$40, %r8
	movq	%rax, 40(%rdx)
	addq	$48, %rdx
.Ltmp49:                                # EH_LABEL
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
.Ltmp50:                                # EH_LABEL
	jmp	.LBB11_7
.LBB11_7:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$88, %rcx
.Ltmp51:                                # EH_LABEL
	leaq	128(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
.Ltmp52:                                # EH_LABEL
	jmp	.LBB11_8
.LBB11_8:
	leaq	128(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB11_9:
.Ltmp48:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 144(%rsp)
	movl	%eax, 140(%rsp)
	jmp	.LBB11_11
.LBB11_10:
.Ltmp53:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 144(%rsp)
	movl	%eax, 140(%rsp)
	leaq	128(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
.LBB11_11:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev
# %bb.12:
	movq	144(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table11:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp47-.Ltmp36                #   Call between .Ltmp36 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp49                #   Call between .Ltmp49 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp52            #   Call between .Ltmp52 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev: # @_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEEC2B9nqe220103Ev
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
	.def	_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE: # @"_ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE"
.Lfunc_begin3:
.seh_proc _ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 128(%rsp)
	movb	%dl, 127(%rsp)
	movq	128(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	112(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	127(%rsp), %al
	movb	%al, 55(%rsp)                   # 1-byte Spill
	callq	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev
	movb	55(%rsp), %dl                   # 1-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	%dl, (%rax)
	callq	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, 104(%rsp)
	addq	$48, %rdx
.Ltmp54:                                # EH_LABEL
	leaq	88(%rsp), %rcx
	leaq	104(%rsp), %r8
	callq	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
.Ltmp55:                                # EH_LABEL
	jmp	.LBB14_1
.LBB14_1:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	$88, %rcx
.Ltmp56:                                # EH_LABEL
	leaq	112(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
.Ltmp57:                                # EH_LABEL
	jmp	.LBB14_2
.LBB14_2:
	movq	104(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB14_3:
.Ltmp58:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 80(%rsp)
	movl	%eax, 76(%rsp)
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
# %bb.4:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table14:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp54-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp57-.Ltmp54                #   Call between .Ltmp54 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin3          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp57            #   Call between .Ltmp57 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_,"xr",discard,_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_
	.globl	_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_ # -- Begin function _ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_
	.p2align	4
_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_: # @_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_
.seh_proc _ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movl	$96, %ecx
	callq	_Znwy
	movq	%rax, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movl	$96, %r8d
	callq	memset
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZN6apollo3mir6TyDataC2Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev,"xr",discard,_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev
	.globl	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev # -- Begin function _ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev
	.p2align	4
_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev: # @_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev
.seh_proc _ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev
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
	.def	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev,"xr",discard,_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
	.globl	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev # -- Begin function _ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
	.p2align	4
_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev: # @_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
.seh_proc _ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
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
	.def	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_,"xr",discard,_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
	.globl	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_ # -- Begin function _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
	.p2align	4
_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_: # @_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
.seh_proc _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	72(%rsp), %rdx
	movq	64(%rsp), %r8
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_ # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev: # @_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev
.Lfunc_begin4:
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp59:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
.Ltmp60:                                # EH_LABEL
	jmp	.LBB21_1
.LBB21_1:
.Ltmp61:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp62:                                # EH_LABEL
	jmp	.LBB21_2
.LBB21_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB21_3:
.Ltmp63:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end4:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table21:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp59-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Ltmp59                #   Call between .Ltmp59 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin4          #     jumps to .Ltmp63
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
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev: # @_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev
.seh_proc _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir6TyCtxt6internERKNS0_6TyDataE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir6TyCtxt6internERKNS0_6TyDataE # -- Begin function _ZN6apollo3mir6TyCtxt6internERKNS0_6TyDataE
	.p2align	4
_ZN6apollo3mir6TyCtxt6internERKNS0_6TyDataE: # @_ZN6apollo3mir6TyCtxt6internERKNS0_6TyDataE
.Lfunc_begin5:
.seh_proc _ZN6apollo3mir6TyCtxt6internERKNS0_6TyDataE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 136(%rsp)
	movq	%rdx, 128(%rsp)
	movq	136(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	addq	$48, %rcx
	movq	128(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	112(%rsp), %rdx
	callq	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	addq	$48, %rcx
	callq	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev
	movq	%rax, 104(%rsp)
	leaq	120(%rsp), %rcx
	leaq	104(%rsp), %rdx
	callq	_ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	testb	$1, %al
	jne	.LBB23_1
	jmp	.LBB23_2
.LBB23_1:
	leaq	120(%rsp), %rcx
	callq	_ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 144(%rsp)
	jmp	.LBB23_6
.LBB23_2:
	movq	128(%rsp), %rdx
	leaq	96(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, 88(%rsp)
	addq	$48, %rdx
.Ltmp64:                                # EH_LABEL
	leaq	72(%rsp), %rcx
	leaq	88(%rsp), %r8
	callq	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
.Ltmp65:                                # EH_LABEL
	jmp	.LBB23_3
.LBB23_3:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	$88, %rcx
.Ltmp66:                                # EH_LABEL
	leaq	96(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
.Ltmp67:                                # EH_LABEL
	jmp	.LBB23_4
.LBB23_4:
	movq	88(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
	jmp	.LBB23_6
.LBB23_5:
.Ltmp68:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
	jmp	.LBB23_7
.LBB23_6:
	movq	144(%rsp), %rax
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB23_7:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end5:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table23:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp64-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp67-.Ltmp64                #   Call between .Ltmp64 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin5          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp67            #   Call between .Ltmp67 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_,"xr",discard,_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_
	.globl	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_ # -- Begin function _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_
	.p2align	4
_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_: # @_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_
.seh_proc _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_
	movq	%rax, 40(%rsp)
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %rdx
	callq	_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_,"xr",discard,_ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	.globl	_ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_ # -- Begin function _ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	.p2align	4
_ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_: # @_ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
.seh_proc _ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	xorb	$-1, %al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev,"xr",discard,_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.globl	_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev # -- Begin function _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.p2align	4
_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev: # @_ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev
.seh_proc _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv
	movq	%rax, 32(%rsp)
	leaq	48(%rsp), %rcx
	leaq	32(%rsp), %rdx
	callq	_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev
	.globl	_ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev: # @_ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_,"xr",discard,_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
	.globl	_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_ # -- Begin function _ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
	.p2align	4
_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_: # @_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
.Lfunc_begin6:
.seh_proc _ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movl	$96, %ecx
	callq	_Znwy
	movq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rdx
.Ltmp69:                                # EH_LABEL
	callq	_ZN6apollo3mir6TyDataC2ERKS1_
.Ltmp70:                                # EH_LABEL
	jmp	.LBB28_1
.LBB28_1:
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB28_2:
.Ltmp71:                                # EH_LABEL
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 80(%rsp)
	movl	%eax, 76(%rsp)
	callq	_ZdlPv
# %bb.3:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_,"xr",discard,_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
	.seh_endproc
	.section	.xdata$_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table28:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp69-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin6          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp70            #   Call between .Ltmp70 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_,"xr",discard,_ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
                                        # -- End function
	.def	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE # -- Begin function _ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
	.p2align	4
_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE: # @_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Lfunc_begin7:
.seh_proc _ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$664, %rsp                      # imm = 0x298
	.seh_stackalloc 664
	.seh_endprologue
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, 656(%rsp)
	movq	%rdx, 648(%rsp)
	movq	%r8, 640(%rsp)
	movq	648(%rsp), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	cmpq	$0, 640(%rsp)
	jne	.LBB29_2
# %bb.1:
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	jmp	.LBB29_132
.LBB29_2:
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	movq	640(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	subq	$16, %rax
	ja	.LBB29_128
# %bb.134:
	movq	144(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI29_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB29_3:
.Ltmp207:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.1(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp208:                               # EH_LABEL
	jmp	.LBB29_4
.LBB29_4:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_5:
.Ltmp211:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	jmp	.LBB29_131
.LBB29_6:
.Ltmp205:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.2(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp206:                               # EH_LABEL
	jmp	.LBB29_7
.LBB29_7:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_8:
.Ltmp203:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.3(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp204:                               # EH_LABEL
	jmp	.LBB29_9
.LBB29_9:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_10:
.Ltmp201:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.4(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp202:                               # EH_LABEL
	jmp	.LBB29_11
.LBB29_11:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_12:
.Ltmp199:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.5(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp200:                               # EH_LABEL
	jmp	.LBB29_13
.LBB29_13:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_14:
	movq	640(%rsp), %rax
	movzbl	1(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	subq	$5, %rax
	ja	.LBB29_27
# %bb.136:
	movq	136(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI29_2(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB29_15:
.Ltmp195:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.6(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp196:                               # EH_LABEL
	jmp	.LBB29_16
.LBB29_16:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_17:
.Ltmp193:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.7(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp194:                               # EH_LABEL
	jmp	.LBB29_18
.LBB29_18:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_19:
.Ltmp191:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.8(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp192:                               # EH_LABEL
	jmp	.LBB29_20
.LBB29_20:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_21:
.Ltmp189:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.9(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp190:                               # EH_LABEL
	jmp	.LBB29_22
.LBB29_22:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_23:
.Ltmp187:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.10(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp188:                               # EH_LABEL
	jmp	.LBB29_24
.LBB29_24:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_25:
.Ltmp185:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.11(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp186:                               # EH_LABEL
	jmp	.LBB29_26
.LBB29_26:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_27:
.Ltmp197:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.12(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp198:                               # EH_LABEL
	jmp	.LBB29_28
.LBB29_28:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_29:
	movq	640(%rsp), %rax
	movzbl	2(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	subq	$5, %rax
	ja	.LBB29_42
# %bb.135:
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI29_1(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB29_30:
.Ltmp181:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.13(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp182:                               # EH_LABEL
	jmp	.LBB29_31
.LBB29_31:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_32:
.Ltmp179:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.14(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp180:                               # EH_LABEL
	jmp	.LBB29_33
.LBB29_33:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_34:
.Ltmp177:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.15(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp178:                               # EH_LABEL
	jmp	.LBB29_35
.LBB29_35:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_36:
.Ltmp175:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.16(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp176:                               # EH_LABEL
	jmp	.LBB29_37
.LBB29_37:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_38:
.Ltmp173:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.17(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp174:                               # EH_LABEL
	jmp	.LBB29_39
.LBB29_39:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_40:
.Ltmp171:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.18(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp172:                               # EH_LABEL
	jmp	.LBB29_41
.LBB29_41:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_42:
.Ltmp183:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.19(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp184:                               # EH_LABEL
	jmp	.LBB29_43
.LBB29_43:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_44:
	movq	640(%rsp), %rax
	cmpb	$0, 3(%rax)
	jne	.LBB29_46
# %bb.45:
	leaq	.L.str.20(%rip), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB29_47
.LBB29_46:
	leaq	.L.str.21(%rip), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB29_47
.LBB29_47:
.Ltmp169:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	120(%rsp), %rdx                 # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp170:                               # EH_LABEL
	jmp	.LBB29_48
.LBB29_48:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_49:
.Ltmp158:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	movb	$38, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp159:                               # EH_LABEL
	jmp	.LBB29_50
.LBB29_50:
	movq	640(%rsp), %rax
	cmpb	$1, 4(%rax)
	jne	.LBB29_53
# %bb.51:
.Ltmp160:                               # EH_LABEL
	leaq	.L.str.22(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp161:                               # EH_LABEL
	jmp	.LBB29_52
.LBB29_52:
	jmp	.LBB29_53
.LBB29_53:
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	640(%rsp), %rax
	movq	16(%rax), %r8
.Ltmp162:                               # EH_LABEL
	leaq	336(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp163:                               # EH_LABEL
	jmp	.LBB29_54
.LBB29_54:
.Ltmp164:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	leaq	336(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp165:                               # EH_LABEL
	jmp	.LBB29_55
.LBB29_55:
	leaq	336(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	152(%rsp), %rcx                 # 8-byte Reload
.Ltmp167:                               # EH_LABEL
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp168:                               # EH_LABEL
	jmp	.LBB29_56
.LBB29_56:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_57:
.Ltmp166:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	336(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_131
.LBB29_58:
	movq	640(%rsp), %rax
	movb	4(%rax), %al
	subb	$1, %al
	leaq	.L.str.23(%rip), %rax
	leaq	.L.str.24(%rip), %rdx
	cmoveq	%rax, %rdx
.Ltmp149:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp150:                               # EH_LABEL
	jmp	.LBB29_59
.LBB29_59:
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	640(%rsp), %rax
	movq	16(%rax), %r8
.Ltmp151:                               # EH_LABEL
	leaq	312(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp152:                               # EH_LABEL
	jmp	.LBB29_60
.LBB29_60:
.Ltmp153:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	leaq	312(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp154:                               # EH_LABEL
	jmp	.LBB29_61
.LBB29_61:
	leaq	312(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	152(%rsp), %rcx                 # 8-byte Reload
.Ltmp156:                               # EH_LABEL
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp157:                               # EH_LABEL
	jmp	.LBB29_62
.LBB29_62:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_63:
.Ltmp155:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	312(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_131
.LBB29_64:
.Ltmp134:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	movb	$91, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp135:                               # EH_LABEL
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB29_65
.LBB29_65:
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	640(%rsp), %rax
	movq	16(%rax), %r8
.Ltmp136:                               # EH_LABEL
	leaq	288(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp137:                               # EH_LABEL
	jmp	.LBB29_66
.LBB29_66:
.Ltmp138:                               # EH_LABEL
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	288(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp139:                               # EH_LABEL
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB29_67
.LBB29_67:
.Ltmp140:                               # EH_LABEL
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp141:                               # EH_LABEL
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB29_68
.LBB29_68:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	640(%rsp), %rax
	movq	24(%rax), %rdx
.Ltmp142:                               # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
.Ltmp143:                               # EH_LABEL
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB29_69
.LBB29_69:
.Ltmp144:                               # EH_LABEL
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movb	$93, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp145:                               # EH_LABEL
	jmp	.LBB29_70
.LBB29_70:
	leaq	288(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	152(%rsp), %rcx                 # 8-byte Reload
.Ltmp147:                               # EH_LABEL
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp148:                               # EH_LABEL
	jmp	.LBB29_71
.LBB29_71:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_72:
.Ltmp146:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	288(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_131
.LBB29_73:
.Ltmp123:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	movb	$91, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp124:                               # EH_LABEL
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB29_74
.LBB29_74:
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	640(%rsp), %rax
	movq	16(%rax), %r8
.Ltmp125:                               # EH_LABEL
	leaq	264(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp126:                               # EH_LABEL
	jmp	.LBB29_75
.LBB29_75:
.Ltmp127:                               # EH_LABEL
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	264(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp128:                               # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB29_76
.LBB29_76:
.Ltmp129:                               # EH_LABEL
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movb	$93, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp130:                               # EH_LABEL
	jmp	.LBB29_77
.LBB29_77:
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	152(%rsp), %rcx                 # 8-byte Reload
.Ltmp132:                               # EH_LABEL
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp133:                               # EH_LABEL
	jmp	.LBB29_78
.LBB29_78:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_79:
.Ltmp131:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_131
.LBB29_80:
.Ltmp108:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	movb	$40, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp109:                               # EH_LABEL
	jmp	.LBB29_81
.LBB29_81:
	movq	$0, 256(%rsp)
.LBB29_82:                              # =>This Inner Loop Header: Depth=1
	movq	256(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	640(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB29_91
# %bb.83:                               #   in Loop: Header=BB29_82 Depth=1
	cmpq	$0, 256(%rsp)
	je	.LBB29_86
# %bb.84:                               #   in Loop: Header=BB29_82 Depth=1
.Ltmp116:                               # EH_LABEL
	leaq	.L.str.26(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp117:                               # EH_LABEL
	jmp	.LBB29_85
.LBB29_85:                              #   in Loop: Header=BB29_82 Depth=1
	jmp	.LBB29_86
.LBB29_86:                              #   in Loop: Header=BB29_82 Depth=1
	movq	640(%rsp), %rcx
	addq	$32, %rcx
	movq	256(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax), %r8
.Ltmp118:                               # EH_LABEL
	leaq	232(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp119:                               # EH_LABEL
	jmp	.LBB29_87
.LBB29_87:                              #   in Loop: Header=BB29_82 Depth=1
.Ltmp120:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	leaq	232(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp121:                               # EH_LABEL
	jmp	.LBB29_88
.LBB29_88:                              #   in Loop: Header=BB29_82 Depth=1
	leaq	232(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.89:                               #   in Loop: Header=BB29_82 Depth=1
	movq	256(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 256(%rsp)
	jmp	.LBB29_82
.LBB29_90:
.Ltmp122:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	232(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_131
.LBB29_91:
	movq	640(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	cmpq	$1, %rax
	jne	.LBB29_94
# %bb.92:
.Ltmp110:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	movb	$44, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp111:                               # EH_LABEL
	jmp	.LBB29_93
.LBB29_93:
	jmp	.LBB29_94
.LBB29_94:
.Ltmp112:                               # EH_LABEL
	leaq	376(%rsp), %rcx
	movb	$41, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp113:                               # EH_LABEL
	jmp	.LBB29_95
.LBB29_95:
.Ltmp114:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp115:                               # EH_LABEL
	jmp	.LBB29_96
.LBB29_96:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_97:
.Ltmp102:                               # EH_LABEL
	leaq	.L.str.27(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp103:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB29_98
.LBB29_98:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	640(%rsp), %rax
	movl	56(%rax), %edx
.Ltmp104:                               # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp105:                               # EH_LABEL
	jmp	.LBB29_99
.LBB29_99:
.Ltmp106:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp107:                               # EH_LABEL
	jmp	.LBB29_100
.LBB29_100:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_101:
.Ltmp96:                                # EH_LABEL
	leaq	.L.str.28(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp97:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB29_102
.LBB29_102:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	640(%rsp), %rax
	movl	56(%rax), %edx
.Ltmp98:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp99:                                # EH_LABEL
	jmp	.LBB29_103
.LBB29_103:
.Ltmp100:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp101:                               # EH_LABEL
	jmp	.LBB29_104
.LBB29_104:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_105:
.Ltmp78:                                # EH_LABEL
	leaq	.L.str.29(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp79:                                # EH_LABEL
	jmp	.LBB29_106
.LBB29_106:
	movq	$0, 224(%rsp)
.LBB29_107:                             # =>This Inner Loop Header: Depth=1
	movq	224(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	640(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB29_116
# %bb.108:                              #   in Loop: Header=BB29_107 Depth=1
	cmpq	$0, 224(%rsp)
	je	.LBB29_111
# %bb.109:                              #   in Loop: Header=BB29_107 Depth=1
.Ltmp89:                                # EH_LABEL
	leaq	.L.str.26(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp90:                                # EH_LABEL
	jmp	.LBB29_110
.LBB29_110:                             #   in Loop: Header=BB29_107 Depth=1
	jmp	.LBB29_111
.LBB29_111:                             #   in Loop: Header=BB29_107 Depth=1
	movq	640(%rsp), %rcx
	addq	$32, %rcx
	movq	224(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax), %r8
.Ltmp91:                                # EH_LABEL
	leaq	200(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp92:                                # EH_LABEL
	jmp	.LBB29_112
.LBB29_112:                             #   in Loop: Header=BB29_107 Depth=1
.Ltmp93:                                # EH_LABEL
	leaq	376(%rsp), %rcx
	leaq	200(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp94:                                # EH_LABEL
	jmp	.LBB29_113
.LBB29_113:                             #   in Loop: Header=BB29_107 Depth=1
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.114:                              #   in Loop: Header=BB29_107 Depth=1
	movq	224(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 224(%rsp)
	jmp	.LBB29_107
.LBB29_115:
.Ltmp95:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_131
.LBB29_116:
.Ltmp80:                                # EH_LABEL
	leaq	.L.str.30(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp81:                                # EH_LABEL
	jmp	.LBB29_117
.LBB29_117:
	movq	640(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB29_122
# %bb.118:
	movq	640(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax), %r8
.Ltmp82:                                # EH_LABEL
	leaq	176(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp83:                                # EH_LABEL
	jmp	.LBB29_119
.LBB29_119:
.Ltmp84:                                # EH_LABEL
	leaq	376(%rsp), %rcx
	leaq	176(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp85:                                # EH_LABEL
	jmp	.LBB29_120
.LBB29_120:
	leaq	176(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_122
.LBB29_121:
.Ltmp86:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	176(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_131
.LBB29_122:
.Ltmp87:                                # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp88:                                # EH_LABEL
	jmp	.LBB29_123
.LBB29_123:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_124:
.Ltmp72:                                # EH_LABEL
	leaq	.L.str.31(%rip), %rdx
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp73:                                # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB29_125
.LBB29_125:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	640(%rsp), %rax
	movl	88(%rax), %edx
.Ltmp74:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp75:                                # EH_LABEL
	jmp	.LBB29_126
.LBB29_126:
.Ltmp76:                                # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	376(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp77:                                # EH_LABEL
	jmp	.LBB29_127
.LBB29_127:
	movl	$1, 360(%rsp)
	jmp	.LBB29_130
.LBB29_128:
.Ltmp209:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.32(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp210:                               # EH_LABEL
	jmp	.LBB29_129
.LBB29_129:
	movl	$1, 360(%rsp)
.LBB29_130:
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_132
.LBB29_131:
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB29_133
.LBB29_132:
	movq	160(%rsp), %rax                 # 8-byte Reload
	.seh_startepilogue
	addq	$664, %rsp                      # imm = 0x298
	.seh_endepilogue
	retq
.LBB29_133:
	movq	368(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end7:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI29_0:
	.long	.LBB29_3-.LJTI29_0
	.long	.LBB29_6-.LJTI29_0
	.long	.LBB29_14-.LJTI29_0
	.long	.LBB29_29-.LJTI29_0
	.long	.LBB29_44-.LJTI29_0
	.long	.LBB29_8-.LJTI29_0
	.long	.LBB29_10-.LJTI29_0
	.long	.LBB29_80-.LJTI29_0
	.long	.LBB29_64-.LJTI29_0
	.long	.LBB29_73-.LJTI29_0
	.long	.LBB29_49-.LJTI29_0
	.long	.LBB29_58-.LJTI29_0
	.long	.LBB29_97-.LJTI29_0
	.long	.LBB29_101-.LJTI29_0
	.long	.LBB29_105-.LJTI29_0
	.long	.LBB29_124-.LJTI29_0
	.long	.LBB29_12-.LJTI29_0
.LJTI29_1:
	.long	.LBB29_30-.LJTI29_1
	.long	.LBB29_32-.LJTI29_1
	.long	.LBB29_34-.LJTI29_1
	.long	.LBB29_36-.LJTI29_1
	.long	.LBB29_38-.LJTI29_1
	.long	.LBB29_40-.LJTI29_1
.LJTI29_2:
	.long	.LBB29_15-.LJTI29_2
	.long	.LBB29_17-.LJTI29_2
	.long	.LBB29_19-.LJTI29_2
	.long	.LBB29_21-.LJTI29_2
	.long	.LBB29_23-.LJTI29_2
	.long	.LBB29_25-.LJTI29_2
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table29:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp207-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp207
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp163-.Ltmp207              #   Call between .Ltmp207 and .Ltmp163
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin7         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp152-.Ltmp167              #   Call between .Ltmp167 and .Ltmp152
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin7         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp137-.Ltmp156              #   Call between .Ltmp156 and .Ltmp137
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp145-.Ltmp138              #   Call between .Ltmp138 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin7         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp126-.Ltmp147              #   Call between .Ltmp147 and .Ltmp126
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp130-.Ltmp127              #   Call between .Ltmp127 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin7         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp119-.Ltmp132              #   Call between .Ltmp132 and .Ltmp119
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin7         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp92-.Ltmp110               #   Call between .Ltmp110 and .Ltmp92
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin7          # >> Call Site 13 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin7          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin7          # >> Call Site 14 <<
	.uleb128 .Ltmp83-.Ltmp80                #   Call between .Ltmp80 and .Ltmp83
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin7          # >> Call Site 15 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin7          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin7          # >> Call Site 16 <<
	.uleb128 .Ltmp210-.Ltmp87               #   Call between .Ltmp87 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin7         # >> Call Site 17 <<
	.uleb128 .Lfunc_end7-.Ltmp210           #   Call between .Ltmp210 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.globl	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev # -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.p2align	4
_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev: # @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Lfunc_begin8:
.seh_proc _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	addq	$112, %rcx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24(%rip), %rax
	movq	%rax, (%rcx)
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64(%rip), %rax
	movq	%rax, 112(%rcx)
	movq	%rcx, %r8
	addq	$8, %r8
.Ltmp212:                               # EH_LABEL
	leaq	_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+8(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
.Ltmp213:                               # EH_LABEL
	jmp	.LBB31_1
.LBB31_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24(%rip), %rax
	movq	%rax, (%rcx)
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64(%rip), %rax
	movq	%rax, 112(%rcx)
	addq	$8, %rcx
.Ltmp215:                               # EH_LABEL
	movl	$16, %edx
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
.Ltmp216:                               # EH_LABEL
	jmp	.LBB31_2
.LBB31_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB31_3:
.Ltmp214:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB31_5
.LBB31_4:
.Ltmp217:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%rip), %rdx
	addq	$8, %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
.LBB31_5:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$112, %rcx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
# %bb.6:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table31:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp212-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin8         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin8         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Lfunc_end8-.Ltmp216           #   Call between .Ltmp216 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c,"xr",discard,_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.globl	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c # -- Begin function _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	4
_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: # @_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.seh_proc _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 47(%rsp)
	movq	48(%rsp), %rcx
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc,"xr",discard,_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc # -- Begin function _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4
_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: # @_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.seh_proc _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE,"xr",discard,_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.globl	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE # -- Begin function _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	4
_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: # @_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.seh_proc _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev,"xr",discard,_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.globl	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev # -- Begin function _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.p2align	4
_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev: # @_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.seh_proc _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rdx
	addq	$8, %rdx
	callq	_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey
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
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	addq	$-8, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.globl	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev # -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4
_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: # @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
.seh_proc _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%rip), %rdx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$112, %rcx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_,"xr",discard,_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_
	.globl	_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_ # -- Begin function _ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_
	.p2align	4
_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_: # @_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_
.seh_proc _ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	40(%rsp), %r8
	movb	39(%rsp), %r9b
	callq	_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_
	andb	$1, %al
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_,"xr",discard,_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_
	.globl	_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_ # -- Begin function _ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_
	.p2align	4
_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_: # @_ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_
.seh_proc _ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movb	%r9b, 95(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	leaq	95(%rsp), %r9
	leaq	94(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	_ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_
	andb	$1, %al
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_,"xr",discard,_ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_
	.globl	_ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_ # -- Begin function _ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_
	.p2align	4
_ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_: # @_ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_
.seh_proc _ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	120(%rsp), %rax
	movq	112(%rsp), %rax
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	64(%rsp), %rax
	subq	%rax, %r8
	sarq	$3, %r8
	callq	_ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE
	andb	$1, %al
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_,"xr",discard,_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
	.globl	_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_ # -- Begin function _ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
	.p2align	4
_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_: # @_ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
.seh_proc _ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE,"xr",discard,_ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE
	.globl	_ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE # -- Begin function _ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE
	.p2align	4
_ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE: # @_ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE
.seh_proc _ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	40(%rsp), %r8
	shlq	$3, %r8
	callq	memcmp
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_,"xr",discard,_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_
	.globl	_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_ # -- Begin function _ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_
	.p2align	4
_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_: # @_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_
.seh_proc _ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	.globl	_ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_: # @_ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
.seh_proc _ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_,"xr",discard,_ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_
	.globl	_ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_ # -- Begin function _ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_
	.p2align	4
_ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_: # @_ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_
.seh_proc _ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_,"xr",discard,_ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_
	.globl	_ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_ # -- Begin function _ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_
	.p2align	4
_ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_: # @_ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_
.seh_proc _ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	32(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_
	.globl	_ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_: # @_ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_
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
	.def	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_ # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_ # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
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
	.def	_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_,"xr",discard,_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_
	.globl	_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_ # -- Begin function _ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_
	.p2align	4
_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_: # @_ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_
.seh_proc _ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEC2B9nqe220103ES7_
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
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
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
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
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
	je	.LBB56_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
	jmp	.LBB56_4
.LBB56_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
.LBB56_4:
	jmp	.LBB56_5
.LBB56_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
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
	.def	_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
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
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
.Lfunc_begin9:
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
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
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp218:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
.Ltmp219:                               # EH_LABEL
	jmp	.LBB59_1
.LBB59_1:
	movq	72(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB59_2:
.Ltmp220:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table59:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp218-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin9         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end9-.Ltmp219           #   Call between .Ltmp219 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
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
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	.globl	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_: # @_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
.seh_proc _ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
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
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB63_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB63_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin10:
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp221:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp222:                               # EH_LABEL
	jmp	.LBB64_1
.LBB64_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB64_2:
.Ltmp223:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table64:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp221-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin10        #     jumps to .Ltmp223
	.byte	1                               #   On action: 1
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_ # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_
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
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
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
	.def	_ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_,"xr",discard,_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_
	.globl	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_ # -- Begin function _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_
	.p2align	4
_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_: # @_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_
.seh_proc _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103EOS6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, (%rax)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev: # @_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	$0, (%rax)
	movq	(%rsp), %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev: # @_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin11:
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp224:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp225:                               # EH_LABEL
	jmp	.LBB75_1
.LBB75_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB75_2:
.Ltmp226:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table75:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp224-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin11        #     jumps to .Ltmp226
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_ # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
.Lfunc_begin12:
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp227:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
.Ltmp228:                               # EH_LABEL
	jmp	.LBB76_1
.LBB76_1:
	movq	96(%rsp), %rdx
	addq	$8, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp229:                               # EH_LABEL
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
.Ltmp230:                               # EH_LABEL
	jmp	.LBB76_2
.LBB76_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB76_3:
.Ltmp231:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table76:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp227-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp230-.Ltmp227              #   Call between .Ltmp227 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin12        #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp230          #   Call between .Ltmp230 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB77_2
# %bb.1:
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
.LBB77_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB77_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB77_5
.LBB77_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB77_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_,"xr",discard,_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
	.globl	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_ # -- Begin function _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
	.p2align	4
_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_: # @_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
.seh_proc _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
	cmpq	$0, 88(%rsp)
	jbe	.LBB78_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB78_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
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
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
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
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB82_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y
	nop
.LBB82_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin13:
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp232:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp233:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB83_1
.LBB83_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB83_2:
.Ltmp234:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table83:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp232-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin13        #     jumps to .Ltmp234
	.byte	1                               #   On action: 1
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.33(%rip), %rcx
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
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
	jne	.LBB89_1
	jmp	.LBB89_2
.LBB89_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB89_3
.LBB89_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB89_3:
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
.Lfunc_begin14:
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
.Ltmp235:                               # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp236:                               # EH_LABEL
	jmp	.LBB94_1
.LBB94_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB94_2:
.Ltmp237:                               # EH_LABEL
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
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table94:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp235-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin14        #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp236          #   Call between .Ltmp236 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
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
	jne	.LBB96_1
	jmp	.LBB96_2
.LBB96_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB96_3
.LBB96_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB96_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
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
	.def	_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB104_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB104_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y,"xr",discard,_ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y
	.globl	_ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y # -- Begin function _ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y
	.p2align	4
_ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y: # @_ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y
.seh_proc _ZNSt3__119__allocation_resultIPNS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEyEC2B9nqe220103ES8_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy
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
	jne	.LBB107_1
	jmp	.LBB107_2
.LBB107_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB107_3
.LBB107_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB107_3:
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
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin15:
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp238:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp239:                               # EH_LABEL
	jmp	.LBB109_1
.LBB109_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB109_2:
.Ltmp240:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table109:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp238-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin15        #     jumps to .Ltmp240
	.byte	1                               #   On action: 1
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
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
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin16:
.seh_proc _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp241:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp242:                               # EH_LABEL
	jmp	.LBB113_1
.LBB113_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB113_2:
.Ltmp243:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table113:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp241-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin16        #     jumps to .Ltmp243
	.byte	1                               #   On action: 1
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
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
	.def	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y
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
	callq	_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
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
	.def	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_,"xr",discard,_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
	.globl	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_ # -- Begin function _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
	.p2align	4
_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_: # @_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
.seh_proc _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
.Lfunc_begin17:
.seh_proc _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB121_4
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp244:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.Ltmp245:                               # EH_LABEL
	jmp	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	jmp	.LBB121_1
.LBB121_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB121_5:
.Ltmp246:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table121:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp244-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin17        #     jumps to .Ltmp246
	.byte	1                               #   On action: 1
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y,"xr",discard,_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y
	.globl	_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y # -- Begin function _ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y
	.p2align	4
_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y: # @_ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y
.seh_proc _ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB125_1
	jmp	.LBB125_2
.LBB125_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB125_3
.LBB125_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB125_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_ # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
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
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB127_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y
	nop
.LBB127_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	.globl	_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_ # -- Begin function _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	.p2align	4
_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_: # @_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
.Lfunc_begin18:
.seh_proc _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
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
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB129_4
# %bb.2:                                #   in Loop: Header=BB129_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp247:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.Ltmp248:                               # EH_LABEL
	jmp	.LBB129_3
.LBB129_3:                              #   in Loop: Header=BB129_1 Depth=1
	jmp	.LBB129_1
.LBB129_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB129_5:
.Ltmp249:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table129:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp247-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin18        #     jumps to .Ltmp249
	.byte	1                               #   On action: 1
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_,"xr",discard,_ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
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
	.def	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.globl	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev # -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	4
_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: # @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
.seh_proc _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	24(%rax), %rdx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	%rdx, (%rcx,%rax)
	addq	$8, %rcx
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev,"xr",discard,_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.globl	_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev # -- Begin function _ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4
_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: # @_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
.seh_proc _ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	jmp	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.globl	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev # -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4
_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: # @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
.seh_proc _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZdlPv
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev,"xr",discard,_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.globl	_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev # -- Begin function _ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4
_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: # @_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
.seh_proc _ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	jmp	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rcx)
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZdlPv
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movl	208(%rsp), %eax
	movq	%rcx, 160(%rsp)
	movq	%rdx, 152(%rsp)
	movq	%r8, 144(%rsp)
	movl	%r9d, 140(%rsp)
	movq	152(%rsp), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	88(%rcx), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB138_2
# %bb.1:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB138_2:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$0, %eax
	jne	.LBB138_4
# %bb.3:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB138_34
.LBB138_4:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$24, %eax
	jne	.LBB138_7
# %bb.5:
	cmpl	$1, 140(%rsp)
	jne	.LBB138_7
# %bb.6:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB138_34
.LBB138_7:
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, 88(%rax)
	jne	.LBB138_9
# %bb.8:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB138_10
.LBB138_9:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB138_10:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	movl	140(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	je	.LBB138_11
	jmp	.LBB138_35
.LBB138_35:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$1, %eax
	je	.LBB138_12
	jmp	.LBB138_36
.LBB138_36:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$2, %eax
	je	.LBB138_16
	jmp	.LBB138_17
.LBB138_11:
	movq	$0, 120(%rsp)
	jmp	.LBB138_18
.LBB138_12:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB138_14
# %bb.13:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB138_15
.LBB138_14:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
.LBB138_15:
	jmp	.LBB138_18
.LBB138_16:
	movq	128(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB138_18
.LBB138_17:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB138_34
.LBB138_18:
	movq	144(%rsp), %rax
	addq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	cmpq	$0, 120(%rsp)
	jl	.LBB138_20
# %bb.19:
	movq	128(%rsp), %rax
	cmpq	120(%rsp), %rax
	jge	.LBB138_21
.LBB138_20:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB138_34
.LBB138_21:
	cmpq	$0, 120(%rsp)
	je	.LBB138_29
# %bb.22:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB138_25
# %bb.23:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB138_25
# %bb.24:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB138_34
.LBB138_25:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB138_28
# %bb.26:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB138_28
# %bb.27:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB138_34
.LBB138_28:
	jmp	.LBB138_29
.LBB138_29:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB138_31
# %bb.30:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	120(%rsp), %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.LBB138_31:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB138_33
# %bb.32:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex
.LBB138_33:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
.LBB138_34:
	movq	96(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rcx, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rax, %r8
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rax, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movl	%r9d, 76(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movl	76(%rsp), %r10d
	movq	(%rdx), %rax
	xorl	%r9d, %r9d
	movl	%r10d, 32(%rsp)
	callq	*32(%rax)
	movq	64(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	88(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB140_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB140_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB140_8
# %bb.3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	cmpq	88(%rcx), %rax
	jae	.LBB140_5
# %bb.4:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.LBB140_5:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB140_7
# %bb.6:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movb	(%rax), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 84(%rsp)
	jmp	.LBB140_9
.LBB140_7:
	jmp	.LBB140_8
.LBB140_8:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 84(%rsp)
.LBB140_9:
	movl	84(%rsp), %eax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 104(%rsp)
	movl	%edx, 100(%rsp)
	movq	104(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	88(%rcx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB141_2
# %bb.1:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB141_2:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB141_9
# %bb.3:
	movl	100(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%eax, %edx
	callq	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	testb	$1, %al
	jne	.LBB141_4
	jmp	.LBB141_5
.LBB141_4:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$-1, %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
	movl	100(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	movl	%eax, 116(%rsp)
	jmp	.LBB141_10
.LBB141_5:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB141_7
# %bb.6:
	movl	100(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movb	%al, 55(%rsp)                   # 1-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movb	55(%rsp), %cl                   # 1-byte Reload
	movb	-1(%rax), %dl
	callq	_ZNSt3__111char_traitsIcE2eqEcc
	testb	$1, %al
	jne	.LBB141_7
	jmp	.LBB141_8
.LBB141_7:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$-1, %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
	movl	100(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movb	%al, 54(%rsp)                   # 1-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movb	54(%rsp), %cl                   # 1-byte Reload
	movb	%cl, (%rax)
	movl	100(%rsp), %eax
	movl	%eax, 116(%rsp)
	jmp	.LBB141_10
.LBB141_8:
	jmp	.LBB141_9
.LBB141_9:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 116(%rsp)
.LBB141_10:
	movl	116(%rsp), %eax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
.Lfunc_begin19:
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$200, %rsp
	.seh_stackalloc 200
	.seh_endprologue
	movq	%rcx, 184(%rsp)
	movl	%edx, 180(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movl	180(%rsp), %eax
	movl	%eax, 108(%rsp)                 # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	108(%rsp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
	callq	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	testb	$1, %al
	jne	.LBB142_13
# %bb.1:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	80(%rsp), %rax                  # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 168(%rsp)
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB142_10
# %bb.2:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB142_4
# %bb.3:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 196(%rsp)
	jmp	.LBB142_14
.LBB142_4:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %rax                  # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 160(%rsp)
	movq	88(%rcx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	72(%rsp), %rax                  # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 152(%rsp)
	addq	$64, %rcx
.Ltmp250:                               # EH_LABEL
	xorl	%eax, %eax
	movb	%al, %dl
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
.Ltmp251:                               # EH_LABEL
	jmp	.LBB142_5
.LBB142_5:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp252:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
.Ltmp253:                               # EH_LABEL
	jmp	.LBB142_6
.LBB142_6:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	160(%rsp), %rdx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex
	movq	96(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	%rax, %rcx
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	152(%rsp), %rcx
	movq	%rcx, 88(%rax)
	jmp	.LBB142_9
.LBB142_7:
.Ltmp254:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 144(%rsp)
	movl	%eax, 140(%rsp)
# %bb.8:
	movq	144(%rsp), %rcx
	callq	__cxa_begin_catch
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 196(%rsp)
	callq	__cxa_end_catch
	jmp	.LBB142_14
.LBB142_9:
	jmp	.LBB142_10
.LBB142_10:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	96(%rsp), %rdx                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 120(%rsp)
	addq	$88, %rdx
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
	movq	%rax, %rcx
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, 88(%rax)
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB142_12
# %bb.11:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rdx
	movq	112(%rsp), %r8
	addq	168(%rsp), %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.LBB142_12:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	movl	%eax, 196(%rsp)
	jmp	.LBB142_14
.LBB142_13:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	movl	%eax, 196(%rsp)
.LBB142_14:
	movl	196(%rsp), %eax
	.seh_startepilogue
	addq	$200, %rsp
	.seh_endepilogue
	retq
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table142:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp250-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp253-.Ltmp250              #   Call between .Ltmp250 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin19        #     jumps to .Ltmp254
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp253-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end19-.Ltmp253          #   Call between .Ltmp253 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
                                        # -- End function
	.def	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	.globl	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev: # @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
.seh_proc _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	48(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex,"xr",discard,_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	.globl	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex # -- Begin function _ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	.p2align	4
_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex: # @_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
.seh_proc _ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	.globl	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev: # @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
.seh_proc _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
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
	.def	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	.globl	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev: # @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
.seh_proc _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
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
	.def	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	.globl	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev: # @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
.seh_proc _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
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
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_ # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
	.p2align	4
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	8(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 32(%rax)
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_ # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
	.p2align	4
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 56(%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
	.globl	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev: # @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
.seh_proc _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
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
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex
	.p2align	4
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	addq	48(%rax), %rcx
	movq	%rcx, 48(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_
	.globl	_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_: # @_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB154_1
	jmp	.LBB154_2
.LBB154_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB154_3
.LBB154_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB154_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	(%rax), %al
	andb	$1, %al
	cmpb	$0, %al
	setne	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$1, %rcx
	callq	_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc,"xr",discard,_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
	.globl	_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc # -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
	.p2align	4
_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc: # @_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
.seh_proc _ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
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
	.def	_ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev,"xr",discard,_ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev
	.globl	_ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev # -- Begin function _ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev
	.p2align	4
_ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev: # @_ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev
.seh_proc _ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev
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
	.def	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	.globl	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev: # @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
.seh_proc _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec,"xr",discard,_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	.globl	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec # -- Begin function _ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	.p2align	4
_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec: # @_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
.seh_proc _ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movb	%cl, 7(%rsp)
	movzbl	7(%rsp), %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev,"xr",discard,_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	.globl	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev # -- Begin function _ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	.p2align	4
_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev: # @_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
# %bb.0:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	retq
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii,"xr",discard,_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	.globl	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii # -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	.p2align	4
_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii: # @_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
.seh_proc _ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movl	%ecx, 4(%rsp)
	movl	%edx, (%rsp)
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei,"xr",discard,_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	.globl	_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei # -- Begin function _ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	.p2align	4
_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei: # @_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
.seh_proc _ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movl	%ecx, 52(%rsp)
	movl	52(%rsp), %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movl	%eax, %edx
	callq	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	testb	$1, %al
	jne	.LBB164_1
	jmp	.LBB164_2
.LBB164_1:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	xorl	$-1, %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB164_3
.LBB164_2:
	movl	52(%rsp), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
.LBB164_3:
	movl	44(%rsp), %eax                  # 4-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE2eqEcc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE2eqEcc,"xr",discard,_ZNSt3__111char_traitsIcE2eqEcc
	.globl	_ZNSt3__111char_traitsIcE2eqEcc # -- Begin function _ZNSt3__111char_traitsIcE2eqEcc
	.p2align	4
_ZNSt3__111char_traitsIcE2eqEcc:        # @_ZNSt3__111char_traitsIcE2eqEcc
.seh_proc _ZNSt3__111char_traitsIcE2eqEcc
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movb	%cl, 7(%rsp)
	movb	%dl, 6(%rsp)
	movsbl	7(%rsp), %eax
	movsbl	6(%rsp), %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei,"xr",discard,_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	.globl	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei # -- Begin function _ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	.p2align	4
_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei: # @_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
.seh_proc _ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movl	%ecx, 4(%rsp)
	movl	4(%rsp), %eax
                                        # kill: def $al killed $al killed $eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	xorl	%r8d, %r8d
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEyc
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB168_1
	jmp	.LBB168_2
.LBB168_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB168_3
.LBB168_2:
	movl	$23, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB168_3
.LBB168_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB169_1
	jmp	.LBB169_2
.LBB169_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB169_3
.LBB169_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB169_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_,"xr",discard,_ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
	.globl	_ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_ # -- Begin function _ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
	.p2align	4
_ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_: # @_ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
.seh_proc _ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.p2align	4
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
.Lfunc_begin20:
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 104(%rsp)
	movb	%dl, 103(%rsp)
	movq	104(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rdx
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB171_4
# %bb.1:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, %edx
	movq	(%rcx), %rax
	movq	104(%rax), %rax
.Ltmp257:                               # EH_LABEL
	callq	*%rax
.Ltmp258:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB171_2
.LBB171_2:
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB171_6
.LBB171_3:
.Ltmp259:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	jmp	.LBB171_7
.LBB171_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	103(%rsp), %al
	movb	%al, 43(%rsp)                   # 1-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movb	43(%rsp), %dl                   # 1-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	%dl, (%rax)
.Ltmp255:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.Ltmp256:                               # EH_LABEL
	jmp	.LBB171_5
.LBB171_5:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
.LBB171_6:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	movl	116(%rsp), %eax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB171_7:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end20:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table171:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp257-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp257
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp256-.Ltmp257              #   Call between .Ltmp257 and .Ltmp256
	.uleb128 .Ltmp259-.Lfunc_begin20        #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end20-.Ltmp256          #   Call between .Ltmp256 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	shrq	%rax
	shlq	%rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
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
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	(%rax), %al
	shrb	%al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_,"xr",discard,_ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
	.globl	_ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_ # -- Begin function _ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
	.p2align	4
_ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_: # @_ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
.seh_proc _ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
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
	callq	_ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
	testb	$1, %al
	jne	.LBB175_1
	jmp	.LBB175_2
.LBB175_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB175_3
.LBB175_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB175_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_,"xr",discard,_ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
	.globl	_ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_ # -- Begin function _ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
	.p2align	4
_ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_: # @_ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
.seh_proc _ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
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
	.def	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
	.globl	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev: # @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
.seh_proc _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
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
	.def	_ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_,"xr",discard,_ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
	.globl	_ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_ # -- Begin function _ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
	.p2align	4
_ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_: # @_ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
.seh_proc _ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
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
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	.p2align	4
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movl	%edx, 4(%rsp)
	movq	8(%rsp), %rax
	movl	4(%rsp), %edx
	movq	48(%rax), %rcx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 48(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"xr",discard,_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.globl	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev # -- Begin function _ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.p2align	4
_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev: # @_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
.Lfunc_begin21:
.seh_proc _ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
.Ltmp260:                               # EH_LABEL
	callq	_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
.Ltmp261:                               # EH_LABEL
	jmp	.LBB180_1
.LBB180_1:
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB180_2:
.Ltmp262:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end21:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"xr",discard,_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table180:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp260-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin21        #     jumps to .Ltmp262
	.byte	1                               #   On action: 1
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"xr",discard,_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_,"xr",discard,_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_
	.globl	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_ # -- Begin function _ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_: # @_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_
.seh_proc _ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EC2B9nqe220103ES5_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv,"xr",discard,_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
	.globl	_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv # -- Begin function _ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
	.p2align	4
_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv: # @_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
.seh_proc _ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	2, 0x0                          # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev
.LCPI183_0:
	.long	0x3f800000                      # float 1
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEEC2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$16, %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	$0, 24(%rax)
	movss	.LCPI183_0(%rip), %xmm0         # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, 32(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv,"xr",discard,_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv
	.globl	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv # -- Begin function _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv
	.p2align	4
_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv: # @_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv
.seh_proc _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEC2B9nqe220103ILb1EvEEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movq	$0, (%rcx)
	addq	$8, %rcx
	callq	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev
	.globl	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev: # @_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev
.seh_proc _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103Ev
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
	.def	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev
	.globl	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev: # @_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev
.seh_proc _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEC2B9nqe220103Ev
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
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEED2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	16(%rcx), %rdx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB188_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%rsp)
	je	.LBB188_3
# %bb.2:                                #   in Loop: Header=BB188_1 Depth=1
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
	movq	48(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB188_1
.LBB188_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev: # @_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEED2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
.Lfunc_begin22:
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
.Ltmp263:                               # EH_LABEL
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
.Ltmp264:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB190_1
.LBB190_1:
.Ltmp265:                               # EH_LABEL
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_
.Ltmp266:                               # EH_LABEL
	jmp	.LBB190_2
.LBB190_2:
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_
	movq	%rax, %rcx
.Ltmp267:                               # EH_LABEL
	callq	_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_
.Ltmp268:                               # EH_LABEL
	jmp	.LBB190_3
.LBB190_3:
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB190_4:
.Ltmp269:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end22:
	.seh_handlerdata
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
	.seh_endproc
	.section	.xdata$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table190:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp263-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp268-.Ltmp263              #   Call between .Ltmp263 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin22        #     jumps to .Ltmp269
	.byte	1                               #   On action: 1
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
                                        # -- End function
	.def	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev,"xr",discard,_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
	.globl	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev # -- Begin function _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
	.p2align	4
_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev: # @_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
.seh_proc _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$16, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev,"xr",discard,_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	.globl	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev # -- Begin function _ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	.p2align	4
_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev: # @_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
.seh_proc _ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$16, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_
	.globl	_ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_: # @_ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_
.seh_proc _ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y
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
	callq	_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_
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
	.def	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev,"xr",discard,_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev
	.globl	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev # -- Begin function _ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev
	.p2align	4
_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev: # @_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev
.seh_proc _ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvED2B9nqe220103Ev
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
	.def	_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y,"xr",discard,_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y
	.globl	_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y # -- Begin function _ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y
	.p2align	4
_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y: # @_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y
.seh_proc _ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	imulq	$24, 56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB201_1
	jmp	.LBB201_2
.LBB201_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB201_3
.LBB201_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB201_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_,"xr",discard,_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_
	.globl	_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_ # -- Begin function _ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_
	.p2align	4
_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_: # @_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_
.seh_proc _ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_
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
	.def	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn,"xr",discard,_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn
	.globl	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn # -- Begin function _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn
	.p2align	4
_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn: # @_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn
.seh_proc _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	$0, (%rax)
	cmpq	$0, 48(%rsp)
	je	.LBB203_2
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movq	48(%rsp), %rdx
	callq	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_
	nop
.LBB203_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_,"xr",discard,_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_
	.globl	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_ # -- Begin function _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_
	.p2align	4
_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_: # @_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_
.seh_proc _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	(%rax), %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y
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
	callq	_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev,"xr",discard,_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev
	.globl	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev # -- Begin function _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev
	.p2align	4
_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev: # @_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev
.seh_proc _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev
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
	.def	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev,"xr",discard,_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	.globl	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev # -- Begin function _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	.p2align	4
_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev: # @_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
.seh_proc _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y,"xr",discard,_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y
	.globl	_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y # -- Begin function _ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y
	.p2align	4
_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y: # @_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y
.seh_proc _ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB209_1
	jmp	.LBB209_2
.LBB209_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB209_3
.LBB209_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB209_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_,"xr",discard,_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_
	.globl	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_ # -- Begin function _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_
	.p2align	4
_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_: # @_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_
.seh_proc _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	cmpq	$0, 48(%rsp)
	je	.LBB210_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx
	callq	_ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_
	nop
.LBB210_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_,"xr",discard,_ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_
	.globl	_ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_ # -- Begin function _ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_
	.p2align	4
_ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_: # @_ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_
.seh_proc _ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB211_2
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZN6apollo3mir6TyDataD2Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZdlPv
	nop
.LBB211_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir6TyDataD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir6TyDataD2Ev,"xr",discard,_ZN6apollo3mir6TyDataD2Ev
	.globl	_ZN6apollo3mir6TyDataD2Ev       # -- Begin function _ZN6apollo3mir6TyDataD2Ev
	.p2align	4
_ZN6apollo3mir6TyDataD2Ev:              # @_ZN6apollo3mir6TyDataD2Ev
.seh_proc _ZN6apollo3mir6TyDataD2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
.Lfunc_begin23:
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp270:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
.Ltmp271:                               # EH_LABEL
	jmp	.LBB213_1
.LBB213_1:
.Ltmp272:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp273:                               # EH_LABEL
	jmp	.LBB213_2
.LBB213_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB213_3:
.Ltmp274:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end23:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table213:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp270-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp273-.Ltmp270              #   Call between .Ltmp270 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin23        #     jumps to .Ltmp274
	.byte	1                               #   On action: 1
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_ # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
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
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB215_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y
	nop
.LBB215_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin24:
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp275:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp276:                               # EH_LABEL
	jmp	.LBB217_1
.LBB217_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB217_2:
.Ltmp277:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end24:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table217:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp275-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin24        #     jumps to .Ltmp277
	.byte	1                               #   On action: 1
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y
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
	callq	_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_ # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
.Lfunc_begin25:
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
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
.LBB220_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB220_4
# %bb.2:                                #   in Loop: Header=BB220_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp278:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
.Ltmp279:                               # EH_LABEL
	jmp	.LBB220_3
.LBB220_3:                              #   in Loop: Header=BB220_1 Depth=1
	jmp	.LBB220_1
.LBB220_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB220_5:
.Ltmp280:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end25:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table220:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp278-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin25        #     jumps to .Ltmp280
	.byte	1                               #   On action: 1
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin26:
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp281:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp282:                               # EH_LABEL
	jmp	.LBB221_1
.LBB221_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB221_2:
.Ltmp283:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end26:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table221:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp281-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin26        #     jumps to .Ltmp283
	.byte	1                               #   On action: 1
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
	.globl	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_: # @_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
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
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_ # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_
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
	.def	_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y,"xr",discard,_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y
	.globl	_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y # -- Begin function _ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y
	.p2align	4
_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y: # @_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y
.seh_proc _ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB228_1
	jmp	.LBB228_2
.LBB228_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB228_3
.LBB228_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB228_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir6TyDataC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir6TyDataC2Ev,"xr",discard,_ZN6apollo3mir6TyDataC2Ev
	.globl	_ZN6apollo3mir6TyDataC2Ev       # -- Begin function _ZN6apollo3mir6TyDataC2Ev
	.p2align	4
_ZN6apollo3mir6TyDataC2Ev:              # @_ZN6apollo3mir6TyDataC2Ev
.seh_proc _ZN6apollo3mir6TyDataC2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movb	$3, 1(%rcx)
	movb	$3, 2(%rcx)
	movb	$1, 3(%rcx)
	movb	$0, 4(%rcx)
	movl	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	addq	$32, %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$0, 56(%rcx)
	addq	$64, %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	$0, 88(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_,"xr",discard,_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_
	.globl	_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_ # -- Begin function _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_
	.p2align	4
_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_: # @_ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_
.seh_proc _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEC2B9nqe220103ILb1EvEEPS3_
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
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103Ev
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
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %r9
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE,"xr",discard,_ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE
	.globl	_ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE # -- Begin function _ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE
	.p2align	4
_ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE: # @_ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE
.seh_proc _ZNSt3__14pairINS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103INS_15__hash_iteratorISA_EEbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEONS0_ISH_SI_EE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx
	movb	8(%rcx), %cl
	andb	$1, %cl
	movb	%cl, 8(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_,"xr",discard,_ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_
	.globl	_ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_ # -- Begin function _ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_
	.p2align	4
_ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_: # @_ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_
.seh_proc _ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rax
	movb	71(%rsp), %dl
	movq	56(%rsp), %r8
	movq	48(%rsp), %r9
	movq	%rax, 32(%rsp)
	callq	_ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_,"xr",discard,_ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_
	.globl	_ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_ # -- Begin function _ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_
	.p2align	4
_ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_: # @_ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_
.seh_proc _ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax
	movq	%rcx, 64(%rsp)
	movb	%dl, 63(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	112(%rsp), %r8
	movq	112(%rsp), %r9
	leaq	48(%rsp), %rdx
	callq	_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	2, 0x0                          # -- Begin function _ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
.LCPI236_0:
	.long	0x5f000000                      # float 9.22337203E+18
	.section	.text$_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_,"xr",discard,_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
	.globl	_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
	.p2align	4
_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_: # @_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
.Lfunc_begin27:
.seh_proc _ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$376, %rsp                      # imm = 0x178
	.seh_stackalloc 376
	.seh_endprologue
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	%rcx, 368(%rsp)
	movq	%rdx, 360(%rsp)
	movq	%r8, 352(%rsp)
	movq	%r9, 344(%rsp)
	movq	360(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev
	movq	%rax, %rcx
	movq	352(%rsp), %rax
	movq	(%rax), %rdx
	callq	_ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 336(%rsp)
	callq	_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
	movq	%rax, 328(%rsp)
	movb	$0, 327(%rsp)
	cmpq	$0, 328(%rsp)
	je	.LBB236_15
# %bb.1:
	movq	336(%rsp), %rcx
	movq	328(%rsp), %rdx
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 304(%rsp)
	movq	304(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	movq	(%rax), %rax
	movq	%rax, 312(%rsp)
	cmpq	$0, 312(%rsp)
	je	.LBB236_14
# %bb.2:
	movq	312(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 312(%rsp)
.LBB236_3:                              # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, 312(%rsp)
	movb	%al, 207(%rsp)                  # 1-byte Spill
	je	.LBB236_7
# %bb.4:                                #   in Loop: Header=BB236_3 Depth=1
	movq	312(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	336(%rsp), %rcx
	movb	%al, 206(%rsp)                  # 1-byte Spill
	je	.LBB236_6
# %bb.5:                                #   in Loop: Header=BB236_3 Depth=1
	movq	312(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	movq	%rax, %rcx
	movq	328(%rsp), %rdx
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
	cmpq	304(%rsp), %rax
	sete	%al
	movb	%al, 206(%rsp)                  # 1-byte Spill
.LBB236_6:                              #   in Loop: Header=BB236_3 Depth=1
	movb	206(%rsp), %al                  # 1-byte Reload
	movb	%al, 207(%rsp)                  # 1-byte Spill
.LBB236_7:                              #   in Loop: Header=BB236_3 Depth=1
	movb	207(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB236_8
	jmp	.LBB236_13
.LBB236_8:                              #   in Loop: Header=BB236_3 Depth=1
	movq	312(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	cmpq	336(%rsp), %rax
	jne	.LBB236_11
# %bb.9:                                #   in Loop: Header=BB236_3 Depth=1
	movq	224(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movq	312(%rsp), %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	(%rax), %rdx
	movq	352(%rsp), %rax
	movq	(%rax), %r8
	callq	_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_
	testb	$1, %al
	jne	.LBB236_10
	jmp	.LBB236_11
.LBB236_10:
	jmp	.LBB236_32
.LBB236_11:                             #   in Loop: Header=BB236_3 Depth=1
	jmp	.LBB236_12
.LBB236_12:                             #   in Loop: Header=BB236_3 Depth=1
	movq	312(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 312(%rsp)
	jmp	.LBB236_3
.LBB236_13:
	jmp	.LBB236_14
.LBB236_14:
	jmp	.LBB236_15
.LBB236_15:
	movq	224(%rsp), %rdx                 # 8-byte Reload
	movq	336(%rsp), %r8
	movq	344(%rsp), %r9
	leaq	280(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
	movq	224(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	(%rax), %rax
	incq	%rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 184(%rsp)                # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, 188(%rsp)                # 4-byte Spill
	js	.LBB236_35
# %bb.34:
	movss	184(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 188(%rsp)                # 4-byte Spill
.LBB236_35:
	movss	188(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 172(%rsp)                # 4-byte Spill
	movq	328(%rsp), %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 176(%rsp)                # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, 180(%rsp)                # 4-byte Spill
	js	.LBB236_37
# %bb.36:
	movss	176(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 180(%rsp)                # 4-byte Spill
.LBB236_37:
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movss	180(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 168(%rsp)                # 4-byte Spill
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
	movss	168(%rsp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	172(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB236_22
# %bb.16:
	movq	328(%rsp), %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
.Ltmp284:                               # EH_LABEL
	callq	_ZNSt3__116__is_hash_power2B9nqe220103Ey
.Ltmp285:                               # EH_LABEL
	movb	%al, 167(%rsp)                  # 1-byte Spill
	jmp	.LBB236_17
.LBB236_17:
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	movb	167(%rsp), %dl                  # 1-byte Reload
	notb	%dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
                                        # kill: def $edx killed $edx killed $rdx
	andl	$1, %edx
                                        # kill: def $rdx killed $edx
	addq	%rdx, %rax
	movq	%rax, 272(%rsp)
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	(%rax), %rax
	incq	%rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 144(%rsp)                # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, 148(%rsp)                # 4-byte Spill
	js	.LBB236_39
# %bb.38:
	movss	144(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 148(%rsp)                # 4-byte Spill
.LBB236_39:
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movss	148(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 132(%rsp)                # 4-byte Spill
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
	movss	132(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	callq	_ZNSt3__16__math4ceilB9nqe220103Ef
	movaps	%xmm0, %xmm1
	cvttss2si	%xmm1, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	movss	.LCPI236_0(%rip), %xmm1         # xmm1 = [9.22337203E+18,0.0E+0,0.0E+0,0.0E+0]
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
	andq	%rdx, %rcx
	orq	%rcx, %rax
	movq	%rax, 248(%rsp)
.Ltmp286:                               # EH_LABEL
	leaq	272(%rsp), %rcx
	leaq	248(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
.Ltmp287:                               # EH_LABEL
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB236_18
.LBB236_18:
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rdx
.Ltmp288:                               # EH_LABEL
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey
.Ltmp289:                               # EH_LABEL
	jmp	.LBB236_19
.LBB236_19:
	movq	224(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
	movq	%rax, 328(%rsp)
	movq	336(%rsp), %rcx
	movq	328(%rsp), %rdx
.Ltmp290:                               # EH_LABEL
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
.Ltmp291:                               # EH_LABEL
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB236_20
.LBB236_20:
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 304(%rsp)
	jmp	.LBB236_22
.LBB236_21:
.Ltmp300:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 264(%rsp)
	movl	%eax, 260(%rsp)
	leaq	280(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
	jmp	.LBB236_33
.LBB236_22:
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rdx
.Ltmp292:                               # EH_LABEL
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
.Ltmp293:                               # EH_LABEL
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB236_23
.LBB236_23:
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 240(%rsp)
	cmpq	$0, 240(%rsp)
	jne	.LBB236_30
# %bb.24:
	movq	224(%rsp), %rcx                 # 8-byte Reload
	addq	$16, %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
	movq	%rax, 240(%rsp)
	movq	240(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	280(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, (%rax)
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	240(%rsp), %rax
	movq	%rdx, (%rax)
	movq	240(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	304(%rsp), %rdx
.Ltmp294:                               # EH_LABEL
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
.Ltmp295:                               # EH_LABEL
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB236_25
.LBB236_25:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	leaq	280(%rsp), %rcx
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
	cmpq	$0, (%rax)
	je	.LBB236_29
# %bb.26:
	leaq	280(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	224(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
	movq	(%rax), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	movq	%rax, %rcx
	movq	328(%rsp), %rdx
.Ltmp296:                               # EH_LABEL
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
.Ltmp297:                               # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB236_27
.LBB236_27:
.Ltmp298:                               # EH_LABEL
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
.Ltmp299:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB236_28
.LBB236_28:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB236_29:
	jmp	.LBB236_31
.LBB236_30:
	movq	240(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	280(%rsp), %rcx
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	leaq	280(%rsp), %rcx
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
	movq	%rax, %rcx
	movq	240(%rsp), %rax
	movq	%rcx, (%rax)
.LBB236_31:
	leaq	280(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 312(%rsp)
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movb	$1, 327(%rsp)
	leaq	280(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
.LBB236_32:
	movq	312(%rsp), %rdx
	leaq	232(%rsp), %rcx
	callq	_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE
	movq	208(%rsp), %rcx                 # 8-byte Reload
	leaq	232(%rsp), %rdx
	leaq	327(%rsp), %r8
	callq	_ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_
	movq	216(%rsp), %rax                 # 8-byte Reload
	.seh_startepilogue
	addq	$376, %rsp                      # imm = 0x178
	.seh_endepilogue
	retq
.LBB236_33:
	movq	264(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end27:
	.seh_handlerdata
	.section	.text$_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_,"xr",discard,_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
	.seh_endproc
	.section	.xdata$_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table236:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Lfunc_begin27-.Lfunc_begin27  # >> Call Site 1 <<
	.uleb128 .Ltmp284-.Lfunc_begin27        #   Call between .Lfunc_begin27 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Ltmp299-.Ltmp284              #   Call between .Ltmp284 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin27        #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin27        # >> Call Site 3 <<
	.uleb128 .Lfunc_end27-.Ltmp299          #   Call between .Ltmp299 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.p2align	2, 0x0
	.section	.text$_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_,"xr",discard,_ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev
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
	.def	_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev,"xr",discard,_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
	.globl	_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev # -- Begin function _ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
	.p2align	4
_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev: # @_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
.seh_proc _ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__constrain_hashB9nqe220103Eyy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__constrain_hashB9nqe220103Eyy,"xr",discard,_ZNSt3__116__constrain_hashB9nqe220103Eyy
	.globl	_ZNSt3__116__constrain_hashB9nqe220103Eyy # -- Begin function _ZNSt3__116__constrain_hashB9nqe220103Eyy
	.p2align	4
_ZNSt3__116__constrain_hashB9nqe220103Eyy: # @_ZNSt3__116__constrain_hashB9nqe220103Eyy
.seh_proc _ZNSt3__116__constrain_hashB9nqe220103Eyy
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB239_2
# %bb.1:
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB239_6
.LBB239_2:
	movq	24(%rsp), %rax
	cmpq	16(%rsp), %rax
	jae	.LBB239_4
# %bb.3:
	movq	24(%rsp), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	jmp	.LBB239_5
.LBB239_4:
	movq	24(%rsp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	16(%rsp)
	movq	%rdx, (%rsp)                    # 8-byte Spill
.LBB239_5:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.LBB239_6:
	movq	8(%rsp), %rax                   # 8-byte Reload
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	.globl	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey # -- Begin function _ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey: # @_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
.seh_proc _ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
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
	.def	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev,"xr",discard,_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	.globl	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev # -- Begin function _ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	.p2align	4
_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev: # @_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
.seh_proc _ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
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
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$32, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_,"xr",discard,_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_
	.globl	_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_ # -- Begin function _ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_
	.p2align	4
_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_: # @_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_
.seh_proc _ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNK6apollo3mir6TyData18structurally_equalERKS1_
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_ # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
.Lfunc_begin28:
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	%r8, 128(%rsp)
	movq	%r9, 120(%rsp)
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev
	movq	%rax, 112(%rsp)
	movb	$0, 111(%rsp)
	movq	112(%rsp), %rcx
	movl	$1, %edx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rdx
	xorl	%eax, %eax
	movb	%al, %r8b
	leaq	88(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev
	movq	%rax, %rcx
	movq	112(%rsp), %r8
	movq	120(%rsp), %r9
.Ltmp301:                               # EH_LABEL
	leaq	128(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
.Ltmp302:                               # EH_LABEL
	jmp	.LBB244_1
.LBB244_1:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev
	movb	$1, 8(%rax)
	movb	$1, 111(%rsp)
	testb	$1, 111(%rsp)
	jne	.LBB244_4
	jmp	.LBB244_3
.LBB244_2:
.Ltmp303:                               # EH_LABEL
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 80(%rsp)
	movl	%eax, 76(%rsp)
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
	jmp	.LBB244_5
.LBB244_3:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
.LBB244_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB244_5:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end28:
	.seh_handlerdata
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table244:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Lfunc_begin28-.Lfunc_begin28  # >> Call Site 1 <<
	.uleb128 .Ltmp301-.Lfunc_begin28        #   Call between .Lfunc_begin28 and .Ltmp301
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin28        #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin28        # >> Call Site 3 <<
	.uleb128 .Lfunc_end28-.Ltmp302          #   Call between .Ltmp302 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$32, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__is_hash_power2B9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__is_hash_power2B9nqe220103Ey,"xr",discard,_ZNSt3__116__is_hash_power2B9nqe220103Ey
	.globl	_ZNSt3__116__is_hash_power2B9nqe220103Ey # -- Begin function _ZNSt3__116__is_hash_power2B9nqe220103Ey
	.p2align	4
_ZNSt3__116__is_hash_power2B9nqe220103Ey: # @_ZNSt3__116__is_hash_power2B9nqe220103Ey
.seh_proc _ZNSt3__116__is_hash_power2B9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$2, 8(%rsp)
	movb	%al, 7(%rsp)                    # 1-byte Spill
	jbe	.LBB248_2
# %bb.1:
	movq	8(%rsp), %rax
	movq	8(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	setne	%al
	xorb	$-1, %al
	movb	%al, 7(%rsp)                    # 1-byte Spill
.LBB248_2:
	movb	7(%rsp), %al                    # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16__math4ceilB9nqe220103Ef;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16__math4ceilB9nqe220103Ef,"xr",discard,_ZNSt3__16__math4ceilB9nqe220103Ef
	.globl	_ZNSt3__16__math4ceilB9nqe220103Ef # -- Begin function _ZNSt3__16__math4ceilB9nqe220103Ef
	.p2align	4
_ZNSt3__16__math4ceilB9nqe220103Ef:     # @_ZNSt3__16__math4ceilB9nqe220103Ef
.seh_proc _ZNSt3__16__math4ceilB9nqe220103Ef
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movss	%xmm0, 36(%rsp)
	movss	36(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	ceilf
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev,"xr",discard,_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
	.globl	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev # -- Begin function _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
	.p2align	4
_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev: # @_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
.seh_proc _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev,"xr",discard,_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
	.globl	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev # -- Begin function _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
	.p2align	4
_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev: # @_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
.seh_proc _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
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
	.def	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev,"xr",discard,_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
	.globl	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev # -- Begin function _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
	.p2align	4
_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev: # @_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
.seh_proc _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
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
	.def	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev: # @_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	$0, (%rax)
	movq	(%rsp), %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev: # @_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEED2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE,"xr",discard,_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE
	.globl	_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE # -- Begin function _ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE
	.p2align	4
_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE: # @_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE
.seh_proc _ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE
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
	.def	_ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_,"xr",discard,_ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_
	.globl	_ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_ # -- Begin function _ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_
	.p2align	4
_ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_: # @_ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_
.seh_proc _ZNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEbEC2B9nqe220103ISB_RbTnNS_9enable_ifIXclsr25__check_pair_constructionISB_bEE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSG_OSH_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movb	(%rcx), %cl
	andb	$1, %cl
	movb	%cl, 8(%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev,"xr",discard,_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	.globl	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev # -- Begin function _ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	.p2align	4
_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev: # @_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
.seh_proc _ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$8, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev: # @_ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b,"xr",discard,_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b
	.globl	_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b # -- Begin function _ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b
	.p2align	4
_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b: # @_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b
.seh_proc _ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEC2B9nqe220103ERSA_b
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	andb	$1, %r8b
	movb	%r8b, 7(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movb	7(%rsp), %cl
	andb	$1, %cl
	movb	%cl, 8(%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE,"xr",discard,_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE
	.globl	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE # -- Begin function _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE
	.p2align	4
_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE: # @_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE
.seh_proc _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEC2B9nqe220103ILb1EvEEPS8_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, (%rcx)
	movq	32(%rsp), %rax
	movq	(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	8(%rax), %rax
	movq	%rax, 16(%rcx)
	addq	$17, %rcx
	callq	_ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	40(%rsp), %r9
	callq	_ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev
	.globl	_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev: # @_ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev
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
	.def	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev: # @_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$8, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB265_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB265_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	movl	$24, %ecx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	imulq	$24, 56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB267_1
	jmp	.LBB267_2
.LBB267_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB267_3
.LBB267_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB267_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev,"xr",discard,_ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev
	.globl	_ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev # -- Begin function _ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev
	.p2align	4
_ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev: # @_ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev
.seh_proc _ZNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEELb0EEC2Ev
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	addq	$7, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.LBB268_1:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movb	$0, (%rax)
	addq	$1, %rax
	cmpq	%rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jne	.LBB268_1
# %bb.2:
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	(%rax), %rdx
	movq	48(%rsp), %r8
	movq	40(%rsp), %r9
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_,"xr",discard,_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_
	.globl	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_ # -- Begin function _ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_
	.p2align	4
_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_: # @_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_
.seh_proc _ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvEC2B9nqe220103INS_9allocatorIS7_EEJRKS5_EEEyRT_DpOT0_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 56(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	56(%rsp), %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_,"xr",discard,_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_
	.globl	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_ # -- Begin function _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_
	.p2align	4
_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_: # @_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_
.seh_proc _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPSA_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
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
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	2, 0x0                          # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy
.LCPI275_0:
	.long	0x5f000000                      # float 9.22337203E+18
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	cmpq	$1, 88(%rsp)
	jne	.LBB275_2
# %bb.1:
	movq	$2, 88(%rsp)
	jmp	.LBB275_5
.LBB275_2:
	movq	88(%rsp), %rax
	movq	88(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB275_4
# %bb.3:
	movq	88(%rsp), %rcx
	callq	_ZNSt3__112__next_primeEy
	movq	%rax, 88(%rsp)
.LBB275_4:
	jmp	.LBB275_5
.LBB275_5:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
	movq	%rax, 80(%rsp)
	movq	88(%rsp), %rax
	cmpq	80(%rsp), %rax
	jbe	.LBB275_7
# %bb.6:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy
	jmp	.LBB275_15
.LBB275_7:
	movq	88(%rsp), %rax
	cmpq	80(%rsp), %rax
	jae	.LBB275_14
# %bb.8:
	movq	80(%rsp), %rcx
	callq	_ZNSt3__116__is_hash_power2B9nqe220103Ey
	testb	$1, %al
	jne	.LBB275_9
	jmp	.LBB275_10
.LBB275_9:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 56(%rsp)                 # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, 60(%rsp)                 # 4-byte Spill
	js	.LBB275_17
# %bb.16:
	movss	56(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 60(%rsp)                 # 4-byte Spill
.LBB275_17:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movss	60(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)                 # 4-byte Spill
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
	movss	44(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	callq	_ZNSt3__16__math4ceilB9nqe220103Ef
	movaps	%xmm0, %xmm1
	cvttss2si	%xmm1, %rcx
	movq	%rcx, %rdx
	sarq	$63, %rdx
	movss	.LCPI275_0(%rip), %xmm1         # xmm1 = [9.22337203E+18,0.0E+0,0.0E+0,0.0E+0]
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rax
	andq	%rdx, %rax
	orq	%rax, %rcx
	callq	_ZNSt3__116__next_hash_pow2B9nqe220103Ey
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB275_11
.LBB275_10:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 36(%rsp)                 # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, 40(%rsp)                 # 4-byte Spill
	js	.LBB275_19
# %bb.18:
	movss	36(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 40(%rsp)                 # 4-byte Spill
.LBB275_19:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movss	40(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 32(%rsp)                 # 4-byte Spill
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
	movss	32(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	callq	_ZNSt3__16__math4ceilB9nqe220103Ef
	movaps	%xmm0, %xmm1
	cvttss2si	%xmm1, %rcx
	movq	%rcx, %rdx
	sarq	$63, %rdx
	movss	.LCPI275_0(%rip), %xmm1         # xmm1 = [9.22337203E+18,0.0E+0,0.0E+0,0.0E+0]
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rax
	andq	%rdx, %rax
	orq	%rax, %rcx
	callq	_ZNSt3__112__next_primeEy
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.LBB275_11:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	leaq	88(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 88(%rsp)
	movq	88(%rsp), %rax
	cmpq	80(%rsp), %rax
	jae	.LBB275_13
# %bb.12:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy
.LBB275_13:
	jmp	.LBB275_14
.LBB275_14:
	jmp	.LBB275_15
.LBB275_15:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev
	movq	%rax, 128(%rsp)
	cmpq	$0, 136(%rsp)
	jbe	.LBB276_2
# %bb.1:
	movq	128(%rsp), %rcx
	movq	136(%rsp), %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB276_3
.LBB276_2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB276_3
.LBB276_3:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	callq	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	136(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	cmpq	$0, 136(%rsp)
	jne	.LBB276_5
# %bb.4:
	jmp	.LBB276_21
.LBB276_5:
	movq	$0, 120(%rsp)
.LBB276_6:                              # =>This Inner Loop Header: Depth=1
	movq	120(%rsp), %rax
	cmpq	136(%rsp), %rax
	jae	.LBB276_9
# %bb.7:                                #   in Loop: Header=BB276_6 Depth=1
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	movq	$0, (%rax)
# %bb.8:                                #   in Loop: Header=BB276_6 Depth=1
	movq	120(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB276_6
.LBB276_9:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	$16, %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jne	.LBB276_11
# %bb.10:
	jmp	.LBB276_21
.LBB276_11:
	movq	104(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	movq	%rax, %rcx
	movq	136(%rsp), %rdx
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 96(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	movq	96(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	104(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)
.LBB276_12:                             # =>This Inner Loop Header: Depth=1
	cmpq	$0, 104(%rsp)
	je	.LBB276_21
# %bb.13:                               #   in Loop: Header=BB276_12 Depth=1
	movq	104(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	movq	%rax, %rcx
	movq	136(%rsp), %rdx
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rax
	cmpq	88(%rsp), %rax
	jne	.LBB276_15
# %bb.14:                               #   in Loop: Header=BB276_12 Depth=1
	movq	104(%rsp), %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB276_19
.LBB276_15:                             #   in Loop: Header=BB276_12 Depth=1
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	96(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	cmpq	$0, (%rax)
	jne	.LBB276_17
# %bb.16:                               #   in Loop: Header=BB276_12 Depth=1
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	movq	104(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB276_18
.LBB276_17:                             #   in Loop: Header=BB276_12 Depth=1
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	movq	(%rax), %rdx
	movq	112(%rsp), %rax
	movq	%rdx, (%rax)
	movq	96(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	80(%rsp), %rax
	movq	%rdx, (%rax)
	movq	104(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rcx, (%rax)
.LBB276_18:                             #   in Loop: Header=BB276_12 Depth=1
	jmp	.LBB276_19
.LBB276_19:                             #   in Loop: Header=BB276_12 Depth=1
	jmp	.LBB276_20
.LBB276_20:                             #   in Loop: Header=BB276_12 Depth=1
	movq	112(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)
	jmp	.LBB276_12
.LBB276_21:
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__next_hash_pow2B9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__next_hash_pow2B9nqe220103Ey,"xr",discard,_ZNSt3__116__next_hash_pow2B9nqe220103Ey
	.globl	_ZNSt3__116__next_hash_pow2B9nqe220103Ey # -- Begin function _ZNSt3__116__next_hash_pow2B9nqe220103Ey
	.p2align	4
_ZNSt3__116__next_hash_pow2B9nqe220103Ey: # @_ZNSt3__116__next_hash_pow2B9nqe220103Ey
.seh_proc _ZNSt3__116__next_hash_pow2B9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	cmpq	$2, 48(%rsp)
	jae	.LBB277_2
# %bb.1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB277_3
.LBB277_2:
	movq	48(%rsp), %rcx
	subq	$1, %rcx
	callq	_ZNSt3__113__countl_zeroB9nqe220103IyEEiT_
	movl	%eax, %ecx
	movl	$64, %eax
	subl	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB277_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev,"xr",discard,_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	.globl	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev # -- Begin function _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	.p2align	4
_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev: # @_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
.seh_proc _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	addq	$8, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_,"xr",discard,_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_
	.globl	_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_ # -- Begin function _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_
	.p2align	4
_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_: # @_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_
.seh_proc _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	cmpq	$0, 48(%rsp)
	je	.LBB279_2
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movq	48(%rsp), %rdx
	callq	_ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_
	nop
.LBB279_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB281_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB281_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy
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
	jne	.LBB283_1
	jmp	.LBB283_2
.LBB283_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB283_3
.LBB283_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB283_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__countl_zeroB9nqe220103IyEEiT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__countl_zeroB9nqe220103IyEEiT_,"xr",discard,_ZNSt3__113__countl_zeroB9nqe220103IyEEiT_
	.globl	_ZNSt3__113__countl_zeroB9nqe220103IyEEiT_ # -- Begin function _ZNSt3__113__countl_zeroB9nqe220103IyEEiT_
	.p2align	4
_ZNSt3__113__countl_zeroB9nqe220103IyEEiT_: # @_ZNSt3__113__countl_zeroB9nqe220103IyEEiT_
.seh_proc _ZNSt3__113__countl_zeroB9nqe220103IyEEiT_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rdx
                                        # implicit-def: $rax
	bsrq	%rdx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	$64, %ecx
	cmpq	$0, %rdx
	cmovel	%ecx, %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_,"xr",discard,_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_
	.globl	_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_ # -- Begin function _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_
	.p2align	4
_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_: # @_ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_
.seh_proc _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	cmpq	$0, 48(%rsp)
	je	.LBB285_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movq	48(%rsp), %rdx
	callq	_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
	nop
.LBB285_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_,"xr",discard,_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
	.globl	_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_ # -- Begin function _ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
	.p2align	4
_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_: # @_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
.Lfunc_begin29:
.seh_proc _ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	testb	$1, 8(%rax)
	je	.LBB286_3
# %bb.1:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp304:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_
.Ltmp305:                               # EH_LABEL
	jmp	.LBB286_2
.LBB286_2:
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_
.LBB286_3:
	cmpq	$0, 56(%rsp)
	je	.LBB286_5
# %bb.4:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	56(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y
	nop
.LBB286_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB286_6:
.Ltmp306:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end29:
	.seh_handlerdata
	.section	.text$_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_,"xr",discard,_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
	.seh_endproc
	.section	.xdata$_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table286:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp304-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin29        #     jumps to .Ltmp306
	.byte	1                               #   On action: 1
.Lcst_end29:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_,"xr",discard,_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
                                        # -- End function
	.def	_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE,"xr",discard,_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE
	.globl	_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE # -- Begin function _ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE
	.p2align	4
_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE: # @_ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE
.seh_proc _ZNSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103ERKNS_15__hash_iteratorIS9_EE
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
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_ # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 104(%rsp)
	movq	%rdx, 96(%rsp)
	movq	104(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
	movq	%rax, 88(%rsp)
	cmpq	$0, 88(%rsp)
	je	.LBB288_16
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	cmpq	$0, (%rax)
	je	.LBB288_16
# %bb.2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev
	movq	%rax, %rcx
	movq	96(%rsp), %rax
	movq	(%rax), %rdx
	callq	_ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rcx
	movq	88(%rsp), %rdx
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rdx
	callq	_ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	movq	(%rax), %rax
	movq	%rax, 64(%rsp)
	cmpq	$0, 64(%rsp)
	je	.LBB288_15
# %bb.3:
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 64(%rsp)
.LBB288_4:                              # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, 64(%rsp)
	movb	%al, 55(%rsp)                   # 1-byte Spill
	je	.LBB288_8
# %bb.5:                                #   in Loop: Header=BB288_4 Depth=1
	movq	64(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	80(%rsp), %rcx
	movb	%al, 54(%rsp)                   # 1-byte Spill
	je	.LBB288_7
# %bb.6:                                #   in Loop: Header=BB288_4 Depth=1
	movq	64(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	movq	%rax, %rcx
	movq	88(%rsp), %rdx
	callq	_ZNSt3__116__constrain_hashB9nqe220103Eyy
	cmpq	72(%rsp), %rax
	sete	%al
	movb	%al, 54(%rsp)                   # 1-byte Spill
.LBB288_7:                              #   in Loop: Header=BB288_4 Depth=1
	movb	54(%rsp), %al                   # 1-byte Reload
	movb	%al, 55(%rsp)                   # 1-byte Spill
.LBB288_8:                              #   in Loop: Header=BB288_4 Depth=1
	movb	55(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB288_9
	jmp	.LBB288_14
.LBB288_9:                              #   in Loop: Header=BB288_4 Depth=1
	movq	64(%rsp), %rcx
	callq	_ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	cmpq	80(%rsp), %rax
	jne	.LBB288_12
# %bb.10:                               #   in Loop: Header=BB288_4 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rdx
	movq	96(%rsp), %rax
	movq	(%rax), %r8
	callq	_ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_
	testb	$1, %al
	jne	.LBB288_11
	jmp	.LBB288_12
.LBB288_11:
	movq	64(%rsp), %rdx
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE
	jmp	.LBB288_17
.LBB288_12:                             #   in Loop: Header=BB288_4 Depth=1
	jmp	.LBB288_13
.LBB288_13:                             #   in Loop: Header=BB288_4 Depth=1
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB288_4
.LBB288_14:
	jmp	.LBB288_15
.LBB288_15:
	jmp	.LBB288_16
.LBB288_16:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv
	movq	%rax, 112(%rsp)
.LBB288_17:
	movq	112(%rsp), %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv,"xr",discard,_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv
	.globl	_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv # -- Begin function _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv
	.p2align	4
_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv: # @_ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv
.seh_proc _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	leaq	48(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__115__hash_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEC2B9nqe220103EPNS_16__hash_node_baseIS9_EE
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_,"xr",discard,_ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	.globl	_ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_ # -- Begin function _ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	.p2align	4
_ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_: # @_ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
.seh_proc _ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rsp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir6TyDataC2ERKS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir6TyDataC2ERKS1_,"xr",discard,_ZN6apollo3mir6TyDataC2ERKS1_
	.globl	_ZN6apollo3mir6TyDataC2ERKS1_   # -- Begin function _ZN6apollo3mir6TyDataC2ERKS1_
	.p2align	4
_ZN6apollo3mir6TyDataC2ERKS1_:          # @_ZN6apollo3mir6TyDataC2ERKS1_
.Lfunc_begin30:
.seh_proc _ZN6apollo3mir6TyDataC2ERKS1_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	addq	$32, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rdx
	addq	$32, %rdx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movl	56(%rax), %eax
	movl	%eax, 56(%rcx)
	addq	$64, %rcx
	movq	72(%rsp), %rdx
	addq	$64, %rdx
.Ltmp307:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_
.Ltmp308:                               # EH_LABEL
	jmp	.LBB291_1
.LBB291_1:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	72(%rsp), %rcx
	movl	88(%rcx), %ecx
	movl	%ecx, 88(%rax)
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB291_2:
.Ltmp309:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 64(%rsp)
	movl	%eax, 60(%rsp)
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEED2B9nqe220103Ev
# %bb.3:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end30:
	.seh_handlerdata
	.section	.text$_ZN6apollo3mir6TyDataC2ERKS1_,"xr",discard,_ZN6apollo3mir6TyDataC2ERKS1_
	.seh_endproc
	.section	.xdata$_ZN6apollo3mir6TyDataC2ERKS1_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table291:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Lfunc_begin30-.Lfunc_begin30  # >> Call Site 1 <<
	.uleb128 .Ltmp307-.Lfunc_begin30        #   Call between .Lfunc_begin30 and .Ltmp307
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin30        #     jumps to .Ltmp309
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin30        # >> Call Site 3 <<
	.uleb128 .Lfunc_end30-.Ltmp308          #   Call between .Ltmp308 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.p2align	2, 0x0
	.section	.text$_ZN6apollo3mir6TyDataC2ERKS1_,"xr",discard,_ZN6apollo3mir6TyDataC2ERKS1_
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_ # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEC2B9nqe220103ERKS8_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	56(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, (%rsp)
	movb	15(%rsp), %al
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
.Lfunc_begin31:
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 88(%rsp)
	movq	112(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	movq	64(%rsp), %rdx
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	cmpq	$0, 88(%rsp)
	jbe	.LBB294_5
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
.Ltmp310:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
.Ltmp311:                               # EH_LABEL
	jmp	.LBB294_2
.LBB294_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movq	88(%rsp), %r9
.Ltmp312:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
.Ltmp313:                               # EH_LABEL
	jmp	.LBB294_3
.LBB294_3:
	jmp	.LBB294_5
.LBB294_4:
.Ltmp314:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	jmp	.LBB294_6
.LBB294_5:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB294_6:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end31:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table294:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Lfunc_begin31-.Lfunc_begin31  # >> Call Site 1 <<
	.uleb128 .Ltmp310-.Lfunc_begin31        #   Call between .Lfunc_begin31 and .Ltmp310
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Ltmp313-.Ltmp310              #   Call between .Ltmp310 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin31        #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin31        # >> Call Site 3 <<
	.uleb128 .Lfunc_end31-.Ltmp313          #   Call between .Ltmp313 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
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
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB296_2
# %bb.1:
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
.LBB296_2:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rax
	movq	%rax, (%rcx)
	movq	56(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	(%rcx), %rax
	movq	64(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 16(%rcx)
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
.Lfunc_begin32:
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 88(%rsp)
	movq	112(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r8
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$16, %rcx
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movq	72(%rsp), %r9
.Ltmp315:                               # EH_LABEL
	callq	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_
.Ltmp316:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB297_1
.LBB297_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB297_2:
.Ltmp317:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end32:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table297:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp315-.Lfunc_begin32        # >> Call Site 1 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp317-.Lfunc_begin32        #     jumps to .Ltmp317
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Lfunc_end32-.Ltmp316          #   Call between .Ltmp316 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 8(%rax)
	jne	.LBB299_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	nop
.LBB299_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
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
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin33:
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp318:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp319:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB301_1
.LBB301_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB301_2:
.Ltmp320:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end33:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table301:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Ltmp318-.Lfunc_begin33        # >> Call Site 1 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin33        #     jumps to .Ltmp320
	.byte	1                               #   On action: 1
.Lcst_end33:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.33(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin34:
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp321:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp322:                               # EH_LABEL
	jmp	.LBB304_1
.LBB304_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB304_2:
.Ltmp323:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end34:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table304:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp321-.Lfunc_begin34        # >> Call Site 1 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin34        #     jumps to .Ltmp323
	.byte	1                               #   On action: 1
.Lcst_end34:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
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
	.def	_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB306_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB306_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y,"xr",discard,_ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y
	.globl	_ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y # -- Begin function _ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y
	.p2align	4
_ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y: # @_ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y
.seh_proc _ZNSt3__119__allocation_resultIPPKN6apollo3mir6TyDataEyEC2B9nqe220103ES6_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy
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
	jne	.LBB308_1
	jmp	.LBB308_2
.LBB308_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB308_3
.LBB308_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB308_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
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
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_,"xr",discard,_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_
	.globl	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_ # -- Begin function _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_
	.p2align	4
_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_: # @_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_
.seh_proc _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 88(%rsp)
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB311_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB311_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin35:
.seh_proc _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp324:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp325:                               # EH_LABEL
	jmp	.LBB312_1
.LBB312_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB312_2:
.Ltmp326:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end35:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table312:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Ltmp324-.Lfunc_begin35        # >> Call Site 1 <<
	.uleb128 .Ltmp325-.Ltmp324              #   Call between .Ltmp324 and .Ltmp325
	.uleb128 .Ltmp326-.Lfunc_begin35        #     jumps to .Ltmp326
	.byte	1                               #   On action: 1
.Lcst_end35:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_,"xr",discard,_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_
	.globl	_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_ # -- Begin function _ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_
	.p2align	4
_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_: # @_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_
.seh_proc _ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_
	.globl	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_ # -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_
	.p2align	4
_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_: # @_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_
.seh_proc _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	40(%rsp), %r8
	callq	_ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_,"xr",discard,_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.globl	_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_ # -- Begin function _ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.p2align	4
_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_: # @_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
.seh_proc _ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.globl	_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_ # -- Begin function _ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.p2align	4
_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_: # @_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
.Lfunc_begin36:
.seh_proc _ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
.Ltmp327:                               # EH_LABEL
	callq	_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_
.Ltmp328:                               # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB316_1
.LBB316_1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB316_2:
.Ltmp329:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end36:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.seh_endproc
	.section	.xdata$_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table316:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Ltmp327-.Lfunc_begin36        # >> Call Site 1 <<
	.uleb128 .Ltmp328-.Ltmp327              #   Call between .Ltmp327 and .Ltmp328
	.uleb128 .Ltmp329-.Lfunc_begin36        #     jumps to .Ltmp329
	.byte	1                               #   On action: 1
.Lcst_end36:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
                                        # -- End function
	.def	_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_,"xr",discard,_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_
	.globl	_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_ # -- Begin function _ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_
	.p2align	4
_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_: # @_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_
.seh_proc _ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	leaq	56(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_,"xr",discard,_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
	.globl	_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_ # -- Begin function _ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
	.p2align	4
_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_: # @_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
.seh_proc _ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_,"xr",discard,_ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_
	.globl	_ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_ # -- Begin function _ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_
	.p2align	4
_ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_: # @_ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_
.seh_proc _ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	64(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	48(%rsp), %r9
	leaq	32(%rsp), %rcx
	callq	_ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	movq	40(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_,"xr",discard,_ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.globl	_ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_ # -- Begin function _ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.p2align	4
_ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: # @_ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
.seh_proc _ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	40(%rsp), %r9
	callq	_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_,"xr",discard,_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_
	.globl	_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_ # -- Begin function _ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_
	.p2align	4
_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_: # @_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_
.seh_proc _ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 160(%rsp)
	movq	%rdx, 152(%rsp)
	movq	%r8, 144(%rsp)
	movq	%r9, 136(%rsp)
	movq	152(%rsp), %rdx
	movq	144(%rsp), %r8
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_
	movq	120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	leaq	104(%rsp), %rcx
	leaq	103(%rsp), %rdx
	movq	%rax, 32(%rsp)
	callq	_ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	movq	152(%rsp), %rcx
	movq	104(%rsp), %rdx
	callq	_ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_
	movq	%rax, 88(%rsp)
	movq	136(%rsp), %rcx
	movq	112(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	leaq	88(%rsp), %rdx
	leaq	80(%rsp), %r8
	callq	_ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_
	movq	72(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_,"xr",discard,_ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	.globl	_ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_ # -- Begin function _ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	.p2align	4
_ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_: # @_ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
.seh_proc _ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	48(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	callq	_ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_,"xr",discard,_ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_
	.globl	_ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_ # -- Begin function _ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_
	.p2align	4
_ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_: # @_ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_
.seh_proc _ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_,"xr",discard,_ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_
	.globl	_ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_ # -- Begin function _ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_
	.p2align	4
_ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_: # @_ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_
.seh_proc _ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_,"xr",discard,_ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_
	.globl	_ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_ # -- Begin function _ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_
	.p2align	4
_ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_: # @_ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_
.seh_proc _ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 72(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	88(%rsp), %rdx
	movq	64(%rsp), %r8
	callq	_ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movq	64(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 56(%rsp)
	leaq	80(%rsp), %rdx
	leaq	56(%rsp), %r8
	callq	_ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE,"xr",discard,_ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE
	.globl	_ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE # -- Begin function _ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE
	.p2align	4
_ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE: # @_ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE
.seh_proc _ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	40(%rsp), %r8
	shlq	$3, %r8
	callq	memmove
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_,"xr",discard,_ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	.globl	_ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_ # -- Begin function _ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	.p2align	4
_ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_: # @_ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
.seh_proc _ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_,"xr",discard,_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	.globl	_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_ # -- Begin function _ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	.p2align	4
_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_: # @_ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
.seh_proc _ZNSt3__14pairIPPKN6apollo3mir6TyDataES6_EC2B9nqe220103IRS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_,"xr",discard,_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_
	.globl	_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_ # -- Begin function _ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_
	.p2align	4
_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_: # @_ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_
.seh_proc _ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_
	.globl	_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_: # @_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_
.seh_proc _ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_
	.globl	_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_: # @_ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_
.seh_proc _ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %rax                  # 8-byte Reload
	subq	%rdx, %rcx
	sarq	$3, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev
	.globl	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev: # @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev
.seh_proc _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__18ios_baseC2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	.refptr._ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
	.globl	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE # -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
	.p2align	4
_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE: # @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
.seh_proc _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	8(%rax), %rdx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	%rdx, (%rcx,%rax)
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
.Lfunc_begin37:
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movl	%edx, 76(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE+16(%rip), %rax
	movq	%rax, (%rcx)
	addq	$64, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	$0, 88(%rcx)
	movl	76(%rsp), %eax
	movl	%eax, 96(%rcx)
.Ltmp330:                               # EH_LABEL
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
.Ltmp331:                               # EH_LABEL
	jmp	.LBB334_1
.LBB334_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB334_2:
.Ltmp332:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 64(%rsp)
	movl	%eax, 60(%rsp)
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
# %bb.3:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end37:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table334:
.Lexception37:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Lfunc_begin37-.Lfunc_begin37  # >> Call Site 1 <<
	.uleb128 .Ltmp330-.Lfunc_begin37        #   Call between .Lfunc_begin37 and .Ltmp330
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp330-.Lfunc_begin37        # >> Call Site 2 <<
	.uleb128 .Ltmp331-.Ltmp330              #   Call between .Ltmp330 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin37        #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin37        # >> Call Site 3 <<
	.uleb128 .Lfunc_end37-.Ltmp331          #   Call between .Ltmp331 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end37:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
                                        # -- End function
	.def	_ZNSt3__18ios_baseC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18ios_baseC2B9nqe220103Ev,"xr",discard,_ZNSt3__18ios_baseC2B9nqe220103Ev
	.globl	_ZNSt3__18ios_baseC2B9nqe220103Ev # -- Begin function _ZNSt3__18ios_baseC2B9nqe220103Ev
	.p2align	4
_ZNSt3__18ios_baseC2B9nqe220103Ev:      # @_ZNSt3__18ios_baseC2B9nqe220103Ev
.seh_proc _ZNSt3__18ios_baseC2B9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	.refptr._ZTVNSt3__18ios_baseE(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movq	$0, 48(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE,"xr",discard,_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE
	.globl	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE # -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE
	.p2align	4
_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE: # @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE
.seh_proc _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZNSt3__18ios_base4initEPv
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	$0, 136(%rcx)
	addq	$144, %rcx
	callq	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev,"xr",discard,_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev
	.globl	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev # -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev
	.p2align	4
_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev: # @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev
.seh_proc _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, %ecx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
.Lfunc_begin38:
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movq	$0, 64(%rsp)
.Ltmp333:                               # EH_LABEL
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp334:                               # EH_LABEL
	jmp	.LBB338_1
.LBB338_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB338_2:
.Ltmp335:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end38:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table338:
.Lexception38:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Ltmp333-.Lfunc_begin38        # >> Call Site 1 <<
	.uleb128 .Ltmp334-.Ltmp333              #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin38        #     jumps to .Ltmp335
	.byte	1                               #   On action: 1
.Lcst_end38:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
	.globl	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev # -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
	.p2align	4
_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev: # @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
.seh_proc _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	$0, 88(%rcx)
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	addq	$64, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 64(%rsp)
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB339_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 88(%rcx)
	movq	72(%rsp), %rdx
	movq	72(%rsp), %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.LBB339_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB339_11
# %bb.3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 88(%rcx)
	movq	%rcx, %rax
	addq	$64, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB339_10
# %bb.4:
	jmp	.LBB339_5
.LBB339_5:                              # =>This Inner Loop Header: Depth=1
	cmpq	$2147483647, 64(%rsp)           # imm = 0x7FFFFFFF
	jbe	.LBB339_7
# %bb.6:                                #   in Loop: Header=BB339_5 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	$2147483647, %edx               # imm = 0x7FFFFFFF
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	movq	64(%rsp), %rax
	subq	$2147483647, %rax               # imm = 0x7FFFFFFF
	movq	%rax, 64(%rsp)
	jmp	.LBB339_5
.LBB339_7:
	cmpq	$0, 64(%rsp)
	jbe	.LBB339_9
# %bb.8:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rax
	movl	%eax, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.LBB339_9:
	jmp	.LBB339_10
.LBB339_10:
	jmp	.LBB339_11
.LBB339_11:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
.Lfunc_begin39:
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	1(%rax,%rdx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	1(%rax,%r8), %r8
.Ltmp336:                               # EH_LABEL
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp337:                               # EH_LABEL
	jmp	.LBB341_1
.LBB341_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB341_2:
.Ltmp338:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end39:
	.seh_handlerdata
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table341:
.Lexception39:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Ltmp336-.Lfunc_begin39        # >> Call Site 1 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin39        #     jumps to .Ltmp338
	.byte	1                               #   On action: 1
.Lcst_end39:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase23:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_ # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	.globl	_ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_: # @_ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
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
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB345_1
	jmp	.LBB345_2
.LBB345_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB345_3
.LBB345_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB345_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
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
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$1, %rcx
	callq	_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_,"xr",discard,_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	.globl	_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_ # -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	.p2align	4
_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_: # @_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
.seh_proc _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
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
	.def	_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.globl	_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y # -- Begin function _ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.p2align	4
_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y: # @_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Lfunc_begin40:
.seh_proc _ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 160(%rsp)
	movq	176(%rsp), %rdx
.Ltmp339:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
.Ltmp340:                               # EH_LABEL
	jmp	.LBB349_1
.LBB349_1:
.Ltmp342:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
.Ltmp343:                               # EH_LABEL
	movb	%al, 111(%rsp)                  # 1-byte Spill
	jmp	.LBB349_2
.LBB349_2:
	movb	111(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB349_3
	jmp	.LBB349_18
.LBB349_3:
	movq	176(%rsp), %rdx
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	movq	168(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp344:                               # EH_LABEL
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
.Ltmp345:                               # EH_LABEL
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	jmp	.LBB349_4
.LBB349_4:
	movl	104(%rsp), %eax                 # 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	.LBB349_6
# %bb.5:
	movq	168(%rsp), %rax
	addq	160(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB349_7
.LBB349_6:
	movq	168(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB349_7:
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	168(%rsp), %rax
	movq	160(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
.Ltmp346:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
.Ltmp347:                               # EH_LABEL
	movb	%al, 87(%rsp)                   # 1-byte Spill
	jmp	.LBB349_8
.LBB349_8:
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movb	87(%rsp), %r11b                 # 1-byte Reload
	movq	112(%rsp), %rcx
.Ltmp348:                               # EH_LABEL
	movq	%rsp, %rax
	movb	%r11b, 40(%rax)
	movq	%r10, 32(%rax)
	callq	_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Ltmp349:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB349_9
.LBB349_9:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
	testb	$1, %al
	jne	.LBB349_10
	jmp	.LBB349_17
.LBB349_10:
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp350:                               # EH_LABEL
	movl	$5, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp351:                               # EH_LABEL
	jmp	.LBB349_11
.LBB349_11:
	jmp	.LBB349_17
.LBB349_12:
.Ltmp341:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	jmp	.LBB349_14
.LBB349_13:
.Ltmp352:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
.LBB349_14:
	movq	136(%rsp), %rcx
	callq	__cxa_begin_catch
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp353:                               # EH_LABEL
	callq	_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
.Ltmp354:                               # EH_LABEL
	jmp	.LBB349_15
.LBB349_15:
	callq	__cxa_end_catch
.LBB349_16:
	movq	176(%rsp), %rax
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
.LBB349_17:
	jmp	.LBB349_18
.LBB349_18:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	jmp	.LBB349_16
.LBB349_19:
.Ltmp355:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
.Ltmp356:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp357:                               # EH_LABEL
	jmp	.LBB349_20
.LBB349_20:
	jmp	.LBB349_21
.LBB349_21:
	movq	136(%rsp), %rcx
	callq	_Unwind_Resume
.LBB349_22:
.Ltmp358:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end40:
	.seh_handlerdata
	.section	.text$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_endproc
	.section	.xdata$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table349:
.Lexception40:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end40-.Lcst_begin40
.Lcst_begin40:
	.uleb128 .Ltmp339-.Lfunc_begin40        # >> Call Site 1 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin40        #     jumps to .Ltmp341
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp342-.Lfunc_begin40        # >> Call Site 2 <<
	.uleb128 .Ltmp351-.Ltmp342              #   Call between .Ltmp342 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin40        #     jumps to .Ltmp352
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp351-.Lfunc_begin40        # >> Call Site 3 <<
	.uleb128 .Ltmp353-.Ltmp351              #   Call between .Ltmp351 and .Ltmp353
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin40        # >> Call Site 4 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin40        #     jumps to .Ltmp355
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin40        # >> Call Site 5 <<
	.uleb128 .Ltmp356-.Ltmp354              #   Call between .Ltmp354 and .Ltmp356
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin40        # >> Call Site 6 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin40        #     jumps to .Ltmp358
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp357-.Lfunc_begin40        # >> Call Site 7 <<
	.uleb128 .Lfunc_end40-.Ltmp357          #   Call between .Ltmp357 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end40:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase24:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
	.globl	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_ # -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
	.p2align	4
_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_: # @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
.seh_proc _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movb	$0, (%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
	testb	$1, %al
	jne	.LBB350_1
	jmp	.LBB350_4
.LBB350_1:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB350_3
# %bb.2:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
.LBB350_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	$1, (%rax)
.LBB350_4:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev,"xr",discard,_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
	.globl	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev # -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
	.p2align	4
_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev: # @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
.seh_proc _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	(%rax), %al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ # -- Begin function _ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4
_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: # @_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Lfunc_begin41:
.seh_proc _ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movb	216(%rsp), %al
	movq	208(%rsp), %rax
	movq	%rcx, 152(%rsp)
	movq	%rdx, 144(%rsp)
	movq	%r8, 136(%rsp)
	movq	%r9, 128(%rsp)
	cmpq	$0, 152(%rsp)
	jne	.LBB352_2
# %bb.1:
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB352_22
.LBB352_2:
	movq	128(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__18ios_base5widthB9nqe220103Ev
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jle	.LBB352_4
# %bb.3:
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB352_5
.LBB352_4:
	movq	$0, 112(%rsp)
.LBB352_5:
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB352_9
# %bb.6:
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB352_8
# %bb.7:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB352_22
.LBB352_8:
	jmp	.LBB352_9
.LBB352_9:
	cmpq	$0, 112(%rsp)
	jle	.LBB352_17
# %bb.10:
	movq	112(%rsp), %rdx
	movb	216(%rsp), %r8b
	leaq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	112(%rsp), %r8
.Ltmp359:                               # EH_LABEL
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
.Ltmp360:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB352_11
.LBB352_11:
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB352_14
# %bb.12:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB352_15
.LBB352_13:
.Ltmp361:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB352_23
.LBB352_14:
	movl	$0, 64(%rsp)
.LBB352_15:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	64(%rsp), %eax
	testl	%eax, %eax
	je	.LBB352_16
	jmp	.LBB352_25
.LBB352_25:
	jmp	.LBB352_22
.LBB352_16:
	jmp	.LBB352_17
.LBB352_17:
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB352_21
# %bb.18:
	movq	152(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB352_20
# %bb.19:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB352_22
.LBB352_20:
	jmp	.LBB352_21
.LBB352_21:
	movq	208(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__18ios_base5widthB9nqe220103Ex
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
.LBB352_22:
	movq	160(%rsp), %rax
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB352_23:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
# %bb.24:
	int3
.Lfunc_end41:
	.seh_handlerdata
	.section	.text$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_endproc
	.section	.xdata$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table352:
.Lexception41:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Lfunc_begin41-.Lfunc_begin41  # >> Call Site 1 <<
	.uleb128 .Ltmp359-.Lfunc_begin41        #   Call between .Lfunc_begin41 and .Ltmp359
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin41        # >> Call Site 2 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin41        #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin41        # >> Call Site 3 <<
	.uleb128 .Lfunc_end41-.Ltmp360          #   Call between .Ltmp360 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end41:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
                                        # -- End function
	.def	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	.globl	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE # -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	.p2align	4
_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE: # @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
.Lfunc_begin42:
.seh_proc _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp362:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp363:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB353_1
.LBB353_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB353_2:
.Ltmp364:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end42:
	.seh_handlerdata
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	.seh_endproc
	.section	.xdata$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table353:
.Lexception42:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end42-.Lcst_begin42
.Lcst_begin42:
	.uleb128 .Ltmp362-.Lfunc_begin42        # >> Call Site 1 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin42        #     jumps to .Ltmp364
	.byte	1                               #   On action: 1
.Lcst_end42:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase25:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
                                        # -- End function
	.def	_ZNKSt3__18ios_base5flagsB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base5flagsB9nqe220103Ev,"xr",discard,_ZNKSt3__18ios_base5flagsB9nqe220103Ev
	.globl	_ZNKSt3__18ios_base5flagsB9nqe220103Ev # -- Begin function _ZNKSt3__18ios_base5flagsB9nqe220103Ev
	.p2align	4
_ZNKSt3__18ios_base5flagsB9nqe220103Ev: # @_ZNKSt3__18ios_base5flagsB9nqe220103Ev
.seh_proc _ZNKSt3__18ios_base5flagsB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movl	8(%rax), %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
	.p2align	4
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	addq	$144, %rcx
	callq	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev
	testb	$1, %al
	jne	.LBB355_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$32, %edx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movsbl	%al, %edx
	addq	$144, %rcx
	callq	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
.LBB355_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$144, %rcx
	callq	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev
	nop
                                        # kill: def $al killed $al killed $eax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev,"xr",discard,_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
	.globl	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev # -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
	.p2align	4
_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev: # @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
.seh_proc _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	cmpq	$0, (%rax)
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej,"xr",discard,_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
	.globl	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej # -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
	.p2align	4
_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej: # @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.seh_proc _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	44(%rsp), %edx
	callq	_ZNSt3__18ios_base8setstateB9nqe220103Ej
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.globl	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev # -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.p2align	4
_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev: # @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
.Lfunc_begin43:
.seh_proc _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp365:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp366:                               # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB358_1
.LBB358_1:
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB358_16
# %bb.2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp367:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
.Ltmp368:                               # EH_LABEL
	movb	%al, 63(%rsp)                   # 1-byte Spill
	jmp	.LBB358_3
.LBB358_3:
	movb	63(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB358_4
	jmp	.LBB358_16
.LBB358_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB358_16
# %bb.5:
	callq	_ZSt19uncaught_exceptionsv
	cmpl	$0, %eax
	jne	.LBB358_16
# %bb.6:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp369:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp370:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB358_7
.LBB358_7:
.Ltmp371:                               # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
.Ltmp372:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB358_8
.LBB358_8:
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$-1, %eax
	jne	.LBB358_15
# %bb.9:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp373:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp374:                               # EH_LABEL
	jmp	.LBB358_10
.LBB358_10:
	jmp	.LBB358_15
.LBB358_11:
.Ltmp375:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
# %bb.12:
	movq	88(%rsp), %rcx
	callq	__cxa_begin_catch
.Ltmp376:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp377:                               # EH_LABEL
	jmp	.LBB358_13
.LBB358_13:
	jmp	.LBB358_14
.LBB358_14:
	jmp	.LBB358_16
.LBB358_15:
	jmp	.LBB358_14
.LBB358_16:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB358_17:
.Ltmp378:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end43:
	.seh_handlerdata
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table358:
.Lexception43:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end43-.Lcst_begin43
.Lcst_begin43:
	.uleb128 .Ltmp365-.Lfunc_begin43        # >> Call Site 1 <<
	.uleb128 .Ltmp368-.Ltmp365              #   Call between .Ltmp365 and .Ltmp368
	.uleb128 .Ltmp378-.Lfunc_begin43        #     jumps to .Ltmp378
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp369-.Lfunc_begin43        # >> Call Site 2 <<
	.uleb128 .Ltmp374-.Ltmp369              #   Call between .Ltmp369 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin43        #     jumps to .Ltmp375
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp374-.Lfunc_begin43        # >> Call Site 3 <<
	.uleb128 .Ltmp376-.Ltmp374              #   Call between .Ltmp374 and .Ltmp376
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp376-.Lfunc_begin43        # >> Call Site 4 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin43        #     jumps to .Ltmp378
	.byte	1                               #   On action: 1
.Lcst_end43:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase26:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
	.p2align	4
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__18ios_base4goodB9nqe220103Ev
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	.p2align	4
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	136(%rax), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__18ios_base4goodB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base4goodB9nqe220103Ev,"xr",discard,_ZNKSt3__18ios_base4goodB9nqe220103Ev
	.globl	_ZNKSt3__18ios_base4goodB9nqe220103Ev # -- Begin function _ZNKSt3__18ios_base4goodB9nqe220103Ev
	.p2align	4
_ZNKSt3__18ios_base4goodB9nqe220103Ev:  # @_ZNKSt3__18ios_base4goodB9nqe220103Ev
.seh_proc _ZNKSt3__18ios_base4goodB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	cmpl	$0, 32(%rax)
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__18ios_base5widthB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base5widthB9nqe220103Ev,"xr",discard,_ZNKSt3__18ios_base5widthB9nqe220103Ev
	.globl	_ZNKSt3__18ios_base5widthB9nqe220103Ev # -- Begin function _ZNKSt3__18ios_base5widthB9nqe220103Ev
	.p2align	4
_ZNKSt3__18ios_base5widthB9nqe220103Ev: # @_ZNKSt3__18ios_base5widthB9nqe220103Ev
.seh_proc _ZNKSt3__18ios_base5widthB9nqe220103Ev
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
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	.p2align	4
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
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
	movq	(%rcx), %rax
	callq	*96(%rax)
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Eyc
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movb	%r8b, 39(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEyc
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18ios_base5widthB9nqe220103Ex;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18ios_base5widthB9nqe220103Ex,"xr",discard,_ZNSt3__18ios_base5widthB9nqe220103Ex
	.globl	_ZNSt3__18ios_base5widthB9nqe220103Ex # -- Begin function _ZNSt3__18ios_base5widthB9nqe220103Ex
	.p2align	4
_ZNSt3__18ios_base5widthB9nqe220103Ex:  # @_ZNSt3__18ios_base5widthB9nqe220103Ex
.seh_proc _ZNSt3__18ios_base5widthB9nqe220103Ex
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	(%rsp), %rax
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
	.p2align	4
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__18ios_base5rdbufB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__18ios_base5rdbufB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base5rdbufB9nqe220103Ev,"xr",discard,_ZNKSt3__18ios_base5rdbufB9nqe220103Ev
	.globl	_ZNKSt3__18ios_base5rdbufB9nqe220103Ev # -- Begin function _ZNKSt3__18ios_base5rdbufB9nqe220103Ev
	.p2align	4
_ZNKSt3__18ios_base5rdbufB9nqe220103Ev: # @_ZNKSt3__18ios_base5rdbufB9nqe220103Ev
.seh_proc _ZNKSt3__18ios_base5rdbufB9nqe220103Ev
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
	.def	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev,"xr",discard,_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev
	.globl	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev # -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev
	.p2align	4
_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev: # @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev
.seh_proc _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, %ecx
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.p2align	4
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
.Lfunc_begin44:
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movb	%dl, 95(%rsp)
	movq	96(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__18ios_base6getlocEv
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp379:                               # EH_LABEL
	callq	_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
.Ltmp380:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB369_1
.LBB369_1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	95(%rsp), %dl
.Ltmp381:                               # EH_LABEL
	callq	_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
.Ltmp382:                               # EH_LABEL
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jmp	.LBB369_2
.LBB369_2:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16localeD1Ev
	movb	47(%rsp), %al                   # 1-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB369_3:
.Ltmp383:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16localeD1Ev
# %bb.4:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end44:
	.seh_handlerdata
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.seh_endproc
	.section	.xdata$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table369:
.Lexception44:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end44-.Lcst_begin44
.Lcst_begin44:
	.uleb128 .Lfunc_begin44-.Lfunc_begin44  # >> Call Site 1 <<
	.uleb128 .Ltmp379-.Lfunc_begin44        #   Call between .Lfunc_begin44 and .Ltmp379
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin44        # >> Call Site 2 <<
	.uleb128 .Ltmp382-.Ltmp379              #   Call between .Ltmp379 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin44        #     jumps to .Ltmp383
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin44        # >> Call Site 3 <<
	.uleb128 .Lfunc_end44-.Ltmp382          #   Call between .Ltmp382 and .Lfunc_end44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end44:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
                                        # -- End function
	.def	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei,"xr",discard,_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
	.globl	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei # -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
	.p2align	4
_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei: # @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
.seh_proc _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movl	%edx, 4(%rsp)
	movq	8(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev,"xr",discard,_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev
	.globl	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev # -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev
	.p2align	4
_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev: # @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev
.seh_proc _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movl	(%rax), %eax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE,"xr",discard,_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE # -- Begin function _ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	4
_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE: # @_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
.seh_proc _ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movq	.refptr._ZNSt3__15ctypeIcE2idE(%rip), %rdx
	callq	_ZNKSt3__16locale9use_facetERNS0_2idE
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec,"xr",discard,_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
	.globl	_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec # -- Begin function _ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
	.p2align	4
_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec: # @_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
.seh_proc _ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 47(%rsp)
	movq	48(%rsp), %rcx
	movb	47(%rsp), %dl
	movq	(%rcx), %rax
	callq	*56(%rax)
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18ios_base8setstateB9nqe220103Ej;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18ios_base8setstateB9nqe220103Ej,"xr",discard,_ZNSt3__18ios_base8setstateB9nqe220103Ej
	.globl	_ZNSt3__18ios_base8setstateB9nqe220103Ej # -- Begin function _ZNSt3__18ios_base8setstateB9nqe220103Ej
	.p2align	4
_ZNSt3__18ios_base8setstateB9nqe220103Ej: # @_ZNSt3__18ios_base8setstateB9nqe220103Ej
.seh_proc _ZNSt3__18ios_base8setstateB9nqe220103Ej
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	32(%rcx), %edx
	orl	44(%rsp), %edx
	callq	_ZNSt3__18ios_base5clearEj
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
	.p2align	4
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movq	(%rcx), %rax
	callq	*48(%rax)
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev,"xr",discard,_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.globl	_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev # -- Begin function _ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.p2align	4
_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev: # @_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.seh_proc _ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	leaq	71(%rsp), %r8
	callq	_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_,"xr",discard,_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_
	.globl	_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_ # -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_
	.p2align	4
_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_: # @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_
.seh_proc _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	72(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %r8
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, (%rsp)
	movb	15(%rsp), %al
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.globl	_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev # -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.p2align	4
_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev: # @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
.Lfunc_begin45:
.seh_proc _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB379_5
# %bb.1:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB379_3
# %bb.2:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB379_3:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	88(%rax), %r8
.Ltmp386:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp387:                               # EH_LABEL
	jmp	.LBB379_4
.LBB379_4:
	jmp	.LBB379_10
.LBB379_5:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB379_8
# %bb.6:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
.Ltmp384:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp385:                               # EH_LABEL
	jmp	.LBB379_7
.LBB379_7:
	jmp	.LBB379_10
.LBB379_8:
	jmp	.LBB379_9
.LBB379_9:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
.LBB379_10:
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB379_11:
.Ltmp388:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end45:
	.seh_handlerdata
	.section	.text$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table379:
.Lexception45:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end45-.Lcst_begin45
.Lcst_begin45:
	.uleb128 .Ltmp386-.Lfunc_begin45        # >> Call Site 1 <<
	.uleb128 .Ltmp385-.Ltmp386              #   Call between .Ltmp386 and .Ltmp385
	.uleb128 .Ltmp388-.Lfunc_begin45        #     jumps to .Ltmp388
	.byte	1                               #   On action: 1
.Lcst_end45:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase27:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_ # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_RKS4_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 56(%rsp)
	leaq	48(%rsp), %rcx
	callq	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	48(%rsp), %rcx
	callq	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_,"xr",discard,_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
	.globl	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_ # -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
	.p2align	4
_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_: # @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.seh_proc _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__110to_addressB9nqe220103IcEEDaPT_
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, (%rax)
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
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
	.def	_ZNSt3__110to_addressB9nqe220103IcEEDaPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110to_addressB9nqe220103IcEEDaPT_,"xr",discard,_ZNSt3__110to_addressB9nqe220103IcEEDaPT_
	.globl	_ZNSt3__110to_addressB9nqe220103IcEEDaPT_ # -- Begin function _ZNSt3__110to_addressB9nqe220103IcEEDaPT_
	.p2align	4
_ZNSt3__110to_addressB9nqe220103IcEEDaPT_: # @_ZNSt3__110to_addressB9nqe220103IcEEDaPT_
.seh_proc _ZNSt3__110to_addressB9nqe220103IcEEDaPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_
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
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"<null>"

.L.str.1:                               # @.str.1
	.asciz	"bool"

.L.str.2:                               # @.str.2
	.asciz	"char"

.L.str.3:                               # @.str.3
	.asciz	"str"

.L.str.4:                               # @.str.4
	.asciz	"!"

.L.str.5:                               # @.str.5
	.asciz	"<error>"

.L.str.6:                               # @.str.6
	.asciz	"isize"

.L.str.7:                               # @.str.7
	.asciz	"i8"

.L.str.8:                               # @.str.8
	.asciz	"i16"

.L.str.9:                               # @.str.9
	.asciz	"i32"

.L.str.10:                              # @.str.10
	.asciz	"i64"

.L.str.11:                              # @.str.11
	.asciz	"i128"

.L.str.12:                              # @.str.12
	.asciz	"i?"

.L.str.13:                              # @.str.13
	.asciz	"usize"

.L.str.14:                              # @.str.14
	.asciz	"u8"

.L.str.15:                              # @.str.15
	.asciz	"u16"

.L.str.16:                              # @.str.16
	.asciz	"u32"

.L.str.17:                              # @.str.17
	.asciz	"u64"

.L.str.18:                              # @.str.18
	.asciz	"u128"

.L.str.19:                              # @.str.19
	.asciz	"u?"

.L.str.20:                              # @.str.20
	.asciz	"f32"

.L.str.21:                              # @.str.21
	.asciz	"f64"

.L.str.22:                              # @.str.22
	.asciz	"mut "

.L.str.23:                              # @.str.23
	.asciz	"*mut "

.L.str.24:                              # @.str.24
	.asciz	"*const "

.L.str.25:                              # @.str.25
	.asciz	"; "

.L.str.26:                              # @.str.26
	.asciz	", "

.L.str.27:                              # @.str.27
	.asciz	"adt#"

.L.str.28:                              # @.str.28
	.asciz	"fn#"

.L.str.29:                              # @.str.29
	.asciz	"fn("

.L.str.30:                              # @.str.30
	.asciz	") -> "

.L.str.31:                              # @.str.31
	.asciz	"T"

.L.str.32:                              # @.str.32
	.asciz	"<?>"

.L.str.33:                              # @.str.33
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

	.section	.rdata$_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE,"dr",discard,_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.globl	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE # @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3, 0x0
_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	112
	.quad	0
	.quad	_ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	-112
	.quad	-112
	.quad	_ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev

	.section	.rdata$_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE,"dr",discard,_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.globl	_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE # @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3, 0x0
_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24
	.quad	_ZTCNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE+24
	.quad	_ZTCNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE+64
	.quad	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64

	.section	.rdata$_ZTCNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE,"dr",discard,_ZTCNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE
	.globl	_ZTCNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE # @_ZTCNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE
	.p2align	3, 0x0
_ZTCNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE:
	.quad	112
	.quad	0
	.quad	_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-112
	.quad	-112
	.quad	_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev

	.section	.rdata$_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE,"dr",discard,_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.globl	_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE # @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.p2align	3, 0x0
_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.long	0                               # 0x0
	.long	1                               # 0x1
	.quad	_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.quad	-6141                           # 0xffffffffffffe803

	.section	.rdata$_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE,"dr",discard,_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.globl	_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE # @_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE"

	.section	.rdata$_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE,"dr",discard,_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.globl	_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE # @_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.p2align	3, 0x0
_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.quad	_ZTINSt3__18ios_baseE

	.section	.rdata$_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE,"dr",discard,_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.globl	_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE # @_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE
_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__19basic_iosIcNS_11char_traitsIcEEEE"

	.section	.rdata$_ZTINSt3__18ios_baseE,"dr",discard,_ZTINSt3__18ios_baseE
	.globl	_ZTINSt3__18ios_baseE           # @_ZTINSt3__18ios_baseE
	.p2align	3, 0x0
_ZTINSt3__18ios_baseE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt3__18ios_baseE

	.section	.rdata$_ZTSNSt3__18ios_baseE,"dr",discard,_ZTSNSt3__18ios_baseE
	.globl	_ZTSNSt3__18ios_baseE           # @_ZTSNSt3__18ios_baseE
_ZTSNSt3__18ios_baseE:
	.asciz	"NSt3__18ios_baseE"

	.section	.rdata$_ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE,"dr",discard,_ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.globl	_ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE # @_ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3, 0x0
_ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE

	.section	.rdata$_ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE,"dr",discard,_ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.globl	_ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE # @_ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
_ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	.rdata$_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE,"dr",discard,_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.globl	_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE # @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3, 0x0
_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	0
	.quad	_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.quad	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcx
	.quad	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI9_MbstatetEEj
	.quad	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv
	.quad	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcx
	.quad	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.quad	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.quad	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcx
	.quad	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi

	.section	.rdata$_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE,"dr",discard,_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.globl	_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE # @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3, 0x0
_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	.rdata$_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE,"dr",discard,_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.globl	_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE # @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	.rdata$_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE,"dr",discard,_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE
	.globl	_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE # @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE
	.p2align	3, 0x0
_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	.rdata$_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE,"dr",discard,_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE
	.globl	_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE # @_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE
_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__115basic_streambufIcNS_11char_traitsIcEEEE"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.rdata$.refptr._ZNSt3__15ctypeIcE2idE,"dr",discard,.refptr._ZNSt3__15ctypeIcE2idE
	.p2align	3, 0x0
	.globl	.refptr._ZNSt3__15ctypeIcE2idE
.refptr._ZNSt3__15ctypeIcE2idE:
	.quad	_ZNSt3__15ctypeIcE2idE
	.section	.rdata$.refptr._ZTVNSt3__18ios_baseE,"dr",discard,.refptr._ZTVNSt3__18ios_baseE
	.p2align	3, 0x0
	.globl	.refptr._ZTVNSt3__18ios_baseE
.refptr._ZTVNSt3__18ios_baseE:
	.quad	_ZTVNSt3__18ios_baseE
	.section	.rdata$.refptr._ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE,"dr",discard,.refptr._ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.p2align	3, 0x0
	.globl	.refptr._ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE
.refptr._ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE:
	.quad	_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.section	.rdata$.refptr._ZTVSt12length_error,"dr",discard,.refptr._ZTVSt12length_error
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt12length_error
.refptr._ZTVSt12length_error:
	.quad	_ZTVSt12length_error
	.globl	_ZN6apollo3mir6TyCtxtC1Ev
	.def	_ZN6apollo3mir6TyCtxtC1Ev;
	.scl	2;
	.type	32;
	.endef
_ZN6apollo3mir6TyCtxtC1Ev = _ZN6apollo3mir6TyCtxtC2Ev
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp390-.Ltmp389               # Subsection size
.Ltmp389:
	.short	.Ltmp392-.Ltmp391               # Record length
.Ltmp391:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp392:
	.short	.Ltmp394-.Ltmp393               # Record length
.Ltmp393:
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
.Ltmp394:
.Ltmp390:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZNK6apollo3mir6TyData18structurally_equalERKS1_
	.addrsig_sym _ZNK6apollo3mir6RegioneqERKS1_
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEEbRKNS_6vectorIT_T0_EESD_
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNK6apollo3mir6TyHashclEPKNS0_6TyDataE
	.addrsig_sym _ZZNK6apollo3mir6TyHashclEPKNS0_6TyDataEENK3$_0clEy
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKPKN6apollo3mir6TyDataEEEbRKNS_11__wrap_iterIT_EESC_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEEppB9nqe220103Ev
	.addrsig_sym _ZZN6apollo3mir6TyCtxtC1EvENK3$_0clENS0_9TyKindTagE
	.addrsig_sym _ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS5_NS_14default_deleteIS5_EEEEDpOT0_
	.addrsig_sym _ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEEptB9nqe220103Ev
	.addrsig_sym _ZNKSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE3getB9nqe220103Ev
	.addrsig_sym _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6insertB9nqe220103ERKS5_
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
	.addrsig_sym _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findB9nqe220103ERKS5_
	.addrsig_sym _ZNSt3__1neB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	.addrsig_sym _ZNSt3__113unordered_setIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNKSt3__121__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111make_uniqueB9nqe220103IN6apollo3mir6TyDataEJRKS3_ETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEENS_10unique_ptrIS7_NS_14default_deleteIS7_EEEEDpOT0_
	.addrsig_sym _ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
	.addrsig_sym _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.addrsig_sym _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.addrsig_sym _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.addrsig_sym _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEEixB9nqe220103Ey
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5emptyB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4backB9nqe220103Ev
	.addrsig_sym _ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_EEbT_SA_T0_
	.addrsig_sym _ZNSt3__15equalB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEES9_NS_10__equal_toEEEbT_SB_T0_T1_
	.addrsig_sym _ZNSt3__117__equal_iter_implB9nqe220103IKPKN6apollo3mir6TyDataES6_NS_10__equal_toENS_10__identityES8_TnNS_9enable_ifIXaaaaaaaaaasr13__is_identityIT2_EE5valuesr13__is_identityIT3_EE5value15__desugars_to_vINS_11__equal_tagET1_T_T0_Entsr11is_volatileISE_EE5valuentsr11is_volatileISF_EE5value36__is_trivially_equality_comparable_vISE_SF_EEiE4typeELi0EEEbPSE_SI_PSF_RSD_RSA_RSB_
	.addrsig_sym _ZNSt3__113__unwrap_iterB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEENS_18__unwrap_iter_implIS9_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISD_EEEESD_
	.addrsig_sym _ZNSt3__124__constexpr_memcmp_equalB9nqe220103IPKN6apollo3mir6TyDataES5_EEbPKT_PKT0_NS_15__element_countE
	.addrsig_sym memcmp
	.addrsig_sym _ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEELb1EE8__unwrapB9nqe220103ES9_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103INS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	.addrsig_sym _ZNSt3__119__to_address_helperINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEvE6__callB9nqe220103ERKS9_
	.addrsig_sym _ZNSt3__114pointer_traitsINS_11__wrap_iterIPKPKN6apollo3mir6TyDataEEEE10to_addressB9nqe220103ES9_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKPKN6apollo3mir6TyDataEEEPT_S8_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKPKN6apollo3mir6TyDataEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__make_iterB9nqe220103EPKS5_
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE26__add_alignment_assumptionB9nqe220103IPS5_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESA_SC_
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_S9_
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEEEvPKvSB_SB_SB_
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEJS7_EPS7_EEPT_SA_DpOT0_
	.addrsig_sym _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE7releaseB9nqe220103Ev
	.addrsig_sym _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE11get_deleterB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
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
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEPS8_EEvRT_T0_SD_SD_
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
	.addrsig_sym _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE10deallocateB9nqe220103ERS9_PS8_y
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEENS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
	.addrsig_sym _ZNSt3__114__split_bufferINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS5_EEEEEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPT_
	.addrsig_sym _ZNSt3__19allocatorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEE10deallocateB9nqe220103EPS7_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103INS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_10unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS4_EEEENS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	.addrsig_sym _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.addrsig_sym _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.addrsig_sym strlen
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe220103EPcS4_
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB9nqe220103Ev
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB9nqe220103Ex
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IcEEPT_S2_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
	.addrsig_sym _ZNKSt3__14fposI9_MbstatetEcvxB9nqe220103Ev
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	.addrsig_sym _ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	.addrsig_sym _ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	.addrsig_sym _ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	.addrsig_sym _ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	.addrsig_sym _ZNSt3__111char_traitsIcE2eqEcc
	.addrsig_sym _ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	.addrsig_sym __cxa_end_catch
	.addrsig_sym _ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEyc
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
	.addrsig_sym _ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
	.addrsig_sym _ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	.addrsig_sym _ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE22__deallocate_node_listB9nqe220103EPNS_16__hash_node_baseIPNS_11__hash_nodeIS5_PvEEEE
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE17__deallocate_nodeB9nqe220103EPNS_11__hash_nodeIS5_PvEE
	.addrsig_sym _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8__upcastB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12__node_allocB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE7destroyB9nqe220103IS7_TnNS_9enable_ifIXnt15__has_destroy_vISA_PT_EEiE4typeELi0EEEvRSA_SF_
	.addrsig_sym _ZNSt3__111__hash_nodeIPKN6apollo3mir6TyDataEPvE11__get_valueB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPT_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_SA_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103ERSA_PS9_y
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IPKN6apollo3mir6TyDataEEEvPT_
	.addrsig_sym _ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE10deallocateB9nqe220103EPS8_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__114pointer_traitsIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10pointer_toB9nqe220103ERSB_
	.addrsig_sym _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103EDn
	.addrsig_sym _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEEclB9nqe220103EPSD_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE10deallocateB9nqe220103ERSE_PSD_y
	.addrsig_sym _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE7__allocB9nqe220103Ev
	.addrsig_sym _ZNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE10deallocateB9nqe220103EPSC_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__110unique_ptrIN6apollo3mir6TyDataENS_14default_deleteIS3_EEE5resetB9nqe220103EPS3_
	.addrsig_sym _ZNKSt3__114default_deleteIN6apollo3mir6TyDataEEclB9nqe220103EPS3_
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE10deallocateB9nqe220103ERS7_PS6_y
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IPKN6apollo3mir6TyDataEEEPT_S7_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEEEvPKvS9_S9_S9_
	.addrsig_sym _ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE10deallocateB9nqe220103EPS5_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IPKN6apollo3mir6TyDataEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_
	.addrsig_sym _ZNSt3__120__try_key_extractionB9nqe220103IPKN6apollo3mir6TyDataEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_EUlSE_SE_E_ZNSC_IJSE_EEESM_SP_EUlSE_E_JSE_EEEDTclclsr3stdE7declvalIT1_EEspclsr3stdE7declvalIT2_EEEET0_SS_DpOST_
	.addrsig_sym _ZNSt3__125__try_key_extraction_implB9nqe220103IPKN6apollo3mir6TyDataENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEZNS_12__hash_tableIS5_NS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEESD_DpOT_EUlSM_SM_E_ZNSK_IJSM_EEESD_SP_EUlSM_E_SM_TnNS_9enable_ifIXsr7is_sameIT_u14__remove_constIu20__remove_reference_tIT3_EEEE5valueEiE4typeELi0EEET0_NS_14__priority_tagILy1EEET1_T2_OSU_
	.addrsig_sym _ZZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE16__emplace_uniqueB9nqe220103IJRKS5_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEEbEEDpOT_ENKUlSD_SD_E_clESD_SD_
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE13hash_functionB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE12bucket_countB9nqe220103Ev
	.addrsig_sym _ZNSt3__116__constrain_hashB9nqe220103Eyy
	.addrsig_sym _ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE6__hashB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE6key_eqB9nqe220103Ev
	.addrsig_sym _ZNK6apollo3mir4TyEqclEPKNS0_6TyDataES4_
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE21__construct_node_hashIJRKS5_EEENS_10unique_ptrINS_11__hash_nodeIS5_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEyDpOT_
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15max_load_factorB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE15__rehash_uniqueB9nqe220103Ey
	.addrsig_sym _ZNSt3__116__is_hash_power2B9nqe220103Ey
	.addrsig_sym _ZNSt3__16__math4ceilB9nqe220103Ef
	.addrsig_sym _ZNSt3__116__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE5__ptrB9nqe220103Ev
	.addrsig_sym _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEptB9nqe220103Ev
	.addrsig_sym _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE3getB9nqe220103Ev
	.addrsig_sym _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE7releaseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	.addrsig_sym _ZNKSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103ERSA_y
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
	.addrsig_sym _ZNKSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE11get_deleterB9nqe220103Ev
	.addrsig_sym _ZNSt3__19allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8max_sizeB9nqe220103ISA_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSA_
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103INS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEJRyRNS_9allocatorIS8_EERKS6_EPS8_EEPT_SH_DpOT0_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE9constructB9nqe220103IS7_JRKS7_ETnNS_9enable_ifIXnt17__has_construct_vISA_PT_DpT0_EEiE4typeELi0EEEvRSA_SH_DpOSI_
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IPKN6apollo3mir6TyDataEJRKS5_EPS5_EEPT_SA_DpOT0_
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE8__rehashILb1EEEvy
	.addrsig_sym _ZNSt3__112__next_primeEy
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE11__do_rehashILb1EEEvy
	.addrsig_sym _ZNSt3__116__next_hash_pow2B9nqe220103Ey
	.addrsig_sym _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE11get_deleterB9nqe220103Ev
	.addrsig_sym _ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEENS_25__bucket_list_deallocatorINS_9allocatorISC_EEEEE5resetB9nqe220103IPSC_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSM_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8allocateB9nqe220103ERSE_y
	.addrsig_sym _ZNSt3__19allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEE8max_sizeB9nqe220103ISE_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKSE_
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IPNS_16__hash_node_baseIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__113__countl_zeroB9nqe220103IyEEiT_
	.addrsig_sym _ZNSt3__110unique_ptrINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEENS_22__hash_node_destructorINS_9allocatorIS8_EEEEE5resetB9nqe220103EPS8_
	.addrsig_sym _ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEEEclB9nqe220103EPS9_
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE4findIS5_EENS_15__hash_iteratorIPNS_11__hash_nodeIS5_PvEEEERKT_
	.addrsig_sym _ZNSt3__112__hash_tableIPKN6apollo3mir6TyDataENS2_6TyHashENS2_4TyEqENS_9allocatorIS5_EEE3endEv
	.addrsig_sym _ZNSt3__1eqB9nqe220103ERKNS_21__hash_const_iteratorIPNS_11__hash_nodeIPKN6apollo3mir6TyDataEPvEEEESC_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE37select_on_container_copy_constructionB9nqe220103IS7_TnNS_9enable_ifIXnt45__has_select_on_container_copy_construction_vIKT_EEiE4typeELi0EEES7_RKS7_
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPS5_SA_EEvT_T0_y
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_y
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKN6apollo3mir6TyDataENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPKN6apollo3mir6TyDataEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.addrsig_sym _ZNSt3__19allocatorIPKN6apollo3mir6TyDataEE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IPKN6apollo3mir6TyDataEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEEPS6_S8_S8_EET2_RT_T0_T1_S9_
	.addrsig_sym _ZNKSt3__16vectorIPKN6apollo3mir6TyDataENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__unwrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_EEDaT_T0_
	.addrsig_sym _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPKN6apollo3mir6TyDataEEES6_S6_TnNS_9enable_ifIXaaaaaasr31is_trivially_copy_constructibleIT0_EE5valuesr28is_trivially_copy_assignableIS9_EE5valuesr7is_sameIu14__remove_constIS9_Eu14__remove_constIT1_EEE5value40__allocator_has_trivial_copy_construct_vIT_S9_EEiE4typeELi0EEEPSB_RSD_PS9_SI_SG_
	.addrsig_sym _ZNSt3__113__unwrap_iterB9nqe220103IPPKN6apollo3mir6TyDataENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.addrsig_sym _ZNSt3__113__rewrap_iterB9nqe220103IPPKN6apollo3mir6TyDataES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.addrsig_sym _ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__unwrapB9nqe220103ES6_S6_
	.addrsig_sym _ZNSt3__14copyB9nqe220103IPPKN6apollo3mir6TyDataES6_EET0_T_S8_S7_
	.addrsig_sym _ZNSt3__16__copyB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.addrsig_sym _ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPPKN6apollo3mir6TyDataES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_
	.addrsig_sym _ZNKSt3__111__copy_implclB9nqe220103IPKN6apollo3mir6TyDataES6_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	.addrsig_sym _ZNSt3__19make_pairB9nqe220103IPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS8_Iu7__decayIT0_EE4typeEEEOS9_OSD_
	.addrsig_sym _ZNSt3__114__rewrap_rangeB9nqe220103IPPKN6apollo3mir6TyDataES6_S6_EET0_S7_T1_
	.addrsig_sym _ZNSt3__119__copy_trivial_implB9nqe220103IPKN6apollo3mir6TyDataES5_EENS_4pairIPT_PT0_EES8_S8_SA_
	.addrsig_sym _ZNSt3__119__constexpr_memmoveB9nqe220103IPKN6apollo3mir6TyDataES5_EEPT_S7_PT0_NS_15__element_countE
	.addrsig_sym _ZNSt3__19make_pairB9nqe220103IRPPKN6apollo3mir6TyDataES6_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	.addrsig_sym _ZNSt3__119__unwrap_range_implIPPKN6apollo3mir6TyDataES6_E8__rewrapB9nqe220103ES6_S6_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__unwrapB9nqe220103ES6_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPPKN6apollo3mir6TyDataELb1EE8__rewrapB9nqe220103ES6_S6_
	.addrsig_sym _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE
	.addrsig_sym _ZNSt3__18ios_base4initEPv
	.addrsig_sym _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev
	.addrsig_sym _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	.addrsig_sym _ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.addrsig_sym _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
	.addrsig_sym _ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.addrsig_sym _ZNKSt3__18ios_base5flagsB9nqe220103Ev
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
	.addrsig_sym _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
	.addrsig_sym _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
	.addrsig_sym _ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	.addrsig_sym _ZNKSt3__18ios_base4goodB9nqe220103Ev
	.addrsig_sym _ZNKSt3__18ios_base5widthB9nqe220103Ev
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	.addrsig_sym _ZNSt3__18ios_base5widthB9nqe220103Ex
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEyc
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
	.addrsig_sym _ZNKSt3__18ios_base5rdbufB9nqe220103Ev
	.addrsig_sym _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe220103Ev
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.addrsig_sym _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
	.addrsig_sym _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe220103Ev
	.addrsig_sym _ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
	.addrsig_sym _ZNKSt3__18ios_base6getlocEv
	.addrsig_sym _ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
	.addrsig_sym _ZNKSt3__16locale9use_facetERNS0_2idE
	.addrsig_sym _ZNSt3__18ios_base8setstateB9nqe220103Ej
	.addrsig_sym _ZNSt3__18ios_base5clearEj
	.addrsig_sym _ZSt19uncaught_exceptionsv
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
	.addrsig_sym _ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.addrsig_sym _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103IS4_Q16__is_allocator_vITL0__EEENS_12basic_stringIcS2_T_EERKS9_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.addrsig_sym _ZNSt3__110to_addressB9nqe220103IcEEDaPT_
	.addrsig_sym _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
	.addrsig_sym _Unwind_Resume
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
	.addrsig_sym _ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTINSt3__18ios_baseE
	.addrsig_sym _ZTSNSt3__18ios_baseE
	.addrsig_sym _ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZNSt3__15ctypeIcE2idE
