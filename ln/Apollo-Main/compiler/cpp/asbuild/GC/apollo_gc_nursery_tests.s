	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"apollo_gc_nursery_tests.cpp"
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
	callq	_ZN12_GLOBAL__N_115test_basic_copyEv
	callq	_ZN12_GLOBAL__N_117test_slot_rewriteEv
	callq	_ZN12_GLOBAL__N_114test_promotionEv
	callq	_ZN12_GLOBAL__N_126test_overflow_then_collectEv
	callq	_ZN12_GLOBAL__N_132test_external_pointers_untouchedEv
	leaq	.L.str(%rip), %rcx
	callq	puts
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN12_GLOBAL__N_115test_basic_copyEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_115test_basic_copyEv
_ZN12_GLOBAL__N_115test_basic_copyEv:   # @_ZN12_GLOBAL__N_115test_basic_copyEv
.Lfunc_begin0:
.seh_proc _ZN12_GLOBAL__N_115test_basic_copyEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$568, %rsp                      # imm = 0x238
	.seh_stackalloc 568
	.seh_endprologue
	movq	$4096, 336(%rsp)                # imm = 0x1000
	movb	$100, 344(%rsp)
	leaq	352(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	leaq	336(%rsp), %rdx
	callq	_ZN6apollo2gc7NurseryC1ENS1_6ConfigE
	movq	72(%rsp), %rcx                  # 8-byte Reload
.Ltmp0:                                 # EH_LABEL
	movl	$170, %edx
	movl	$1, %r8d
	callq	_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
.Ltmp1:                                 # EH_LABEL
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 328(%rsp)
.Ltmp2:                                 # EH_LABEL
	leaq	352(%rsp), %rcx
	movl	$187, %edx
	movl	$2, %r8d
	callq	_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
.Ltmp3:                                 # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB1_2
.LBB1_2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 304(%rsp)
.Ltmp4:                                 # EH_LABEL
	leaq	352(%rsp), %rcx
	movl	$204, %edx
	movl	$3, %r8d
	callq	_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
.Ltmp5:                                 # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 296(%rsp)
	movq	328(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 248(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	$2, 264(%rsp)
.Ltmp6:                                 # EH_LABEL
	leaq	272(%rsp), %rcx
	leaq	256(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
.Ltmp7:                                 # EH_LABEL
	jmp	.LBB1_4
.LBB1_4:
	leaq	216(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev
	leaq	352(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNK6apollo2gc7Nursery12bytes_in_useEv
	movq	%rax, 208(%rsp)
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	160(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
.Ltmp9:                                 # EH_LABEL
	leaq	272(%rsp), %rdx
	callq	_ZN6apollo2gc7Nursery13minor_collectERKNSt3__16vectorIPNS0_3BoxENS2_9allocatorIS5_EEEERKNS3_IPS5_NS6_ISB_EEEERKNS2_8functionIFS5_PKS4_EEE
.Ltmp10:                                # EH_LABEL
	jmp	.LBB1_5
.LBB1_5:
	leaq	160(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	leaq	88(%rsp), %rcx
	leaq	352(%rsp), %rdx
	callq	_ZNK6apollo2gc7Nursery5statsEv
	cmpq	$1, 96(%rsp)
	je	.LBB1_11
# %bb.6:
.Ltmp12:                                # EH_LABEL
	leaq	.L.str.1(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$53, %r8d
	callq	_assert
.Ltmp13:                                # EH_LABEL
	jmp	.LBB1_7
.LBB1_7:
.LBB1_8:
.Ltmp8:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	jmp	.LBB1_23
.LBB1_9:
.Ltmp11:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	leaq	160(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	jmp	.LBB1_22
.LBB1_10:
.Ltmp22:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 316(%rsp)
	jmp	.LBB1_22
.LBB1_11:
	cmpq	$1, 136(%rsp)
	jae	.LBB1_14
# %bb.12:
.Ltmp14:                                # EH_LABEL
	leaq	.L.str.3(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$54, %r8d
	callq	_assert
.Ltmp15:                                # EH_LABEL
	jmp	.LBB1_13
.LBB1_13:
.LBB1_14:
	cmpq	$0, 112(%rsp)
	ja	.LBB1_17
# %bb.15:
.Ltmp16:                                # EH_LABEL
	leaq	.L.str.4(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$55, %r8d
	callq	_assert
.Ltmp17:                                # EH_LABEL
	jmp	.LBB1_16
.LBB1_16:
.LBB1_17:
	leaq	352(%rsp), %rcx
	callq	_ZNK6apollo2gc7Nursery12bytes_in_useEv
	cmpq	208(%rsp), %rax
	jbe	.LBB1_20
# %bb.18:
.Ltmp18:                                # EH_LABEL
	leaq	.L.str.5(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$56, %r8d
	callq	_assert
.Ltmp19:                                # EH_LABEL
	jmp	.LBB1_19
.LBB1_19:
.LBB1_20:
.Ltmp20:                                # EH_LABEL
	leaq	.L.str.6(%rip), %rcx
	callq	puts
.Ltmp21:                                # EH_LABEL
	jmp	.LBB1_21
.LBB1_21:
	leaq	216(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	leaq	272(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	352(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
	nop
	.seh_startepilogue
	addq	$568, %rsp                      # imm = 0x238
	.seh_endepilogue
	retq
.LBB1_22:
	leaq	216(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	leaq	272(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
.LBB1_23:
	leaq	352(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
# %bb.24:
	movq	320(%rsp), %rcx
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp21-.Ltmp12                #   Call between .Ltmp12 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_117test_slot_rewriteEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_117test_slot_rewriteEv
_ZN12_GLOBAL__N_117test_slot_rewriteEv: # @_ZN12_GLOBAL__N_117test_slot_rewriteEv
.Lfunc_begin1:
.seh_proc _ZN12_GLOBAL__N_117test_slot_rewriteEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$488, %rsp                      # imm = 0x1E8
	.seh_stackalloc 488
	.seh_endprologue
	movq	$4096, 256(%rsp)                # imm = 0x1000
	movb	$100, 264(%rsp)
	leaq	272(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	leaq	256(%rsp), %rdx
	callq	_ZN6apollo2gc7NurseryC1ENS1_6ConfigE
	movq	56(%rsp), %rcx                  # 8-byte Reload
.Ltmp23:                                # EH_LABEL
	movl	$161, %edx
	movl	$42, %r8d
	callq	_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
.Ltmp24:                                # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB2_1
.LBB2_1:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 248(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	$1, 192(%rsp)
.Ltmp25:                                # EH_LABEL
	leaq	200(%rsp), %rcx
	leaq	184(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
.Ltmp26:                                # EH_LABEL
	jmp	.LBB2_2
.LBB2_2:
	leaq	224(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	$1, 144(%rsp)
.Ltmp28:                                # EH_LABEL
	leaq	152(%rsp), %rcx
	leaq	136(%rsp), %rdx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E
.Ltmp29:                                # EH_LABEL
	jmp	.LBB2_3
.LBB2_3:
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
	movq	48(%rsp), %r9                   # 8-byte Reload
.Ltmp31:                                # EH_LABEL
	leaq	272(%rsp), %rcx
	leaq	200(%rsp), %rdx
	leaq	152(%rsp), %r8
	callq	_ZN6apollo2gc7Nursery13minor_collectERKNSt3__16vectorIPNS0_3BoxENS2_9allocatorIS5_EEEERKNS3_IPS5_NS6_ISB_EEEERKNS2_8functionIFS5_PKS4_EEE
.Ltmp32:                                # EH_LABEL
	jmp	.LBB2_4
.LBB2_4:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	cmpq	$0, 224(%rsp)
	jne	.LBB2_11
# %bb.5:
.Ltmp34:                                # EH_LABEL
	leaq	.L.str.9(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$74, %r8d
	callq	_assert
.Ltmp35:                                # EH_LABEL
	jmp	.LBB2_6
.LBB2_6:
.LBB2_7:
.Ltmp27:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 240(%rsp)
	movl	%eax, 236(%rsp)
	jmp	.LBB2_20
.LBB2_8:
.Ltmp30:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 240(%rsp)
	movl	%eax, 236(%rsp)
	jmp	.LBB2_19
.LBB2_9:
.Ltmp33:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 240(%rsp)
	movl	%eax, 236(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	jmp	.LBB2_18
.LBB2_10:
.Ltmp42:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 240(%rsp)
	movl	%eax, 236(%rsp)
	jmp	.LBB2_18
.LBB2_11:
	movq	224(%rsp), %rcx
.Ltmp36:                                # EH_LABEL
	callq	_ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE
.Ltmp37:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB2_12
.LBB2_12:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	cmpl	$161, (%rax)
	jne	.LBB2_14
# %bb.13:
	movq	72(%rsp), %rax
	cmpl	$42, 4(%rax)
	je	.LBB2_16
.LBB2_14:
.Ltmp38:                                # EH_LABEL
	leaq	.L.str.10(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$76, %r8d
	callq	_assert
.Ltmp39:                                # EH_LABEL
	jmp	.LBB2_15
.LBB2_15:
.LBB2_16:
.Ltmp40:                                # EH_LABEL
	leaq	.L.str.11(%rip), %rcx
	callq	puts
.Ltmp41:                                # EH_LABEL
	jmp	.LBB2_17
.LBB2_17:
	leaq	152(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	272(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
	nop
	.seh_startepilogue
	addq	$488, %rsp                      # imm = 0x1E8
	.seh_endepilogue
	retq
.LBB2_18:
	leaq	152(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
.LBB2_19:
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
.LBB2_20:
	leaq	272(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
# %bb.21:
	movq	240(%rsp), %rcx
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
	.uleb128 .Ltmp23-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp23                #   Call between .Ltmp23 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp41-.Ltmp34                #   Call between .Ltmp34 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end1-.Ltmp41            #   Call between .Ltmp41 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_114test_promotionEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_114test_promotionEv
_ZN12_GLOBAL__N_114test_promotionEv:    # @_ZN12_GLOBAL__N_114test_promotionEv
.Lfunc_begin2:
.seh_proc _ZN12_GLOBAL__N_114test_promotionEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$712, %rsp                      # imm = 0x2C8
	.seh_stackalloc 712
	.seh_endprologue
	movq	$4096, 480(%rsp)                # imm = 0x1000
	movb	$2, 488(%rsp)
	leaq	496(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	480(%rsp), %rdx
	callq	_ZN6apollo2gc7NurseryC1ENS1_6ConfigE
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp43:                                # EH_LABEL
	movl	$222, %edx
	movl	$99, %r8d
	callq	_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
.Ltmp44:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 472(%rsp)
	movq	472(%rsp), %rax
	movq	%rax, 448(%rsp)
	leaq	424(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 360(%rsp)
	movq	360(%rsp), %rdx
.Ltmp46:                                # EH_LABEL
	leaq	368(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2IZN12_GLOBAL__N_114test_promotionEvE3$_0vEET_
.Ltmp47:                                # EH_LABEL
	jmp	.LBB3_2
.LBB3_2:
	movq	448(%rsp), %rax
	movq	%rax, 312(%rsp)
	leaq	312(%rsp), %rax
	movq	%rax, 320(%rsp)
	movq	$1, 328(%rsp)
.Ltmp49:                                # EH_LABEL
	leaq	336(%rsp), %rcx
	leaq	320(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
.Ltmp50:                                # EH_LABEL
	jmp	.LBB3_3
.LBB3_3:
	leaq	448(%rsp), %rax
	movq	%rax, 264(%rsp)
	leaq	264(%rsp), %rax
	movq	%rax, 272(%rsp)
	movq	$1, 280(%rsp)
.Ltmp52:                                # EH_LABEL
	leaq	288(%rsp), %rcx
	leaq	272(%rsp), %rdx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E
.Ltmp53:                                # EH_LABEL
	jmp	.LBB3_4
.LBB3_4:
.Ltmp55:                                # EH_LABEL
	leaq	496(%rsp), %rcx
	leaq	336(%rsp), %rdx
	leaq	288(%rsp), %r8
	leaq	368(%rsp), %r9
	callq	_ZN6apollo2gc7Nursery13minor_collectERKNSt3__16vectorIPNS0_3BoxENS2_9allocatorIS5_EEEERKNS3_IPS5_NS6_ISB_EEEERKNS2_8functionIFS5_PKS4_EEE
.Ltmp56:                                # EH_LABEL
	jmp	.LBB3_5
.LBB3_5:
	movq	448(%rsp), %rax
	cmpq	472(%rsp), %rax
	jne	.LBB3_13
# %bb.6:
.Ltmp57:                                # EH_LABEL
	leaq	.L.str.12(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$104, %r8d
	callq	_assert
.Ltmp58:                                # EH_LABEL
	jmp	.LBB3_7
.LBB3_7:
.LBB3_8:
.Ltmp45:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 464(%rsp)
	movl	%eax, 460(%rsp)
	jmp	.LBB3_44
.LBB3_9:
.Ltmp48:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 464(%rsp)
	movl	%eax, 460(%rsp)
	jmp	.LBB3_43
.LBB3_10:
.Ltmp51:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 464(%rsp)
	movl	%eax, 460(%rsp)
	jmp	.LBB3_42
.LBB3_11:
.Ltmp54:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 464(%rsp)
	movl	%eax, 460(%rsp)
	jmp	.LBB3_41
.LBB3_12:
.Ltmp79:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 464(%rsp)
	movl	%eax, 460(%rsp)
	leaq	288(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	jmp	.LBB3_41
.LBB3_13:
	movq	448(%rsp), %rax
	movzbl	14(%rax), %eax
	cmpl	$0, %eax
	je	.LBB3_16
# %bb.14:
.Ltmp59:                                # EH_LABEL
	leaq	.L.str.13(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$105, %r8d
	callq	_assert
.Ltmp60:                                # EH_LABEL
	jmp	.LBB3_15
.LBB3_15:
.LBB3_16:
	leaq	192(%rsp), %rcx
	leaq	496(%rsp), %rdx
	callq	_ZNK6apollo2gc7Nursery5statsEv
	cmpq	$0, 232(%rsp)
	je	.LBB3_19
# %bb.17:
.Ltmp61:                                # EH_LABEL
	leaq	.L.str.14(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$106, %r8d
	callq	_assert
.Ltmp62:                                # EH_LABEL
	jmp	.LBB3_18
.LBB3_18:
.LBB3_19:
	movq	448(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	168(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	$1, 184(%rsp)
.Ltmp63:                                # EH_LABEL
	leaq	336(%rsp), %rcx
	leaq	176(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E
.Ltmp64:                                # EH_LABEL
	jmp	.LBB3_20
.LBB3_20:
.Ltmp65:                                # EH_LABEL
	leaq	496(%rsp), %rcx
	leaq	336(%rsp), %rdx
	leaq	288(%rsp), %r8
	leaq	368(%rsp), %r9
	callq	_ZN6apollo2gc7Nursery13minor_collectERKNSt3__16vectorIPNS0_3BoxENS2_9allocatorIS5_EEEERKNS3_IPS5_NS6_ISB_EEEERKNS2_8functionIFS5_PKS4_EEE
.Ltmp66:                                # EH_LABEL
	jmp	.LBB3_21
.LBB3_21:
	movq	448(%rsp), %rax
	movzbl	14(%rax), %eax
	cmpl	$1, %eax
	je	.LBB3_24
# %bb.22:
.Ltmp67:                                # EH_LABEL
	leaq	.L.str.15(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$111, %r8d
	callq	_assert
.Ltmp68:                                # EH_LABEL
	jmp	.LBB3_23
.LBB3_23:
.LBB3_24:
	leaq	96(%rsp), %rcx
	leaq	496(%rsp), %rdx
	callq	_ZNK6apollo2gc7Nursery5statsEv
	cmpq	$1, 136(%rsp)
	je	.LBB3_27
# %bb.25:
.Ltmp69:                                # EH_LABEL
	leaq	.L.str.16(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$112, %r8d
	callq	_assert
.Ltmp70:                                # EH_LABEL
	jmp	.LBB3_26
.LBB3_26:
.LBB3_27:
	leaq	424(%rsp), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB3_28
	jmp	.LBB3_30
.LBB3_28:
.Ltmp77:                                # EH_LABEL
	leaq	.L.str.17(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$113, %r8d
	callq	_assert
.Ltmp78:                                # EH_LABEL
	jmp	.LBB3_29
.LBB3_29:
.LBB3_30:
	movq	448(%rsp), %rcx
	callq	_ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE
	movq	%rax, 88(%rsp)
	movq	88(%rsp), %rax
	cmpl	$222, (%rax)
	jne	.LBB3_32
# %bb.31:
	movq	88(%rsp), %rax
	cmpl	$99, 4(%rax)
	je	.LBB3_34
.LBB3_32:
.Ltmp71:                                # EH_LABEL
	leaq	.L.str.18(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$117, %r8d
	callq	_assert
.Ltmp72:                                # EH_LABEL
	jmp	.LBB3_33
.LBB3_33:
.LBB3_34:
	leaq	424(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev
	movq	%rax, 64(%rsp)
.LBB3_35:                               # =>This Inner Loop Header: Depth=1
	leaq	72(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB3_36
	jmp	.LBB3_39
.LBB3_36:                               #   in Loop: Header=BB3_35 Depth=1
	leaq	72(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rcx
.Ltmp75:                                # EH_LABEL
	callq	free
.Ltmp76:                                # EH_LABEL
	jmp	.LBB3_37
.LBB3_37:                               #   in Loop: Header=BB3_35 Depth=1
	jmp	.LBB3_38
.LBB3_38:                               #   in Loop: Header=BB3_35 Depth=1
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	jmp	.LBB3_35
.LBB3_39:
.Ltmp73:                                # EH_LABEL
	leaq	.L.str.19(%rip), %rcx
	callq	puts
.Ltmp74:                                # EH_LABEL
	jmp	.LBB3_40
.LBB3_40:
	leaq	288(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	leaq	336(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	368(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	leaq	424(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	496(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
	nop
	.seh_startepilogue
	addq	$712, %rsp                      # imm = 0x2C8
	.seh_endepilogue
	retq
.LBB3_41:
	leaq	336(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
.LBB3_42:
	leaq	368(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
.LBB3_43:
	leaq	424(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
.LBB3_44:
	leaq	496(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
# %bb.45:
	movq	464(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp74-.Ltmp55                #   Call between .Ltmp55 and .Ltmp74
	.uleb128 .Ltmp79-.Lfunc_begin2          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Lfunc_end2-.Ltmp74            #   Call between .Ltmp74 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_126test_overflow_then_collectEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_126test_overflow_then_collectEv
_ZN12_GLOBAL__N_126test_overflow_then_collectEv: # @_ZN12_GLOBAL__N_126test_overflow_then_collectEv
.Lfunc_begin3:
.seh_proc _ZN12_GLOBAL__N_126test_overflow_then_collectEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$520, %rsp                      # imm = 0x208
	.seh_stackalloc 520
	.seh_endprologue
	movq	$512, 288(%rsp)                 # imm = 0x200
	movb	$100, 296(%rsp)
	leaq	304(%rsp), %rcx
	leaq	288(%rsp), %rdx
	callq	_ZN6apollo2gc7NurseryC1ENS1_6ConfigE
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev
	movq	$0, 256(%rsp)
	movl	$0, 252(%rsp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	leaq	304(%rsp), %rcx
	movl	$40, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$7, %r9d
	callq	_ZN6apollo2gc7Nursery12try_allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 240(%rsp)
	cmpq	$0, 240(%rsp)
	jne	.LBB4_3
# %bb.2:
	jmp	.LBB4_4
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movl	252(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 252(%rsp)
	jmp	.LBB4_1
.LBB4_4:
	cmpl	$0, 252(%rsp)
	jg	.LBB4_8
# %bb.5:
.Ltmp80:                                # EH_LABEL
	leaq	.L.str.20(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$139, %r8d
	callq	_assert
.Ltmp81:                                # EH_LABEL
	jmp	.LBB4_6
.LBB4_6:
.LBB4_7:
.Ltmp84:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 228(%rsp)
	jmp	.LBB4_21
.LBB4_8:
	movq	256(%rsp), %rax
	movq	%rax, 200(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	$1, 216(%rsp)
.Ltmp82:                                # EH_LABEL
	leaq	264(%rsp), %rcx
	leaq	208(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E
.Ltmp83:                                # EH_LABEL
	jmp	.LBB4_9
.LBB4_9:
	leaq	176(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	128(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	40(%rsp), %r9                   # 8-byte Reload
.Ltmp85:                                # EH_LABEL
	leaq	304(%rsp), %rcx
	leaq	264(%rsp), %rdx
	callq	_ZN6apollo2gc7Nursery13minor_collectERKNSt3__16vectorIPNS0_3BoxENS2_9allocatorIS5_EEEERKNS3_IPS5_NS6_ISB_EEEERKNS2_8functionIFS5_PKS4_EEE
.Ltmp86:                                # EH_LABEL
	jmp	.LBB4_10
.LBB4_10:
	leaq	128(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	leaq	304(%rsp), %rcx
	movl	$40, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$8, %r9d
	callq	_ZN6apollo2gc7Nursery12try_allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 120(%rsp)
	cmpq	$0, 120(%rsp)
	jne	.LBB4_15
# %bb.11:
.Ltmp88:                                # EH_LABEL
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$146, %r8d
	callq	_assert
.Ltmp89:                                # EH_LABEL
	jmp	.LBB4_12
.LBB4_12:
.LBB4_13:
.Ltmp87:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 228(%rsp)
	leaq	128(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	jmp	.LBB4_20
.LBB4_14:
.Ltmp94:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 228(%rsp)
	jmp	.LBB4_20
.LBB4_15:
	leaq	48(%rsp), %rcx
	leaq	304(%rsp), %rdx
	callq	_ZNK6apollo2gc7Nursery5statsEv
	movq	96(%rsp), %rax
	movl	252(%rsp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB4_18
# %bb.16:
.Ltmp90:                                # EH_LABEL
	leaq	.L.str.22(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$147, %r8d
	callq	_assert
.Ltmp91:                                # EH_LABEL
	jmp	.LBB4_17
.LBB4_17:
.LBB4_18:
.Ltmp92:                                # EH_LABEL
	leaq	.L.str.23(%rip), %rcx
	callq	puts
.Ltmp93:                                # EH_LABEL
	jmp	.LBB4_19
.LBB4_19:
	leaq	176(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	304(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
	nop
	.seh_startepilogue
	addq	$520, %rsp                      # imm = 0x208
	.seh_endepilogue
	retq
.LBB4_20:
	leaq	176(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
.LBB4_21:
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	304(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
# %bb.22:
	movq	232(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp80-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp83-.Ltmp80                #   Call between .Ltmp80 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin3          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin3          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp93-.Ltmp88                #   Call between .Ltmp88 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin3          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp93            #   Call between .Ltmp93 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_132test_external_pointers_untouchedEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_132test_external_pointers_untouchedEv
_ZN12_GLOBAL__N_132test_external_pointers_untouchedEv: # @_ZN12_GLOBAL__N_132test_external_pointers_untouchedEv
.Lfunc_begin4:
.seh_proc _ZN12_GLOBAL__N_132test_external_pointers_untouchedEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$520, %rsp                      # imm = 0x208
	.seh_stackalloc 520
	.seh_endprologue
	movq	$4096, 288(%rsp)                # imm = 0x1000
	movb	$100, 296(%rsp)
	leaq	304(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	leaq	288(%rsp), %rdx
	callq	_ZN6apollo2gc7NurseryC1ENS1_6ConfigE
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	256(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16atomicIyEC2B9nqe220103Ey
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	$0, 264(%rsp)
	movw	$0, 268(%rsp)
	movb	$0, 270(%rsp)
	movb	$0, 271(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 280(%rsp)
	movl	$32, 264(%rsp)
	movq	%rax, 248(%rsp)
.Ltmp95:                                # EH_LABEL
	movl	$17, %edx
	movl	$1, %r8d
	callq	_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
.Ltmp96:                                # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB5_1
.LBB5_1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	168(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	$1, 184(%rsp)
.Ltmp97:                                # EH_LABEL
	leaq	192(%rsp), %rcx
	leaq	176(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
.Ltmp98:                                # EH_LABEL
	jmp	.LBB5_2
.LBB5_2:
	leaq	248(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	216(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	$2, 136(%rsp)
.Ltmp100:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	leaq	128(%rsp), %rdx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E
.Ltmp101:                               # EH_LABEL
	jmp	.LBB5_3
.LBB5_3:
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
	movq	32(%rsp), %r9                   # 8-byte Reload
.Ltmp103:                               # EH_LABEL
	leaq	304(%rsp), %rcx
	leaq	192(%rsp), %rdx
	leaq	144(%rsp), %r8
	callq	_ZN6apollo2gc7Nursery13minor_collectERKNSt3__16vectorIPNS0_3BoxENS2_9allocatorIS5_EEEERKNS3_IPS5_NS6_ISB_EEEERKNS2_8functionIFS5_PKS4_EEE
.Ltmp104:                               # EH_LABEL
	jmp	.LBB5_4
.LBB5_4:
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	leaq	256(%rsp), %rax
	cmpq	%rax, 248(%rsp)
	je	.LBB5_11
# %bb.5:
.Ltmp106:                               # EH_LABEL
	leaq	.L.str.24(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$167, %r8d
	callq	_assert
.Ltmp107:                               # EH_LABEL
	jmp	.LBB5_6
.LBB5_6:
.LBB5_7:
.Ltmp99:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 228(%rsp)
	jmp	.LBB5_18
.LBB5_8:
.Ltmp102:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 228(%rsp)
	jmp	.LBB5_17
.LBB5_9:
.Ltmp105:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 228(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	jmp	.LBB5_16
.LBB5_10:
.Ltmp112:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 228(%rsp)
	jmp	.LBB5_16
.LBB5_11:
	cmpq	$0, 216(%rsp)
	jne	.LBB5_14
# %bb.12:
.Ltmp108:                               # EH_LABEL
	leaq	.L.str.25(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$168, %r8d
	callq	_assert
.Ltmp109:                               # EH_LABEL
	jmp	.LBB5_13
.LBB5_13:
.LBB5_14:
.Ltmp110:                               # EH_LABEL
	leaq	.L.str.26(%rip), %rcx
	callq	puts
.Ltmp111:                               # EH_LABEL
	jmp	.LBB5_15
.LBB5_15:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	leaq	192(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	leaq	304(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
	nop
	.seh_startepilogue
	addq	$520, %rsp                      # imm = 0x208
	.seh_endepilogue
	retq
.LBB5_16:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
.LBB5_17:
	leaq	192(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
.LBB5_18:
	leaq	304(%rsp), %rcx
	callq	_ZN6apollo2gc7NurseryD1Ev
# %bb.19:
	movq	232(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end4:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp95-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp98-.Ltmp95                #   Call between .Ltmp95 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin4          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin4         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin4         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp111-.Ltmp106              #   Call between .Ltmp106 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin4         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Lfunc_end4-.Ltmp111           #   Call between .Ltmp111 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj: # @_ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
.seh_proc _ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movl	%edx, 60(%rsp)
	movl	%r8d, 56(%rsp)
	movq	64(%rsp), %rcx
	movl	$40, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$1, %r9d
	callq	_ZN6apollo2gc7Nursery12try_allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 48(%rsp)
	cmpq	$0, 48(%rsp)
	jne	.LBB6_2
# %bb.1:
	leaq	.L.str.7(%rip), %rcx
	leaq	.L.str.2(%rip), %rdx
	movl	$25, %r8d
	callq	_assert
.LBB6_2:
	movq	48(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 40(%rsp)
	movl	60(%rsp), %ecx
	movq	40(%rsp), %rax
	movl	%ecx, (%rax)
	movl	56(%rsp), %ecx
	movq	40(%rsp), %rax
	movl	%ecx, 4(%rax)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103ESt16initializer_listIS4_E
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	callq	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103Ev
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
	.def	_ZNK6apollo2gc7Nursery12bytes_in_useEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo2gc7Nursery12bytes_in_useEv,"xr",discard,_ZNK6apollo2gc7Nursery12bytes_in_useEv
	.globl	_ZNK6apollo2gc7Nursery12bytes_in_useEv # -- Begin function _ZNK6apollo2gc7Nursery12bytes_in_useEv
	.p2align	4
_ZNK6apollo2gc7Nursery12bytes_in_useEv: # @_ZNK6apollo2gc7Nursery12bytes_in_useEv
.seh_proc _ZNK6apollo2gc7Nursery12bytes_in_useEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	32(%rcx), %rax
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn,"xr",discard,_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
	.globl	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn # -- Begin function _ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
	.p2align	4
_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn: # @_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
.seh_proc _ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2B9nqe220103EDn
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev,"xr",discard,_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	.globl	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev # -- Begin function _ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
	.p2align	4
_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev: # @_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
.seh_proc _ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EED2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc7Nursery5statsEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo2gc7Nursery5statsEv,"xr",discard,_ZNK6apollo2gc7Nursery5statsEv
	.globl	_ZNK6apollo2gc7Nursery5statsEv  # -- Begin function _ZNK6apollo2gc7Nursery5statsEv
	.p2align	4
_ZNK6apollo2gc7Nursery5statsEv:         # @_ZNK6apollo2gc7Nursery5statsEv
.seh_proc _ZNK6apollo2gc7Nursery5statsEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rdx
	addq	$144, %rdx
	movl	$72, %r8d
	callq	memcpy
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
.Lfunc_begin5:
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp113:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
.Ltmp114:                               # EH_LABEL
	jmp	.LBB13_1
.LBB13_1:
.Ltmp115:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp116:                               # EH_LABEL
	jmp	.LBB13_2
.LBB13_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB13_3:
.Ltmp117:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table13:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp113-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp116-.Ltmp113              #   Call between .Ltmp113 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin5         #     jumps to .Ltmp117
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
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
.Lfunc_begin6:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp118:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
.Ltmp119:                               # EH_LABEL
	jmp	.LBB14_1
.LBB14_1:
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB14_2:
.Ltmp120:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp118-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin6         #     jumps to .Ltmp120
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
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
.Lfunc_begin7:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
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
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
	movq	64(%rsp), %rdx
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_
	cmpq	$0, 88(%rsp)
	jbe	.LBB15_5
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
.Ltmp121:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey
.Ltmp122:                               # EH_LABEL
	jmp	.LBB15_2
.LBB15_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movq	88(%rsp), %r9
.Ltmp123:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
.Ltmp124:                               # EH_LABEL
	jmp	.LBB15_3
.LBB15_3:
	jmp	.LBB15_5
.LBB15_4:
.Ltmp125:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
	jmp	.LBB15_6
.LBB15_5:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB15_6:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table15:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp121-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp121
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp124-.Ltmp121              #   Call between .Ltmp121 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin7         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp124           #   Call between .Ltmp124 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
                                        # -- End function
	.def	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev: # @_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev
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
	.def	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev: # @_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev
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
	.def	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev: # @_ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorC2B9nqe220103ERS7_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey
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
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB21_2
# %bb.1:
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.LBB21_2:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
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
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
.Lfunc_begin8:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
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
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$16, %rcx
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movq	72(%rsp), %r9
.Ltmp126:                               # EH_LABEL
	callq	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
.Ltmp127:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB22_1
.LBB22_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB22_2:
.Ltmp128:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table22:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp126-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin8         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp127           #   Call between .Ltmp127 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
.Lfunc_begin9:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 8(%rax)
	jne	.LBB24_3
# %bb.1:
.Ltmp129:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp130:                               # EH_LABEL
	jmp	.LBB24_2
.LBB24_2:
	jmp	.LBB24_3
.LBB24_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB24_4:
.Ltmp131:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table24:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp129-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin9         #     jumps to .Ltmp131
	.byte	1                               #   On action: 1
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEC2B9nqe220103ES9_
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
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin10:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp132:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp133:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB26_1
.LBB26_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB26_2:
.Ltmp134:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table26:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp132-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin10        #     jumps to .Ltmp134
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
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.8(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin11:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp135:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp136:                               # EH_LABEL
	jmp	.LBB29_1
.LBB29_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB29_2:
.Ltmp137:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table29:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp135-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin11        #     jumps to .Ltmp137
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
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
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
	jne	.LBB34_1
	jmp	.LBB34_2
.LBB34_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB34_3
.LBB34_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB34_3:
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
.Ltmp138:                               # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp139:                               # EH_LABEL
	jmp	.LBB39_1
.LBB39_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB39_2:
.Ltmp140:                               # EH_LABEL
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
GCC_except_table39:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp138-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin12        #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp139          #   Call between .Ltmp139 and .Lfunc_end12
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
	.def	_ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB41_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB41_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y,"xr",discard,_ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y
	.globl	_ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y # -- Begin function _ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y
	.p2align	4
_ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y: # @_ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y
.seh_proc _ZNSt3__119__allocation_resultIPPN6apollo2gc3BoxEyEC2B9nqe220103ES5_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
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
	jne	.LBB44_1
	jmp	.LBB44_2
.LBB44_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB44_3
.LBB44_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB44_3:
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
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_ # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
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
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_
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
	.def	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	.globl	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_: # @_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
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
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_,"xr",discard,_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	.globl	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_ # -- Begin function _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	.p2align	4
_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_: # @_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
.seh_proc _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
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
	callq	_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB53_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB53_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin13:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp141:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp142:                               # EH_LABEL
	jmp	.LBB54_1
.LBB54_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB54_2:
.Ltmp143:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table54:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp141-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin13        #     jumps to .Ltmp143
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
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_,"xr",discard,_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_
	.globl	_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_ # -- Begin function _ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_
	.p2align	4
_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_: # @_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_
.seh_proc _ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_
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
	callq	_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	.globl	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_ # -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	.p2align	4
_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_: # @_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
.Lfunc_begin14:
.seh_proc _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
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
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB57_5
# %bb.2:                                #   in Loop: Header=BB57_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	152(%rsp), %r8
.Ltmp144:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
.Ltmp145:                               # EH_LABEL
	jmp	.LBB57_3
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	movq	152(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 152(%rsp)
	movq	136(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB57_1
.LBB57_4:
.Ltmp146:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
	jmp	.LBB57_6
.LBB57_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB57_6:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	.seh_endproc
	.section	.xdata$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table57:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp144-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin14        #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp145          #   Call between .Ltmp145 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_,"xr",discard,_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_
	.globl	_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_ # -- Begin function _ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_
	.p2align	4
_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_: # @_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_
.seh_proc _ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
	.globl	_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_ # -- Begin function _ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
	.p2align	4
_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_: # @_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
.Lfunc_begin15:
.seh_proc _ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
.Ltmp147:                               # EH_LABEL
	callq	_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_
.Ltmp148:                               # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB59_1
.LBB59_1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB59_2:
.Ltmp149:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
	.seh_endproc
	.section	.xdata$_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table59:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp147-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin15        #     jumps to .Ltmp149
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
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
                                        # -- End function
	.def	_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_,"xr",discard,_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_
	.globl	_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_ # -- Begin function _ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_
	.p2align	4
_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_: # @_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_
.seh_proc _ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_
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
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	leaq	56(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_,"xr",discard,_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.globl	_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_ # -- Begin function _ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.p2align	4
_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_: # @_ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
.seh_proc _ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_,"xr",discard,_ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
	.globl	_ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_ # -- Begin function _ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
	.p2align	4
_ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_: # @_ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
.seh_proc _ZNSt3__14pairIPKPN6apollo2gc3BoxES6_EC2B9nqe220103IS6_S6_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S6_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSA_OSB_
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
	.def	_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	.globl	_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_: # @_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
.seh_proc _ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_
	.globl	_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_: # @_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_
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
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
	.p2align	4
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
.Lfunc_begin16:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB69_3
# %bb.1:
.Ltmp150:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev
.Ltmp151:                               # EH_LABEL
	jmp	.LBB69_2
.LBB69_2:
	jmp	.LBB69_3
.LBB69_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB69_4:
.Ltmp152:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table69:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp150-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin16        #     jumps to .Ltmp152
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
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEC2B9nqe220103ES9_
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
	.def	_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
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
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev
	.p2align	4
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev
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
	callq	_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB74_1:                               # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	testb	$1, %al
	jne	.LBB74_2
	jmp	.LBB74_4
.LBB74_2:                               #   in Loop: Header=BB74_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
# %bb.3:                                #   in Loop: Header=BB74_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	jmp	.LBB74_1
.LBB74_4:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
	.globl	_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_: # @_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
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
	.def	_ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE,"xr",discard,_ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.globl	_ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE # -- Begin function _ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.p2align	4
_ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE: # @_ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
.seh_proc _ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, (%rsp)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.globl	_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev # -- Begin function _ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev: # @_ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev
.seh_proc _ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	addq	$-8, %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_
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
	.def	_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_
	.globl	_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_: # @_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_
.seh_proc _ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_
	.globl	_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_: # @_ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_
.seh_proc _ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_
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
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
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
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin17:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp153:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp154:                               # EH_LABEL
	jmp	.LBB84_1
.LBB84_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB84_2:
.Ltmp155:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table84:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp153-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin17        #     jumps to .Ltmp155
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
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB85_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
	nop
.LBB85_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin18:
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp156:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp157:                               # EH_LABEL
	jmp	.LBB87_1
.LBB87_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB87_2:
.Ltmp158:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table87:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp156-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin18        #     jumps to .Ltmp158
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
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
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
	callq	_ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
.Lfunc_begin19:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
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
.LBB89_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB89_4
# %bb.2:                                #   in Loop: Header=BB89_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp159:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.Ltmp160:                               # EH_LABEL
	jmp	.LBB89_3
.LBB89_3:                               #   in Loop: Header=BB89_1 Depth=1
	jmp	.LBB89_1
.LBB89_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB89_5:
.Ltmp161:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table89:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp159-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin19        #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
                                        # -- End function
	.def	_ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y,"xr",discard,_ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y
	.globl	_ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y # -- Begin function _ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y
	.p2align	4
_ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y: # @_ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y
.seh_proc _ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB91_1
	jmp	.LBB91_2
.LBB91_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB91_3
.LBB91_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB91_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev,"xr",discard,_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
	.globl	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev # -- Begin function _ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev: # @_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
.seh_proc _ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	$0, 32(%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev,"xr",discard,_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev
	.globl	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev # -- Begin function _ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev
	.p2align	4
_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev: # @_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev
.seh_proc _ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EED2B9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	32(%rcx), %rax
	cmpq	%rcx, %rax
	jne	.LBB93_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rax
	callq	*32(%rax)
	jmp	.LBB93_5
.LBB93_2:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, 32(%rax)
	je	.LBB93_4
# %bb.3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rax
	callq	*40(%rax)
.LBB93_4:
	jmp	.LBB93_5
.LBB93_5:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_ # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
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
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB95_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y
	nop
.LBB95_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin20:
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp162:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp163:                               # EH_LABEL
	jmp	.LBB97_1
.LBB97_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB97_2:
.Ltmp164:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end20:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table97:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp162-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin20        #     jumps to .Ltmp164
	.byte	1                               #   On action: 1
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y
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
	callq	_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_ # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
.Lfunc_begin21:
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
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
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB101_4
# %bb.2:                                #   in Loop: Header=BB101_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp165:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
.Ltmp166:                               # EH_LABEL
	jmp	.LBB101_3
.LBB101_3:                              #   in Loop: Header=BB101_1 Depth=1
	jmp	.LBB101_1
.LBB101_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB101_5:
.Ltmp167:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end21:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table101:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp165-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin21        #     jumps to .Ltmp167
	.byte	1                               #   On action: 1
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
                                        # -- End function
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin22:
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %r8
.Ltmp168:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp169:                               # EH_LABEL
	jmp	.LBB102_1
.LBB102_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB102_2:
.Ltmp170:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end22:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table102:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp168-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin22        #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
	.globl	_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_: # @_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
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
	.def	_ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_
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
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_ # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_
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
	.def	_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y,"xr",discard,_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y
	.globl	_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y # -- Begin function _ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y
	.p2align	4
_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y: # @_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y
.seh_proc _ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB110_1
	jmp	.LBB110_2
.LBB110_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB110_3
.LBB110_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB110_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEEC2B9nqe220103ESt16initializer_listIS5_E
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	callq	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE
_ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE: # @_ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE
.seh_proc _ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE
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
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
.Lfunc_begin23:
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
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
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorC2B9nqe220103ERS8_
	movq	64(%rsp), %rdx
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	cmpq	$0, 88(%rsp)
	jbe	.LBB113_5
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
.Ltmp171:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
.Ltmp172:                               # EH_LABEL
	jmp	.LBB113_2
.LBB113_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movq	88(%rsp), %r9
.Ltmp173:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
.Ltmp174:                               # EH_LABEL
	jmp	.LBB113_3
.LBB113_3:
	jmp	.LBB113_5
.LBB113_4:
.Ltmp175:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	jmp	.LBB113_6
.LBB113_5:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB113_6:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end23:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table113:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp171-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp174-.Ltmp171              #   Call between .Ltmp171 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin23        #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Lfunc_end23-.Ltmp174          #   Call between .Ltmp174 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
                                        # -- End function
	.def	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev: # @_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev
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
	.def	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev: # @_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev
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
	.def	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	.globl	_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev: # @_ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
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
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB118_2
# %bb.1:
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
.LBB118_2:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
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
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
.Lfunc_begin24:
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
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
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$16, %rcx
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movq	72(%rsp), %r9
.Ltmp176:                               # EH_LABEL
	callq	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
.Ltmp177:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB119_1
.LBB119_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB119_2:
.Ltmp178:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end24:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table119:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp176-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin24        #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end24-.Ltmp177          #   Call between .Ltmp177 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEED2B9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 8(%rax)
	jne	.LBB121_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	nop
.LBB121_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEC2B9nqe220103ESA_
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
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin25:
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp179:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp180:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB123_1
.LBB123_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB123_2:
.Ltmp181:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end25:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table123:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp179-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin25        #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.8(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin26:
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp182:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp183:                               # EH_LABEL
	jmp	.LBB126_1
.LBB126_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB126_2:
.Ltmp184:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end26:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table126:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp182-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin26        #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
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
	.def	_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB128_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB128_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y,"xr",discard,_ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y
	.globl	_ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y # -- Begin function _ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y
	.p2align	4
_ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y: # @_ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y
.seh_proc _ZNSt3__119__allocation_resultIPPPN6apollo2gc3BoxEyEC2B9nqe220103ES6_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
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
	jne	.LBB130_1
	jmp	.LBB130_2
.LBB130_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB130_3
.LBB130_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB130_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionC2B9nqe220103ERS8_y
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
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.globl	_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_ # -- Begin function _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.p2align	4
_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_: # @_ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
.seh_proc _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
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
	callq	_ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB133_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB133_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin27:
.seh_proc _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp185:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
.Ltmp186:                               # EH_LABEL
	jmp	.LBB134_1
.LBB134_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB134_2:
.Ltmp187:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end27:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table134:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp185-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin27        #     jumps to .Ltmp187
	.byte	1                               #   On action: 1
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_,"xr",discard,_ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_
	.globl	_ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_ # -- Begin function _ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_
	.p2align	4
_ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_: # @_ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_
.seh_proc _ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_
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
	callq	_ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.globl	_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_ # -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.p2align	4
_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_: # @_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
.Lfunc_begin28:
.seh_proc _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
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
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
.LBB136_1:                              # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB136_5
# %bb.2:                                #   in Loop: Header=BB136_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	152(%rsp), %r8
.Ltmp188:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
.Ltmp189:                               # EH_LABEL
	jmp	.LBB136_3
.LBB136_3:                              #   in Loop: Header=BB136_1 Depth=1
	movq	152(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 152(%rsp)
	movq	136(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB136_1
.LBB136_4:
.Ltmp190:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
	jmp	.LBB136_6
.LBB136_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB136_6:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end28:
	.seh_handlerdata
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.seh_endproc
	.section	.xdata$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table136:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Lfunc_begin28-.Lfunc_begin28  # >> Call Site 1 <<
	.uleb128 .Ltmp188-.Lfunc_begin28        #   Call between .Lfunc_begin28 and .Ltmp188
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin28        #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin28        # >> Call Site 3 <<
	.uleb128 .Lfunc_end28-.Ltmp189          #   Call between .Ltmp189 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_,"xr",discard,_ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.globl	_ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_ # -- Begin function _ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.p2align	4
_ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_: # @_ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
.seh_proc _ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.globl	_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_ # -- Begin function _ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.p2align	4
_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_: # @_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
.Lfunc_begin29:
.seh_proc _ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
.Ltmp191:                               # EH_LABEL
	callq	_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
.Ltmp192:                               # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB138_1
.LBB138_1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB138_2:
.Ltmp193:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end29:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.seh_endproc
	.section	.xdata$_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table138:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp191-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin29        #     jumps to .Ltmp193
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
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
                                        # -- End function
	.def	_ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_,"xr",discard,_ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_
	.globl	_ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_ # -- Begin function _ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_
	.p2align	4
_ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_: # @_ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_
.seh_proc _ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_
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
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	leaq	56(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_,"xr",discard,_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	.globl	_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_ # -- Begin function _ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	.p2align	4
_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_: # @_ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
.seh_proc _ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_,"xr",discard,_ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	.globl	_ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_ # -- Begin function _ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	.p2align	4
_ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_: # @_ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
.seh_proc _ZNSt3__14pairIPKPPN6apollo2gc3BoxES7_EC2B9nqe220103IS7_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS7_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
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
	.def	_ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_
	.globl	_ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_: # @_ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_
.seh_proc _ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_
	.globl	_ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_: # @_ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_
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
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_
	.p2align	4
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EC2B9nqe220103ERS7_RS8_SB_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_: # @_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
.Lfunc_begin30:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB148_3
# %bb.1:
.Ltmp194:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev
.Ltmp195:                               # EH_LABEL
	jmp	.LBB148_2
.LBB148_2:
	jmp	.LBB148_3
.LBB148_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB148_4:
.Ltmp196:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end30:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table148:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp194-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin30        #     jumps to .Ltmp196
	.byte	1                               #   On action: 1
.Lcst_end30:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEC2B9nqe220103ESA_
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
	.def	_ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
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
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev
	.p2align	4
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev
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
	callq	_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB153_1:                              # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	testb	$1, %al
	jne	.LBB153_2
	jmp	.LBB153_4
.LBB153_2:                              #   in Loop: Header=BB153_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
# %bb.3:                                #   in Loop: Header=BB153_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev
	jmp	.LBB153_1
.LBB153_4:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_,"xr",discard,_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_
	.globl	_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_ # -- Begin function _ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_
	.p2align	4
_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_: # @_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_
.seh_proc _ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEC2B9nqe220103ES6_
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
	.def	_ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE,"xr",discard,_ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.globl	_ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE # -- Begin function _ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.p2align	4
_ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE: # @_ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
.seh_proc _ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, (%rsp)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.globl	_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev # -- Begin function _ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev: # @_ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev
.seh_proc _ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	addq	$-8, %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	.globl	_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_: # @_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
.seh_proc _ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
	.globl	_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_: # @_ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
.seh_proc _ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
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
	callq	_ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEC2B9nqe220103Ev
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
	.def	_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2IZN12_GLOBAL__N_114test_promotionEvE3$_0vEET_;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2IZN12_GLOBAL__N_114test_promotionEvE3$_0vEET_
_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2IZN12_GLOBAL__N_114test_promotionEvE3$_0vEET_: # @"_ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2IZN12_GLOBAL__N_114test_promotionEvE3$_0vEET_"
.seh_proc _ZNSt3__18functionIFPN6apollo2gc3BoxEPKS3_EEC2IZN12_GLOBAL__N_114test_promotionEvE3$_0vEET_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0TnNS_9enable_ifIXntsr7is_sameIu7__decayIT_ES9_EE5valueEiE4typeELi0EEEOSE_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev
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
	.def	_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0TnNS_9enable_ifIXntsr7is_sameIu7__decayIT_ES9_EE5valueEiE4typeELi0EEEOSE_;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0TnNS_9enable_ifIXntsr7is_sameIu7__decayIT_ES9_EE5valueEiE4typeELi0EEEOSE_
_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0TnNS_9enable_ifIXntsr7is_sameIu7__decayIT_ES9_EE5valueEiE4typeELi0EEEOSE_: # @"_ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0TnNS_9enable_ifIXntsr7is_sameIu7__decayIT_ES9_EE5valueEiE4typeELi0EEEOSE_"
.seh_proc _ZNSt3__110__function12__value_funcIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0TnNS_9enable_ifIXntsr7is_sameIu7__decayIT_ES9_EE5valueEiE4typeELi0EEEOSE_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	$0, 32(%rax)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__110__function9__is_nullB9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0EEbRKT_
	testb	$1, %al
	jne	.LBB170_1
	jmp	.LBB170_2
.LBB170_1:
	jmp	.LBB170_3
.LBB170_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103EOS3_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 32(%rax)
.LBB170_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function9__is_nullB9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0EEbRKT_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__110__function9__is_nullB9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0EEbRKT_
_ZNSt3__110__function9__is_nullB9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0EEbRKT_: # @"_ZNSt3__110__function9__is_nullB9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0EEbRKT_"
.seh_proc _ZNSt3__110__function9__is_nullB9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0EEbRKT_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	andb	$1, %al
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103EOS3_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103EOS3_
_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103EOS3_: # @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103EOS3_"
.seh_proc _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103EOS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev,"xr",discard,_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
	.globl	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev # -- Begin function _ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev: # @_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
.seh_proc _ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	leaq	_ZTVNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rax
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED2Ev;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED2Ev
_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED2Ev: # @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED2Ev"
.seh_proc _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED0Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED0Ev
_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED0Ev: # @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED0Ev"
.seh_proc _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED0Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED2Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZdlPv
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEv
_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEv: # @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEv"
.Lfunc_begin31:
.seh_proc _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	$16, %ecx
	callq	_Znwy
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	addq	$8, %rdx
.Ltmp197:                               # EH_LABEL
	callq	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103ERKS3_
.Ltmp198:                               # EH_LABEL
	jmp	.LBB176_1
.LBB176_1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB176_2:
.Ltmp199:                               # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 72(%rsp)
	movl	%eax, 68(%rsp)
	callq	_ZdlPv
# %bb.3:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end31:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table176:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Lfunc_begin31-.Lfunc_begin31  # >> Call Site 1 <<
	.uleb128 .Ltmp197-.Lfunc_begin31        #   Call between .Lfunc_begin31 and .Ltmp197
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin31        #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin31        # >> Call Site 3 <<
	.uleb128 .Lfunc_end31-.Ltmp198          #   Call between .Ltmp198 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEPNS0_6__baseISA_EE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEPNS0_6__baseISA_EE
_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEPNS0_6__baseISA_EE: # @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEPNS0_6__baseISA_EE"
.seh_proc _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEPNS0_6__baseISA_EE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	addq	$8, %rdx
	callq	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103ERKS3_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7destroyEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7destroyEv
_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7destroyEv: # @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7destroyEv"
.seh_proc _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7destroyEv
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
	.def	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE18destroy_deallocateEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE18destroy_deallocateEv
_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE18destroy_deallocateEv: # @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE18destroy_deallocateEv"
.seh_proc _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE18destroy_deallocateEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB179_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	callq	*8(%rax)
	nop
.LBB179_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEclEOS9_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEclEOS9_
_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEclEOS9_: # @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEclEOS9_"
.seh_proc _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEclEOS9_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	addq	$8, %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__110__invoke_rB9nqe220103IPN6apollo2gc3BoxEJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEET_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE6targetERKSt9type_info;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE6targetERKSt9type_info
_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE6targetERKSt9type_info: # @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE6targetERKSt9type_info"
.seh_proc _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE6targetERKSt9type_info
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	leaq	_ZTIZN12_GLOBAL__N_114test_promotionEvE3$_0(%rip), %rdx
	callq	_ZNKSt9type_infoeqB9nqe220103ERKS_
	testb	$1, %al
	jne	.LBB181_1
	jmp	.LBB181_2
.LBB181_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB181_3
.LBB181_2:
	movq	$0, 64(%rsp)
.LBB181_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE11target_typeEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE11target_typeEv
_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE11target_typeEv: # @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE11target_typeEv"
.seh_proc _ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE11target_typeEv
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	leaq	_ZTIZN12_GLOBAL__N_114test_promotionEvE3$_0(%rip), %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev,"xr",discard,_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev
	.globl	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev # -- Begin function _ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev
	.p2align	4
_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev: # @_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev
.seh_proc _ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev
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
	.def	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev,"xr",discard,_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev
	.globl	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev # -- Begin function _ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev
	.p2align	4
_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev: # @_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev
.seh_proc _ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	ud2
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103ERKS3_;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103ERKS3_
_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103ERKS3_: # @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103ERKS3_"
.seh_proc _ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEC2B9nqe220103ERKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEC2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__invoke_rB9nqe220103IPN6apollo2gc3BoxEJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEET_DpOT0_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__110__invoke_rB9nqe220103IPN6apollo2gc3BoxEJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEET_DpOT0_
_ZNSt3__110__invoke_rB9nqe220103IPN6apollo2gc3BoxEJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEET_DpOT0_: # @"_ZNSt3__110__invoke_rB9nqe220103IPN6apollo2gc3BoxEJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEET_DpOT0_"
.seh_proc _ZNSt3__110__invoke_rB9nqe220103IPN6apollo2gc3BoxEJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEET_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__128__invoke_void_return_wrapperIPN6apollo2gc3BoxELb0EE6__callB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEES4_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__invoke_void_return_wrapperIPN6apollo2gc3BoxELb0EE6__callB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEES4_DpOT_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__128__invoke_void_return_wrapperIPN6apollo2gc3BoxELb0EE6__callB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEES4_DpOT_
_ZNSt3__128__invoke_void_return_wrapperIPN6apollo2gc3BoxELb0EE6__callB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEES4_DpOT_: # @"_ZNSt3__128__invoke_void_return_wrapperIPN6apollo2gc3BoxELb0EE6__callB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEES4_DpOT_"
.seh_proc _ZNSt3__128__invoke_void_return_wrapperIPN6apollo2gc3BoxELb0EE6__callB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEES4_DpOT_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__18__invokeB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKN6apollo2gc3BoxEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSA_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18__invokeB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKN6apollo2gc3BoxEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSA_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__18__invokeB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKN6apollo2gc3BoxEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSA_
_ZNSt3__18__invokeB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKN6apollo2gc3BoxEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSA_: # @"_ZNSt3__18__invokeB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKN6apollo2gc3BoxEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSA_"
.seh_proc _ZNSt3__18__invokeB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKN6apollo2gc3BoxEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	callq	_ZZN12_GLOBAL__N_114test_promotionEvENK3$_0clEPKN6apollo2gc3BoxE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZN12_GLOBAL__N_114test_promotionEvENK3$_0clEPKN6apollo2gc3BoxE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZZN12_GLOBAL__N_114test_promotionEvENK3$_0clEPKN6apollo2gc3BoxE
_ZZN12_GLOBAL__N_114test_promotionEvENK3$_0clEPKN6apollo2gc3BoxE: # @"_ZZN12_GLOBAL__N_114test_promotionEvENK3$_0clEPKN6apollo2gc3BoxE"
.seh_proc _ZZN12_GLOBAL__N_114test_promotionEvENK3$_0clEPKN6apollo2gc3BoxE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, %ecx
	callq	malloc
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	72(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, %r8d
	callq	memcpy
	movq	64(%rsp), %rcx
	callq	_ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	movl	$2, %edx
	callq	_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	andq	$3, %rdx
	callq	_ZNSt3__16atomicIyEC2B9nqe220103Ey
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movb	$1, 14(%rcx)
	movq	(%rax), %rcx
	leaq	56(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
	movq	56(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_,"xr",discard,_ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_
	.globl	_ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_ # -- Begin function _ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_
	.p2align	4
_ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_: # @_ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_
.seh_proc _ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
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
	jb	.LBB194_2
	jmp	.LBB194_5
.LBB194_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB194_3
	jmp	.LBB194_1
.LBB194_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB194_4
.LBB194_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB194_4
.LBB194_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
.LBB194_4:
	movq	16(%rsp), %rax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
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
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
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
	je	.LBB200_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	jmp	.LBB200_4
.LBB200_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
.LBB200_4:
	jmp	.LBB200_5
.LBB200_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
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
	.def	_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
.Lfunc_begin32:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
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
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp200:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
.Ltmp201:                               # EH_LABEL
	jmp	.LBB203_1
.LBB203_1:
	movq	72(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB203_2:
.Ltmp202:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end32:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table203:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp200-.Lfunc_begin32        # >> Call Site 1 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin32        #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Lfunc_end32-.Ltmp201          #   Call between .Ltmp201 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
.Lfunc_begin33:
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp203:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
.Ltmp204:                               # EH_LABEL
	jmp	.LBB204_1
.LBB204_1:
	movq	96(%rsp), %rdx
	addq	$8, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp205:                               # EH_LABEL
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.Ltmp206:                               # EH_LABEL
	jmp	.LBB204_2
.LBB204_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB204_3:
.Ltmp207:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end33:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table204:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Lfunc_begin33-.Lfunc_begin33  # >> Call Site 1 <<
	.uleb128 .Ltmp203-.Lfunc_begin33        #   Call between .Lfunc_begin33 and .Ltmp203
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin33        # >> Call Site 2 <<
	.uleb128 .Ltmp206-.Ltmp203              #   Call between .Ltmp203 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin33        #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin33        # >> Call Site 3 <<
	.uleb128 .Lfunc_end33-.Ltmp206          #   Call between .Ltmp206 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end33:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB205_2
# %bb.1:
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.LBB205_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB205_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB205_5
.LBB205_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB205_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_ # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_: # @_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	cmpq	$0, 88(%rsp)
	jbe	.LBB206_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB206_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
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
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB210_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
	nop
.LBB210_2:
	.seh_startepilogue
	addq	$72, %rsp
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
	jne	.LBB212_1
	jmp	.LBB212_2
.LBB212_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB212_3
.LBB212_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB212_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
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
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
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
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
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
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_ # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_: # @_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
.Lfunc_begin34:
.seh_proc _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB228_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB228_4
# %bb.2:                                #   in Loop: Header=BB228_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp208:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.Ltmp209:                               # EH_LABEL
	jmp	.LBB228_3
.LBB228_3:                              #   in Loop: Header=BB228_1 Depth=1
	jmp	.LBB228_1
.LBB228_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB228_5:
.Ltmp210:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end34:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table228:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp208-.Lfunc_begin34        # >> Call Site 1 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin34        #     jumps to .Ltmp210
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
	.section	.text$_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNKSt9type_infoeqB9nqe220103ERKS_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt9type_infoeqB9nqe220103ERKS_,"xr",discard,_ZNKSt9type_infoeqB9nqe220103ERKS_
	.globl	_ZNKSt9type_infoeqB9nqe220103ERKS_ # -- Begin function _ZNKSt9type_infoeqB9nqe220103ERKS_
	.p2align	4
_ZNKSt9type_infoeqB9nqe220103ERKS_:     # @_ZNKSt9type_infoeqB9nqe220103ERKS_
.seh_proc _ZNKSt9type_infoeqB9nqe220103ERKS_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	8(%rax), %rcx
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	movb	$1, %al
	cmpq	56(%rsp), %rcx
	movb	%al, 39(%rsp)                   # 1-byte Spill
	je	.LBB229_2
# %bb.1:
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	callq	strcmp
	cmpl	$0, %eax
	sete	%al
	movb	%al, 39(%rsp)                   # 1-byte Spill
.LBB229_2:
	movb	39(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x
# %bb.0:
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 160(%rsp)
	movq	%r9, 152(%rsp)
	movq	176(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	ja	.LBB231_5
# %bb.1:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	144(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB231_3
# %bb.2:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	168(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %r9
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	160(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	subq	%rax, %r9
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
	jmp	.LBB231_4
.LBB231_3:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	168(%rsp), %rdx
	movq	160(%rsp), %r8
	movq	(%rax), %r9
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_
.LBB231_4:
	jmp	.LBB231_6
.LBB231_5:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	144(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	168(%rsp), %rdx
	movq	160(%rsp), %r8
	movq	144(%rsp), %r9
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
	nop
.LBB231_6:
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_,"xr",discard,_ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	.globl	_ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_ # -- Begin function _ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	.p2align	4
_ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_: # @_ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
.seh_proc _ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_,"xr",discard,_ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_
	.globl	_ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_ # -- Begin function _ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_
	.p2align	4
_ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_: # @_ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_
.seh_proc _ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_
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
	movq	56(%rsp), %r8
	movq	48(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %r8
	movq	40(%rsp), %r9
	callq	_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_,"xr",discard,_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_
	.globl	_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_ # -- Begin function _ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_
	.p2align	4
_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_: # @_ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_
.seh_proc _ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_
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
	callq	_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rdx
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpq	$0, (%rax)
	je	.LBB236_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	(%rcx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
.LBB236_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_,"xr",discard,_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_
	.globl	_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_ # -- Begin function _ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_
	.p2align	4
_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_: # @_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_
.seh_proc _ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_
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
	callq	_ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_
	movq	120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	leaq	104(%rsp), %rcx
	leaq	103(%rsp), %rdx
	movq	%rax, 32(%rsp)
	callq	_ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	movq	152(%rsp), %rcx
	movq	104(%rsp), %rdx
	callq	_ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_
	movq	%rax, 88(%rsp)
	movq	136(%rsp), %rcx
	movq	112(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	leaq	88(%rsp), %rdx
	leaq	80(%rsp), %r8
	callq	_ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	movq	72(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_,"xr",discard,_ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	.globl	_ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_ # -- Begin function _ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	.p2align	4
_ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_: # @_ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
.seh_proc _ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
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
	callq	_ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_,"xr",discard,_ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	.globl	_ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_ # -- Begin function _ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	.p2align	4
_ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_: # @_ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
.seh_proc _ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
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
	callq	_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_,"xr",discard,_ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_
	.globl	_ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_ # -- Begin function _ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_
	.p2align	4
_ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_: # @_ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_
.seh_proc _ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_,"xr",discard,_ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_
	.globl	_ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_ # -- Begin function _ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_
	.p2align	4
_ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_: # @_ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_
.seh_proc _ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_
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
	callq	_ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movq	64(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 56(%rsp)
	leaq	80(%rsp), %rdx
	leaq	56(%rsp), %r8
	callq	_ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE,"xr",discard,_ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE
	.globl	_ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE # -- Begin function _ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE
	.p2align	4
_ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE: # @_ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE
.seh_proc _ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE
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
	.def	_ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_,"xr",discard,_ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_
	.globl	_ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_ # -- Begin function _ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_
	.p2align	4
_ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_: # @_ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_
.seh_proc _ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_
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
	callq	_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_,"xr",discard,_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
	.globl	_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_ # -- Begin function _ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
	.p2align	4
_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_: # @_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
.seh_proc _ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IRS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
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
	.def	_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_,"xr",discard,_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	.globl	_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_ # -- Begin function _ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
	.p2align	4
_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_: # @_ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
.seh_proc _ZNSt3__14pairIPKPN6apollo2gc3BoxEPS4_EC2B9nqe220103IS6_S7_TnNS_9enable_ifIXclsr25__check_pair_constructionIS6_S7_EE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSB_OSC_
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
	.def	_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_,"xr",discard,_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_
	.globl	_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_ # -- Begin function _ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_
	.p2align	4
_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_: # @_ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_
.seh_proc _ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.globl	_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_ # -- Begin function _ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.p2align	4
_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_: # @_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
.Lfunc_begin35:
.seh_proc _ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
.Ltmp211:                               # EH_LABEL
	callq	_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
.Ltmp212:                               # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB247_1
.LBB247_1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB247_2:
.Ltmp213:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end35:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.seh_endproc
	.section	.xdata$_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table247:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Ltmp211-.Lfunc_begin35        # >> Call Site 1 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin35        #     jumps to .Ltmp213
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
	.section	.text$_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
	.globl	_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
	.p2align	4
_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_: # @_ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
.seh_proc _ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
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
	callq	_ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_
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
	.def	_ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_,"xr",discard,_ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_
	.globl	_ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_ # -- Begin function _ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_
	.p2align	4
_ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_: # @_ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_
.seh_proc _ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_,"xr",discard,_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.globl	_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_ # -- Begin function _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.p2align	4
_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_: # @_ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
.seh_proc _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
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
	.def	_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
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
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"apollo_gc_nursery_tests: all passed"

.L.str.1:                               # @.str.1
	.asciz	"stats.minor_cycles == 1"

.L.str.2:                               # @.str.2
	.asciz	"C:/Users/devon/Apollo/ln/Apollo-Main/GC/apollo_gc_nursery_tests.cpp"

.L.str.3:                               # @.str.3
	.asciz	"stats.boxes_collected >= 1 && \"c should have been collected\""

.L.str.4:                               # @.str.4
	.asciz	"stats.bytes_copied > 0"

.L.str.5:                               # @.str.5
	.asciz	"n.bytes_in_use() <= alloc_before"

.L.str.6:                               # @.str.6
	.asciz	"test_basic_copy ok"

.L.str.7:                               # @.str.7
	.asciz	"b && \"nursery alloc failed\""

.L.str.8:                               # @.str.8
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
.L.str.9:                               # @.str.9
	.asciz	"slot != nullptr"

.L.str.10:                              # @.str.10
	.asciz	"p->tag == 0xA1 && p->value == 42"

.L.str.11:                              # @.str.11
	.asciz	"test_slot_rewrite ok"

.L.str.12:                              # @.str.12
	.asciz	"slot != a"

.L.str.13:                              # @.str.13
	.asciz	"slot->generation == 0"

.L.str.14:                              # @.str.14
	.asciz	"n.stats().boxes_promoted == 0"

.L.str.15:                              # @.str.15
	.asciz	"slot->generation == 1"

.L.str.16:                              # @.str.16
	.asciz	"n.stats().boxes_promoted == 1"

.L.str.17:                              # @.str.17
	.asciz	"!tenured_boxes.empty()"

.L.str.18:                              # @.str.18
	.asciz	"p->tag == 0xDE && p->value == 99"

.L.str.19:                              # @.str.19
	.asciz	"test_promotion ok"

	.p2align	3, 0x0                          # @"_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE"
_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE:
	.quad	0
	.quad	_ZTINSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE
	.quad	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED2Ev
	.quad	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EED0Ev
	.quad	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEv
	.quad	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7__cloneEPNS0_6__baseISA_EE
	.quad	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE7destroyEv
	.quad	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE18destroy_deallocateEv
	.quad	_ZNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEclEOS9_
	.quad	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE6targetERKSt9type_info
	.quad	_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EE11target_typeEv

	.p2align	3, 0x0                          # @"_ZTINSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE"
_ZTINSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE
	.quad	_ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE

_ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE: # @"_ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE"
	.asciz	"NSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE"

	.section	.rdata$_ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE,"dr",discard,_ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.globl	_ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE # @_ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.p2align	3, 0x0
_ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE

	.section	.rdata$_ZTSNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE,"dr",discard,_ZTSNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.globl	_ZTSNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE # @_ZTSNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
_ZTSNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE:
	.asciz	"NSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE"

	.section	.rdata$_ZTVNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE,"dr",discard,_ZTVNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.globl	_ZTVNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE # @_ZTVNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.p2align	3, 0x0
_ZTVNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE:
	.quad	0
	.quad	_ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.quad	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED2Ev
	.quad	_ZNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EED0Ev
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual

	.section	.rdata,"dr"
	.p2align	3, 0x0                          # @"_ZTIZN12_GLOBAL__N_114test_promotionEvE3$_0"
_ZTIZN12_GLOBAL__N_114test_promotionEvE3$_0:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZN12_GLOBAL__N_114test_promotionEvE3$_0

_ZTSZN12_GLOBAL__N_114test_promotionEvE3$_0: # @"_ZTSZN12_GLOBAL__N_114test_promotionEvE3$_0"
	.asciz	"ZN12_GLOBAL__N_114test_promotionEvE3$_0"

.L.str.20:                              # @.str.20
	.asciz	"total > 0"

.L.str.21:                              # @.str.21
	.asciz	"fresh != nullptr"

.L.str.22:                              # @.str.22
	.asciz	"n.stats().boxes_collected >= static_cast<std::uint64_t>(total - 1)"

.L.str.23:                              # @.str.23
	.asciz	"test_overflow_then_collect ok"

.L.str.24:                              # @.str.24
	.asciz	"slot == &fake && \"external pointer should be untouched\""

.L.str.25:                              # @.str.25
	.asciz	"nursery_slot != nullptr"

.L.str.26:                              # @.str.26
	.asciz	"test_external_pointers_untouched ok"

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
	.long	.Ltmp215-.Ltmp214               # Subsection size
.Ltmp214:
	.short	.Ltmp217-.Ltmp216               # Record length
.Ltmp216:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp217:
	.short	.Ltmp219-.Ltmp218               # Record length
.Ltmp218:
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
.Ltmp219:
.Ltmp215:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN12_GLOBAL__N_115test_basic_copyEv
	.addrsig_sym _ZN12_GLOBAL__N_117test_slot_rewriteEv
	.addrsig_sym _ZN12_GLOBAL__N_114test_promotionEv
	.addrsig_sym _ZN12_GLOBAL__N_126test_overflow_then_collectEv
	.addrsig_sym _ZN12_GLOBAL__N_132test_external_pointers_untouchedEv
	.addrsig_sym puts
	.addrsig_sym _ZN12_GLOBAL__N_113alloc_payloadERN6apollo2gc7NurseryEjj
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNK6apollo2gc7Nursery12bytes_in_useEv
	.addrsig_sym _ZN6apollo2gc7Nursery13minor_collectERKNSt3__16vectorIPNS0_3BoxENS2_9allocatorIS5_EEEERKNS3_IPS5_NS6_ISB_EEEERKNS2_8functionIFS5_PKS4_EEE
	.addrsig_sym _ZNK6apollo2gc7Nursery5statsEv
	.addrsig_sym _assert
	.addrsig_sym _ZN6apollo2gc7Nursery12try_allocateEyPFvPNS0_3BoxEPvEt
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__init_with_sizeB9nqe220103IPKS4_SA_EEvT_T0_y
	.addrsig_sym _ZNKSt16initializer_listIPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPN6apollo2gc3BoxEE3endB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__vallocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_y
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.addrsig_sym _ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt3__13minB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNKSt3__16__lessIvvEclB9nqe220103IyyEEbRKT_RKT0_
	.addrsig_sym _ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB9nqe220103Ev
	.addrsig_sym _ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym _ZNSt3__19allocatorIPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEEEvPKvS8_S8_S8_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IPN6apollo2gc3BoxEEEPT_S6_
	.addrsig_sym _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__unwrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_EEDaT_T0_
	.addrsig_sym _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_
	.addrsig_sym _ZNSt3__113__unwrap_iterB9nqe220103IPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS5_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS9_EEEES9_
	.addrsig_sym _ZNSt3__113__rewrap_iterB9nqe220103IPPN6apollo2gc3BoxES5_NS_18__unwrap_iter_implIS5_Lb1EEEEET_S8_T0_
	.addrsig_sym _ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__unwrapB9nqe220103ES6_S6_
	.addrsig_sym _ZNSt3__113__unwrap_iterB9nqe220103IPKPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKPN6apollo2gc3BoxEEEPT_S7_
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE9constructB9nqe220103IS5_JRKS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SD_DpOSE_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS6_EEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IPN6apollo2gc3BoxEJRKS4_EPS4_EEPT_S9_DpOT0_
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPN6apollo2gc3BoxEEEPS5_EclB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB9nqe220103IPPN6apollo2gc3BoxES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116reverse_iteratorIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IPN6apollo2gc3BoxEEEvPT_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES5_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES5_S5_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS6_PS5_y
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE22__base_destruct_at_endB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__19allocatorIPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS4_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE10deallocateB9nqe220103ERS7_PS6_y
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE22__base_destruct_at_endB9nqe220103EPS5_
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE7destroyB9nqe220103IS6_TnNS_9enable_ifIXnt15__has_destroy_vIS7_PT_EEiE4typeELi0EEEvRS7_SC_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IPPN6apollo2gc3BoxEEEPT_S7_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IPPN6apollo2gc3BoxEEEvPT_
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE31__annotate_contiguous_containerB9nqe220103EPKvSA_
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEEEvPKvS9_S9_S9_
	.addrsig_sym _ZNSt3__19allocatorIPPN6apollo2gc3BoxEE10deallocateB9nqe220103EPS5_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IPPN6apollo2gc3BoxEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZN12_GLOBAL__N_110payload_ofEPN6apollo2gc3BoxE
	.addrsig_sym _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE16__init_with_sizeB9nqe220103IPKS5_SB_EEvT_T0_y
	.addrsig_sym _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE3endB9nqe220103Ev
	.addrsig_sym _ZNKSt16initializer_listIPPN6apollo2gc3BoxEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.addrsig_sym _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE11__vallocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE18__construct_at_endIPKS5_SB_EEvT_T0_y
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_6vectorIPPN6apollo2gc3BoxENS_9allocatorIS6_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE8max_sizeB9nqe220103IS7_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS7_
	.addrsig_sym _ZNSt3__19allocatorIPPN6apollo2gc3BoxEE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IPPN6apollo2gc3BoxEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__130__uninitialized_allocator_copyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.addrsig_sym _ZNKSt3__16vectorIPPN6apollo2gc3BoxENS_9allocatorIS5_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__unwrap_rangeB9nqe220103IPKPPN6apollo2gc3BoxES7_EEDaT_T0_
	.addrsig_sym _ZNSt3__135__uninitialized_allocator_copy_implB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.addrsig_sym _ZNSt3__113__unwrap_iterB9nqe220103IPPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS6_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISA_EEEESA_
	.addrsig_sym _ZNSt3__113__rewrap_iterB9nqe220103IPPPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.addrsig_sym _ZNSt3__119__unwrap_range_implIPKPPN6apollo2gc3BoxES7_E8__unwrapB9nqe220103ES7_S7_
	.addrsig_sym _ZNSt3__113__unwrap_iterB9nqe220103IPKPPN6apollo2gc3BoxENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPKPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES7_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKPPN6apollo2gc3BoxEEEPT_S8_
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIPPN6apollo2gc3BoxEEEE9constructB9nqe220103IS6_JRKS6_ETnNS_9enable_ifIXnt17__has_construct_vIS7_PT_DpT0_EEiE4typeELi0EEEvRS7_SE_DpOSF_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS7_EEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IPPN6apollo2gc3BoxEJRKS5_EPS5_EEPT_SA_DpOT0_
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIPPN6apollo2gc3BoxEEEPS6_EclB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIPPN6apollo2gc3BoxEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB9nqe220103IPPPN6apollo2gc3BoxES6_EEbRKNS_16reverse_iteratorIT_EERKNS7_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__unwrapB9nqe220103ES6_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPPPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEEaSB9nqe220103ESt16initializer_listIS4_E
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5emptyB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPPN6apollo2gc3BoxEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEEdeB9nqe220103Ev
	.addrsig_sym free
	.addrsig_sym _ZNSt3__111__wrap_iterIPPN6apollo2gc3BoxEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__110__function9__is_nullB9nqe220103IZN12_GLOBAL__N_114test_promotionEvE3$_0EEbRKT_
	.addrsig_sym _ZNSt3__110__invoke_rB9nqe220103IPN6apollo2gc3BoxEJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEET_DpOT0_
	.addrsig_sym _ZNSt3__128__invoke_void_return_wrapperIPN6apollo2gc3BoxELb0EE6__callB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKS3_EEES4_DpOT_
	.addrsig_sym _ZNSt3__18__invokeB9nqe220103IJRZN12_GLOBAL__N_114test_promotionEvE3$_0PKN6apollo2gc3BoxEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSA_
	.addrsig_sym _ZZN12_GLOBAL__N_114test_promotionEvENK3$_0clEPKN6apollo2gc3BoxE
	.addrsig_sym malloc
	.addrsig_sym _ZNSt3__17launderB9nqe220103IN6apollo2gc3BoxEEEPT_S5_
	.addrsig_sym _ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE9push_backB9nqe220103ERKS4_
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIPN6apollo2gc3BoxENS_9allocatorIS5_EEE12emplace_backIJRKS5_EEERS5_DpOT_EUlvE_ZNS9_IJSB_EEESC_SF_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE12emplace_backIJRKS4_EEERS4_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJRKS4_EEEvDpOT_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIPN6apollo2gc3BoxEEEPS5_EEvRT_T0_SA_SA_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferIPN6apollo2gc3BoxENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNKSt9type_infoeqB9nqe220103ERKS_
	.addrsig_sym strcmp
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE6assignB9nqe220103IPKS4_TnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS4_NS_15iterator_traitsISC_E9referenceEEE5valueEiE4typeELi0EEEvSC_SC_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE18__assign_with_sizeB9nqe220103INS_17_ClassicAlgPolicyEPKS4_SB_EEvT0_T1_x
	.addrsig_sym _ZNSt3__18distanceB9nqe220103IPKPN6apollo2gc3BoxEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	.addrsig_sym _ZNSt3__18__copy_nB9nqe220103INS_17_ClassicAlgPolicyEPKPN6apollo2gc3BoxEPS5_TnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT0_EE5valueEiE4typeELi0EEENS_4pairISA_T1_EESA_NS_8_IterOpsIT_E17__difference_typeISA_EESE_
	.addrsig_sym _ZNSt3__16__copyB9nqe220103IPKPN6apollo2gc3BoxES6_PS4_EENS_4pairIT_T1_EES9_T0_SA_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE17__destruct_at_endB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE13__vdeallocateEv
	.addrsig_sym _ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__copy_implEPKPN6apollo2gc3BoxES7_PS5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISA_SB_EESA_T1_SB_
	.addrsig_sym _ZNKSt3__111__copy_implclB9nqe220103IKPN6apollo2gc3BoxES5_TnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_
	.addrsig_sym _ZNSt3__19make_pairB9nqe220103IPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS9_Iu7__decayIT0_EE4typeEEEOSA_OSE_
	.addrsig_sym _ZNSt3__114__rewrap_rangeB9nqe220103IPKPN6apollo2gc3BoxES6_S6_EET0_S7_T1_
	.addrsig_sym _ZNSt3__119__copy_trivial_implB9nqe220103IKPN6apollo2gc3BoxES4_EENS_4pairIPT_PT0_EES8_S8_SA_
	.addrsig_sym _ZNSt3__119__constexpr_memmoveB9nqe220103IPN6apollo2gc3BoxEKS4_EEPT_S7_PT0_NS_15__element_countE
	.addrsig_sym _ZNSt3__19make_pairB9nqe220103IRPKPN6apollo2gc3BoxEPS4_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSA_Iu7__decayIT0_EE4typeEEEOSB_OSF_
	.addrsig_sym _ZNSt3__119__unwrap_range_implIPKPN6apollo2gc3BoxES6_E8__rewrapB9nqe220103ES6_S6_
	.addrsig_sym _ZNSt3__113__rewrap_iterB9nqe220103IPKPN6apollo2gc3BoxES6_NS_18__unwrap_iter_implIS6_Lb1EEEEET_S9_T0_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPKPN6apollo2gc3BoxELb1EE8__rewrapB9nqe220103ES6_S6_
	.addrsig_sym _ZNSt3__110__distanceB9nqe220103IPKPN6apollo2gc3BoxETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS8_EEEEE5valueENS_20incrementable_traitsISD_EESE_E4type15difference_typeES8_S8_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__16vectorIPN6apollo2gc3BoxENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPPN6apollo2gc3BoxEE4baseB9nqe220103Ev
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
	.addrsig_sym _ZTINSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE
	.addrsig_sym _ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_114test_promotionEvE3$_0FPN6apollo2gc3BoxEPKS6_EEE
	.addrsig_sym _ZTINSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.addrsig_sym _ZTSNSt3__110__function6__baseIFPN6apollo2gc3BoxEPKS4_EEE
	.addrsig_sym _ZTIZN12_GLOBAL__N_114test_promotionEvE3$_0
	.addrsig_sym _ZTSZN12_GLOBAL__N_114test_promotionEvE3$_0
