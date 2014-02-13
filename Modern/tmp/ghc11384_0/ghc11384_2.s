.data
	.align 8
.align 1
.globl __stginit_EngineziGraphicsziGraphicsUtils
.type __stginit_EngineziGraphicsziGraphicsUtils, @object
__stginit_EngineziGraphicsziGraphicsUtils:
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_withNewPtrArray1_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtrArray1_closure
.type EngineziGraphicsziGraphicsUtils_withNewPtrArray1_closure, @object
EngineziGraphicsziGraphicsUtils_withNewPtrArray1_closure:
	.quad	EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8Pm_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	65
	.byte	114
	.byte	114
	.byte	97
	.byte	121
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	97
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Pp_str:
	.byte	43
	.byte	77
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct
.type EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct, @object
EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	c8Pm_str
	.quad	c8Pp_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	130
	.quad	32
s8OU_info:
.Lc8PT:
	incq RET_UNBOXED_TUP_ctr
	addq $24,%rbp
	jmp *0(%rbp)
	.size s8OU_info, .-s8OU_info
.text
	.align 8
	.quad	132
	.quad	32
s8OV_info:
.Lc8PW:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 8(%rbp),%rdi
	movq $s8OU_info,16(%rbp)
	addq $16,%rbp
	jmp base_ForeignziMarshalziArray_zdwa8_info
	.size s8OV_info, .-s8OV_info
.text
	.align 8
	.quad	4
	.quad	32
s8OW_info:
.Lc8PZ:
	movq 16(%rbp),%rbx
	movq $s8OV_info,0(%rbp)
	testq $7,%rbx
	jne s8OV_info
	jmp *(%rbx)
	.size s8OW_info, .-s8OW_info
.text
	.align 8
	.quad	3
	.quad	32
s8OR_info:
.Lc8Q5:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc8Q9
	addq $2,EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq %rbx,%rcx
	movq $base_GHCziPtr_Ptr_con_info,-8(%r12)
	leaq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	leaq -7(%r12),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rbx
	movq %rcx,16(%rbp)
	leaq -7(%r12),%r14
	movq $s8OW_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_pv_fast
.Lc8Q9:
	movq $16,192(%r13)
.Lc8Q7:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s8OR_info, .-s8OR_info
.text
	.align 8
	.quad	68
	.quad	32
s8OS_info:
.Lc8Qe:
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $s8OR_info,8(%rbp)
	addq $8,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
	.size s8OS_info, .-s8OS_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_withNewPtrArray1_srt-(s8OT_info)+0
	.long	0
	.quad	3
	.quad	4294967328
s8OT_info:
.Lc8Qh:
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq $base_GHCziErr_undefined_closure,-16(%rbp)
	movq $stg_ap_p_info,-24(%rbp)
	movq 24(%rbp),%r14
	movq $s8OS_info,-8(%rbp)
	addq $-24,%rbp
	jmp base_ForeignziStorable_alignment_info
	.size s8OT_info, .-s8OT_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_withNewPtrArray1_srt-(EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info)+0
	.long	0
	.quad	17179869204
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info
.type EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info, @object
EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info:
.Lc8Ql:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8Qn
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct
	je .Lc8Qo
.Lc8Qp:
	incq EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct+40
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq %rdi,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq $base_GHCziErr_undefined_closure,-40(%rbp)
	movq $stg_ap_p_info,-48(%rbp)
	movq $s8OT_info,-32(%rbp)
	addq $-48,%rbp
	jmp base_ForeignziStorable_sizzeOf_info
.Lc8Qn:
	movl $EngineziGraphicsziGraphicsUtils_withNewPtrArray1_closure,%ebx
	jmp *-8(%r13)
.Lc8Qo:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct+56
	movq $EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_withNewPtrArray1_ct
	jmp .Lc8Qp
	.size EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info, .-EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_withNewPtrArray_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtrArray_closure
.type EngineziGraphicsziGraphicsUtils_withNewPtrArray_closure, @object
EngineziGraphicsziGraphicsUtils_withNewPtrArray_closure:
	.quad	EngineziGraphicsziGraphicsUtils_withNewPtrArray_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8Qz_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	65
	.byte	114
	.byte	114
	.byte	97
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	114
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8QC_str:
	.byte	43
	.byte	77
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct
.type EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct, @object
EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	c8Qz_str
	.quad	c8QC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_withNewPtrArray_srt-(EngineziGraphicsziGraphicsUtils_withNewPtrArray_info)+0
	.long	0
	.quad	17179869204
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_withNewPtrArray_info
.type EngineziGraphicsziGraphicsUtils_withNewPtrArray_info, @object
EngineziGraphicsziGraphicsUtils_withNewPtrArray_info:
.Lc8QH:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct
	je .Lc8QK
.Lc8QM:
	incq EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphicsUtils_withNewPtrArray1_info
