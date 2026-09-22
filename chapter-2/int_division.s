	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_optarith                       ; -- Begin function optarith
	.p2align	2
_optarith:                              ; @optarith
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #5
	str	w8, [sp, #12]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	w8, [sp, #8]
	add	w8, w8, #7
	str	w8, [sp, #8]
	b	LBB1_2
LBB1_2:
	ldr	w8, [sp, #8]
	asr	w8, w8, #3
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
