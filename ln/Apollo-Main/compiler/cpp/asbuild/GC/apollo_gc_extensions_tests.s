	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"apollo_gc_extensions_tests.cpp"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	main                            # -- Begin function main
	.p2align	4
main:                                   # @main
.seh_proc main
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$48, %rsp
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
	.seh_setframe %rbp, 48
	.seh_endprologue
	callq	__main
	movl	$0, -4(%rbp)
	callq	_ZN12_GLOBAL__N_127test_card_register_and_markEv
	callq	_ZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEv
	callq	_ZN12_GLOBAL__N_133test_type_descriptor_registrationEv
	callq	_ZN12_GLOBAL__N_138test_allocate_typed_uses_generic_traceEv
	callq	_ZN12_GLOBAL__N_147test_large_alloc_above_threshold_routed_to_spanEv
	callq	_ZN12_GLOBAL__N_137test_large_alloc_swept_when_unreachedEv
	cmpl	$0, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rcx
	callq	printf
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %edx
	leaq	.L.str.1(%rip), %rcx
	callq	printf
	movl	$1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN12_GLOBAL__N_127test_card_register_and_markEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_127test_card_register_and_markEv
_ZN12_GLOBAL__N_127test_card_register_and_markEv: # @_ZN12_GLOBAL__N_127test_card_register_and_markEv
.Lfunc_begin0:
.seh_proc _ZN12_GLOBAL__N_127test_card_register_and_markEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	leaq	72(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZN6apollo2gc9CardTableC2Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp0:                                 # EH_LABEL
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap+8192(%rip), %r8
	callq	_ZN6apollo2gc9CardTable14register_rangeEPKvS3_
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB1_1
.LBB1_1:
	jmp	.LBB1_2
.LBB1_2:
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	callq	_ZNK6apollo2gc9CardTable6coversEPKv
	testb	$1, %al
	jne	.LBB1_6
# %bb.3:
.Ltmp2:                                 # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.3(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$28, %r9d
	callq	printf
.Ltmp3:                                 # EH_LABEL
	jmp	.LBB1_4
.LBB1_4:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jmp	.LBB1_6
.LBB1_5:
.Ltmp26:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo2gc9CardTableD2Ev
	jmp	.LBB1_65
.LBB1_6:
	jmp	.LBB1_7
.LBB1_7:
	jmp	.LBB1_8
.LBB1_8:
	jmp	.LBB1_9
.LBB1_9:
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$1024, %rdx                     # imm = 0x400
	callq	_ZNK6apollo2gc9CardTable6coversEPKv
	testb	$1, %al
	jne	.LBB1_12
# %bb.10:
.Ltmp4:                                 # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.5(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$29, %r9d
	callq	printf
.Ltmp5:                                 # EH_LABEL
	jmp	.LBB1_11
.LBB1_11:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_12:
	jmp	.LBB1_13
.LBB1_13:
	jmp	.LBB1_14
.LBB1_14:
	jmp	.LBB1_15
.LBB1_15:
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$-1, %rdx
	callq	_ZNK6apollo2gc9CardTable6coversEPKv
	testb	$1, %al
	jne	.LBB1_16
	jmp	.LBB1_18
.LBB1_16:
.Ltmp6:                                 # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.6(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$30, %r9d
	callq	printf
.Ltmp7:                                 # EH_LABEL
	jmp	.LBB1_17
.LBB1_17:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_18:
	jmp	.LBB1_19
.LBB1_19:
	jmp	.LBB1_20
.LBB1_20:
	jmp	.LBB1_21
.LBB1_21:
	leaq	72(%rsp), %rcx
	callq	_ZNK6apollo2gc9CardTable11dirty_countEv
	cmpq	$0, %rax
	je	.LBB1_24
# %bb.22:
.Ltmp8:                                 # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$31, %r9d
	callq	printf
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB1_23
.LBB1_23:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_24:
	jmp	.LBB1_25
.LBB1_25:
	jmp	.LBB1_26
.LBB1_26:
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$600, %rdx                      # imm = 0x258
	callq	_ZN6apollo2gc9CardTable10mark_dirtyEPKv
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$1500, %rdx                     # imm = 0x5DC
	callq	_ZN6apollo2gc9CardTable10mark_dirtyEPKv
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$600, %rdx                      # imm = 0x258
	callq	_ZN6apollo2gc9CardTable10mark_dirtyEPKv
# %bb.27:
	leaq	72(%rsp), %rcx
	callq	_ZNK6apollo2gc9CardTable11dirty_countEv
	cmpq	$2, %rax
	je	.LBB1_30
# %bb.28:
.Ltmp10:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$35, %r9d
	callq	printf
.Ltmp11:                                # EH_LABEL
	jmp	.LBB1_29
.LBB1_29:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_30:
	jmp	.LBB1_31
.LBB1_31:
	jmp	.LBB1_32
.LBB1_32:
	jmp	.LBB1_33
.LBB1_33:
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$600, %rdx                      # imm = 0x258
	callq	_ZNK6apollo2gc9CardTable8is_dirtyEPKv
	testb	$1, %al
	jne	.LBB1_36
# %bb.34:
.Ltmp12:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.9(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$36, %r9d
	callq	printf
.Ltmp13:                                # EH_LABEL
	jmp	.LBB1_35
.LBB1_35:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_36:
	jmp	.LBB1_37
.LBB1_37:
	jmp	.LBB1_38
.LBB1_38:
	jmp	.LBB1_39
.LBB1_39:
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$700, %rdx                      # imm = 0x2BC
	callq	_ZNK6apollo2gc9CardTable8is_dirtyEPKv
	testb	$1, %al
	jne	.LBB1_42
# %bb.40:
.Ltmp14:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.10(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$37, %r9d
	callq	printf
.Ltmp15:                                # EH_LABEL
	jmp	.LBB1_41
.LBB1_41:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_42:
	jmp	.LBB1_43
.LBB1_43:
	jmp	.LBB1_44
.LBB1_44:
	jmp	.LBB1_45
.LBB1_45:
	leaq	72(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap(%rip), %rdx
	addq	$200, %rdx
	callq	_ZNK6apollo2gc9CardTable8is_dirtyEPKv
	testb	$1, %al
	jne	.LBB1_46
	jmp	.LBB1_48
.LBB1_46:
.Ltmp16:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.11(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$38, %r9d
	callq	printf
.Ltmp17:                                # EH_LABEL
	jmp	.LBB1_47
.LBB1_47:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_48:
	jmp	.LBB1_49
.LBB1_49:
	jmp	.LBB1_50
.LBB1_50:
	movl	$0, 56(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 48(%rsp)
.Ltmp18:                                # EH_LABEL
	leaq	72(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNK6apollo2gc9CardTable14for_each_dirtyIZN12_GLOBAL__N_127test_card_register_and_markEvE3$_0EEvOT_
.Ltmp19:                                # EH_LABEL
	jmp	.LBB1_51
.LBB1_51:
	jmp	.LBB1_52
.LBB1_52:
	cmpl	$2, 56(%rsp)
	je	.LBB1_55
# %bb.53:
.Ltmp20:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.12(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$41, %r9d
	callq	printf
.Ltmp21:                                # EH_LABEL
	jmp	.LBB1_54
.LBB1_54:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_55:
	jmp	.LBB1_56
.LBB1_56:
	jmp	.LBB1_57
.LBB1_57:
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo2gc9CardTable9clear_allEv
# %bb.58:
	leaq	72(%rsp), %rcx
	callq	_ZNK6apollo2gc9CardTable11dirty_countEv
	cmpq	$0, %rax
	je	.LBB1_61
# %bb.59:
.Ltmp22:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$43, %r9d
	callq	printf
.Ltmp23:                                # EH_LABEL
	jmp	.LBB1_60
.LBB1_60:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_61:
	jmp	.LBB1_62
.LBB1_62:
	jmp	.LBB1_63
.LBB1_63:
.Ltmp24:                                # EH_LABEL
	leaq	.L.str.13(%rip), %rcx
	callq	printf
.Ltmp25:                                # EH_LABEL
	jmp	.LBB1_64
.LBB1_64:
	leaq	72(%rsp), %rcx
	callq	_ZN6apollo2gc9CardTableD2Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB1_65:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Lfunc_end0-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEv
_ZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEv: # @_ZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEv
.seh_proc _ZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	callq	_ZN6apollo2gc17global_card_tableEv
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	leaq	_ZZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEvE6region(%rip), %rdx
	movq	%rdx, %r8
	addq	$1024, %r8                      # imm = 0x400
	callq	_ZN6apollo2gc9CardTable14register_rangeEPKvS3_
	movq	48(%rsp), %rcx
	callq	_ZNK6apollo2gc9CardTable11dirty_countEv
	movq	%rax, 40(%rsp)
	leaq	_ZZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEvE6region(%rip), %rcx
	addq	$100, %rcx
	callq	_ZN6apollo2gc15note_card_dirtyEPKv
	movq	48(%rsp), %rcx
	callq	_ZNK6apollo2gc9CardTable11dirty_countEv
	movq	%rax, 32(%rsp)
# %bb.1:
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB2_3
# %bb.2:
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.14(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$57, %r9d
	callq	printf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB2_3:
	jmp	.LBB2_4
.LBB2_4:
	leaq	.L.str.15(%rip), %rcx
	callq	printf
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN12_GLOBAL__N_133test_type_descriptor_registrationEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_133test_type_descriptor_registrationEv
_ZN12_GLOBAL__N_133test_type_descriptor_registrationEv: # @_ZN12_GLOBAL__N_133test_type_descriptor_registrationEv
.seh_proc _ZN12_GLOBAL__N_133test_type_descriptor_registrationEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	callq	_ZN6apollo2gc20global_type_registryEv
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	leaq	_ZN12_GLOBAL__N_19kPairDescE(%rip), %rdx
	callq	_ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
	andb	$1, %al
	movb	%al, 47(%rsp)
# %bb.1:
	testb	$1, 47(%rsp)
	jne	.LBB3_3
# %bb.2:
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.16(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$89, %r9d
	callq	printf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB3_3:
	jmp	.LBB3_4
.LBB3_4:
	movq	48(%rsp), %rcx
	leaq	_ZN12_GLOBAL__N_19kPairDescE(%rip), %rdx
	callq	_ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
	andb	$1, %al
	movb	%al, 46(%rsp)
# %bb.5:
	testb	$1, 46(%rsp)
	je	.LBB3_7
# %bb.6:
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.17(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$92, %r9d
	callq	printf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB3_7:
	jmp	.LBB3_8
.LBB3_8:
	movq	48(%rsp), %rcx
	movl	$42, %edx
	callq	_ZNK6apollo2gc12TypeRegistry6lookupEt
	movq	%rax, 32(%rsp)
# %bb.9:
	cmpq	$0, 32(%rsp)
	jne	.LBB3_11
# %bb.10:
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.18(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$94, %r9d
	callq	printf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB3_11:
	jmp	.LBB3_12
.LBB3_12:
	jmp	.LBB3_13
.LBB3_13:
	movq	32(%rsp), %rax
	movzwl	12(%rax), %eax
	cmpl	$2, %eax
	je	.LBB3_15
# %bb.14:
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.19(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$95, %r9d
	callq	printf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB3_15:
	jmp	.LBB3_16
.LBB3_16:
	jmp	.LBB3_17
.LBB3_17:
	movq	32(%rsp), %rax
	movq	40(%rax), %rcx
	leaq	.L.str.20(%rip), %rdx
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_19
# %bb.18:
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.21(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$96, %r9d
	callq	printf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB3_19:
	jmp	.LBB3_20
.LBB3_20:
	jmp	.LBB3_21
.LBB3_21:
	movq	48(%rsp), %rcx
	movl	$9999, %edx                     # imm = 0x270F
	callq	_ZNK6apollo2gc12TypeRegistry6lookupEt
	cmpq	$0, %rax
	je	.LBB3_23
# %bb.22:
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.22(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$97, %r9d
	callq	printf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB3_23:
	jmp	.LBB3_24
.LBB3_24:
	leaq	.L.str.23(%rip), %rcx
	callq	printf
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN12_GLOBAL__N_138test_allocate_typed_uses_generic_traceEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_138test_allocate_typed_uses_generic_traceEv
_ZN12_GLOBAL__N_138test_allocate_typed_uses_generic_traceEv: # @_ZN12_GLOBAL__N_138test_allocate_typed_uses_generic_traceEv
.Lfunc_begin1:
.seh_proc _ZN12_GLOBAL__N_138test_allocate_typed_uses_generic_traceEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$632, %rsp                      # imm = 0x278
	.seh_stackalloc 632
	.seh_endprologue
	leaq	584(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6ConfigC2Ev
	movb	$0, 612(%rsp)
	movb	$0, 613(%rsp)
	movups	584(%rsp), %xmm0
	movups	600(%rsp), %xmm1
	movups	616(%rsp), %xmm2
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	leaq	136(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	80(%rsp), %rdx
	callq	_ZN6apollo2gc7RuntimeC1ENS1_6ConfigE
	movq	32(%rsp), %rcx                  # 8-byte Reload
.Ltmp27:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6attachEv
.Ltmp28:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB4_1
.LBB4_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rcx
	movl	$42, %edx
	callq	_ZN6apollo2gc14allocate_typedERNS0_7MutatorEt
	movq	%rax, 48(%rsp)
# %bb.2:
	cmpq	$0, 48(%rsp)
	jne	.LBB4_6
# %bb.3:
.Ltmp29:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.24(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$108, %r9d
	callq	printf
.Ltmp30:                                # EH_LABEL
	jmp	.LBB4_4
.LBB4_4:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jmp	.LBB4_6
.LBB4_5:
.Ltmp39:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	136(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	jmp	.LBB4_23
.LBB4_6:
	jmp	.LBB4_7
.LBB4_7:
	jmp	.LBB4_8
.LBB4_8:
	jmp	.LBB4_9
.LBB4_9:
	movq	48(%rsp), %rax
	movzwl	12(%rax), %eax
	cmpl	$42, %eax
	je	.LBB4_12
# %bb.10:
.Ltmp31:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.25(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$109, %r9d
	callq	printf
.Ltmp32:                                # EH_LABEL
	jmp	.LBB4_11
.LBB4_11:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB4_12:
	jmp	.LBB4_13
.LBB4_13:
	jmp	.LBB4_14
.LBB4_14:
	jmp	.LBB4_15
.LBB4_15:
	movq	48(%rsp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB4_18
# %bb.16:
.Ltmp33:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.26(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$111, %r9d
	callq	printf
.Ltmp34:                                # EH_LABEL
	jmp	.LBB4_17
.LBB4_17:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB4_18:
	jmp	.LBB4_19
.LBB4_19:
	jmp	.LBB4_20
.LBB4_20:
.Ltmp35:                                # EH_LABEL
	leaq	136(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6detachEv
.Ltmp36:                                # EH_LABEL
	jmp	.LBB4_21
.LBB4_21:
.Ltmp37:                                # EH_LABEL
	leaq	.L.str.27(%rip), %rcx
	callq	printf
.Ltmp38:                                # EH_LABEL
	jmp	.LBB4_22
.LBB4_22:
	leaq	136(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	nop
	.seh_startepilogue
	addq	$632, %rsp                      # imm = 0x278
	.seh_endepilogue
	retq
.LBB4_23:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp27-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp27                #   Call between .Ltmp27 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_147test_large_alloc_above_threshold_routed_to_spanEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_147test_large_alloc_above_threshold_routed_to_spanEv
_ZN12_GLOBAL__N_147test_large_alloc_above_threshold_routed_to_spanEv: # @_ZN12_GLOBAL__N_147test_large_alloc_above_threshold_routed_to_spanEv
.Lfunc_begin2:
.seh_proc _ZN12_GLOBAL__N_147test_large_alloc_above_threshold_routed_to_spanEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$664, %rsp                      # imm = 0x298
	.seh_stackalloc 664
	.seh_endprologue
	leaq	616(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6ConfigC2Ev
	movb	$0, 644(%rsp)
	movb	$0, 645(%rsp)
	movups	616(%rsp), %xmm0
	movups	632(%rsp), %xmm1
	movups	648(%rsp), %xmm2
	movaps	%xmm2, 144(%rsp)
	movaps	%xmm1, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	leaq	168(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	112(%rsp), %rdx
	callq	_ZN6apollo2gc7RuntimeC1ENS1_6ConfigE
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp40:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6attachEv
.Ltmp41:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB5_1
.LBB5_1:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 104(%rsp)
	callq	_ZN6apollo2gc22global_large_allocatorEv
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNK6apollo2gc14LargeAllocator15live_span_countEv
	movq	%rax, 72(%rsp)
	movq	104(%rsp), %rcx
	movl	$64, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	_ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 64(%rsp)
# %bb.2:
	cmpq	$0, 64(%rsp)
	jne	.LBB5_6
# %bb.3:
.Ltmp42:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.28(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$130, %r9d
	callq	printf
.Ltmp43:                                # EH_LABEL
	jmp	.LBB5_4
.LBB5_4:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jmp	.LBB5_6
.LBB5_5:
.Ltmp56:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 96(%rsp)
	movl	%eax, 92(%rsp)
	leaq	168(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	jmp	.LBB5_35
.LBB5_6:
	jmp	.LBB5_7
.LBB5_7:
	jmp	.LBB5_8
.LBB5_8:
	jmp	.LBB5_9
.LBB5_9:
	movq	80(%rsp), %rcx
	callq	_ZNK6apollo2gc14LargeAllocator15live_span_countEv
	cmpq	72(%rsp), %rax
	je	.LBB5_12
# %bb.10:
.Ltmp44:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.29(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$131, %r9d
	callq	printf
.Ltmp45:                                # EH_LABEL
	jmp	.LBB5_11
.LBB5_11:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB5_12:
	jmp	.LBB5_13
.LBB5_13:
	jmp	.LBB5_14
.LBB5_14:
	movq	104(%rsp), %rcx
	movl	$32784, %edx                    # imm = 0x8010
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	_ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 56(%rsp)
# %bb.15:
	cmpq	$0, 56(%rsp)
	jne	.LBB5_18
# %bb.16:
.Ltmp46:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.30(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$134, %r9d
	callq	printf
.Ltmp47:                                # EH_LABEL
	jmp	.LBB5_17
.LBB5_17:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB5_18:
	jmp	.LBB5_19
.LBB5_19:
	jmp	.LBB5_20
.LBB5_20:
	jmp	.LBB5_21
.LBB5_21:
	movq	80(%rsp), %rcx
	callq	_ZNK6apollo2gc14LargeAllocator15live_span_countEv
	movq	72(%rsp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB5_24
# %bb.22:
.Ltmp48:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.31(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$135, %r9d
	callq	printf
.Ltmp49:                                # EH_LABEL
	jmp	.LBB5_23
.LBB5_23:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB5_24:
	jmp	.LBB5_25
.LBB5_25:
	jmp	.LBB5_26
.LBB5_26:
	jmp	.LBB5_27
.LBB5_27:
	movq	56(%rsp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_30
# %bb.28:
.Ltmp50:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.32(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$136, %r9d
	callq	printf
.Ltmp51:                                # EH_LABEL
	jmp	.LBB5_29
.LBB5_29:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB5_30:
	jmp	.LBB5_31
.LBB5_31:
	jmp	.LBB5_32
.LBB5_32:
.Ltmp52:                                # EH_LABEL
	leaq	168(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6detachEv
.Ltmp53:                                # EH_LABEL
	jmp	.LBB5_33
.LBB5_33:
	movq	80(%rsp), %rcx
	callq	_ZNK6apollo2gc14LargeAllocator15live_span_countEv
	movq	%rax, %rdx
.Ltmp54:                                # EH_LABEL
	leaq	.L.str.33(%rip), %rcx
	callq	printf
.Ltmp55:                                # EH_LABEL
	jmp	.LBB5_34
.LBB5_34:
	leaq	168(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	nop
	.seh_startepilogue
	addq	$664, %rsp                      # imm = 0x298
	.seh_endepilogue
	retq
.LBB5_35:
	movq	96(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp55-.Ltmp40                #   Call between .Ltmp40 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp55            #   Call between .Ltmp55 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_137test_large_alloc_swept_when_unreachedEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_137test_large_alloc_swept_when_unreachedEv
_ZN12_GLOBAL__N_137test_large_alloc_swept_when_unreachedEv: # @_ZN12_GLOBAL__N_137test_large_alloc_swept_when_unreachedEv
.Lfunc_begin3:
.seh_proc _ZN12_GLOBAL__N_137test_large_alloc_swept_when_unreachedEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$648, %rsp                      # imm = 0x288
	.seh_stackalloc 648
	.seh_endprologue
	leaq	600(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6ConfigC2Ev
	movb	$0, 628(%rsp)
	movb	$0, 629(%rsp)
	movups	600(%rsp), %xmm0
	movups	616(%rsp), %xmm1
	movups	632(%rsp), %xmm2
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	leaq	152(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	96(%rsp), %rdx
	callq	_ZN6apollo2gc7RuntimeC1ENS1_6ConfigE
	movq	32(%rsp), %rcx                  # 8-byte Reload
.Ltmp57:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6attachEv
.Ltmp58:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB6_1
.LBB6_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 88(%rsp)
	callq	_ZN6apollo2gc22global_large_allocatorEv
	movq	%rax, 64(%rsp)
.Ltmp59:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime16collect_blockingEv
.Ltmp60:                                # EH_LABEL
	jmp	.LBB6_2
.LBB6_2:
	movq	64(%rsp), %rcx
	callq	_ZNK6apollo2gc14LargeAllocator15live_span_countEv
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	movl	$36864, %edx                    # imm = 0x9000
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	_ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 48(%rsp)
# %bb.3:
	cmpq	$0, 48(%rsp)
	jne	.LBB6_7
# %bb.4:
.Ltmp61:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.30(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$154, %r9d
	callq	printf
.Ltmp62:                                # EH_LABEL
	jmp	.LBB6_5
.LBB6_5:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jmp	.LBB6_7
.LBB6_6:
.Ltmp73:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 80(%rsp)
	movl	%eax, 76(%rsp)
	leaq	152(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	jmp	.LBB6_25
.LBB6_7:
	jmp	.LBB6_8
.LBB6_8:
	jmp	.LBB6_9
.LBB6_9:
	jmp	.LBB6_10
.LBB6_10:
	movq	64(%rsp), %rcx
	callq	_ZNK6apollo2gc14LargeAllocator15live_span_countEv
	movq	56(%rsp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB6_13
# %bb.11:
.Ltmp63:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.31(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$155, %r9d
	callq	printf
.Ltmp64:                                # EH_LABEL
	jmp	.LBB6_12
.LBB6_12:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB6_13:
	jmp	.LBB6_14
.LBB6_14:
	jmp	.LBB6_15
.LBB6_15:
.Ltmp65:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime16collect_blockingEv
.Ltmp66:                                # EH_LABEL
	jmp	.LBB6_16
.LBB6_16:
	jmp	.LBB6_17
.LBB6_17:
	movq	64(%rsp), %rcx
	callq	_ZNK6apollo2gc14LargeAllocator15live_span_countEv
	cmpq	56(%rsp), %rax
	je	.LBB6_20
# %bb.18:
.Ltmp67:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.29(%rip), %rdx
	leaq	.L.str.4(%rip), %r8
	movl	$158, %r9d
	callq	printf
.Ltmp68:                                # EH_LABEL
	jmp	.LBB6_19
.LBB6_19:
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB6_20:
	jmp	.LBB6_21
.LBB6_21:
	jmp	.LBB6_22
.LBB6_22:
.Ltmp69:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6detachEv
.Ltmp70:                                # EH_LABEL
	jmp	.LBB6_23
.LBB6_23:
.Ltmp71:                                # EH_LABEL
	leaq	.L.str.34(%rip), %rcx
	callq	printf
.Ltmp72:                                # EH_LABEL
	jmp	.LBB6_24
.LBB6_24:
	leaq	152(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	nop
	.seh_startepilogue
	addq	$648, %rsp                      # imm = 0x288
	.seh_endepilogue
	retq
.LBB6_25:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp57-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp72-.Ltmp57                #   Call between .Ltmp57 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin3          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp72            #   Call between .Ltmp72 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo2gc9CardTableC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc9CardTableC2Ev,"xr",discard,_ZN6apollo2gc9CardTableC2Ev
	.globl	_ZN6apollo2gc9CardTableC2Ev     # -- Begin function _ZN6apollo2gc9CardTableC2Ev
	.p2align	4
_ZN6apollo2gc9CardTableC2Ev:            # @_ZN6apollo2gc9CardTableC2Ev
.seh_proc _ZN6apollo2gc9CardTableC2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__15mutexC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	addq	$24, %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc9CardTable14for_each_dirtyIZN12_GLOBAL__N_127test_card_register_and_markEvE3$_0EEvOT_;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNK6apollo2gc9CardTable14for_each_dirtyIZN12_GLOBAL__N_127test_card_register_and_markEvE3$_0EEvOT_
_ZNK6apollo2gc9CardTable14for_each_dirtyIZN12_GLOBAL__N_127test_card_register_and_markEvE3$_0EEvOT_: # @"_ZNK6apollo2gc9CardTable14for_each_dirtyIZN12_GLOBAL__N_127test_card_register_and_markEvE3$_0EEvOT_"
.Lfunc_begin4:
.seh_proc _ZNK6apollo2gc9CardTable14for_each_dirtyIZN12_GLOBAL__N_127test_card_register_and_markEvE3$_0EEvOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEEC2B9nqe220103ERS1_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB8_1
	jmp	.LBB8_2
.LBB8_1:
	movl	$1, 92(%rsp)
	jmp	.LBB8_11
.LBB8_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 80(%rsp)
	movq	$0, 72(%rsp)
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB8_10
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	movq	72(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	movq	%rax, %rcx
	xorl	%edx, %edx
	callq	_ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB8_8
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	104(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	72(%rsp), %rax
	shlq	$9, %rax
	addq	%rax, %rdx
.Ltmp74:                                # EH_LABEL
	callq	_ZZN12_GLOBAL__N_127test_card_register_and_markEvENK3$_0clEPKv
.Ltmp75:                                # EH_LABEL
	jmp	.LBB8_6
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_8
.LBB8_7:
.Ltmp76:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	jmp	.LBB8_13
.LBB8_8:                                #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_9
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	movq	72(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 72(%rsp)
	jmp	.LBB8_3
.LBB8_10:
	movl	$0, 92(%rsp)
.LBB8_11:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__110lock_guardINS_5mutexEED2B9nqe220103Ev
	nop
# %bb.12:
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB8_13:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
# %bb.14:
	int3
.Lfunc_end4:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table8:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp74-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin4          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp75            #   Call between .Ltmp75 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.text
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
	.def	_ZNSt3__15mutexC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__15mutexC2B9nqe220103Ev,"xr",discard,_ZNSt3__15mutexC2B9nqe220103Ev
	.globl	_ZNSt3__15mutexC2B9nqe220103Ev  # -- Begin function _ZNSt3__15mutexC2B9nqe220103Ev
	.p2align	4
_ZNSt3__15mutexC2B9nqe220103Ev:         # @_ZNSt3__15mutexC2B9nqe220103Ev
.seh_proc _ZNSt3__15mutexC2B9nqe220103Ev
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
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEC2B9nqe220103Ev
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
	.def	_ZZN12_GLOBAL__N_127test_card_register_and_markEvENK3$_0clEPKv;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZZN12_GLOBAL__N_127test_card_register_and_markEvENK3$_0clEPKv
_ZZN12_GLOBAL__N_127test_card_register_and_markEvENK3$_0clEPKv: # @"_ZZN12_GLOBAL__N_127test_card_register_and_markEvENK3$_0clEPKv"
.seh_proc _ZZN12_GLOBAL__N_127test_card_register_and_markEvENK3$_0clEPKv
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
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
	jb	.LBB19_2
	jmp	.LBB19_5
.LBB19_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB19_3
	jmp	.LBB19_1
.LBB19_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB19_4
.LBB19_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB19_4
.LBB19_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
.LBB19_4:
	movb	19(%rsp), %al
	.seh_startepilogue
	addq	$32, %rsp
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
.Lfunc_begin5:
.seh_proc _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp77:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe220103ERS5_
.Ltmp78:                                # EH_LABEL
	jmp	.LBB20_1
.LBB20_1:
.Ltmp79:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp80:                                # EH_LABEL
	jmp	.LBB20_2
.LBB20_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB20_3:
.Ltmp81:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table20:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp77-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp80-.Ltmp77                #   Call between .Ltmp77 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin5          #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
.Lcst_end5:
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
	je	.LBB23_2
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
.LBB23_2:
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
.Lfunc_begin6:
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
.Ltmp82:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp83:                                # EH_LABEL
	jmp	.LBB25_1
.LBB25_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB25_2:
.Ltmp84:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table25:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp82-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin6          #     jumps to .Ltmp84
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
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
	.def	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.globl	_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_ # -- Begin function _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.p2align	4
_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_: # @_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
.Lfunc_begin7:
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
.LBB28_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB28_4
# %bb.2:                                #   in Loop: Header=BB28_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	decq	%rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp85:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
.Ltmp86:                                # EH_LABEL
	jmp	.LBB28_3
.LBB28_3:                               #   in Loop: Header=BB28_1 Depth=1
	jmp	.LBB28_1
.LBB28_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB28_5:
.Ltmp87:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table28:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp85-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin7          #     jumps to .Ltmp87
	.byte	1                               #   On action: 1
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_,"xr",discard,_ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin8:
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
.Ltmp88:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp89:                                # EH_LABEL
	jmp	.LBB29_1
.LBB29_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB29_2:
.Ltmp90:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table29:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp88-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin8          #     jumps to .Ltmp90
	.byte	1                               #   On action: 1
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
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
	jne	.LBB37_1
	jmp	.LBB37_2
.LBB37_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB37_3
.LBB37_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB37_3:
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
	.def	_ZN6apollo2gc7Runtime6ConfigC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc7Runtime6ConfigC2Ev,"xr",discard,_ZN6apollo2gc7Runtime6ConfigC2Ev
	.globl	_ZN6apollo2gc7Runtime6ConfigC2Ev # -- Begin function _ZN6apollo2gc7Runtime6ConfigC2Ev
	.p2align	4
_ZN6apollo2gc7Runtime6ConfigC2Ev:       # @_ZN6apollo2gc7Runtime6ConfigC2Ev
.seh_proc _ZN6apollo2gc7Runtime6ConfigC2Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$4194304, (%rax)                # imm = 0x400000
	movq	$65536, 8(%rax)                 # imm = 0x10000
	movq	$0, 16(%rax)
	movl	$100, 24(%rax)
	movb	$1, 28(%rax)
	movb	$1, 29(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.lcomm	_ZN12_GLOBAL__N_110g_failuresE,4,4 # @_ZN12_GLOBAL__N_110g_failuresE
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"apollo_gc_extensions_tests: all passed\n"

.L.str.1:                               # @.str.1
	.asciz	"apollo_gc_extensions_tests: %d failure(s)\n"

	.lcomm	_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap,8192,16 # @_ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap
.L.str.2:                               # @.str.2
	.asciz	"CHECK failed: %s @ %s:%d\n"

.L.str.3:                               # @.str.3
	.asciz	"t.covers(heap)"

.L.str.4:                               # @.str.4
	.asciz	"C:/Users/devon/Apollo/ln/Apollo-Main/GC/apollo_gc_extensions_tests.cpp"

.L.str.5:                               # @.str.5
	.asciz	"t.covers(heap + 1024)"

.L.str.6:                               # @.str.6
	.asciz	"!t.covers(heap - 1)"

.L.str.7:                               # @.str.7
	.asciz	"t.dirty_count() == 0"

.L.str.8:                               # @.str.8
	.asciz	"t.dirty_count() == 2"

.L.str.9:                               # @.str.9
	.asciz	"t.is_dirty(heap + 600)"

.L.str.10:                              # @.str.10
	.asciz	"t.is_dirty(heap + 700)"

.L.str.11:                              # @.str.11
	.asciz	"!t.is_dirty(heap + 200)"

.L.str.12:                              # @.str.12
	.asciz	"seen == 2"

.L.str.13:                              # @.str.13
	.asciz	"test_card_register_and_mark ok\n"

	.lcomm	_ZZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEvE6region,1024,16 # @_ZZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEvE6region
.L.str.14:                              # @.str.14
	.asciz	"after == before + 1"

.L.str.15:                              # @.str.15
	.asciz	"test_card_global_dirty_via_barrier ok\n"

	.p2align	3, 0x0                          # @_ZN12_GLOBAL__N_19kPairDescE
_ZN12_GLOBAL__N_19kPairDescE:
	.short	42                              # 0x2a
	.zero	2
	.long	24                              # 0x18
	.long	8                               # 0x8
	.short	2                               # 0x2
	.zero	2
	.quad	_ZN12_GLOBAL__N_112kPairOffsetsE
	.quad	0
	.quad	0
	.quad	.L.str.20

.L.str.16:                              # @.str.16
	.asciz	"ok"

.L.str.17:                              # @.str.17
	.asciz	"!dup"

.L.str.18:                              # @.str.18
	.asciz	"found != nullptr"

.L.str.19:                              # @.str.19
	.asciz	"found->pointer_offset_count == 2"

.L.str.20:                              # @.str.20
	.asciz	"Pair"

.L.str.21:                              # @.str.21
	.asciz	"std::strcmp(found->name, \"Pair\") == 0"

.L.str.22:                              # @.str.22
	.asciz	"reg.lookup(9999) == nullptr"

.L.str.23:                              # @.str.23
	.asciz	"test_type_descriptor_registration ok\n"

	.p2align	2, 0x0                          # @_ZN12_GLOBAL__N_112kPairOffsetsE
_ZN12_GLOBAL__N_112kPairOffsetsE:
	.long	0                               # 0x0
	.long	8                               # 0x8

.L.str.24:                              # @.str.24
	.asciz	"box != nullptr"

.L.str.25:                              # @.str.25
	.asciz	"box->type_id == 42"

.L.str.26:                              # @.str.26
	.asciz	"box->trace_fn != nullptr"

.L.str.27:                              # @.str.27
	.asciz	"test_allocate_typed_uses_generic_trace ok\n"

.L.str.28:                              # @.str.28
	.asciz	"small != nullptr"

.L.str.29:                              # @.str.29
	.asciz	"la.live_span_count() == before"

.L.str.30:                              # @.str.30
	.asciz	"big != nullptr"

.L.str.31:                              # @.str.31
	.asciz	"la.live_span_count() == before + 1"

.L.str.32:                              # @.str.32
	.asciz	"big->page == nullptr"

.L.str.33:                              # @.str.33
	.asciz	"test_large_alloc_above_threshold_routed_to_span (span_count=%zu)\n"

.L.str.34:                              # @.str.34
	.asciz	"test_large_alloc_swept_when_unreached ok\n"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp92-.Ltmp91                 # Subsection size
.Ltmp91:
	.short	.Ltmp94-.Ltmp93                 # Record length
.Ltmp93:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp94:
	.short	.Ltmp96-.Ltmp95                 # Record length
.Ltmp95:
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
.Ltmp96:
.Ltmp92:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN12_GLOBAL__N_127test_card_register_and_markEv
	.addrsig_sym _ZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEv
	.addrsig_sym _ZN12_GLOBAL__N_133test_type_descriptor_registrationEv
	.addrsig_sym _ZN12_GLOBAL__N_138test_allocate_typed_uses_generic_traceEv
	.addrsig_sym _ZN12_GLOBAL__N_147test_large_alloc_above_threshold_routed_to_spanEv
	.addrsig_sym _ZN12_GLOBAL__N_137test_large_alloc_swept_when_unreachedEv
	.addrsig_sym printf
	.addrsig_sym _ZN6apollo2gc9CardTable14register_rangeEPKvS3_
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNK6apollo2gc9CardTable6coversEPKv
	.addrsig_sym _ZNK6apollo2gc9CardTable11dirty_countEv
	.addrsig_sym _ZN6apollo2gc9CardTable10mark_dirtyEPKv
	.addrsig_sym _ZNK6apollo2gc9CardTable8is_dirtyEPKv
	.addrsig_sym _ZNK6apollo2gc9CardTable14for_each_dirtyIZN12_GLOBAL__N_127test_card_register_and_markEvE3$_0EEvOT_
	.addrsig_sym _ZN6apollo2gc9CardTable9clear_allEv
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5emptyB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__113__atomic_baseIhLb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZZN12_GLOBAL__N_127test_card_register_and_markEvENK3$_0clEPKv
	.addrsig_sym _ZNSt3__15mutex4lockEv
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IhEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.addrsig_sym _ZNSt3__15mutex6unlockEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE10deallocateB9nqe220103ERS4_PS3_y
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe220103EPS2_
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6atomicIhEEEEE7destroyB9nqe220103IS3_TnNS_9enable_ifIXnt15__has_destroy_vIS4_PT_EEiE4typeELi0EEEvRS4_S9_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103INS_6atomicIhEEEEPT_S4_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103INS_6atomicIhEEEEvPT_
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__16vectorINS_6atomicIhEENS_9allocatorIS2_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6atomicIhEEEEEEvPKvS6_S6_S6_
	.addrsig_sym _ZNSt3__19allocatorINS_6atomicIhEEE10deallocateB9nqe220103EPS2_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6atomicIhEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZN6apollo2gc17global_card_tableEv
	.addrsig_sym _ZN6apollo2gc15note_card_dirtyEPKv
	.addrsig_sym _ZN6apollo2gc20global_type_registryEv
	.addrsig_sym _ZN6apollo2gc12TypeRegistry13register_typeERKNS0_14TypeDescriptorE
	.addrsig_sym _ZNK6apollo2gc12TypeRegistry6lookupEt
	.addrsig_sym strcmp
	.addrsig_sym _ZN6apollo2gc7Runtime6attachEv
	.addrsig_sym _ZN6apollo2gc14allocate_typedERNS0_7MutatorEt
	.addrsig_sym _ZN6apollo2gc7Runtime6detachEv
	.addrsig_sym _ZN6apollo2gc22global_large_allocatorEv
	.addrsig_sym _ZNK6apollo2gc14LargeAllocator15live_span_countEv
	.addrsig_sym _ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	.addrsig_sym _ZN6apollo2gc7Runtime16collect_blockingEv
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZN12_GLOBAL__N_110g_failuresE
	.addrsig_sym _ZZN12_GLOBAL__N_127test_card_register_and_markEvE4heap
	.addrsig_sym _ZZN12_GLOBAL__N_134test_card_global_dirty_via_barrierEvE6region
	.addrsig_sym _ZN12_GLOBAL__N_19kPairDescE
	.addrsig_sym _ZN12_GLOBAL__N_112kPairOffsetsE
