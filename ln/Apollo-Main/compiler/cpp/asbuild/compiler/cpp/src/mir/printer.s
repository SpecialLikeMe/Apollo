	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"printer.cpp"
	.def	_ZN6apollo3mir13placeToStringERKNS0_5PlaceE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir13placeToStringERKNS0_5PlaceE # -- Begin function _ZN6apollo3mir13placeToStringERKNS0_5PlaceE
	.p2align	4
_ZN6apollo3mir13placeToStringERKNS0_5PlaceE: # @_ZN6apollo3mir13placeToStringERKNS0_5PlaceE
.Lfunc_begin0:
.seh_proc _ZN6apollo3mir13placeToStringERKNS0_5PlaceE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$360, %rsp                      # imm = 0x168
	.seh_stackalloc 360
	.seh_endprologue
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 352(%rsp)
	movq	%rdx, 344(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	344(%rsp), %rdx
.Ltmp0:                                 # EH_LABEL
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB0_1
.LBB0_1:
.Ltmp2:                                 # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	80(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp3:                                 # EH_LABEL
	jmp	.LBB0_2
.LBB0_2:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$360, %rsp                      # imm = 0x168
	.seh_endepilogue
	retq
.LBB0_3:
.Ltmp4:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.4:
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
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp3             #   Call between .Ltmp3 and .Lfunc_end0
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
.Ltmp5:                                 # EH_LABEL
	leaq	_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+8(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
.Ltmp6:                                 # EH_LABEL
	jmp	.LBB1_1
.LBB1_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24(%rip), %rax
	movq	%rax, (%rcx)
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64(%rip), %rax
	movq	%rax, 112(%rcx)
	addq	$8, %rcx
.Ltmp8:                                 # EH_LABEL
	movl	$16, %edx
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB1_2
.LBB1_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB1_3:
.Ltmp7:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB1_5
.LBB1_4:
.Ltmp10:                                # EH_LABEL
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
	.uleb128 .Ltmp5-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin1           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Lfunc_end1-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE: # @_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
.Lfunc_begin2:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$2088, %rsp                     # imm = 0x828
	.seh_stackalloc 2088
	.seh_endprologue
	movq	%rcx, 2080(%rsp)
	movq	%rdx, 2072(%rsp)
	leaq	1808(%rsp), %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	movq	184(%rsp), %rcx                 # 8-byte Reload
.Ltmp11:                                # EH_LABEL
	movb	$95, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp12:                                # EH_LABEL
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	jmp	.LBB2_1
.LBB2_1:
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	2072(%rsp), %rax
	movl	(%rax), %edx
.Ltmp13:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp14:                                # EH_LABEL
	jmp	.LBB2_2
.LBB2_2:
.Ltmp15:                                # EH_LABEL
	leaq	1768(%rsp), %rcx
	leaq	1808(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp16:                                # EH_LABEL
	jmp	.LBB2_3
.LBB2_3:
	movq	2072(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 1760(%rsp)
	movq	1760(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 1752(%rsp)
	movq	1760(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 1744(%rsp)
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	leaq	1752(%rsp), %rcx
	leaq	1744(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB2_5
	jmp	.LBB2_60
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=1
	leaq	1752(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	movq	%rax, 1736(%rsp)
	movq	1736(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	subq	$7, %rax
	ja	.LBB2_58
# %bb.65:                               #   in Loop: Header=BB2_4 Depth=1
	movq	176(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI2_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB2_6:
.Ltmp17:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	jmp	.LBB2_63
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
.Ltmp94:                                # EH_LABEL
	leaq	.L.str.15(%rip), %rdx
	leaq	1688(%rsp), %rcx
	leaq	1768(%rsp), %r8
	callq	_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
.Ltmp95:                                # EH_LABEL
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
.Ltmp97:                                # EH_LABEL
	leaq	.L.str.16(%rip), %r8
	leaq	1712(%rsp), %rcx
	leaq	1688(%rsp), %rdx
	callq	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
.Ltmp98:                                # EH_LABEL
	jmp	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	leaq	1768(%rsp), %rcx
	leaq	1712(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	leaq	1712(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	1688(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_58
.LBB2_10:
.Ltmp96:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	jmp	.LBB2_62
.LBB2_11:
.Ltmp99:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	leaq	1688(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_62
.LBB2_12:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp83:                                # EH_LABEL
	leaq	1424(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Ltmp84:                                # EH_LABEL
	jmp	.LBB2_13
.LBB2_13:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp85:                                # EH_LABEL
	leaq	1424(%rsp), %rcx
	leaq	1768(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp86:                                # EH_LABEL
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jmp	.LBB2_14
.LBB2_14:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp87:                                # EH_LABEL
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movb	$46, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp88:                                # EH_LABEL
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	jmp	.LBB2_15
.LBB2_15:                               #   in Loop: Header=BB2_4 Depth=1
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	1736(%rsp), %rax
	movl	4(%rax), %edx
.Ltmp89:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp90:                                # EH_LABEL
	jmp	.LBB2_16
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp91:                                # EH_LABEL
	leaq	1400(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp92:                                # EH_LABEL
	jmp	.LBB2_17
.LBB2_17:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	1768(%rsp), %rcx
	leaq	1400(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	leaq	1400(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	1424(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_58
.LBB2_18:
.Ltmp93:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	leaq	1424(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_62
.LBB2_19:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp70:                                # EH_LABEL
	leaq	1136(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Ltmp71:                                # EH_LABEL
	jmp	.LBB2_20
.LBB2_20:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp72:                                # EH_LABEL
	leaq	1136(%rsp), %rcx
	leaq	1768(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp73:                                # EH_LABEL
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	jmp	.LBB2_21
.LBB2_21:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp74:                                # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.17(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp75:                                # EH_LABEL
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB2_22
.LBB2_22:                               #   in Loop: Header=BB2_4 Depth=1
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	1736(%rsp), %rax
	movl	16(%rax), %edx
.Ltmp76:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp77:                                # EH_LABEL
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB2_23
.LBB2_23:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp78:                                # EH_LABEL
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movb	$93, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp79:                                # EH_LABEL
	jmp	.LBB2_24
.LBB2_24:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp80:                                # EH_LABEL
	leaq	1112(%rsp), %rcx
	leaq	1136(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp81:                                # EH_LABEL
	jmp	.LBB2_25
.LBB2_25:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	1768(%rsp), %rcx
	leaq	1112(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	leaq	1112(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	1136(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_58
.LBB2_26:
.Ltmp82:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	leaq	1136(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_62
.LBB2_27:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp57:                                # EH_LABEL
	leaq	848(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Ltmp58:                                # EH_LABEL
	jmp	.LBB2_28
.LBB2_28:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp59:                                # EH_LABEL
	leaq	848(%rsp), %rcx
	leaq	1768(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp60:                                # EH_LABEL
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB2_29
.LBB2_29:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp61:                                # EH_LABEL
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.18(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp62:                                # EH_LABEL
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB2_30
.LBB2_30:                               #   in Loop: Header=BB2_4 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	1736(%rsp), %rax
	movq	24(%rax), %rdx
.Ltmp63:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
.Ltmp64:                                # EH_LABEL
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB2_31
.LBB2_31:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp65:                                # EH_LABEL
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movb	$93, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp66:                                # EH_LABEL
	jmp	.LBB2_32
.LBB2_32:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp67:                                # EH_LABEL
	leaq	824(%rsp), %rcx
	leaq	848(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp68:                                # EH_LABEL
	jmp	.LBB2_33
.LBB2_33:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	1768(%rsp), %rcx
	leaq	824(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	leaq	824(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	848(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_58
.LBB2_34:
.Ltmp69:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	leaq	848(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_62
.LBB2_35:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp40:                                # EH_LABEL
	leaq	560(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Ltmp41:                                # EH_LABEL
	jmp	.LBB2_36
.LBB2_36:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp42:                                # EH_LABEL
	leaq	560(%rsp), %rcx
	leaq	1768(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp43:                                # EH_LABEL
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB2_37
.LBB2_37:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp44:                                # EH_LABEL
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movb	$91, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp45:                                # EH_LABEL
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB2_38
.LBB2_38:                               #   in Loop: Header=BB2_4 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	1736(%rsp), %rax
	movq	40(%rax), %rdx
.Ltmp46:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
.Ltmp47:                                # EH_LABEL
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB2_39
.LBB2_39:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp48:                                # EH_LABEL
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.19(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp49:                                # EH_LABEL
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB2_40
.LBB2_40:                               #   in Loop: Header=BB2_4 Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	1736(%rsp), %rax
	movq	48(%rax), %rdx
.Ltmp50:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
.Ltmp51:                                # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB2_41
.LBB2_41:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp52:                                # EH_LABEL
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movb	$93, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp53:                                # EH_LABEL
	jmp	.LBB2_42
.LBB2_42:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp54:                                # EH_LABEL
	leaq	536(%rsp), %rcx
	leaq	560(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp55:                                # EH_LABEL
	jmp	.LBB2_43
.LBB2_43:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	1768(%rsp), %rcx
	leaq	536(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	leaq	536(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	560(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_58
.LBB2_44:
.Ltmp56:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	leaq	560(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_62
.LBB2_45:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp25:                                # EH_LABEL
	leaq	272(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Ltmp26:                                # EH_LABEL
	jmp	.LBB2_46
.LBB2_46:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp27:                                # EH_LABEL
	leaq	272(%rsp), %rcx
	movb	$40, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp28:                                # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB2_47
.LBB2_47:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp29:                                # EH_LABEL
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	1768(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp30:                                # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB2_48
.LBB2_48:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp31:                                # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.20(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp32:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB2_49
.LBB2_49:                               #   in Loop: Header=BB2_4 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	1736(%rsp), %rax
	movl	60(%rax), %edx
.Ltmp33:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp34:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB2_50
.LBB2_50:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp35:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movb	$41, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp36:                                # EH_LABEL
	jmp	.LBB2_51
.LBB2_51:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp37:                                # EH_LABEL
	leaq	248(%rsp), %rcx
	leaq	272(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp38:                                # EH_LABEL
	jmp	.LBB2_52
.LBB2_52:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	1768(%rsp), %rcx
	leaq	248(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	leaq	248(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	272(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_58
.LBB2_53:
.Ltmp39:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	leaq	272(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_62
.LBB2_54:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp20:                                # EH_LABEL
	leaq	.L.str.21(%rip), %rdx
	leaq	200(%rsp), %rcx
	leaq	1768(%rsp), %r8
	callq	_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
.Ltmp21:                                # EH_LABEL
	jmp	.LBB2_55
.LBB2_55:                               #   in Loop: Header=BB2_4 Depth=1
.Ltmp22:                                # EH_LABEL
	leaq	.L.str.22(%rip), %r8
	leaq	224(%rsp), %rcx
	leaq	200(%rsp), %rdx
	callq	_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
.Ltmp23:                                # EH_LABEL
	jmp	.LBB2_56
.LBB2_56:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	1768(%rsp), %rcx
	leaq	224(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	leaq	224(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_58
.LBB2_57:
.Ltmp24:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 1800(%rsp)
	movl	%eax, 1796(%rsp)
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB2_62
.LBB2_58:                               #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_59
.LBB2_59:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	1752(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	jmp	.LBB2_4
.LBB2_60:
	movq	2080(%rsp), %rcx
.Ltmp18:                                # EH_LABEL
	leaq	1768(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp19:                                # EH_LABEL
	jmp	.LBB2_61
.LBB2_61:
	leaq	1768(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	1808(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	nop
	.seh_startepilogue
	addq	$2088, %rsp                     # imm = 0x828
	.seh_endepilogue
	retq
.LBB2_62:
	leaq	1768(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
.LBB2_63:
	leaq	1808(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.64:
	movq	1800(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI2_0:
	.long	.LBB2_7-.LJTI2_0
	.long	.LBB2_12-.LJTI2_0
	.long	.LBB2_19-.LJTI2_0
	.long	.LBB2_27-.LJTI2_0
	.long	.LBB2_35-.LJTI2_0
	.long	.LBB2_45-.LJTI2_0
	.long	.LBB2_54-.LJTI2_0
	.long	.LBB2_54-.LJTI2_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp11-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin2          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp92-.Ltmp85                #   Call between .Ltmp85 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin2          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp81-.Ltmp72                #   Call between .Ltmp72 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin2          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp68-.Ltmp59                #   Call between .Ltmp59 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin2          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp55-.Ltmp42                #   Call between .Ltmp42 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp38-.Ltmp27                #   Call between .Ltmp27 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Lfunc_end2-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
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
	.def	_ZN6apollo3mir12bodyToStringERKNS0_4BodyERKNS0_6TyCtxtE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir12bodyToStringERKNS0_4BodyERKNS0_6TyCtxtE # -- Begin function _ZN6apollo3mir12bodyToStringERKNS0_4BodyERKNS0_6TyCtxtE
	.p2align	4
_ZN6apollo3mir12bodyToStringERKNS0_4BodyERKNS0_6TyCtxtE: # @_ZN6apollo3mir12bodyToStringERKNS0_4BodyERKNS0_6TyCtxtE
.Lfunc_begin3:
.seh_proc _ZN6apollo3mir12bodyToStringERKNS0_4BodyERKNS0_6TyCtxtE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$648, %rsp                      # imm = 0x288
	.seh_stackalloc 648
	.seh_endprologue
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, 640(%rsp)
	movq	%rdx, 632(%rsp)
	movq	%r8, 624(%rsp)
	leaq	360(%rsp), %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	movq	168(%rsp), %rcx                 # 8-byte Reload
.Ltmp100:                               # EH_LABEL
	leaq	.L.str(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp101:                               # EH_LABEL
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB5_1
.LBB5_1:
	movq	632(%rsp), %rcx
	addq	$88, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB5_2
	jmp	.LBB5_4
.LBB5_2:
.Ltmp104:                               # EH_LABEL
	leaq	.L.str.1(%rip), %rdx
	leaq	320(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
.Ltmp105:                               # EH_LABEL
	jmp	.LBB5_3
.LBB5_3:
	jmp	.LBB5_6
.LBB5_4:
	movq	632(%rsp), %rdx
	addq	$88, %rdx
.Ltmp102:                               # EH_LABEL
	leaq	320(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
.Ltmp103:                               # EH_LABEL
	jmp	.LBB5_5
.LBB5_5:
	jmp	.LBB5_6
.LBB5_6:
.Ltmp106:                               # EH_LABEL
	movq	176(%rsp), %rcx                 # 8-byte Reload
	leaq	320(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp107:                               # EH_LABEL
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB5_7
.LBB5_7:
.Ltmp108:                               # EH_LABEL
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movb	$40, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp109:                               # EH_LABEL
	jmp	.LBB5_8
.LBB5_8:
	leaq	320(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	$0, 316(%rsp)
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	movl	316(%rsp), %eax
	movq	632(%rsp), %rcx
	cmpl	72(%rcx), %eax
	jae	.LBB5_23
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	cmpl	$0, 316(%rsp)
	je	.LBB5_15
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=1
.Ltmp167:                               # EH_LABEL
	leaq	.L.str.2(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp168:                               # EH_LABEL
	jmp	.LBB5_12
.LBB5_12:                               #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_15
.LBB5_13:
.Ltmp177:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 348(%rsp)
	jmp	.LBB5_69
.LBB5_14:
.Ltmp110:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 348(%rsp)
	leaq	320(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB5_69
.LBB5_15:                               #   in Loop: Header=BB5_9 Depth=1
.Ltmp169:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	movb	$95, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp170:                               # EH_LABEL
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB5_16
.LBB5_16:                               #   in Loop: Header=BB5_9 Depth=1
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movl	316(%rsp), %edx
	incl	%edx
.Ltmp171:                               # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp172:                               # EH_LABEL
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB5_17
.LBB5_17:                               #   in Loop: Header=BB5_9 Depth=1
.Ltmp173:                               # EH_LABEL
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	.L.str.3(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp174:                               # EH_LABEL
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB5_18
.LBB5_18:                               #   in Loop: Header=BB5_9 Depth=1
	movq	624(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	632(%rsp), %rcx
	addq	$24, %rcx
	movl	316(%rsp), %eax
	incl	%eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax), %r8
.Ltmp175:                               # EH_LABEL
	leaq	288(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp176:                               # EH_LABEL
	jmp	.LBB5_19
.LBB5_19:                               #   in Loop: Header=BB5_9 Depth=1
.Ltmp178:                               # EH_LABEL
	movq	120(%rsp), %rcx                 # 8-byte Reload
	leaq	288(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp179:                               # EH_LABEL
	jmp	.LBB5_20
.LBB5_20:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	288(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.21:                               #   in Loop: Header=BB5_9 Depth=1
	movl	316(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 316(%rsp)
	jmp	.LBB5_9
.LBB5_22:
.Ltmp180:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 348(%rsp)
	leaq	288(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB5_69
.LBB5_23:
.Ltmp111:                               # EH_LABEL
	leaq	.L.str.4(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp112:                               # EH_LABEL
	jmp	.LBB5_24
.LBB5_24:
	movq	624(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	632(%rsp), %rcx
	addq	$24, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax), %r8
.Ltmp113:                               # EH_LABEL
	leaq	264(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp114:                               # EH_LABEL
	jmp	.LBB5_25
.LBB5_25:
.Ltmp115:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	leaq	264(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp116:                               # EH_LABEL
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB5_26
.LBB5_26:
.Ltmp117:                               # EH_LABEL
	movq	96(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.5(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp118:                               # EH_LABEL
	jmp	.LBB5_27
.LBB5_27:
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	$0, 260(%rsp)
.LBB5_28:                               # =>This Inner Loop Header: Depth=1
	movl	260(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	632(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB5_47
# %bb.29:                               #   in Loop: Header=BB5_28 Depth=1
	movq	632(%rsp), %rcx
	addq	$24, %rcx
	movl	260(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	%rax, 248(%rsp)
.Ltmp146:                               # EH_LABEL
	leaq	.L.str.6(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp147:                               # EH_LABEL
	jmp	.LBB5_30
.LBB5_30:                               #   in Loop: Header=BB5_28 Depth=1
	movq	248(%rsp), %rax
	cmpb	$1, 8(%rax)
	jne	.LBB5_34
# %bb.31:                               #   in Loop: Header=BB5_28 Depth=1
.Ltmp148:                               # EH_LABEL
	leaq	.L.str.7(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp149:                               # EH_LABEL
	jmp	.LBB5_32
.LBB5_32:                               #   in Loop: Header=BB5_28 Depth=1
	jmp	.LBB5_34
.LBB5_33:
.Ltmp119:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 348(%rsp)
	leaq	264(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB5_69
.LBB5_34:                               #   in Loop: Header=BB5_28 Depth=1
.Ltmp150:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	movb	$95, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp151:                               # EH_LABEL
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB5_35
.LBB5_35:                               #   in Loop: Header=BB5_28 Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	260(%rsp), %edx
.Ltmp152:                               # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp153:                               # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB5_36
.LBB5_36:                               #   in Loop: Header=BB5_28 Depth=1
.Ltmp154:                               # EH_LABEL
	movq	72(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.3(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp155:                               # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB5_37
.LBB5_37:                               #   in Loop: Header=BB5_28 Depth=1
	movq	624(%rsp), %rdx
	movq	248(%rsp), %rax
	movq	(%rax), %r8
.Ltmp156:                               # EH_LABEL
	leaq	224(%rsp), %rcx
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
.Ltmp157:                               # EH_LABEL
	jmp	.LBB5_38
.LBB5_38:                               #   in Loop: Header=BB5_28 Depth=1
.Ltmp158:                               # EH_LABEL
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	224(%rsp), %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp159:                               # EH_LABEL
	jmp	.LBB5_39
.LBB5_39:                               #   in Loop: Header=BB5_28 Depth=1
	leaq	224(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	248(%rsp), %rcx
	addq	$32, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB5_44
# %bb.40:                               #   in Loop: Header=BB5_28 Depth=1
.Ltmp161:                               # EH_LABEL
	leaq	.L.str.8(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp162:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB5_41
.LBB5_41:                               #   in Loop: Header=BB5_28 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	248(%rsp), %rdx
	addq	$32, %rdx
.Ltmp163:                               # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp164:                               # EH_LABEL
	jmp	.LBB5_42
.LBB5_42:                               #   in Loop: Header=BB5_28 Depth=1
	jmp	.LBB5_44
.LBB5_43:
.Ltmp160:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 348(%rsp)
	leaq	224(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB5_69
.LBB5_44:                               #   in Loop: Header=BB5_28 Depth=1
.Ltmp165:                               # EH_LABEL
	leaq	.L.str.9(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp166:                               # EH_LABEL
	jmp	.LBB5_45
.LBB5_45:                               #   in Loop: Header=BB5_28 Depth=1
	jmp	.LBB5_46
.LBB5_46:                               #   in Loop: Header=BB5_28 Depth=1
	movl	260(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 260(%rsp)
	jmp	.LBB5_28
.LBB5_47:
.Ltmp120:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	movb	$10, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp121:                               # EH_LABEL
	jmp	.LBB5_48
.LBB5_48:
	movl	$0, 220(%rsp)
.LBB5_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
	movl	220(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	632(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB5_66
# %bb.50:                               #   in Loop: Header=BB5_49 Depth=1
.Ltmp126:                               # EH_LABEL
	leaq	.L.str.10(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp127:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB5_51
.LBB5_51:                               #   in Loop: Header=BB5_49 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	220(%rsp), %edx
.Ltmp128:                               # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp129:                               # EH_LABEL
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB5_52
.LBB5_52:                               #   in Loop: Header=BB5_49 Depth=1
.Ltmp130:                               # EH_LABEL
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.11(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp131:                               # EH_LABEL
	jmp	.LBB5_53
.LBB5_53:                               #   in Loop: Header=BB5_49 Depth=1
	movq	632(%rsp), %rcx
	movl	220(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 200(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 192(%rsp)
.LBB5_54:                               #   Parent Loop BB5_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	200(%rsp), %rcx
	leaq	192(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB5_55
	jmp	.LBB5_60
.LBB5_55:                               #   in Loop: Header=BB5_54 Depth=2
	leaq	200(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
	movq	%rax, 184(%rsp)
.Ltmp140:                               # EH_LABEL
	leaq	.L.str.12(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp141:                               # EH_LABEL
	jmp	.LBB5_56
.LBB5_56:                               #   in Loop: Header=BB5_54 Depth=2
	movq	184(%rsp), %rdx
	movq	624(%rsp), %r8
.Ltmp142:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	callq	_ZN6apollo3mir12_GLOBAL__N_115renderStatementERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_9StatementERKNS0_6TyCtxtE
.Ltmp143:                               # EH_LABEL
	jmp	.LBB5_57
.LBB5_57:                               #   in Loop: Header=BB5_54 Depth=2
.Ltmp144:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	movb	$10, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp145:                               # EH_LABEL
	jmp	.LBB5_58
.LBB5_58:                               #   in Loop: Header=BB5_54 Depth=2
	jmp	.LBB5_59
.LBB5_59:                               #   in Loop: Header=BB5_54 Depth=2
	leaq	200(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
	jmp	.LBB5_54
.LBB5_60:                               #   in Loop: Header=BB5_49 Depth=1
.Ltmp132:                               # EH_LABEL
	leaq	.L.str.12(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp133:                               # EH_LABEL
	jmp	.LBB5_61
.LBB5_61:                               #   in Loop: Header=BB5_49 Depth=1
	movq	632(%rsp), %rcx
	movl	220(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	%rax, %rdx
	addq	$24, %rdx
	movq	624(%rsp), %r8
.Ltmp134:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	callq	_ZN6apollo3mir12_GLOBAL__N_116renderTerminatorERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_10TerminatorERKNS0_6TyCtxtE
.Ltmp135:                               # EH_LABEL
	jmp	.LBB5_62
.LBB5_62:                               #   in Loop: Header=BB5_49 Depth=1
.Ltmp136:                               # EH_LABEL
	leaq	360(%rsp), %rcx
	movb	$10, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp137:                               # EH_LABEL
	jmp	.LBB5_63
.LBB5_63:                               #   in Loop: Header=BB5_49 Depth=1
.Ltmp138:                               # EH_LABEL
	leaq	.L.str.13(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp139:                               # EH_LABEL
	jmp	.LBB5_64
.LBB5_64:                               #   in Loop: Header=BB5_49 Depth=1
	jmp	.LBB5_65
.LBB5_65:                               #   in Loop: Header=BB5_49 Depth=1
	movl	220(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 220(%rsp)
	jmp	.LBB5_49
.LBB5_66:
.Ltmp122:                               # EH_LABEL
	leaq	.L.str.14(%rip), %rdx
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp123:                               # EH_LABEL
	jmp	.LBB5_67
.LBB5_67:
.Ltmp124:                               # EH_LABEL
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	360(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp125:                               # EH_LABEL
	jmp	.LBB5_68
.LBB5_68:
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	160(%rsp), %rax                 # 8-byte Reload
	.seh_startepilogue
	addq	$648, %rsp                      # imm = 0x288
	.seh_endepilogue
	retq
.LBB5_69:
	leaq	360(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
# %bb.70:
	movq	352(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp100-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp103-.Ltmp100              #   Call between .Ltmp100 and .Ltmp103
	.uleb128 .Ltmp177-.Lfunc_begin3         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp109-.Ltmp106              #   Call between .Ltmp106 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin3         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp176-.Ltmp167              #   Call between .Ltmp167 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin3         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin3         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp114-.Ltmp111              #   Call between .Ltmp111 and .Ltmp114
	.uleb128 .Ltmp177-.Lfunc_begin3         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp118-.Ltmp115              #   Call between .Ltmp115 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin3         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp157-.Ltmp146              #   Call between .Ltmp146 and .Ltmp157
	.uleb128 .Ltmp177-.Lfunc_begin3         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin3         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp125-.Ltmp161              #   Call between .Ltmp161 and .Ltmp125
	.uleb128 .Ltmp177-.Lfunc_begin3         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Lfunc_end3-.Ltmp125           #   Call between .Ltmp125 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
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
	.def	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	imulq	$528, (%rsp), %rcx              # imm = 0x210
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
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
	.def	_ZN6apollo3mir12_GLOBAL__N_115renderStatementERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_9StatementERKNS0_6TyCtxtE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_115renderStatementERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_9StatementERKNS0_6TyCtxtE
_ZN6apollo3mir12_GLOBAL__N_115renderStatementERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_9StatementERKNS0_6TyCtxtE: # @_ZN6apollo3mir12_GLOBAL__N_115renderStatementERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_9StatementERKNS0_6TyCtxtE
.seh_proc _ZN6apollo3mir12_GLOBAL__N_115renderStatementERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_9StatementERKNS0_6TyCtxtE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	subq	$8, %rax
	ja	.LBB19_10
# %bb.11:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI19_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB19_1:
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	64(%rsp), %rcx
	leaq	.L.str.23(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$64, %rdx
	movq	48(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_112renderRvalueERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_6RvalueERKNS0_6TyCtxtE
	movq	64(%rsp), %rcx
	movl	$59, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB19_10
.LBB19_2:
	movq	64(%rsp), %rcx
	leaq	.L.str.24(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movl	56(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB19_10
.LBB19_3:
	movq	64(%rsp), %rcx
	leaq	.L.str.26(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movl	56(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB19_10
.LBB19_4:
	movq	64(%rsp), %rcx
	leaq	.L.str.27(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	64(%rsp), %rcx
	leaq	.L.str.28(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movl	60(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB19_10
.LBB19_5:
	movq	64(%rsp), %rcx
	leaq	.L.str.29(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	64(%rsp), %rcx
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB19_10
.LBB19_6:
	movq	64(%rsp), %rcx
	leaq	.L.str.30(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	64(%rsp), %rcx
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB19_10
.LBB19_7:
	movq	64(%rsp), %rcx
	leaq	.L.str.31(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	64(%rsp), %rcx
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB19_10
.LBB19_8:
	movq	64(%rsp), %rcx
	leaq	.L.str.32(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	64(%rsp), %rcx
	leaq	.L.str.25(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB19_10
.LBB19_9:
	movq	64(%rsp), %rcx
	leaq	.L.str.33(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	nop
.LBB19_10:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI19_0:
	.long	.LBB19_1-.LJTI19_0
	.long	.LBB19_2-.LJTI19_0
	.long	.LBB19_3-.LJTI19_0
	.long	.LBB19_4-.LJTI19_0
	.long	.LBB19_5-.LJTI19_0
	.long	.LBB19_6-.LJTI19_0
	.long	.LBB19_7-.LJTI19_0
	.long	.LBB19_8-.LJTI19_0
	.long	.LBB19_9-.LJTI19_0
	.text
	.seh_endproc
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
	.def	_ZN6apollo3mir12_GLOBAL__N_116renderTerminatorERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_10TerminatorERKNS0_6TyCtxtE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_116renderTerminatorERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_10TerminatorERKNS0_6TyCtxtE
_ZN6apollo3mir12_GLOBAL__N_116renderTerminatorERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_10TerminatorERKNS0_6TyCtxtE: # @_ZN6apollo3mir12_GLOBAL__N_116renderTerminatorERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_10TerminatorERKNS0_6TyCtxtE
.seh_proc _ZN6apollo3mir12_GLOBAL__N_116renderTerminatorERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_10TerminatorERKNS0_6TyCtxtE
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 128(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%r8, 112(%rsp)
	movq	120(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	subq	$8, %rax
	ja	.LBB21_22
# %bb.23:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI21_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB21_1:
	movq	128(%rsp), %rcx
	leaq	.L.str.72(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rax
	movl	20(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	movl	$59, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB21_22
.LBB21_2:
	movq	128(%rsp), %rcx
	leaq	.L.str.73(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB21_22
.LBB21_3:
	movq	128(%rsp), %rcx
	leaq	.L.str.74(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB21_22
.LBB21_4:
	movq	128(%rsp), %rcx
	leaq	.L.str.75(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	128(%rsp), %rcx
	movq	120(%rsp), %rdx
	addq	$24, %rdx
	movq	112(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	128(%rsp), %rcx
	leaq	.L.str.76(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	$0, 104(%rsp)
.LBB21_5:                               # =>This Inner Loop Header: Depth=1
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rcx
	addq	$112, %rcx
	callq	_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB21_10
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	cmpq	$0, 104(%rsp)
	je	.LBB21_8
# %bb.7:                                #   in Loop: Header=BB21_5 Depth=1
	movq	128(%rsp), %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.LBB21_8:                               #   in Loop: Header=BB21_5 Depth=1
	movq	128(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rcx
	addq	$112, %rcx
	movq	104(%rsp), %rdx
	callq	_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	movq	%rax, %rcx
	leaq	.L.str.77(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rcx
	addq	$112, %rcx
	addq	$24, %rcx
	movq	104(%rsp), %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movl	(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
# %bb.9:                                #   in Loop: Header=BB21_5 Depth=1
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	jmp	.LBB21_5
.LBB21_10:
	movq	128(%rsp), %rcx
	leaq	.L.str.78(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rcx
	addq	$112, %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	leaq	.L.str.79(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB21_22
.LBB21_11:
	movq	128(%rsp), %rcx
	leaq	.L.str.80(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	128(%rsp), %rcx
	movq	120(%rsp), %rdx
	addq	$160, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	128(%rsp), %rcx
	leaq	.L.str.81(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rax
	movl	192(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	movl	$59, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB21_22
.LBB21_12:
	movq	128(%rsp), %rcx
	movq	120(%rsp), %rdx
	addq	$320, %rdx                      # imm = 0x140
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	128(%rsp), %rcx
	leaq	.L.str.23(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	128(%rsp), %rcx
	movq	120(%rsp), %rdx
	addq	$208, %rdx
	movq	112(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	128(%rsp), %rcx
	movl	$40, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movq	$0, 96(%rsp)
.LBB21_13:                              # =>This Inner Loop Header: Depth=1
	movq	96(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rcx
	addq	$296, %rcx                      # imm = 0x128
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB21_18
# %bb.14:                               #   in Loop: Header=BB21_13 Depth=1
	cmpq	$0, 96(%rsp)
	je	.LBB21_16
# %bb.15:                               #   in Loop: Header=BB21_13 Depth=1
	movq	128(%rsp), %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.LBB21_16:                              #   in Loop: Header=BB21_13 Depth=1
	movq	128(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rcx
	addq	$296, %rcx                      # imm = 0x128
	movq	96(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	112(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
# %bb.17:                               #   in Loop: Header=BB21_13 Depth=1
	movq	96(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 96(%rsp)
	jmp	.LBB21_13
.LBB21_18:
	movq	128(%rsp), %rcx
	leaq	.L.str.81(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rax
	movl	352(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	movl	$59, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB21_22
.LBB21_19:
	movq	128(%rsp), %rcx
	leaq	.L.str.82(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	128(%rsp), %rcx
	movq	120(%rsp), %rdx
	addq	$360, %rdx                      # imm = 0x168
	movq	112(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	128(%rsp), %rcx
	leaq	.L.str.83(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rdx
	addq	$456, %rdx                      # imm = 0x1C8
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	movq	%rax, %rcx
	leaq	.L.str.84(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rax
	movl	480(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	movl	$59, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB21_22
.LBB21_20:
	movq	128(%rsp), %rcx
	leaq	.L.str.85(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rax
	movl	484(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	leaq	.L.str.86(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rax
	movl	488(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	leaq	.L.str.79(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB21_22
.LBB21_21:
	movq	128(%rsp), %rcx
	leaq	.L.str.87(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	120(%rsp), %rax
	movl	484(%rax), %edx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rcx
	movl	$59, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	nop
.LBB21_22:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI21_0:
	.long	.LBB21_1-.LJTI21_0
	.long	.LBB21_4-.LJTI21_0
	.long	.LBB21_2-.LJTI21_0
	.long	.LBB21_3-.LJTI21_0
	.long	.LBB21_11-.LJTI21_0
	.long	.LBB21_12-.LJTI21_0
	.long	.LBB21_19-.LJTI21_0
	.long	.LBB21_20-.LJTI21_0
	.long	.LBB21_21-.LJTI21_0
	.text
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_,"xr",discard,_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	.globl	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_ # -- Begin function _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_: # @_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
.seh_proc _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$64, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.globl	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_: # @_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.globl	_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_: # @_ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
.seh_proc _ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
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
	.def	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
	.globl	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_: # @_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEC2B9nqe220103ES5_
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
	.def	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_ # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
.Lfunc_begin4:
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
.Ltmp181:                               # EH_LABEL
	leaq	87(%rsp), %rcx
	callq	_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
.Ltmp182:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB33_1
.LBB33_1:
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
	jne	.LBB33_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB33_3:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB33_4:
.Ltmp183:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end4:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table33:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp181-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin4         #     jumps to .Ltmp183
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp182           #   Call between .Ltmp182 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
	jne	.LBB34_2
# %bb.1:
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
.LBB34_2:
	movq	40(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
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
	jne	.LBB38_1
	jmp	.LBB38_2
.LBB38_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB38_3
.LBB38_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB38_3:
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
.Lfunc_begin5:
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
.Ltmp184:                               # EH_LABEL
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp185:                               # EH_LABEL
	jmp	.LBB39_1
.LBB39_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB39_2:
.Ltmp186:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table39:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp184-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin5         #     jumps to .Ltmp186
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
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
	jne	.LBB42_1
	jmp	.LBB42_2
.LBB42_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB42_3
.LBB42_2:
	movl	$23, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB42_3
.LBB42_3:
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
	jne	.LBB44_1
	jmp	.LBB44_2
.LBB44_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB44_3
.LBB44_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB44_3:
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
.Lfunc_begin6:
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
	jne	.LBB51_1
	jmp	.LBB51_4
.LBB51_1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
.Ltmp187:                               # EH_LABEL
	leaq	88(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp188:                               # EH_LABEL
	jmp	.LBB51_2
.LBB51_2:
.Ltmp189:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	88(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
.Ltmp190:                               # EH_LABEL
	jmp	.LBB51_3
.LBB51_3:
	jmp	.LBB51_4
.LBB51_4:
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
	je	.LBB51_7
# %bb.5:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB51_7
# %bb.6:
	movq	112(%rsp), %rcx
	movq	56(%rsp), %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	jmp	.LBB51_8
.LBB51_7:
	movq	112(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
.LBB51_8:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB51_11
# %bb.9:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 112(%rsp)
	je	.LBB51_11
# %bb.10:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB51_11:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB51_12:
.Ltmp191:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table51:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp187-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp190-.Ltmp187              #   Call between .Ltmp187 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin6         #     jumps to .Ltmp191
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
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
	jne	.LBB52_1
	jmp	.LBB52_2
.LBB52_1:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
.LBB52_2:
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
	jne	.LBB62_1
	jmp	.LBB62_2
.LBB62_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB62_3
.LBB62_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB62_3:
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
	jae	.LBB72_2
# %bb.1:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB72_2:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$0, %eax
	jne	.LBB72_4
# %bb.3:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB72_34
.LBB72_4:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$24, %eax
	jne	.LBB72_7
# %bb.5:
	cmpl	$1, 140(%rsp)
	jne	.LBB72_7
# %bb.6:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB72_34
.LBB72_7:
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, 88(%rax)
	jne	.LBB72_9
# %bb.8:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB72_10
.LBB72_9:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB72_10:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	movl	140(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	je	.LBB72_11
	jmp	.LBB72_35
.LBB72_35:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$1, %eax
	je	.LBB72_12
	jmp	.LBB72_36
.LBB72_36:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$2, %eax
	je	.LBB72_16
	jmp	.LBB72_17
.LBB72_11:
	movq	$0, 120(%rsp)
	jmp	.LBB72_18
.LBB72_12:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB72_14
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
	jmp	.LBB72_15
.LBB72_14:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
.LBB72_15:
	jmp	.LBB72_18
.LBB72_16:
	movq	128(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB72_18
.LBB72_17:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB72_34
.LBB72_18:
	movq	144(%rsp), %rax
	addq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	cmpq	$0, 120(%rsp)
	jl	.LBB72_20
# %bb.19:
	movq	128(%rsp), %rax
	cmpq	120(%rsp), %rax
	jge	.LBB72_21
.LBB72_20:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB72_34
.LBB72_21:
	cmpq	$0, 120(%rsp)
	je	.LBB72_29
# %bb.22:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB72_25
# %bb.23:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB72_25
# %bb.24:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB72_34
.LBB72_25:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB72_28
# %bb.26:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB72_28
# %bb.27:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB72_34
.LBB72_28:
	jmp	.LBB72_29
.LBB72_29:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB72_31
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
.LBB72_31:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB72_33
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
.LBB72_33:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
.LBB72_34:
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
	jae	.LBB74_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB74_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB74_8
# %bb.3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	cmpq	88(%rcx), %rax
	jae	.LBB74_5
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
.LBB74_5:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB74_7
# %bb.6:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movb	(%rax), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 84(%rsp)
	jmp	.LBB74_9
.LBB74_7:
	jmp	.LBB74_8
.LBB74_8:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 84(%rsp)
.LBB74_9:
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
	jae	.LBB75_2
# %bb.1:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB75_2:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB75_9
# %bb.3:
	movl	100(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%eax, %edx
	callq	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	testb	$1, %al
	jne	.LBB75_4
	jmp	.LBB75_5
.LBB75_4:
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
	jmp	.LBB75_10
.LBB75_5:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB75_7
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
	jne	.LBB75_7
	jmp	.LBB75_8
.LBB75_7:
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
	jmp	.LBB75_10
.LBB75_8:
	jmp	.LBB75_9
.LBB75_9:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 116(%rsp)
.LBB75_10:
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
.Lfunc_begin7:
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
	jne	.LBB76_13
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
	jne	.LBB76_10
# %bb.2:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB76_4
# %bb.3:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 196(%rsp)
	jmp	.LBB76_14
.LBB76_4:
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
.Ltmp192:                               # EH_LABEL
	xorl	%eax, %eax
	movb	%al, %dl
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
.Ltmp193:                               # EH_LABEL
	jmp	.LBB76_5
.LBB76_5:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp194:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
.Ltmp195:                               # EH_LABEL
	jmp	.LBB76_6
.LBB76_6:
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
	jmp	.LBB76_9
.LBB76_7:
.Ltmp196:                               # EH_LABEL
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
	jmp	.LBB76_14
.LBB76_9:
	jmp	.LBB76_10
.LBB76_10:
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
	je	.LBB76_12
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
.LBB76_12:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	movl	%eax, 196(%rsp)
	jmp	.LBB76_14
.LBB76_13:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	movl	%eax, 196(%rsp)
.LBB76_14:
	movl	196(%rsp), %eax
	.seh_startepilogue
	addq	$200, %rsp
	.seh_endepilogue
	retq
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table76:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp192-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp195-.Ltmp192              #   Call between .Ltmp192 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin7         #     jumps to .Ltmp196
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp195-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp195           #   Call between .Ltmp195 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
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
	jne	.LBB88_1
	jmp	.LBB88_2
.LBB88_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB88_3
.LBB88_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB88_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
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
	jne	.LBB94_1
	jmp	.LBB94_2
.LBB94_1:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	xorl	$-1, %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB94_3
.LBB94_2:
	movl	52(%rsp), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
.LBB94_3:
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
.Lfunc_begin8:
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
	jne	.LBB99_4
# %bb.1:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, %edx
	movq	(%rcx), %rax
	movq	104(%rax), %rax
.Ltmp199:                               # EH_LABEL
	callq	*%rax
.Ltmp200:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB99_2
.LBB99_2:
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB99_6
.LBB99_3:
.Ltmp201:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	jmp	.LBB99_7
.LBB99_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	103(%rsp), %al
	movb	%al, 43(%rsp)                   # 1-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movb	43(%rsp), %dl                   # 1-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	%dl, (%rax)
.Ltmp197:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.Ltmp198:                               # EH_LABEL
	jmp	.LBB99_5
.LBB99_5:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
.LBB99_6:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	movl	116(%rsp), %eax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB99_7:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table99:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp199-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp199
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp198-.Ltmp199              #   Call between .Ltmp199 and .Ltmp198
	.uleb128 .Ltmp201-.Lfunc_begin8         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp198           #   Call between .Ltmp198 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
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
	jne	.LBB100_1
	jmp	.LBB100_2
.LBB100_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB100_3
.LBB100_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB100_3:
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
.Lfunc_begin9:
.seh_proc _ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
.Ltmp202:                               # EH_LABEL
	callq	_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
.Ltmp203:                               # EH_LABEL
	jmp	.LBB105_1
.LBB105_1:
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB105_2:
.Ltmp204:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"xr",discard,_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table105:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp202-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin9         #     jumps to .Ltmp204
	.byte	1                               #   On action: 1
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
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
	.def	_ZN6apollo3mir12_GLOBAL__N_112renderRvalueERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_6RvalueERKNS0_6TyCtxtE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_112renderRvalueERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_6RvalueERKNS0_6TyCtxtE
_ZN6apollo3mir12_GLOBAL__N_112renderRvalueERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_6RvalueERKNS0_6TyCtxtE: # @_ZN6apollo3mir12_GLOBAL__N_112renderRvalueERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_6RvalueERKNS0_6TyCtxtE
.Lfunc_begin10:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_112renderRvalueERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_6RvalueERKNS0_6TyCtxtE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$216, %rsp
	.seh_stackalloc 216
	.seh_endprologue
	movq	%rcx, 208(%rsp)
	movq	%rdx, 200(%rsp)
	movq	%r8, 192(%rsp)
	movq	200(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	subq	$12, %rax
	ja	.LBB114_30
# %bb.32:
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI114_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB114_1:
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$8, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	jmp	.LBB114_30
.LBB114_2:
	movq	208(%rsp), %rcx
	movl	$91, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$8, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	208(%rsp), %rcx
	leaq	.L.str.34(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	200(%rsp), %rax
	movq	184(%rax), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	movq	%rax, %rcx
	movl	$93, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB114_30
.LBB114_3:
	movq	208(%rsp), %rcx
	movl	$38, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movq	200(%rsp), %rax
	cmpb	$1, 224(%rax)
	je	.LBB114_5
# %bb.4:
	movq	200(%rsp), %rax
	cmpb	$2, 224(%rax)
	jne	.LBB114_6
.LBB114_5:
	movq	208(%rsp), %rcx
	leaq	.L.str.7(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.LBB114_6:
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$192, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	jmp	.LBB114_30
.LBB114_7:
	movq	208(%rsp), %rcx
	leaq	.L.str.35(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	200(%rsp), %rax
	movb	232(%rax), %r8b
	leaq	.L.str.36(%rip), %rdx
	leaq	.L.str.7(%rip), %rax
	cmpb	$1, %r8b
	cmoveq	%rax, %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$192, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	jmp	.LBB114_30
.LBB114_8:
	movq	208(%rsp), %rcx
	leaq	.L.str.37(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$192, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	208(%rsp), %rcx
	movl	$41, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB114_30
.LBB114_9:
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$8, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	208(%rsp), %rcx
	leaq	.L.str.38(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	192(%rsp), %rdx
	movq	200(%rsp), %rax
	movq	240(%rax), %r8
	leaq	168(%rsp), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rdx                 # 8-byte Reload
.Ltmp210:                               # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp211:                               # EH_LABEL
	jmp	.LBB114_10
.LBB114_10:
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB114_30
.LBB114_11:
.Ltmp212:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 160(%rsp)
	movl	%eax, 156(%rsp)
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB114_31
.LBB114_12:
	movq	208(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	200(%rsp), %rax
	movb	248(%rax), %cl
	callq	_ZN6apollo3mir12_GLOBAL__N_110binOpTokenENS0_5BinOpE
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movl	$40, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$8, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	208(%rsp), %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$96, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	208(%rsp), %rcx
	movl	$41, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB114_30
.LBB114_13:
	movq	208(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	200(%rsp), %rax
	cmpb	$0, 249(%rax)
	jne	.LBB114_15
# %bb.14:
	leaq	.L.str.39(%rip), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB114_16
.LBB114_15:
	leaq	.L.str.40(%rip), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB114_16
.LBB114_16:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$8, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	208(%rsp), %rcx
	movl	$41, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB114_30
.LBB114_17:
	movq	208(%rsp), %rcx
	leaq	.L.str.41(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$192, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	208(%rsp), %rcx
	movl	$41, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB114_30
.LBB114_18:
	movq	208(%rsp), %rcx
	leaq	.L.str.42(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	$0, 144(%rsp)
.LBB114_19:                             # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	200(%rsp), %rcx
	addq	$256, %rcx                      # imm = 0x100
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB114_24
# %bb.20:                               #   in Loop: Header=BB114_19 Depth=1
	cmpq	$0, 144(%rsp)
	je	.LBB114_22
# %bb.21:                               #   in Loop: Header=BB114_19 Depth=1
	movq	208(%rsp), %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.LBB114_22:                             #   in Loop: Header=BB114_19 Depth=1
	movq	208(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	200(%rsp), %rcx
	addq	$256, %rcx                      # imm = 0x100
	movq	144(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
# %bb.23:                               #   in Loop: Header=BB114_19 Depth=1
	movq	144(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 144(%rsp)
	jmp	.LBB114_19
.LBB114_24:
	movq	208(%rsp), %rcx
	movl	$41, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	jmp	.LBB114_30
.LBB114_25:
	movq	208(%rsp), %rcx
	leaq	.L.str.43(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$8, %rdx
	movq	192(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	movq	208(%rsp), %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	192(%rsp), %rdx
	movq	200(%rsp), %rax
	movq	240(%rax), %r8
	leaq	120(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp205:                               # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp206:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB114_26
.LBB114_26:
.Ltmp207:                               # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	$41, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
.Ltmp208:                               # EH_LABEL
	jmp	.LBB114_27
.LBB114_27:
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB114_30
.LBB114_28:
.Ltmp209:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 160(%rsp)
	movl	%eax, 156(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB114_31
.LBB114_29:
	movq	208(%rsp), %rcx
	leaq	.L.str.44(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	208(%rsp), %rcx
	movq	200(%rsp), %rdx
	addq	$192, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	movq	208(%rsp), %rcx
	movl	$41, %edx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	nop
.LBB114_30:
	.seh_startepilogue
	addq	$216, %rsp
	.seh_endepilogue
	retq
.LBB114_31:
	movq	160(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end10:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI114_0:
	.long	.LBB114_1-.LJTI114_0
	.long	.LBB114_2-.LJTI114_0
	.long	.LBB114_3-.LJTI114_0
	.long	.LBB114_7-.LJTI114_0
	.long	.LBB114_8-.LJTI114_0
	.long	.LBB114_9-.LJTI114_0
	.long	.LBB114_12-.LJTI114_0
	.long	.LBB114_12-.LJTI114_0
	.long	.LBB114_13-.LJTI114_0
	.long	.LBB114_17-.LJTI114_0
	.long	.LBB114_18-.LJTI114_0
	.long	.LBB114_25-.LJTI114_0
	.long	.LBB114_29-.LJTI114_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table114:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp210-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin10        #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp205-.Ltmp211              #   Call between .Ltmp211 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp208-.Ltmp205              #   Call between .Ltmp205 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin10        #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Lfunc_end10-.Ltmp208          #   Call between .Ltmp208 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE: # @_ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
.seh_proc _ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 47(%rsp)                   # 1-byte Spill
	testb	%al, %al
	je	.LBB115_1
	jmp	.LBB115_5
.LBB115_5:
	movb	47(%rsp), %al                   # 1-byte Reload
	subb	$1, %al
	je	.LBB115_2
	jmp	.LBB115_6
.LBB115_6:
	movb	47(%rsp), %al                   # 1-byte Reload
	subb	$2, %al
	je	.LBB115_3
	jmp	.LBB115_4
.LBB115_1:
	movq	64(%rsp), %rcx
	leaq	.L.str.45(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$8, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	jmp	.LBB115_4
.LBB115_2:
	movq	64(%rsp), %rcx
	leaq	.L.str.46(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$8, %rdx
	callq	_ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	jmp	.LBB115_4
.LBB115_3:
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	addq	$40, %rdx
	movq	48(%rsp), %r8
	callq	_ZN6apollo3mir12_GLOBAL__N_114renderConstantERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_8ConstantERKNS0_6TyCtxtE
	nop
.LBB115_4:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_110binOpTokenENS0_5BinOpE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_110binOpTokenENS0_5BinOpE
_ZN6apollo3mir12_GLOBAL__N_110binOpTokenENS0_5BinOpE: # @_ZN6apollo3mir12_GLOBAL__N_110binOpTokenENS0_5BinOpE
.seh_proc _ZN6apollo3mir12_GLOBAL__N_110binOpTokenENS0_5BinOpE
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movb	%cl, 15(%rsp)
	movzbl	15(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	subq	$16, %rax
	ja	.LBB116_18
# %bb.20:
	movq	(%rsp), %rcx                    # 8-byte Reload
	leaq	.LJTI116_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB116_1:
	leaq	.L.str.54(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_2:
	leaq	.L.str.55(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_3:
	leaq	.L.str.56(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_4:
	leaq	.L.str.57(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_5:
	leaq	.L.str.58(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_6:
	leaq	.L.str.59(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_7:
	leaq	.L.str.60(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_8:
	leaq	.L.str.61(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_9:
	leaq	.L.str.62(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_10:
	leaq	.L.str.63(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_11:
	leaq	.L.str.64(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_12:
	leaq	.L.str.65(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_13:
	leaq	.L.str.66(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_14:
	leaq	.L.str.67(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_15:
	leaq	.L.str.68(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_16:
	leaq	.L.str.69(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_17:
	leaq	.L.str.70(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB116_19
.LBB116_18:
	leaq	.L.str.71(%rip), %rax
	movq	%rax, 16(%rsp)
.LBB116_19:
	movq	16(%rsp), %rax
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI116_0:
	.long	.LBB116_1-.LJTI116_0
	.long	.LBB116_2-.LJTI116_0
	.long	.LBB116_3-.LJTI116_0
	.long	.LBB116_4-.LJTI116_0
	.long	.LBB116_5-.LJTI116_0
	.long	.LBB116_6-.LJTI116_0
	.long	.LBB116_7-.LJTI116_0
	.long	.LBB116_8-.LJTI116_0
	.long	.LBB116_9-.LJTI116_0
	.long	.LBB116_10-.LJTI116_0
	.long	.LBB116_11-.LJTI116_0
	.long	.LBB116_12-.LJTI116_0
	.long	.LBB116_13-.LJTI116_0
	.long	.LBB116_14-.LJTI116_0
	.long	.LBB116_15-.LJTI116_0
	.long	.LBB116_16-.LJTI116_0
	.long	.LBB116_17-.LJTI116_0
	.text
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$88, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	imulq	$88, (%rsp), %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir12_GLOBAL__N_114renderConstantERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_8ConstantERKNS0_6TyCtxtE;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZN6apollo3mir12_GLOBAL__N_114renderConstantERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_8ConstantERKNS0_6TyCtxtE
_ZN6apollo3mir12_GLOBAL__N_114renderConstantERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_8ConstantERKNS0_6TyCtxtE: # @_ZN6apollo3mir12_GLOBAL__N_114renderConstantERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_8ConstantERKNS0_6TyCtxtE
.Lfunc_begin11:
.seh_proc _ZN6apollo3mir12_GLOBAL__N_114renderConstantERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_8ConstantERKNS0_6TyCtxtE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	104(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	subq	$4, %rax
	ja	.LBB119_8
# %bb.10:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI119_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB119_1:
	movq	112(%rsp), %rcx
	leaq	.L.str.36(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	104(%rsp), %rax
	movq	8(%rax), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	movq	%rax, %rcx
	movb	$95, %dl
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rax
	movq	16(%rax), %r8
	leaq	72(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp213:                               # EH_LABEL
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp214:                               # EH_LABEL
	jmp	.LBB119_2
.LBB119_2:
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB119_8
.LBB119_3:
.Ltmp215:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB119_9
.LBB119_4:
	movq	112(%rsp), %rcx
	movq	104(%rsp), %rax
	movq	8(%rax), %r8
	leaq	.L.str.48(%rip), %rdx
	leaq	.L.str.47(%rip), %rax
	cmpq	$0, %r8
	cmovneq	%rax, %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB119_8
.LBB119_5:
	movq	112(%rsp), %rcx
	leaq	.L.str.49(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	leaq	_ZNSt3__13hexB9nqe220103ERNS_8ios_baseE(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E
	movq	%rax, %rcx
	movq	104(%rsp), %rax
	movq	8(%rax), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	movq	%rax, %rcx
	leaq	_ZNSt3__13decB9nqe220103ERNS_8ios_baseE(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E
	movq	%rax, %rcx
	leaq	.L.str.50(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB119_8
.LBB119_6:
	movq	112(%rsp), %rcx
	leaq	.L.str.51(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	jmp	.LBB119_8
.LBB119_7:
	movq	112(%rsp), %rcx
	leaq	.L.str.52(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rcx
	movq	104(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	movq	%rax, %rcx
	leaq	.L.str.53(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	nop
.LBB119_8:
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB119_9:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end11:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI119_0:
	.long	.LBB119_1-.LJTI119_0
	.long	.LBB119_4-.LJTI119_0
	.long	.LBB119_5-.LJTI119_0
	.long	.LBB119_6-.LJTI119_0
	.long	.LBB119_7-.LJTI119_0
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table119:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp213-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin11        #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp214          #   Call between .Ltmp214 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E
	.globl	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E # -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E
	.p2align	4
_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E: # @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E
.seh_proc _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax
	movq	(%rcx), %rdx
	addq	-24(%rdx), %rcx
	callq	*%rax
                                        # kill: def $rcx killed $rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13hexB9nqe220103ERNS_8ios_baseE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13hexB9nqe220103ERNS_8ios_baseE,"xr",discard,_ZNSt3__13hexB9nqe220103ERNS_8ios_baseE
	.globl	_ZNSt3__13hexB9nqe220103ERNS_8ios_baseE # -- Begin function _ZNSt3__13hexB9nqe220103ERNS_8ios_baseE
	.p2align	4
_ZNSt3__13hexB9nqe220103ERNS_8ios_baseE: # @_ZNSt3__13hexB9nqe220103ERNS_8ios_baseE
.seh_proc _ZNSt3__13hexB9nqe220103ERNS_8ios_baseE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movl	$8, %edx
	movl	$74, %r8d
	callq	_ZNSt3__18ios_base4setfB9nqe220103Ejj
	movq	32(%rsp), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13decB9nqe220103ERNS_8ios_baseE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13decB9nqe220103ERNS_8ios_baseE,"xr",discard,_ZNSt3__13decB9nqe220103ERNS_8ios_baseE
	.globl	_ZNSt3__13decB9nqe220103ERNS_8ios_baseE # -- Begin function _ZNSt3__13decB9nqe220103ERNS_8ios_baseE
	.p2align	4
_ZNSt3__13decB9nqe220103ERNS_8ios_baseE: # @_ZNSt3__13decB9nqe220103ERNS_8ios_baseE
.seh_proc _ZNSt3__13decB9nqe220103ERNS_8ios_baseE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movl	$2, %edx
	movl	$74, %r8d
	callq	_ZNSt3__18ios_base4setfB9nqe220103Ejj
	movq	32(%rsp), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18ios_base4setfB9nqe220103Ejj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18ios_base4setfB9nqe220103Ejj,"xr",discard,_ZNSt3__18ios_base4setfB9nqe220103Ejj
	.globl	_ZNSt3__18ios_base4setfB9nqe220103Ejj # -- Begin function _ZNSt3__18ios_base4setfB9nqe220103Ejj
	.p2align	4
_ZNSt3__18ios_base4setfB9nqe220103Ejj:  # @_ZNSt3__18ios_base4setfB9nqe220103Ejj
.seh_proc _ZNSt3__18ios_base4setfB9nqe220103Ejj
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movl	%edx, 60(%rsp)
	movl	%r8d, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movl	8(%rcx), %eax
	movl	%eax, 52(%rsp)
	movl	56(%rsp), %edx
	callq	_ZNSt3__18ios_base6unsetfB9nqe220103Ej
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	60(%rsp), %ecx
	andl	56(%rsp), %ecx
	orl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movl	52(%rsp), %eax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18ios_base6unsetfB9nqe220103Ej;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18ios_base6unsetfB9nqe220103Ej,"xr",discard,_ZNSt3__18ios_base6unsetfB9nqe220103Ej
	.globl	_ZNSt3__18ios_base6unsetfB9nqe220103Ej # -- Begin function _ZNSt3__18ios_base6unsetfB9nqe220103Ej
	.p2align	4
_ZNSt3__18ios_base6unsetfB9nqe220103Ej: # @_ZNSt3__18ios_base6unsetfB9nqe220103Ej
.seh_proc _ZNSt3__18ios_base6unsetfB9nqe220103Ej
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movl	%edx, 4(%rsp)
	movq	8(%rsp), %rax
	movl	4(%rsp), %ecx
	xorl	$-1, %ecx
	andl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	.seh_startepilogue
	addq	$16, %rsp
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
	.def	_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey
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
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rsp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	addq	$-4, %rax
	.seh_startepilogue
	popq	%rcx
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
.Lfunc_begin12:
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
.Ltmp216:                               # EH_LABEL
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
.Ltmp217:                               # EH_LABEL
	jmp	.LBB131_1
.LBB131_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB131_2:
.Ltmp218:                               # EH_LABEL
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
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table131:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp216-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp216
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin12        #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp217          #   Call between .Ltmp217 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
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
.Lfunc_begin13:
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
.Ltmp219:                               # EH_LABEL
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp220:                               # EH_LABEL
	jmp	.LBB135_1
.LBB135_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB135_2:
.Ltmp221:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table135:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp219-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin13        #     jumps to .Ltmp221
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
	je	.LBB136_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 88(%rcx)
	movq	72(%rsp), %rdx
	movq	72(%rsp), %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.LBB136_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB136_11
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
	je	.LBB136_10
# %bb.4:
	jmp	.LBB136_5
.LBB136_5:                              # =>This Inner Loop Header: Depth=1
	cmpq	$2147483647, 64(%rsp)           # imm = 0x7FFFFFFF
	jbe	.LBB136_7
# %bb.6:                                #   in Loop: Header=BB136_5 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	$2147483647, %edx               # imm = 0x7FFFFFFF
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	movq	64(%rsp), %rax
	subq	$2147483647, %rax               # imm = 0x7FFFFFFF
	movq	%rax, 64(%rsp)
	jmp	.LBB136_5
.LBB136_7:
	cmpq	$0, 64(%rsp)
	jbe	.LBB136_9
# %bb.8:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rax
	movl	%eax, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.LBB136_9:
	jmp	.LBB136_10
.LBB136_10:
	jmp	.LBB136_11
.LBB136_11:
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
.Lfunc_begin14:
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
.Ltmp222:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
.Ltmp223:                               # EH_LABEL
	jmp	.LBB137_1
.LBB137_1:
.Ltmp225:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
.Ltmp226:                               # EH_LABEL
	movb	%al, 111(%rsp)                  # 1-byte Spill
	jmp	.LBB137_2
.LBB137_2:
	movb	111(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB137_3
	jmp	.LBB137_18
.LBB137_3:
	movq	176(%rsp), %rdx
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	movq	168(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp227:                               # EH_LABEL
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
.Ltmp228:                               # EH_LABEL
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	jmp	.LBB137_4
.LBB137_4:
	movl	104(%rsp), %eax                 # 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	.LBB137_6
# %bb.5:
	movq	168(%rsp), %rax
	addq	160(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB137_7
.LBB137_6:
	movq	168(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB137_7:
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
.Ltmp229:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
.Ltmp230:                               # EH_LABEL
	movb	%al, 87(%rsp)                   # 1-byte Spill
	jmp	.LBB137_8
.LBB137_8:
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movb	87(%rsp), %r11b                 # 1-byte Reload
	movq	112(%rsp), %rcx
.Ltmp231:                               # EH_LABEL
	movq	%rsp, %rax
	movb	%r11b, 40(%rax)
	movq	%r10, 32(%rax)
	callq	_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Ltmp232:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB137_9
.LBB137_9:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
	testb	$1, %al
	jne	.LBB137_10
	jmp	.LBB137_17
.LBB137_10:
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp233:                               # EH_LABEL
	movl	$5, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp234:                               # EH_LABEL
	jmp	.LBB137_11
.LBB137_11:
	jmp	.LBB137_17
.LBB137_12:
.Ltmp224:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	jmp	.LBB137_14
.LBB137_13:
.Ltmp235:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
.LBB137_14:
	movq	136(%rsp), %rcx
	callq	__cxa_begin_catch
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp236:                               # EH_LABEL
	callq	_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
.Ltmp237:                               # EH_LABEL
	jmp	.LBB137_15
.LBB137_15:
	callq	__cxa_end_catch
.LBB137_16:
	movq	176(%rsp), %rax
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
.LBB137_17:
	jmp	.LBB137_18
.LBB137_18:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	jmp	.LBB137_16
.LBB137_19:
.Ltmp238:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
.Ltmp239:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp240:                               # EH_LABEL
	jmp	.LBB137_20
.LBB137_20:
	jmp	.LBB137_21
.LBB137_21:
	movq	136(%rsp), %rcx
	callq	_Unwind_Resume
.LBB137_22:
.Ltmp241:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_endproc
	.section	.xdata$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table137:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp222-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin14        #     jumps to .Ltmp224
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp225-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp234-.Ltmp225              #   Call between .Ltmp225 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin14        #     jumps to .Ltmp235
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp234-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp236-.Ltmp234              #   Call between .Ltmp234 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin14        #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Ltmp239-.Ltmp237              #   Call between .Ltmp237 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin14        # >> Call Site 6 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin14        #     jumps to .Ltmp241
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp240-.Lfunc_begin14        # >> Call Site 7 <<
	.uleb128 .Lfunc_end14-.Ltmp240          #   Call between .Ltmp240 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
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
	jne	.LBB138_1
	jmp	.LBB138_4
.LBB138_1:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB138_3
# %bb.2:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
.LBB138_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	$1, (%rax)
.LBB138_4:
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
.Lfunc_begin15:
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
	jne	.LBB140_2
# %bb.1:
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB140_22
.LBB140_2:
	movq	128(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__18ios_base5widthB9nqe220103Ev
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jle	.LBB140_4
# %bb.3:
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB140_5
.LBB140_4:
	movq	$0, 112(%rsp)
.LBB140_5:
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB140_9
# %bb.6:
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB140_8
# %bb.7:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB140_22
.LBB140_8:
	jmp	.LBB140_9
.LBB140_9:
	cmpq	$0, 112(%rsp)
	jle	.LBB140_17
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
.Ltmp242:                               # EH_LABEL
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
.Ltmp243:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB140_11
.LBB140_11:
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB140_14
# %bb.12:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB140_15
.LBB140_13:
.Ltmp244:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB140_23
.LBB140_14:
	movl	$0, 64(%rsp)
.LBB140_15:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	64(%rsp), %eax
	testl	%eax, %eax
	je	.LBB140_16
	jmp	.LBB140_25
.LBB140_25:
	jmp	.LBB140_22
.LBB140_16:
	jmp	.LBB140_17
.LBB140_17:
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB140_21
# %bb.18:
	movq	152(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB140_20
# %bb.19:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB140_22
.LBB140_20:
	jmp	.LBB140_21
.LBB140_21:
	movq	208(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__18ios_base5widthB9nqe220103Ex
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
.LBB140_22:
	movq	160(%rsp), %rax
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB140_23:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
# %bb.24:
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_endproc
	.section	.xdata$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table140:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp242-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp242
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin15        #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Lfunc_end15-.Ltmp243          #   Call between .Ltmp243 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
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
.Lfunc_begin16:
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
.Ltmp245:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp246:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB141_1
.LBB141_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB141_2:
.Ltmp247:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	.seh_endproc
	.section	.xdata$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table141:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp245-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin16        #     jumps to .Ltmp247
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
	jne	.LBB143_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$32, %edx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movsbl	%al, %edx
	addq	$144, %rcx
	callq	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
.LBB143_2:
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
.Lfunc_begin17:
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
.Ltmp248:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp249:                               # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB146_1
.LBB146_1:
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB146_16
# %bb.2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp250:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
.Ltmp251:                               # EH_LABEL
	movb	%al, 63(%rsp)                   # 1-byte Spill
	jmp	.LBB146_3
.LBB146_3:
	movb	63(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB146_4
	jmp	.LBB146_16
.LBB146_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB146_16
# %bb.5:
	callq	_ZSt19uncaught_exceptionsv
	cmpl	$0, %eax
	jne	.LBB146_16
# %bb.6:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp252:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp253:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB146_7
.LBB146_7:
.Ltmp254:                               # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
.Ltmp255:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB146_8
.LBB146_8:
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$-1, %eax
	jne	.LBB146_15
# %bb.9:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp256:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp257:                               # EH_LABEL
	jmp	.LBB146_10
.LBB146_10:
	jmp	.LBB146_15
.LBB146_11:
.Ltmp258:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
# %bb.12:
	movq	88(%rsp), %rcx
	callq	__cxa_begin_catch
.Ltmp259:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp260:                               # EH_LABEL
	jmp	.LBB146_13
.LBB146_13:
	jmp	.LBB146_14
.LBB146_14:
	jmp	.LBB146_16
.LBB146_15:
	jmp	.LBB146_14
.LBB146_16:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB146_17:
.Ltmp261:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table146:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp248-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp251-.Ltmp248              #   Call between .Ltmp248 and .Ltmp251
	.uleb128 .Ltmp261-.Lfunc_begin17        #     jumps to .Ltmp261
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp252-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp257-.Ltmp252              #   Call between .Ltmp252 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin17        #     jumps to .Ltmp258
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp257-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp259-.Ltmp257              #   Call between .Ltmp257 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin17        #     jumps to .Ltmp261
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
.Lfunc_begin18:
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
.Ltmp262:                               # EH_LABEL
	callq	_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
.Ltmp263:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB157_1
.LBB157_1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	95(%rsp), %dl
.Ltmp264:                               # EH_LABEL
	callq	_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
.Ltmp265:                               # EH_LABEL
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jmp	.LBB157_2
.LBB157_2:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16localeD1Ev
	movb	47(%rsp), %al                   # 1-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB157_3:
.Ltmp266:                               # EH_LABEL
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
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.seh_endproc
	.section	.xdata$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table157:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp262-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp262
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp265-.Ltmp262              #   Call between .Ltmp262 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin18        #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Lfunc_end18-.Ltmp265          #   Call between .Ltmp265 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
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
.Lfunc_begin19:
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
	je	.LBB167_5
# %bb.1:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB167_3
# %bb.2:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB167_3:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	88(%rax), %r8
.Ltmp269:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp270:                               # EH_LABEL
	jmp	.LBB167_4
.LBB167_4:
	jmp	.LBB167_10
.LBB167_5:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB167_8
# %bb.6:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
.Ltmp267:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp268:                               # EH_LABEL
	jmp	.LBB167_7
.LBB167_7:
	jmp	.LBB167_10
.LBB167_8:
	jmp	.LBB167_9
.LBB167_9:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
.LBB167_10:
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB167_11:
.Ltmp271:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table167:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp269-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp268-.Ltmp269              #   Call between .Ltmp269 and .Ltmp268
	.uleb128 .Ltmp271-.Lfunc_begin19        #     jumps to .Ltmp271
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
	.asciz	"fn "

.L.str.1:                               # @.str.1
	.asciz	"<anon>"

.L.str.2:                               # @.str.2
	.asciz	", "

.L.str.3:                               # @.str.3
	.asciz	": "

.L.str.4:                               # @.str.4
	.asciz	") -> "

.L.str.5:                               # @.str.5
	.asciz	" {\n"

.L.str.6:                               # @.str.6
	.asciz	"    let "

.L.str.7:                               # @.str.7
	.asciz	"mut "

.L.str.8:                               # @.str.8
	.asciz	" // "

.L.str.9:                               # @.str.9
	.asciz	";\n"

.L.str.10:                              # @.str.10
	.asciz	"    bb"

.L.str.11:                              # @.str.11
	.asciz	": {\n"

.L.str.12:                              # @.str.12
	.asciz	"        "

.L.str.13:                              # @.str.13
	.asciz	"    }\n"

.L.str.14:                              # @.str.14
	.asciz	"}\n"

.L.str.15:                              # @.str.15
	.asciz	"(*"

.L.str.16:                              # @.str.16
	.asciz	")"

.L.str.17:                              # @.str.17
	.asciz	"[_"

.L.str.18:                              # @.str.18
	.asciz	"[const "

.L.str.19:                              # @.str.19
	.asciz	".."

.L.str.20:                              # @.str.20
	.asciz	" as variant#"

.L.str.21:                              # @.str.21
	.asciz	"("

.L.str.22:                              # @.str.22
	.asciz	" as _)"

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
.L.str.23:                              # @.str.23
	.asciz	" = "

.L.str.24:                              # @.str.24
	.asciz	"StorageLive(_"

.L.str.25:                              # @.str.25
	.asciz	");"

.L.str.26:                              # @.str.26
	.asciz	"StorageDead(_"

.L.str.27:                              # @.str.27
	.asciz	"SetDiscriminant("

.L.str.28:                              # @.str.28
	.asciz	", variant#"

.L.str.29:                              # @.str.29
	.asciz	"Deinit("

.L.str.30:                              # @.str.30
	.asciz	"Retag("

.L.str.31:                              # @.str.31
	.asciz	"FakeRead("

.L.str.32:                              # @.str.32
	.asciz	"PlaceMention("

.L.str.33:                              # @.str.33
	.asciz	"nop;"

.L.str.34:                              # @.str.34
	.asciz	"; "

.L.str.35:                              # @.str.35
	.asciz	"&raw "

.L.str.36:                              # @.str.36
	.asciz	"const "

.L.str.37:                              # @.str.37
	.asciz	"Len("

.L.str.38:                              # @.str.38
	.asciz	" as "

.L.str.39:                              # @.str.39
	.asciz	"Not("

.L.str.40:                              # @.str.40
	.asciz	"Neg("

.L.str.41:                              # @.str.41
	.asciz	"discriminant("

.L.str.42:                              # @.str.42
	.asciz	"Aggregate("

.L.str.43:                              # @.str.43
	.asciz	"ShallowInitBox("

.L.str.44:                              # @.str.44
	.asciz	"CopyForDeref("

.L.str.45:                              # @.str.45
	.asciz	"copy "

.L.str.46:                              # @.str.46
	.asciz	"move "

.L.str.47:                              # @.str.47
	.asciz	"const true"

.L.str.48:                              # @.str.48
	.asciz	"const false"

.L.str.49:                              # @.str.49
	.asciz	"const '\\u{"

.L.str.50:                              # @.str.50
	.asciz	"}'"

.L.str.51:                              # @.str.51
	.asciz	"const ()"

.L.str.52:                              # @.str.52
	.asciz	"const \""

.L.str.53:                              # @.str.53
	.asciz	"\""

.L.str.54:                              # @.str.54
	.asciz	"Add"

.L.str.55:                              # @.str.55
	.asciz	"Sub"

.L.str.56:                              # @.str.56
	.asciz	"Mul"

.L.str.57:                              # @.str.57
	.asciz	"Div"

.L.str.58:                              # @.str.58
	.asciz	"Rem"

.L.str.59:                              # @.str.59
	.asciz	"BitXor"

.L.str.60:                              # @.str.60
	.asciz	"BitAnd"

.L.str.61:                              # @.str.61
	.asciz	"BitOr"

.L.str.62:                              # @.str.62
	.asciz	"Shl"

.L.str.63:                              # @.str.63
	.asciz	"Shr"

.L.str.64:                              # @.str.64
	.asciz	"Eq"

.L.str.65:                              # @.str.65
	.asciz	"Lt"

.L.str.66:                              # @.str.66
	.asciz	"Le"

.L.str.67:                              # @.str.67
	.asciz	"Ne"

.L.str.68:                              # @.str.68
	.asciz	"Ge"

.L.str.69:                              # @.str.69
	.asciz	"Gt"

.L.str.70:                              # @.str.70
	.asciz	"Offset"

.L.str.71:                              # @.str.71
	.asciz	"?"

.L.str.72:                              # @.str.72
	.asciz	"goto -> bb"

.L.str.73:                              # @.str.73
	.asciz	"return;"

.L.str.74:                              # @.str.74
	.asciz	"unreachable;"

.L.str.75:                              # @.str.75
	.asciz	"switchInt("

.L.str.76:                              # @.str.76
	.asciz	") -> ["

.L.str.77:                              # @.str.77
	.asciz	": bb"

.L.str.78:                              # @.str.78
	.asciz	", otherwise: bb"

.L.str.79:                              # @.str.79
	.asciz	"];"

.L.str.80:                              # @.str.80
	.asciz	"drop("

.L.str.81:                              # @.str.81
	.asciz	") -> bb"

.L.str.82:                              # @.str.82
	.asciz	"assert("

.L.str.83:                              # @.str.83
	.asciz	", \""

.L.str.84:                              # @.str.84
	.asciz	"\") -> bb"

.L.str.85:                              # @.str.85
	.asciz	"falseEdge -> [real: bb"

.L.str.86:                              # @.str.86
	.asciz	", imaginary: bb"

.L.str.87:                              # @.str.87
	.asciz	"falseUnwind -> bb"

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
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp273-.Ltmp272               # Subsection size
.Ltmp272:
	.short	.Ltmp275-.Ltmp274               # Record length
.Ltmp274:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp275:
	.short	.Ltmp277-.Ltmp276               # Record length
.Ltmp276:
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
.Ltmp277:
.Ltmp273:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_111renderPlaceERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_5PlaceE
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.addrsig_sym _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.addrsig_sym _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.addrsig_sym _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB9nqe220103Ev
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	.addrsig_sym _ZNK6apollo3mir6TyCtxt6renderEPKNS0_6TyDataE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9LocalDeclENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9StatementEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEEdeB9nqe220103Ev
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_115renderStatementERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_9StatementERKNS0_6TyCtxtE
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir9StatementEEppB9nqe220103Ev
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_116renderTerminatorERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_10TerminatorERKNS0_6TyCtxtE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_
	.addrsig_sym _ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
	.addrsig_sym _ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
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
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
	.addrsig_sym _ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
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
	.addrsig_sym __cxa_end_catch
	.addrsig_sym _ZNSt3__13maxB9nqe220103IPcEERKT_S4_S4_
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEyc
	.addrsig_sym _ZNSt3__13maxB9nqe220103IPcNS_6__lessIvvEEEERKT_S6_S6_T0_
	.addrsig_sym _ZNKSt3__16__lessIvvEclB9nqe220103IPcS3_EEbRKT_RKT0_
	.addrsig_sym _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE18__check_invariantsB9nqe220103Ev
	.addrsig_sym _ZNSt3__118__make_scope_guardB9nqe220103IZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_EENS_13__scope_guardIT_EES7_
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	.addrsig_sym _ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	.addrsig_sym _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.addrsig_sym _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.addrsig_sym strlen
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir9StatementENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9StatementEE4baseB9nqe220103Ev
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_112renderRvalueERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_6RvalueERKNS0_6TyCtxtE
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_113renderOperandERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_7OperandERKNS0_6TyCtxtE
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_110binOpTokenENS0_5BinOpE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir7OperandENS_9allocatorIS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZN6apollo3mir12_GLOBAL__N_114renderConstantERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS0_8ConstantERKNS0_6TyCtxtE
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe220103EPFRNS_8ios_baseES5_E
	.addrsig_sym _ZNSt3__13hexB9nqe220103ERNS_8ios_baseE
	.addrsig_sym _ZNSt3__13decB9nqe220103ERNS_8ios_baseE
	.addrsig_sym _ZNSt3__18ios_base4setfB9nqe220103Ejj
	.addrsig_sym _ZNSt3__18ios_base6unsetfB9nqe220103Ej
	.addrsig_sym _ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIyNS_9allocatorIyEEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE4backB9nqe220103Ev
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
	.addrsig_sym _ZNSt3__15ctypeIcE2idE
