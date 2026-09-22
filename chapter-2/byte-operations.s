	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	wzr, [x29, #-48]
	sub	x8, x29, #52
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mov	w8, #4                          ; =0x4
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	stur	w8, [x29, #-52]
	sub	x8, x29, #56
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	w8, #2                          ; =0x2
	stur	w8, [x29, #-56]
	ldur	w8, [x29, #-52]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w9, [x29, #-56]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	_inplace_swap
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	w8, [x29, #-52]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w9, [x29, #-56]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_printf
	ldr	w8, [sp, #52]                   ; 4-byte Folded Reload
	sub	x9, x29, #60
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	stur	w8, [x29, #-60]
	stur	w8, [x29, #-64]
	ldur	w8, [x29, #-60]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w9, [x29, #-60]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	mov	x0, x1
	bl	_inplace_swap
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldur	w8, [x29, #-60]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w9, [x29, #-60]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_printf
	sub	x0, x29, #44
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	mov	x2, #36                         ; =0x24
	adrp	x1, l___const.main.int_list@PAGE
	add	x1, x1, l___const.main.int_list@PAGEOFF
	bl	_memcpy
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	mov	w0, #9                          ; =0x9
	str	w0, [sp, #76]                   ; 4-byte Folded Spill
	bl	_print_list
	ldr	w1, [sp, #76]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	bl	_reverse_array
	ldr	w0, [sp, #76]                   ; 4-byte Folded Reload
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	_print_list
	mov	w8, #17185                      ; =0x4321
	movk	w8, #34661, lsl #16
	stur	w8, [x29, #-68]
	ldur	w9, [x29, #-68]
                                        ; implicit-def: $x8
	mov	x8, x9
	ldurb	w10, [x29, #-68]
	mov	x9, sp
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-68]
                                        ; implicit-def: $x8
	mov	x8, x9
	ldur	w9, [x29, #-68]
	eor	w10, w9, #0xffffff00
	mov	x9, sp
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldur	w9, [x29, #-68]
                                        ; implicit-def: $x8
	mov	x8, x9
	ldur	w9, [x29, #-68]
	orr	w10, w9, #0xff
	mov	x9, sp
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #8]
	bl	_printf
	mov	w8, #113                        ; =0x71
	stur	w8, [x29, #-72]
	mov	w8, #24                         ; =0x18
	stur	w8, [x29, #-76]
	ldur	w9, [x29, #-72]
                                        ; implicit-def: $x8
	mov	x8, x9
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	ldur	w9, [x29, #-76]
                                        ; implicit-def: $x8
	mov	x8, x9
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	ldur	w0, [x29, #-72]
	ldur	w1, [x29, #-76]
	bl	_bic
	ldur	w1, [x29, #-76]
	bl	_bis
	ldr	x10, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x0
	str	x8, [x9, #16]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-88]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	mov	w9, #102                        ; =0x66
	stur	w9, [x29, #-92]
	stur	w9, [x29, #-96]
	ldur	w9, [x29, #-92]
	ldur	w10, [x29, #-96]
	eor	w9, w9, w10
	subs	w9, w9, #0
	cset	w10, eq
	adrp	x9, l_.str.8@PAGE
	add	x9, x9, l_.str.8@PAGEOFF
	and	w10, w10, #0x1
	ands	w10, w10, #0x1
	csel	x8, x8, x9, ne
	stur	x8, [x29, #-88]
	ldur	w8, [x29, #-92]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	w8, [x29, #-96]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	x8, [x29, #-88]
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	mov	w8, #350                        ; =0x15e
	stur	w8, [x29, #-100]
	mov	w8, #32                         ; =0x20
	stur	w8, [x29, #-104]
	ldur	w8, [x29, #-100]
	ldur	w10, [x29, #-104]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w10, w8, w9
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	mov	x9, sp
	mov	x8, #32                         ; =0x20
	str	x8, [x9]
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_inplace_swap                   ; -- Begin function inplace_swap
	.p2align	2
_inplace_swap:                          ; @inplace_swap
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	eor	w8, w8, w9
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	eor	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	eor	w8, w8, w9
	ldr	x9, [sp]
	str	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_print_list                     ; -- Begin function print_list
	.p2align	2
_print_list:                            ; @print_list
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_printf
	str	wzr, [sp, #12]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB2_7
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB2_4
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	w9, [x8, x9, lsl #2]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_printf
	b	LBB2_5
LBB2_4:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	w9, [x8, x9, lsl #2]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_printf
	b	LBB2_5
LBB2_5:                                 ;   in Loop: Header=BB2_1 Depth=1
	b	LBB2_6
LBB2_6:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB2_1
LBB2_7:
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_reverse_array                  ; -- Begin function reverse_array
	.p2align	2
_reverse_array:                         ; @reverse_array
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	wzr, [sp, #16]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB3_1
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB3_7
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB3_4
	b	LBB3_3
LBB3_3:                                 ;   in Loop: Header=BB3_1 Depth=1
	b	LBB3_6
LBB3_4:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	add	x0, x8, x9, lsl #2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x1, x8, x9, lsl #2
	bl	_inplace_swap
	b	LBB3_5
LBB3_5:                                 ;   in Loop: Header=BB3_1 Depth=1
	b	LBB3_6
LBB3_6:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB3_1
LBB3_7:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_bis                            ; -- Begin function bis
	.p2align	2
_bis:                                   ; @bis
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	orr	w8, w8, w9
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_bic                            ; -- Begin function bic
	.p2align	2
_bic:                                   ; @bic
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	bic	w8, w8, w9
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"a = %d, b = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"d = %d, d = %d\n"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.int_list
l___const.main.int_list:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	6                               ; 0x6
	.long	7                               ; 0x7
	.long	8                               ; 0x8
	.long	9                               ; 0x9

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"0x%X & 0xFF = 0x%.8X\n"

l_.str.3:                               ; @.str.3
	.asciz	"0x%X & ~0xFF = 0x%.8X\n"

l_.str.4:                               ; @.str.4
	.asciz	"%X\n%X\n%X\n"

l_.str.5:                               ; @.str.5
	.asciz	"\n\n"

l_.str.6:                               ; @.str.6
	.asciz	"true"

l_.str.7:                               ; @.str.7
	.asciz	"%s\n"

l_.str.8:                               ; @.str.8
	.asciz	"false"

l_.str.9:                               ; @.str.9
	.asciz	"0x%X == 0x%X : %s\n"

l_.str.10:                              ; @.str.10
	.asciz	"k %% w = %d\n"

l_.str.11:                              ; @.str.11
	.asciz	"%X\n\n"

l_.str.12:                              ; @.str.12
	.asciz	"["

l_.str.13:                              ; @.str.13
	.asciz	"%d"

l_.str.14:                              ; @.str.14
	.asciz	"%d, "

l_.str.15:                              ; @.str.15
	.asciz	"]\n"

.subsections_via_symbols
