	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"validator.cpp"
	.def	_ZN6apollo3mir12validateBodyERKNS0_4BodyERKNS0_6TyCtxtENS0_15ValidationPhaseE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir12validateBodyERKNS0_4BodyERKNS0_6TyCtxtENS0_15ValidationPhaseE # -- Begin function _ZN6apollo3mir12validateBodyERKNS0_4BodyERKNS0_6TyCtxtENS0_15ValidationPhaseE
	.p2align	4
_ZN6apollo3mir12validateBodyERKNS0_4BodyERKNS0_6TyCtxtENS0_15ValidationPhaseE: # @_ZN6apollo3mir12validateBodyERKNS0_4BodyERKNS0_6TyCtxtENS0_15ValidationPhaseE
.Lfunc_begin0:
.seh_proc _ZN6apollo3mir12validateBodyERKNS0_4BodyERKNS0_6TyCtxtENS0_15ValidationPhaseE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	%r8, 128(%rsp)
	movb	%r9b, 127(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	movb	127(%rsp), %al
	movb	%al, 88(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev
.Ltmp0:                                 # EH_LABEL
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator3runEv
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB0_1
.LBB0_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	72(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo3mir12_GLOBAL__N_19ValidatorD2Ev
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB0_2:
.Ltmp2:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo3mir12_GLOBAL__N_19ValidatorD2Ev
# %bb.3:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end0-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103Ev
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
	.def	_ZN6apollo3mir12_GLOBAL__N_19Validator3runEv;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19Validator3runEv
_ZN6apollo3mir12_GLOBAL__N_19Validator3runEv: # @_ZN6apollo3mir12_GLOBAL__N_19Validator3runEv
.Lfunc_begin1:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19Validator3runEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$376, %rsp                      # imm = 0x178
	.seh_stackalloc 376
	.seh_endprologue
	movq	%rcx, 368(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_4
.LBB2_1:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movl	84(%rax), %ecx
	movl	%ecx, 360(%rsp)
	movq	76(%rax), %rax
	movq	%rax, 352(%rsp)
	leaq	.L.str(%rip), %rdx
	leaq	328(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp18:                                # EH_LABEL
	leaq	352(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp19:                                # EH_LABEL
	jmp	.LBB2_2
.LBB2_2:
	leaq	328(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_34
.LBB2_3:
.Ltmp20:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	leaq	328(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_35
.LBB2_4:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$24, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	cmpb	$0, 9(%rax)
	je	.LBB2_8
# %bb.5:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movl	84(%rax), %ecx
	movl	%ecx, 312(%rsp)
	movq	76(%rax), %rax
	movq	%rax, 304(%rsp)
	leaq	.L.str.1(%rip), %rdx
	leaq	280(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
.Ltmp3:                                 # EH_LABEL
	leaq	304(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp4:                                 # EH_LABEL
	jmp	.LBB2_6
.LBB2_6:
	leaq	280(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_8
.LBB2_7:
.Ltmp5:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	leaq	280(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_35
.LBB2_8:
	movl	$0, 276(%rsp)
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	276(%rsp), %eax
	movq	(%rcx), %rcx
	cmpl	72(%rcx), %eax
	jae	.LBB2_26
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	276(%rsp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB2_14
# %bb.11:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movl	84(%rax), %ecx
	movl	%ecx, 272(%rsp)
	movq	76(%rax), %rax
	movq	%rax, 264(%rsp)
	leaq	.L.str.2(%rip), %rdx
	leaq	240(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp15:                                # EH_LABEL
	leaq	264(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp16:                                # EH_LABEL
	jmp	.LBB2_12
.LBB2_12:
	leaq	240(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_26
.LBB2_13:
.Ltmp17:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	leaq	240(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_35
.LBB2_14:                               #   in Loop: Header=BB2_9 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$24, %rcx
	movl	276(%rsp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	cmpb	$1, 9(%rax)
	je	.LBB2_24
# %bb.15:                               #   in Loop: Header=BB2_9 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movl	84(%rax), %ecx
	movl	%ecx, 232(%rsp)
	movq	76(%rax), %rax
	movq	%rax, 224(%rsp)
	movl	276(%rsp), %edx
	incl	%edx
	leaq	152(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__19to_stringEj
	movq	40(%rsp), %r8                   # 8-byte Reload
.Ltmp6:                                 # EH_LABEL
	leaq	.L.str.3(%rip), %rdx
	leaq	176(%rsp), %rcx
	callq	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_
.Ltmp7:                                 # EH_LABEL
	jmp	.LBB2_16
.LBB2_16:                               #   in Loop: Header=BB2_9 Depth=1
.Ltmp9:                                 # EH_LABEL
	leaq	.L.str.4(%rip), %r8
	leaq	200(%rsp), %rcx
	leaq	176(%rsp), %rdx
	callq	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
.Ltmp10:                                # EH_LABEL
	jmp	.LBB2_17
.LBB2_17:                               #   in Loop: Header=BB2_9 Depth=1
.Ltmp12:                                # EH_LABEL
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	224(%rsp), %rdx
	leaq	200(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp13:                                # EH_LABEL
	jmp	.LBB2_18
.LBB2_18:                               #   in Loop: Header=BB2_9 Depth=1
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	176(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	152(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_24
.LBB2_19:
.Ltmp8:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	jmp	.LBB2_23
.LBB2_20:
.Ltmp11:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	jmp	.LBB2_22
.LBB2_21:
.Ltmp14:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
.LBB2_22:
	leaq	176(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
.LBB2_23:
	leaq	152(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_35
.LBB2_24:                               #   in Loop: Header=BB2_9 Depth=1
	jmp	.LBB2_25
.LBB2_25:                               #   in Loop: Header=BB2_9 Depth=1
	movl	276(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 276(%rsp)
	jmp	.LBB2_9
.LBB2_26:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 136(%rsp)
	movq	144(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 128(%rsp)
.LBB2_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_29 Depth 2
	leaq	136(%rsp), %rcx
	leaq	128(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB2_28
	jmp	.LBB2_34
.LBB2_28:                               #   in Loop: Header=BB2_27 Depth=1
	leaq	136(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 104(%rsp)
	movq	112(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
.LBB2_29:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	104(%rsp), %rcx
	leaq	96(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB2_30
	jmp	.LBB2_32
.LBB2_30:                               #   in Loop: Header=BB2_29 Depth=2
	leaq	104(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 88(%rsp)
	movq	88(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator14checkStatementERKNS0_9StatementE
# %bb.31:                               #   in Loop: Header=BB2_29 Depth=2
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
	jmp	.LBB2_29
.LBB2_32:                               #   in Loop: Header=BB2_27 Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator15checkTerminatorERKNS0_10TerminatorE
# %bb.33:                               #   in Loop: Header=BB2_27 Depth=1
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev
	jmp	.LBB2_27
.LBB2_34:
	.seh_startepilogue
	addq	$376, %rsp                      # imm = 0x178
	.seh_endepilogue
	retq
.LBB2_35:
	movq	320(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp19                 #   Call between .Ltmp19 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 5 <<
	.uleb128 .Ltmp15-.Ltmp4                 #   Call between .Ltmp4 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp6-.Ltmp16                 #   Call between .Ltmp16 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 8 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 9 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Lfunc_end1-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEEC2B9nqe220103EOS6_
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
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	(%rsp), %rax
	movq	$0, 16(%rax)
	movq	(%rsp), %rax
	movq	$0, 8(%rax)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_19ValidatorD2Ev;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19ValidatorD2Ev
_ZN6apollo3mir12_GLOBAL__N_19ValidatorD2Ev: # @_ZN6apollo3mir12_GLOBAL__N_19ValidatorD2Ev
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19ValidatorD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
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
	.def	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE: # @_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Lfunc_begin2:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rcx, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	%rdx, 112(%rsp)
	movq	128(%rsp), %rcx
	addq	$24, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movl	8(%rax), %ecx
	movl	%ecx, 80(%rsp)
	movq	(%rax), %rax
	movq	%rax, 72(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp21:                                # EH_LABEL
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.Ltmp22:                                # EH_LABEL
	jmp	.LBB6_1
.LBB6_1:
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo3mir15ValidationErrorD2Ev
	nop
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB6_2:
.Ltmp23:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo3mir15ValidationErrorD2Ev
# %bb.3:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table6:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin2          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end2-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
	.def	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_,"xr",discard,_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
	.globl	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_ # -- Begin function _ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
	.p2align	4
_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_: # @_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
.seh_proc _ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
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
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_,"xr",discard,_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_
	.globl	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_ # -- Begin function _ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_
	.p2align	4
_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_: # @_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_
.seh_proc _ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_
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
	movq	48(%rsp), %rcx
	movq	56(%rsp), %r8
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEyPKc
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
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
	.def	_ZN6apollo3mir12_GLOBAL__N_19Validator14checkStatementERKNS0_9StatementE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19Validator14checkStatementERKNS0_9StatementE
_ZN6apollo3mir12_GLOBAL__N_19Validator14checkStatementERKNS0_9StatementE: # @_ZN6apollo3mir12_GLOBAL__N_19Validator14checkStatementERKNS0_9StatementE
.Lfunc_begin3:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19Validator14checkStatementERKNS0_9StatementE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 160(%rsp)
	movq	%rdx, 152(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	subq	$8, %rax
	ja	.LBB20_9
# %bb.11:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI20_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB20_1:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdx
	addq	$24, %rdx
	movq	152(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 140(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 148(%rsp)
	leaq	140(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdx
	addq	$64, %rdx
	movq	152(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 128(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 136(%rsp)
	leaq	128(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator11checkRvalueERKNS0_6RvalueENS0_4SpanE
	jmp	.LBB20_9
.LBB20_2:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rax
	movl	56(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj
	testb	$1, %al
	jne	.LBB20_6
# %bb.3:
	movq	152(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 120(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 112(%rsp)
	leaq	.L.str.6(%rip), %rdx
	leaq	88(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
.Ltmp24:                                # EH_LABEL
	leaq	112(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp25:                                # EH_LABEL
	jmp	.LBB20_4
.LBB20_4:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB20_6
.LBB20_5:
.Ltmp26:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 80(%rsp)
	movl	%eax, 76(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB20_10
.LBB20_6:
	jmp	.LBB20_9
.LBB20_7:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdx
	addq	$24, %rdx
	movq	152(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 64(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 72(%rsp)
	leaq	64(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	jmp	.LBB20_9
.LBB20_8:
	jmp	.LBB20_9
.LBB20_9:
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB20_10:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI20_0:
	.long	.LBB20_1-.LJTI20_0
	.long	.LBB20_2-.LJTI20_0
	.long	.LBB20_2-.LJTI20_0
	.long	.LBB20_7-.LJTI20_0
	.long	.LBB20_7-.LJTI20_0
	.long	.LBB20_7-.LJTI20_0
	.long	.LBB20_7-.LJTI20_0
	.long	.LBB20_7-.LJTI20_0
	.long	.LBB20_8-.LJTI20_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table20:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin3          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$360, %rcx                      # imm = 0x168
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_19Validator15checkTerminatorERKNS0_10TerminatorE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19Validator15checkTerminatorERKNS0_10TerminatorE
_ZN6apollo3mir12_GLOBAL__N_19Validator15checkTerminatorERKNS0_10TerminatorE: # @_ZN6apollo3mir12_GLOBAL__N_19Validator15checkTerminatorERKNS0_10TerminatorE
.Lfunc_begin4:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19Validator15checkTerminatorERKNS0_10TerminatorE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$648, %rsp                      # imm = 0x288
	.seh_stackalloc 648
	.seh_endprologue
	movq	%rcx, 640(%rsp)
	movq	%rdx, 632(%rsp)
	movq	640(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	632(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	subq	$8, %rax
	ja	.LBB22_56
# %bb.58:
	movq	120(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI22_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB22_1:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rax
	movl	20(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_5
# %bb.2:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 624(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 616(%rsp)
	leaq	.L.str.9(%rip), %rdx
	leaq	592(%rsp), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	104(%rsp), %r8                  # 8-byte Reload
.Ltmp51:                                # EH_LABEL
	leaq	616(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp52:                                # EH_LABEL
	jmp	.LBB22_3
.LBB22_3:
	leaq	592(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_5
.LBB22_4:
.Ltmp53:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	592(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_5:
	jmp	.LBB22_56
.LBB22_6:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rdx
	addq	$24, %rdx
	movq	632(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 568(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 576(%rsp)
	leaq	568(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	movq	632(%rsp), %rax
	addq	$112, %rax
	movq	%rax, 560(%rsp)
	movq	560(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	560(%rsp), %rcx
	callq	_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB22_10
# %bb.7:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 552(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 544(%rsp)
	leaq	.L.str.10(%rip), %rdx
	leaq	520(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rsp), %r8                   # 8-byte Reload
.Ltmp45:                                # EH_LABEL
	leaq	544(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp46:                                # EH_LABEL
	jmp	.LBB22_8
.LBB22_8:
	leaq	520(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_10
.LBB22_9:
.Ltmp47:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	520(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_10:
	movq	560(%rsp), %rax
	addq	$24, %rax
	movq	%rax, 512(%rsp)
	movq	512(%rsp), %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	movq	%rax, 504(%rsp)
	movq	512(%rsp), %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	movq	%rax, 496(%rsp)
.LBB22_11:                              # =>This Inner Loop Header: Depth=1
	leaq	504(%rsp), %rcx
	leaq	496(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB22_12
	jmp	.LBB22_18
.LBB22_12:                              #   in Loop: Header=BB22_11 Depth=1
	leaq	504(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 492(%rsp)
	movl	492(%rsp), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_16
# %bb.13:                               #   in Loop: Header=BB22_11 Depth=1
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 488(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 480(%rsp)
	leaq	.L.str.11(%rip), %rdx
	leaq	456(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	80(%rsp), %r8                   # 8-byte Reload
.Ltmp48:                                # EH_LABEL
	leaq	480(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp49:                                # EH_LABEL
	jmp	.LBB22_14
.LBB22_14:                              #   in Loop: Header=BB22_11 Depth=1
	leaq	456(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_16
.LBB22_15:
.Ltmp50:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	456(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_16:                              #   in Loop: Header=BB22_11 Depth=1
	jmp	.LBB22_17
.LBB22_17:                              #   in Loop: Header=BB22_11 Depth=1
	leaq	504(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	jmp	.LBB22_11
.LBB22_18:
	jmp	.LBB22_56
.LBB22_19:
	jmp	.LBB22_56
.LBB22_20:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rdx
	addq	$160, %rdx
	movq	632(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 444(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 452(%rsp)
	leaq	444(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rax
	movl	192(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_24
# %bb.21:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 440(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 432(%rsp)
	leaq	.L.str.12(%rip), %rdx
	leaq	408(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp42:                                # EH_LABEL
	leaq	432(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp43:                                # EH_LABEL
	jmp	.LBB22_22
.LBB22_22:
	leaq	408(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_24
.LBB22_23:
.Ltmp44:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	408(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_24:
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpb	$2, 16(%rax)
	jne	.LBB22_26
# %bb.25:
	jmp	.LBB22_26
.LBB22_26:
	jmp	.LBB22_56
.LBB22_27:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rdx
	addq	$208, %rdx
	movq	632(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 396(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 404(%rsp)
	leaq	396(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	movq	632(%rsp), %rax
	addq	$296, %rax                      # imm = 0x128
	movq	%rax, 384(%rsp)
	movq	384(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 376(%rsp)
	movq	384(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 368(%rsp)
.LBB22_28:                              # =>This Inner Loop Header: Depth=1
	leaq	376(%rsp), %rcx
	leaq	368(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB22_29
	jmp	.LBB22_31
.LBB22_29:                              #   in Loop: Header=BB22_28 Depth=1
	leaq	376(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 360(%rsp)
	movq	360(%rsp), %rdx
	movq	632(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 348(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 356(%rsp)
	leaq	348(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
# %bb.30:                               #   in Loop: Header=BB22_28 Depth=1
	leaq	376(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev
	jmp	.LBB22_28
.LBB22_31:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rdx
	addq	$320, %rdx                      # imm = 0x140
	movq	632(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 336(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 344(%rsp)
	leaq	336(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	movq	632(%rsp), %rax
	cmpl	$-1, 352(%rax)
	je	.LBB22_36
# %bb.32:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rax
	movl	352(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_36
# %bb.33:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 328(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 320(%rsp)
	leaq	.L.str.13(%rip), %rdx
	leaq	296(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
.Ltmp39:                                # EH_LABEL
	leaq	320(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp40:                                # EH_LABEL
	jmp	.LBB22_34
.LBB22_34:
	leaq	296(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_36
.LBB22_35:
.Ltmp41:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	296(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_36:
	jmp	.LBB22_56
.LBB22_37:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rdx
	addq	$360, %rdx                      # imm = 0x168
	movq	632(%rsp), %rax
	movq	4(%rax), %r8
	movq	%r8, 284(%rsp)
	movl	12(%rax), %eax
	movl	%eax, 292(%rsp)
	leaq	284(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rax
	movl	480(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_41
# %bb.38:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 280(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 272(%rsp)
	leaq	.L.str.14(%rip), %rdx
	leaq	248(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
.Ltmp36:                                # EH_LABEL
	leaq	272(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp37:                                # EH_LABEL
	jmp	.LBB22_39
.LBB22_39:
	leaq	248(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_41
.LBB22_40:
.Ltmp38:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	248(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_41:
	jmp	.LBB22_56
.LBB22_42:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rax
	movl	484(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_46
# %bb.43:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 240(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 232(%rsp)
	leaq	.L.str.15(%rip), %rdx
	leaq	208(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp30:                                # EH_LABEL
	leaq	232(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp31:                                # EH_LABEL
	jmp	.LBB22_44
.LBB22_44:
	leaq	208(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_46
.LBB22_45:
.Ltmp32:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	208(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_46:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rax
	movl	488(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_50
# %bb.47:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 200(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 192(%rsp)
	leaq	.L.str.16(%rip), %rdx
	leaq	168(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
.Ltmp33:                                # EH_LABEL
	leaq	192(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp34:                                # EH_LABEL
	jmp	.LBB22_48
.LBB22_48:
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_50
.LBB22_49:
.Ltmp35:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_50:
	jmp	.LBB22_56
.LBB22_51:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	632(%rsp), %rax
	movl	484(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	testb	$1, %al
	jne	.LBB22_55
# %bb.52:
	movq	632(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 160(%rsp)
	movq	4(%rax), %rax
	movq	%rax, 152(%rsp)
	leaq	.L.str.17(%rip), %rdx
	leaq	128(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
.Ltmp27:                                # EH_LABEL
	leaq	152(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp28:                                # EH_LABEL
	jmp	.LBB22_53
.LBB22_53:
	leaq	128(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_55
.LBB22_54:
.Ltmp29:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 584(%rsp)
	movl	%eax, 580(%rsp)
	leaq	128(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB22_57
.LBB22_55:
	jmp	.LBB22_56
.LBB22_56:
	.seh_startepilogue
	addq	$648, %rsp                      # imm = 0x288
	.seh_endepilogue
	retq
.LBB22_57:
	movq	584(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end4:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI22_0:
	.long	.LBB22_1-.LJTI22_0
	.long	.LBB22_6-.LJTI22_0
	.long	.LBB22_19-.LJTI22_0
	.long	.LBB22_19-.LJTI22_0
	.long	.LBB22_20-.LJTI22_0
	.long	.LBB22_27-.LJTI22_0
	.long	.LBB22_37-.LJTI22_0
	.long	.LBB22_42-.LJTI22_0
	.long	.LBB22_51-.LJTI22_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table22:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp51-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin4          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp45-.Ltmp52                #   Call between .Ltmp52 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin4          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin4          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp42-.Ltmp49                #   Call between .Ltmp49 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin4          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp39-.Ltmp43                #   Call between .Ltmp43 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin4          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Ltmp36-.Ltmp40                #   Call between .Ltmp40 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin4          # >> Call Site 12 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin4          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin4          # >> Call Site 13 <<
	.uleb128 .Ltmp30-.Ltmp37                #   Call between .Ltmp37 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin4          # >> Call Site 14 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin4          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin4          # >> Call Site 15 <<
	.uleb128 .Ltmp33-.Ltmp31                #   Call between .Ltmp31 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin4          # >> Call Site 16 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin4          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin4          # >> Call Site 17 <<
	.uleb128 .Ltmp27-.Ltmp34                #   Call between .Ltmp34 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin4          # >> Call Site 18 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin4          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin4          # >> Call Site 19 <<
	.uleb128 .Lfunc_end4-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$528, %rcx                      # imm = 0x210
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_ # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
.Lfunc_begin5:
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rdx
.Ltmp54:                                # EH_LABEL
	leaq	87(%rsp), %rcx
	callq	_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
.Ltmp55:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB25_1
.LBB25_1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	leaq	56(%rsp), %rcx
	xorl	%edx, %edx
	movl	$24, %r8d
	callq	memset
	movq	88(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	88(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB25_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB25_3:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB25_4:
.Ltmp56:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table25:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp54-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin5          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp55-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp55            #   Call between .Ltmp55 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
                                        # -- End function
	.def	_ZN6apollo3mir15ValidationErrorD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir15ValidationErrorD2Ev,"xr",discard,_ZN6apollo3mir15ValidationErrorD2Ev
	.globl	_ZN6apollo3mir15ValidationErrorD2Ev # -- Begin function _ZN6apollo3mir15ValidationErrorD2Ev
	.p2align	4
_ZN6apollo3mir15ValidationErrorD2Ev:    # @_ZN6apollo3mir15ValidationErrorD2Ev
.seh_proc _ZN6apollo3mir15ValidationErrorD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	96(%rsp), %rax
	addq	$-40, %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
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
	je	.LBB28_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	jmp	.LBB28_4
.LBB28_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.LBB28_4:
	jmp	.LBB28_5
.LBB28_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	addq	$40, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
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
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
.Lfunc_begin6:
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
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
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp57:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp58:                                # EH_LABEL
	jmp	.LBB31_1
.LBB31_1:
	movq	72(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB31_2:
.Ltmp59:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table31:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp57-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin6          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
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
	imulq	$40, 32(%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	.globl	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_: # @_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
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
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB35_2
# %bb.1:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %rcx
	movq	16(%rdx), %rax
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rax
	movl	$40, %r8d
	cqto
	idivq	%r8
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB35_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin7:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp60:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp61:                                # EH_LABEL
	jmp	.LBB36_1
.LBB36_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB36_2:
.Ltmp62:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table36:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp60-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin7          #     jumps to .Ltmp62
	.byte	1                               #   On action: 1
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	imulq	$40, %rax, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$40, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
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
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_
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
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$40, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZN6apollo3mir15ValidationErrorC2EOS1_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir15ValidationErrorC2EOS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir15ValidationErrorC2EOS1_,"xr",discard,_ZN6apollo3mir15ValidationErrorC2EOS1_
	.globl	_ZN6apollo3mir15ValidationErrorC2EOS1_ # -- Begin function _ZN6apollo3mir15ValidationErrorC2EOS1_
	.p2align	4
_ZN6apollo3mir15ValidationErrorC2EOS1_: # @_ZN6apollo3mir15ValidationErrorC2EOS1_
.seh_proc _ZN6apollo3mir15ValidationErrorC2EOS1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	addq	$16, %rcx
	movq	40(%rsp), %rdx
	addq	$16, %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin8:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp63:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp64:                                # EH_LABEL
	jmp	.LBB46_1
.LBB46_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB46_2:
.Ltmp65:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table46:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp63-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin8          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
.Lfunc_begin9:
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp66:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp67:                                # EH_LABEL
	jmp	.LBB47_1
.LBB47_1:
	movq	96(%rsp), %rdx
	addq	$40, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp68:                                # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.Ltmp69:                                # EH_LABEL
	jmp	.LBB47_2
.LBB47_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB47_3:
.Ltmp70:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table47:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp66-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp69-.Ltmp66                #   Call between .Ltmp66 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin9          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp69            #   Call between .Ltmp69 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB48_2
# %bb.1:
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB48_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB48_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB48_5
.LBB48_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB48_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_: # @_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	cmpq	$0, 88(%rsp)
	jbe	.LBB49_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB49_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	imulq	$40, 80(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
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
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB53_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB53_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin10:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp71:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp72:                                # EH_LABEL
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
.Ltmp73:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table54:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp71-.Lfunc_begin10         # >> Call Site 1 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin10         #     jumps to .Ltmp73
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
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.5(%rip), %rcx
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	movl	$40, %ecx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
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
.Lfunc_begin11:
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
.Ltmp74:                                # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp75:                                # EH_LABEL
	jmp	.LBB65_1
.LBB65_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB65_2:
.Ltmp76:                                # EH_LABEL
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
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table65:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp74-.Lfunc_begin11         #   Call between .Lfunc_begin11 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin11         # >> Call Site 2 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin11         #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin11         # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp75           #   Call between .Ltmp75 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	imulq	$40, (%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB75_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB75_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y,"xr",discard,_ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y
	.globl	_ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y # -- Begin function _ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y
	.p2align	4
_ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y: # @_ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y
.seh_proc _ZNSt3__119__allocation_resultIPN6apollo3mir15ValidationErrorEyEC2B9nqe220103ES4_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	imulq	$40, 56(%rsp), %rax
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
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin12:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp77:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp78:                                # EH_LABEL
	jmp	.LBB80_1
.LBB80_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB80_2:
.Ltmp79:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table80:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp77-.Lfunc_begin12         # >> Call Site 1 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin12         #     jumps to .Ltmp79
	.byte	1                               #   On action: 1
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
.Lfunc_begin13:
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 160(%rsp)
	movq	%rdx, 152(%rsp)
	movq	%r8, 144(%rsp)
	movq	%r9, 136(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	160(%rsp), %rdx
	leaq	72(%rsp), %rcx
	leaq	128(%rsp), %r8
	leaq	136(%rsp), %r9
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	movq	152(%rsp), %rax
	movq	%rax, 64(%rsp)
.LBB82_1:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB82_5
# %bb.2:                                #   in Loop: Header=BB82_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %r8
.Ltmp82:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp83:                                # EH_LABEL
	jmp	.LBB82_3
.LBB82_3:                               #   in Loop: Header=BB82_1 Depth=1
	movq	64(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 64(%rsp)
	movq	136(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB82_1
.LBB82_4:
.Ltmp84:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
	jmp	.LBB82_7
.LBB82_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev
	movq	160(%rsp), %rcx
	movq	152(%rsp), %rdx
	movq	144(%rsp), %r8
.Ltmp80:                                # EH_LABEL
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_
.Ltmp81:                                # EH_LABEL
	jmp	.LBB82_6
.LBB82_6:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB82_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
	.seh_endproc
	.section	.xdata$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table82:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp82-.Lfunc_begin13         #   Call between .Lfunc_begin13 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin13         # >> Call Site 2 <<
	.uleb128 .Ltmp81-.Ltmp82                #   Call between .Ltmp82 and .Ltmp81
	.uleb128 .Ltmp84-.Lfunc_begin13         #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin13         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp81           #   Call between .Ltmp81 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin14:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp85:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp86:                                # EH_LABEL
	jmp	.LBB84_1
.LBB84_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB84_2:
.Ltmp87:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table84:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp85-.Lfunc_begin14         # >> Call Site 1 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin14         #     jumps to .Ltmp87
	.byte	1                               #   On action: 1
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.p2align	4
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
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
	movq	%rcx, (%rax)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%rax)
	.seh_startepilogue
	addq	$32, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	$1, 24(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
.LBB88_1:                               # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	je	.LBB88_4
# %bb.2:                                #   in Loop: Header=BB88_1 Depth=1
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB88_1 Depth=1
	movq	40(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB88_1
.LBB88_4:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
.Lfunc_begin15:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB89_3
# %bb.1:
.Ltmp88:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev
.Ltmp89:                                # EH_LABEL
	jmp	.LBB89_2
.LBB89_2:
	jmp	.LBB89_3
.LBB89_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB89_4:
.Ltmp90:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table89:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp88-.Lfunc_begin15         # >> Call Site 1 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin15         #     jumps to .Ltmp90
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
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEC2B9nqe220103ES8_
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
	movb	$0, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN6apollo3mir15ValidationErrorD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev
	.p2align	4
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	testb	$1, %al
	jne	.LBB94_2
	jmp	.LBB94_4
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB94_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev
	jmp	.LBB94_1
.LBB94_4:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_ # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_: # @_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEC2B9nqe220103ES4_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE,"xr",discard,_ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.globl	_ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE # -- Begin function _ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.p2align	4
_ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE: # @_ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
.seh_proc _ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$-40, %rax
	movq	%rax, (%rsp)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev: # @_ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	addq	$-40, %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
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
	.def	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y
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
	callq	_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$40, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
.Lfunc_begin16:
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB107_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB107_4
# %bb.2:                                #   in Loop: Header=BB107_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-40, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp91:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp92:                                # EH_LABEL
	jmp	.LBB107_3
.LBB107_3:                              #   in Loop: Header=BB107_1 Depth=1
	jmp	.LBB107_1
.LBB107_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB107_5:
.Ltmp93:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table107:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp91-.Lfunc_begin16         # >> Call Site 1 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin16         #     jumps to .Ltmp93
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
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y,"xr",discard,_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y
	.globl	_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y # -- Begin function _ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y
	.p2align	4
_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y: # @_ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y
.seh_proc _ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	imulq	$40, 56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB109_1
	jmp	.LBB109_2
.LBB109_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB109_3
.LBB109_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB109_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_,"xr",discard,_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
	.globl	_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_ # -- Begin function _ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
	.p2align	4
_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_: # @_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
.seh_proc _ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB110_2
# %bb.1:
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
.LBB110_2:
	movq	40(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
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
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
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
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	56(%rsp), %r8
	addq	$1, %r8
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	nop
	.seh_startepilogue
	addq	$72, %rsp
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
	jne	.LBB113_1
	jmp	.LBB113_2
.LBB113_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB113_3
.LBB113_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB113_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin17:
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	1(%rax,%rdx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	1(%rax,%r8), %r8
.Ltmp94:                                # EH_LABEL
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp95:                                # EH_LABEL
	jmp	.LBB114_1
.LBB114_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB114_2:
.Ltmp96:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table114:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp94-.Lfunc_begin17         # >> Call Site 1 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin17         #     jumps to .Ltmp96
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
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
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
	jne	.LBB117_1
	jmp	.LBB117_2
.LBB117_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB117_3
.LBB117_2:
	movl	$23, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB117_3
.LBB117_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
	.seh_startepilogue
	addq	$56, %rsp
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
	jne	.LBB119_1
	jmp	.LBB119_2
.LBB119_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB119_3
.LBB119_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB119_3:
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
	.def	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.globl	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_: # @_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.globl	_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_: # @_ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
.seh_proc _ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.globl	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_: # @_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.globl	_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_: # @_ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
.seh_proc _ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
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
	.def	_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE: # @_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
.Lfunc_begin18:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 160(%rsp)
	movq	176(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	168(%rsp), %rax
	movl	(%rax), %edx
	callq	_ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj
	testb	$1, %al
	jne	.LBB136_4
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	8(%rax), %ecx
	movl	%ecx, 152(%rsp)
	movq	(%rax), %rax
	movq	%rax, 144(%rsp)
	leaq	.L.str.7(%rip), %rdx
	leaq	120(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp97:                                # EH_LABEL
	leaq	144(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp98:                                # EH_LABEL
	jmp	.LBB136_2
.LBB136_2:
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB136_8
.LBB136_3:
.Ltmp99:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 112(%rsp)
	movl	%eax, 108(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB136_9
.LBB136_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	168(%rsp), %rcx
	movq	(%rax), %rdx
	movq	8(%rax), %r8
	callq	_ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE
	cmpq	$0, %rax
	jne	.LBB136_8
# %bb.5:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	8(%rax), %ecx
	movl	%ecx, 104(%rsp)
	movq	(%rax), %rax
	movq	%rax, 96(%rsp)
	leaq	.L.str.8(%rip), %rdx
	leaq	72(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
.Ltmp100:                               # EH_LABEL
	leaq	96(%rsp), %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
.Ltmp101:                               # EH_LABEL
	jmp	.LBB136_6
.LBB136_6:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB136_8
.LBB136_7:
.Ltmp102:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 112(%rsp)
	movl	%eax, 108(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB136_9
.LBB136_8:
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
.LBB136_9:
	movq	112(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end18:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table136:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp97-.Lfunc_begin18         #   Call between .Lfunc_begin18 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin18         # >> Call Site 2 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin18         #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin18         # >> Call Site 3 <<
	.uleb128 .Ltmp100-.Ltmp98               #   Call between .Ltmp98 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin18        #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin18        # >> Call Site 5 <<
	.uleb128 .Lfunc_end18-.Ltmp101          #   Call between .Ltmp101 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_19Validator11checkRvalueERKNS0_6RvalueENS0_4SpanE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19Validator11checkRvalueERKNS0_6RvalueENS0_4SpanE
_ZN6apollo3mir12_GLOBAL__N_19Validator11checkRvalueERKNS0_6RvalueENS0_4SpanE: # @_ZN6apollo3mir12_GLOBAL__N_19Validator11checkRvalueERKNS0_6RvalueENS0_4SpanE
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19Validator11checkRvalueERKNS0_6RvalueENS0_4SpanE
# %bb.0:
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 160(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	168(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	subq	$12, %rax
	ja	.LBB137_10
# %bb.11:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI137_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB137_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	168(%rsp), %rdx
	addq	$8, %rdx
	movq	(%rax), %r8
	movq	%r8, 148(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 156(%rsp)
	leaq	148(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	jmp	.LBB137_10
.LBB137_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	168(%rsp), %rdx
	addq	$8, %rdx
	movq	(%rax), %r8
	movq	%r8, 136(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 144(%rsp)
	leaq	136(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	168(%rsp), %rdx
	addq	$96, %rdx
	movq	(%rax), %r8
	movq	%r8, 124(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 132(%rsp)
	leaq	124(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	jmp	.LBB137_10
.LBB137_3:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	168(%rsp), %rdx
	addq	$192, %rdx
	movq	(%rax), %r8
	movq	%r8, 112(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 120(%rsp)
	leaq	112(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	jmp	.LBB137_10
.LBB137_4:
	movq	168(%rsp), %rax
	addq	$256, %rax                      # imm = 0x100
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	104(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 88(%rsp)
.LBB137_5:                              # =>This Inner Loop Header: Depth=1
	leaq	96(%rsp), %rcx
	leaq	88(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB137_6
	jmp	.LBB137_8
.LBB137_6:                              #   in Loop: Header=BB137_5 Depth=1
	leaq	96(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rdx, 80(%rsp)
	movq	80(%rsp), %rdx
	movq	(%rax), %r8
	movq	%r8, 68(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 76(%rsp)
	leaq	68(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
# %bb.7:                                #   in Loop: Header=BB137_5 Depth=1
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev
	jmp	.LBB137_5
.LBB137_8:
	jmp	.LBB137_10
.LBB137_9:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	168(%rsp), %rdx
	addq	$8, %rdx
	movq	(%rax), %r8
	movq	%r8, 56(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 64(%rsp)
	leaq	56(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	nop
.LBB137_10:
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI137_0:
	.long	.LBB137_1-.LJTI137_0
	.long	.LBB137_1-.LJTI137_0
	.long	.LBB137_3-.LJTI137_0
	.long	.LBB137_3-.LJTI137_0
	.long	.LBB137_3-.LJTI137_0
	.long	.LBB137_1-.LJTI137_0
	.long	.LBB137_2-.LJTI137_0
	.long	.LBB137_2-.LJTI137_0
	.long	.LBB137_1-.LJTI137_0
	.long	.LBB137_3-.LJTI137_0
	.long	.LBB137_4-.LJTI137_0
	.long	.LBB137_9-.LJTI137_0
	.long	.LBB137_3-.LJTI137_0
	.text
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj
_ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj: # @_ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj
.seh_proc _ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rax
	movl	44(%rsp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE: # @_ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
.seh_proc _ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB139_2
# %bb.1:
	movq	72(%rsp), %rax
	cmpb	$1, (%rax)
	jne	.LBB139_3
.LBB139_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	72(%rsp), %rdx
	addq	$8, %rdx
	movq	(%rax), %r8
	movq	%r8, 52(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 60(%rsp)
	leaq	52(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	nop
.LBB139_3:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$88, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.globl	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_: # @_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.globl	_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_: # @_ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
.seh_proc _ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev
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
	.def	_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj: # @_ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
.seh_proc _ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rax
	movl	44(%rsp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
	.globl	_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_: # @_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
.seh_proc _ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$528, %ecx                      # imm = 0x210
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_ # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
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
	.def	_ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_,"xr",discard,_ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_
	.globl	_ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_ # -- Begin function _ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_
	.p2align	4
_ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_: # @_ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_
.seh_proc _ZNSt3__111__wrap_iterIPKjEC2B9nqe220103ES2_
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
	.def	_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev
.Lfunc_begin19:
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp103:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
.Ltmp104:                               # EH_LABEL
	jmp	.LBB162_1
.LBB162_1:
.Ltmp105:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp106:                               # EH_LABEL
	jmp	.LBB162_2
.LBB162_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB162_3:
.Ltmp107:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table162:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp103-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp106-.Ltmp103              #   Call between .Ltmp103 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin19        #     jumps to .Ltmp107
	.byte	1                               #   On action: 1
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
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
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB164_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB164_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
.Lfunc_begin20:
.seh_proc _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
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
.LBB166_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB166_4
# %bb.2:                                #   in Loop: Header=BB166_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-40, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp108:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp109:                               # EH_LABEL
	jmp	.LBB166_3
.LBB166_3:                              #   in Loop: Header=BB166_1 Depth=1
	jmp	.LBB166_1
.LBB166_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB166_5:
.Ltmp110:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end20:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table166:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp108-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin20        #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
                                        # -- End function
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"Body must have at least a return local"

.L.str.1:                               # @.str.1
	.asciz	"Local 0 must be the return pointer"

.L.str.2:                               # @.str.2
	.asciz	"arg_count exceeds locals"

.L.str.3:                               # @.str.3
	.asciz	"Local _"

.L.str.4:                               # @.str.4
	.asciz	" must be Arg"

.L.str.5:                               # @.str.5
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

	.section	.rdata,"dr"
.L.str.6:                               # @.str.6
	.asciz	"Storage*: local out of range"

.L.str.7:                               # @.str.7
	.asciz	"Place::local out of range"

.L.str.8:                               # @.str.8
	.asciz	"Place projection inconsistent with local type"

.L.str.9:                               # @.str.9
	.asciz	"Goto: target out of range"

.L.str.10:                              # @.str.10
	.asciz	"SwitchInt: targets.size != values.size + 1"

.L.str.11:                              # @.str.11
	.asciz	"SwitchInt: target out of range"

.L.str.12:                              # @.str.12
	.asciz	"Drop: target out of range"

.L.str.13:                              # @.str.13
	.asciz	"Call: target out of range"

.L.str.14:                              # @.str.14
	.asciz	"Assert: target out of range"

.L.str.15:                              # @.str.15
	.asciz	"FalseEdge: real target out of range"

.L.str.16:                              # @.str.16
	.asciz	"FalseEdge: imaginary target out of range"

.L.str.17:                              # @.str.17
	.asciz	"FalseUnwind: target out of range"

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
	.long	.Ltmp112-.Ltmp111               # Subsection size
.Ltmp111:
	.short	.Ltmp114-.Ltmp113               # Record length
.Ltmp113:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp114:
	.short	.Ltmp116-.Ltmp115               # Record length
.Ltmp115:
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
.Ltmp116:
.Ltmp112:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_19Validator3runEv
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_19Validator4emitENS0_4SpanENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
	.addrsig_sym _ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_
	.addrsig_sym _ZNSt3__19to_stringEj
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir14BasicBlockDataEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEdeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_19Validator14checkStatementERKNS0_9StatementE
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_19Validator15checkTerminatorERKNS0_10TerminatorE
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_S5_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEEEvPKvS7_S7_S7_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IN6apollo3mir15ValidationErrorEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
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
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir15ValidationErrorEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EEvRT_T0_S9_S9_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS5_EEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_S6_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir15ValidationErrorEEEvPT_
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir15ValidationErrorEEEPS4_EclB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir15ValidationErrorEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB9nqe220103IPN6apollo3mir15ValidationErrorES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo3mir15ValidationErrorEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir15ValidationErrorEEEE10deallocateB9nqe220103ERS5_PS4_y
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__19allocatorIN6apollo3mir15ValidationErrorEE10deallocateB9nqe220103EPS3_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir15ValidationErrorEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	.addrsig_sym _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.addrsig_sym _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.addrsig_sym strlen
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEyPKc
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir14BasicBlockDataEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_19Validator10checkPlaceERKNS0_5PlaceENS0_4SpanE
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_19Validator11checkRvalueERKNS0_6RvalueENS0_4SpanE
	.addrsig_sym _ZNK6apollo3mir12_GLOBAL__N_19Validator7localOkEj
	.addrsig_sym _ZN6apollo3mir7placeTyERKNS0_5PlaceERKNS0_4BodyERKNS0_6TyCtxtE
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_19Validator12checkOperandERKNS0_7OperandENS0_4SpanE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir7OperandEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir7OperandEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir7OperandEE4baseB9nqe220103Ev
	.addrsig_sym _ZNK6apollo3mir12_GLOBAL__N_19Validator4bbOkEj
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir15ValidationErrorENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
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
