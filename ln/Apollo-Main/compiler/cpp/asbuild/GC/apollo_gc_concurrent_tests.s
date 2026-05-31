	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"apollo_gc_concurrent_tests.cpp"
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
	callq	_ZN12_GLOBAL__N_141test_alloc_then_collect_reclaims_unrootedEv
	callq	_ZN12_GLOBAL__N_135test_cycle_of_two_unrooted_is_sweptEv
	callq	_ZN12_GLOBAL__N_156test_write_barrier_preserves_concurrently_attached_childEv
	callq	_ZN12_GLOBAL__N_142test_concurrent_marker_threads_drain_queueEv
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
	.def	_ZN12_GLOBAL__N_141test_alloc_then_collect_reclaims_unrootedEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_141test_alloc_then_collect_reclaims_unrootedEv
_ZN12_GLOBAL__N_141test_alloc_then_collect_reclaims_unrootedEv: # @_ZN12_GLOBAL__N_141test_alloc_then_collect_reclaims_unrootedEv
.Lfunc_begin0:
.seh_proc _ZN12_GLOBAL__N_141test_alloc_then_collect_reclaims_unrootedEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$840, %rsp                      # imm = 0x348
	.seh_stackalloc 840
	.seh_endprologue
	leaq	792(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6ConfigC2Ev
	movb	$0, 820(%rsp)
	movb	$0, 821(%rsp)
	movq	$0, 808(%rsp)
	movups	792(%rsp), %xmm0
	movups	808(%rsp), %xmm1
	movups	824(%rsp), %xmm2
	movaps	%xmm2, 320(%rsp)
	movaps	%xmm1, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	leaq	344(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	288(%rsp), %rdx
	callq	_ZN6apollo2gc7RuntimeC1ENS1_6ConfigE
	movq	96(%rsp), %rcx                  # 8-byte Reload
.Ltmp0:                                 # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6attachEv
.Ltmp1:                                 # EH_LABEL
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 280(%rsp)
	movq	280(%rsp), %rcx
.Ltmp2:                                 # EH_LABEL
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$1, %edx
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp3:                                 # EH_LABEL
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB1_2
.LBB1_2:
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 256(%rsp)
	movq	280(%rsp), %rcx
	movq	256(%rsp), %r8
.Ltmp4:                                 # EH_LABEL
	movl	$2, %edx
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp5:                                 # EH_LABEL
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 248(%rsp)
	movq	280(%rsp), %rcx
.Ltmp6:                                 # EH_LABEL
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$3, %edx
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp7:                                 # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB1_4
.LBB1_4:
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 240(%rsp)
	movq	248(%rsp), %rdx
	leaq	344(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZN6apollo2gc7Runtime13register_rootEPNS0_3BoxE
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, 232(%rsp)
	leaq	176(%rsp), %rcx
	callq	_ZNK6apollo2gc7Runtime5statsEv
	movq	64(%rsp), %rcx                  # 8-byte Reload
.Ltmp8:                                 # EH_LABEL
	callq	_ZN6apollo2gc7Runtime16collect_blockingEv
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB1_5
.LBB1_5:
	leaq	120(%rsp), %rcx
	leaq	344(%rsp), %rdx
	callq	_ZNK6apollo2gc7Runtime5statsEv
# %bb.6:
	movq	120(%rsp), %rax
	movq	176(%rsp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB1_10
# %bb.7:
.Ltmp10:                                # EH_LABEL
	movq	__imp___acrt_iob_func(%rip), %rax
	movl	$2, %ecx
	callq	*%rax
.Ltmp11:                                # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rsp, %rax
	movl	$74, 32(%rax)
	leaq	.L.str.2(%rip), %rdx
	leaq	.L.str.3(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	callq	fprintf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jmp	.LBB1_10
.LBB1_9:
.Ltmp16:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 272(%rsp)
	movl	%eax, 268(%rsp)
	leaq	344(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	jmp	.LBB1_20
.LBB1_10:
	jmp	.LBB1_11
.LBB1_11:
	jmp	.LBB1_12
.LBB1_12:
	jmp	.LBB1_13
.LBB1_13:
	movq	136(%rsp), %rax
	cmpq	192(%rsp), %rax
	ja	.LBB1_16
# %bb.14:
.Ltmp12:                                # EH_LABEL
	movq	__imp___acrt_iob_func(%rip), %rax
	movl	$2, %ecx
	callq	*%rax
.Ltmp13:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB1_15
.LBB1_15:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rsp, %rax
	movl	$75, 32(%rax)
	leaq	.L.str.2(%rip), %rdx
	leaq	.L.str.5(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	callq	fprintf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB1_16:
	jmp	.LBB1_17
.LBB1_17:
	jmp	.LBB1_18
.LBB1_18:
	movq	232(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rdx
	leaq	344(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZN6apollo2gc7Runtime15unregister_rootENS1_10RootHandleE
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp14:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6detachEv
.Ltmp15:                                # EH_LABEL
	jmp	.LBB1_19
.LBB1_19:
	leaq	344(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	nop
	.seh_startepilogue
	addq	$840, %rsp                      # imm = 0x348
	.seh_endepilogue
	retq
.LBB1_20:
	movq	272(%rsp), %rcx
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
	.uleb128 .Ltmp15-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp15            #   Call between .Ltmp15 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_135test_cycle_of_two_unrooted_is_sweptEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_135test_cycle_of_two_unrooted_is_sweptEv
_ZN12_GLOBAL__N_135test_cycle_of_two_unrooted_is_sweptEv: # @_ZN12_GLOBAL__N_135test_cycle_of_two_unrooted_is_sweptEv
.Lfunc_begin1:
.seh_proc _ZN12_GLOBAL__N_135test_cycle_of_two_unrooted_is_sweptEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$808, %rsp                      # imm = 0x328
	.seh_stackalloc 808
	.seh_endprologue
	leaq	760(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6ConfigC2Ev
	movb	$0, 788(%rsp)
	movb	$0, 789(%rsp)
	movups	760(%rsp), %xmm0
	movups	776(%rsp), %xmm1
	movups	792(%rsp), %xmm2
	movaps	%xmm2, 288(%rsp)
	movaps	%xmm1, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	leaq	312(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leaq	256(%rsp), %rdx
	callq	_ZN6apollo2gc7RuntimeC1ENS1_6ConfigE
	movq	80(%rsp), %rcx                  # 8-byte Reload
.Ltmp17:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6attachEv
.Ltmp18:                                # EH_LABEL
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB2_1
.LBB2_1:
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 248(%rsp)
	movq	248(%rsp), %rcx
.Ltmp19:                                # EH_LABEL
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$10, %edx
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp20:                                # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB2_2
.LBB2_2:
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 224(%rsp)
	movq	248(%rsp), %rcx
	movq	224(%rsp), %r8
.Ltmp21:                                # EH_LABEL
	movl	$20, %edx
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp22:                                # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB2_3
.LBB2_3:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 216(%rsp)
	movq	224(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 208(%rsp)
	movq	216(%rsp), %rcx
	movq	208(%rsp), %rax
	movq	%rcx, (%rax)
	leaq	152(%rsp), %rcx
	leaq	312(%rsp), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNK6apollo2gc7Runtime5statsEv
	movq	56(%rsp), %rcx                  # 8-byte Reload
.Ltmp23:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime16collect_blockingEv
.Ltmp24:                                # EH_LABEL
	jmp	.LBB2_4
.LBB2_4:
	leaq	96(%rsp), %rcx
	leaq	312(%rsp), %rdx
	callq	_ZNK6apollo2gc7Runtime5statsEv
# %bb.5:
	movq	112(%rsp), %rax
	movq	168(%rsp), %rcx
	addq	$96, %rcx
	cmpq	%rcx, %rax
	jae	.LBB2_9
# %bb.6:
.Ltmp25:                                # EH_LABEL
	movq	__imp___acrt_iob_func(%rip), %rax
	movl	$2, %ecx
	callq	*%rax
.Ltmp26:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB2_7
.LBB2_7:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rsp, %rax
	movl	$100, 32(%rax)
	leaq	.L.str.2(%rip), %rdx
	leaq	.L.str.7(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	callq	fprintf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jmp	.LBB2_9
.LBB2_8:
.Ltmp29:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 240(%rsp)
	movl	%eax, 236(%rsp)
	leaq	312(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	jmp	.LBB2_13
.LBB2_9:
	jmp	.LBB2_10
.LBB2_10:
	jmp	.LBB2_11
.LBB2_11:
.Ltmp27:                                # EH_LABEL
	leaq	312(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6detachEv
.Ltmp28:                                # EH_LABEL
	jmp	.LBB2_12
.LBB2_12:
	leaq	312(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	nop
	.seh_startepilogue
	addq	$808, %rsp                      # imm = 0x328
	.seh_endepilogue
	retq
.LBB2_13:
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
	.uleb128 .Ltmp17-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp28-.Ltmp17                #   Call between .Ltmp17 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_156test_write_barrier_preserves_concurrently_attached_childEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_156test_write_barrier_preserves_concurrently_attached_childEv
_ZN12_GLOBAL__N_156test_write_barrier_preserves_concurrently_attached_childEv: # @_ZN12_GLOBAL__N_156test_write_barrier_preserves_concurrently_attached_childEv
.Lfunc_begin2:
.seh_proc _ZN12_GLOBAL__N_156test_write_barrier_preserves_concurrently_attached_childEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$728, %rsp                      # imm = 0x2D8
	.seh_stackalloc 728
	.seh_endprologue
	leaq	680(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6ConfigC2Ev
	movb	$0, 708(%rsp)
	movb	$0, 709(%rsp)
	movups	680(%rsp), %xmm0
	movups	696(%rsp), %xmm1
	movups	712(%rsp), %xmm2
	movaps	%xmm2, 208(%rsp)
	movaps	%xmm1, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	leaq	232(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	176(%rsp), %rdx
	callq	_ZN6apollo2gc7RuntimeC1ENS1_6ConfigE
	movq	88(%rsp), %rcx                  # 8-byte Reload
.Ltmp30:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6attachEv
.Ltmp31:                                # EH_LABEL
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 168(%rsp)
	movq	168(%rsp), %rcx
.Ltmp32:                                # EH_LABEL
	xorl	%edx, %edx
	movl	%edx, %r8d
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp33:                                # EH_LABEL
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB3_2
.LBB3_2:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rdx
	leaq	232(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	callq	_ZN6apollo2gc7Runtime13register_rootEPNS0_3BoxE
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 136(%rsp)
.Ltmp34:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime16collect_blockingEv
.Ltmp35:                                # EH_LABEL
	jmp	.LBB3_3
.LBB3_3:
	movq	168(%rsp), %rcx
.Ltmp36:                                # EH_LABEL
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$7, %edx
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp37:                                # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB3_4
.LBB3_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	movq	144(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 120(%rsp)
	movq	168(%rsp), %rcx
	movq	120(%rsp), %rdx
	movq	128(%rsp), %r8
	callq	_ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_
	movq	128(%rsp), %rcx
	movq	120(%rsp), %rax
	movq	%rcx, (%rax)
.Ltmp38:                                # EH_LABEL
	leaq	232(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime16collect_blockingEv
.Ltmp39:                                # EH_LABEL
	jmp	.LBB3_5
.LBB3_5:
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	addq	$32, %rax
	movq	%rax, 112(%rsp)
# %bb.6:
	movq	112(%rsp), %rax
	cmpl	$7, 8(%rax)
	je	.LBB3_10
# %bb.7:
.Ltmp40:                                # EH_LABEL
	movq	__imp___acrt_iob_func(%rip), %rax
	movl	$2, %ecx
	callq	*%rax
.Ltmp41:                                # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rsp, %rax
	movl	$137, 32(%rax)
	leaq	.L.str.2(%rip), %rdx
	leaq	.L.str.8(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	callq	fprintf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
	jmp	.LBB3_10
.LBB3_9:
.Ltmp44:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 160(%rsp)
	movl	%eax, 156(%rsp)
	leaq	232(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	jmp	.LBB3_14
.LBB3_10:
	jmp	.LBB3_11
.LBB3_11:
	jmp	.LBB3_12
.LBB3_12:
	movq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rdx
	leaq	232(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZN6apollo2gc7Runtime15unregister_rootENS1_10RootHandleE
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp42:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6detachEv
.Ltmp43:                                # EH_LABEL
	jmp	.LBB3_13
.LBB3_13:
	leaq	232(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	nop
	.seh_startepilogue
	addq	$728, %rsp                      # imm = 0x2D8
	.seh_endepilogue
	retq
.LBB3_14:
	movq	160(%rsp), %rcx
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
	.uleb128 .Ltmp30-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp43-.Ltmp30                #   Call between .Ltmp30 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin2          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp43            #   Call between .Ltmp43 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN12_GLOBAL__N_142test_concurrent_marker_threads_drain_queueEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_142test_concurrent_marker_threads_drain_queueEv
_ZN12_GLOBAL__N_142test_concurrent_marker_threads_drain_queueEv: # @_ZN12_GLOBAL__N_142test_concurrent_marker_threads_drain_queueEv
.Lfunc_begin3:
.seh_proc _ZN12_GLOBAL__N_142test_concurrent_marker_threads_drain_queueEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$760, %rsp                      # imm = 0x2F8
	.seh_stackalloc 760
	.seh_endprologue
	leaq	712(%rsp), %rcx
	callq	_ZN6apollo2gc7Runtime6ConfigC2Ev
	movb	$1, 740(%rsp)
	movb	$0, 741(%rsp)
	movq	$2, 728(%rsp)
	movups	712(%rsp), %xmm0
	movups	728(%rsp), %xmm1
	movups	744(%rsp), %xmm2
	movaps	%xmm2, 240(%rsp)
	movaps	%xmm1, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	leaq	264(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leaq	208(%rsp), %rdx
	callq	_ZN6apollo2gc7RuntimeC1ENS1_6ConfigE
	movq	80(%rsp), %rcx                  # 8-byte Reload
.Ltmp45:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6attachEv
.Ltmp46:                                # EH_LABEL
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB4_1
.LBB4_1:
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 200(%rsp)
	movq	$0, 176(%rsp)
	movl	$0, 172(%rsp)
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1024, 172(%rsp)                # imm = 0x400
	jge	.LBB4_7
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	movq	200(%rsp), %rcx
	movl	172(%rsp), %edx
	movq	176(%rsp), %r8
.Ltmp55:                                # EH_LABEL
	callq	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.Ltmp56:                                # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 176(%rsp)
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	movl	172(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 172(%rsp)
	jmp	.LBB4_2
.LBB4_6:
.Ltmp57:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 192(%rsp)
	movl	%eax, 188(%rsp)
	leaq	264(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	jmp	.LBB4_22
.LBB4_7:
	movq	176(%rsp), %rdx
	leaq	264(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZN6apollo2gc7Runtime13register_rootEPNS0_3BoxE
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 160(%rsp)
.Ltmp47:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime16collect_blockingEv
.Ltmp48:                                # EH_LABEL
	jmp	.LBB4_8
.LBB4_8:
	leaq	104(%rsp), %rcx
	leaq	264(%rsp), %rdx
	callq	_ZNK6apollo2gc7Runtime5statsEv
# %bb.9:
	cmpq	$1, 104(%rsp)
	je	.LBB4_12
# %bb.10:
.Ltmp49:                                # EH_LABEL
	movq	__imp___acrt_iob_func(%rip), %rax
	movl	$2, %ecx
	callq	*%rax
.Ltmp50:                                # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB4_11
.LBB4_11:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rsp, %rax
	movl	$160, 32(%rax)
	leaq	.L.str.2(%rip), %rdx
	leaq	.L.str.9(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	callq	fprintf
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
	cmpq	$49152, 128(%rsp)               # imm = 0xC000
	jae	.LBB4_18
# %bb.16:
.Ltmp51:                                # EH_LABEL
	movq	__imp___acrt_iob_func(%rip), %rax
	movl	$2, %ecx
	callq	*%rax
.Ltmp52:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB4_17
.LBB4_17:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rsp, %rax
	movl	$161, 32(%rax)
	leaq	.L.str.2(%rip), %rdx
	leaq	.L.str.10(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	callq	fprintf
	movl	_ZN12_GLOBAL__N_110g_failuresE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN12_GLOBAL__N_110g_failuresE(%rip)
.LBB4_18:
	jmp	.LBB4_19
.LBB4_19:
	jmp	.LBB4_20
.LBB4_20:
	movq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rdx
	leaq	264(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZN6apollo2gc7Runtime15unregister_rootENS1_10RootHandleE
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp53:                                # EH_LABEL
	callq	_ZN6apollo2gc7Runtime6detachEv
.Ltmp54:                                # EH_LABEL
	jmp	.LBB4_21
.LBB4_21:
	leaq	264(%rsp), %rcx
	callq	_ZN6apollo2gc7RuntimeD1Ev
	nop
	.seh_startepilogue
	addq	$760, %rsp                      # imm = 0x2F8
	.seh_endepilogue
	retq
.LBB4_22:
	movq	192(%rsp), %rcx
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
	.uleb128 .Ltmp45-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp54-.Ltmp45                #   Call between .Ltmp45 and .Ltmp54
	.uleb128 .Ltmp57-.Lfunc_begin3          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp54            #   Call between .Ltmp54 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
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
	.def	_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE: # @_ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
.seh_proc _ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movl	%edx, 60(%rsp)
	movq	%r8, 48(%rsp)
	movq	64(%rsp), %rcx
	movl	$16, %edx
	leaq	_ZN12_GLOBAL__N_110trace_nodeEPN6apollo2gc3BoxEPv(%rip), %r8
	movl	$1, %r9d
	callq	_ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	movq	%rax, 40(%rsp)
	cmpq	$0, 40(%rsp)
	jne	.LBB6_2
# %bb.1:
	leaq	.L.str.6(%rip), %rcx
	leaq	.L.str.4(%rip), %rdx
	movl	$41, %r8d
	callq	_assert
.LBB6_2:
	movq	40(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movl	60(%rsp), %ecx
	movl	%ecx, 8(%rax)
	movq	40(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN12_GLOBAL__N_110trace_nodeEPN6apollo2gc3BoxEPv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN12_GLOBAL__N_110trace_nodeEPN6apollo2gc3BoxEPv
_ZN12_GLOBAL__N_110trace_nodeEPN6apollo2gc3BoxEPv: # @_ZN12_GLOBAL__N_110trace_nodeEPN6apollo2gc3BoxEPv
.seh_proc _ZN12_GLOBAL__N_110trace_nodeEPN6apollo2gc3BoxEPv
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	callq	_ZN6apollo2gc6Tracer4markEPNS0_3BoxE
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_,"xr",discard,_ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_
	.globl	_ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_ # -- Begin function _ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_
	.p2align	4
_ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_: # @_ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_
.seh_proc _ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZN6apollo2gc7Mutator7runtimeEv
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNK6apollo2gc7Runtime5phaseEv
	movb	%al, 39(%rsp)
	movq	56(%rsp), %rcx
	callq	_ZN6apollo2gc15note_card_dirtyEPKv
	cmpb	$0, 39(%rsp)
	jne	.LBB8_2
# %bb.1:
	jmp	.LBB8_6
.LBB8_2:
	cmpq	$0, 48(%rsp)
	jne	.LBB8_4
# %bb.3:
	jmp	.LBB8_6
.LBB8_4:
	movq	40(%rsp), %rcx
	callq	_ZNK6apollo2gc7Runtime11sweep_whiteEv
	movb	%al, 38(%rsp)
	movq	48(%rsp), %rcx
	movb	38(%rsp), %dl
	callq	_ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE
	testb	$1, %al
	jne	.LBB8_5
	jmp	.LBB8_6
.LBB8_5:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZN6apollo2gc7Mutator9push_greyEPNS0_3BoxE
	nop
.LBB8_6:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
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
	.def	_ZNK6apollo2gc7Runtime5phaseEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo2gc7Runtime5phaseEv,"xr",discard,_ZNK6apollo2gc7Runtime5phaseEv
	.globl	_ZNK6apollo2gc7Runtime5phaseEv  # -- Begin function _ZNK6apollo2gc7Runtime5phaseEv
	.p2align	4
_ZNK6apollo2gc7Runtime5phaseEv:         # @_ZNK6apollo2gc7Runtime5phaseEv
.seh_proc _ZNK6apollo2gc7Runtime5phaseEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$48, %rcx
	movl	$2, %edx
	callq	_ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo2gc7Runtime11sweep_whiteEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo2gc7Runtime11sweep_whiteEv,"xr",discard,_ZNK6apollo2gc7Runtime11sweep_whiteEv
	.globl	_ZNK6apollo2gc7Runtime11sweep_whiteEv # -- Begin function _ZNK6apollo2gc7Runtime11sweep_whiteEv
	.p2align	4
_ZNK6apollo2gc7Runtime11sweep_whiteEv:  # @_ZNK6apollo2gc7Runtime11sweep_whiteEv
.seh_proc _ZNK6apollo2gc7Runtime11sweep_whiteEv
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$50, %rcx
	movl	$2, %edx
	callq	_ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE,"xr",discard,_ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE
	.globl	_ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE # -- Begin function _ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE
	.p2align	4
_ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE: # @_ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE
.seh_proc _ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movb	%dl, 87(%rsp)
	movq	88(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movl	$2, %edx
	callq	_ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	movq	%rax, 72(%rsp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	andq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	movb	%al, 71(%rsp)
	movb	71(%rsp), %al
	cmpb	87(%rsp), %al
	je	.LBB12_3
# %bb.2:
	movb	$0, 103(%rsp)
	jmp	.LBB12_6
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	andq	$-4, %rax
	orq	$2, %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %r8
	leaq	72(%rsp), %rdx
	movl	$4, %r9d
	movl	$2, 32(%rsp)
	callq	_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
	testb	$1, %al
	jne	.LBB12_4
	jmp	.LBB12_5
.LBB12_4:
	movb	$1, 103(%rsp)
	jmp	.LBB12_6
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_6:
	movb	103(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE,"xr",discard,_ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE
	.globl	_ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE # -- Begin function _ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE
	.p2align	4
_ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE: # @_ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE
.seh_proc _ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	44(%rsp), %edx
	callq	_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE,"xr",discard,_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE
	.globl	_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE # -- Begin function _ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE
	.p2align	4
_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE: # @_ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE
.seh_proc _ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE
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
	jb	.LBB14_2
	jmp	.LBB14_5
.LBB14_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB14_3
	jmp	.LBB14_1
.LBB14_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB14_4
.LBB14_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB14_4
.LBB14_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
.LBB14_4:
	movb	19(%rsp), %al
	.seh_startepilogue
	addq	$32, %rsp
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
	jb	.LBB16_2
	jmp	.LBB16_5
.LBB16_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB16_3
	jmp	.LBB16_1
.LBB16_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB16_4
.LBB16_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
	jmp	.LBB16_4
.LBB16_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 19(%rsp)
.LBB16_4:
	movb	19(%rsp), %al
	.seh_startepilogue
	addq	$32, %rsp
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
	jb	.LBB19_2
	jmp	.LBB19_5
.LBB19_5:
	movl	12(%rsp), %eax                  # 4-byte Reload
	subl	$5, %eax
	je	.LBB19_3
	jmp	.LBB19_1
.LBB19_1:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB19_4
.LBB19_2:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB19_4
.LBB19_3:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
.LBB19_4:
	movq	16(%rsp), %rax
	.seh_startepilogue
	addq	$40, %rsp
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
.Lfunc_begin4:
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
.Ltmp58:                                # EH_LABEL
	callq	_ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
.Ltmp59:                                # EH_LABEL
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	jmp	.LBB20_1
.LBB20_1:
	movl	300(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB20_2
# %bb.59:
	movq	280(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI20_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB20_2:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB20_9
	jmp	.LBB20_64
.LBB20_64:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB20_10
	jmp	.LBB20_8
.LBB20_3:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB20_19
	jmp	.LBB20_63
.LBB20_63:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB20_20
	jmp	.LBB20_18
.LBB20_4:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB20_29
	jmp	.LBB20_62
.LBB20_62:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB20_30
	jmp	.LBB20_28
.LBB20_5:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB20_39
	jmp	.LBB20_61
.LBB20_61:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB20_40
	jmp	.LBB20_38
.LBB20_6:
	movl	312(%rsp), %eax                 # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	jb	.LBB20_49
	jmp	.LBB20_60
.LBB20_60:
	movl	312(%rsp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB20_50
	jmp	.LBB20_48
.LBB20_7:
	movb	319(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$360, %rsp                      # imm = 0x168
	.seh_endepilogue
	retq
.LBB20_8:
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
	jne	.LBB20_13
	jmp	.LBB20_12
.LBB20_9:
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
	jne	.LBB20_15
	jmp	.LBB20_14
.LBB20_10:
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
	jne	.LBB20_17
	jmp	.LBB20_16
.LBB20_11:
	jmp	.LBB20_7
.LBB20_12:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_13:
	movb	271(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_11
.LBB20_14:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_15:
	movb	255(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_11
.LBB20_16:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_17:
	movb	239(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_11
.LBB20_18:
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
	jne	.LBB20_23
	jmp	.LBB20_22
.LBB20_19:
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
	jne	.LBB20_25
	jmp	.LBB20_24
.LBB20_20:
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
	jne	.LBB20_27
	jmp	.LBB20_26
.LBB20_21:
	jmp	.LBB20_7
.LBB20_22:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_23:
	movb	223(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_21
.LBB20_24:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_25:
	movb	207(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_21
.LBB20_26:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_27:
	movb	191(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_21
.LBB20_28:
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
	jne	.LBB20_33
	jmp	.LBB20_32
.LBB20_29:
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
	jne	.LBB20_35
	jmp	.LBB20_34
.LBB20_30:
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
	jne	.LBB20_37
	jmp	.LBB20_36
.LBB20_31:
	jmp	.LBB20_7
.LBB20_32:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_33:
	movb	175(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_31
.LBB20_34:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_35:
	movb	159(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_31
.LBB20_36:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_37:
	movb	143(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_31
.LBB20_38:
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
	jne	.LBB20_43
	jmp	.LBB20_42
.LBB20_39:
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
	jne	.LBB20_45
	jmp	.LBB20_44
.LBB20_40:
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
	jne	.LBB20_47
	jmp	.LBB20_46
.LBB20_41:
	jmp	.LBB20_7
.LBB20_42:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_43:
	movb	127(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_41
.LBB20_44:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_45:
	movb	111(%rsp), %al                  # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_41
.LBB20_46:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_47:
	movb	95(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_41
.LBB20_48:
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
	jne	.LBB20_53
	jmp	.LBB20_52
.LBB20_49:
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
	jne	.LBB20_55
	jmp	.LBB20_54
.LBB20_50:
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
	jne	.LBB20_57
	jmp	.LBB20_56
.LBB20_51:
	jmp	.LBB20_7
.LBB20_52:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_53:
	movb	79(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_51
.LBB20_54:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_55:
	movb	63(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_51
.LBB20_56:
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_57:
	movb	47(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	movb	%al, 319(%rsp)
	jmp	.LBB20_51
.LBB20_58:
.Ltmp60:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end4:
	.section	.rdata,"dr",associative,_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,unique,0
	.p2align	2, 0x0
.LJTI20_0:
	.long	.LBB20_3-.LJTI20_0
	.long	.LBB20_3-.LJTI20_0
	.long	.LBB20_4-.LJTI20_0
	.long	.LBB20_5-.LJTI20_0
	.long	.LBB20_6-.LJTI20_0
	.seh_handlerdata
	.section	.text$_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,"xr",discard,_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	.seh_endproc
	.section	.xdata$_ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table20:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp58-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin4          #     jumps to .Ltmp60
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
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
	jne	.LBB21_2
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	jmp	.LBB21_6
.LBB21_2:
	cmpl	$4, 12(%rsp)
	jne	.LBB21_4
# %bb.3:
	movl	$2, %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	jmp	.LBB21_5
.LBB21_4:
	movl	12(%rsp), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
.LBB21_5:
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	%eax, 8(%rsp)                   # 4-byte Spill
.LBB21_6:
	movl	8(%rsp), %eax                   # 4-byte Reload
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
	.lcomm	_ZN12_GLOBAL__N_110g_failuresE,4,4 # @_ZN12_GLOBAL__N_110g_failuresE
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"apollo_gc_concurrent_tests: all passed\n"

.L.str.1:                               # @.str.1
	.asciz	"apollo_gc_concurrent_tests: %d failure(s)\n"

.L.str.2:                               # @.str.2
	.asciz	"CHECK failed: %s @ %s:%d\n"

.L.str.3:                               # @.str.3
	.asciz	"after.cycles == before.cycles + 1"

.L.str.4:                               # @.str.4
	.asciz	"C:/Users/devon/Apollo/ln/Apollo-Main/GC/apollo_gc_concurrent_tests.cpp"

.L.str.5:                               # @.str.5
	.asciz	"after.bytes_swept > before.bytes_swept"

.L.str.6:                               # @.str.6
	.asciz	"b"

.L.str.7:                               # @.str.7
	.asciz	"after.bytes_swept >= before.bytes_swept + 2 * (sizeof(Box) + sizeof(Node))"

.L.str.8:                               # @.str.8
	.asciz	"survivor->value == 7"

.L.str.9:                               # @.str.9
	.asciz	"s.cycles == 1"

.L.str.10:                              # @.str.10
	.asciz	"s.bytes_live_after_last_cycle >= 1024 * (sizeof(Box) + sizeof(Node))"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp62-.Ltmp61                 # Subsection size
.Ltmp61:
	.short	.Ltmp64-.Ltmp63                 # Record length
.Ltmp63:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp64:
	.short	.Ltmp66-.Ltmp65                 # Record length
.Ltmp65:
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
.Ltmp66:
.Ltmp62:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN12_GLOBAL__N_141test_alloc_then_collect_reclaims_unrootedEv
	.addrsig_sym _ZN12_GLOBAL__N_135test_cycle_of_two_unrooted_is_sweptEv
	.addrsig_sym _ZN12_GLOBAL__N_156test_write_barrier_preserves_concurrently_attached_childEv
	.addrsig_sym _ZN12_GLOBAL__N_142test_concurrent_marker_threads_drain_queueEv
	.addrsig_sym printf
	.addrsig_sym _ZN6apollo2gc7Runtime6attachEv
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZN12_GLOBAL__N_110alloc_nodeERN6apollo2gc7MutatorEiPNS1_3BoxE
	.addrsig_sym _ZN6apollo2gc7Runtime13register_rootEPNS0_3BoxE
	.addrsig_sym _ZNK6apollo2gc7Runtime5statsEv
	.addrsig_sym _ZN6apollo2gc7Runtime16collect_blockingEv
	.addrsig_sym fprintf
	.addrsig_sym _ZN6apollo2gc7Runtime15unregister_rootENS1_10RootHandleE
	.addrsig_sym _ZN6apollo2gc7Runtime6detachEv
	.addrsig_sym _ZN6apollo2gc7Mutator8allocateEyPFvPNS0_3BoxEPvEt
	.addrsig_sym _ZN12_GLOBAL__N_110trace_nodeEPN6apollo2gc3BoxEPv
	.addrsig_sym _assert
	.addrsig_sym _ZN6apollo2gc6Tracer4markEPNS0_3BoxE
	.addrsig_sym _ZN6apollo2gc13write_barrierERNS0_7MutatorEPPNS0_3BoxES4_
	.addrsig_sym _ZN6apollo2gc7Mutator7runtimeEv
	.addrsig_sym _ZNK6apollo2gc7Runtime5phaseEv
	.addrsig_sym _ZN6apollo2gc15note_card_dirtyEPKv
	.addrsig_sym _ZNK6apollo2gc7Runtime11sweep_whiteEv
	.addrsig_sym _ZN6apollo2gc3Box17try_shade_to_greyENS0_5ColorE
	.addrsig_sym _ZN6apollo2gc7Mutator9push_greyEPNS0_3BoxE
	.addrsig_sym _ZNKSt3__113__atomic_baseIN6apollo2gc7Runtime5PhaseELb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc7Runtime5PhaseEEET_PKNS_22__cxx_atomic_base_implIS5_EENS_12memory_orderE
	.addrsig_sym _ZNKSt3__113__atomic_baseIN6apollo2gc5ColorELb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IN6apollo2gc5ColorEEET_PKNS_22__cxx_atomic_base_implIS4_EENS_12memory_orderE
	.addrsig_sym _ZNKSt3__113__atomic_baseIyLb0EE4loadB9nqe220103ENS_12memory_orderE
	.addrsig_sym _ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakB9nqe220103ERyyNS_12memory_orderES3_
	.addrsig_sym _ZNSt3__117__cxx_atomic_loadB9nqe220103IyEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE
	.addrsig_sym _ZNSt3__134__cxx_atomic_compare_exchange_weakB9nqe220103IyEEbPNS_22__cxx_atomic_base_implIT_EEPS2_S2_NS_12memory_orderES6_
	.addrsig_sym _ZNSt3__118__to_failure_orderB9nqe220103ENS_12memory_orderE
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZN12_GLOBAL__N_110g_failuresE
