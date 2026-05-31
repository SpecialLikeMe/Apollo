	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"diagnostic.cpp"
	.def	_ZN6apollo4diag13formatOneLineERKNS0_10DiagnosticE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo4diag13formatOneLineERKNS0_10DiagnosticE # -- Begin function _ZN6apollo4diag13formatOneLineERKNS0_10DiagnosticE
	.p2align	4
_ZN6apollo4diag13formatOneLineERKNS0_10DiagnosticE: # @_ZN6apollo4diag13formatOneLineERKNS0_10DiagnosticE
.Lfunc_begin0:
.seh_proc _ZN6apollo4diag13formatOneLineERKNS0_10DiagnosticE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$376, %rsp                      # imm = 0x178
	.seh_stackalloc 376
	.seh_endprologue
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 368(%rsp)
	movq	%rdx, 360(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	movq	360(%rsp), %rax
	movb	(%rax), %dl
.Ltmp0:                                 # EH_LABEL
	leaq	80(%rsp), %rcx
	callq	_ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB0_1
.LBB0_1:
.Ltmp2:                                 # EH_LABEL
	leaq	96(%rsp), %rcx
	leaq	80(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
.Ltmp3:                                 # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB0_2
.LBB0_2:
.Ltmp4:                                 # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movb	$91, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp5:                                 # EH_LABEL
	jmp	.LBB0_3
.LBB0_3:
	movq	360(%rsp), %rcx
	addq	$8, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB0_7
# %bb.4:
	movq	360(%rsp), %rdx
	addq	$8, %rdx
.Ltmp6:                                 # EH_LABEL
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp7:                                 # EH_LABEL
	jmp	.LBB0_5
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
.Ltmp24:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB0_23
.LBB0_7:
	movq	360(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB0_13
# %bb.8:
	movq	360(%rsp), %rcx
	addq	$8, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB0_11
# %bb.9:
.Ltmp8:                                 # EH_LABEL
	leaq	96(%rsp), %rcx
	movb	$58, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movq	360(%rsp), %rdx
	addq	$32, %rdx
.Ltmp10:                                # EH_LABEL
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp11:                                # EH_LABEL
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
.Ltmp12:                                # EH_LABEL
	leaq	.L.str(%rip), %rdx
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp13:                                # EH_LABEL
	jmp	.LBB0_14
.LBB0_14:
	movq	360(%rsp), %rcx
	addq	$80, %rcx
	callq	_ZNK6apollo3mir4Span5validEv
	testb	$1, %al
	jne	.LBB0_15
	jmp	.LBB0_17
.LBB0_15:
	movq	360(%rsp), %rax
	movl	84(%rax), %edx
.Ltmp16:                                # EH_LABEL
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp17:                                # EH_LABEL
	jmp	.LBB0_16
.LBB0_16:
	jmp	.LBB0_19
.LBB0_17:
.Ltmp14:                                # EH_LABEL
	leaq	96(%rsp), %rcx
	movb	$63, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp15:                                # EH_LABEL
	jmp	.LBB0_18
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
.Ltmp18:                                # EH_LABEL
	leaq	96(%rsp), %rcx
	movb	$32, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp19:                                # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_20
.LBB0_20:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	360(%rsp), %rdx
	addq	$56, %rdx
.Ltmp20:                                # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp21:                                # EH_LABEL
	jmp	.LBB0_21
.LBB0_21:
.Ltmp22:                                # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	96(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp23:                                # EH_LABEL
	jmp	.LBB0_22
.LBB0_22:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$376, %rsp                      # imm = 0x178
	.seh_endepilogue
	retq
.LBB0_23:
	movq	72(%rsp), %rcx
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.globl	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev # -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.p2align	4
_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev: # @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Lfunc_begin1:
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
.Ltmp25:                                # EH_LABEL
	leaq	_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+8(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
.Ltmp26:                                # EH_LABEL
	jmp	.LBB1_1
.LBB1_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24(%rip), %rax
	movq	%rax, (%rcx)
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64(%rip), %rax
	movq	%rax, 112(%rcx)
	addq	$8, %rcx
.Ltmp28:                                # EH_LABEL
	movl	$16, %edx
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
.Ltmp29:                                # EH_LABEL
	jmp	.LBB1_2
.LBB1_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB1_3:
.Ltmp27:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB1_5
.LBB1_4:
.Ltmp30:                                # EH_LABEL
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
.LBB1_5:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$112, %rcx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
# %bb.6:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end1-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
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
	.def	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE,"xr",discard,_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	.globl	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE # -- Begin function _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	.p2align	4
_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE: # @_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
.seh_proc _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
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
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe220103Ev
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
	.def	_ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE
_ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE: # @_ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE
.seh_proc _ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movb	%dl, 63(%rsp)
	movb	63(%rsp), %al
	movb	%al, 62(%rsp)                   # 1-byte Spill
	testb	%al, %al
	je	.LBB4_1
	jmp	.LBB4_6
.LBB4_6:
	movb	62(%rsp), %al                   # 1-byte Reload
	subb	$1, %al
	je	.LBB4_2
	jmp	.LBB4_7
.LBB4_7:
	movb	62(%rsp), %al                   # 1-byte Reload
	subb	$2, %al
	je	.LBB4_3
	jmp	.LBB4_4
.LBB4_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.19(%rip), %rdx
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
	jmp	.LBB4_5
.LBB4_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.20(%rip), %rdx
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
	jmp	.LBB4_5
.LBB4_3:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.21(%rip), %rdx
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
	jmp	.LBB4_5
.LBB4_4:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.19(%rip), %rdx
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKc
.LBB4_5:
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	_ZNK6apollo3mir4Span5validEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK6apollo3mir4Span5validEv,"xr",discard,_ZNK6apollo3mir4Span5validEv
	.globl	_ZNK6apollo3mir4Span5validEv    # -- Begin function _ZNK6apollo3mir4Span5validEv
	.p2align	4
_ZNK6apollo3mir4Span5validEv:           # @_ZNK6apollo3mir4Span5validEv
.seh_proc _ZNK6apollo3mir4Span5validEv
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	16(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$-1, (%rcx)
	movb	%al, 15(%rsp)                   # 1-byte Spill
	je	.LBB8_2
# %bb.1:
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	8(%rcx), %eax
	cmpl	4(%rcx), %eax
	setae	%al
	movb	%al, 15(%rsp)                   # 1-byte Spill
.LBB8_2:
	movb	15(%rsp), %al                   # 1-byte Reload
	andb	$1, %al
	.seh_startepilogue
	addq	$24, %rsp
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
	.def	_ZN6apollo4diag12renderBannerERKNS0_10DiagnosticEPKNS_3mir9SourceMapE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo4diag12renderBannerERKNS0_10DiagnosticEPKNS_3mir9SourceMapE # -- Begin function _ZN6apollo4diag12renderBannerERKNS0_10DiagnosticEPKNS_3mir9SourceMapE
	.p2align	4
_ZN6apollo4diag12renderBannerERKNS0_10DiagnosticEPKNS_3mir9SourceMapE: # @_ZN6apollo4diag12renderBannerERKNS0_10DiagnosticEPKNS_3mir9SourceMapE
.Lfunc_begin2:
.seh_proc _ZN6apollo4diag12renderBannerERKNS0_10DiagnosticEPKNS_3mir9SourceMapE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$680, %rsp                      # imm = 0x2A8
	.seh_stackalloc 680
	.seh_endprologue
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	%rcx, 672(%rsp)
	movq	%rdx, 664(%rsp)
	movq	%r8, 656(%rsp)
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	movq	664(%rsp), %rax
	movb	(%rax), %dl
.Ltmp31:                                # EH_LABEL
	leaq	376(%rsp), %rcx
	callq	_ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE
.Ltmp32:                                # EH_LABEL
	jmp	.LBB11_1
.LBB11_1:
.Ltmp33:                                # EH_LABEL
	leaq	392(%rsp), %rcx
	leaq	376(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
.Ltmp34:                                # EH_LABEL
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	jmp	.LBB11_2
.LBB11_2:
.Ltmp35:                                # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movb	$91, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp36:                                # EH_LABEL
	jmp	.LBB11_3
.LBB11_3:
	movq	664(%rsp), %rcx
	addq	$8, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB11_7
# %bb.4:
	movq	664(%rsp), %rdx
	addq	$8, %rdx
.Ltmp37:                                # EH_LABEL
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp38:                                # EH_LABEL
	jmp	.LBB11_5
.LBB11_5:
	jmp	.LBB11_7
.LBB11_6:
.Ltmp89:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	jmp	.LBB11_51
.LBB11_7:
	movq	664(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB11_13
# %bb.8:
	movq	664(%rsp), %rcx
	addq	$8, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB11_11
# %bb.9:
.Ltmp39:                                # EH_LABEL
	leaq	392(%rsp), %rcx
	movb	$58, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp40:                                # EH_LABEL
	jmp	.LBB11_10
.LBB11_10:
	jmp	.LBB11_11
.LBB11_11:
	movq	664(%rsp), %rdx
	addq	$32, %rdx
.Ltmp41:                                # EH_LABEL
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp42:                                # EH_LABEL
	jmp	.LBB11_12
.LBB11_12:
	jmp	.LBB11_13
.LBB11_13:
.Ltmp43:                                # EH_LABEL
	leaq	.L.str.1(%rip), %rdx
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp44:                                # EH_LABEL
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB11_14
.LBB11_14:
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	664(%rsp), %rdx
	addq	$56, %rdx
.Ltmp45:                                # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp46:                                # EH_LABEL
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB11_15
.LBB11_15:
.Ltmp47:                                # EH_LABEL
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movb	$10, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp48:                                # EH_LABEL
	jmp	.LBB11_16
.LBB11_16:
.Ltmp49:                                # EH_LABEL
	leaq	.L.str.2(%rip), %rdx
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp50:                                # EH_LABEL
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB11_17
.LBB11_17:
	movq	664(%rsp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, 328(%rsp)
	movq	80(%rax), %rax
	movq	%rax, 320(%rsp)
	movq	656(%rsp), %r8
.Ltmp51:                                # EH_LABEL
	leaq	336(%rsp), %rcx
	leaq	320(%rsp), %rdx
	callq	_ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE
.Ltmp52:                                # EH_LABEL
	jmp	.LBB11_18
.LBB11_18:
.Ltmp53:                                # EH_LABEL
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	336(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp54:                                # EH_LABEL
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB11_19
.LBB11_19:
.Ltmp55:                                # EH_LABEL
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movb	$10, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp56:                                # EH_LABEL
	jmp	.LBB11_20
.LBB11_20:
	leaq	336(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	664(%rsp), %rax
	addq	$96, %rax
	movq	%rax, 312(%rsp)
	movq	312(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 304(%rsp)
	movq	312(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 296(%rsp)
.LBB11_21:                              # =>This Inner Loop Header: Depth=1
	leaq	304(%rsp), %rcx
	leaq	296(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB11_22
	jmp	.LBB11_32
.LBB11_22:                              #   in Loop: Header=BB11_21 Depth=1
	leaq	304(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev
	movq	%rax, 288(%rsp)
.Ltmp81:                                # EH_LABEL
	leaq	.L.str.3(%rip), %rdx
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp82:                                # EH_LABEL
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB11_23
.LBB11_23:                              #   in Loop: Header=BB11_21 Depth=1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	288(%rsp), %rdx
	addq	$16, %rdx
.Ltmp83:                                # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp84:                                # EH_LABEL
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB11_24
.LBB11_24:                              #   in Loop: Header=BB11_21 Depth=1
.Ltmp85:                                # EH_LABEL
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.4(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp86:                                # EH_LABEL
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB11_25
.LBB11_25:                              #   in Loop: Header=BB11_21 Depth=1
	movq	288(%rsp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, 256(%rsp)
	movq	(%rax), %rax
	movq	%rax, 248(%rsp)
	movq	656(%rsp), %r8
.Ltmp87:                                # EH_LABEL
	leaq	264(%rsp), %rcx
	leaq	248(%rsp), %rdx
	callq	_ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE
.Ltmp88:                                # EH_LABEL
	jmp	.LBB11_26
.LBB11_26:                              #   in Loop: Header=BB11_21 Depth=1
.Ltmp90:                                # EH_LABEL
	movq	96(%rsp), %rcx                  # 8-byte Reload
	leaq	264(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp91:                                # EH_LABEL
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB11_27
.LBB11_27:                              #   in Loop: Header=BB11_21 Depth=1
.Ltmp92:                                # EH_LABEL
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.5(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp93:                                # EH_LABEL
	jmp	.LBB11_28
.LBB11_28:                              #   in Loop: Header=BB11_21 Depth=1
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.29:                               #   in Loop: Header=BB11_21 Depth=1
	leaq	304(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev
	jmp	.LBB11_21
.LBB11_30:
.Ltmp57:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	336(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB11_51
.LBB11_31:
.Ltmp94:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB11_51
.LBB11_32:
	movq	664(%rsp), %rax
	addq	$120, %rax
	movq	%rax, 240(%rsp)
	movq	240(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 232(%rsp)
	movq	240(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 224(%rsp)
.LBB11_33:                              # =>This Inner Loop Header: Depth=1
	leaq	232(%rsp), %rcx
	leaq	224(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB11_34
	jmp	.LBB11_49
.LBB11_34:                              #   in Loop: Header=BB11_33 Depth=1
	leaq	232(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	movq	%rax, 216(%rsp)
.Ltmp60:                                # EH_LABEL
	leaq	.L.str.6(%rip), %rdx
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp61:                                # EH_LABEL
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB11_35
.LBB11_35:                              #   in Loop: Header=BB11_33 Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	216(%rsp), %rdx
	addq	$40, %rdx
.Ltmp62:                                # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp63:                                # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB11_36
.LBB11_36:                              #   in Loop: Header=BB11_33 Depth=1
.Ltmp64:                                # EH_LABEL
	movq	72(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.4(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp65:                                # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB11_37
.LBB11_37:                              #   in Loop: Header=BB11_33 Depth=1
	movq	216(%rsp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, 184(%rsp)
	movq	(%rax), %rax
	movq	%rax, 176(%rsp)
	movq	656(%rsp), %r8
.Ltmp66:                                # EH_LABEL
	leaq	192(%rsp), %rcx
	leaq	176(%rsp), %rdx
	callq	_ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE
.Ltmp67:                                # EH_LABEL
	jmp	.LBB11_38
.LBB11_38:                              #   in Loop: Header=BB11_33 Depth=1
.Ltmp68:                                # EH_LABEL
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	192(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp69:                                # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB11_39
.LBB11_39:                              #   in Loop: Header=BB11_33 Depth=1
.Ltmp70:                                # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.7(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp71:                                # EH_LABEL
	jmp	.LBB11_40
.LBB11_40:                              #   in Loop: Header=BB11_33 Depth=1
	leaq	192(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	216(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB11_46
# %bb.41:                               #   in Loop: Header=BB11_33 Depth=1
.Ltmp73:                                # EH_LABEL
	leaq	.L.str.8(%rip), %rdx
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp74:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB11_42
.LBB11_42:                              #   in Loop: Header=BB11_33 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	216(%rsp), %rdx
	addq	$16, %rdx
.Ltmp75:                                # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp76:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB11_43
.LBB11_43:                              #   in Loop: Header=BB11_33 Depth=1
.Ltmp77:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.9(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp78:                                # EH_LABEL
	jmp	.LBB11_44
.LBB11_44:                              #   in Loop: Header=BB11_33 Depth=1
	jmp	.LBB11_46
.LBB11_45:
.Ltmp72:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 368(%rsp)
	movl	%eax, 364(%rsp)
	leaq	192(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB11_51
.LBB11_46:                              #   in Loop: Header=BB11_33 Depth=1
.Ltmp79:                                # EH_LABEL
	leaq	392(%rsp), %rcx
	movb	$10, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp80:                                # EH_LABEL
	jmp	.LBB11_47
.LBB11_47:                              #   in Loop: Header=BB11_33 Depth=1
	jmp	.LBB11_48
.LBB11_48:                              #   in Loop: Header=BB11_33 Depth=1
	leaq	232(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev
	jmp	.LBB11_33
.LBB11_49:
.Ltmp58:                                # EH_LABEL
	movq	160(%rsp), %rcx                 # 8-byte Reload
	leaq	392(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp59:                                # EH_LABEL
	jmp	.LBB11_50
.LBB11_50:
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	168(%rsp), %rax                 # 8-byte Reload
	.seh_startepilogue
	addq	$680, %rsp                      # imm = 0x2A8
	.seh_endepilogue
	retq
.LBB11_51:
	leaq	392(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.52:
	movq	368(%rsp), %rcx
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
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp31                #   Call between .Ltmp31 and .Ltmp52
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp56-.Ltmp53                #   Call between .Ltmp53 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin2          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp88-.Ltmp81                #   Call between .Ltmp81 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp93-.Ltmp90                #   Call between .Ltmp90 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin2          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp67-.Ltmp60                #   Call between .Ltmp60 and .Ltmp67
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp71-.Ltmp68                #   Call between .Ltmp68 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin2          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp59-.Ltmp73                #   Call between .Ltmp73 and .Ltmp59
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Lfunc_end2-.Ltmp59            #   Call between .Ltmp59 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE
_ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE: # @_ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE
.Lfunc_begin3:
.seh_proc _ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$408, %rsp                      # imm = 0x198
	.seh_stackalloc 408
	.seh_endprologue
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rax, 400(%rsp)
	movq	%rcx, 392(%rsp)
	movq	%r8, 384(%rsp)
	callq	_ZNK6apollo3mir4Span5validEv
	testb	$1, %al
	jne	.LBB12_1
	jmp	.LBB12_2
.LBB12_1:
	cmpq	$0, 384(%rsp)
	jne	.LBB12_3
.LBB12_2:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.22(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	jmp	.LBB12_9
.LBB12_3:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	384(%rsp), %rcx
	movl	8(%rax), %edx
	movl	%edx, 368(%rsp)
	movq	(%rax), %rax
	movq	%rax, 360(%rsp)
	leaq	360(%rsp), %rdx
	callq	_ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE
	movq	%rax, 376(%rsp)
	leaq	96(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	376(%rsp), %edx
.Ltmp95:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp96:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB12_4
.LBB12_4:
.Ltmp97:                                # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	$58, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp98:                                # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB12_5
.LBB12_5:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	380(%rsp), %edx
.Ltmp99:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp100:                               # EH_LABEL
	jmp	.LBB12_6
.LBB12_6:
.Ltmp101:                               # EH_LABEL
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	96(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp102:                               # EH_LABEL
	jmp	.LBB12_7
.LBB12_7:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB12_9
.LBB12_8:
.Ltmp103:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB12_10
.LBB12_9:
	movq	72(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$408, %rsp                      # imm = 0x198
	.seh_endepilogue
	retq
.LBB12_10:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
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
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp95-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp102-.Ltmp95               #   Call between .Ltmp95 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin3         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp102           #   Call between .Ltmp102 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$40, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$72, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag12fromLoweringERKNS_3hir18LoweringDiagnosticE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo4diag12fromLoweringERKNS_3hir18LoweringDiagnosticE # -- Begin function _ZN6apollo4diag12fromLoweringERKNS_3hir18LoweringDiagnosticE
	.p2align	4
_ZN6apollo4diag12fromLoweringERKNS_3hir18LoweringDiagnosticE: # @_ZN6apollo4diag12fromLoweringERKNS_3hir18LoweringDiagnosticE
.Lfunc_begin4:
.seh_proc _ZN6apollo4diag12fromLoweringERKNS_3hir18LoweringDiagnosticE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movb	$0, 87(%rsp)
	callq	_ZN6apollo4diag10DiagnosticC2Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rax
	movl	40(%rax), %edx
	movl	%edx, 88(%rcx)
	movq	32(%rax), %rax
	movq	%rax, 80(%rcx)
	movq	88(%rsp), %rdx
	addq	$8, %rdx
	addq	$56, %rcx
.Ltmp104:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
.Ltmp105:                               # EH_LABEL
	jmp	.LBB23_1
.LBB23_1:
	movq	88(%rsp), %rax
	movl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	subq	$3, %rax
	ja	.LBB23_15
# %bb.19:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI23_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB23_2:
.Ltmp122:                               # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 72(%rsp)
	movl	%eax, 68(%rsp)
	callq	_ZN6apollo4diag10DiagnosticD2Ev
	jmp	.LBB23_18
.LBB23_3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
.Ltmp118:                               # EH_LABEL
	leaq	.L.str.10(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp119:                               # EH_LABEL
	jmp	.LBB23_4
.LBB23_4:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
.Ltmp120:                               # EH_LABEL
	leaq	.L.str.11(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp121:                               # EH_LABEL
	jmp	.LBB23_5
.LBB23_5:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB23_15
.LBB23_6:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
.Ltmp114:                               # EH_LABEL
	leaq	.L.str.12(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp115:                               # EH_LABEL
	jmp	.LBB23_7
.LBB23_7:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
.Ltmp116:                               # EH_LABEL
	leaq	.L.str.13(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp117:                               # EH_LABEL
	jmp	.LBB23_8
.LBB23_8:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB23_15
.LBB23_9:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
.Ltmp110:                               # EH_LABEL
	leaq	.L.str.14(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp111:                               # EH_LABEL
	jmp	.LBB23_10
.LBB23_10:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
.Ltmp112:                               # EH_LABEL
	leaq	.L.str.15(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp113:                               # EH_LABEL
	jmp	.LBB23_11
.LBB23_11:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB23_15
.LBB23_12:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
.Ltmp106:                               # EH_LABEL
	leaq	.L.str.16(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp107:                               # EH_LABEL
	jmp	.LBB23_13
.LBB23_13:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
.Ltmp108:                               # EH_LABEL
	leaq	.L.str.17(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp109:                               # EH_LABEL
	jmp	.LBB23_14
.LBB23_14:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	$1, (%rax)
.LBB23_15:
	movb	$1, 87(%rsp)
	testb	$1, 87(%rsp)
	jne	.LBB23_17
# %bb.16:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZN6apollo4diag10DiagnosticD2Ev
.LBB23_17:
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB23_18:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end4:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI23_0:
	.long	.LBB23_3-.LJTI23_0
	.long	.LBB23_6-.LJTI23_0
	.long	.LBB23_9-.LJTI23_0
	.long	.LBB23_12-.LJTI23_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table23:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp104-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp109-.Ltmp104              #   Call between .Ltmp104 and .Ltmp109
	.uleb128 .Ltmp122-.Lfunc_begin4         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp109           #   Call between .Ltmp109 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo4diag10DiagnosticC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo4diag10DiagnosticC2Ev,"xr",discard,_ZN6apollo4diag10DiagnosticC2Ev
	.globl	_ZN6apollo4diag10DiagnosticC2Ev # -- Begin function _ZN6apollo4diag10DiagnosticC2Ev
	.p2align	4
_ZN6apollo4diag10DiagnosticC2Ev:        # @_ZN6apollo4diag10DiagnosticC2Ev
.seh_proc _ZN6apollo4diag10DiagnosticC2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movb	$0, (%rcx)
	addq	$8, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$56, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$-1, 80(%rcx)
	movl	$0, 84(%rcx)
	movl	$0, 88(%rcx)
	addq	$96, %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$120, %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag10DiagnosticD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo4diag10DiagnosticD2Ev,"xr",discard,_ZN6apollo4diag10DiagnosticD2Ev
	.globl	_ZN6apollo4diag10DiagnosticD2Ev # -- Begin function _ZN6apollo4diag10DiagnosticD2Ev
	.p2align	4
_ZN6apollo4diag10DiagnosticD2Ev:        # @_ZN6apollo4diag10DiagnosticD2Ev
.seh_proc _ZN6apollo4diag10DiagnosticD2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	addq	$120, %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$96, %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$56, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag12fromBorrowckERKNS_3mir8borrowck10DiagnosticE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo4diag12fromBorrowckERKNS_3mir8borrowck10DiagnosticE # -- Begin function _ZN6apollo4diag12fromBorrowckERKNS_3mir8borrowck10DiagnosticE
	.p2align	4
_ZN6apollo4diag12fromBorrowckERKNS_3mir8borrowck10DiagnosticE: # @_ZN6apollo4diag12fromBorrowckERKNS_3mir8borrowck10DiagnosticE
.Lfunc_begin5:
.seh_proc _ZN6apollo4diag12fromBorrowckERKNS_3mir8borrowck10DiagnosticE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$344, %rsp                      # imm = 0x158
	.seh_stackalloc 344
	.seh_endprologue
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rcx, 336(%rsp)
	movq	%rdx, 328(%rsp)
	movb	$0, 327(%rsp)
	callq	_ZN6apollo4diag10DiagnosticC2Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	328(%rsp), %rdx
	addq	$8, %rdx
	addq	$56, %rcx
.Ltmp123:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
.Ltmp124:                               # EH_LABEL
	jmp	.LBB27_1
.LBB27_1:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	328(%rsp), %rax
	movl	40(%rax), %edx
	movl	%edx, 88(%rcx)
	movq	32(%rax), %rax
	movq	%rax, 80(%rcx)
	addq	$8, %rcx
.Ltmp125:                               # EH_LABEL
	leaq	.L.str.18(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp126:                               # EH_LABEL
	jmp	.LBB27_2
.LBB27_2:
	movq	328(%rsp), %rax
	movw	2(%rax), %cx
.Ltmp127:                               # EH_LABEL
	callq	_ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE
.Ltmp128:                               # EH_LABEL
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB27_3
.LBB27_3:
	movq	88(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	addq	$32, %rcx
.Ltmp129:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
.Ltmp130:                               # EH_LABEL
	jmp	.LBB27_4
.LBB27_4:
	movq	328(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 87(%rsp)                   # 1-byte Spill
	testb	%al, %al
	je	.LBB27_6
	jmp	.LBB27_32
.LBB27_32:
	movb	87(%rsp), %al                   # 1-byte Reload
	subb	$1, %al
	je	.LBB27_7
	jmp	.LBB27_33
.LBB27_33:
	movb	87(%rsp), %al                   # 1-byte Reload
	subb	$2, %al
	je	.LBB27_8
	jmp	.LBB27_9
.LBB27_5:
.Ltmp145:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 312(%rsp)
	movl	%eax, 308(%rsp)
	jmp	.LBB27_30
.LBB27_6:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB27_9
.LBB27_7:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movb	$1, (%rax)
	jmp	.LBB27_9
.LBB27_8:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movb	$2, (%rax)
.LBB27_9:
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	$96, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	328(%rsp), %rcx
	addq	$48, %rcx
	callq	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp131:                               # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
.Ltmp132:                               # EH_LABEL
	jmp	.LBB27_10
.LBB27_10:
	movq	328(%rsp), %rax
	addq	$48, %rax
	movq	%rax, 296(%rsp)
	movq	296(%rsp), %rcx
	callq	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev
	movq	%rax, 288(%rsp)
	movq	296(%rsp), %rcx
	callq	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev
	movq	%rax, 280(%rsp)
.LBB27_11:                              # =>This Inner Loop Header: Depth=1
	leaq	288(%rsp), %rcx
	leaq	280(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB27_12
	jmp	.LBB27_17
.LBB27_12:                              #   in Loop: Header=BB27_11 Depth=1
	leaq	288(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev
	movq	%rax, 272(%rsp)
	movq	272(%rsp), %rcx
	callq	_ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	movq	%rax, 264(%rsp)
	movq	272(%rsp), %rcx
	callq	_ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	movq	%rax, %rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 256(%rsp)
	addq	$96, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	264(%rsp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, 224(%rsp)
	movq	(%rax), %rax
	movq	%rax, 216(%rsp)
	leaq	232(%rsp), %rcx
	movq	256(%rsp), %rdx
.Ltmp143:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
.Ltmp144:                               # EH_LABEL
	jmp	.LBB27_13
.LBB27_13:                              #   in Loop: Header=BB27_11 Depth=1
.Ltmp146:                               # EH_LABEL
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	216(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.Ltmp147:                               # EH_LABEL
	jmp	.LBB27_14
.LBB27_14:                              #   in Loop: Header=BB27_11 Depth=1
	leaq	216(%rsp), %rcx
	callq	_ZN6apollo4diag4NoteD2Ev
# %bb.15:                               #   in Loop: Header=BB27_11 Depth=1
	leaq	288(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev
	jmp	.LBB27_11
.LBB27_16:
.Ltmp148:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 312(%rsp)
	movl	%eax, 308(%rsp)
	leaq	216(%rsp), %rcx
	callq	_ZN6apollo4diag4NoteD2Ev
	jmp	.LBB27_30
.LBB27_17:
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	$120, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	328(%rsp), %rcx
	addq	$72, %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp133:                               # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
.Ltmp134:                               # EH_LABEL
	jmp	.LBB27_18
.LBB27_18:
	movq	328(%rsp), %rax
	addq	$72, %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	movq	%rax, 200(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev
	movq	%rax, 192(%rsp)
.LBB27_19:                              # =>This Inner Loop Header: Depth=1
	leaq	200(%rsp), %rcx
	leaq	192(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB27_20
	jmp	.LBB27_27
.LBB27_20:                              #   in Loop: Header=BB27_19 Depth=1
	leaq	200(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev
	movq	%rax, %rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 184(%rsp)
	addq	$120, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	184(%rsp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, 120(%rsp)
	movq	(%rax), %rax
	movq	%rax, 112(%rsp)
	leaq	128(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	184(%rsp), %rdx
	addq	$16, %rdx
.Ltmp135:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
.Ltmp136:                               # EH_LABEL
	jmp	.LBB27_21
.LBB27_21:                              #   in Loop: Header=BB27_19 Depth=1
	leaq	152(%rsp), %rcx
	movq	184(%rsp), %rdx
	addq	$40, %rdx
.Ltmp137:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
.Ltmp138:                               # EH_LABEL
	jmp	.LBB27_22
.LBB27_22:                              #   in Loop: Header=BB27_19 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	184(%rsp), %rax
	movb	64(%rax), %al
	andb	$1, %al
	movb	%al, 176(%rsp)
.Ltmp140:                               # EH_LABEL
	leaq	112(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.Ltmp141:                               # EH_LABEL
	jmp	.LBB27_23
.LBB27_23:                              #   in Loop: Header=BB27_19 Depth=1
	leaq	112(%rsp), %rcx
	callq	_ZN6apollo4diag10SuggestionD2Ev
# %bb.24:                               #   in Loop: Header=BB27_19 Depth=1
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev
	jmp	.LBB27_19
.LBB27_25:
.Ltmp139:                               # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 312(%rsp)
	movl	%eax, 308(%rsp)
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB27_30
.LBB27_26:
.Ltmp142:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 312(%rsp)
	movl	%eax, 308(%rsp)
	leaq	112(%rsp), %rcx
	callq	_ZN6apollo4diag10SuggestionD2Ev
	jmp	.LBB27_30
.LBB27_27:
	movb	$1, 327(%rsp)
	testb	$1, 327(%rsp)
	jne	.LBB27_29
# %bb.28:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZN6apollo4diag10DiagnosticD2Ev
.LBB27_29:
	movq	96(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$344, %rsp                      # imm = 0x158
	.seh_endepilogue
	retq
.LBB27_30:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZN6apollo4diag10DiagnosticD2Ev
# %bb.31:
	movq	312(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end5:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table27:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp123-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp144-.Ltmp123              #   Call between .Ltmp123 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin5         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin5         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp136-.Ltmp133              #   Call between .Ltmp133 and .Ltmp136
	.uleb128 .Ltmp145-.Lfunc_begin5         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin5         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin5         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Lfunc_end5-.Ltmp141           #   Call between .Ltmp141 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
.Lfunc_begin6:
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
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
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB28_6
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB28_3
# %bb.2:
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB28_3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	leaq	88(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp149:                               # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.Ltmp150:                               # EH_LABEL
	jmp	.LBB28_4
.LBB28_4:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB28_6
.LBB28_5:
.Ltmp151:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 80(%rsp)
	movl	%eax, 76(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB28_7
.LBB28_6:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB28_7:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy,"dr"
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
	.uleb128 .Ltmp149-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin6         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp150           #   Call between .Ltmp150 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_
	.globl	_ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_: # @_ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_
.seh_proc _ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev
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
	.def	_ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_,"xr",discard,_ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	.globl	_ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_ # -- Begin function _ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	.p2align	4
_ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_: # @_ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
.seh_proc _ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_,"xr",discard,_ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	.globl	_ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_ # -- Begin function _ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	.p2align	4
_ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_: # @_ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
.seh_proc _ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag4NoteD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo4diag4NoteD2Ev,"xr",discard,_ZN6apollo4diag4NoteD2Ev
	.globl	_ZN6apollo4diag4NoteD2Ev        # -- Begin function _ZN6apollo4diag4NoteD2Ev
	.p2align	4
_ZN6apollo4diag4NoteD2Ev:               # @_ZN6apollo4diag4NoteD2Ev
.seh_proc _ZN6apollo4diag4NoteD2Ev
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
	.def	_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$40, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
.Lfunc_begin7:
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
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
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB39_6
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB39_3
# %bb.2:
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB39_3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	leaq	88(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp152:                               # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.Ltmp153:                               # EH_LABEL
	jmp	.LBB39_4
.LBB39_4:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB39_6
.LBB39_5:
.Ltmp154:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 80(%rsp)
	movl	%eax, 76(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB39_7
.LBB39_6:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB39_7:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table39:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp152-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin7         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp153           #   Call between .Ltmp153 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$72, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag10SuggestionD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo4diag10SuggestionD2Ev,"xr",discard,_ZN6apollo4diag10SuggestionD2Ev
	.globl	_ZN6apollo4diag10SuggestionD2Ev # -- Begin function _ZN6apollo4diag10SuggestionD2Ev
	.p2align	4
_ZN6apollo4diag10SuggestionD2Ev:        # @_ZN6apollo4diag10SuggestionD2Ev
.seh_proc _ZN6apollo4diag10SuggestionD2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	addq	$40, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$16, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$72, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag14fromLegacyRuleENS0_8SeverityENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_jj;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo4diag14fromLegacyRuleENS0_8SeverityENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_jj # -- Begin function _ZN6apollo4diag14fromLegacyRuleENS0_8SeverityENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_jj
	.p2align	4
_ZN6apollo4diag14fromLegacyRuleENS0_8SeverityENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_jj: # @_ZN6apollo4diag14fromLegacyRuleENS0_8SeverityENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_jj
.seh_proc _ZN6apollo4diag14fromLegacyRuleENS0_8SeverityENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_jj
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	176(%rsp), %eax
	movl	168(%rsp), %eax
	movq	160(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, 112(%rsp)
	movb	%dl, 111(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 88(%rsp)
	movb	$0, 87(%rsp)
	callq	_ZN6apollo4diag10DiagnosticC2Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movb	111(%rsp), %al
	movb	%al, (%rcx)
	addq	$8, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	$32, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	$56, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movl	$0, 80(%rcx)
	movl	168(%rsp), %eax
	movl	%eax, 84(%rcx)
	movl	176(%rsp), %eax
	movl	%eax, 88(%rcx)
	movb	$1, 87(%rsp)
	testb	$1, 87(%rsp)
	jne	.LBB48_2
# %bb.1:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	callq	_ZN6apollo4diag10DiagnosticD2Ev
.LBB48_2:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_ # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
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
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	movq	40(%rsp), %rax                  # 8-byte Reload
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
	jne	.LBB54_1
	jmp	.LBB54_2
.LBB54_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB54_3
.LBB54_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB54_3:
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
	jae	.LBB64_2
# %bb.1:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB64_2:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$0, %eax
	jne	.LBB64_4
# %bb.3:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB64_34
.LBB64_4:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$24, %eax
	jne	.LBB64_7
# %bb.5:
	cmpl	$1, 140(%rsp)
	jne	.LBB64_7
# %bb.6:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB64_34
.LBB64_7:
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, 88(%rax)
	jne	.LBB64_9
# %bb.8:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB64_10
.LBB64_9:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB64_10:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	movl	140(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	je	.LBB64_11
	jmp	.LBB64_35
.LBB64_35:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$1, %eax
	je	.LBB64_12
	jmp	.LBB64_36
.LBB64_36:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$2, %eax
	je	.LBB64_16
	jmp	.LBB64_17
.LBB64_11:
	movq	$0, 120(%rsp)
	jmp	.LBB64_18
.LBB64_12:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB64_14
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
	jmp	.LBB64_15
.LBB64_14:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
.LBB64_15:
	jmp	.LBB64_18
.LBB64_16:
	movq	128(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB64_18
.LBB64_17:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB64_34
.LBB64_18:
	movq	144(%rsp), %rax
	addq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	cmpq	$0, 120(%rsp)
	jl	.LBB64_20
# %bb.19:
	movq	128(%rsp), %rax
	cmpq	120(%rsp), %rax
	jge	.LBB64_21
.LBB64_20:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB64_34
.LBB64_21:
	cmpq	$0, 120(%rsp)
	je	.LBB64_29
# %bb.22:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB64_25
# %bb.23:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB64_25
# %bb.24:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB64_34
.LBB64_25:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB64_28
# %bb.26:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB64_28
# %bb.27:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB64_34
.LBB64_28:
	jmp	.LBB64_29
.LBB64_29:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB64_31
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
.LBB64_31:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB64_33
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
.LBB64_33:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
.LBB64_34:
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
	jae	.LBB66_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB66_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB66_8
# %bb.3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	cmpq	88(%rcx), %rax
	jae	.LBB66_5
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
.LBB66_5:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB66_7
# %bb.6:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movb	(%rax), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 84(%rsp)
	jmp	.LBB66_9
.LBB66_7:
	jmp	.LBB66_8
.LBB66_8:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 84(%rsp)
.LBB66_9:
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
	jae	.LBB67_2
# %bb.1:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB67_2:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB67_9
# %bb.3:
	movl	100(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%eax, %edx
	callq	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	testb	$1, %al
	jne	.LBB67_4
	jmp	.LBB67_5
.LBB67_4:
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
	jmp	.LBB67_10
.LBB67_5:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB67_7
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
	jne	.LBB67_7
	jmp	.LBB67_8
.LBB67_7:
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
	jmp	.LBB67_10
.LBB67_8:
	jmp	.LBB67_9
.LBB67_9:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 116(%rsp)
.LBB67_10:
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
.Lfunc_begin8:
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
	jne	.LBB68_13
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
	jne	.LBB68_10
# %bb.2:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB68_4
# %bb.3:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 196(%rsp)
	jmp	.LBB68_14
.LBB68_4:
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
.Ltmp155:                               # EH_LABEL
	xorl	%eax, %eax
	movb	%al, %dl
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
.Ltmp156:                               # EH_LABEL
	jmp	.LBB68_5
.LBB68_5:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp157:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
.Ltmp158:                               # EH_LABEL
	jmp	.LBB68_6
.LBB68_6:
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
	jmp	.LBB68_9
.LBB68_7:
.Ltmp159:                               # EH_LABEL
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
	jmp	.LBB68_14
.LBB68_9:
	jmp	.LBB68_10
.LBB68_10:
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
	je	.LBB68_12
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
.LBB68_12:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	movl	%eax, 196(%rsp)
	jmp	.LBB68_14
.LBB68_13:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	movl	%eax, 196(%rsp)
.LBB68_14:
	movl	196(%rsp), %eax
	.seh_startepilogue
	addq	$200, %rsp
	.seh_endepilogue
	retq
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table68:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp155-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp158-.Ltmp155              #   Call between .Ltmp155 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin8         #     jumps to .Ltmp159
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp158-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp158           #   Call between .Ltmp158 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
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
	jne	.LBB80_1
	jmp	.LBB80_2
.LBB80_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB80_3
.LBB80_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB80_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
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
	jne	.LBB89_1
	jmp	.LBB89_2
.LBB89_1:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	xorl	$-1, %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB89_3
.LBB89_2:
	movl	52(%rsp), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
.LBB89_3:
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
	jne	.LBB93_1
	jmp	.LBB93_2
.LBB93_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB93_3
.LBB93_2:
	movl	$23, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB93_3
.LBB93_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
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
.Lfunc_begin9:
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
	jne	.LBB95_4
# %bb.1:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, %edx
	movq	(%rcx), %rax
	movq	104(%rax), %rax
.Ltmp162:                               # EH_LABEL
	callq	*%rax
.Ltmp163:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB95_2
.LBB95_2:
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB95_6
.LBB95_3:
.Ltmp164:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	jmp	.LBB95_7
.LBB95_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	103(%rsp), %al
	movb	%al, 43(%rsp)                   # 1-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movb	43(%rsp), %dl                   # 1-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	%dl, (%rax)
.Ltmp160:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.Ltmp161:                               # EH_LABEL
	jmp	.LBB95_5
.LBB95_5:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
.LBB95_6:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	movl	116(%rsp), %eax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB95_7:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table95:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp162-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp161-.Ltmp162              #   Call between .Ltmp162 and .Ltmp161
	.uleb128 .Ltmp164-.Lfunc_begin9         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp161           #   Call between .Ltmp161 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
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
	jne	.LBB97_1
	jmp	.LBB97_2
.LBB97_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB97_3
.LBB97_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB97_3:
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
.Lfunc_begin10:
.seh_proc _ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
.Ltmp165:                               # EH_LABEL
	callq	_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
.Ltmp166:                               # EH_LABEL
	jmp	.LBB102_1
.LBB102_1:
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB102_2:
.Ltmp167:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"xr",discard,_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table102:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp165-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin10        #     jumps to .Ltmp167
	.byte	1                               #   On action: 1
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
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
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_ # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_ # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
.Lfunc_begin11:
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
.Ltmp168:                               # EH_LABEL
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp169:                               # EH_LABEL
	jmp	.LBB115_1
.LBB115_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB115_2:
.Ltmp170:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table115:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp168-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin11        #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEEC2B9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEEC2B9nqe220103Ev
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
.Lfunc_begin12:
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
.Ltmp171:                               # EH_LABEL
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp172:                               # EH_LABEL
	jmp	.LBB119_1
.LBB119_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB119_2:
.Ltmp173:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table119:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp171-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin12        #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
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
	jne	.LBB123_1
	jmp	.LBB123_2
.LBB123_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB123_3
.LBB123_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB123_3:
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
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev
.Lfunc_begin13:
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp174:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
.Ltmp175:                               # EH_LABEL
	jmp	.LBB127_1
.LBB127_1:
.Ltmp176:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp177:                               # EH_LABEL
	jmp	.LBB127_2
.LBB127_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB127_3:
.Ltmp178:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table127:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp174-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp177-.Ltmp174              #   Call between .Ltmp174 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin13        #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev
.Lfunc_begin14:
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp179:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
.Ltmp180:                               # EH_LABEL
	jmp	.LBB128_1
.LBB128_1:
.Ltmp181:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp182:                               # EH_LABEL
	jmp	.LBB128_2
.LBB128_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB128_3:
.Ltmp183:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table128:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp179-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp182-.Ltmp179              #   Call between .Ltmp179 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin14        #     jumps to .Ltmp183
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
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
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
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB130_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB130_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin15:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,8), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,8), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp184:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp185:                               # EH_LABEL
	jmp	.LBB132_1
.LBB132_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB132_2:
.Ltmp186:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table132:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp184-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin15        #     jumps to .Ltmp186
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
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y
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
	callq	_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$72, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$72, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
.Lfunc_begin16:
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
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
.LBB136_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB136_4
# %bb.2:                                #   in Loop: Header=BB136_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-72, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp187:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp188:                               # EH_LABEL
	jmp	.LBB136_3
.LBB136_3:                              #   in Loop: Header=BB136_1 Depth=1
	jmp	.LBB136_1
.LBB136_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB136_5:
.Ltmp189:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table136:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp187-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin16        #     jumps to .Ltmp189
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
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin17:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rdx,%rdx,8), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,8), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp190:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp191:                               # EH_LABEL
	jmp	.LBB137_1
.LBB137_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB137_2:
.Ltmp192:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table137:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp190-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin17        #     jumps to .Ltmp192
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
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	.globl	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_: # @_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
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
	.def	_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN6apollo4diag10SuggestionD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_ # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	imulq	$72, %rax, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_
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
	.def	_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y,"xr",discard,_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y
	.globl	_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y # -- Begin function _ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y
	.p2align	4
_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y: # @_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y
.seh_proc _ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	imulq	$72, 56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB145_1
	jmp	.LBB145_2
.LBB145_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB145_3
.LBB145_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB145_3:
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
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorC2B9nqe220103ERS6_
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
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB148_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB148_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin18:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp193:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp194:                               # EH_LABEL
	jmp	.LBB150_1
.LBB150_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB150_2:
.Ltmp195:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table150:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp193-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin18        #     jumps to .Ltmp195
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
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y
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
	callq	_ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
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
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
.Lfunc_begin19:
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
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
.LBB154_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB154_4
# %bb.2:                                #   in Loop: Header=BB154_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-40, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp196:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp197:                               # EH_LABEL
	jmp	.LBB154_3
.LBB154_3:                              #   in Loop: Header=BB154_1 Depth=1
	jmp	.LBB154_1
.LBB154_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB154_5:
.Ltmp198:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table154:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp196-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin19        #     jumps to .Ltmp198
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
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin20:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp199:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp200:                               # EH_LABEL
	jmp	.LBB155_1
.LBB155_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB155_2:
.Ltmp201:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end20:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table155:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp199-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin20        #     jumps to .Ltmp201
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
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	.globl	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_: # @_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
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
	.def	_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN6apollo4diag4NoteD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_ # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	imulq	$40, %rax, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_
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
	.def	_ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y,"xr",discard,_ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y
	.globl	_ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y # -- Begin function _ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y
	.p2align	4
_ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y: # @_ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y
.seh_proc _ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB163_1
	jmp	.LBB163_2
.LBB163_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB163_3
.LBB163_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB163_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin21:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp202:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp203:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB164_1
.LBB164_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB164_2:
.Ltmp204:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end21:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table164:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp202-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin21        #     jumps to .Ltmp204
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
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.23(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_: # @_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	cmpq	$0, 88(%rsp)
	jbe	.LBB166_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB166_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	imulq	$40, 80(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
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
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB168_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB168_2:
	.seh_startepilogue
	addq	$72, %rsp
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
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
	jne	.LBB172_1
	jmp	.LBB172_2
.LBB172_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB172_3
.LBB172_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB172_3:
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
.Lfunc_begin22:
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
.Ltmp205:                               # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp206:                               # EH_LABEL
	jmp	.LBB177_1
.LBB177_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB177_2:
.Ltmp207:                               # EH_LABEL
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
.Lfunc_end22:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table177:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp205-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin22        #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Lfunc_end22-.Ltmp206          #   Call between .Ltmp206 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
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
	.def	_ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB186_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB186_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y,"xr",discard,_ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y
	.globl	_ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y # -- Begin function _ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y
	.p2align	4
_ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y: # @_ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y
.seh_proc _ZNSt3__119__allocation_resultIPN6apollo4diag4NoteEyEC2B9nqe220103ES4_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy
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
	jne	.LBB189_1
	jmp	.LBB189_2
.LBB189_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB189_3
.LBB189_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB189_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
.Lfunc_begin23:
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
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
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	movq	152(%rsp), %rax
	movq	%rax, 64(%rsp)
.LBB191_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB191_5
# %bb.2:                                #   in Loop: Header=BB191_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %r8
.Ltmp210:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp211:                               # EH_LABEL
	jmp	.LBB191_3
.LBB191_3:                              #   in Loop: Header=BB191_1 Depth=1
	movq	64(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 64(%rsp)
	movq	136(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB191_1
.LBB191_4:
.Ltmp212:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
	jmp	.LBB191_7
.LBB191_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev
	movq	160(%rsp), %rcx
	movq	152(%rsp), %rdx
	movq	144(%rsp), %r8
.Ltmp208:                               # EH_LABEL
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_
.Ltmp209:                               # EH_LABEL
	jmp	.LBB191_6
.LBB191_6:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB191_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end23:
	.seh_handlerdata
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
	.seh_endproc
	.section	.xdata$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table191:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp210-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp209-.Ltmp210              #   Call between .Ltmp210 and .Ltmp209
	.uleb128 .Ltmp212-.Lfunc_begin23        #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Lfunc_end23-.Ltmp209          #   Call between .Ltmp209 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin24:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp213:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp214:                               # EH_LABEL
	jmp	.LBB194_1
.LBB194_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB194_2:
.Ltmp215:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end24:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table194:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp213-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin24        #     jumps to .Ltmp215
	.byte	1                               #   On action: 1
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.p2align	4
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
.LBB199_1:                              # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	je	.LBB199_4
# %bb.2:                                #   in Loop: Header=BB199_1 Depth=1
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB199_1 Depth=1
	movq	40(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB199_1
.LBB199_4:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
.Lfunc_begin25:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB200_3
# %bb.1:
.Ltmp216:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev
.Ltmp217:                               # EH_LABEL
	jmp	.LBB200_2
.LBB200_2:
	jmp	.LBB200_3
.LBB200_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB200_4:
.Ltmp218:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end25:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table200:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp216-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin25        #     jumps to .Ltmp218
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
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEC2B9nqe220103ES8_
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
	.def	_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZN6apollo4diag4NoteC2EOS1_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag4NoteC2EOS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo4diag4NoteC2EOS1_,"xr",discard,_ZN6apollo4diag4NoteC2EOS1_
	.globl	_ZN6apollo4diag4NoteC2EOS1_     # -- Begin function _ZN6apollo4diag4NoteC2EOS1_
	.p2align	4
_ZN6apollo4diag4NoteC2EOS1_:            # @_ZN6apollo4diag4NoteC2EOS1_
.seh_proc _ZN6apollo4diag4NoteC2EOS1_
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_ # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
.Lfunc_begin26:
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
.Ltmp219:                               # EH_LABEL
	leaq	87(%rsp), %rcx
	callq	_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
.Ltmp220:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB205_1
.LBB205_1:
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
	jne	.LBB205_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB205_3:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB205_4:
.Ltmp221:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end26:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table205:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp219-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin26        #     jumps to .Ltmp221
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp220-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Lfunc_end26-.Ltmp220          #   Call between .Ltmp220 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
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
	jne	.LBB206_2
# %bb.1:
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
.LBB206_2:
	movq	40(%rsp), %rax
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
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
	addq	$1, %r8
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev
	.p2align	4
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev
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
	callq	_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB209_1:                              # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	testb	$1, %al
	jne	.LBB209_2
	jmp	.LBB209_4
.LBB209_2:                              #   in Loop: Header=BB209_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB209_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev
	jmp	.LBB209_1
.LBB209_4:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_ # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_: # @_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEC2B9nqe220103ES4_
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
	.def	_ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE,"xr",discard,_ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.globl	_ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE # -- Begin function _ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.p2align	4
_ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE: # @_ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
.seh_proc _ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev
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
	.def	_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev: # @_ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev
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
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
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
	.def	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
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
	.def	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
.Lfunc_begin27:
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB221_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB221_4
# %bb.2:                                #   in Loop: Header=BB221_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-40, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp222:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp223:                               # EH_LABEL
	jmp	.LBB221_3
.LBB221_3:                              #   in Loop: Header=BB221_1 Depth=1
	jmp	.LBB221_1
.LBB221_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB221_5:
.Ltmp224:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end27:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table221:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp222-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin27        #     jumps to .Ltmp224
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
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
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
	.def	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_,"xr",discard,_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_
	.globl	_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_ # -- Begin function _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_
	.p2align	4
_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_: # @_ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_
.seh_proc _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_,"xr",discard,_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_
	.globl	_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_ # -- Begin function _ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_
	.p2align	4
_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_: # @_ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_
.seh_proc _ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_
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
	.def	_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_,"xr",discard,_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_
	.globl	_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_ # -- Begin function _ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_
	.p2align	4
_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_: # @_ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_
.seh_proc _ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B9nqe220103ESD_
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
	.def	_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE,"xr",discard,_ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE
	.globl	_ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE # -- Begin function _ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE
	.p2align	4
_ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE: # @_ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE
.seh_proc _ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE
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
	.def	_ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE,"xr",discard,_ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE
	.globl	_ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE # -- Begin function _ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE
	.p2align	4
_ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE: # @_ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE
.seh_proc _ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE
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
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
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
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
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
	je	.LBB230_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	jmp	.LBB230_4
.LBB230_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.LBB230_4:
	jmp	.LBB230_5
.LBB230_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
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
	.def	_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
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
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
.Lfunc_begin28:
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
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
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp225:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp226:                               # EH_LABEL
	jmp	.LBB233_1
.LBB233_1:
	movq	72(%rsp), %rax
	addq	$40, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB233_2:
.Ltmp227:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end28:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table233:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp225-.Lfunc_begin28        # >> Call Site 1 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin28        #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Lfunc_end28-.Ltmp226          #   Call between .Ltmp226 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
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
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB235_2
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
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB235_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin29:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%r8,%r8,4), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp228:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp229:                               # EH_LABEL
	jmp	.LBB236_1
.LBB236_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB236_2:
.Ltmp230:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end29:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table236:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp228-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin29        #     jumps to .Ltmp230
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
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_: # @_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
.Lfunc_begin30:
.seh_proc _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp231:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp232:                               # EH_LABEL
	jmp	.LBB237_1
.LBB237_1:
	movq	96(%rsp), %rdx
	addq	$40, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp233:                               # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.Ltmp234:                               # EH_LABEL
	jmp	.LBB237_2
.LBB237_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB237_3:
.Ltmp235:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end30:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table237:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Lfunc_begin30-.Lfunc_begin30  # >> Call Site 1 <<
	.uleb128 .Ltmp231-.Lfunc_begin30        #   Call between .Lfunc_begin30 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Ltmp234-.Ltmp231              #   Call between .Ltmp231 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin30        #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin30        # >> Call Site 3 <<
	.uleb128 .Lfunc_end30-.Ltmp234          #   Call between .Ltmp234 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB238_2
# %bb.1:
	callq	_ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB238_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB238_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB238_5
.LBB238_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB238_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
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
	jne	.LBB240_1
	jmp	.LBB240_2
.LBB240_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB240_3
.LBB240_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB240_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin31:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp236:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp237:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB241_1
.LBB241_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB241_2:
.Ltmp238:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end31:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table241:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp236-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin31        #     jumps to .Ltmp238
	.byte	1                               #   On action: 1
.Lcst_end31:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.23(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_: # @_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	cmpq	$0, 88(%rsp)
	jbe	.LBB243_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB243_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	imulq	$72, 80(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB245_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB245_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	movl	$72, %ecx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	imulq	$72, (%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB254_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB254_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y,"xr",discard,_ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y
	.globl	_ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y # -- Begin function _ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y
	.p2align	4
_ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y: # @_ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y
.seh_proc _ZNSt3__119__allocation_resultIPN6apollo4diag10SuggestionEyEC2B9nqe220103ES4_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	imulq	$72, 56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB256_1
	jmp	.LBB256_2
.LBB256_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB256_3
.LBB256_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB256_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
.Lfunc_begin32:
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
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
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	movq	152(%rsp), %rax
	movq	%rax, 64(%rsp)
.LBB258_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB258_5
# %bb.2:                                #   in Loop: Header=BB258_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %r8
.Ltmp241:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp242:                               # EH_LABEL
	jmp	.LBB258_3
.LBB258_3:                              #   in Loop: Header=BB258_1 Depth=1
	movq	64(%rsp), %rax
	addq	$72, %rax
	movq	%rax, 64(%rsp)
	movq	136(%rsp), %rax
	addq	$72, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB258_1
.LBB258_4:
.Ltmp243:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
	jmp	.LBB258_7
.LBB258_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev
	movq	160(%rsp), %rcx
	movq	152(%rsp), %rdx
	movq	144(%rsp), %r8
.Ltmp239:                               # EH_LABEL
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_
.Ltmp240:                               # EH_LABEL
	jmp	.LBB258_6
.LBB258_6:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB258_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end32:
	.seh_handlerdata
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
	.seh_endproc
	.section	.xdata$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table258:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Lfunc_begin32-.Lfunc_begin32  # >> Call Site 1 <<
	.uleb128 .Ltmp241-.Lfunc_begin32        #   Call between .Lfunc_begin32 and .Ltmp241
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Ltmp240-.Ltmp241              #   Call between .Ltmp241 and .Ltmp240
	.uleb128 .Ltmp243-.Lfunc_begin32        #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin32        # >> Call Site 3 <<
	.uleb128 .Lfunc_end32-.Ltmp240          #   Call between .Ltmp240 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin33:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,8), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%r8,%r8,8), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp244:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp245:                               # EH_LABEL
	jmp	.LBB261_1
.LBB261_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB261_2:
.Ltmp246:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end33:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table261:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Ltmp244-.Lfunc_begin33        # >> Call Site 1 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin33        #     jumps to .Ltmp246
	.byte	1                               #   On action: 1
.Lcst_end33:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.p2align	4
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
.LBB266_1:                              # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	je	.LBB266_4
# %bb.2:                                #   in Loop: Header=BB266_1 Depth=1
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB266_1 Depth=1
	movq	40(%rsp), %rax
	addq	$72, %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB266_1
.LBB266_4:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
.Lfunc_begin34:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB267_3
# %bb.1:
.Ltmp247:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev
.Ltmp248:                               # EH_LABEL
	jmp	.LBB267_2
.LBB267_2:
	jmp	.LBB267_3
.LBB267_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB267_4:
.Ltmp249:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end34:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table267:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp247-.Lfunc_begin34        # >> Call Site 1 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin34        #     jumps to .Ltmp249
	.byte	1                               #   On action: 1
.Lcst_end34:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEC2B9nqe220103ES8_
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
	.def	_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZN6apollo4diag10SuggestionC2EOS1_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo4diag10SuggestionC2EOS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo4diag10SuggestionC2EOS1_,"xr",discard,_ZN6apollo4diag10SuggestionC2EOS1_
	.globl	_ZN6apollo4diag10SuggestionC2EOS1_ # -- Begin function _ZN6apollo4diag10SuggestionC2EOS1_
	.p2align	4
_ZN6apollo4diag10SuggestionC2EOS1_:     # @_ZN6apollo4diag10SuggestionC2EOS1_
.seh_proc _ZN6apollo4diag10SuggestionC2EOS1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	addq	$16, %rcx
	movq	40(%rsp), %rdx
	addq	$16, %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$40, %rcx
	movq	40(%rsp), %rdx
	addq	$40, %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx
	movb	64(%rcx), %cl
	andb	$1, %cl
	movb	%cl, 64(%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev
	.p2align	4
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev
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
	callq	_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB273_1:                              # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	testb	$1, %al
	jne	.LBB273_2
	jmp	.LBB273_4
.LBB273_2:                              #   in Loop: Header=BB273_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB273_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev
	jmp	.LBB273_1
.LBB273_4:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_ # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_: # @_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEC2B9nqe220103ES4_
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
	.def	_ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE,"xr",discard,_ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.globl	_ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE # -- Begin function _ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.p2align	4
_ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE: # @_ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
.seh_proc _ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$-72, %rax
	movq	%rax, (%rsp)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev: # @_ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	addq	$-72, %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
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
	.def	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$72, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
.Lfunc_begin35:
.seh_proc _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB285_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB285_4
# %bb.2:                                #   in Loop: Header=BB285_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-72, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp250:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp251:                               # EH_LABEL
	jmp	.LBB285_3
.LBB285_3:                              #   in Loop: Header=BB285_1 Depth=1
	jmp	.LBB285_1
.LBB285_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB285_5:
.Ltmp252:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end35:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table285:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Ltmp250-.Lfunc_begin35        # >> Call Site 1 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin35        #     jumps to .Ltmp252
	.byte	1                               #   On action: 1
.Lcst_end35:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
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
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_: # @_ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEC2B9nqe220103ES6_
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	96(%rsp), %rax
	addq	$-72, %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
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
	je	.LBB292_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	jmp	.LBB292_4
.LBB292_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.LBB292_4:
	jmp	.LBB292_5
.LBB292_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	addq	$72, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
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
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
.Lfunc_begin36:
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
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
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp253:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp254:                               # EH_LABEL
	jmp	.LBB295_1
.LBB295_1:
	movq	72(%rsp), %rax
	addq	$72, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB295_2:
.Ltmp255:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end36:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table295:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Ltmp253-.Lfunc_begin36        # >> Call Site 1 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin36        #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin36        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp254          #   Call between .Ltmp254 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end36:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
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
	imulq	$72, 32(%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB297_2
# %bb.1:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %rcx
	movq	16(%rdx), %rax
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rax
	movl	$72, %r8d
	cqto
	idivq	%r8
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB297_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin37:
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,8), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,8), %r8
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%r8,%r8,8), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp256:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp257:                               # EH_LABEL
	jmp	.LBB298_1
.LBB298_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB298_2:
.Ltmp258:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end37:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table298:
.Lexception37:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Ltmp256-.Lfunc_begin37        # >> Call Site 1 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin37        #     jumps to .Ltmp258
	.byte	1                               #   On action: 1
.Lcst_end37:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_: # @_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
.Lfunc_begin38:
.seh_proc _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp259:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp260:                               # EH_LABEL
	jmp	.LBB299_1
.LBB299_1:
	movq	96(%rsp), %rdx
	addq	$72, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp261:                               # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.Ltmp262:                               # EH_LABEL
	jmp	.LBB299_2
.LBB299_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB299_3:
.Ltmp263:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end38:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table299:
.Lexception38:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Lfunc_begin38-.Lfunc_begin38  # >> Call Site 1 <<
	.uleb128 .Ltmp259-.Lfunc_begin38        #   Call between .Lfunc_begin38 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin38        # >> Call Site 2 <<
	.uleb128 .Ltmp262-.Ltmp259              #   Call between .Ltmp259 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin38        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin38        # >> Call Site 3 <<
	.uleb128 .Lfunc_end38-.Ltmp262          #   Call between .Ltmp262 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end38:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB300_2
# %bb.1:
	callq	_ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB300_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB300_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB300_5
.LBB300_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB300_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
.Lfunc_begin39:
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movb	%r8b, 135(%rsp)
	movq	%rcx, 120(%rsp)
	movq	%rdx, 112(%rsp)
	movq	120(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB301_1
	jmp	.LBB301_4
.LBB301_1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
.Ltmp264:                               # EH_LABEL
	leaq	88(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp265:                               # EH_LABEL
	jmp	.LBB301_2
.LBB301_2:
.Ltmp266:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	88(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
.Ltmp267:                               # EH_LABEL
	jmp	.LBB301_3
.LBB301_3:
	jmp	.LBB301_4
.LBB301_4:
	movq	112(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	112(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, 55(%rsp)
	movq	112(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	112(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	112(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
	movq	112(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, %rcx
	movb	$0, 54(%rsp)
	leaq	54(%rsp), %rdx
	callq	_ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
	testb	$1, 55(%rsp)
	je	.LBB301_7
# %bb.5:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB301_7
# %bb.6:
	movq	112(%rsp), %rcx
	movq	56(%rsp), %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	jmp	.LBB301_8
.LBB301_7:
	movq	112(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
.LBB301_8:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB301_11
# %bb.9:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 112(%rsp)
	je	.LBB301_11
# %bb.10:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB301_11:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB301_12:
.Ltmp268:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end39:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table301:
.Lexception39:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Ltmp264-.Lfunc_begin39        # >> Call Site 1 <<
	.uleb128 .Ltmp267-.Ltmp264              #   Call between .Ltmp264 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin39        #     jumps to .Ltmp268
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
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB302_1
	jmp	.LBB302_2
.LBB302_1:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
.LBB302_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_ # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movb	%cl, %dl
	movb	(%rax), %cl
	andb	$127, %dl
	shlb	%dl
	andb	$1, %cl
	orb	%dl, %cl
	movb	%cl, (%rax)
	movb	(%rax), %cl
	andb	$-2, %cl
	orb	$0, %cl
	movb	%cl, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc,"xr",discard,_ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
	.globl	_ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc # -- Begin function _ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
	.p2align	4
_ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc: # @_ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
.seh_proc _ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	(%rsp), %rax
	movb	(%rax), %cl
	movq	8(%rsp), %rax
	movb	%cl, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
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
	addq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
	addq	$1, %r8
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy: # @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
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
	callq	_ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy,"xr",discard,_ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
	.globl	_ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy # -- Begin function _ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
	.p2align	4
_ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy: # @_ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
.seh_proc _ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB309_1
	jmp	.LBB309_2
.LBB309_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB309_3
.LBB309_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB309_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
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
.Lfunc_begin40:
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
.Ltmp269:                               # EH_LABEL
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
.Ltmp270:                               # EH_LABEL
	jmp	.LBB313_1
.LBB313_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB313_2:
.Ltmp271:                               # EH_LABEL
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
.Lfunc_end40:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table313:
.Lexception40:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end40-.Lcst_begin40
.Lcst_begin40:
	.uleb128 .Lfunc_begin40-.Lfunc_begin40  # >> Call Site 1 <<
	.uleb128 .Ltmp269-.Lfunc_begin40        #   Call between .Lfunc_begin40 and .Ltmp269
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin40        # >> Call Site 2 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin40        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin40        # >> Call Site 3 <<
	.uleb128 .Lfunc_end40-.Ltmp270          #   Call between .Ltmp270 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end40:
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
	je	.LBB317_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 88(%rcx)
	movq	72(%rsp), %rdx
	movq	72(%rsp), %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.LBB317_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB317_11
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
	je	.LBB317_10
# %bb.4:
	jmp	.LBB317_5
.LBB317_5:                              # =>This Inner Loop Header: Depth=1
	cmpq	$2147483647, 64(%rsp)           # imm = 0x7FFFFFFF
	jbe	.LBB317_7
# %bb.6:                                #   in Loop: Header=BB317_5 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	$2147483647, %edx               # imm = 0x7FFFFFFF
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	movq	64(%rsp), %rax
	subq	$2147483647, %rax               # imm = 0x7FFFFFFF
	movq	%rax, 64(%rsp)
	jmp	.LBB317_5
.LBB317_7:
	cmpq	$0, 64(%rsp)
	jbe	.LBB317_9
# %bb.8:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rax
	movl	%eax, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.LBB317_9:
	jmp	.LBB317_10
.LBB317_10:
	jmp	.LBB317_11
.LBB317_11:
	.seh_startepilogue
	addq	$88, %rsp
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
.Lfunc_begin41:
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
.Ltmp272:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
.Ltmp273:                               # EH_LABEL
	jmp	.LBB318_1
.LBB318_1:
.Ltmp275:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
.Ltmp276:                               # EH_LABEL
	movb	%al, 111(%rsp)                  # 1-byte Spill
	jmp	.LBB318_2
.LBB318_2:
	movb	111(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB318_3
	jmp	.LBB318_18
.LBB318_3:
	movq	176(%rsp), %rdx
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	movq	168(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp277:                               # EH_LABEL
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
.Ltmp278:                               # EH_LABEL
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	jmp	.LBB318_4
.LBB318_4:
	movl	104(%rsp), %eax                 # 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	.LBB318_6
# %bb.5:
	movq	168(%rsp), %rax
	addq	160(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB318_7
.LBB318_6:
	movq	168(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB318_7:
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
.Ltmp279:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
.Ltmp280:                               # EH_LABEL
	movb	%al, 87(%rsp)                   # 1-byte Spill
	jmp	.LBB318_8
.LBB318_8:
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movb	87(%rsp), %r11b                 # 1-byte Reload
	movq	112(%rsp), %rcx
.Ltmp281:                               # EH_LABEL
	movq	%rsp, %rax
	movb	%r11b, 40(%rax)
	movq	%r10, 32(%rax)
	callq	_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Ltmp282:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB318_9
.LBB318_9:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
	testb	$1, %al
	jne	.LBB318_10
	jmp	.LBB318_17
.LBB318_10:
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp283:                               # EH_LABEL
	movl	$5, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp284:                               # EH_LABEL
	jmp	.LBB318_11
.LBB318_11:
	jmp	.LBB318_17
.LBB318_12:
.Ltmp274:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	jmp	.LBB318_14
.LBB318_13:
.Ltmp285:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
.LBB318_14:
	movq	136(%rsp), %rcx
	callq	__cxa_begin_catch
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp286:                               # EH_LABEL
	callq	_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
.Ltmp287:                               # EH_LABEL
	jmp	.LBB318_15
.LBB318_15:
	callq	__cxa_end_catch
.LBB318_16:
	movq	176(%rsp), %rax
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
.LBB318_17:
	jmp	.LBB318_18
.LBB318_18:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	jmp	.LBB318_16
.LBB318_19:
.Ltmp288:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
.Ltmp289:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp290:                               # EH_LABEL
	jmp	.LBB318_20
.LBB318_20:
	jmp	.LBB318_21
.LBB318_21:
	movq	136(%rsp), %rcx
	callq	_Unwind_Resume
.LBB318_22:
.Ltmp291:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end41:
	.seh_handlerdata
	.section	.text$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_endproc
	.section	.xdata$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table318:
.Lexception41:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Ltmp272-.Lfunc_begin41        # >> Call Site 1 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin41        #     jumps to .Ltmp274
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp275-.Lfunc_begin41        # >> Call Site 2 <<
	.uleb128 .Ltmp284-.Ltmp275              #   Call between .Ltmp275 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin41        #     jumps to .Ltmp285
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp284-.Lfunc_begin41        # >> Call Site 3 <<
	.uleb128 .Ltmp286-.Ltmp284              #   Call between .Ltmp284 and .Ltmp286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin41        # >> Call Site 4 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin41        #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin41        # >> Call Site 5 <<
	.uleb128 .Ltmp289-.Ltmp287              #   Call between .Ltmp287 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin41        # >> Call Site 6 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin41        #     jumps to .Ltmp291
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp290-.Lfunc_begin41        # >> Call Site 7 <<
	.uleb128 .Lfunc_end41-.Ltmp290          #   Call between .Ltmp290 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end41:
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
	jne	.LBB319_1
	jmp	.LBB319_4
.LBB319_1:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB319_3
# %bb.2:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
.LBB319_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	$1, (%rax)
.LBB319_4:
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
.Lfunc_begin42:
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
	jne	.LBB321_2
# %bb.1:
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB321_22
.LBB321_2:
	movq	128(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__18ios_base5widthB9nqe220103Ev
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jle	.LBB321_4
# %bb.3:
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB321_5
.LBB321_4:
	movq	$0, 112(%rsp)
.LBB321_5:
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB321_9
# %bb.6:
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB321_8
# %bb.7:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB321_22
.LBB321_8:
	jmp	.LBB321_9
.LBB321_9:
	cmpq	$0, 112(%rsp)
	jle	.LBB321_17
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
.Ltmp292:                               # EH_LABEL
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
.Ltmp293:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB321_11
.LBB321_11:
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB321_14
# %bb.12:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB321_15
.LBB321_13:
.Ltmp294:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB321_23
.LBB321_14:
	movl	$0, 64(%rsp)
.LBB321_15:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	64(%rsp), %eax
	testl	%eax, %eax
	je	.LBB321_16
	jmp	.LBB321_25
.LBB321_25:
	jmp	.LBB321_22
.LBB321_16:
	jmp	.LBB321_17
.LBB321_17:
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB321_21
# %bb.18:
	movq	152(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB321_20
# %bb.19:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB321_22
.LBB321_20:
	jmp	.LBB321_21
.LBB321_21:
	movq	208(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__18ios_base5widthB9nqe220103Ex
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
.LBB321_22:
	movq	160(%rsp), %rax
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB321_23:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
# %bb.24:
	int3
.Lfunc_end42:
	.seh_handlerdata
	.section	.text$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_endproc
	.section	.xdata$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table321:
.Lexception42:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end42-.Lcst_begin42
.Lcst_begin42:
	.uleb128 .Lfunc_begin42-.Lfunc_begin42  # >> Call Site 1 <<
	.uleb128 .Ltmp292-.Lfunc_begin42        #   Call between .Lfunc_begin42 and .Ltmp292
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin42        # >> Call Site 2 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin42        #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin42        # >> Call Site 3 <<
	.uleb128 .Lfunc_end42-.Ltmp293          #   Call between .Ltmp293 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end42:
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
.Lfunc_begin43:
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
.Ltmp295:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp296:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB322_1
.LBB322_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB322_2:
.Ltmp297:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end43:
	.seh_handlerdata
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	.seh_endproc
	.section	.xdata$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table322:
.Lexception43:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end43-.Lcst_begin43
.Lcst_begin43:
	.uleb128 .Ltmp295-.Lfunc_begin43        # >> Call Site 1 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin43        #     jumps to .Ltmp297
	.byte	1                               #   On action: 1
.Lcst_end43:
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
	jne	.LBB324_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$32, %edx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movsbl	%al, %edx
	addq	$144, %rcx
	callq	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
.LBB324_2:
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
.Lfunc_begin44:
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
.Ltmp298:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp299:                               # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB327_1
.LBB327_1:
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB327_16
# %bb.2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp300:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
.Ltmp301:                               # EH_LABEL
	movb	%al, 63(%rsp)                   # 1-byte Spill
	jmp	.LBB327_3
.LBB327_3:
	movb	63(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB327_4
	jmp	.LBB327_16
.LBB327_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB327_16
# %bb.5:
	callq	_ZSt19uncaught_exceptionsv
	cmpl	$0, %eax
	jne	.LBB327_16
# %bb.6:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp302:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp303:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB327_7
.LBB327_7:
.Ltmp304:                               # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
.Ltmp305:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB327_8
.LBB327_8:
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$-1, %eax
	jne	.LBB327_15
# %bb.9:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp306:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp307:                               # EH_LABEL
	jmp	.LBB327_10
.LBB327_10:
	jmp	.LBB327_15
.LBB327_11:
.Ltmp308:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
# %bb.12:
	movq	88(%rsp), %rcx
	callq	__cxa_begin_catch
.Ltmp309:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp310:                               # EH_LABEL
	jmp	.LBB327_13
.LBB327_13:
	jmp	.LBB327_14
.LBB327_14:
	jmp	.LBB327_16
.LBB327_15:
	jmp	.LBB327_14
.LBB327_16:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB327_17:
.Ltmp311:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end44:
	.seh_handlerdata
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table327:
.Lexception44:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end44-.Lcst_begin44
.Lcst_begin44:
	.uleb128 .Ltmp298-.Lfunc_begin44        # >> Call Site 1 <<
	.uleb128 .Ltmp301-.Ltmp298              #   Call between .Ltmp298 and .Ltmp301
	.uleb128 .Ltmp311-.Lfunc_begin44        #     jumps to .Ltmp311
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp302-.Lfunc_begin44        # >> Call Site 2 <<
	.uleb128 .Ltmp307-.Ltmp302              #   Call between .Ltmp302 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin44        #     jumps to .Ltmp308
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp307-.Lfunc_begin44        # >> Call Site 3 <<
	.uleb128 .Ltmp309-.Ltmp307              #   Call between .Ltmp307 and .Ltmp309
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin44        # >> Call Site 4 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin44        #     jumps to .Ltmp311
	.byte	1                               #   On action: 1
.Lcst_end44:
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
.Lfunc_begin45:
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
.Ltmp312:                               # EH_LABEL
	callq	_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
.Ltmp313:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB338_1
.LBB338_1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	95(%rsp), %dl
.Ltmp314:                               # EH_LABEL
	callq	_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
.Ltmp315:                               # EH_LABEL
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jmp	.LBB338_2
.LBB338_2:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16localeD1Ev
	movb	47(%rsp), %al                   # 1-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB338_3:
.Ltmp316:                               # EH_LABEL
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
.Lfunc_end45:
	.seh_handlerdata
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.seh_endproc
	.section	.xdata$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table338:
.Lexception45:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end45-.Lcst_begin45
.Lcst_begin45:
	.uleb128 .Lfunc_begin45-.Lfunc_begin45  # >> Call Site 1 <<
	.uleb128 .Ltmp312-.Lfunc_begin45        #   Call between .Lfunc_begin45 and .Ltmp312
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin45        # >> Call Site 2 <<
	.uleb128 .Ltmp315-.Ltmp312              #   Call between .Ltmp312 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin45        #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin45        # >> Call Site 3 <<
	.uleb128 .Lfunc_end45-.Ltmp315          #   Call between .Ltmp315 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end45:
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
.Lfunc_begin46:
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
	je	.LBB348_5
# %bb.1:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB348_3
# %bb.2:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB348_3:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	88(%rax), %r8
.Ltmp319:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp320:                               # EH_LABEL
	jmp	.LBB348_4
.LBB348_4:
	jmp	.LBB348_10
.LBB348_5:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB348_8
# %bb.6:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
.Ltmp317:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp318:                               # EH_LABEL
	jmp	.LBB348_7
.LBB348_7:
	jmp	.LBB348_10
.LBB348_8:
	jmp	.LBB348_9
.LBB348_9:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
.LBB348_10:
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB348_11:
.Ltmp321:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end46:
	.seh_handlerdata
	.section	.text$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table348:
.Lexception46:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end46-.Lcst_begin46
.Lcst_begin46:
	.uleb128 .Ltmp319-.Lfunc_begin46        # >> Call Site 1 <<
	.uleb128 .Ltmp318-.Ltmp319              #   Call between .Ltmp319 and .Ltmp318
	.uleb128 .Ltmp321-.Lfunc_begin46        #     jumps to .Ltmp321
	.byte	1                               #   On action: 1
.Lcst_end46:
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
	.asciz	"] "

.L.str.1:                               # @.str.1
	.asciz	"]: "

.L.str.2:                               # @.str.2
	.asciz	"  --> "

.L.str.3:                               # @.str.3
	.asciz	"  note: "

.L.str.4:                               # @.str.4
	.asciz	" ("

.L.str.5:                               # @.str.5
	.asciz	")\n"

.L.str.6:                               # @.str.6
	.asciz	"  help: "

.L.str.7:                               # @.str.7
	.asciz	")"

.L.str.8:                               # @.str.8
	.asciz	" -> `"

.L.str.9:                               # @.str.9
	.asciz	"`"

.L.str.10:                              # @.str.10
	.asciz	"parse"

.L.str.11:                              # @.str.11
	.asciz	"PRS"

.L.str.12:                              # @.str.12
	.asciz	"name-res"

.L.str.13:                              # @.str.13
	.asciz	"NMR"

.L.str.14:                              # @.str.14
	.asciz	"type"

.L.str.15:                              # @.str.15
	.asciz	"TYP"

.L.str.16:                              # @.str.16
	.asciz	"lowering"

.L.str.17:                              # @.str.17
	.asciz	"TODO"

.L.str.18:                              # @.str.18
	.asciz	"borrowck"

.L.str.19:                              # @.str.19
	.asciz	"error"

.L.str.20:                              # @.str.20
	.asciz	"warning"

.L.str.21:                              # @.str.21
	.asciz	"note"

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

	.section	.rdata,"dr"
.L.str.22:                              # @.str.22
	.asciz	"?:?"

.L.str.23:                              # @.str.23
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
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp323-.Ltmp322               # Subsection size
.Ltmp322:
	.short	.Ltmp325-.Ltmp324               # Record length
.Ltmp324:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp325:
	.short	.Ltmp327-.Ltmp326               # Record length
.Ltmp326:
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
.Ltmp327:
.Ltmp323:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.addrsig_sym _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	.addrsig_sym _ZN6apollo4diag12_GLOBAL__N_112severityWordENS0_8SeverityE
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	.addrsig_sym _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.addrsig_sym _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.addrsig_sym _ZNK6apollo3mir4Span5validEv
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	.addrsig_sym _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.addrsig_sym _ZN6apollo4diag12_GLOBAL__N_113formatLineColENS_3mir4SpanEPKNS2_9SourceMapE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo4diag4NoteEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo4diag4NoteEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo4diag10SuggestionEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EPKc
	.addrsig_sym _ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE7reserveEy
	.addrsig_sym _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEbRKNS_11__wrap_iterIT_EESI_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__13getB9nqe220103ILy0EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	.addrsig_sym _ZNSt3__13getB9nqe220103ILy1EN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERKSE_
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.addrsig_sym _ZNSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE7reserveEy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir8borrowck10SuggestionEEEbRKNS_11__wrap_iterIT_EESB_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	.addrsig_sym _ZNSt3__128__char_traits_length_checkedB9nqe220103INS_11char_traitsIcEEEEyPKNT_9char_typeE
	.addrsig_sym _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.addrsig_sym _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.addrsig_sym strlen
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	.addrsig_sym _ZdlPv
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
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym __cxa_end_catch
	.addrsig_sym _ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEyc
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
	.addrsig_sym _ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
	.addrsig_sym _ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	.addrsig_sym _ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo4diag4NoteEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE10deallocateB9nqe220103ERS5_PS4_y
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IN6apollo4diag10SuggestionEEEPT_S5_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag10SuggestionEEEvPT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEEEvPKvS7_S7_S7_
	.addrsig_sym _ZNSt3__19allocatorIN6apollo4diag10SuggestionEE10deallocateB9nqe220103EPS3_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag10SuggestionEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE10deallocateB9nqe220103ERS5_PS4_y
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IN6apollo4diag4NoteEEEPT_S5_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IN6apollo4diag4NoteEEEvPT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEEEvPKvS7_S7_S7_
	.addrsig_sym _ZNSt3__19allocatorIN6apollo4diag4NoteEE10deallocateB9nqe220103EPS3_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo4diag4NoteEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
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
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIN6apollo4diag4NoteEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag4NoteEEEPT_NS_15__element_countEy
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_EEvRT_T0_S9_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag4NoteEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS5_EEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEEPS4_S6_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IN6apollo4diag4NoteEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag4NoteEEEPS4_EclB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag4NoteEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB9nqe220103IPN6apollo4diag4NoteES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116reverse_iteratorIPN6apollo4diag4NoteEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo4diag4NoteEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo4diag4NoteENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag4NoteENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.addrsig_sym _ZNKSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE11__make_iterB9nqe220103EPKSB_
	.addrsig_sym _ZNSt3__16vectorINS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS8_ISB_EEE26__add_alignment_assumptionB9nqe220103IPSB_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEESF_SH_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKNS_4pairIN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__110__get_pairILy0EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT_RKNS_4pairISC_T0_EE
	.addrsig_sym _ZNSt3__110__get_pairILy1EE3getB9nqe220103IN6apollo3mir4SpanENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEERKT0_RKNS_4pairIT_SC_EE
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag4NoteENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag4NoteENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIN6apollo4diag10SuggestionEE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo4diag10SuggestionEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EEvRT_T0_S9_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo4diag10SuggestionEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS5_EEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEEPS4_S6_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IN6apollo4diag10SuggestionEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo4diag10SuggestionEEEPS4_EclB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo4diag10SuggestionEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB9nqe220103IPN6apollo4diag10SuggestionES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo4diag10SuggestionEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo4diag10SuggestionENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE11__make_iterB9nqe220103EPKS4_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck10SuggestionENS_9allocatorIS4_EEE26__add_alignment_assumptionB9nqe220103IPS4_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES9_SB_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir8borrowck10SuggestionEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo4diag10SuggestionENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo4diag10SuggestionENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
	.addrsig_sym _ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
	.addrsig_sym _ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe220103EPNS_15basic_streambufIcS2_EE
	.addrsig_sym _ZNSt3__18ios_base4initEPv
	.addrsig_sym _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe220103Ev
	.addrsig_sym _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
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
	.addrsig_sym _ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTINSt3__18ios_baseE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSNSt3__18ios_baseE
	.addrsig_sym _ZTINSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTSNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.addrsig_sym _ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE
	.addrsig_sym _ZTISt12length_error
	.addrsig_sym _ZTSSt12length_error
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTSSt11logic_error
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTSSt9exception
	.addrsig_sym _ZTISt20bad_array_new_length
	.addrsig_sym _ZTSSt20bad_array_new_length
	.addrsig_sym _ZTISt9bad_alloc
	.addrsig_sym _ZTSSt9bad_alloc
	.addrsig_sym _ZNSt3__15ctypeIcE2idE
