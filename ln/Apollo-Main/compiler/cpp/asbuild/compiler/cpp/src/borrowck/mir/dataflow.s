	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"dataflow.cpp"
	.def	_ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE # -- Begin function _ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE
	.p2align	4
_ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE: # @_ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE
.Lfunc_begin0:
.seh_proc _ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movb	$0, 135(%rsp)
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 120(%rsp)
	movq	136(%rsp), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	subq	$8, %rax
	ja	.LBB0_22
# %bb.26:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	136(%rsp), %rax
	movl	20(%rax), %edx
.Ltmp14:                                # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp15:                                # EH_LABEL
	jmp	.LBB0_2
.LBB0_2:
	jmp	.LBB0_22
.LBB0_3:
.Ltmp16:                                # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 112(%rsp)
	movl	%eax, 108(%rsp)
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	jmp	.LBB0_25
.LBB0_4:
	movq	136(%rsp), %rax
	addq	$112, %rax
	addq	$24, %rax
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	movq	%rax, 88(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	movq	%rax, 80(%rsp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	leaq	88(%rsp), %rcx
	leaq	80(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	leaq	88(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	movl	(%rax), %eax
	movl	%eax, 76(%rsp)
	movl	76(%rsp), %edx
.Ltmp12:                                # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp13:                                # EH_LABEL
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	jmp	.LBB0_5
.LBB0_9:
	jmp	.LBB0_22
.LBB0_10:
	jmp	.LBB0_22
.LBB0_11:
	movq	136(%rsp), %rax
	movl	192(%rax), %edx
.Ltmp10:                                # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp11:                                # EH_LABEL
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_22
.LBB0_13:
	movq	136(%rsp), %rax
	movl	352(%rax), %edx
.Ltmp8:                                 # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_22
.LBB0_15:
	movq	136(%rsp), %rax
	movl	480(%rax), %edx
.Ltmp6:                                 # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp7:                                 # EH_LABEL
	jmp	.LBB0_16
.LBB0_16:
	jmp	.LBB0_22
.LBB0_17:
	movq	136(%rsp), %rax
	movl	484(%rax), %edx
.Ltmp2:                                 # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp3:                                 # EH_LABEL
	jmp	.LBB0_18
.LBB0_18:
	movq	136(%rsp), %rax
	movl	488(%rax), %edx
.Ltmp4:                                 # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp5:                                 # EH_LABEL
	jmp	.LBB0_19
.LBB0_19:
	jmp	.LBB0_22
.LBB0_20:
	movq	136(%rsp), %rax
	movl	484(%rax), %edx
.Ltmp0:                                 # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
.Ltmp1:                                 # EH_LABEL
	jmp	.LBB0_21
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	movb	$1, 135(%rsp)
	testb	$1, 135(%rsp)
	jne	.LBB0_24
# %bb.23:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
.LBB0_24:
	movq	48(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB0_25:
	movq	112(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI0_0:
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
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
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp14                 #   Call between .Ltmp14 and .Ltmp1
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end0-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
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
	.def	_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj: # @"_ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj"
.seh_proc _ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpl	$-1, 44(%rsp)
	je	.LBB2_2
# %bb.1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	leaq	44(%rsp), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
	nop
.LBB2_2:
	.seh_startepilogue
	addq	$56, %rsp
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
.Lfunc_begin1:
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp17:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_
.Ltmp18:                                # EH_LABEL
	jmp	.LBB8_1
.LBB8_1:
.Ltmp19:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
.Ltmp20:                                # EH_LABEL
	jmp	.LBB8_2
.LBB8_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB8_3:
.Ltmp21:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table8:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Ltmp17                #   Call between .Ltmp17 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
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
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck12Predecessors5buildERKNS0_4BodyE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck12Predecessors5buildERKNS0_4BodyE # -- Begin function _ZN6apollo3mir8borrowck12Predecessors5buildERKNS0_4BodyE
	.p2align	4
_ZN6apollo3mir8borrowck12Predecessors5buildERKNS0_4BodyE: # @_ZN6apollo3mir8borrowck12Predecessors5buildERKNS0_4BodyE
.Lfunc_begin2:
.seh_proc _ZN6apollo3mir8borrowck12Predecessors5buildERKNS0_4BodyE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 160(%rsp)
	movq	%rdx, 152(%rsp)
	movb	$0, 151(%rsp)
	callq	_ZN6apollo3mir8borrowck12PredecessorsC2Ev
	movq	152(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp22:                                # EH_LABEL
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
.Ltmp23:                                # EH_LABEL
	jmp	.LBB9_1
.LBB9_1:
	movl	$0, 128(%rsp)
.LBB9_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	movl	128(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB9_16
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	movq	152(%rsp), %rcx
	movl	128(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	%rax, %rdx
	addq	$24, %rdx
.Ltmp24:                                # EH_LABEL
	leaq	96(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE
.Ltmp25:                                # EH_LABEL
	jmp	.LBB9_4
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	leaq	96(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	movq	%rax, 88(%rsp)
	movq	120(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	movq	%rax, 80(%rsp)
.LBB9_5:                                #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	88(%rsp), %rcx
	leaq	80(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB9_8
# %bb.6:                                #   in Loop: Header=BB9_2 Depth=1
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	jmp	.LBB9_14
.LBB9_7:
.Ltmp26:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	jmp	.LBB9_19
.LBB9_8:                                #   in Loop: Header=BB9_5 Depth=2
	leaq	88(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 76(%rsp)
	movl	76(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB9_12
# %bb.9:                                #   in Loop: Header=BB9_5 Depth=2
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movl	76(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey
	movq	%rax, %rcx
.Ltmp27:                                # EH_LABEL
	leaq	128(%rsp), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
.Ltmp28:                                # EH_LABEL
	jmp	.LBB9_10
.LBB9_10:                               #   in Loop: Header=BB9_5 Depth=2
	jmp	.LBB9_12
.LBB9_11:
.Ltmp29:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	jmp	.LBB9_19
.LBB9_12:                               #   in Loop: Header=BB9_5 Depth=2
	jmp	.LBB9_13
.LBB9_13:                               #   in Loop: Header=BB9_5 Depth=2
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev
	jmp	.LBB9_5
.LBB9_14:                               #   in Loop: Header=BB9_2 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               #   in Loop: Header=BB9_2 Depth=1
	movl	128(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 128(%rsp)
	jmp	.LBB9_2
.LBB9_16:
	movb	$1, 151(%rsp)
	testb	$1, 151(%rsp)
	jne	.LBB9_18
# %bb.17:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZN6apollo3mir8borrowck12PredecessorsD2Ev
.LBB9_18:
	movq	56(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB9_19:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZN6apollo3mir8borrowck12PredecessorsD2Ev
# %bb.20:
	movq	136(%rsp), %rcx
	callq	_Unwind_Resume
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
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Ltmp22                #   Call between .Ltmp22 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin2          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck12PredecessorsC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir8borrowck12PredecessorsC2Ev,"xr",discard,_ZN6apollo3mir8borrowck12PredecessorsC2Ev
	.globl	_ZN6apollo3mir8borrowck12PredecessorsC2Ev # -- Begin function _ZN6apollo3mir8borrowck12PredecessorsC2Ev
	.p2align	4
_ZN6apollo3mir8borrowck12PredecessorsC2Ev: # @_ZN6apollo3mir8borrowck12PredecessorsC2Ev
.seh_proc _ZN6apollo3mir8borrowck12PredecessorsC2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
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
.Lfunc_begin3:
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
	jae	.LBB11_8
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	ja	.LBB11_3
# %bb.2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rsp), %rdx
	subq	112(%rsp), %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	jmp	.LBB11_7
.LBB11_3:
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
.Ltmp30:                                # EH_LABEL
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
.Ltmp31:                                # EH_LABEL
	jmp	.LBB11_4
.LBB11_4:
.Ltmp32:                                # EH_LABEL
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leaq	80(%rsp), %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S4_NS_29__split_buffer_pointer_layoutEEE
.Ltmp33:                                # EH_LABEL
	jmp	.LBB11_5
.LBB11_5:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB11_7
.LBB11_6:
.Ltmp34:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEED2Ev
	jmp	.LBB11_12
.LBB11_7:
	jmp	.LBB11_11
.LBB11_8:
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jbe	.LBB11_10
# %bb.9:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	imulq	$24, 120(%rsp), %rax
	addq	%rax, %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__destruct_at_endB9nqe220103EPS3_
.LBB11_10:
	jmp	.LBB11_11
.LBB11_11:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB11_12:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table11:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp33-.Ltmp30                #   Call between .Ltmp30 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin3          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp33            #   Call between .Ltmp33 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
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
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
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
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_,"xr",discard,_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	.globl	_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_ # -- Begin function _ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	4
_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_: # @_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
.seh_proc _ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
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
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	imulq	$24, (%rsp), %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev
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
	.def	_ZN6apollo3mir8borrowck12PredecessorsD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir8borrowck12PredecessorsD2Ev,"xr",discard,_ZN6apollo3mir8borrowck12PredecessorsD2Ev
	.globl	_ZN6apollo3mir8borrowck12PredecessorsD2Ev # -- Begin function _ZN6apollo3mir8borrowck12PredecessorsD2Ev
	.p2align	4
_ZN6apollo3mir8borrowck12PredecessorsD2Ev: # @_ZN6apollo3mir8borrowck12PredecessorsD2Ev
.seh_proc _ZN6apollo3mir8borrowck12PredecessorsD2Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck16reversePostorderERKNS0_4BodyE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck16reversePostorderERKNS0_4BodyE # -- Begin function _ZN6apollo3mir8borrowck16reversePostorderERKNS0_4BodyE
	.p2align	4
_ZN6apollo3mir8borrowck16reversePostorderERKNS0_4BodyE: # @_ZN6apollo3mir8borrowck16reversePostorderERKNS0_4BodyE
.Lfunc_begin4:
.seh_proc _ZN6apollo3mir8borrowck16reversePostorderERKNS0_4BodyE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$264, %rsp                      # imm = 0x108
	.seh_stackalloc 264
	.seh_endprologue
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 256(%rsp)
	movq	%rdx, 248(%rsp)
	movb	$0, 247(%rsp)
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
	movq	248(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	testb	$1, %al
	jne	.LBB23_1
	jmp	.LBB23_2
.LBB23_1:
	movb	$1, 247(%rsp)
	movl	$1, 240(%rsp)
	jmp	.LBB23_25
.LBB23_2:
	movq	248(%rsp), %rcx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rdx
	movb	$0, 215(%rsp)
.Ltmp35:                                # EH_LABEL
	leaq	216(%rsp), %rcx
	leaq	215(%rsp), %r8
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEC2B9nqe220103EyRKS7_
.Ltmp36:                                # EH_LABEL
	jmp	.LBB23_3
.LBB23_3:
	leaq	168(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEEC2B9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	$0, 152(%rsp)
	movq	$0, 160(%rsp)
.Ltmp38:                                # EH_LABEL
	leaq	152(%rsp), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
.Ltmp39:                                # EH_LABEL
	jmp	.LBB23_4
.LBB23_4:
	leaq	216(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
	movb	$1, (%rax)
.LBB23_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_8 Depth 2
	leaq	168(%rsp), %rcx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5emptyB9nqe220103Ev
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB23_6
	jmp	.LBB23_22
.LBB23_6:                               #   in Loop: Header=BB23_5 Depth=1
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4backB9nqe220103Ev
	movq	%rax, 144(%rsp)
	movq	248(%rsp), %rcx
	movq	144(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	%rax, %rdx
	addq	$24, %rdx
.Ltmp42:                                # EH_LABEL
	leaq	120(%rsp), %rcx
	callq	_ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE
.Ltmp43:                                # EH_LABEL
	jmp	.LBB23_7
.LBB23_7:                               #   in Loop: Header=BB23_5 Depth=1
	movb	$0, 119(%rsp)
.LBB23_8:                               #   Parent Loop BB23_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	120(%rsp), %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB23_17
# %bb.9:                                #   in Loop: Header=BB23_8 Depth=2
	movq	144(%rsp), %rax
	movq	8(%rax), %rdx
	movq	%rdx, %rcx
	addq	$1, %rcx
	movq	%rcx, 8(%rax)
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	movl	(%rax), %eax
	movl	%eax, 112(%rsp)
	movl	112(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	216(%rsp), %rcx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB23_16
# %bb.10:                               #   in Loop: Header=BB23_8 Depth=2
	movl	112(%rsp), %eax
	movl	%eax, %edx
	leaq	216(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
	movzbl	(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB23_16
# %bb.11:                               #   in Loop: Header=BB23_5 Depth=1
	movl	112(%rsp), %eax
	movl	%eax, %edx
	leaq	216(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
	movb	$1, (%rax)
	movl	112(%rsp), %eax
	movl	%eax, 96(%rsp)
	movq	$0, 104(%rsp)
.Ltmp45:                                # EH_LABEL
	leaq	168(%rsp), %rcx
	leaq	96(%rsp), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
.Ltmp46:                                # EH_LABEL
	jmp	.LBB23_12
.LBB23_12:                              #   in Loop: Header=BB23_5 Depth=1
	movb	$1, 119(%rsp)
	jmp	.LBB23_17
.LBB23_13:
.Ltmp37:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 200(%rsp)
	movl	%eax, 196(%rsp)
	jmp	.LBB23_28
.LBB23_14:
.Ltmp44:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 200(%rsp)
	movl	%eax, 196(%rsp)
	jmp	.LBB23_24
.LBB23_15:
.Ltmp51:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 200(%rsp)
	movl	%eax, 196(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	jmp	.LBB23_24
.LBB23_16:                              #   in Loop: Header=BB23_8 Depth=2
	jmp	.LBB23_8
.LBB23_17:                              #   in Loop: Header=BB23_5 Depth=1
	testb	$1, 119(%rsp)
	jne	.LBB23_21
# %bb.18:                               #   in Loop: Header=BB23_5 Depth=1
	movq	144(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	leaq	216(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movb	$2, (%rax)
	movq	144(%rsp), %rdx
.Ltmp47:                                # EH_LABEL
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
.Ltmp48:                                # EH_LABEL
	jmp	.LBB23_19
.LBB23_19:                              #   in Loop: Header=BB23_5 Depth=1
.Ltmp49:                                # EH_LABEL
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8pop_backB9nqe220103Ev
.Ltmp50:                                # EH_LABEL
	jmp	.LBB23_20
.LBB23_20:                              #   in Loop: Header=BB23_5 Depth=1
	jmp	.LBB23_21
.LBB23_21:                              #   in Loop: Header=BB23_5 Depth=1
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	jmp	.LBB23_5
.LBB23_22:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 88(%rsp)
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	movq	%rax, 80(%rsp)
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rdx
.Ltmp40:                                # EH_LABEL
	callq	_ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_
.Ltmp41:                                # EH_LABEL
	jmp	.LBB23_23
.LBB23_23:
	movb	$1, 247(%rsp)
	movl	$1, 240(%rsp)
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEED2B9nqe220103Ev
	leaq	216(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEED2B9nqe220103Ev
	jmp	.LBB23_25
.LBB23_24:
	leaq	168(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEED2B9nqe220103Ev
	leaq	216(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEED2B9nqe220103Ev
	jmp	.LBB23_28
.LBB23_25:
	testb	$1, 247(%rsp)
	jne	.LBB23_27
# %bb.26:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
.LBB23_27:
	movq	72(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$264, %rsp                      # imm = 0x108
	.seh_endepilogue
	retq
.LBB23_28:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
# %bb.29:
	movq	200(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end4:
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
	.uleb128 .Ltmp35-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin4          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp43-.Ltmp38                #   Call between .Ltmp38 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin4          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp50-.Ltmp45                #   Call between .Ltmp45 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin4          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp44-.Lfunc_begin4          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp41            #   Call between .Ltmp41 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEC2B9nqe220103EyRKS7_;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEC2B9nqe220103EyRKS7_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEC2B9nqe220103EyRKS7_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEC2B9nqe220103EyRKS7_
.Lfunc_begin5:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEC2B9nqe220103EyRKS7_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
	movq	56(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESE_
	cmpq	$0, 88(%rsp)
	jbe	.LBB25_5
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
.Ltmp52:                                # EH_LABEL
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE11__vallocateB9nqe220103Ey
.Ltmp53:                                # EH_LABEL
	jmp	.LBB25_2
.LBB25_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	movq	80(%rsp), %r8
.Ltmp54:                                # EH_LABEL
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE18__construct_at_endEyRKS7_
.Ltmp55:                                # EH_LABEL
	jmp	.LBB25_3
.LBB25_3:
	jmp	.LBB25_5
.LBB25_4:
.Ltmp56:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 48(%rsp)
	movl	%eax, 44(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEED2B9nqe220103Ev
	jmp	.LBB25_6
.LBB25_5:
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB25_6:
	movq	48(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end5:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table25:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp52-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp55-.Ltmp52                #   Call between .Ltmp52 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin5          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp55            #   Call between .Ltmp55 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEEC2B9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEEC2B9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEEC2B9nqe220103Ev
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
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
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5emptyB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5emptyB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5emptyB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5emptyB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5emptyB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4backB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4backB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4backB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4backB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4backB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	addq	$-16, %rax
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey: # @_ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
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
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8pop_backB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8pop_backB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8pop_backB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8pop_backB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8pop_backB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movq	8(%rcx), %rdx
	addq	$-16, %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__destruct_at_endB9nqe220103EPS7_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_,"xr",discard,_ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_
	.globl	_ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_ # -- Begin function _ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_
	.p2align	4
_ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_: # @_ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_
.seh_proc _ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEED2B9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEED2B9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEED2B9nqe220103Ev
.Lfunc_begin6:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp57:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
.Ltmp58:                                # EH_LABEL
	jmp	.LBB36_1
.LBB36_1:
.Ltmp59:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp60:                                # EH_LABEL
	jmp	.LBB36_2
.LBB36_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB36_3:
.Ltmp61:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table36:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
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
.Lttbase1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEED2B9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEED2B9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEED2B9nqe220103Ev
.Lfunc_begin7:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp62:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
.Ltmp63:                                # EH_LABEL
	jmp	.LBB37_1
.LBB37_1:
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB37_2:
.Ltmp64:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end7:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table37:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp62-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin7          #     jumps to .Ltmp64
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
	.text
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
	je	.LBB44_2
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
.LBB44_2:
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
.Lfunc_begin8:
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
.Ltmp65:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp66:                                # EH_LABEL
	jmp	.LBB46_1
.LBB46_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB46_2:
.Ltmp67:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table46:
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
.Lfunc_begin9:
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
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB49_4
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-4, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp68:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
.Ltmp69:                                # EH_LABEL
	jmp	.LBB49_3
.LBB49_3:                               #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_1
.LBB49_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB49_5:
.Ltmp70:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table49:
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
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
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
.Lfunc_begin10:
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
.Ltmp71:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp72:                                # EH_LABEL
	jmp	.LBB50_1
.LBB50_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB50_2:
.Ltmp73:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table50:
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
	jne	.LBB58_1
	jmp	.LBB58_2
.LBB58_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB58_3
.LBB58_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB58_3:
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
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEC2B9nqe220103Ev
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
.Lfunc_begin11:
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
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	72(%rsp), %rax
	je	.LBB62_6
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp74:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp75:                                # EH_LABEL
	jmp	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	movq	64(%rsp), %rax
	addq	$24, %rax
	movq	%rax, 64(%rsp)
	movq	%rax, 88(%rsp)
	jmp	.LBB62_1
.LBB62_5:
.Ltmp76:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB62_7
.LBB62_6:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
.LBB62_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table62:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp74-.Lfunc_begin11         # >> Call Site 1 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin11         #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin11         # >> Call Site 2 <<
	.uleb128 .Lfunc_end11-.Ltmp75           #   Call between .Ltmp75 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
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
	jbe	.LBB63_2
# %bb.1:
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB63_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB63_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB63_5
.LBB63_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB63_5:
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
	jbe	.LBB64_2
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
.LBB64_2:
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
.Lfunc_begin12:
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
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	72(%rsp), %rax
	je	.LBB65_6
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp77:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE9constructB9nqe220103IS4_JETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp78:                                # EH_LABEL
	jmp	.LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	movq	64(%rsp), %rax
	addq	$24, %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB65_1
.LBB65_5:
.Ltmp79:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB65_7
.LBB65_6:
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB65_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE18__construct_at_endEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table65:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp77-.Lfunc_begin12         # >> Call Site 1 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin12         #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin12         # >> Call Site 2 <<
	.uleb128 .Lfunc_end12-.Ltmp78           #   Call between .Ltmp78 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
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
	je	.LBB67_2
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
.LBB67_2:
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
	je	.LBB72_2
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
.LBB72_2:
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
.Lfunc_begin13:
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
.Ltmp80:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp81:                                # EH_LABEL
	jmp	.LBB73_1
.LBB73_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB73_2:
.Ltmp82:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table73:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp80-.Lfunc_begin13         # >> Call Site 1 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin13         #     jumps to .Ltmp82
	.byte	1                               #   On action: 1
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
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
	.def	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin14:
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
.Ltmp83:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp84:                                # EH_LABEL
	jmp	.LBB79_1
.LBB79_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB79_2:
.Ltmp85:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table79:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp83-.Lfunc_begin14         # >> Call Site 1 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin14         #     jumps to .Ltmp85
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
.Lfunc_begin15:
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
.Ltmp86:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp87:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB80_1
.LBB80_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB80_2:
.Ltmp88:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table80:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp86-.Lfunc_begin15         # >> Call Site 1 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin15         #     jumps to .Ltmp88
	.byte	1                               #   On action: 1
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase8:
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
	jne	.LBB86_1
	jmp	.LBB86_2
.LBB86_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB86_3
.LBB86_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB86_3:
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
.Lfunc_begin16:
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
.Ltmp89:                                # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp90:                                # EH_LABEL
	jmp	.LBB91_1
.LBB91_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB91_2:
.Ltmp91:                                # EH_LABEL
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
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table91:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp89-.Lfunc_begin16         #   Call between .Lfunc_begin16 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin16         # >> Call Site 2 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin16         #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin16         # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp90           #   Call between .Ltmp90 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
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
	jne	.LBB93_1
	jmp	.LBB93_2
.LBB93_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB93_3
.LBB93_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB93_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
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
	jbe	.LBB101_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB101_2:
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
	jne	.LBB104_1
	jmp	.LBB104_2
.LBB104_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB104_3
.LBB104_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB104_3:
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
.Lfunc_begin17:
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
.Ltmp92:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp93:                                # EH_LABEL
	jmp	.LBB109_1
.LBB109_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB109_2:
.Ltmp94:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table109:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp92-.Lfunc_begin17         # >> Call Site 1 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin17         #     jumps to .Ltmp94
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
.Lfunc_begin18:
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
.Ltmp95:                                # EH_LABEL
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp96:                                # EH_LABEL
	jmp	.LBB113_1
.LBB113_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB113_2:
.Ltmp97:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table113:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp95-.Lfunc_begin18         # >> Call Site 1 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin18         #     jumps to .Ltmp97
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
.Lfunc_begin19:
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
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB121_4
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-24, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp98:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp99:                                # EH_LABEL
	jmp	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	jmp	.LBB121_1
.LBB121_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_sentinelB9nqe220103EPS5_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB121_5:
.Ltmp100:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS4_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table121:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp98-.Lfunc_begin19         # >> Call Site 1 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin19        #     jumps to .Ltmp100
	.byte	1                               #   On action: 1
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase11:
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
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
.Lfunc_begin20:
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
.LBB126_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB126_4
# %bb.2:                                #   in Loop: Header=BB126_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-24, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_S6_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp101:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp102:                               # EH_LABEL
	jmp	.LBB126_3
.LBB126_3:                              #   in Loop: Header=BB126_1 Depth=1
	jmp	.LBB126_1
.LBB126_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB126_5:
.Ltmp103:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end20:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table126:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp101-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin20        #     jumps to .Ltmp103
	.byte	1                               #   On action: 1
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_,"xr",discard,_ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_
	.globl	_ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_ # -- Begin function _ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_
	.p2align	4
_ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_: # @_ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_
.seh_proc _ZNSt3__111__wrap_iterIPjEC2B9nqe220103ES1_
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
	.def	_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
	.globl	_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev: # @_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	96(%rsp), %rax
	addq	$-4, %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_
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
	je	.LBB131_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
	jmp	.LBB131_4
.LBB131_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
.LBB131_4:
	jmp	.LBB131_5
.LBB131_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_ # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
.Lfunc_begin21:
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
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
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp104:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
.Ltmp105:                               # EH_LABEL
	jmp	.LBB134_1
.LBB134_1:
	movq	72(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB134_2:
.Ltmp106:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end21:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table134:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp104-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin21        #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end21-.Ltmp105          #   Call between .Ltmp105 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B9nqe220103ERS3_y
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
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_: # @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB137_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$2, %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB137_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin22:
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r8,4), %rax
	movq	72(%rsp), %r8
	leaq	(%rax,%r8,4), %r8
.Ltmp107:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp108:                               # EH_LABEL
	jmp	.LBB138_1
.LBB138_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB138_2:
.Ltmp109:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end22:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table138:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp107-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin22        #     jumps to .Ltmp109
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
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_ # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
.Lfunc_begin23:
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp110:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
.Ltmp111:                               # EH_LABEL
	jmp	.LBB141_1
.LBB141_1:
	movq	96(%rsp), %rdx
	addq	$4, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp112:                               # EH_LABEL
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
.Ltmp113:                               # EH_LABEL
	jmp	.LBB141_2
.LBB141_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB141_3:
.Ltmp114:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end23:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table141:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp110-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp110
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp113-.Ltmp110              #   Call between .Ltmp110 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin23        #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Lfunc_end23-.Ltmp113          #   Call between .Ltmp113 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB142_2
# %bb.1:
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
.LBB142_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB142_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB142_5
.LBB142_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB142_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_
	.globl	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_ # -- Begin function _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_
	.p2align	4
_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_: # @_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_
.seh_proc _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEEC2EyyRS2_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_
	cmpq	$0, 88(%rsp)
	jbe	.LBB143_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB143_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB147_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
	nop
.LBB147_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
.Lfunc_begin24:
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp115:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp116:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB148_1
.LBB148_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB148_2:
.Ltmp117:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end24:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table148:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp115-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin24        #     jumps to .Ltmp117
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
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_: # @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	shrq	$2, %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_EC2B9nqe220103ERKS3_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIjE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	(%rsp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIjE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIjE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIjE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIjE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIjE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIjE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIjE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIjE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB158_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB158_2:
	movq	40(%rsp), %rcx
	movl	$4, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y,"xr",discard,_ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y
	.globl	_ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y # -- Begin function _ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y
	.p2align	4
_ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y: # @_ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y
.seh_proc _ZNSt3__119__allocation_resultIPjyEC2B9nqe220103ES1_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$2, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB160_1
	jmp	.LBB160_2
.LBB160_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB160_3
.LBB160_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB160_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %rax
	subq	%rax, %r8
	sarq	$2, %r8
	shlq	$2, %r8
	callq	memcpy
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
.Lfunc_begin25:
.seh_proc _ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8
	leaq	(%rax,%r8,4), %r8
.Ltmp118:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp119:                               # EH_LABEL
	jmp	.LBB164_1
.LBB164_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB164_2:
.Ltmp120:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end25:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table164:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp118-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin25        #     jumps to .Ltmp120
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
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj
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
	.def	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj
	.globl	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj # -- Begin function _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj
	.p2align	4
_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj: # @_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj
.seh_proc _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
.Lfunc_begin26:
.seh_proc _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB171_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB171_4
# %bb.2:                                #   in Loop: Header=BB171_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-4, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp121:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
.Ltmp122:                               # EH_LABEL
	jmp	.LBB171_3
.LBB171_3:                              #   in Loop: Header=BB171_1 Depth=1
	jmp	.LBB171_1
.LBB171_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB171_5:
.Ltmp123:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end26:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table171:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp121-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin26        #     jumps to .Ltmp123
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
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev
.Lfunc_begin27:
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp124:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_
.Ltmp125:                               # EH_LABEL
	jmp	.LBB172_1
.LBB172_1:
.Ltmp126:                               # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp127:                               # EH_LABEL
	jmp	.LBB172_2
.LBB172_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB172_3:
.Ltmp128:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end27:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table172:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp124-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp127-.Ltmp124              #   Call between .Ltmp124 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin27        #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_ # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorC2B9nqe220103ERS5_
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
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB174_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB174_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev
	.globl	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESE_;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESE_
_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESE_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESE_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESE_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEC2B9nqe220103ESC_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE11__vallocateB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE11__vallocateB9nqe220103Ey
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE11__vallocateB9nqe220103Ey: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE11__vallocateB9nqe220103Ey
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE11__vallocateB9nqe220103Ey
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
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB178_2
# %bb.1:
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
.LBB178_2:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rax
	movq	%rax, (%rcx)
	movq	56(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	(%rcx), %rax
	addq	64(%rsp), %rax
	movq	%rax, 16(%rcx)
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE18__construct_at_endEyRKS7_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE18__construct_at_endEyRKS7_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE18__construct_at_endEyRKS7_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE18__construct_at_endEyRKS7_
.Lfunc_begin28:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE18__construct_at_endEyRKS7_
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
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)
.LBB179_1:                              # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	cmpq	80(%rsp), %rax
	je	.LBB179_6
# %bb.2:                                #   in Loop: Header=BB179_1 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	112(%rsp), %r8
.Ltmp129:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE9constructB9nqe220103IS8_JRKS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SG_DpOSH_
.Ltmp130:                               # EH_LABEL
	jmp	.LBB179_3
.LBB179_3:                              #   in Loop: Header=BB179_1 Depth=1
	jmp	.LBB179_4
.LBB179_4:                              #   in Loop: Header=BB179_1 Depth=1
	movq	72(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 72(%rsp)
	movq	%rax, 96(%rsp)
	jmp	.LBB179_1
.LBB179_5:
.Ltmp131:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
	jmp	.LBB179_7
.LBB179_6:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB179_7:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end28:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table179:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp129-.Lfunc_begin28        # >> Call Site 1 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin28        #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Lfunc_end28-.Ltmp130          #   Call between .Ltmp130 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEE10__completeB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEED2B9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEED2B9nqe220103Ev
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEED2B9nqe220103Ev
.Lfunc_begin29:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 8(%rax)
	jne	.LBB181_3
# %bb.1:
.Ltmp132:                               # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
.Ltmp133:                               # EH_LABEL
	jmp	.LBB181_2
.LBB181_2:
	jmp	.LBB181_3
.LBB181_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB181_4:
.Ltmp134:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end29:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table181:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp132-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin29        #     jumps to .Ltmp134
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
	.text
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEC2B9nqe220103ESC_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEC2B9nqe220103ESC_
_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEC2B9nqe220103ESC_: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEC2B9nqe220103ESC_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEC2B9nqe220103ESC_
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
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin30:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp135:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp136:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB183_1
.LBB183_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB183_2:
.Ltmp137:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end30:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table183:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp135-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin30        #     jumps to .Ltmp137
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
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColoryEC2B9nqe220103ES8_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin31:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax
	addq	%rax, %r8
.Ltmp138:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp139:                               # EH_LABEL
	jmp	.LBB186_1
.LBB186_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB186_2:
.Ltmp140:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end31:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table186:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp138-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin31        #     jumps to .Ltmp140
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
	.text
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	shrq	$0, %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE8allocateB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE8allocateB9nqe220103Ey
_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB188_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB188_2:
	movq	40(%rsp), %rcx
	movl	$1, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColoryEC2B9nqe220103ES8_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColoryEC2B9nqe220103ES8_y
_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColoryEC2B9nqe220103ES8_y: # @_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColoryEC2B9nqe220103ES8_y
.seh_proc _ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColoryEC2B9nqe220103ES8_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_NS_15__element_countEy;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_NS_15__element_countEy
_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$0, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB190_1
	jmp	.LBB190_2
.LBB190_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB190_3
.LBB190_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB190_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEEEvPKvSB_SB_SB_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
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
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEEEvPKvSB_SB_SB_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEEEvPKvSB_SB_SB_
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEEEvPKvSB_SB_SB_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEEEvPKvSB_SB_SB_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEEEvPKvSB_SB_SB_
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
	.def	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_
_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_: # @_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
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
	addq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE9constructB9nqe220103IS8_JRKS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SG_DpOSH_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE9constructB9nqe220103IS8_JRKS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SG_DpOSH_
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE9constructB9nqe220103IS8_JRKS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SG_DpOSH_: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE9constructB9nqe220103IS8_JRKS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SG_DpOSH_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE9constructB9nqe220103IS8_JRKS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SG_DpOSH_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB198_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB198_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin32:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
	movq	72(%rsp), %rax
	addq	%rax, %r8
.Ltmp141:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp142:                               # EH_LABEL
	jmp	.LBB199_1
.LBB199_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB199_2:
.Ltmp143:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end32:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table199:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp141-.Lfunc_begin32        # >> Call Site 1 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin32        #     jumps to .Ltmp143
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
	.text
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin33:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
.Ltmp144:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp145:                               # EH_LABEL
	jmp	.LBB202_1
.LBB202_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB202_2:
.Ltmp146:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end33:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table202:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Ltmp144-.Lfunc_begin33        # >> Call Site 1 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin33        #     jumps to .Ltmp146
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
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB203_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE10deallocateB9nqe220103ERS9_PS8_y
	nop
.LBB203_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE5clearB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE5clearB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin34:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %r8
.Ltmp147:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp148:                               # EH_LABEL
	jmp	.LBB205_1
.LBB205_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB205_2:
.Ltmp149:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end34:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table205:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp147-.Lfunc_begin34        # >> Call Site 1 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin34        #     jumps to .Ltmp149
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
	.text
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE10deallocateB9nqe220103ERS9_PS8_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE10deallocateB9nqe220103ERS9_PS8_y
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE10deallocateB9nqe220103ERS9_PS8_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE10deallocateB9nqe220103ERS9_PS8_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE10deallocateB9nqe220103ERS9_PS8_y
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
	callq	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE10deallocateB9nqe220103EPS7_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
.Lfunc_begin35:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
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
.LBB207_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB207_4
# %bb.2:                                #   in Loop: Header=BB207_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	decq	%rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp150:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.Ltmp151:                               # EH_LABEL
	jmp	.LBB207_3
.LBB207_3:                              #   in Loop: Header=BB207_1 Depth=1
	jmp	.LBB207_1
.LBB207_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB207_5:
.Ltmp152:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end35:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table207:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Ltmp150-.Lfunc_begin35        # >> Call Site 1 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin35        #     jumps to .Ltmp152
	.byte	1                               #   On action: 1
.Lcst_end35:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase24:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPT_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPT_
_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPT_
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
	.def	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE10deallocateB9nqe220103EPS7_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE10deallocateB9nqe220103EPS7_y
_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE10deallocateB9nqe220103EPS7_y: # @_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE10deallocateB9nqe220103EPS7_y
.seh_proc _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE10deallocateB9nqe220103EPS7_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
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
	jne	.LBB211_1
	jmp	.LBB211_2
.LBB211_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB211_3
.LBB211_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB211_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	96(%rsp), %rax
	addq	$-16, %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
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
	je	.LBB213_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
	jmp	.LBB213_4
.LBB213_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
.LBB213_4:
	jmp	.LBB213_5
.LBB213_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
.Lfunc_begin36:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
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
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp153:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
.Ltmp154:                               # EH_LABEL
	jmp	.LBB216_1
.LBB216_1:
	movq	72(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB216_2:
.Ltmp155:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end36:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table216:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Ltmp153-.Lfunc_begin36        # >> Call Site 1 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin36        #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin36        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp154          #   Call between .Ltmp154 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end36:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionC2B9nqe220103ERSA_y
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
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_: # @_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB220_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$4, %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB220_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin37:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	shlq	$4, %rax
	addq	%rax, %r8
	movq	72(%rsp), %rax
	shlq	$4, %rax
	addq	%rax, %r8
.Ltmp156:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp157:                               # EH_LABEL
	jmp	.LBB221_1
.LBB221_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB221_2:
.Ltmp158:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end37:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table221:
.Lexception37:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Ltmp156-.Lfunc_begin37        # >> Call Site 1 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin37        #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
.Lcst_end37:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase25:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$4, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEEEvPKvSB_SB_SB_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$4, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEEEvPKvSB_SB_SB_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEEEvPKvSB_SB_SB_
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEEEvPKvSB_SB_SB_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEEEvPKvSB_SB_SB_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEEEvPKvSB_SB_SB_
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
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$4, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin38:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	shlq	$4, %rax
	addq	%rax, %r8
.Ltmp159:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp160:                               # EH_LABEL
	jmp	.LBB229_1
.LBB229_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB229_2:
.Ltmp161:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end38:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table229:
.Lexception38:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Ltmp159-.Lfunc_begin38        # >> Call Site 1 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin38        #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
.Lcst_end38:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase26:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
.Lfunc_begin39:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp162:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
.Ltmp163:                               # EH_LABEL
	jmp	.LBB230_1
.LBB230_1:
	movq	96(%rsp), %rdx
	addq	$16, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp164:                               # EH_LABEL
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
.Ltmp165:                               # EH_LABEL
	jmp	.LBB230_2
.LBB230_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB230_3:
.Ltmp166:                               # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end39:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table230:
.Lexception39:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Lfunc_begin39-.Lfunc_begin39  # >> Call Site 1 <<
	.uleb128 .Ltmp162-.Lfunc_begin39        #   Call between .Lfunc_begin39 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin39        # >> Call Site 2 <<
	.uleb128 .Ltmp165-.Ltmp162              #   Call between .Ltmp162 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin39        #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin39        # >> Call Site 3 <<
	.uleb128 .Lfunc_end39-.Ltmp165          #   Call between .Ltmp165 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end39:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE11__recommendB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB231_2
# %bb.1:
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
.LBB231_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB231_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB231_5
.LBB231_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB231_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_: # @_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
.seh_proc _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEEC2EyyRS9_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
	cmpq	$0, 88(%rsp)
	jbe	.LBB232_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB232_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEPS8_EEvRT_T0_SD_SD_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB236_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y
	nop
.LBB236_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin40:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp167:                               # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp168:                               # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB237_1
.LBB237_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB237_2:
.Ltmp169:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end40:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table237:
.Lexception40:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end40-.Lcst_begin40
.Lcst_begin40:
	.uleb128 .Ltmp167-.Lfunc_begin40        # >> Call Site 1 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin40        #     jumps to .Ltmp169
	.byte	1                               #   On action: 1
.Lcst_end40:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase27:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	shrq	$4, %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_EC2B9nqe220103ERKSA_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameyEC2B9nqe220103ES8_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE8allocateB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE8allocateB9nqe220103Ey
_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB247_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB247_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameyEC2B9nqe220103ES8_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameyEC2B9nqe220103ES8_y
_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameyEC2B9nqe220103ES8_y: # @_ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameyEC2B9nqe220103ES8_y
.seh_proc _ZNSt3__119__allocation_resultIPZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameyEC2B9nqe220103ES8_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_NS_15__element_countEy;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_NS_15__element_countEy
_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$4, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB249_1
	jmp	.LBB249_2
.LBB249_1:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	movq	%rax, 64(%rsp)
	jmp	.LBB249_3
.LBB249_2:
	movq	40(%rsp), %rcx
	callq	_Znwy
	movq	%rax, 64(%rsp)
.LBB249_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin41:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	shlq	$4, %rax
	addq	%rax, %r8
.Ltmp170:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp171:                               # EH_LABEL
	jmp	.LBB250_1
.LBB250_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB250_2:
.Ltmp172:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end41:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table250:
.Lexception41:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase28-.Lttbaseref28
.Lttbaseref28:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Ltmp170-.Lfunc_begin41        # >> Call Site 1 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin41        #     jumps to .Ltmp172
	.byte	1                               #   On action: 1
.Lcst_end41:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase28:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEPS8_EEvRT_T0_SD_SD_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEPS8_EEvRT_T0_SD_SD_
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEPS8_EEvRT_T0_SD_SD_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEPS8_EEvRT_T0_SD_SD_
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEPS8_EEvRT_T0_SD_SD_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %rax
	subq	%rax, %r8
	sarq	$4, %r8
	shlq	$4, %r8
	callq	memcpy
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin42:
.seh_proc _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax
	shlq	$4, %rax
	addq	%rax, %r8
.Ltmp173:                               # EH_LABEL
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
.Ltmp174:                               # EH_LABEL
	jmp	.LBB254_1
.LBB254_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB254_2:
.Ltmp175:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end42:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table254:
.Lexception42:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase29-.Lttbaseref29
.Lttbaseref29:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end42-.Lcst_begin42
.Lcst_begin42:
	.uleb128 .Ltmp173-.Lfunc_begin42        # >> Call Site 1 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin42        #     jumps to .Ltmp175
	.byte	1                               #   On action: 1
.Lcst_end42:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase29:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
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
	.def	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y
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
	callq	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE10deallocateB9nqe220103EPS7_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$4, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_: # @_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
.seh_proc _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
.Lfunc_begin43:
.seh_proc _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB262_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB262_4
# %bb.2:                                #   in Loop: Header=BB262_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-16, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp176:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.Ltmp177:                               # EH_LABEL
	jmp	.LBB262_3
.LBB262_3:                              #   in Loop: Header=BB262_1 Depth=1
	jmp	.LBB262_1
.LBB262_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB262_5:
.Ltmp178:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end43:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table262:
.Lexception43:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase30-.Lttbaseref30
.Lttbaseref30:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end43-.Lcst_begin43
.Lcst_begin43:
	.uleb128 .Ltmp176-.Lfunc_begin43        # >> Call Site 1 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin43        #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
.Lcst_end43:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase30:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_: # @_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPT_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPT_
_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPT_
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
	.def	_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE10deallocateB9nqe220103EPS7_y;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE10deallocateB9nqe220103EPS7_y
_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE10deallocateB9nqe220103EPS7_y: # @_ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE10deallocateB9nqe220103EPS7_y
.seh_proc _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE10deallocateB9nqe220103EPS7_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$4, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB266_1
	jmp	.LBB266_2
.LBB266_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB266_3
.LBB266_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB266_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__destruct_at_endB9nqe220103EPS7_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__destruct_at_endB9nqe220103EPS7_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__destruct_at_endB9nqe220103EPS7_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__destruct_at_endB9nqe220103EPS7_
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__destruct_at_endB9nqe220103EPS7_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
.Lfunc_begin44:
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
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
.LBB268_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB268_4
# %bb.2:                                #   in Loop: Header=BB268_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-16, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp179:                               # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
.Ltmp180:                               # EH_LABEL
	jmp	.LBB268_3
.LBB268_3:                              #   in Loop: Header=BB268_1 Depth=1
	jmp	.LBB268_1
.LBB268_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB268_5:
.Ltmp181:                               # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end44:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table268:
.Lexception44:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase31-.Lttbaseref31
.Lttbaseref31:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end44-.Lcst_begin44
.Lcst_begin44:
	.uleb128 .Ltmp179-.Lfunc_begin44        # >> Call Site 1 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin44        #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
.Lcst_end44:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase31:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_,"xr",discard,_ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_
	.globl	_ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_ # -- Begin function _ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_
	.p2align	4
_ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_: # @_ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_
.seh_proc _ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE,"xr",discard,_ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE
	.globl	_ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE # -- Begin function _ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE
	.p2align	4
_ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE: # @_ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE
.seh_proc _ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movb	%r8b, 39(%rsp)
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %rdx
	callq	_ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB270_1
	jmp	.LBB270_6
.LBB270_1:
	jmp	.LBB270_2
.LBB270_2:                              # =>This Inner Loop Header: Depth=1
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev
	movq	%rax, %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	testb	$1, %al
	jne	.LBB270_3
	jmp	.LBB270_5
.LBB270_3:                              #   in Loop: Header=BB270_2 Depth=1
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %rdx
	callq	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_
# %bb.4:                                #   in Loop: Header=BB270_2 Depth=1
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev
	jmp	.LBB270_2
.LBB270_5:
	jmp	.LBB270_6
.LBB270_6:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_,"xr",discard,_ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	.globl	_ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_ # -- Begin function _ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	4
_ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_: # @_ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
.seh_proc _ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
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
	.def	_ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev,"xr",discard,_ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev
	.globl	_ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev # -- Begin function _ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev
	.p2align	4
_ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev: # @_ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev
.seh_proc _ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$-4, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_,"xr",discard,_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_
	.globl	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_ # -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_
	.p2align	4
_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_: # @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_
.seh_proc _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_,"xr",discard,_ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_
	.globl	_ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_ # -- Begin function _ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_
	.p2align	4
_ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_: # @_ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_
.seh_proc _ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	leaq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_,"xr",discard,_ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.globl	_ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_ # -- Begin function _ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.p2align	4
_ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_: # @_ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
.seh_proc _ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	16(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 4(%rsp)
	movq	8(%rsp), %rax
	movl	(%rax), %ecx
	movq	16(%rsp), %rax
	movl	%ecx, (%rax)
	movl	4(%rsp), %ecx
	movq	8(%rsp), %rax
	movl	%ecx, (%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorC2B9nqe220103ERSA_
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
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB277_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5clearB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y
	nop
.LBB277_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5clearB9nqe220103Ev;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5clearB9nqe220103Ev
_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5clearB9nqe220103Ev: # @_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
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
	.long	.Ltmp183-.Ltmp182               # Subsection size
.Ltmp182:
	.short	.Ltmp185-.Ltmp184               # Record length
.Ltmp184:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp185:
	.short	.Ltmp187-.Ltmp186               # Record length
.Ltmp186:
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
.Ltmp187:
.Ltmp183:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorE
	.addrsig_sym _ZZN6apollo3mir8borrowck20terminatorSuccessorsERKNS0_10TerminatorEENK3$_0clEj
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPKjEEbRKNS_11__wrap_iterIT_EES7_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE6resizeEy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__1eqB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPjEdeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
	.addrsig_sym _ZNSt3__111__wrap_iterIPjEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir14BasicBlockDataENS_9allocatorIS3_EEE5emptyB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE9push_backB9nqe220103EOS7_
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5emptyB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4backB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8pop_backB9nqe220103Ev
	.addrsig_sym _ZNSt3__17reverseB9nqe220103INS_11__wrap_iterIPjEEEEvT_S4_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
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
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZdlPv
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
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
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
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_6vectorIjNS1_IjEEEEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E10__set_dataB9nqe220103EPS5_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E17__set_valid_rangeB9nqe220103EPS5_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferINS_6vectorIjNS_9allocatorIjEEEENS3_IS5_EES0_EES5_S6_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEPT_NS_15__element_countEy
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
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
	.addrsig_sym _ZNSt3__19allocatorINS_6vectorIjNS0_IjEEEEE10deallocateB9nqe220103EPS3_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103INS_6vectorIjNS_9allocatorIjEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE22__base_destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPj
	.addrsig_sym _ZNKSt3__111__wrap_iterIPjE4baseB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIjE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj
	.addrsig_sym _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj
	.addrsig_sym _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESE_
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE11__vallocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE18__construct_at_endEyRKS7_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorNS_9allocatorIS8_EEE16__destroy_vectorEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	.addrsig_sym _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_NS_15__element_countEy
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEEEvPKvSB_SB_SB_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEPT_S9_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE9constructB9nqe220103IS8_JRKS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SG_DpOSH_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorJRKS7_EPS7_EEPT_SC_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE5clearB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE10deallocateB9nqe220103ERS9_PS8_y
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5ColorEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPT_
	.addrsig_sym _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorE10deallocateB9nqe220103EPS7_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5ColorEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EEE12emplace_backIJS8_EEERS8_DpOT_EUlvE_ZNSC_IJS8_EEESD_SG_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE12emplace_backIJS7_EEERS7_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE30__emplace_back_assume_capacityB9nqe220103IJS7_EEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE9constructB9nqe220103IS8_JS8_ETnNS_9enable_ifIXnt17__has_construct_vIS9_PT_DpT0_EEiE4typeELi0EEEvRS9_SE_DpOSF_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_S9_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE31__annotate_contiguous_containerB9nqe220103EPKvSC_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEEEvPKvSB_SB_SB_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameJS7_EPS7_EEPT_SA_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE24__emplace_back_slow_pathIJS7_EEEPS7_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_sentinelB9nqe220103EPS8_
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE8max_sizeB9nqe220103IS9_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS9_
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEENS_16allocator_traitsIS9_EEEENS_19__allocation_resultINT0_7pointerENSD_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E10__set_dataB9nqe220103EPS8_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E17__set_valid_rangeB9nqe220103EPS8_SD_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEPT_NS_15__element_countEy
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEPS8_EEvRT_T0_SD_SD_
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS7_S9_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E14__set_capacityB9nqe220103EPS8_
	.addrsig_sym _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE10deallocateB9nqe220103ERS9_PS8_y
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameNS_9allocatorIS8_EES0_EES8_SA_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_
	.addrsig_sym _ZNSt3__114__split_bufferIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS7_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS3_4BodyEE5FrameEEE7destroyB9nqe220103IS8_TnNS_9enable_ifIXnt15__has_destroy_vIS9_PT_EEiE4typeELi0EEEvRS9_SE_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPT_
	.addrsig_sym _ZNSt3__19allocatorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameE10deallocateB9nqe220103EPS7_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE17__destruct_at_endB9nqe220103EPS7_
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE22__base_destruct_at_endB9nqe220103EPS7_
	.addrsig_sym _ZNSt3__19__reverseB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEES4_EEvT0_T1_
	.addrsig_sym _ZNSt3__114__reverse_implB9nqe220103INS_17_ClassicAlgPolicyENS_11__wrap_iterIPjEEEEvT0_S5_NS_26random_access_iterator_tagE
	.addrsig_sym _ZNSt3__1ltB9nqe220103IPjEEbRKNS_11__wrap_iterIT_EES6_
	.addrsig_sym _ZNSt3__111__wrap_iterIPjEmmB9nqe220103Ev
	.addrsig_sym _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB9nqe220103IRNS_11__wrap_iterIPjEES7_EEvOT_OT0_
	.addrsig_sym _ZNSt3__19iter_swapB9nqe220103INS_11__wrap_iterIPjEES3_EEvT_T0_
	.addrsig_sym _ZNSt3__14swapB9nqe220103IjEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIZN6apollo3mir8borrowck16reversePostorderERKNS2_4BodyEE5FrameNS_9allocatorIS7_EEE5clearB9nqe220103Ev
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