.Lc8QK:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct+56
	movq $EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_withNewPtrArray_ct
	jmp .Lc8QM
	.size EngineziGraphicsziGraphicsUtils_withNewPtrArray_info, .-EngineziGraphicsziGraphicsUtils_withNewPtrArray_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtr1_closure
.type EngineziGraphicsziGraphicsUtils_withNewPtr1_closure, @object
EngineziGraphicsziGraphicsUtils_withNewPtr1_closure:
	.quad	EngineziGraphicsziGraphicsUtils_withNewPtr1_info
.section .rodata
	.align 8
.align 1
c8Rb_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	54
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Re_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtr1_ct
.type EngineziGraphicsziGraphicsUtils_withNewPtr1_ct, @object
EngineziGraphicsziGraphicsUtils_withNewPtr1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c8Rb_str
	.quad	c8Re_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	66
	.quad	32
s8QV_info:
.Lc8Rt:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc8Ry
	addq $2,EngineziGraphicsziGraphicsUtils_withNewPtr1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 8(%rbp),%rax
	movl (%rax),%eax
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.Lc8Ry:
	movq $16,192(%r13)
.Lc8Rw:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s8QV_info, .-s8QV_info
.text
	.align 8
	.quad	1
	.quad	32
s8QT_info:
.Lc8RC:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc8RG
	addq $2,EngineziGraphicsziGraphicsUtils_withNewPtr1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq %rbx,%rax
	addq $16,%rbx
	movq $base_GHCziPtr_Ptr_con_info,-8(%r12)
	movq %rbx,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%rbx
	movq %rax,8(%rbp)
	leaq -7(%r12),%r14
	movq $s8QV_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_pv_fast
.Lc8RG:
	movq $16,192(%r13)
.Lc8RE:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s8QT_info, .-s8QT_info
.text
	.align 8
	.quad	8589934597
	.quad	0
	.quad	15
.globl EngineziGraphicsziGraphicsUtils_withNewPtr1_info
.type EngineziGraphicsziGraphicsUtils_withNewPtr1_info, @object
EngineziGraphicsziGraphicsUtils_withNewPtr1_info:
.Lc8RJ:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8RL
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_withNewPtr1_ct
	je .Lc8RM
.Lc8RN:
	incq EngineziGraphicsziGraphicsUtils_withNewPtr1_ct+40
	movq %r14,-8(%rbp)
	movl $4,%ebx
	movl $4,%r14d
	movq $s8QT_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
.Lc8RL:
	movl $EngineziGraphicsziGraphicsUtils_withNewPtr1_closure,%ebx
	jmp *-8(%r13)
.Lc8RM:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_withNewPtr1_ct+56
	movq $EngineziGraphicsziGraphicsUtils_withNewPtr1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_withNewPtr1_ct
	jmp .Lc8RN
	.size EngineziGraphicsziGraphicsUtils_withNewPtr1_info, .-EngineziGraphicsziGraphicsUtils_withNewPtr1_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_closure
.type EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_closure, @object
EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_closure:
	.quad	EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_info
.section .rodata
	.align 8
.align 1
c8RW_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	95
	.byte	36
	.byte	115
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8RZ_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct
.type EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct, @object
EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c8RW_str
	.quad	c8RZ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934597
	.quad	0
	.quad	15
.globl EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_info
.type EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_info, @object
EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_info:
.Lc8S4:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct
	je .Lc8S7
.Lc8S9:
	incq EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphicsUtils_withNewPtr1_info
.Lc8S7:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct+56
	movq $EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_ct
	jmp .Lc8S9
	.size EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_info, .-EngineziGraphicsziGraphicsUtils_withNewPtrzuzdswithNewPtr_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_zdwa2_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_zdwa2_closure
.type EngineziGraphicsziGraphicsUtils_zdwa2_closure, @object
EngineziGraphicsziGraphicsUtils_zdwa2_closure:
	.quad	EngineziGraphicsziGraphicsUtils_zdwa2_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8SF_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	98
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8SI_str:
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_zdwa2_ct
.type EngineziGraphicsziGraphicsUtils_zdwa2_ct, @object
EngineziGraphicsziGraphicsUtils_zdwa2_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	c8SF_str
	.quad	c8SI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
s8Sh_info:
.Lc8T8:
	incq RET_UNBOXED_TUP_ctr
	addq $16,%rbp
	jmp *0(%rbp)
	.size s8Sh_info, .-s8Sh_info
.text
	.align 8
	.quad	3
	.quad	32
s8Si_info:
.Lc8Tb:
	incq UNKNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	movq 16(%rbp),%r14
	movq $s8Sh_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_pv_fast
	.size s8Si_info, .-s8Si_info
.text
	.align 8
	.quad	259
	.quad	32
