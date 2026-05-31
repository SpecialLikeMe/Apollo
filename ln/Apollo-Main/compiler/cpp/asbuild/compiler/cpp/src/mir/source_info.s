	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"source_info.cpp"
	.def	_ZNK6apollo3mir10FileSource6lookupEj;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir10FileSource6lookupEj # -- Begin function _ZNK6apollo3mir10FileSource6lookupEj
	.p2align	4
_ZNK6apollo3mir10FileSource6lookupEj:   # @_ZNK6apollo3mir10FileSource6lookupEj
.Lfunc_begin0:
.seh_proc _ZNK6apollo3mir10FileSource6lookupEj
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 120(%rsp)
	movl	%edx, 116(%rsp)
	movq	120(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	addq	$24, %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:
	movl	$1, 128(%rsp)
	movl	$1, 132(%rsp)
	jmp	.LBB0_7
.LBB0_2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$40, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 96(%rsp)
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	movq	%rax, 88(%rsp)
	movq	96(%rsp), %rcx
	movq	88(%rsp), %rdx
.Ltmp0:                                 # EH_LABEL
	leaq	116(%rsp), %r8
	callq	_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_
.Ltmp1:                                 # EH_LABEL
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 104(%rsp)
	addq	$40, %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	movq	%rax, 72(%rsp)
	leaq	104(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	movq	%rax, 80(%rsp)
	cmpq	$0, 80(%rsp)
	jne	.LBB0_5
# %bb.4:
	xorl	%eax, %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	$40, %rcx
	movq	80(%rsp), %rdx
	subq	$1, %rdx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
.LBB0_6:
	movl	36(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 68(%rsp)
	movq	80(%rsp), %rax
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 128(%rsp)
	movl	116(%rsp), %eax
	subl	68(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 132(%rsp)
.LBB0_7:
	movq	128(%rsp), %rax
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB0_8:
.Ltmp2:                                 # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
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
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
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
	.def	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev,"xr",discard,_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
	.globl	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev # -- Begin function _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
	.p2align	4
_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev: # @_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
.seh_proc _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev
	cmpq	$0, %rax
	setne	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_,"xr",discard,_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_
	.globl	_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_ # -- Begin function _ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_
	.p2align	4
_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_: # @_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_
.seh_proc _ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r8
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r9b
	callq	_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
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
	.def	_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE,"xr",discard,_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	.globl	_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE # -- Begin function _ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	.p2align	4
_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE: # @_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE
.seh_proc _ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE
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
	subq	%rcx, %rax
	sarq	$2, %rax
	.seh_startepilogue
	addq	$56, %rsp
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
	.def	_ZNK6apollo3mir10FileSource9line_textEj;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir10FileSource9line_textEj # -- Begin function _ZNK6apollo3mir10FileSource9line_textEj
	.p2align	4
_ZNK6apollo3mir10FileSource9line_textEj: # @_ZNK6apollo3mir10FileSource9line_textEj
.seh_proc _ZNK6apollo3mir10FileSource9line_textEj
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movl	%r8d, 100(%rsp)
	movq	104(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	addq	$24, %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
	testb	$1, %al
	jne	.LBB8_1
	jmp	.LBB8_2
.LBB8_1:
	cmpl	$0, 100(%rsp)
	jne	.LBB8_3
.LBB8_2:
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103Ev
	jmp	.LBB8_10
.LBB8_3:
	cmpl	$1, 100(%rsp)
	jne	.LBB8_5
# %bb.4:
	xorl	%eax, %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	jmp	.LBB8_6
.LBB8_5:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	$40, %rcx
	movl	100(%rsp), %eax
	subl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
.LBB8_6:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 96(%rsp)
	movl	100(%rsp), %eax
	subl	$1, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	addq	$40, %rcx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB8_8
# %bb.7:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	$40, %rcx
	movl	100(%rsp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	movl	(%rax), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB8_9
.LBB8_8:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
.LBB8_9:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 92(%rsp)
	addq	$24, %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movl	96(%rsp), %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rdx
	movl	92(%rsp), %eax
	subl	96(%rsp), %eax
	movl	%eax, %eax
	movl	%eax, %r8d
	callq	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy
.LBB8_10:
	movq	72(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$120, %rsp
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
	.def	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev,"xr",discard,_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
	.globl	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev # -- Begin function _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
	.p2align	4
_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev: # @_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
.seh_proc _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
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
	jne	.LBB12_1
	jmp	.LBB12_2
.LBB12_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB12_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
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
	.def	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy,"xr",discard,_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy
	.globl	_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy # -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy
	.p2align	4
_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy: # @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy
.seh_proc _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe220103EPKcy
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
	.def	_ZN6apollo3mir9SourceMap8add_fileENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrIKS8_EE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir9SourceMap8add_fileENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrIKS8_EE # -- Begin function _ZN6apollo3mir9SourceMap8add_fileENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrIKS8_EE
	.p2align	4
_ZN6apollo3mir9SourceMap8add_fileENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrIKS8_EE: # @_ZN6apollo3mir9SourceMap8add_fileENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrIKS8_EE
.Lfunc_begin1:
.seh_proc _ZN6apollo3mir9SourceMap8add_fileENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrIKS8_EE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 160(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	96(%rsp), %rcx
	callq	_ZN6apollo3mir10FileSourceC2Ev
	movq	56(%rsp), %rdx                  # 8-byte Reload
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	movq	64(%rsp), %rdx                  # 8-byte Reload
	leaq	96(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_
	leaq	96(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_10
.LBB15_1:
	movl	$0, 92(%rsp)
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	movl	92(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	96(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
	movq	%rax, %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB15_9
# %bb.3:                                #   in Loop: Header=BB15_2 Depth=1
	leaq	96(%rsp), %rcx
	addq	$24, %rcx
	callq	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev
	movq	%rax, %rcx
	movl	92(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey
	movsbl	(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB15_7
# %bb.4:                                #   in Loop: Header=BB15_2 Depth=1
	leaq	136(%rsp), %rcx
.Ltmp5:                                 # EH_LABEL
	leaq	92(%rsp), %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
.Ltmp6:                                 # EH_LABEL
	jmp	.LBB15_5
.LBB15_5:                               #   in Loop: Header=BB15_2 Depth=1
	jmp	.LBB15_7
.LBB15_6:
.Ltmp7:                                 # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 80(%rsp)
	movl	%eax, 76(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZN6apollo3mir10FileSourceD2Ev
	jmp	.LBB15_12
.LBB15_7:                               #   in Loop: Header=BB15_2 Depth=1
	jmp	.LBB15_8
.LBB15_8:                               #   in Loop: Header=BB15_2 Depth=1
	movl	92(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB15_2
.LBB15_9:
	jmp	.LBB15_10
.LBB15_10:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 72(%rsp)
.Ltmp3:                                 # EH_LABEL
	leaq	96(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.Ltmp4:                                 # EH_LABEL
	jmp	.LBB15_11
.LBB15_11:
	movl	72(%rsp), %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	96(%rsp), %rcx
	callq	_ZN6apollo3mir10FileSourceD2Ev
	movl	36(%rsp), %eax                  # 4-byte Reload
	.seh_startepilogue
	addq	$184, %rsp
	.seh_endepilogue
	retq
.LBB15_12:
	movq	80(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table15:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp4-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp4
	.uleb128 .Ltmp7-.Lfunc_begin1           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN6apollo3mir10FileSourceC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir10FileSourceC2Ev,"xr",discard,_ZN6apollo3mir10FileSourceC2Ev
	.globl	_ZN6apollo3mir10FileSourceC2Ev  # -- Begin function _ZN6apollo3mir10FileSourceC2Ev
	.p2align	4
_ZN6apollo3mir10FileSourceC2Ev:         # @_ZN6apollo3mir10FileSourceC2Ev
.seh_proc _ZN6apollo3mir10FileSourceC2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	callq	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$40, %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103Ev
	nop
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
	.def	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_,"xr",discard,_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_
	.globl	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_ # -- Begin function _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_
	.p2align	4
_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_: # @_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_
.seh_proc _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rdx
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_
	movq	32(%rsp), %rdx                  # 8-byte Reload
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev
	.globl	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev: # @_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev
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
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	addq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
# %bb.2:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
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
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$6, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir10FileSourceD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir10FileSourceD2Ev,"xr",discard,_ZN6apollo3mir10FileSourceD2Ev
	.globl	_ZN6apollo3mir10FileSourceD2Ev  # -- Begin function _ZN6apollo3mir10FileSourceD2Ev
	.p2align	4
_ZN6apollo3mir10FileSourceD2Ev:         # @_ZN6apollo3mir10FileSourceD2Ev
.seh_proc _ZN6apollo3mir10FileSourceD2Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	addq	$40, %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	callq	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo3mir9SourceMap4fileEj;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir9SourceMap4fileEj # -- Begin function _ZNK6apollo3mir9SourceMap4fileEj
	.p2align	4
_ZNK6apollo3mir9SourceMap4fileEj:       # @_ZNK6apollo3mir9SourceMap4fileEj
.seh_proc _ZNK6apollo3mir9SourceMap4fileEj
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movl	%edx, 52(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	52(%rsp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB25_2
# %bb.1:
	movq	$0, 64(%rsp)
	jmp	.LBB25_3
.LBB25_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	52(%rsp), %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey
	movq	%rax, 64(%rsp)
.LBB25_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rsp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE # -- Begin function _ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE
	.p2align	4
_ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE: # @_ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE
.seh_proc _ZNK6apollo3mir9SourceMap6lookupENS0_4SpanE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rcx
	movl	(%rdx), %edx
	callq	_ZNK6apollo3mir9SourceMap4fileEj
	movq	%rax, 40(%rsp)
	cmpq	$0, 40(%rsp)
	jne	.LBB27_2
# %bb.1:
	movl	$1, 64(%rsp)
	movl	$1, 68(%rsp)
	jmp	.LBB27_3
.LBB27_2:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx
	movl	4(%rax), %edx
	callq	_ZNK6apollo3mir10FileSource6lookupEj
	movq	%rax, 64(%rsp)
.LBB27_3:
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_,"xr",discard,_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_
	.globl	_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_ # -- Begin function _ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_
	.p2align	4
_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_: # @_ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_
.seh_proc _ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movb	%r9b, 79(%rsp)
	movq	%r8, 64(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %r8
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	79(%rsp), %r9
	leaq	47(%rsp), %rax
	movq	%rax, 32(%rsp)
	callq	_ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rax
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_,"xr",discard,_ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_
	.globl	_ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_ # -- Begin function _ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_
	.p2align	4
_ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_: # @_ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_
.seh_proc _ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	176(%rsp), %rax
	movq	%rcx, 120(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%r8, 104(%rsp)
	movq	%r9, 96(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	72(%rsp), %rdx
	callq	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_
	movq	%rax, 88(%rsp)
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, 88(%rsp)
	je	.LBB29_6
# %bb.2:                                #   in Loop: Header=BB29_1 Depth=1
	movq	88(%rsp), %rcx
	callq	_ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rdx
	leaq	120(%rsp), %rcx
	callq	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE
	movq	%rax, 56(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	56(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_
	testb	$1, %al
	jne	.LBB29_3
	jmp	.LBB29_4
.LBB29_3:                               #   in Loop: Header=BB29_1 Depth=1
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB29_5
.LBB29_4:                               #   in Loop: Header=BB29_1 Depth=1
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	movq	(%rax), %rax
	movq	%rax, 120(%rsp)
	movq	64(%rsp), %rcx
	addq	$1, %rcx
	movq	88(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 88(%rsp)
.LBB29_5:                               #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_1
.LBB29_6:
	movq	120(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	128(%rsp), %rax
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_,"xr",discard,_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_
	.globl	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_ # -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_
	.p2align	4
_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_: # @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_
.seh_proc _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_
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
	callq	_ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_,"xr",discard,_ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_
	.globl	_ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_ # -- Begin function _ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_
	.p2align	4
_ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_: # @_ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_
.seh_proc _ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	shrq	%rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE,"xr",discard,_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE
	.globl	_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE # -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE
	.p2align	4
_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE: # @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE
.seh_proc _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	callq	_ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_,"xr",discard,_ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_
	.globl	_ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_ # -- Begin function _ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_
	.p2align	4
_ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_: # @_ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_
.seh_proc _ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_
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
	callq	_ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_,"xr",discard,_ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_
	.globl	_ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_ # -- Begin function _ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_
	.p2align	4
_ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_: # @_ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_
.seh_proc _ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_
	nop
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
	.def	_ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_,"xr",discard,_ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_
	.globl	_ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_ # -- Begin function _ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_
	.p2align	4
_ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_: # @_ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_
.seh_proc _ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_
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
	callq	_ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_,"xr",discard,_ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_
	.globl	_ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_ # -- Begin function _ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_
	.p2align	4
_ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_: # @_ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_
.seh_proc _ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE,"xr",discard,_ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE
	.globl	_ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE # -- Begin function _ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE
	.p2align	4
_ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE: # @_ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE
.seh_proc _ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_
	movq	40(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_,"xr",discard,_ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_
	.globl	_ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_ # -- Begin function _ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_
	.p2align	4
_ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_: # @_ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_
.seh_proc _ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	56(%rsp), %rcx
	callq	_ZNSt3__121__convert_to_integralB9nqe220103Ex
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movb	47(%rsp), %r8b
	callq	_ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE
	nop
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__121__convert_to_integralB9nqe220103Ex;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__121__convert_to_integralB9nqe220103Ex,"xr",discard,_ZNSt3__121__convert_to_integralB9nqe220103Ex
	.globl	_ZNSt3__121__convert_to_integralB9nqe220103Ex # -- Begin function _ZNSt3__121__convert_to_integralB9nqe220103Ex
	.p2align	4
_ZNSt3__121__convert_to_integralB9nqe220103Ex: # @_ZNSt3__121__convert_to_integralB9nqe220103Ex
.seh_proc _ZNSt3__121__convert_to_integralB9nqe220103Ex
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
	.def	_ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE,"xr",discard,_ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE
	.globl	_ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE # -- Begin function _ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE
	.p2align	4
_ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE: # @_ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE
.seh_proc _ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movb	%r8b, 55(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	movq	40(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex,"xr",discard,_ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex
	.globl	_ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex # -- Begin function _ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex
	.p2align	4
_ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex: # @_ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex
.seh_proc _ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	shlq	$2, %rcx
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_,"xr",discard,_ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_
	.globl	_ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_ # -- Begin function _ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_
	.p2align	4
_ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_: # @_ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_
.seh_proc _ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	movq	(%rsp), %rcx
	cmpl	(%rcx), %eax
	setb	%al
	andb	$1, %al
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_,"xr",discard,_ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_
	.globl	_ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_ # -- Begin function _ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_
	.p2align	4
_ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_: # @_ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_
.seh_proc _ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	(%rsp), %rax
	.seh_startepilogue
	addq	$16, %rsp
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
	jne	.LBB54_1
	jmp	.LBB54_2
.LBB54_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB54_3
.LBB54_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB54_3:
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
.Lfunc_begin2:
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
.Ltmp8:                                 # EH_LABEL
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp9:                                 # EH_LABEL
	jmp	.LBB58_1
.LBB58_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB58_2:
.Ltmp10:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table58:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp8-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin2          #     jumps to .Ltmp10
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev,"xr",discard,_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev
	.globl	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev # -- Begin function _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev
	.p2align	4
_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev: # @_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev
.seh_proc _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103Ev
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
.Lfunc_begin3:
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
.Ltmp11:                                # EH_LABEL
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
.Ltmp12:                                # EH_LABEL
	jmp	.LBB62_1
.LBB62_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB62_2:
.Ltmp13:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end3:
	.seh_handlerdata
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table62:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp11-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin3          #     jumps to .Ltmp13
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
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
	jne	.LBB64_1
	jmp	.LBB64_2
.LBB64_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB64_3
.LBB64_2:
	movl	$23, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB64_3
.LBB64_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
	.seh_startepilogue
	addq	$56, %rsp
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
.Lfunc_begin4:
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
	jne	.LBB66_1
	jmp	.LBB66_4
.LBB66_1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
.Ltmp14:                                # EH_LABEL
	leaq	88(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repC2B9nqe220103ENS5_7__shortE
.Ltmp15:                                # EH_LABEL
	jmp	.LBB66_2
.LBB66_2:
.Ltmp16:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	88(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE23__reset_internal_bufferB9nqe220103ENS5_5__repE
.Ltmp17:                                # EH_LABEL
	jmp	.LBB66_3
.LBB66_3:
	jmp	.LBB66_4
.LBB66_4:
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
	je	.LBB66_7
# %bb.5:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB66_7
# %bb.6:
	movq	112(%rsp), %rcx
	movq	56(%rsp), %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB9nqe220103Ey
	jmp	.LBB66_8
.LBB66_7:
	movq	112(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
.LBB66_8:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	testb	$1, %al
	jne	.LBB66_11
# %bb.9:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 112(%rsp)
	je	.LBB66_11
# %bb.10:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB66_11:
	.seh_startepilogue
	addq	$136, %rsp
	.seh_endepilogue
	retq
.LBB66_12:
.Ltmp18:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end4:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table66:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp14-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp17-.Ltmp14                #   Call between .Ltmp14 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin4          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
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
	jne	.LBB68_1
	jmp	.LBB68_2
.LBB68_1:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB9nqe220103ERS2_Pcy
.LBB68_2:
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
	jne	.LBB77_1
	jmp	.LBB77_2
.LBB77_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB77_3
.LBB77_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB77_3:
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
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB9nqe220103Ey
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	cmpq	$23, (%rsp)
	setb	%al
	andb	$1, %al
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
	je	.LBB83_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
	jmp	.LBB83_4
.LBB83_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
.LBB83_4:
	jmp	.LBB83_5
.LBB83_5:
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
.Lfunc_begin5:
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
.Ltmp19:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
.Ltmp20:                                # EH_LABEL
	jmp	.LBB86_1
.LBB86_1:
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
.LBB86_2:
.Ltmp21:                                # EH_LABEL
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
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table86:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp19-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin5          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
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
	je	.LBB90_2
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
.LBB90_2:
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
.Lfunc_begin6:
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
.Ltmp22:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp23:                                # EH_LABEL
	jmp	.LBB91_1
.LBB91_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB91_2:
.Ltmp24:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table91:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp22-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin6          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
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
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin7:
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
.Ltmp25:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp26:                                # EH_LABEL
	jmp	.LBB98_1
.LBB98_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB98_2:
.Ltmp27:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table98:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp25-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin7          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
.Lcst_end7:
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_ # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
.Lfunc_begin8:
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
.Ltmp28:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
.Ltmp29:                                # EH_LABEL
	jmp	.LBB99_1
.LBB99_1:
	movq	96(%rsp), %rdx
	addq	$4, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp30:                                # EH_LABEL
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
.Ltmp31:                                # EH_LABEL
	jmp	.LBB99_2
.LBB99_2:
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
.LBB99_3:
.Ltmp32:                                # EH_LABEL
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
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_,"dr"
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
	.uleb128 .Ltmp28-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp28                #   Call between .Ltmp28 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin8          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp31            #   Call between .Ltmp31 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
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
	jbe	.LBB100_2
# %bb.1:
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
.LBB100_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB100_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB100_5
.LBB100_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB100_5:
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
	jbe	.LBB101_2
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
.LBB101_2:
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
	je	.LBB105_2
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
.LBB105_2:
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
.Lfunc_begin9:
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
.Ltmp33:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp34:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB106_1
.LBB106_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB106_2:
.Ltmp35:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table106:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp33-.Lfunc_begin9          # >> Call Site 1 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin9          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
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
	jne	.LBB112_1
	jmp	.LBB112_2
.LBB112_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB112_3
.LBB112_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB112_3:
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
.Lfunc_begin10:
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
.Ltmp36:                                # EH_LABEL
	callq	_ZNSt12length_errorC2B9nqe220103EPKc
.Ltmp37:                                # EH_LABEL
	jmp	.LBB117_1
.LBB117_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB117_2:
.Ltmp38:                                # EH_LABEL
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
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB9nqe220103EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table117:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Lfunc_begin10         #   Call between .Lfunc_begin10 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin10         #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp37           #   Call between .Ltmp37 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
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
	jne	.LBB119_1
	jmp	.LBB119_2
.LBB119_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB119_3
.LBB119_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB119_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
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
	jbe	.LBB127_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB127_2:
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
	.def	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin11:
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
.Ltmp39:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp40:                                # EH_LABEL
	jmp	.LBB131_1
.LBB131_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB131_2:
.Ltmp41:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table131:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp39-.Lfunc_begin11         # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin11         #     jumps to .Ltmp41
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
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
.Lfunc_begin12:
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
.Ltmp42:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
.Ltmp43:                                # EH_LABEL
	jmp	.LBB135_1
.LBB135_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB135_2:
.Ltmp44:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table135:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp42-.Lfunc_begin12         # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin12         #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase8:
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
.Lfunc_begin13:
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
.LBB143_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB143_4
# %bb.2:                                #   in Loop: Header=BB143_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-4, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp45:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
.Ltmp46:                                # EH_LABEL
	jmp	.LBB143_3
.LBB143_3:                              #   in Loop: Header=BB143_1 Depth=1
	jmp	.LBB143_1
.LBB143_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB143_5:
.Ltmp47:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table143:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp45-.Lfunc_begin13         # >> Call Site 1 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin13         #     jumps to .Ltmp47
	.byte	1                               #   On action: 1
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
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
	jne	.LBB147_1
	jmp	.LBB147_2
.LBB147_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB147_3
.LBB147_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB147_3:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
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
	callq	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	96(%rsp), %rax
	addq	$-64, %rax
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_,"xr",discard,_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.globl	_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_ # -- Begin function _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.p2align	4
_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_: # @_ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
.seh_proc _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
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
	je	.LBB149_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	jmp	.LBB149_4
.LBB149_3:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.LBB149_4:
	jmp	.LBB149_5
.LBB149_5:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.globl	_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv: # @_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	addq	$64, %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv,"xr",discard,_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.globl	_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv # -- Begin function _ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.p2align	4
_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv: # @_ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
.seh_proc _ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
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
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
.Lfunc_begin14:
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
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
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	88(%rsp), %r8
.Ltmp48:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp49:                                # EH_LABEL
	jmp	.LBB152_1
.LBB152_1:
	movq	72(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB152_2:
.Ltmp50:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table152:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp48-.Lfunc_begin14         # >> Call Site 1 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin14         #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin14         # >> Call Site 2 <<
	.uleb128 .Lfunc_end14-.Ltmp49           #   Call between .Ltmp49 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionC2B9nqe220103ERS6_y
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
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	(%rax), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_,"xr",discard,_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	.globl	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_ # -- Begin function _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	.p2align	4
_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_: # @_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
.seh_proc _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
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
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE21_ConstructTransactionD2B9nqe220103Ev
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
	je	.LBB156_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$6, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	nop
.LBB156_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
.Lfunc_begin15:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	shlq	$6, %rax
	addq	%rax, %r8
	movq	72(%rsp), %rax
	shlq	$6, %rax
	addq	%rax, %r8
.Ltmp51:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp52:                                # EH_LABEL
	jmp	.LBB157_1
.LBB157_1:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB157_2:
.Ltmp53:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table157:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp51-.Lfunc_begin15         # >> Call Site 1 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin15         #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_ # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shlq	$6, %rax
	addq	%rax, %rdx
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	callq	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_,"xr",discard,_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_
	.globl	_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_ # -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_
	.p2align	4
_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_: # @_ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_
.seh_proc _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_
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
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$6, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_,"xr",discard,_ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	.globl	_ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_ # -- Begin function _ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	.p2align	4
_ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_: # @_ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
.seh_proc _ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZN6apollo3mir10FileSourceC2EOS1_
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir10FileSourceC2EOS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN6apollo3mir10FileSourceC2EOS1_,"xr",discard,_ZN6apollo3mir10FileSourceC2EOS1_
	.globl	_ZN6apollo3mir10FileSourceC2EOS1_ # -- Begin function _ZN6apollo3mir10FileSourceC2EOS1_
	.p2align	4
_ZN6apollo3mir10FileSourceC2EOS1_:      # @_ZN6apollo3mir10FileSourceC2EOS1_
.seh_proc _ZN6apollo3mir10FileSourceC2EOS1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$24, %rcx
	movq	40(%rsp), %rdx
	addq	$24, %rdx
	callq	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$40, %rcx
	movq	40(%rsp), %rdx
	addq	$40, %rdx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_
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
.Lfunc_begin16:
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
	jmp	.LBB165_1
.LBB165_1:
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
	jne	.LBB165_3
# %bb.2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	nop
.LBB165_3:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
.LBB165_4:
.Ltmp56:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
	.seh_endproc
	.section	.xdata$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table165:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp54-.Lfunc_begin16         # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin16         #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp55-.Lfunc_begin16         # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp55           #   Call between .Ltmp55 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103EOS5_
                                        # -- End function
	.def	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_,"xr",discard,_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_
	.globl	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_ # -- Begin function _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_
	.p2align	4
_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_: # @_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_
.seh_proc _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B9nqe220103EOS8_
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
	movq	(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	(%rsp), %rax
	movq	$0, (%rax)
	movq	(%rsp), %rax
	movq	$0, 8(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_ # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_: # @_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEEC2B9nqe220103EOS3_
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
	jne	.LBB168_2
# %bb.1:
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
.LBB168_2:
	movq	40(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
.Lfunc_begin17:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	shlq	$6, %rax
	addq	%rax, %r8
.Ltmp57:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp58:                                # EH_LABEL
	jmp	.LBB169_1
.LBB169_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB169_2:
.Ltmp59:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table169:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp57-.Lfunc_begin17         # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin17         #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_ # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
.Lfunc_begin18:
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	movq	%rdx, 136(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	incq	%rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	addq	$16, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	movq	64(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	136(%rsp), %r8
.Ltmp60:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp61:                                # EH_LABEL
	jmp	.LBB170_1
.LBB170_1:
	movq	96(%rsp), %rdx
	addq	$64, %rdx
	movq	%rdx, 96(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
.Ltmp62:                                # EH_LABEL
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.Ltmp63:                                # EH_LABEL
	jmp	.LBB170_2
.LBB170_2:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	movq	32(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	.seh_endepilogue
	retq
.LBB170_3:
.Ltmp64:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
	leaq	104(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.4:
	movq	88(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table170:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Lfunc_begin18         #   Call between .Lfunc_begin18 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin18         # >> Call Site 2 <<
	.uleb128 .Ltmp63-.Ltmp60                #   Call between .Ltmp60 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin18         #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin18         # >> Call Site 3 <<
	.uleb128 .Lfunc_end18-.Ltmp63           #   Call between .Ltmp63 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jbe	.LBB171_2
# %bb.1:
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.LBB171_2:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jb	.LBB171_4
# %bb.3:
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB171_5
.LBB171_4:
	movq	48(%rsp), %rax
	shlq	%rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	_ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
.LBB171_5:
	movq	80(%rsp), %rax
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_: # @_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEC2EyyRS5_
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	cmpq	$0, 88(%rsp)
	jbe	.LBB172_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, %rdx
	movq	88(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB172_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
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
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %r8
	movq	88(%rsp), %rax                  # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r8, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	104(%rsp), %rdx
	callq	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	movq	104(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	movq	88(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	nop
	.seh_startepilogue
	addq	$120, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev: # @_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEED2Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	cmpq	$0, %rax
	je	.LBB176_2
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y
	nop
.LBB176_2:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
.Lfunc_begin19:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB9nqe220103Ev
	movq	%rax, 48(%rsp)
.Ltmp65:                                # EH_LABEL
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
.Ltmp66:                                # EH_LABEL
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB177_1
.LBB177_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB177_2:
.Ltmp67:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table177:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp65-.Lfunc_begin19         # >> Call Site 1 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin19         #     jumps to .Ltmp67
	.byte	1                               #   On action: 1
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB9nqe220103EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	callq	_ZNSt3__114numeric_limitsIyE3maxB9nqe220103Ev
	shrq	$6, %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_EC2B9nqe220103ERKS6_
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
	.def	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y,"xr",discard,_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.globl	_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y # -- Begin function _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.p2align	4
_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: # @_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
.seh_proc _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
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
	callq	_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	(%rsp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey,"xr",discard,_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey
	.globl	_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey # -- Begin function _ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey
	.p2align	4
_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey: # @_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey
.seh_proc _ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB187_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB9nqe220103v
.LBB187_2:
	movq	40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y,"xr",discard,_ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y
	.globl	_ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y # -- Begin function _ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y
	.p2align	4
_ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y: # @_ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y
.seh_proc _ZNSt3__119__allocation_resultIPN6apollo3mir10FileSourceEyEC2B9nqe220103ES4_y
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
	.def	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy,"xr",discard,_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy
	.globl	_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy # -- Begin function _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy
	.p2align	4
_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy: # @_ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy
.seh_proc _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$6, %rax
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
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
.Lfunc_begin20:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	shlq	$6, %rax
	addq	%rax, %r8
.Ltmp68:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp69:                                # EH_LABEL
	jmp	.LBB190_1
.LBB190_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB190_2:
.Ltmp70:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end20:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table190:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp68-.Lfunc_begin20         # >> Call Site 1 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin20         #     jumps to .Ltmp70
	.byte	1                               #   On action: 1
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
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
	.def	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
	.globl	_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_ # -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
	.p2align	4
_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_: # @_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
.Lfunc_begin21:
.seh_proc _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
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
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	movq	152(%rsp), %rax
	movq	%rax, 64(%rsp)
.LBB192_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB192_5
# %bb.2:                                #   in Loop: Header=BB192_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	64(%rsp), %r8
.Ltmp73:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
.Ltmp74:                                # EH_LABEL
	jmp	.LBB192_3
.LBB192_3:                              #   in Loop: Header=BB192_1 Depth=1
	movq	64(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 64(%rsp)
	movq	136(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB192_1
.LBB192_4:
.Ltmp75:                                # EH_LABEL
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
	jmp	.LBB192_7
.LBB192_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev
	movq	160(%rsp), %rcx
	movq	152(%rsp), %rdx
	movq	144(%rsp), %r8
.Ltmp71:                                # EH_LABEL
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_
.Ltmp72:                                # EH_LABEL
	jmp	.LBB192_6
.LBB192_6:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
	nop
	.seh_startepilogue
	addq	$168, %rsp
	.seh_endepilogue
	retq
.LBB192_7:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end21:
	.seh_handlerdata
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
	.seh_endproc
	.section	.xdata$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table192:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp73-.Lfunc_begin21         #   Call between .Lfunc_begin21 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin21         # >> Call Site 2 <<
	.uleb128 .Ltmp72-.Ltmp73                #   Call between .Ltmp73 and .Ltmp72
	.uleb128 .Ltmp75-.Lfunc_begin21         #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin21         # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp72           #   Call between .Ltmp72 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_,"xr",discard,_ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
                                        # -- End function
	.def	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE,"xr",discard,_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.globl	_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE # -- Begin function _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.p2align	4
_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE: # @_ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
.seh_proc _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx
	callq	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.globl	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey # -- Begin function _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.p2align	4
_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey: # @_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
.Lfunc_begin22:
.seh_proc _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	movq	56(%rsp), %rax
	shlq	$6, %rax
	addq	%rax, %r8
.Ltmp76:                                # EH_LABEL
	callq	_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
.Ltmp77:                                # EH_LABEL
	jmp	.LBB194_1
.LBB194_1:
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB194_2:
.Ltmp78:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end22:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table194:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp76-.Lfunc_begin22         # >> Call Site 1 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin22         #     jumps to .Ltmp78
	.byte	1                               #   On action: 1
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey,"xr",discard,_ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_,"xr",discard,_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.globl	_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_ # -- Begin function _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.p2align	4
_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_: # @_ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
.seh_proc _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
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
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_
	movq	40(%rsp), %rax                  # 8-byte Reload
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
	.p2align	4
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EC2B9nqe220103ERS5_RS6_S9_
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
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev
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
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
.LBB198_1:                              # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	je	.LBB198_4
# %bb.2:                                #   in Loop: Header=BB198_1 Depth=1
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB198_1 Depth=1
	movq	40(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB198_1
.LBB198_4:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
.Lfunc_begin23:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB199_3
# %bb.1:
.Ltmp79:                                # EH_LABEL
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev
.Ltmp80:                                # EH_LABEL
	jmp	.LBB199_2
.LBB199_2:
	jmp	.LBB199_3
.LBB199_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB199_4:
.Ltmp81:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end23:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table199:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp79-.Lfunc_begin23         # >> Call Site 1 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin23         #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEC2B9nqe220103ES8_
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
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_,"xr",discard,_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_
	.globl	_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_ # -- Begin function _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_
	.p2align	4
_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_: # @_ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_
.seh_proc _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN6apollo3mir10FileSourceD2Ev
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev
	.p2align	4
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev
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
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.p2align	4
_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB204_1:                              # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	testb	$1, %al
	jne	.LBB204_2
	jmp	.LBB204_4
.LBB204_2:                              #   in Loop: Header=BB204_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
# %bb.3:                                #   in Loop: Header=BB204_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev
	jmp	.LBB204_1
.LBB204_4:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_ # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_: # @_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEC2B9nqe220103ES4_
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
	.def	_ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE,"xr",discard,_ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.globl	_ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE # -- Begin function _ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.p2align	4
_ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE: # @_ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
.seh_proc _ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$-64, %rax
	movq	%rax, (%rsp)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev
	.globl	_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev # -- Begin function _ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev
	.p2align	4
_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev: # @_ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev
.seh_proc _ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	addq	$-64, %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev
	.globl	_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev
	.p2align	4
_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev: # @_ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
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
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
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
	.def	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_,"xr",discard,_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.globl	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_ # -- Begin function _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.p2align	4
_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_: # @_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
.seh_proc _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
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
	.def	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev: # @_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y
	.p2align	4
_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y: # @_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y
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
	callq	_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev,"xr",discard,_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.globl	_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev # -- Begin function _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.p2align	4
_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev: # @_ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
.seh_proc _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	24(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$6, %rax
	.seh_startepilogue
	popq	%rcx
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_ # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_: # @_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.globl	_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE # -- Begin function _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.p2align	4
_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE: # @_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
.Lfunc_begin24:
.seh_proc _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
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
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	movq	%rax, 56(%rsp)
.LBB217_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	je	.LBB217_4
# %bb.2:                                #   in Loop: Header=BB217_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	addq	$-64, %rcx
	movq	%rcx, 56(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp82:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
.Ltmp83:                                # EH_LABEL
	jmp	.LBB217_3
.LBB217_3:                              #   in Loop: Header=BB217_1 Depth=1
	jmp	.LBB217_1
.LBB217_4:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	callq	_ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	nop
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
.LBB217_5:
.Ltmp84:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end24:
	.seh_handlerdata
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.seh_endproc
	.section	.xdata$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table217:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp82-.Lfunc_begin24         # >> Call Site 1 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin24         #     jumps to .Ltmp84
	.byte	1                               #   On action: 1
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE,"xr",discard,_ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
                                        # -- End function
	.def	_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y,"xr",discard,_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y
	.globl	_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y # -- Begin function _ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y
	.p2align	4
_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y: # @_ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y
.seh_proc _ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y
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
	callq	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy,"xr",discard,_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.globl	_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy # -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.p2align	4
_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy: # @_ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
.seh_proc _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rax
	shlq	$6, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB9nqe220103Ey
	testb	$1, %al
	jne	.LBB219_1
	jmp	.LBB219_2
.LBB219_1:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	jmp	.LBB219_3
.LBB219_2:
	movq	64(%rsp), %rcx
	callq	_ZdlPv
	nop
.LBB219_3:
	.seh_startepilogue
	addq	$72, %rsp
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
.Lfunc_begin25:
.seh_proc _ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp85:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B9nqe220103ERS3_
.Ltmp86:                                # EH_LABEL
	jmp	.LBB220_1
.LBB220_1:
.Ltmp87:                                # EH_LABEL
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
.Ltmp88:                                # EH_LABEL
	jmp	.LBB220_2
.LBB220_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
.LBB220_3:
.Ltmp89:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end25:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table220:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp85-.Lfunc_begin25         # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Ltmp85                #   Call between .Ltmp85 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin25         #     jumps to .Ltmp89
	.byte	1                               #   On action: 1
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEED2B9nqe220103Ev
                                        # -- End function
	.def	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev,"xr",discard,_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev
	.globl	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev # -- Begin function _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev
	.p2align	4
_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev: # @_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev
.seh_proc _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEED2B9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpq	$0, 8(%rax)
	je	.LBB221_2
# %bb.1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	callq	_ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev
	nop
.LBB221_2:
	.seh_startepilogue
	addq	$56, %rsp
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
	je	.LBB223_2
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
.LBB223_2:
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
	.def	_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.globl	_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj # -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.p2align	4
_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj: # @_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
.Lfunc_begin26:
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
.LBB225_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB225_4
# %bb.2:                                #   in Loop: Header=BB225_1 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-4, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp90:                                # EH_LABEL
	callq	_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
.Ltmp91:                                # EH_LABEL
	jmp	.LBB225_3
.LBB225_3:                              #   in Loop: Header=BB225_1 Depth=1
	jmp	.LBB225_1
.LBB225_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
.LBB225_5:
.Ltmp92:                                # EH_LABEL
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end26:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table225:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp90-.Lfunc_begin26         # >> Call Site 1 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin26         #     jumps to .Ltmp92
	.byte	1                               #   On action: 1
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj,"xr",discard,_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
                                        # -- End function
	.def	_ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev,"xr",discard,_ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev
	.globl	_ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev # -- Begin function _ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev
	.p2align	4
_ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev: # @_ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev
.seh_proc _ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev
	testb	$1, %al
	jne	.LBB226_1
	jmp	.LBB226_2
.LBB226_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__119__shared_weak_count14__release_weakEv
	nop
.LBB226_2:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev,"xr",discard,_ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev
	.globl	_ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev # -- Begin function _ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev
	.p2align	4
_ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev: # @_ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev
.seh_proc _ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	addq	$8, %rcx
	callq	_ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_
	cmpl	$-1, %eax
	jne	.LBB227_2
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	callq	*16(%rax)
	movb	$1, 55(%rsp)
	jmp	.LBB227_3
.LBB227_2:
	movb	$0, 55(%rsp)
.LBB227_3:
	movb	55(%rsp), %al
	andb	$1, %al
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_,"xr",discard,_ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_
	.globl	_ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_ # -- Begin function _ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_
	.p2align	4
_ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_: # @_ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_
.seh_proc _ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rdx
	movl	$-1, 4(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, %eax
	lock		xaddl	%eax, (%rdx)
	addl	%ecx, %eax
	movl	%eax, (%rsp)
	movl	(%rsp), %eax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev,"xr",discard,_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev
	.globl	_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev # -- Begin function _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev
	.p2align	4
_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev: # @_ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev
.seh_proc _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev
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
	.def	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_,"xr",discard,_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_
	.globl	_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_ # -- Begin function _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_
	.p2align	4
_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_: # @_ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_
.seh_proc _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rcx
	movq	40(%rsp), %rdx
	addq	$8, %rdx
	callq	_ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_,"xr",discard,_ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_
	.globl	_ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_ # -- Begin function _ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_
	.p2align	4
_ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_: # @_ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_
.seh_proc _ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	8(%rsp), %rax
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_,"xr",discard,_ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.globl	_ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_ # -- Begin function _ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.p2align	4
_ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_: # @_ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
.seh_proc _ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	8(%rsp), %rax
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$24, %rsp
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
	.long	.Ltmp94-.Ltmp93                 # Subsection size
.Ltmp93:
	.short	.Ltmp96-.Ltmp95                 # Record length
.Ltmp95:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp96:
	.short	.Ltmp98-.Ltmp97                 # Record length
.Ltmp97:
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
.Ltmp98:
.Ltmp94:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZNK6apollo3mir10FileSource6lookupEj
	.addrsig_sym _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEcvbB9nqe220103Ev
	.addrsig_sym _ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjEET_S5_S5_RKT0_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE5beginB9nqe220103Ev
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE3endB9nqe220103Ev
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt3__1miB9nqe220103IPKjS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEEixB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB9nqe220103EOS5_
	.addrsig_sym _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB9nqe220103EOS8_
	.addrsig_sym _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB9nqe220103ERKj
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE9push_backB9nqe220103EOS3_
	.addrsig_sym _ZNK6apollo3mir9SourceMap4fileEj
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEEixB9nqe220103Ey
	.addrsig_sym _ZNSt3__111upper_boundB9nqe220103INS_11__wrap_iterIPKjEEjNS_6__lessIvvEEEET_S7_S7_RKT0_T1_
	.addrsig_sym _ZNSt3__113__upper_boundB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEENS_11__wrap_iterIPKjEES7_jNS_10__identityEEET1_S9_T2_RKT3_OT0_OT4_
	.addrsig_sym _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE8distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES9_S9_
	.addrsig_sym _ZNSt3__115__half_positiveB9nqe220103IxTnNS_9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEES2_S2_
	.addrsig_sym _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB9nqe220103IRNS_11__wrap_iterIPKjEEEEu14__remove_cvrefIT_EOS9_NS_15iterator_traitsISA_E15difference_typeE
	.addrsig_sym _ZNSt3__18__invokeB9nqe220103IJRNS_6__lessIvvEERKjS5_EEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS7_
	.addrsig_sym _ZNSt3__18__invokeB9nqe220103IJRNS_10__identityERKjEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOS6_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKjEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__111__wrap_iterIPKjEppB9nqe220103Ev
	.addrsig_sym _ZNSt3__18distanceB9nqe220103INS_11__wrap_iterIPKjEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_
	.addrsig_sym _ZNSt3__110__distanceB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEENS_11conditionalIXsr21__is_primary_templateINS_15iterator_traitsIu14__remove_cvrefIS6_EEEEE5valueENS_20incrementable_traitsISB_EESC_E4type15difference_typeES6_S6_
	.addrsig_sym _ZNSt3__14nextB9nqe220103INS_11__wrap_iterIPKjEETnNS_9enable_ifIXsr29__has_input_iterator_categoryIT_EE5valueEiE4typeELi0EEES6_S6_NS_15iterator_traitsIS6_E15difference_typeE
	.addrsig_sym _ZNSt3__17advanceB9nqe220103INS_11__wrap_iterIPKjEExxTnNS_9enable_ifIXsr11is_integralIT1_EE5valueEiE4typeELi0EEEvRT_T0_
	.addrsig_sym _ZNSt3__121__convert_to_integralB9nqe220103Ex
	.addrsig_sym _ZNSt3__19__advanceB9nqe220103INS_11__wrap_iterIPKjEEEEvRT_NS_15iterator_traitsIS5_E15difference_typeENS_26random_access_iterator_tagE
	.addrsig_sym _ZNSt3__111__wrap_iterIPKjEpLB9nqe220103Ex
	.addrsig_sym _ZNKSt3__16__lessIvvEclB9nqe220103IjjEEbRKT_RKT0_
	.addrsig_sym _ZNKSt3__110__identityclB9nqe220103IRKjEEOT_S5_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__make_iterB9nqe220103EPKj
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE26__add_alignment_assumptionB9nqe220103IPjTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPKjE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IKcEEPT_S3_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe220103Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe220103ERS1_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe220103EPKvS7_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB9nqe220103ERS5_NS_17integral_constantIbLb1EEE
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB9nqe220103Ev
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
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_EUlvE_ZNS5_IJS7_EEES8_SB_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRKjEEERjDpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE30__emplace_back_assume_capacityB9nqe220103IJRKjEEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB9nqe220103IjJRKjETnNS_9enable_ifIXnt17__has_construct_vIS2_PT_DpT0_EEiE4typeELi0EEEvRS2_S9_DpOSA_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IjEEPT_S2_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE31__annotate_contiguous_containerB9nqe220103EPKvS5_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIjEEEEvPKvS4_S4_S4_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IjJRKjEPjEEPT_S5_DpOT0_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE24__emplace_back_slow_pathIJRKjEEEPjDpOT_
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_sentinelB9nqe220103EPj
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE26__swap_out_circular_bufferERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__13maxB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__13minB9nqe220103IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB9nqe220103IS2_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS2_
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
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIjEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E10__set_dataB9nqe220103EPj
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E17__set_valid_rangeB9nqe220103EPjS6_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIjE8allocateB9nqe220103Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB9nqe220103v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IjEEPT_NS_15__element_countEy
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIjEEPjEEvRT_T0_S6_S6_
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIjS2_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E14__set_capacityB9nqe220103EPj
	.addrsig_sym _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB9nqe220103ERS2_Pjy
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIjNS_9allocatorIjEES0_EEjS3_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPj
	.addrsig_sym _ZNSt3__114__split_bufferIjNS_9allocatorIjEENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPjNS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB9nqe220103IjTnNS_9enable_ifIXnt15__has_destroy_vIS2_PT_EEiE4typeELi0EEEvRS2_S7_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IjEEvPT_
	.addrsig_sym _ZNSt3__19allocatorIjE10deallocateB9nqe220103EPjy
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_
	.addrsig_sym _ZNSt3__116__if_likely_elseB9nqe220103IZNS_6vectorIN6apollo3mir10FileSourceENS_9allocatorIS4_EEE12emplace_backIJS4_EEERS4_DpOT_EUlvE_ZNS8_IJS4_EEES9_SC_EUlvE0_EEvbT_T0_
	.addrsig_sym _ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE_clEv
	.addrsig_sym _ZZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_ENKUlvE0_clEv
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE30__emplace_back_assume_capacityB9nqe220103IJS3_EEEvDpOT_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE9constructB9nqe220103IS4_JS4_ETnNS_9enable_ifIXnt17__has_construct_vIS5_PT_DpT0_EEiE4typeELi0EEEvRS5_SA_DpOSB_
	.addrsig_sym _ZNSt3__112__to_addressB9nqe220103IN6apollo3mir10FileSourceEEEPT_S5_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE19__annotate_increaseB9nqe220103Ey
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE31__annotate_contiguous_containerB9nqe220103EPKvS8_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE4dataB9nqe220103Ev
	.addrsig_sym _ZNSt3__131__annotate_contiguous_containerB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEEEvPKvS7_S7_S7_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZNSt3__112construct_atB9nqe220103IN6apollo3mir10FileSourceEJS3_EPS3_EEPT_S6_DpOT0_
	.addrsig_sym _ZZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe220103EOS5_ENKUlRS5_E_clES7_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_shrinkB9nqe220103Ey
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE11__recommendB9nqe220103Ey
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E3endB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_sentinelB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE8max_sizeB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE20__throw_length_errorB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE8max_sizeB9nqe220103IS5_TnNS_9enable_ifIXnt16__has_max_size_vIKT_EEiE4typeELi0EEEyRKS5_
	.addrsig_sym _ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E15__get_allocatorB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E10__set_dataB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E11__front_capB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E17__set_valid_rangeB9nqe220103EPS4_S9_
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103Ey
	.addrsig_sym _ZNSt3__19allocatorIN6apollo3mir10FileSourceEE8allocateB9nqe220103Ey
	.addrsig_sym _ZNSt3__117__libcpp_allocateB9nqe220103IN6apollo3mir10FileSourceEEEPT_NS_15__element_countEy
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE17__annotate_deleteB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E5beginB9nqe220103Ev
	.addrsig_sym _ZNSt3__134__uninitialized_allocator_relocateB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EEvRT_T0_S9_S9_
	.addrsig_sym _ZNSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__swap_layoutsB9nqe220103ERNS_14__split_bufferIS3_S5_NS_29__split_buffer_pointer_layoutEEE
	.addrsig_sym _ZNKSt3__16vectorIN6apollo3mir10FileSourceENS_9allocatorIS3_EEE14__annotate_newB9nqe220103Ey
	.addrsig_sym _ZNSt3__122__make_exception_guardB9nqe220103INS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEEENS_28__exception_guard_exceptionsIT_EESA_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS5_EEE10__completeB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEEPS4_S6_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE7destroyB9nqe220103IS4_TnNS_9enable_ifIXnt15__has_destroy_vIS5_PT_EEiE4typeELi0EEEvRS5_SA_
	.addrsig_sym _ZNSt3__112__destroy_atB9nqe220103IN6apollo3mir10FileSourceEEEvPT_
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN6apollo3mir10FileSourceEEEPS4_EclB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB9nqe220103INS_9allocatorIN6apollo3mir10FileSourceEEENS_16reverse_iteratorIPS4_EES8_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB9nqe220103IPN6apollo3mir10FileSourceES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EEQrqXnecldtfp_4baseEcldtfp0_4baseERNS_14convertible_toIbEEE
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEdeB9nqe220103Ev
	.addrsig_sym _ZNSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEEppB9nqe220103Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPN6apollo3mir10FileSourceEE4baseB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_sentinelB9nqe220103Ev
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__raw_capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E14__set_capacityB9nqe220103EPS4_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorIN6apollo3mir10FileSourceEEEE10deallocateB9nqe220103ERS5_PS4_y
	.addrsig_sym _ZNKSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS4_EES0_EES4_S6_E8capacityB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_
	.addrsig_sym _ZNSt3__114__split_bufferIN6apollo3mir10FileSourceENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE17__destruct_at_endB9nqe220103EPS3_NS_17integral_constantIbLb0EEE
	.addrsig_sym _ZNSt3__19allocatorIN6apollo3mir10FileSourceEE10deallocateB9nqe220103EPS3_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB9nqe220103IN6apollo3mir10FileSourceEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEy
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB9nqe220103Ev
	.addrsig_sym _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB9nqe220103EPj
	.addrsig_sym _ZNSt3__119__shared_weak_count16__release_sharedB9nqe220103Ev
	.addrsig_sym _ZNSt3__114__shared_count16__release_sharedB9nqe220103Ev
	.addrsig_sym _ZNSt3__119__shared_weak_count14__release_weakEv
	.addrsig_sym _ZNSt3__134__libcpp_atomic_refcount_decrementB9nqe220103IlEET_RS1_
	.addrsig_sym _ZNKSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3getB9nqe220103Ev
	.addrsig_sym _ZNSt3__110shared_ptrIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4swapB9nqe220103ERS8_
	.addrsig_sym _ZNSt3__14swapB9nqe220103IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableISA_EE5valueEvE4typeERSA_SD_
	.addrsig_sym _ZNSt3__14swapB9nqe220103IPNS_19__shared_weak_countEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
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
