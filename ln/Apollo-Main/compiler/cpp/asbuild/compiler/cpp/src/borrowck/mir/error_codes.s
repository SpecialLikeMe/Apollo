	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"error_codes.cpp"
	.def	_ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE # -- Begin function _ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE
	.p2align	4
_ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE: # @_ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE
.seh_proc _ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movw	%cx, 14(%rsp)
	movq	$0, (%rsp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$32, (%rsp)
	jae	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	_ZN6apollo3mir8borrowck12_GLOBAL__N_16kTableE(%rip), %rax
	imulq	$24, (%rsp), %rcx
	addq	%rcx, %rax
	movw	(%rax), %ax
	cmpw	14(%rsp), %ax
	jne	.LBB0_4
# %bb.3:
	leaq	_ZN6apollo3mir8borrowck12_GLOBAL__N_16kTableE(%rip), %rax
	imulq	$24, (%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	(%rsp), %rax
	addq	$1, %rax
	movq	%rax, (%rsp)
	jmp	.LBB0_1
.LBB0_6:
	movq	$0, 16(%rsp)
.LBB0_7:
	movq	16(%rsp), %rax
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE # -- Begin function _ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE
	.p2align	4
_ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE: # @_ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE
.seh_proc _ZN6apollo3mir8borrowck5tagOfENS1_9ErrorCodeE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movw	%cx, 46(%rsp)
	movw	46(%rsp), %cx
	callq	_ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE
	movq	%rax, 32(%rsp)
	cmpq	$0, 32(%rsp)
	je	.LBB1_2
# %bb.1:
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB1_3
.LBB1_2:
	leaq	.L.str(%rip), %rax
	movq	%rax, 48(%rsp)
.LBB1_3:
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN6apollo3mir8borrowck10shortMsgOfENS1_9ErrorCodeE;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN6apollo3mir8borrowck10shortMsgOfENS1_9ErrorCodeE # -- Begin function _ZN6apollo3mir8borrowck10shortMsgOfENS1_9ErrorCodeE
	.p2align	4
_ZN6apollo3mir8borrowck10shortMsgOfENS1_9ErrorCodeE: # @_ZN6apollo3mir8borrowck10shortMsgOfENS1_9ErrorCodeE
.seh_proc _ZN6apollo3mir8borrowck10shortMsgOfENS1_9ErrorCodeE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movw	%cx, 46(%rsp)
	movw	46(%rsp), %cx
	callq	_ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE
	movq	%rax, 32(%rsp)
	cmpq	$0, 32(%rsp)
	je	.LBB2_2
# %bb.1:
	movq	32(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB2_3
.LBB2_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, 48(%rsp)
.LBB2_3:
	movq	48(%rsp), %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
	.p2align	4, 0x0                          # @_ZN6apollo3mir8borrowck12_GLOBAL__N_16kTableE
_ZN6apollo3mir8borrowck12_GLOBAL__N_16kTableE:
	.short	381                             # 0x17d
	.zero	6
	.quad	.L.str.2
	.quad	.L.str.3
	.short	382                             # 0x17e
	.zero	6
	.quad	.L.str.4
	.quad	.L.str.5
	.short	383                             # 0x17f
	.zero	6
	.quad	.L.str.6
	.quad	.L.str.7
	.short	384                             # 0x180
	.zero	6
	.quad	.L.str.8
	.quad	.L.str.9
	.short	500                             # 0x1f4
	.zero	6
	.quad	.L.str.10
	.quad	.L.str.11
	.short	501                             # 0x1f5
	.zero	6
	.quad	.L.str.12
	.quad	.L.str.13
	.short	502                             # 0x1f6
	.zero	6
	.quad	.L.str.14
	.quad	.L.str.15
	.short	503                             # 0x1f7
	.zero	6
	.quad	.L.str.16
	.quad	.L.str.17
	.short	504                             # 0x1f8
	.zero	6
	.quad	.L.str.18
	.quad	.L.str.19
	.short	505                             # 0x1f9
	.zero	6
	.quad	.L.str.20
	.quad	.L.str.21
	.short	506                             # 0x1fa
	.zero	6
	.quad	.L.str.22
	.quad	.L.str.23
	.short	507                             # 0x1fb
	.zero	6
	.quad	.L.str.24
	.quad	.L.str.25
	.short	508                             # 0x1fc
	.zero	6
	.quad	.L.str.26
	.quad	.L.str.27
	.short	509                             # 0x1fd
	.zero	6
	.quad	.L.str.28
	.quad	.L.str.29
	.short	510                             # 0x1fe
	.zero	6
	.quad	.L.str.30
	.quad	.L.str.31
	.short	524                             # 0x20c
	.zero	6
	.quad	.L.str.32
	.quad	.L.str.33
	.short	594                             # 0x252
	.zero	6
	.quad	.L.str.34
	.quad	.L.str.35
	.short	596                             # 0x254
	.zero	6
	.quad	.L.str.36
	.quad	.L.str.37
	.short	597                             # 0x255
	.zero	6
	.quad	.L.str.38
	.quad	.L.str.39
	.short	499                             # 0x1f3
	.zero	6
	.quad	.L.str.40
	.quad	.L.str.41
	.short	716                             # 0x2cc
	.zero	6
	.quad	.L.str.42
	.quad	.L.str.43
	.short	712                             # 0x2c8
	.zero	6
	.quad	.L.str.44
	.quad	.L.str.45
	.short	713                             # 0x2c9
	.zero	6
	.quad	.L.str.46
	.quad	.L.str.47
	.short	714                             # 0x2ca
	.zero	6
	.quad	.L.str.48
	.quad	.L.str.49
	.short	9001                            # 0x2329
	.zero	6
	.quad	.L.str.50
	.quad	.L.str.51
	.short	9002                            # 0x232a
	.zero	6
	.quad	.L.str.52
	.quad	.L.str.53
	.short	9003                            # 0x232b
	.zero	6
	.quad	.L.str.54
	.quad	.L.str.55
	.short	9004                            # 0x232c
	.zero	6
	.quad	.L.str.56
	.quad	.L.str.57
	.short	9005                            # 0x232d
	.zero	6
	.quad	.L.str.58
	.quad	.L.str.59
	.short	9006                            # 0x232e
	.zero	6
	.quad	.L.str.60
	.quad	.L.str.61
	.short	9007                            # 0x232f
	.zero	6
	.quad	.L.str.62
	.quad	.L.str.63
	.short	9008                            # 0x2330
	.zero	6
	.quad	.L.str.64
	.quad	.L.str.65

.L.str:                                 # @.str
	.asciz	"E????"

.L.str.1:                               # @.str.1
	.asciz	"borrow checker diagnostic"

.L.str.2:                               # @.str.2
	.asciz	"E0381"

.L.str.3:                               # @.str.3
	.asciz	"use of possibly-uninitialized binding"

.L.str.4:                               # @.str.4
	.asciz	"E0382"

.L.str.5:                               # @.str.5
	.asciz	"use of moved value"

.L.str.6:                               # @.str.6
	.asciz	"E0383"

.L.str.7:                               # @.str.7
	.asciz	"partial reinitialization of moved value"

.L.str.8:                               # @.str.8
	.asciz	"E0384"

.L.str.9:                               # @.str.9
	.asciz	"cannot assign twice to immutable binding"

.L.str.10:                              # @.str.10
	.asciz	"E0500"

.L.str.11:                              # @.str.11
	.asciz	"closure requires unique access"

.L.str.12:                              # @.str.12
	.asciz	"E0501"

.L.str.13:                              # @.str.13
	.asciz	"borrow conflicts with closure capture"

.L.str.14:                              # @.str.14
	.asciz	"E0502"

.L.str.15:                              # @.str.15
	.asciz	"cannot borrow as immutable while mutably borrowed"

.L.str.16:                              # @.str.16
	.asciz	"E0503"

.L.str.17:                              # @.str.17
	.asciz	"value used while mutably borrowed"

.L.str.18:                              # @.str.18
	.asciz	"E0504"

.L.str.19:                              # @.str.19
	.asciz	"cannot move into closure that holds an outstanding borrow"

.L.str.20:                              # @.str.20
	.asciz	"E0505"

.L.str.21:                              # @.str.21
	.asciz	"cannot move out due to outstanding borrow"

.L.str.22:                              # @.str.22
	.asciz	"E0506"

.L.str.23:                              # @.str.23
	.asciz	"cannot assign while borrowed"

.L.str.24:                              # @.str.24
	.asciz	"E0507"

.L.str.25:                              # @.str.25
	.asciz	"cannot move out of borrowed content"

.L.str.26:                              # @.str.26
	.asciz	"E0508"

.L.str.27:                              # @.str.27
	.asciz	"cannot move out of array element"

.L.str.28:                              # @.str.28
	.asciz	"E0509"

.L.str.29:                              # @.str.29
	.asciz	"cannot move out of a type with destructor"

.L.str.30:                              # @.str.30
	.asciz	"E0510"

.L.str.31:                              # @.str.31
	.asciz	"cannot assign to variable in match guard"

.L.str.32:                              # @.str.32
	.asciz	"E0524"

.L.str.33:                              # @.str.33
	.asciz	"two closures require unique access to the same value"

.L.str.34:                              # @.str.34
	.asciz	"E0594"

.L.str.35:                              # @.str.35
	.asciz	"cannot assign to immutable variable"

.L.str.36:                              # @.str.36
	.asciz	"E0596"

.L.str.37:                              # @.str.37
	.asciz	"cannot borrow as mutable"

.L.str.38:                              # @.str.38
	.asciz	"E0597"

.L.str.39:                              # @.str.39
	.asciz	"borrow does not live long enough"

.L.str.40:                              # @.str.40
	.asciz	"E0499"

.L.str.41:                              # @.str.41
	.asciz	"cannot borrow as mutable more than once"

.L.str.42:                              # @.str.42
	.asciz	"E0716"

.L.str.43:                              # @.str.43
	.asciz	"temporary value dropped while still borrowed"

.L.str.44:                              # @.str.44
	.asciz	"E0712"

.L.str.45:                              # @.str.45
	.asciz	"thread-local value borrowed across yield/await"

.L.str.46:                              # @.str.46
	.asciz	"E0713"

.L.str.47:                              # @.str.47
	.asciz	"cannot borrow packed field"

.L.str.48:                              # @.str.48
	.asciz	"E0714"

.L.str.49:                              # @.str.49
	.asciz	"indirect-mutable-write through shared closure capture"

.L.str.50:                              # @.str.50
	.asciz	"AP9001"

.L.str.51:                              # @.str.51
	.asciz	"raw pointer dereference outside `@unsafe`"

.L.str.52:                              # @.str.52
	.asciz	"AP9002"

.L.str.53:                              # @.str.53
	.asciz	"`@bypass` has no effect inside a pure function"

.L.str.54:                              # @.str.54
	.asciz	"AP9003"

.L.str.55:                              # @.str.55
	.asciz	"GC-managed reference escapes its scope without barrier"

.L.str.56:                              # @.str.56
	.asciz	"AP9004"

.L.str.57:                              # @.str.57
	.asciz	"cannot move out through a `&` reference"

.L.str.58:                              # @.str.58
	.asciz	"AP9005"

.L.str.59:                              # @.str.59
	.asciz	"drop order inversion may cause use-after-free"

.L.str.60:                              # @.str.60
	.asciz	"AP9006"

.L.str.61:                              # @.str.61
	.asciz	"borrow held across a safepoint may be invalidated by GC"

.L.str.62:                              # @.str.62
	.asciz	"AP9007"

.L.str.63:                              # @.str.63
	.asciz	"cannot borrow field of de-initialized parent"

.L.str.64:                              # @.str.64
	.asciz	"AP9008"

.L.str.65:                              # @.str.65
	.asciz	"two `&mut` to overlapping memory inside `@unsafe`"

	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp1-.Ltmp0                   # Subsection size
.Ltmp0:
	.short	.Ltmp3-.Ltmp2                   # Record length
.Ltmp2:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp3:
	.short	.Ltmp5-.Ltmp4                   # Record length
.Ltmp4:
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
.Ltmp5:
.Ltmp1:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym _ZN6apollo3mir8borrowck8describeENS1_9ErrorCodeE
	.addrsig_sym _ZN6apollo3mir8borrowck12_GLOBAL__N_16kTableE