s8Se_info:
.Lc8Te:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc8Ti
	addq $2,EngineziGraphicsziGraphicsUtils_zdwa2_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziPtr_Ptr_con_info,-8(%r12)
	leaq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq %rbx,24(%rbp)
	movq 16(%rbp),%rbx
	leaq -7(%r12),%rax
	movq %rax,16(%rbp)
	leaq -7(%r12),%r14
	movq $s8Si_info,0(%rbp)
	jmp stg_ap_pv_fast
.Lc8Ti:
	movq $16,192(%r13)
.Lc8Tg:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s8Se_info, .-s8Se_info
.text
	.align 8
	.quad	259
	.quad	32
s8Sf_info:
.Lc8Tn:
	movq 7(%rbx),%r14
	movq 24(%rbp),%rbx
	movq $s8Se_info,0(%rbp)
	jmp stg_newAlignedPinnedByteArrayzh
	.size s8Sf_info, .-s8Sf_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_zdwa2_srt-(s8Sg_info)+0
	.long	0
	.quad	3
	.quad	4294967328
s8Sg_info:
.Lc8Tq:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movl $base_GHCziErr_undefined_closure,%r14d
	movq $s8Sf_info,0(%rbp)
	jmp stg_ap_p_fast
	.size s8Sg_info, .-s8Sg_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_zdwa2_srt-(EngineziGraphicsziGraphicsUtils_zdwa2_info)+0
	.long	0
	.quad	21474836501
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_zdwa2_info
.type EngineziGraphicsziGraphicsUtils_zdwa2_info, @object
EngineziGraphicsziGraphicsUtils_zdwa2_info:
.Lc8Tx:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8Tz
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_zdwa2_ct
	je .Lc8TA
.Lc8TB:
	incq EngineziGraphicsziGraphicsUtils_zdwa2_ct+40
	incq UNKNOWN_CALL_ctr
	movq %rdi,-24(%rbp)
	movq %r8,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movl $base_GHCziErr_undefined_closure,%r14d
	movq $s8Sg_info,-32(%rbp)
	addq $-32,%rbp
	jmp stg_ap_p_fast
.Lc8Tz:
	movl $EngineziGraphicsziGraphicsUtils_zdwa2_closure,%ebx
	jmp *-8(%r13)
.Lc8TA:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_zdwa2_ct+56
	movq $EngineziGraphicsziGraphicsUtils_zdwa2_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_zdwa2_ct
	jmp .Lc8TB
	.size EngineziGraphicsziGraphicsUtils_zdwa2_info, .-EngineziGraphicsziGraphicsUtils_zdwa2_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_withNewPtr2_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtr2_closure
.type EngineziGraphicsziGraphicsUtils_withNewPtr2_closure, @object
EngineziGraphicsziGraphicsUtils_withNewPtr2_closure:
	.quad	EngineziGraphicsziGraphicsUtils_withNewPtr2_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8TU_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	99
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8TX_str:
	.byte	43
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtr2_ct
.type EngineziGraphicsziGraphicsUtils_withNewPtr2_ct, @object
EngineziGraphicsziGraphicsUtils_withNewPtr2_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	c8TU_str
	.quad	c8TX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_withNewPtr2_srt-(s8TF_info)+0
	.long	0
	.quad	1
	.quad	4294967328
