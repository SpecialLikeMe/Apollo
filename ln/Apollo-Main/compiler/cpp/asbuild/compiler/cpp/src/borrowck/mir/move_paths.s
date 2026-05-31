	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"move_paths.cpp"
	.def	_ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE # -- Begin function _ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE
	.p2align	4
_ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE: # @_ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE
.seh_proc _ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	16(%rsp), %rax
	movl	(%rax), %eax
                                        # kill: def $rax killed $eax
	shlq	$56, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 7(%rsp)                    # 1-byte Spill
	subb	$1, %al
	je	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:
	movb	7(%rsp), %al                    # 1-byte Reload
	subb	$3, %al
	je	.LBB0_3
	jmp	.LBB0_7
.LBB0_7:
	movb	7(%rsp), %al                    # 1-byte Reload
	subb	$5, %al
	je	.LBB0_2
	jmp	.LBB0_4
.LBB0_1:
	movq	16(%rsp), %rax
	movl	4(%rax), %eax
                                        # kill: def $rax killed $eax
	movabsq	$72057594037927935, %rcx        # imm = 0xFFFFFFFFFFFFFF
	andq	%rcx, %rax
	orq	8(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.LBB0_5
.LBB0_2:
	movq	16(%rsp), %rax
	movl	60(%rax), %eax
                                        # kill: def $rax killed $eax
	movabsq	$72057594037927935, %rcx        # imm = 0xFFFFFFFFFFFFFF
	andq	%rcx, %rax
	orq	8(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.LBB0_5
.LBB0_3:
	movq	16(%rsp), %rcx
	movabsq	$72057594037927935, %rax        # imm = 0xFFFFFFFFFFFFFF
	andq	24(%rcx), %rax
	orq	8(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.LBB0_5
.LBB0_4:
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movabsq	$72057594037927935, %rcx        # imm = 0xFFFFFFFFFFFFFF
	andq	%rcx, %rax
	orq	8(%rsp), %rax
	movq	%rax, 8(%rsp)
.LBB0_5:
	movq	8(%rsp), %rax
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE # -- Begin function _ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE
	.p2align	4
_ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE: # @_ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE
.seh_proc _ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movl	%edx, 68(%rsp)
	movq	%r8, 56(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpl	$-1, 68(%rsp)
	jne	.LBB1_2
# %bb.1:
	movl	$-1, 84(%rsp)
	jmp	.LBB1_8
.LBB1_2:
	movq	56(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	movl	68(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	8(%rax), %eax
	movl	%eax, 44(%rsp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$-1, 44(%rsp)
	je	.LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	44(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movq	%rax, %rcx
	addq	$16, %rcx
	callq	_ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE
	cmpq	48(%rsp), %rax
	jne	.LBB1_6
# %bb.5:
	movl	44(%rsp), %eax
	movl	%eax, 84(%rsp)
	jmp	.LBB1_8
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	44(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	12(%rax), %eax
	movl	%eax, 44(%rsp)
	jmp	.LBB1_3
.LBB1_7:
	movl	$-1, 84(%rsp)
.LBB1_8:
	movl	84(%rsp), %eax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	imulq	$104, (%rsp), %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE # -- Begin function _ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE
	.p2align	4
_ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE: # @_ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE
.Lfunc_begin0:
.seh_proc _ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$536, %rsp                      # imm = 0x218
	.seh_stackalloc 536
	.seh_endprologue
	movq	%rcx, 528(%rsp)
	movl	%edx, 524(%rsp)
	movq	%r8, 512(%rsp)
	movq	528(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 508(%rsp)
	movl	$0, 400(%rsp)
	movl	$0, 404(%rsp)
	movl	$0, 408(%rsp)
	movl	$0, 412(%rsp)
	movb	$0, 416(%rsp)
	movl	$0, 420(%rsp)
	movq	$0, 424(%rsp)
	movl	$0, 432(%rsp)
	movq	$0, 440(%rsp)
	movq	$0, 448(%rsp)
	movq	$0, 456(%rsp)
	movq	$0, 464(%rsp)
	movb	$0, 472(%rsp)
	movl	$0, 476(%rsp)
	leaq	480(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movl	524(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 400(%rsp)
	movl	524(%rsp), %eax
	movl	%eax, 404(%rsp)
	movl	$-1, 408(%rsp)
	movl	524(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	8(%rax), %eax
	movl	%eax, 412(%rsp)
	movq	512(%rsp), %rax
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 464(%rsp)
	movups	%xmm2, 448(%rsp)
	movups	%xmm1, 432(%rsp)
	movups	%xmm0, 416(%rsp)
.Ltmp0:                                 # EH_LABEL
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB3_1
.LBB3_1:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movl	524(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movq	%rax, %rdx
	addq	$80, %rdx
.Ltmp3:                                 # EH_LABEL
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp4:                                 # EH_LABEL
	jmp	.LBB3_2
.LBB3_2:
	movq	512(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	subq	$5, %rax
	ja	.LBB3_17
# %bb.24:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI3_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB3_3:
.Ltmp2:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 128(%rsp)
	movl	%eax, 124(%rsp)
	jmp	.LBB3_22
.LBB3_4:
.Ltmp27:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 128(%rsp)
	movl	%eax, 124(%rsp)
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB3_22
.LBB3_5:
.Ltmp17:                                # EH_LABEL
	leaq	.L.str(%rip), %rdx
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp18:                                # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	512(%rsp), %rax
	movl	4(%rax), %edx
.Ltmp19:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp20:                                # EH_LABEL
	jmp	.LBB3_7
.LBB3_7:
	jmp	.LBB3_19
.LBB3_8:
.Ltmp13:                                # EH_LABEL
	leaq	.L.str.1(%rip), %rdx
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp14:                                # EH_LABEL
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	512(%rsp), %rax
	movl	60(%rax), %edx
.Ltmp15:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp16:                                # EH_LABEL
	jmp	.LBB3_10
.LBB3_10:
	jmp	.LBB3_19
.LBB3_11:
.Ltmp7:                                 # EH_LABEL
	leaq	.L.str.2(%rip), %rdx
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp8:                                 # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB3_12
.LBB3_12:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	512(%rsp), %rax
	movq	24(%rax), %rdx
.Ltmp9:                                 # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
.Ltmp10:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB3_13
.LBB3_13:
.Ltmp11:                                # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.3(%rip), %rdx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp12:                                # EH_LABEL
	jmp	.LBB3_14
.LBB3_14:
	jmp	.LBB3_19
.LBB3_15:
.Ltmp5:                                 # EH_LABEL
	leaq	.L.str.4(%rip), %rdx
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp6:                                 # EH_LABEL
	jmp	.LBB3_16
.LBB3_16:
	jmp	.LBB3_19
.LBB3_17:
.Ltmp21:                                # EH_LABEL
	leaq	.L.str.5(%rip), %rdx
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp22:                                # EH_LABEL
	jmp	.LBB3_18
.LBB3_18:
	jmp	.LBB3_19
.LBB3_19:
.Ltmp23:                                # EH_LABEL
	leaq	96(%rsp), %rcx
	leaq	136(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp24:                                # EH_LABEL
	jmp	.LBB3_20
.LBB3_20:
	leaq	480(%rsp), %rcx
	leaq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
.Ltmp25:                                # EH_LABEL
	leaq	400(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_
.Ltmp26:                                # EH_LABEL
	jmp	.LBB3_21
.LBB3_21:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movl	508(%rsp), %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movl	524(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 8(%rax)
	movl	508(%rsp), %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	136(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	400(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck8MovePathD2Ev
	movl	36(%rsp), %eax                  # 4-byte Reload
	.seh_startepilogue
	addq	$536, %rsp                      # imm = 0x218
	.seh_endepilogue
	retq
.LBB3_22:
	leaq	400(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck8MovePathD2Ev
# %bb.23:
	movq	128(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI3_0:
	.long	.LBB3_15-.LJTI3_0
	.long	.LBB3_5-.LJTI3_0
	.long	.LBB3_17-.LJTI3_0
	.long	.LBB3_11-.LJTI3_0
	.long	.LBB3_17-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp26            #   Call between .Ltmp26 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$104, %ecx
	cqto
	idivq	%rcx
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
.Lfunc_begin1:
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
.Ltmp28:                                # EH_LABEL
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp29:                                # EH_LABEL
	jmp	.LBB5_1
.LBB5_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB5_2:
.Ltmp30:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	imulq	$104, (%rsp), %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
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
.Lfunc_begin2:
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
.Ltmp31:                                # EH_LABEL
	leaq	_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+8(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe220103EPNS_15basic_streambufIcS2_EE
.Ltmp32:                                # EH_LABEL
	jmp	.LBB7_1
.LBB7_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24(%rip), %rax
	movq	%rax, (%rcx)
	leaq	_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64(%rip), %rax
	movq	%rax, 112(%rcx)
	addq	$8, %rcx
.Ltmp34:                                # EH_LABEL
	movl	$16, %edx
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
.Ltmp35:                                # EH_LABEL
	jmp	.LBB7_2
.LBB7_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB7_3:
.Ltmp33:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB7_5
.LBB7_4:
.Ltmp36:                                # EH_LABEL
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
.LBB7_5:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$112, %rcx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
# %bb.6:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin2          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev,"xr",discard,_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
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
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_
	nop
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
	.def	_ZN6apollo3mir8borrowck8MovePathD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir8borrowck8MovePathD2Ev,"xr",discard,_ZN6apollo3mir8borrowck8MovePathD2Ev
	.globl	_ZN6apollo3mir8borrowck8MovePathD2Ev # -- Begin function _ZN6apollo3mir8borrowck8MovePathD2Ev
	.p2align	4
_ZN6apollo3mir8borrowck8MovePathD2Ev:   # @_ZN6apollo3mir8borrowck8MovePathD2Ev
.seh_proc _ZN6apollo3mir8borrowck8MovePathD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$80, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck13MovePathTable8forLocalEj;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck13MovePathTable8forLocalEj # -- Begin function _ZN6apollo3mir8borrowck13MovePathTable8forLocalEj
	.p2align	4
_ZN6apollo3mir8borrowck13MovePathTable8forLocalEj: # @_ZN6apollo3mir8borrowck13MovePathTable8forLocalEj
.Lfunc_begin3:
.seh_proc _ZN6apollo3mir8borrowck13MovePathTable8forLocalEj
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$504, %rsp                      # imm = 0x1F8
	.seh_stackalloc 504
	.seh_endprologue
	movq	%rcx, 488(%rsp)
	movl	%edx, 484(%rsp)
	movq	488(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	addq	$24, %rcx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movl	484(%rsp), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	ja	.LBB15_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	movl	484(%rsp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
.LBB15_2:
	movl	$0, 480(%rsp)
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	480(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB15_9
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	480(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	cmpl	$-1, 4(%rax)
	jne	.LBB15_7
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	480(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	(%rax), %eax
	cmpl	484(%rsp), %eax
	jne	.LBB15_7
# %bb.6:
	movl	480(%rsp), %eax
	movl	%eax, 500(%rsp)
	jmp	.LBB15_18
.LBB15_7:                               #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_8
.LBB15_8:                               #   in Loop: Header=BB15_3 Depth=1
	movl	480(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 480(%rsp)
	jmp	.LBB15_3
.LBB15_9:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 476(%rsp)
	movl	$0, 368(%rsp)
	movl	$0, 372(%rsp)
	movl	$0, 376(%rsp)
	movl	$0, 380(%rsp)
	movb	$0, 384(%rsp)
	movl	$0, 388(%rsp)
	movq	$0, 392(%rsp)
	movl	$0, 400(%rsp)
	movq	$0, 408(%rsp)
	movq	$0, 416(%rsp)
	movq	$0, 424(%rsp)
	movq	$0, 432(%rsp)
	movb	$0, 440(%rsp)
	movl	$0, 444(%rsp)
	leaq	448(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	movl	484(%rsp), %eax
	movl	%eax, 368(%rsp)
	movl	$-1, 372(%rsp)
	movl	$-1, 376(%rsp)
	movl	$-1, 380(%rsp)
.Ltmp37:                                # EH_LABEL
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103Ev
.Ltmp38:                                # EH_LABEL
	jmp	.LBB15_10
.LBB15_10:
.Ltmp40:                                # EH_LABEL
	leaq	.L.str.6(%rip), %rdx
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp41:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB15_11
.LBB15_11:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	484(%rsp), %edx
.Ltmp42:                                # EH_LABEL
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
.Ltmp43:                                # EH_LABEL
	jmp	.LBB15_12
.LBB15_12:
.Ltmp44:                                # EH_LABEL
	leaq	64(%rsp), %rcx
	leaq	104(%rsp), %rdx
	callq	_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
.Ltmp45:                                # EH_LABEL
	jmp	.LBB15_13
.LBB15_13:
	leaq	448(%rsp), %rcx
	leaq	64(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
.Ltmp46:                                # EH_LABEL
	leaq	368(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_
.Ltmp47:                                # EH_LABEL
	jmp	.LBB15_14
.LBB15_14:
	movl	476(%rsp), %eax
	movl	%eax, 500(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	368(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck8MovePathD2Ev
	jmp	.LBB15_18
.LBB15_15:
.Ltmp39:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 96(%rsp)
	movl	%eax, 92(%rsp)
	jmp	.LBB15_17
.LBB15_16:
.Ltmp48:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 96(%rsp)
	movl	%eax, 92(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
.LBB15_17:
	leaq	368(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck8MovePathD2Ev
	jmp	.LBB15_19
.LBB15_18:
	movl	500(%rsp), %eax
	.seh_startepilogue
	addq	$504, %rsp                      # imm = 0x1F8
	.seh_endepilogue
	retq
.LBB15_19:
	movq	96(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table15:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp37-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin3          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp40                #   Call between .Ltmp40 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin3          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp47            #   Call between .Ltmp47 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$24, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
.Lfunc_begin4:
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 128(%rsp)
	movq	%rdx, 120(%rsp)
	movq	128(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jae	.LBB17_8
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	ja	.LBB17_3
# %bb.2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	subq	112(%rsp), %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	jmp	.LBB17_7
.LBB17_3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey
	movq	56(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %rdx
	movq	112(%rsp), %r8
	addq	$16, %r9
	leaq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	movq	112(%rsp), %rax
	subq	%rax, %rdx
.Ltmp49:                                # EH_LABEL
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
.Ltmp50:                                # EH_LABEL
	jmp	.LBB17_4
.LBB17_4:
.Ltmp51:                                # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leaq	80(%rsp), %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
.Ltmp52:                                # EH_LABEL
	jmp	.LBB17_5
.LBB17_5:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB17_7
.LBB17_6:
.Ltmp53:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB17_12
.LBB17_7:
	jmp	.LBB17_11
.LBB17_8:
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jbe	.LBB17_10
# %bb.9:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	imulq	$24, 120(%rsp), %rax
	addq	%rax, %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_
.LBB17_10:
	jmp	.LBB17_11
.LBB17_11:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB17_12:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end4:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table17:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp49-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp49                #   Call between .Ltmp49 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin4          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp52            #   Call between .Ltmp52 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck13MovePathTable11getOrCreateERKNS0_5PlaceE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck13MovePathTable11getOrCreateERKNS0_5PlaceE # -- Begin function _ZN6apollo3mir8borrowck13MovePathTable11getOrCreateERKNS0_5PlaceE
	.p2align	4
_ZN6apollo3mir8borrowck13MovePathTable11getOrCreateERKNS0_5PlaceE: # @_ZN6apollo3mir8borrowck13MovePathTable11getOrCreateERKNS0_5PlaceE
.seh_proc _ZN6apollo3mir8borrowck13MovePathTable11getOrCreateERKNS0_5PlaceE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 104(%rsp)
	movq	%rdx, 96(%rsp)
	movq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movl	(%rax), %edx
	callq	_ZN6apollo3mir8borrowck13MovePathTable8forLocalEj
	movl	%eax, 92(%rsp)
	movq	96(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 64(%rsp)
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	leaq	72(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB18_2
	jmp	.LBB18_10
.LBB18_2:                               #   in Loop: Header=BB18_1 Depth=1
	leaq	72(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	cmpb	$2, (%rax)
	je	.LBB18_5
# %bb.3:                                #   in Loop: Header=BB18_1 Depth=1
	movq	56(%rsp), %rax
	cmpb	$4, (%rax)
	je	.LBB18_5
# %bb.4:                                #   in Loop: Header=BB18_1 Depth=1
	movq	56(%rsp), %rax
	cmpb	$0, (%rax)
	jne	.LBB18_6
.LBB18_5:
	movl	92(%rsp), %eax
	movl	%eax, 116(%rsp)
	jmp	.LBB18_11
.LBB18_6:                               #   in Loop: Header=BB18_1 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	92(%rsp), %edx
	movq	56(%rsp), %r8
	callq	_ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE
	movl	%eax, 52(%rsp)
	cmpl	$-1, 52(%rsp)
	jne	.LBB18_8
# %bb.7:                                #   in Loop: Header=BB18_1 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	92(%rsp), %edx
	movq	56(%rsp), %r8
	callq	_ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE
	movl	%eax, 52(%rsp)
.LBB18_8:                               #   in Loop: Header=BB18_1 Depth=1
	movl	52(%rsp), %eax
	movl	%eax, 92(%rsp)
# %bb.9:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	jmp	.LBB18_1
.LBB18_10:
	movl	92(%rsp), %eax
	movl	%eax, 116(%rsp)
.LBB18_11:
	movl	116(%rsp), %eax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
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
	.def	_ZNK6apollo3mir8borrowck13MovePathTable4findERKNS0_5PlaceE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir8borrowck13MovePathTable4findERKNS0_5PlaceE # -- Begin function _ZNK6apollo3mir8borrowck13MovePathTable4findERKNS0_5PlaceE
	.p2align	4
_ZNK6apollo3mir8borrowck13MovePathTable4findERKNS0_5PlaceE: # @_ZNK6apollo3mir8borrowck13MovePathTable4findERKNS0_5PlaceE
.seh_proc _ZNK6apollo3mir8borrowck13MovePathTable4findERKNS0_5PlaceE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 104(%rsp)
	movq	%rdx, 96(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$-1, 92(%rsp)
	movl	$0, 88(%rsp)
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	88(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB24_7
# %bb.2:                                #   in Loop: Header=BB24_1 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	88(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	cmpl	$-1, 4(%rax)
	jne	.LBB24_5
# %bb.3:                                #   in Loop: Header=BB24_1 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	88(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	(%rax), %eax
	movq	96(%rsp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB24_5
# %bb.4:
	movl	88(%rsp), %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB24_7
.LBB24_5:                               #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_6
.LBB24_6:                               #   in Loop: Header=BB24_1 Depth=1
	movl	88(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 88(%rsp)
	jmp	.LBB24_1
.LBB24_7:
	cmpl	$-1, 92(%rsp)
	jne	.LBB24_9
# %bb.8:
	movl	92(%rsp), %eax
	movl	%eax, 116(%rsp)
	jmp	.LBB24_20
.LBB24_9:
	movq	96(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	movq	%rax, 64(%rsp)
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	leaq	72(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB24_11
	jmp	.LBB24_19
.LBB24_11:                              #   in Loop: Header=BB24_10 Depth=1
	leaq	72(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	cmpb	$2, (%rax)
	je	.LBB24_14
# %bb.12:                               #   in Loop: Header=BB24_10 Depth=1
	movq	56(%rsp), %rax
	cmpb	$4, (%rax)
	je	.LBB24_14
# %bb.13:                               #   in Loop: Header=BB24_10 Depth=1
	movq	56(%rsp), %rax
	cmpb	$0, (%rax)
	jne	.LBB24_15
.LBB24_14:
	movl	92(%rsp), %eax
	movl	%eax, 116(%rsp)
	jmp	.LBB24_20
.LBB24_15:                              #   in Loop: Header=BB24_10 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	92(%rsp), %edx
	movq	56(%rsp), %r8
	callq	_ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE
	movl	%eax, 52(%rsp)
	cmpl	$-1, 52(%rsp)
	jne	.LBB24_17
# %bb.16:
	movl	$-1, 116(%rsp)
	jmp	.LBB24_20
.LBB24_17:                              #   in Loop: Header=BB24_10 Depth=1
	movl	52(%rsp), %eax
	movl	%eax, 92(%rsp)
# %bb.18:                               #   in Loop: Header=BB24_10 Depth=1
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	jmp	.LBB24_10
.LBB24_19:
	movl	92(%rsp), %eax
	movl	%eax, 116(%rsp)
.LBB24_20:
	movl	116(%rsp), %eax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo3mir8borrowck13MovePathTable8overlapsEjj;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZNK6apollo3mir8borrowck13MovePathTable8overlapsEjj # -- Begin function _ZNK6apollo3mir8borrowck13MovePathTable8overlapsEjj
	.p2align	4
_ZNK6apollo3mir8borrowck13MovePathTable8overlapsEjj: # @_ZNK6apollo3mir8borrowck13MovePathTable8overlapsEjj
.seh_proc _ZNK6apollo3mir8borrowck13MovePathTable8overlapsEjj
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movl	%edx, 52(%rsp)
	movl	%r8d, 48(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpl	$-1, 52(%rsp)
	je	.LBB25_2
# %bb.1:
	cmpl	$-1, 48(%rsp)
	jne	.LBB25_3
.LBB25_2:
	movb	$0, 71(%rsp)
	jmp	.LBB25_18
.LBB25_3:
	movl	52(%rsp), %eax
	cmpl	48(%rsp), %eax
	jne	.LBB25_5
# %bb.4:
	movb	$1, 71(%rsp)
	jmp	.LBB25_18
.LBB25_5:
	movl	48(%rsp), %eax
	movl	%eax, 44(%rsp)
.LBB25_6:                               # =>This Inner Loop Header: Depth=1
	cmpl	$-1, 44(%rsp)
	je	.LBB25_11
# %bb.7:                                #   in Loop: Header=BB25_6 Depth=1
	movl	44(%rsp), %eax
	cmpl	52(%rsp), %eax
	jne	.LBB25_9
# %bb.8:
	movb	$1, 71(%rsp)
	jmp	.LBB25_18
.LBB25_9:                               #   in Loop: Header=BB25_6 Depth=1
	jmp	.LBB25_10
.LBB25_10:                              #   in Loop: Header=BB25_6 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	44(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	4(%rax), %eax
	movl	%eax, 44(%rsp)
	jmp	.LBB25_6
.LBB25_11:
	movl	52(%rsp), %eax
	movl	%eax, 40(%rsp)
.LBB25_12:                              # =>This Inner Loop Header: Depth=1
	cmpl	$-1, 40(%rsp)
	je	.LBB25_17
# %bb.13:                               #   in Loop: Header=BB25_12 Depth=1
	movl	40(%rsp), %eax
	cmpl	48(%rsp), %eax
	jne	.LBB25_15
# %bb.14:
	movb	$1, 71(%rsp)
	jmp	.LBB25_18
.LBB25_15:                              #   in Loop: Header=BB25_12 Depth=1
	jmp	.LBB25_16
.LBB25_16:                              #   in Loop: Header=BB25_12 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	40(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movl	4(%rax), %eax
	movl	%eax, 40(%rsp)
	jmp	.LBB25_12
.LBB25_17:
	movb	$0, 71(%rsp)
.LBB25_18:
	movb	71(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo3mir8borrowck13MovePathTable9debugNameEj;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZNK6apollo3mir8borrowck13MovePathTable9debugNameEj # -- Begin function _ZNK6apollo3mir8borrowck13MovePathTable9debugNameEj
	.p2align	4
_ZNK6apollo3mir8borrowck13MovePathTable9debugNameEj: # @_ZNK6apollo3mir8borrowck13MovePathTable9debugNameEj
.seh_proc _ZNK6apollo3mir8borrowck13MovePathTable9debugNameEj
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	%r8d, 68(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpl	$-1, 68(%rsp)
	jne	.LBB26_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	.L.str.7(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc
	jmp	.LBB26_3
.LBB26_2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	68(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	addq	$80, %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
.LBB26_3:
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
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
.Lfunc_begin5:
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
.Ltmp54:                                # EH_LABEL
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp55:                                # EH_LABEL
	jmp	.LBB30_1
.LBB30_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB30_2:
.Ltmp56:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table30:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp54-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin5          #     jumps to .Ltmp56
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
	jne	.LBB33_1
	jmp	.LBB33_2
.LBB33_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB33_3
.LBB33_2:
	movl	$23, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB33_3
.LBB33_3:
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
	jne	.LBB35_1
	jmp	.LBB35_2
.LBB35_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB35_3
.LBB35_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB35_3:
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
	jne	.LBB41_1
	jmp	.LBB41_4
.LBB41_1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
.Ltmp57:                                # EH_LABEL
	leaq	88(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp58:                                # EH_LABEL
	jmp	.LBB41_2
.LBB41_2:
.Ltmp59:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	88(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
.Ltmp60:                                # EH_LABEL
	jmp	.LBB41_3
.LBB41_3:
	jmp	.LBB41_4
.LBB41_4:
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
	je	.LBB41_7
# %bb.5:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB41_7
# %bb.6:
	movq	112(%rsp), %rcx
	movq	56(%rsp), %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	jmp	.LBB41_8
.LBB41_7:
	movq	112(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
.LBB41_8:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB41_11
# %bb.9:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 112(%rsp)
	je	.LBB41_11
# %bb.10:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB41_11:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB41_12:
.Ltmp61:                                # EH_LABEL
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
GCC_except_table41:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp57-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Ltmp57                #   Call between .Ltmp57 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin6          #     jumps to .Ltmp61
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
	jne	.LBB43_1
	jmp	.LBB43_2
.LBB43_1:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
.LBB43_2:
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
	jne	.LBB44_1
	jmp	.LBB44_2
.LBB44_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB44_3
.LBB44_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB44_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
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
	jne	.LBB54_1
	jmp	.LBB54_2
.LBB54_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB54_3
.LBB54_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB54_3:
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
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	96(%rsp), %rax
	addq	$-104, %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_
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
	je	.LBB60_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv
	jmp	.LBB60_4
.LBB60_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv
.LBB60_4:
	jmp	.LBB60_5
.LBB60_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	addq	$104, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
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
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
.Lfunc_begin7:
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
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
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp62:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
.Ltmp63:                                # EH_LABEL
	jmp	.LBB63_1
.LBB63_1:
	movq	72(%rsp), %rax
	addq	$104, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB63_2:
.Ltmp64:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table63:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp62-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin7          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp63            #   Call between .Ltmp63 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionC2B9nqe220103ERS7_y
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
	imulq	$104, 32(%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	.globl	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_: # @_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
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
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB67_2
# %bb.1:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %rcx
	movq	16(%rdx), %rax
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rax
	movl	$104, %r8d
	cqto
	idivq	%r8
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB67_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin8:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	imulq	$104, %rax, %rax
	addq	%rax, %r8
	movq	72(%rsp), %rax
	imulq	$104, %rax, %rax
	addq	%rax, %r8
.Ltmp65:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp66:                                # EH_LABEL
	jmp	.LBB68_1
.LBB68_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB68_2:
.Ltmp67:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table68:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp65-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin8          #     jumps to .Ltmp67
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
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	imulq	$104, %rax, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_
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
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$104, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZN6apollo3mir8borrowck8MovePathC2EOS2_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck8MovePathC2EOS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir8borrowck8MovePathC2EOS2_,"xr",discard,_ZN6apollo3mir8borrowck8MovePathC2EOS2_
	.globl	_ZN6apollo3mir8borrowck8MovePathC2EOS2_ # -- Begin function _ZN6apollo3mir8borrowck8MovePathC2EOS2_
	.p2align	4
_ZN6apollo3mir8borrowck8MovePathC2EOS2_: # @_ZN6apollo3mir8borrowck8MovePathC2EOS2_
.seh_proc _ZN6apollo3mir8borrowck8MovePathC2EOS2_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	movl	$80, %r8d
	callq	memcpy
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$80, %rcx
	movq	40(%rsp), %rdx
	addq	$80, %rdx
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
.Lfunc_begin9:
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
.Ltmp68:                                # EH_LABEL
	leaq	87(%rsp), %rcx
	callq	_ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
.Ltmp69:                                # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB76_1
.LBB76_1:
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
	jne	.LBB76_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB76_3:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB76_4:
.Ltmp70:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table76:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp68-.Lfunc_begin9          # >> Call Site 1 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin9          #     jumps to .Ltmp70
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp69-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Lfunc_end9-.Ltmp69            #   Call between .Ltmp69 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
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
	jne	.LBB77_2
# %bb.1:
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
.LBB77_2:
	movq	40(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin10:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	imulq	$104, %rax, %rax
	addq	%rax, %r8
.Ltmp71:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp72:                                # EH_LABEL
	jmp	.LBB78_1
.LBB78_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB78_2:
.Ltmp73:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table78:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
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
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
.Lfunc_begin11:
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp74:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
.Ltmp75:                                # EH_LABEL
	jmp	.LBB79_1
.LBB79_1:
	movq	96(%rsp), %rdx
	addq	$104, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp76:                                # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.Ltmp77:                                # EH_LABEL
	jmp	.LBB79_2
.LBB79_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB79_3:
.Ltmp78:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table79:
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
	.uleb128 .Ltmp77-.Ltmp74                #   Call between .Ltmp74 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin11         #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin11         # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp77           #   Call between .Ltmp77 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB80_2
# %bb.1:
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.LBB80_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB80_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB80_5
.LBB80_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB80_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_: # @_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS6_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	cmpq	$0, 88(%rsp)
	jbe	.LBB81_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB81_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	imulq	$104, 80(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
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
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB85_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y
	nop
.LBB85_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin12:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp79:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp80:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB86_1
.LBB86_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB86_2:
.Ltmp81:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table86:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp79-.Lfunc_begin12         # >> Call Site 1 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin12         #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.8(%rip), %rcx
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	movl	$104, %ecx
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
	jne	.LBB92_1
	jmp	.LBB92_2
.LBB92_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB92_3
.LBB92_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB92_3:
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
.Ltmp82:                                # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp83:                                # EH_LABEL
	jmp	.LBB97_1
.LBB97_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB97_2:
.Ltmp84:                                # EH_LABEL
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
GCC_except_table97:
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
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin13         #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin13         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp83           #   Call between .Ltmp83 and .Lfunc_end13
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
	jne	.LBB99_1
	jmp	.LBB99_2
.LBB99_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB99_3
.LBB99_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB99_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_EC2B9nqe220103ERKS7_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	imulq	$104, (%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB107_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB107_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y,"xr",discard,_ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y
	.globl	_ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y # -- Begin function _ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y
	.p2align	4
_ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y: # @_ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y
.seh_proc _ZNSt3__119__allocation_resultIPN6apollo3mir8borrowck8MovePathEyEC2B9nqe220103ES5_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	imulq	$104, 56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB110_1
	jmp	.LBB110_2
.LBB110_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB110_3
.LBB110_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB110_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin14:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	imulq	$104, %rax, %rax
	addq	%rax, %r8
.Ltmp85:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp86:                                # EH_LABEL
	jmp	.LBB111_1
.LBB111_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB111_2:
.Ltmp87:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table111:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
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
.Lttbase7:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
.Lfunc_begin15:
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
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
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
	movq	152(%rsp), %rax
	movq	%rax, 64(%rsp)
.LBB113_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB113_5
# %bb.2:                                #   in Loop: Header=BB113_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %r8
.Ltmp90:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
.Ltmp91:                                # EH_LABEL
	jmp	.LBB113_3
.LBB113_3:                              #   in Loop: Header=BB113_1 Depth=1
	movq	64(%rsp), %rax
	addq	$104, %rax
	movq	%rax, 64(%rsp)
	movq	136(%rsp), %rax
	addq	$104, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB113_1
.LBB113_4:
.Ltmp92:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
	jmp	.LBB113_7
.LBB113_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev
	movq	160(%rsp), %rcx
	movq	152(%rsp), %rdx
	movq	144(%rsp), %r8
.Ltmp88:                                # EH_LABEL
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_
.Ltmp89:                                # EH_LABEL
	jmp	.LBB113_6
.LBB113_6:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB113_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
	.seh_endproc
	.section	.xdata$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table113:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp90-.Lfunc_begin15         #   Call between .Lfunc_begin15 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin15         # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp90                #   Call between .Ltmp90 and .Ltmp89
	.uleb128 .Ltmp92-.Lfunc_begin15         #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin15         # >> Call Site 3 <<
	.uleb128 .Lfunc_end15-.Ltmp89           #   Call between .Ltmp89 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin16:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax
	imulq	$104, %rax, %rax
	addq	%rax, %r8
.Ltmp93:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
.Ltmp94:                                # EH_LABEL
	jmp	.LBB115_1
.LBB115_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB115_2:
.Ltmp95:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table115:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp93-.Lfunc_begin16         # >> Call Site 1 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin16         #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
	.p2align	4
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EC2B9nqe220103ERS6_RS7_SA_
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	je	.LBB119_4
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
	movq	40(%rsp), %rax
	addq	$104, %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB119_1
.LBB119_4:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
.Lfunc_begin17:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB120_3
# %bb.1:
.Ltmp96:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev
.Ltmp97:                                # EH_LABEL
	jmp	.LBB120_2
.LBB120_2:
	jmp	.LBB120_3
.LBB120_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB120_4:
.Ltmp98:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table120:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp96-.Lfunc_begin17         # >> Call Site 1 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin17         #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEC2B9nqe220103ES9_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck8MovePathD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev
	.p2align	4
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev
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
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB125_1:                              # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	testb	$1, %al
	jne	.LBB125_2
	jmp	.LBB125_4
.LBB125_2:                              #   in Loop: Header=BB125_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
# %bb.3:                                #   in Loop: Header=BB125_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev
	jmp	.LBB125_1
.LBB125_4:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_ # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_: # @_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEC2B9nqe220103ES5_
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
	.def	_ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE,"xr",discard,_ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.globl	_ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE # -- Begin function _ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.p2align	4
_ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE: # @_ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
.seh_proc _ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$-104, %rax
	movq	%rax, (%rsp)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev: # @_ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	addq	$-104, %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
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
	.def	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y
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
	callq	_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$104, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_: # @_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
.Lfunc_begin18:
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB138_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB138_4
# %bb.2:                                #   in Loop: Header=BB138_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-104, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp99:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
.Ltmp100:                               # EH_LABEL
	jmp	.LBB138_3
.LBB138_3:                              #   in Loop: Header=BB138_1 Depth=1
	jmp	.LBB138_1
.LBB138_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB138_5:
.Ltmp101:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table138:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp99-.Lfunc_begin18         # >> Call Site 1 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin18        #     jumps to .Ltmp101
	.byte	1                               #   On action: 1
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y,"xr",discard,_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y
	.globl	_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y # -- Begin function _ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y
	.p2align	4
_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y: # @_ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y
.seh_proc _ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	imulq	$104, 56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB140_1
	jmp	.LBB140_2
.LBB140_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB140_3
.LBB140_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB140_3:
	.seh_startepilogue
	addq	$72, %rsp
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
	jae	.LBB147_2
# %bb.1:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB147_2:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$0, %eax
	jne	.LBB147_4
# %bb.3:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB147_34
.LBB147_4:
	movl	208(%rsp), %eax
	andl	$24, %eax
	cmpl	$24, %eax
	jne	.LBB147_7
# %bb.5:
	cmpl	$1, 140(%rsp)
	jne	.LBB147_7
# %bb.6:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB147_34
.LBB147_7:
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, 88(%rax)
	jne	.LBB147_9
# %bb.8:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB147_10
.LBB147_9:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	addq	$64, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB147_10:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	movl	140(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	je	.LBB147_11
	jmp	.LBB147_35
.LBB147_35:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$1, %eax
	je	.LBB147_12
	jmp	.LBB147_36
.LBB147_36:
	movl	68(%rsp), %eax                  # 4-byte Reload
	subl	$2, %eax
	je	.LBB147_16
	jmp	.LBB147_17
.LBB147_11:
	movq	$0, 120(%rsp)
	jmp	.LBB147_18
.LBB147_12:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB147_14
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
	jmp	.LBB147_15
.LBB147_14:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
.LBB147_15:
	jmp	.LBB147_18
.LBB147_16:
	movq	128(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB147_18
.LBB147_17:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB147_34
.LBB147_18:
	movq	144(%rsp), %rax
	addq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	cmpq	$0, 120(%rsp)
	jl	.LBB147_20
# %bb.19:
	movq	128(%rsp), %rax
	cmpq	120(%rsp), %rax
	jge	.LBB147_21
.LBB147_20:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB147_34
.LBB147_21:
	cmpq	$0, 120(%rsp)
	je	.LBB147_29
# %bb.22:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB147_25
# %bb.23:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB147_25
# %bb.24:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB147_34
.LBB147_25:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB147_28
# %bb.26:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	cmpq	$0, %rax
	jne	.LBB147_28
# %bb.27:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	$-1, %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
	jmp	.LBB147_34
.LBB147_28:
	jmp	.LBB147_29
.LBB147_29:
	movl	208(%rsp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB147_31
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
.LBB147_31:
	movl	208(%rsp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB147_33
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
.LBB147_33:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	callq	_ZNSt3__14fposI9_MbstatetEC2B9nqe220103Ex
.LBB147_34:
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
	jae	.LBB149_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB149_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB149_8
# %bb.3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	cmpq	88(%rcx), %rax
	jae	.LBB149_5
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
.LBB149_5:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB149_7
# %bb.6:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movb	(%rax), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 84(%rsp)
	jmp	.LBB149_9
.LBB149_7:
	jmp	.LBB149_8
.LBB149_8:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 84(%rsp)
.LBB149_9:
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
	jae	.LBB150_2
# %bb.1:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB150_2:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB150_9
# %bb.3:
	movl	100(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%eax, %edx
	callq	_ZNSt3__111char_traitsIcE11eq_int_typeB9nqe220103Eii
	testb	$1, %al
	jne	.LBB150_4
	jmp	.LBB150_5
.LBB150_4:
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
	jmp	.LBB150_10
.LBB150_5:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB150_7
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
	jne	.LBB150_7
	jmp	.LBB150_8
.LBB150_7:
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
	jmp	.LBB150_10
.LBB150_8:
	jmp	.LBB150_9
.LBB150_9:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 116(%rsp)
.LBB150_10:
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
	jne	.LBB151_13
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
	jne	.LBB151_10
# %bb.2:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB151_4
# %bb.3:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	movl	%eax, 196(%rsp)
	jmp	.LBB151_14
.LBB151_4:
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
.Ltmp102:                               # EH_LABEL
	xorl	%eax, %eax
	movb	%al, %dl
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
.Ltmp103:                               # EH_LABEL
	jmp	.LBB151_5
.LBB151_5:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp104:                               # EH_LABEL
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe220103Ey
.Ltmp105:                               # EH_LABEL
	jmp	.LBB151_6
.LBB151_6:
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
	jmp	.LBB151_9
.LBB151_7:
.Ltmp106:                               # EH_LABEL
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
	jmp	.LBB151_14
.LBB151_9:
	jmp	.LBB151_10
.LBB151_10:
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
	je	.LBB151_12
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
.LBB151_12:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE12to_char_typeB9nqe220103Ei
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103Ec
	movl	%eax, 196(%rsp)
	jmp	.LBB151_14
.LBB151_13:
	movl	180(%rsp), %ecx
	callq	_ZNSt3__111char_traitsIcE7not_eofB9nqe220103Ei
	movl	%eax, 196(%rsp)
.LBB151_14:
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
GCC_except_table151:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp102-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp105-.Ltmp102              #   Call between .Ltmp102 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin19        #     jumps to .Ltmp106
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp105-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end19-.Ltmp105          #   Call between .Ltmp105 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase11:
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
	jne	.LBB163_1
	jmp	.LBB163_2
.LBB163_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB163_3
.LBB163_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB163_3:
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
	jne	.LBB169_1
	jmp	.LBB169_2
.LBB169_1:
	callq	_ZNSt3__111char_traitsIcE3eofB9nqe220103Ev
	xorl	$-1, %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB169_3
.LBB169_2:
	movl	52(%rsp), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
.LBB169_3:
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
	jne	.LBB174_4
# %bb.1:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, %edx
	movq	(%rcx), %rax
	movq	104(%rax), %rax
.Ltmp109:                               # EH_LABEL
	callq	*%rax
.Ltmp110:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB174_2
.LBB174_2:
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB174_6
.LBB174_3:
.Ltmp111:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	jmp	.LBB174_7
.LBB174_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	103(%rsp), %al
	movb	%al, 43(%rsp)                   # 1-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movb	43(%rsp), %dl                   # 1-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	%dl, (%rax)
.Ltmp107:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.Ltmp108:                               # EH_LABEL
	jmp	.LBB174_5
.LBB174_5:
	movb	103(%rsp), %cl
	callq	_ZNSt3__111char_traitsIcE11to_int_typeB9nqe220103Ec
	movl	%eax, 116(%rsp)
	movl	$1, 64(%rsp)
.LBB174_6:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__113__scope_guardIZNS_15basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcEUlvE_ED2B9nqe220103Ev
	movl	116(%rsp), %eax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB174_7:
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
GCC_except_table174:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp109-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp108-.Ltmp109              #   Call between .Ltmp109 and .Ltmp108
	.uleb128 .Ltmp111-.Lfunc_begin20        #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end20-.Ltmp108          #   Call between .Ltmp108 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
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
.Ltmp112:                               # EH_LABEL
	callq	_ZZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB9nqe220103EcENKUlvE_clEv
.Ltmp113:                               # EH_LABEL
	jmp	.LBB180_1
.LBB180_1:
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB180_2:
.Ltmp114:                               # EH_LABEL
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
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp112-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin21        #     jumps to .Ltmp114
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
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$24, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
.Lfunc_begin22:
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r8
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 64(%rsp)
.LBB184_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	72(%rsp), %rax
	je	.LBB184_6
# %bb.2:                                #   in Loop: Header=BB184_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp115:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp116:                               # EH_LABEL
	jmp	.LBB184_3
.LBB184_3:                              #   in Loop: Header=BB184_1 Depth=1
	jmp	.LBB184_4
.LBB184_4:                              #   in Loop: Header=BB184_1 Depth=1
	movq	64(%rsp), %rax
	addq	$24, %rax
	movq	%rax, 64(%rsp)
	movq	%rax, 88(%rsp)
	jmp	.LBB184_1
.LBB184_5:
.Ltmp117:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB184_7
.LBB184_6:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB184_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end22:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table184:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp115-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin22        #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end22-.Ltmp116          #   Call between .Ltmp116 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
                                        # -- End function
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB185_2
# %bb.1:
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB185_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB185_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB185_5
.LBB185_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB185_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_ # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_
	cmpq	$0, 88(%rsp)
	jbe	.LBB186_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB186_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	imulq	$24, 80(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
.Lfunc_begin23:
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	96(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %r9
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y
.LBB187_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	72(%rsp), %rax
	je	.LBB187_6
# %bb.2:                                #   in Loop: Header=BB187_1 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp118:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp119:                               # EH_LABEL
	jmp	.LBB187_3
.LBB187_3:                              #   in Loop: Header=BB187_1 Depth=1
	jmp	.LBB187_4
.LBB187_4:                              #   in Loop: Header=BB187_1 Depth=1
	movq	64(%rsp), %rax
	addq	$24, %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB187_1
.LBB187_5:
.Ltmp120:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB187_7
.LBB187_6:
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB187_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end23:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table187:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp118-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin23        #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end23-.Ltmp119          #   Call between .Ltmp119 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB189_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB189_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionC2B9nqe220103ERS5_y
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
	imulq	$24, 32(%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	.globl	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_: # @_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
.seh_proc _ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
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
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB194_2
# %bb.1:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %rcx
	movq	16(%rdx), %rax
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rax
	movl	$24, %r8d
	cqto
	idivq	%r8
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB194_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin24:
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,2), %r8
	leaq	(%rax,%r8,8), %rax
	movq	72(%rsp), %r8
	leaq	(%r8,%r8,2), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp121:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp122:                               # EH_LABEL
	jmp	.LBB195_1
.LBB195_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB195_2:
.Ltmp123:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end24:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table195:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp121-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin24        #     jumps to .Ltmp123
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
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_ # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	imulq	$24, %rax, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_
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
	.def	_ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
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
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin25:
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,2), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp124:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp125:                               # EH_LABEL
	jmp	.LBB202_1
.LBB202_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB202_2:
.Ltmp126:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end25:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table202:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp124-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin25        #     jumps to .Ltmp126
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
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin26:
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp127:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp128:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB203_1
.LBB203_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB203_2:
.Ltmp129:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end26:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table203:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp127-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin26        #     jumps to .Ltmp129
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
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.8(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_EC2B9nqe220103ERKS6_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	imulq	$24, (%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB213_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB213_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y,"xr",discard,_ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y
	.globl	_ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y # -- Begin function _ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y
	.p2align	4
_ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y: # @_ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y
.seh_proc _ZNSt3__119__allocation_resultIPNS_6vectorIjNS_9allocatorIjEEEEyEC2B9nqe220103ES5_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy
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
	jne	.LBB215_1
	jmp	.LBB215_2
.LBB215_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB215_3
.LBB215_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB215_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
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
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionC2B9nqe220103EPS7_PS4_y
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
	imulq	$24, (%rsp), %rdx
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
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	16(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
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
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin27:
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%r8,%r8,2), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp130:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp131:                               # EH_LABEL
	jmp	.LBB220_1
.LBB220_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB220_2:
.Ltmp132:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end27:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table220:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp130-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin27        #     jumps to .Ltmp132
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
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 56(%rsp)
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdx
	subq	%rdx, %rax
	movl	$24, %r8d
	cqto
	idivq	%r8
	movq	48(%rsp), %rdx                  # 8-byte Reload
	imulq	$24, %rax, %r8
	callq	memcpy
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin28:
.seh_proc _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%r8,%r8,2), %r8
	leaq	(%rax,%r8,8), %r8
.Ltmp133:                               # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp134:                               # EH_LABEL
	jmp	.LBB224_1
.LBB224_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB224_2:
.Ltmp135:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end28:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table224:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp133-.Lfunc_begin28        # >> Call Site 1 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin28        #     jumps to .Ltmp135
	.byte	1                               #   On action: 1
.Lcst_end28:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_
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
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y
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
	callq	_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$24, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_ # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
.Lfunc_begin29:
.seh_proc _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB232_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB232_4
# %bb.2:                                #   in Loop: Header=BB232_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-24, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp136:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp137:                               # EH_LABEL
	jmp	.LBB232_3
.LBB232_3:                              #   in Loop: Header=BB232_1 Depth=1
	jmp	.LBB232_1
.LBB232_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB232_5:
.Ltmp138:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end29:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table232:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp136-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin29        #     jumps to .Ltmp138
	.byte	1                               #   On action: 1
.Lcst_end29:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
.Lfunc_begin30:
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp139:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_
.Ltmp140:                               # EH_LABEL
	jmp	.LBB235_1
.LBB235_1:
.Ltmp141:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
.Ltmp142:                               # EH_LABEL
	jmp	.LBB235_2
.LBB235_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB235_3:
.Ltmp143:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end30:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table235:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp139-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp142-.Ltmp139              #   Call between .Ltmp139 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin30        #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
.Lcst_end30:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_ # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB237_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
	nop
.LBB237_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin31:
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,4), %r8
.Ltmp144:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp145:                               # EH_LABEL
	jmp	.LBB239_1
.LBB239_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB239_2:
.Ltmp146:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end31:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table239:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp144-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin31        #     jumps to .Ltmp146
	.byte	1                               #   On action: 1
.Lcst_end31:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy: # @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
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
	callq	_ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	.seh_startepilogue
	popq	%rcx
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
.Lfunc_begin32:
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
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
.LBB243_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB243_4
# %bb.2:                                #   in Loop: Header=BB243_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-4, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp147:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
.Ltmp148:                               # EH_LABEL
	jmp	.LBB243_3
.LBB243_3:                              #   in Loop: Header=BB243_1 Depth=1
	jmp	.LBB243_1
.LBB243_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB243_5:
.Ltmp149:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end32:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table243:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp147-.Lfunc_begin32        # >> Call Site 1 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin32        #     jumps to .Ltmp149
	.byte	1                               #   On action: 1
.Lcst_end32:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin33:
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,4), %r8
.Ltmp150:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp151:                               # EH_LABEL
	jmp	.LBB244_1
.LBB244_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB244_2:
.Ltmp152:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end33:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table244:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Ltmp150-.Lfunc_begin33        # >> Call Site 1 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin33        #     jumps to .Ltmp152
	.byte	1                               #   On action: 1
.Lcst_end33:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_: # @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IjEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	.globl	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_: # @_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
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
	.def	_ZNSt3__112__destroy_atB9nqe220103IjEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IjEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IjEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IjEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IjEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IjEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IjEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IjEEvPT_
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
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_ # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_
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
	.def	_ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy,"xr",discard,_ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy
	.globl	_ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy # -- Begin function _ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy
	.p2align	4
_ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy: # @_ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy
.seh_proc _ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	movl	$4, %r8d
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$2, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB252_1
	jmp	.LBB252_2
.LBB252_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB252_3
.LBB252_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB252_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y,"xr",discard,_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y
	.globl	_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y # -- Begin function _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y
	.p2align	4
_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y: # @_ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y
.seh_proc _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB254_1
	jmp	.LBB254_2
.LBB254_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB254_3
.LBB254_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB254_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
.Lfunc_begin34:
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
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
.LBB255_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB255_4
# %bb.2:                                #   in Loop: Header=BB255_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-24, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp153:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp154:                               # EH_LABEL
	jmp	.LBB255_3
.LBB255_3:                              #   in Loop: Header=BB255_1 Depth=1
	jmp	.LBB255_1
.LBB255_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB255_5:
.Ltmp155:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end34:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table255:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp153-.Lfunc_begin34        # >> Call Site 1 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin34        #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
.Lcst_end34:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase23:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
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
.Lfunc_begin35:
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
.Ltmp156:                               # EH_LABEL
	callq	_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe220103Ev
.Ltmp157:                               # EH_LABEL
	jmp	.LBB264_1
.LBB264_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB264_2:
.Ltmp158:                               # EH_LABEL
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
.Lfunc_end35:
	.seh_handlerdata
	.section	.text$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"xr",discard,_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej
	.seh_endproc
	.section	.xdata$_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ej,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table264:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Lfunc_begin35-.Lfunc_begin35  # >> Call Site 1 <<
	.uleb128 .Ltmp156-.Lfunc_begin35        #   Call between .Lfunc_begin35 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin35        # >> Call Site 2 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin35        #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin35        # >> Call Site 3 <<
	.uleb128 .Lfunc_end35-.Ltmp157          #   Call between .Ltmp157 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end35:
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
	je	.LBB268_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 88(%rcx)
	movq	72(%rsp), %rdx
	movq	72(%rsp), %r8
	movq	88(%rcx), %r9
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe220103EPcS4_S4_
.LBB268_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB268_11
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
	je	.LBB268_10
# %bb.4:
	jmp	.LBB268_5
.LBB268_5:                              # =>This Inner Loop Header: Depth=1
	cmpq	$2147483647, 64(%rsp)           # imm = 0x7FFFFFFF
	jbe	.LBB268_7
# %bb.6:                                #   in Loop: Header=BB268_5 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	$2147483647, %edx               # imm = 0x7FFFFFFF
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
	movq	64(%rsp), %rax
	subq	$2147483647, %rax               # imm = 0x7FFFFFFF
	movq	%rax, 64(%rsp)
	jmp	.LBB268_5
.LBB268_7:
	cmpq	$0, 64(%rsp)
	jbe	.LBB268_9
# %bb.8:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rax
	movl	%eax, %edx
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe220103Ei
.LBB268_9:
	jmp	.LBB268_10
.LBB268_10:
	jmp	.LBB268_11
.LBB268_11:
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
.Lfunc_begin36:
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
.Ltmp159:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
.Ltmp160:                               # EH_LABEL
	jmp	.LBB269_1
.LBB269_1:
.Ltmp162:                               # EH_LABEL
	leaq	144(%rsp), %rcx
	callq	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe220103Ev
.Ltmp163:                               # EH_LABEL
	movb	%al, 111(%rsp)                  # 1-byte Spill
	jmp	.LBB269_2
.LBB269_2:
	movb	111(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB269_3
	jmp	.LBB269_18
.LBB269_3:
	movq	176(%rsp), %rdx
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	movq	168(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp164:                               # EH_LABEL
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
.Ltmp165:                               # EH_LABEL
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	jmp	.LBB269_4
.LBB269_4:
	movl	104(%rsp), %eax                 # 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	.LBB269_6
# %bb.5:
	movq	168(%rsp), %rax
	addq	160(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB269_7
.LBB269_6:
	movq	168(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB269_7:
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
.Ltmp166:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe220103Ev
.Ltmp167:                               # EH_LABEL
	movb	%al, 87(%rsp)                   # 1-byte Spill
	jmp	.LBB269_8
.LBB269_8:
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movb	87(%rsp), %r11b                 # 1-byte Reload
	movq	112(%rsp), %rcx
.Ltmp168:                               # EH_LABEL
	movq	%rsp, %rax
	movb	%r11b, 40(%rax)
	movq	%r10, 32(%rax)
	callq	_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Ltmp169:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB269_9
.LBB269_9:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe220103Ev
	testb	$1, %al
	jne	.LBB269_10
	jmp	.LBB269_17
.LBB269_10:
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp170:                               # EH_LABEL
	movl	$5, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp171:                               # EH_LABEL
	jmp	.LBB269_11
.LBB269_11:
	jmp	.LBB269_17
.LBB269_12:
.Ltmp161:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	jmp	.LBB269_14
.LBB269_13:
.Ltmp172:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
.LBB269_14:
	movq	136(%rsp), %rcx
	callq	__cxa_begin_catch
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp173:                               # EH_LABEL
	callq	_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
.Ltmp174:                               # EH_LABEL
	jmp	.LBB269_15
.LBB269_15:
	callq	__cxa_end_catch
.LBB269_16:
	movq	176(%rsp), %rax
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
.LBB269_17:
	jmp	.LBB269_18
.LBB269_18:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	jmp	.LBB269_16
.LBB269_19:
.Ltmp175:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
.Ltmp176:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp177:                               # EH_LABEL
	jmp	.LBB269_20
.LBB269_20:
	jmp	.LBB269_21
.LBB269_21:
	movq	136(%rsp), %rcx
	callq	_Unwind_Resume
.LBB269_22:
.Ltmp178:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end36:
	.seh_handlerdata
	.section	.text$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_endproc
	.section	.xdata$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table269:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Ltmp159-.Lfunc_begin36        # >> Call Site 1 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin36        #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin36        # >> Call Site 2 <<
	.uleb128 .Ltmp171-.Ltmp162              #   Call between .Ltmp162 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin36        #     jumps to .Ltmp172
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin36        # >> Call Site 3 <<
	.uleb128 .Ltmp173-.Ltmp171              #   Call between .Ltmp171 and .Ltmp173
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin36        # >> Call Site 4 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin36        #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin36        # >> Call Site 5 <<
	.uleb128 .Ltmp176-.Ltmp174              #   Call between .Ltmp174 and .Ltmp176
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin36        # >> Call Site 6 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin36        #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp177-.Lfunc_begin36        # >> Call Site 7 <<
	.uleb128 .Lfunc_end36-.Ltmp177          #   Call between .Ltmp177 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end36:
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
	jne	.LBB270_1
	jmp	.LBB270_4
.LBB270_1:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB270_3
# %bb.2:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
.LBB270_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	$1, (%rax)
.LBB270_4:
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
.Lfunc_begin37:
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
	jne	.LBB272_2
# %bb.1:
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB272_22
.LBB272_2:
	movq	128(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__18ios_base5widthB9nqe220103Ev
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jle	.LBB272_4
# %bb.3:
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB272_5
.LBB272_4:
	movq	$0, 112(%rsp)
.LBB272_5:
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB272_9
# %bb.6:
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB272_8
# %bb.7:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB272_22
.LBB272_8:
	jmp	.LBB272_9
.LBB272_9:
	cmpq	$0, 112(%rsp)
	jle	.LBB272_17
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
.Ltmp179:                               # EH_LABEL
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
.Ltmp180:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB272_11
.LBB272_11:
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB272_14
# %bb.12:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB272_15
.LBB272_13:
.Ltmp181:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB272_23
.LBB272_14:
	movl	$0, 64(%rsp)
.LBB272_15:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	64(%rsp), %eax
	testl	%eax, %eax
	je	.LBB272_16
	jmp	.LBB272_25
.LBB272_25:
	jmp	.LBB272_22
.LBB272_16:
	jmp	.LBB272_17
.LBB272_17:
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB272_21
# %bb.18:
	movq	152(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe220103EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB272_20
# %bb.19:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB272_22
.LBB272_20:
	jmp	.LBB272_21
.LBB272_21:
	movq	208(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__18ios_base5widthB9nqe220103Ex
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
.LBB272_22:
	movq	160(%rsp), %rax
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB272_23:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
# %bb.24:
	int3
.Lfunc_end37:
	.seh_handlerdata
	.section	.text$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_endproc
	.section	.xdata$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table272:
.Lexception37:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Lfunc_begin37-.Lfunc_begin37  # >> Call Site 1 <<
	.uleb128 .Ltmp179-.Lfunc_begin37        #   Call between .Lfunc_begin37 and .Ltmp179
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin37        # >> Call Site 2 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin37        #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin37        # >> Call Site 3 <<
	.uleb128 .Lfunc_end37-.Ltmp180          #   Call between .Ltmp180 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end37:
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
.Lfunc_begin38:
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
.Ltmp182:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp183:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB273_1
.LBB273_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB273_2:
.Ltmp184:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end38:
	.seh_handlerdata
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE
	.seh_endproc
	.section	.xdata$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe220103ERNS_13basic_ostreamIcS2_EE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table273:
.Lexception38:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Ltmp182-.Lfunc_begin38        # >> Call Site 1 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin38        #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
.Lcst_end38:
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
	jne	.LBB275_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$32, %edx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movsbl	%al, %edx
	addq	$144, %rcx
	callq	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe220103Ei
.LBB275_2:
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
.Lfunc_begin39:
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
.Ltmp185:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp186:                               # EH_LABEL
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB278_1
.LBB278_1:
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB278_16
# %bb.2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp187:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB9nqe220103Ev
.Ltmp188:                               # EH_LABEL
	movb	%al, 63(%rsp)                   # 1-byte Spill
	jmp	.LBB278_3
.LBB278_3:
	movb	63(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB278_4
	jmp	.LBB278_16
.LBB278_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__18ios_base5flagsB9nqe220103Ev
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB278_16
# %bb.5:
	callq	_ZSt19uncaught_exceptionsv
	cmpl	$0, %eax
	jne	.LBB278_16
# %bb.6:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp189:                               # EH_LABEL
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe220103Ev
.Ltmp190:                               # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB278_7
.LBB278_7:
.Ltmp191:                               # EH_LABEL
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB9nqe220103Ev
.Ltmp192:                               # EH_LABEL
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB278_8
.LBB278_8:
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$-1, %eax
	jne	.LBB278_15
# %bb.9:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp193:                               # EH_LABEL
	movl	$1, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe220103Ej
.Ltmp194:                               # EH_LABEL
	jmp	.LBB278_10
.LBB278_10:
	jmp	.LBB278_15
.LBB278_11:
.Ltmp195:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
# %bb.12:
	movq	88(%rsp), %rcx
	callq	__cxa_begin_catch
.Ltmp196:                               # EH_LABEL
	callq	__cxa_end_catch
.Ltmp197:                               # EH_LABEL
	jmp	.LBB278_13
.LBB278_13:
	jmp	.LBB278_14
.LBB278_14:
	jmp	.LBB278_16
.LBB278_15:
	jmp	.LBB278_14
.LBB278_16:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB278_17:
.Ltmp198:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end39:
	.seh_handlerdata
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table278:
.Lexception39:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Ltmp185-.Lfunc_begin39        # >> Call Site 1 <<
	.uleb128 .Ltmp188-.Ltmp185              #   Call between .Ltmp185 and .Ltmp188
	.uleb128 .Ltmp198-.Lfunc_begin39        #     jumps to .Ltmp198
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp189-.Lfunc_begin39        # >> Call Site 2 <<
	.uleb128 .Ltmp194-.Ltmp189              #   Call between .Ltmp189 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin39        #     jumps to .Ltmp195
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp194-.Lfunc_begin39        # >> Call Site 3 <<
	.uleb128 .Ltmp196-.Ltmp194              #   Call between .Ltmp194 and .Ltmp196
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin39        # >> Call Site 4 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin39        #     jumps to .Ltmp198
	.byte	1                               #   On action: 1
.Lcst_end39:
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
.Lfunc_begin40:
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
.Ltmp199:                               # EH_LABEL
	callq	_ZNSt3__19use_facetB9nqe220103INS_5ctypeIcEEEERKT_RKNS_6localeE
.Ltmp200:                               # EH_LABEL
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB289_1
.LBB289_1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	95(%rsp), %dl
.Ltmp201:                               # EH_LABEL
	callq	_ZNKSt3__15ctypeIcE5widenB9nqe220103Ec
.Ltmp202:                               # EH_LABEL
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jmp	.LBB289_2
.LBB289_2:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16localeD1Ev
	movb	47(%rsp), %al                   # 1-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB289_3:
.Ltmp203:                               # EH_LABEL
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
.Lfunc_end40:
	.seh_handlerdata
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec
	.seh_endproc
	.section	.xdata$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe220103Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table289:
.Lexception40:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end40-.Lcst_begin40
.Lcst_begin40:
	.uleb128 .Lfunc_begin40-.Lfunc_begin40  # >> Call Site 1 <<
	.uleb128 .Ltmp199-.Lfunc_begin40        #   Call between .Lfunc_begin40 and .Ltmp199
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin40        # >> Call Site 2 <<
	.uleb128 .Ltmp202-.Ltmp199              #   Call between .Ltmp199 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin40        #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin40        # >> Call Site 3 <<
	.uleb128 .Lfunc_end40-.Ltmp202          #   Call between .Ltmp202 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end40:
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
.Lfunc_begin41:
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
	je	.LBB299_5
# %bb.1:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rcx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB299_3
# %bb.2:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe220103Ev
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 88(%rax)
.LBB299_3:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	88(%rax), %r8
.Ltmp206:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp207:                               # EH_LABEL
	jmp	.LBB299_4
.LBB299_4:
	jmp	.LBB299_10
.LBB299_5:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	96(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB299_8
# %bb.6:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
.Ltmp204:                               # EH_LABEL
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103ITkNS_19contiguous_iteratorEPcTkNS_18sized_sentinel_forITL0__EES5_Qaa9is_same_vINS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS7_EEEEE5valueENS_26indirectly_readable_traitsISA_EESB_E4type10value_typeET_Ent16is_convertible_vITL0_0_yEEESH_T0_
.Ltmp205:                               # EH_LABEL
	jmp	.LBB299_7
.LBB299_7:
	jmp	.LBB299_10
.LBB299_8:
	jmp	.LBB299_9
.LBB299_9:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
.LBB299_10:
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB299_11:
.Ltmp208:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end41:
	.seh_handlerdata
	.section	.text$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"xr",discard,_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table299:
.Lexception41:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Ltmp206-.Lfunc_begin41        # >> Call Site 1 <<
	.uleb128 .Ltmp205-.Ltmp206              #   Call between .Ltmp206 and .Ltmp205
	.uleb128 .Ltmp208-.Lfunc_begin41        #     jumps to .Ltmp208
	.byte	1                               #   On action: 1
.Lcst_end41:
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
	.asciz	".f"

.L.str.1:                               # @.str.1
	.asciz	"@v"

.L.str.2:                               # @.str.2
	.asciz	"["

.L.str.3:                               # @.str.3
	.asciz	"]"

.L.str.4:                               # @.str.4
	.asciz	".*"

.L.str.5:                               # @.str.5
	.asciz	".?"

.L.str.6:                               # @.str.6
	.asciz	"_"

.L.str.7:                               # @.str.7
	.asciz	"<invalid>"

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
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp210-.Ltmp209               # Subsection size
.Ltmp209:
	.short	.Ltmp212-.Ltmp211               # Record length
.Ltmp211:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp212:
	.short	.Ltmp214-.Ltmp213               # Record length
.Ltmp213:
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
.Ltmp214:
.Ltmp210:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo3mir8borrowck13MovePathTable7elemKeyERKNS0_9PlaceElemE
	.addrsig_sym _ZNK6apollo3mir8borrowck13MovePathTable9findChildEjRKNS0_9PlaceElemE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	.addrsig_sym _ZN6apollo3mir8borrowck13MovePathTable9makeChildEjRKNS0_9PlaceElemE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEEixB9nqe220103Ey
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNSt3__1lsB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.addrsig_sym _ZNSt3__1lsB9nqe220103INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	.addrsig_sym _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE9push_backB9nqe220103EOS4_
	.addrsig_sym _ZN6apollo3mir8borrowck13MovePathTable8forLocalEj
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKN6apollo3mir9PlaceElemEEEbRKNS_11__wrap_iterIT_EESA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEEppB9nqe220103Ev
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB9nqe220103Ey
	.addrsig_sym _ZNSt3__111char_traitsIcE6assignB9nqe220103ERcRKc
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__19allocatorIcE10deallocateB9nqe220103EPcy
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe220103ERc
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EEE12emplace_backIJS5_EEERS5_DpOT_EUlvE_ZNS9_IJS5_EEESA_SD_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE30__emplace_back_assume_capacityB9nqe220103IJS4_EEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE9constructB9nqe220103IS5_JS5_ETnNS_9enable_ifIXnt17__has_construct_vIS6_PT_DpT0_EEiE4typeELi0EEEvRS6_SB_DpOSC_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_S6_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE31__annotate_contiguous_containerB9nqe220103EPKvS9_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEEEvPKvS8_S8_S8_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IN6apollo3mir8borrowck8MovePathEJS4_EPS4_EEPT_S7_DpOT0_
	.addrsig_sym _ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_sentinelB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE8max_sizeB9nqe220103IS6_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS6_
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
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16allocator_traitsIS6_EEEENS_19__allocation_resultINT0_7pointerENSA_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E10__set_dataB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E17__set_valid_rangeB9nqe220103EPS5_SA_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEPT_NS_15__element_countEy
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EEvRT_T0_SA_SA_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS4_S6_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEEENS_28__exception_guard_exceptionsIT_EESB_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS6_EEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_S7_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE7destroyB9nqe220103IS5_TnNS_9enable_ifIXnt15__has_destroy_vIS6_PT_EEiE4typeELi0EEEvRS6_SB_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPT_
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEPS5_EclB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir8borrowck8MovePathEEENS_16reverse_iteratorIPS5_EES9_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB9nqe220103IPN6apollo3mir8borrowck8MovePathES5_EEbRKNS_16reverse_iteratorIT_EERKNS6_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo3mir8borrowck8MovePathEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E14__set_capacityB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir8borrowck8MovePathEEEE10deallocateB9nqe220103ERS6_PS5_y
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS5_EES0_EES5_S7_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir8borrowck8MovePathENS_9allocatorIS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__19allocatorIN6apollo3mir8borrowck8MovePathEE10deallocateB9nqe220103EPS4_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir8borrowck8MovePathEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEEEvPKvS7_S7_S7_
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEJEPS4_EEPT_S7_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEEPS4_EEvRT_T0_S9_S9_
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPT_
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IjEEvPT_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_
	.addrsig_sym _ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE11__make_iterB9nqe220103EPKS3_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir9PlaceElemENS_9allocatorIS3_EEE26__add_alignment_assumptionB9nqe220103IPS3_TnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES8_SA_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKN6apollo3mir9PlaceElemEE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	.addrsig_sym _ZNSt3__111char_traitsIcE6lengthB9nqe220103EPKc
	.addrsig_sym _ZNSt3__118__constexpr_strlenB9nqe220103IcEEyPKT_
	.addrsig_sym strlen
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