s8TF_info:
.Lc8U7:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 55(%rbx),%rdi
	movq 8(%rbp),%r8
	addq $16,%rbp
	jmp EngineziGraphicsziGraphicsUtils_zdwa2_info
	.size s8TF_info, .-s8TF_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_withNewPtr2_srt-(EngineziGraphicsziGraphicsUtils_withNewPtr2_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_withNewPtr2_info
.type EngineziGraphicsziGraphicsUtils_withNewPtr2_info, @object
EngineziGraphicsziGraphicsUtils_withNewPtr2_info:
.Lc8Ua:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8Uc
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_withNewPtr2_ct
	je .Lc8Ud
.Lc8Ue:
	incq EngineziGraphicsziGraphicsUtils_withNewPtr2_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $s8TF_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s8TF_info
	jmp *(%rbx)
.Lc8Uc:
	movl $EngineziGraphicsziGraphicsUtils_withNewPtr2_closure,%ebx
	jmp *-8(%r13)
.Lc8Ud:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_withNewPtr2_ct+56
	movq $EngineziGraphicsziGraphicsUtils_withNewPtr2_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_withNewPtr2_ct
	jmp .Lc8Ue
	.size EngineziGraphicsziGraphicsUtils_withNewPtr2_info, .-EngineziGraphicsziGraphicsUtils_withNewPtr2_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_withNewPtr_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtr_closure
.type EngineziGraphicsziGraphicsUtils_withNewPtr_closure, @object
EngineziGraphicsziGraphicsUtils_withNewPtr_closure:
	.quad	EngineziGraphicsziGraphicsUtils_withNewPtr_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8Ur_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	115
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Uu_str:
	.byte	43
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_withNewPtr_ct
.type EngineziGraphicsziGraphicsUtils_withNewPtr_ct, @object
EngineziGraphicsziGraphicsUtils_withNewPtr_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	c8Ur_str
	.quad	c8Uu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_withNewPtr_srt-(EngineziGraphicsziGraphicsUtils_withNewPtr_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_withNewPtr_info
.type EngineziGraphicsziGraphicsUtils_withNewPtr_info, @object
EngineziGraphicsziGraphicsUtils_withNewPtr_info:
.Lc8Uz:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_withNewPtr_ct
	je .Lc8UC
.Lc8UE:
	incq EngineziGraphicsziGraphicsUtils_withNewPtr_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphicsUtils_withNewPtr2_info
.Lc8UC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_withNewPtr_ct+56
	movq $EngineziGraphicsziGraphicsUtils_withNewPtr_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_withNewPtr_ct
	jmp .Lc8UE
	.size EngineziGraphicsziGraphicsUtils_withNewPtr_info, .-EngineziGraphicsziGraphicsUtils_withNewPtr_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_zdwa1_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_zdwa1_closure
.type EngineziGraphicsziGraphicsUtils_zdwa1_closure, @object
EngineziGraphicsziGraphicsUtils_zdwa1_closure:
	.quad	EngineziGraphicsziGraphicsUtils_zdwa1_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8V8_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Vb_str:
	.byte	77
	.byte	77
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_zdwa1_ct
.type EngineziGraphicsziGraphicsUtils_zdwa1_ct, @object
EngineziGraphicsziGraphicsUtils_zdwa1_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	c8V8_str
	.quad	c8Vb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
s8UM_info:
.Lc8Vy:
	incq RET_UNBOXED_TUP_ctr
	movq 8(%rbp),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
	.size s8UM_info, .-s8UM_info
.text
	.align 8
	.quad	130
	.quad	32
s8UJ_info:
.Lc8VB:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc8VF
	addq $2,EngineziGraphicsziGraphicsUtils_zdwa1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziPtr_Ptr_con_info,-8(%r12)
	leaq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq %rbx,16(%rbp)
	movq 8(%rbp),%rbx
	leaq -7(%r12),%rax
	movq %rax,8(%rbp)
	leaq -7(%r12),%r14
	movq $s8UM_info,0(%rbp)
	jmp stg_ap_pv_fast
.Lc8VF:
	movq $16,192(%r13)
.Lc8VD:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s8UJ_info, .-s8UJ_info
.text
	.align 8
	.quad	130
	.quad	32
s8UK_info:
.Lc8VK:
	movq 7(%rbx),%r14
	movq 16(%rbp),%rbx
	movq $s8UJ_info,0(%rbp)
	jmp stg_newAlignedPinnedByteArrayzh
	.size s8UK_info, .-s8UK_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_zdwa1_srt-(s8UL_info)+0
	.long	0
	.quad	2
	.quad	4294967328
s8UL_info:
.Lc8VN:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movl $base_GHCziErr_undefined_closure,%r14d
	movq $s8UK_info,0(%rbp)
	jmp stg_ap_p_fast
	.size s8UL_info, .-s8UL_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_zdwa1_srt-(EngineziGraphicsziGraphicsUtils_zdwa1_info)+0
	.long	0
	.quad	17179869204
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_zdwa1_info
.type EngineziGraphicsziGraphicsUtils_zdwa1_info, @object
EngineziGraphicsziGraphicsUtils_zdwa1_info:
.Lc8VU:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8VW
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_zdwa1_ct
	je .Lc8VX
.Lc8VY:
	incq EngineziGraphicsziGraphicsUtils_zdwa1_ct+40
	incq UNKNOWN_CALL_ctr
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movl $base_GHCziErr_undefined_closure,%r14d
	movq $s8UL_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_ap_p_fast
.Lc8VW:
	movl $EngineziGraphicsziGraphicsUtils_zdwa1_closure,%ebx
	jmp *-8(%r13)
.Lc8VX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_zdwa1_ct+56
	movq $EngineziGraphicsziGraphicsUtils_zdwa1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_zdwa1_ct
	jmp .Lc8VY
	.size EngineziGraphicsziGraphicsUtils_zdwa1_info, .-EngineziGraphicsziGraphicsUtils_zdwa1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_useNewPtr1_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_useNewPtr1_closure
.type EngineziGraphicsziGraphicsUtils_useNewPtr1_closure, @object
EngineziGraphicsziGraphicsUtils_useNewPtr1_closure:
	.quad	EngineziGraphicsziGraphicsUtils_useNewPtr1_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8Wi_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	117
	.byte	115
	.byte	101
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Wl_str:
	.byte	43
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_useNewPtr1_ct
.type EngineziGraphicsziGraphicsUtils_useNewPtr1_ct, @object
EngineziGraphicsziGraphicsUtils_useNewPtr1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	c8Wi_str
	.quad	c8Wl_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_useNewPtr1_srt-(s8W2_info)+0
	.long	0
	.quad	1
	.quad	4294967328
s8W2_info:
.Lc8Wv:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 8(%rbp),%rdi
	addq $16,%rbp
	jmp EngineziGraphicsziGraphicsUtils_zdwa1_info
	.size s8W2_info, .-s8W2_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_useNewPtr1_srt-(EngineziGraphicsziGraphicsUtils_useNewPtr1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_useNewPtr1_info
.type EngineziGraphicsziGraphicsUtils_useNewPtr1_info, @object
EngineziGraphicsziGraphicsUtils_useNewPtr1_info:
.Lc8Wy:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8WA
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_useNewPtr1_ct
	je .Lc8WB
.Lc8WC:
	incq EngineziGraphicsziGraphicsUtils_useNewPtr1_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $s8W2_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s8W2_info
	jmp *(%rbx)
.Lc8WA:
	movl $EngineziGraphicsziGraphicsUtils_useNewPtr1_closure,%ebx
	jmp *-8(%r13)
.Lc8WB:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_useNewPtr1_ct+56
	movq $EngineziGraphicsziGraphicsUtils_useNewPtr1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_useNewPtr1_ct
	jmp .Lc8WC
	.size EngineziGraphicsziGraphicsUtils_useNewPtr1_info, .-EngineziGraphicsziGraphicsUtils_useNewPtr1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_useNewPtr_srt:
	.quad	base_GHCziErr_undefined_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_useNewPtr_closure
.type EngineziGraphicsziGraphicsUtils_useNewPtr_closure, @object
EngineziGraphicsziGraphicsUtils_useNewPtr_closure:
	.quad	EngineziGraphicsziGraphicsUtils_useNewPtr_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8WP_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	117
	.byte	115
	.byte	101
	.byte	78
	.byte	101
	.byte	119
	.byte	80
	.byte	116
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	116
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8WS_str:
	.byte	43
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_useNewPtr_ct
.type EngineziGraphicsziGraphicsUtils_useNewPtr_ct, @object
EngineziGraphicsziGraphicsUtils_useNewPtr_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	c8WP_str
	.quad	c8WS_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_useNewPtr_srt-(EngineziGraphicsziGraphicsUtils_useNewPtr_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_useNewPtr_info
.type EngineziGraphicsziGraphicsUtils_useNewPtr_info, @object
EngineziGraphicsziGraphicsUtils_useNewPtr_info:
.Lc8WX:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_useNewPtr_ct
	je .Lc8X0
.Lc8X2:
	incq EngineziGraphicsziGraphicsUtils_useNewPtr_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphicsUtils_useNewPtr1_info
.Lc8X0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_useNewPtr_ct+56
	movq $EngineziGraphicsziGraphicsUtils_useNewPtr_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_useNewPtr_ct
	jmp .Lc8X2
	.size EngineziGraphicsziGraphicsUtils_useNewPtr_info, .-EngineziGraphicsziGraphicsUtils_useNewPtr_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_zdwa_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBufferData_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_zdwa_closure
.type EngineziGraphicsziGraphicsUtils_zdwa_closure, @object
EngineziGraphicsziGraphicsUtils_zdwa_closure:
	.quad	EngineziGraphicsziGraphicsUtils_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8Xk_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Xn_str:
	.byte	105
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_zdwa_ct
.type EngineziGraphicsziGraphicsUtils_zdwa_ct, @object
EngineziGraphicsziGraphicsUtils_zdwa_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	c8Xk_str
	.quad	c8Xn_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
s8X7_info:
.Lc8Xx:
	movq 16(%rbp),%rsi
	shlq $2,%rsi
	movq 8(%rbp),%rdx
	movl $34962,%edi
	movl $35044,%ecx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
	.size s8X7_info, .-s8X7_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_zdwa_srt-(EngineziGraphicsziGraphicsUtils_zdwa_info)+0
	.long	0
	.quad	12884901897
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_zdwa_info
.type EngineziGraphicsziGraphicsUtils_zdwa_info, @object
EngineziGraphicsziGraphicsUtils_zdwa_info:
.Lc8XH:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8XJ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_zdwa_ct
	je .Lc8XK
.Lc8XL:
	incq EngineziGraphicsziGraphicsUtils_zdwa_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBufferData_closure,%ebx
	movq $s8X7_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s8X7_info
	jmp *(%rbx)
.Lc8XJ:
	movl $EngineziGraphicsziGraphicsUtils_zdwa_closure,%ebx
	jmp *-8(%r13)
.Lc8XK:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_zdwa_ct+56
	movq $EngineziGraphicsziGraphicsUtils_zdwa_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_zdwa_ct
	jmp .Lc8XL
	.size EngineziGraphicsziGraphicsUtils_zdwa_info, .-EngineziGraphicsziGraphicsUtils_zdwa_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_createBufferId3_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBufferData_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId3_closure
.type EngineziGraphicsziGraphicsUtils_createBufferId3_closure, @object
EngineziGraphicsziGraphicsUtils_createBufferId3_closure:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId3_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8Y6_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	73
	.byte	100
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Y9_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId3_ct
.type EngineziGraphicsziGraphicsUtils_createBufferId3_ct, @object
EngineziGraphicsziGraphicsUtils_createBufferId3_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	c8Y6_str
	.quad	c8Y9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId3_srt-(s8XS_info)+0
	.long	0
	.quad	65
	.quad	4294967328
s8XS_info:
.Lc8Yn:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	addq $16,%rbp
	jmp EngineziGraphicsziGraphicsUtils_zdwa_info
	.size s8XS_info, .-s8XS_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId3_srt-(s8XT_info)+0
	.long	0
	.quad	1
	.quad	4294967328
s8XT_info:
.Lc8Yq:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $s8XS_info,0(%rbp)
	testq $7,%rbx
	jne s8XS_info
	jmp *(%rbx)
	.size s8XT_info, .-s8XT_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId3_srt-(EngineziGraphicsziGraphicsUtils_createBufferId3_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_createBufferId3_info
.type EngineziGraphicsziGraphicsUtils_createBufferId3_info, @object
EngineziGraphicsziGraphicsUtils_createBufferId3_info:
.Lc8Yz:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc8YB
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_createBufferId3_ct
	je .Lc8YC
.Lc8YD:
	incq EngineziGraphicsziGraphicsUtils_createBufferId3_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $s8XT_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s8XT_info
	jmp *(%rbx)
.Lc8YB:
	movl $EngineziGraphicsziGraphicsUtils_createBufferId3_closure,%ebx
	jmp *-8(%r13)
.Lc8YC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_createBufferId3_ct+56
	movq $EngineziGraphicsziGraphicsUtils_createBufferId3_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_createBufferId3_ct
	jmp .Lc8YD
	.size EngineziGraphicsziGraphicsUtils_createBufferId3_info, .-EngineziGraphicsziGraphicsUtils_createBufferId3_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_createBufferId2_srt:
	.quad	base_ForeignziMarshalziArray_withArrayLen_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBufferData_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindBuffer_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenBuffers_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId2_closure
.type EngineziGraphicsziGraphicsUtils_createBufferId2_closure, @object
EngineziGraphicsziGraphicsUtils_createBufferId2_closure:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId2_info
	.quad	0
.section .rodata
	.align 8
.align 1
c8Zf_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	73
	.byte	100
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c8Zi_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId2_ct
.type EngineziGraphicsziGraphicsUtils_createBufferId2_ct, @object
EngineziGraphicsziGraphicsUtils_createBufferId2_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c8Zf_str
	.quad	c8Zi_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
s8YL_info:
.Lc8ZG:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc8ZL
	addq $2,EngineziGraphicsziGraphicsUtils_createBufferId2_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.Lc8ZL:
	movq $16,192(%r13)
.Lc8ZJ:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s8YL_info, .-s8YL_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId2_srt-(s8YN_info)+0
	.long	0
	.quad	66
	.quad	12884901920
s8YN_info:
.Lc8ZP:
	movq 8(%rbp),%rsi
	movl $34962,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $stg_ap_v_info,-8(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	movq 16(%rbp),%rsi
	movl $EngineziGraphicsziGraphicsUtils_createBufferId3_closure+3,%edi
	movq $s8YL_info,0(%rbp)
	addq $-8,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
	.size s8YN_info, .-s8YN_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId2_srt-(s8YQ_info)+0
	.long	0
	.quad	2
	.quad	30064771104
s8YQ_info:
.Lc8ZU:
	movq 8(%rbp),%rax
	leaq 16(%rax),%r14
	movl $1,%edi
	movq %r14,%rsi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl (%r14),%eax
	movq %rax,8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindBuffer_closure,%ebx
	movq $s8YN_info,0(%rbp)
	testq $7,%rbx
	jne s8YN_info
	jmp *(%rbx)
	.size s8YQ_info, .-s8YQ_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId2_srt-(s8YS_info)+0
	.long	0
	.quad	1
	.quad	64424509472
s8YS_info:
.Lc903:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenBuffers_closure,%ebx
	movq $s8YQ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s8YQ_info
	jmp *(%rbx)
	.size s8YS_info, .-s8YS_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId2_srt-(EngineziGraphicsziGraphicsUtils_createBufferId2_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	64424509455
.globl EngineziGraphicsziGraphicsUtils_createBufferId2_info
.type EngineziGraphicsziGraphicsUtils_createBufferId2_info, @object
EngineziGraphicsziGraphicsUtils_createBufferId2_info:
.Lc909:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc90b
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_createBufferId2_ct
	je .Lc90c
.Lc90d:
	incq EngineziGraphicsziGraphicsUtils_createBufferId2_ct+40
	movq %r14,-8(%rbp)
	movl $4,%ebx
	movl $4,%r14d
	movq $s8YS_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
.Lc90b:
	movl $EngineziGraphicsziGraphicsUtils_createBufferId2_closure,%ebx
	jmp *-8(%r13)
.Lc90c:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_createBufferId2_ct+56
	movq $EngineziGraphicsziGraphicsUtils_createBufferId2_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_createBufferId2_ct
	jmp .Lc90d
	.size EngineziGraphicsziGraphicsUtils_createBufferId2_info, .-EngineziGraphicsziGraphicsUtils_createBufferId2_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_fillNewBuffer_srt:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId2_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_fillNewBuffer_closure
.type EngineziGraphicsziGraphicsUtils_fillNewBuffer_closure, @object
EngineziGraphicsziGraphicsUtils_fillNewBuffer_closure:
	.quad	EngineziGraphicsziGraphicsUtils_fillNewBuffer_info
	.quad	0
.section .rodata
	.align 8
.align 1
c90n_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	102
	.byte	105
	.byte	108
	.byte	108
	.byte	78
	.byte	101
	.byte	119
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	117
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c90q_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct
.type EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct, @object
EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c90n_str
	.quad	c90q_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_fillNewBuffer_srt-(EngineziGraphicsziGraphicsUtils_fillNewBuffer_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_fillNewBuffer_info
.type EngineziGraphicsziGraphicsUtils_fillNewBuffer_info, @object
EngineziGraphicsziGraphicsUtils_fillNewBuffer_info:
.Lc90v:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct
	je .Lc90y
.Lc90A:
	incq EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphicsUtils_createBufferId2_info
.Lc90y:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct+56
	movq $EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_fillNewBuffer_ct
	jmp .Lc90A
	.size EngineziGraphicsziGraphicsUtils_fillNewBuffer_info, .-EngineziGraphicsziGraphicsUtils_fillNewBuffer_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_createBufferId1_srt:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId2_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindVertexArray_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenVertexArrays_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId1_closure
.type EngineziGraphicsziGraphicsUtils_createBufferId1_closure, @object
EngineziGraphicsziGraphicsUtils_createBufferId1_closure:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId1_info
	.quad	0
.section .rodata
	.align 8
.align 1
c915_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	73
	.byte	100
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	110
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c918_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId1_ct
.type EngineziGraphicsziGraphicsUtils_createBufferId1_ct, @object
EngineziGraphicsziGraphicsUtils_createBufferId1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c915_str
	.quad	c918_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId1_srt-(s90E_info)+0
	.long	0
	.quad	66
	.quad	4294967328
s90E_info:
.Lc91r:
	movq 8(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp EngineziGraphicsziGraphicsUtils_createBufferId2_info
	.size s90E_info, .-s90E_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId1_srt-(s90H_info)+0
	.long	0
	.quad	2
	.quad	12884901920
s90H_info:
.Lc91z:
	movq 8(%rbp),%rax
	leaq 16(%rax),%r14
	movl $1,%edi
	movq %r14,%rsi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl (%r14),%eax
	movq %rax,8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindVertexArray_closure,%ebx
	movq $s90E_info,0(%rbp)
	testq $7,%rbx
	jne s90E_info
	jmp *(%rbx)
	.size s90H_info, .-s90H_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId1_srt-(s90J_info)+0
	.long	0
	.quad	1
	.quad	30064771104
s90J_info:
.Lc91I:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenVertexArrays_closure,%ebx
	movq $s90H_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s90H_info
	jmp *(%rbx)
	.size s90J_info, .-s90J_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId1_srt-(EngineziGraphicsziGraphicsUtils_createBufferId1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	30064771087
.globl EngineziGraphicsziGraphicsUtils_createBufferId1_info
.type EngineziGraphicsziGraphicsUtils_createBufferId1_info, @object
EngineziGraphicsziGraphicsUtils_createBufferId1_info:
.Lc91O:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc91Q
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_createBufferId1_ct
	je .Lc91R
.Lc91S:
	incq EngineziGraphicsziGraphicsUtils_createBufferId1_ct+40
	movq %r14,-8(%rbp)
	movl $4,%ebx
	movl $4,%r14d
	movq $s90J_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
.Lc91Q:
	movl $EngineziGraphicsziGraphicsUtils_createBufferId1_closure,%ebx
	jmp *-8(%r13)
.Lc91R:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_createBufferId1_ct+56
	movq $EngineziGraphicsziGraphicsUtils_createBufferId1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_createBufferId1_ct
	jmp .Lc91S
	.size EngineziGraphicsziGraphicsUtils_createBufferId1_info, .-EngineziGraphicsziGraphicsUtils_createBufferId1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_createBufferId_srt:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId_closure
.type EngineziGraphicsziGraphicsUtils_createBufferId_closure, @object
EngineziGraphicsziGraphicsUtils_createBufferId_closure:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId_info
	.quad	0
.section .rodata
	.align 8
.align 1
c922_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	73
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	119
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c925_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferId_ct
.type EngineziGraphicsziGraphicsUtils_createBufferId_ct, @object
EngineziGraphicsziGraphicsUtils_createBufferId_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c922_str
	.quad	c925_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferId_srt-(EngineziGraphicsziGraphicsUtils_createBufferId_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_createBufferId_info
.type EngineziGraphicsziGraphicsUtils_createBufferId_info, @object
EngineziGraphicsziGraphicsUtils_createBufferId_info:
.Lc92a:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_createBufferId_ct
	je .Lc92d
.Lc92f:
	incq EngineziGraphicsziGraphicsUtils_createBufferId_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphicsUtils_createBufferId1_info
.Lc92d:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_createBufferId_ct+56
	movq $EngineziGraphicsziGraphicsUtils_createBufferId_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_createBufferId_ct
	jmp .Lc92f
	.size EngineziGraphicsziGraphicsUtils_createBufferId_info, .-EngineziGraphicsziGraphicsUtils_createBufferId_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_createBufferIdAll1_srt:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferIdAll1_closure
	.quad	EngineziGraphicsziGraphicsUtils_createBufferId1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferIdAll1_closure
.type EngineziGraphicsziGraphicsUtils_createBufferIdAll1_closure, @object
EngineziGraphicsziGraphicsUtils_createBufferIdAll1_closure:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info
	.quad	0
.section .rodata
	.align 8
.align 1
c92y_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	73
	.byte	100
	.byte	65
	.byte	108
	.byte	108
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c92B_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct
.type EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct, @object
EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c92y_str
	.quad	c92B_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
s92l_info:
.Lc92T:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc92Y
	addq $3,EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lc92Y:
	movq $24,192(%r13)
.Lc92W:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s92l_info, .-s92l_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferIdAll1_srt-(s92m_info)+0
	.long	0
	.quad	1
	.quad	4294967328
s92m_info:
.Lc932:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,8(%rbp)
	movq $s92l_info,0(%rbp)
	jmp EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info
	.size s92m_info, .-s92m_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferIdAll1_srt-(s92j_info)+0
	.long	0
	.quad	0
	.quad	12884901920
s92j_info:
.Lc937:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lc938
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc938:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%r14
	movq $s92m_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziGraphicsziGraphicsUtils_createBufferId1_info
	.size s92j_info, .-s92j_info
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferIdAll1_srt-(EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info
.type EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info, @object
EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info:
.Lc93f:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc93h
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct
	je .Lc93i
.Lc93j:
	incq EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct+40
	movq %r14,%rbx
	movq $s92j_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s92j_info
	jmp *(%rbx)
.Lc93h:
	movl $EngineziGraphicsziGraphicsUtils_createBufferIdAll1_closure,%ebx
	jmp *-8(%r13)
.Lc93i:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct+56
	movq $EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_createBufferIdAll1_ct
	jmp .Lc93j
	.size EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info, .-EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphicsUtils_createBufferIdAll_srt:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferIdAll1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferIdAll_closure
.type EngineziGraphicsziGraphicsUtils_createBufferIdAll_closure, @object
EngineziGraphicsziGraphicsUtils_createBufferIdAll_closure:
	.quad	EngineziGraphicsziGraphicsUtils_createBufferIdAll_info
	.quad	0
.section .rodata
	.align 8
.align 1
c93w_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	115
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	73
	.byte	100
	.byte	65
	.byte	108
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	90
	.byte	118
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c93z_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct
.type EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct, @object
EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c93w_str
	.quad	c93z_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphicsUtils_createBufferIdAll_srt-(EngineziGraphicsziGraphicsUtils_createBufferIdAll_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphicsUtils_createBufferIdAll_info
.type EngineziGraphicsziGraphicsUtils_createBufferIdAll_info, @object
EngineziGraphicsziGraphicsUtils_createBufferIdAll_info:
.Lc93E:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct
	je .Lc93H
.Lc93J:
	incq EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info
.Lc93H:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct+56
	movq $EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphicsUtils_createBufferIdAll_ct
	jmp .Lc93J
	.size EngineziGraphicsziGraphicsUtils_createBufferIdAll_info, .-EngineziGraphicsziGraphicsUtils_createBufferIdAll_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
