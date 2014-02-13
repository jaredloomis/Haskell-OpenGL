.data
	.align 8
.align 1
.globl __stginit_EngineziMatrixziMatrix
.type __stginit_EngineziMatrixziMatrix, @object
__stginit_EngineziMatrixziMatrix:
.data
	.align 8
.align 1
rF92_closure:
	.quad	rF92_info
.section .rodata
	.align 8
.align 1
cHjZ_str:
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	84
	.byte	111
	.byte	73
	.byte	110
	.byte	100
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	57
	.byte	50
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHk2_str:
	.byte	76
	.byte	76
	.byte	77
	.byte	0
.data
	.align 8
.align 1
rF92_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cHjZ_str
	.quad	cHk2_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	16
sHjJ_info:
.LcHkn:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHkp
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movq 32(%rbx),%rsi
	movq 16(%rbx),%rdi
	addq $-16,%rbp
	jmp rF92_info
.LcHkp:
	jmp *-16(%r13)
	.size sHjJ_info, .-sHjJ_info
.text
	.align 8
	.quad	3
	.quad	32
sHjI_info:
.LcHkv:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHkw
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHkw:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcHkA
	addq $13,rF92_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $sHjJ_info,-96(%r12)
	movq 16(%rbp),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq 14(%rbx),%rax
	movq %rax,-64(%r12)
	movq $stg_ap_3_upd_info,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 6(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -56(%r12),%rax
	movq %rax,-8(%r12)
	leaq -96(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHkA:
	movq $104,192(%r13)
.LcHky:
	jmp *-16(%r13)
	.size sHjI_info, .-sHjI_info
.text
	.align 8
	.quad	2
	.quad	32
sHjH_info:
.LcHkQ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHkR
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LcHkR:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sHjI_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHjI_info
	jmp *(%rbx)
	.size sHjH_info, .-sHjH_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
rF92_info:
.LcHl4:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHl6
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rF92_ct
	je .LcHl7
.LcHl8:
	incq rF92_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sHjH_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHjH_info
	jmp *(%rbx)
.LcHl6:
	movl $rF92_closure,%ebx
	jmp *-8(%r13)
.LcHl7:
	movq ticky_entry_ctrs,%rax
	movq %rax,rF92_ct+56
	movq $rF92_ct,ticky_entry_ctrs
	movq $1,rF92_ct
	jmp .LcHl8
	.size rF92_info, .-rF92_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_matrixProjection_closure
.type EngineziMatrixziMatrix_matrixProjection_closure, @object
EngineziMatrixziMatrix_matrixProjection_closure:
	.quad	EngineziMatrixziMatrix_matrixProjection_info
.section .rodata
	.align 8
.align 1
cHlq_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	80
	.byte	114
	.byte	111
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	57
	.byte	49
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHlt_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_matrixProjection_ct
.type EngineziMatrixziMatrix_matrixProjection_ct, @object
EngineziMatrixziMatrix_matrixProjection_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHlq_str
	.quad	cHlt_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sHlg_info:
.LcHlD:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sHlg_info, .-sHlg_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_matrixProjection_info
.type EngineziMatrixziMatrix_matrixProjection_info, @object
EngineziMatrixziMatrix_matrixProjection_info:
.LcHlH:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHlJ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_matrixProjection_ct
	je .LcHlK
.LcHlL:
	incq EngineziMatrixziMatrix_matrixProjection_ct+40
	movq %r14,%rbx
	movq $sHlg_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHlg_info
	jmp *(%rbx)
.LcHlJ:
	movl $EngineziMatrixziMatrix_matrixProjection_closure,%ebx
	jmp *-8(%r13)
.LcHlK:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_matrixProjection_ct+56
	movq $EngineziMatrixziMatrix_matrixProjection_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_matrixProjection_ct
	jmp .LcHlL
	.size EngineziMatrixziMatrix_matrixProjection_info, .-EngineziMatrixziMatrix_matrixProjection_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_matrixView_closure
.type EngineziMatrixziMatrix_matrixView_closure, @object
EngineziMatrixziMatrix_matrixView_closure:
	.quad	EngineziMatrixziMatrix_matrixView_info
.section .rodata
	.align 8
.align 1
cHm3_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	86
	.byte	105
	.byte	101
	.byte	119
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	57
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHm6_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_matrixView_ct
.type EngineziMatrixziMatrix_matrixView_ct, @object
EngineziMatrixziMatrix_matrixView_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHm3_str
	.quad	cHm6_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sHlT_info:
.LcHmg:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sHlT_info, .-sHlT_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_matrixView_info
.type EngineziMatrixziMatrix_matrixView_info, @object
EngineziMatrixziMatrix_matrixView_info:
.LcHmk:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHmm
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_matrixView_ct
	je .LcHmn
.LcHmo:
	incq EngineziMatrixziMatrix_matrixView_ct+40
	movq %r14,%rbx
	movq $sHlT_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHlT_info
	jmp *(%rbx)
.LcHmm:
	movl $EngineziMatrixziMatrix_matrixView_closure,%ebx
	jmp *-8(%r13)
.LcHmn:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_matrixView_ct+56
	movq $EngineziMatrixziMatrix_matrixView_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_matrixView_ct
	jmp .LcHmo
	.size EngineziMatrixziMatrix_matrixView_info, .-EngineziMatrixziMatrix_matrixView_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_matrixModel_closure
.type EngineziMatrixziMatrix_matrixModel_closure, @object
EngineziMatrixziMatrix_matrixModel_closure:
	.quad	EngineziMatrixziMatrix_matrixModel_info
.section .rodata
	.align 8
.align 1
cHmG_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	90
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHmJ_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_matrixModel_ct
.type EngineziMatrixziMatrix_matrixModel_ct, @object
EngineziMatrixziMatrix_matrixModel_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHmG_str
	.quad	cHmJ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sHmv_info:
.LcHmT:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sHmv_info, .-sHmv_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_matrixModel_info
.type EngineziMatrixziMatrix_matrixModel_info, @object
EngineziMatrixziMatrix_matrixModel_info:
.LcHmX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHmZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_matrixModel_ct
	je .LcHn0
.LcHn1:
	incq EngineziMatrixziMatrix_matrixModel_ct+40
	movq %r14,%rbx
	movq $sHmv_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHmv_info
	jmp *(%rbx)
.LcHmZ:
	movl $EngineziMatrixziMatrix_matrixModel_closure,%ebx
	jmp *-8(%r13)
.LcHn0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_matrixModel_ct+56
	movq $EngineziMatrixziMatrix_matrixModel_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_matrixModel_ct
	jmp .LcHn1
	.size EngineziMatrixziMatrix_matrixModel_info, .-EngineziMatrixziMatrix_matrixModel_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_applyToIndices2_closure
.type EngineziMatrixziMatrix_applyToIndices2_closure, @object
EngineziMatrixziMatrix_applyToIndices2_closure:
	.quad	EngineziMatrixziMatrix_applyToIndices2_info
.section .rodata
	.align 8
.align 1
cHnr_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	84
	.byte	111
	.byte	73
	.byte	110
	.byte	100
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	73
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHnu_str:
	.byte	76
	.byte	76
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_applyToIndices2_ct
.type EngineziMatrixziMatrix_applyToIndices2_ct, @object
EngineziMatrixziMatrix_applyToIndices2_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cHnr_str
	.quad	cHnu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	16
sHnb_info:
.LcHnP:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHnR
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movq 32(%rbx),%rsi
	movq 16(%rbx),%rdi
	addq $-16,%rbp
	jmp EngineziMatrixziMatrix_applyToIndices2_info
.LcHnR:
	jmp *-16(%r13)
	.size sHnb_info, .-sHnb_info
.text
	.align 8
	.quad	3
	.quad	16
sHnc_info:
.LcHnY:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHo0
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	addq $-16,%rbp
	jmp rF92_info
.LcHo0:
	jmp *-16(%r13)
	.size sHnc_info, .-sHnc_info
.text
	.align 8
	.quad	3
	.quad	32
sHna_info:
.LcHo6:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHo7
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHo7:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcHob
	addq $13,EngineziMatrixziMatrix_applyToIndices2_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $sHnb_info,-96(%r12)
	movq 16(%rbp),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq 14(%rbx),%rax
	movq %rax,-64(%r12)
	movq $sHnc_info,-56(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	movq 6(%rbx),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -56(%r12),%rax
	movq %rax,-8(%r12)
	leaq -96(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHob:
	movq $104,192(%r13)
.LcHo9:
	jmp *-16(%r13)
	.size sHna_info, .-sHna_info
.text
	.align 8
	.quad	2
	.quad	32
sHn9_info:
.LcHor:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHos
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LcHos:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sHna_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHna_info
	jmp *(%rbx)
	.size sHn9_info, .-sHn9_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_applyToIndices2_info
.type EngineziMatrixziMatrix_applyToIndices2_info, @object
EngineziMatrixziMatrix_applyToIndices2_info:
.LcHoF:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHoH
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_applyToIndices2_ct
	je .LcHoI
.LcHoJ:
	incq EngineziMatrixziMatrix_applyToIndices2_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sHn9_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHn9_info
	jmp *(%rbx)
.LcHoH:
	movl $EngineziMatrixziMatrix_applyToIndices2_closure,%ebx
	jmp *-8(%r13)
.LcHoI:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_applyToIndices2_ct+56
	movq $EngineziMatrixziMatrix_applyToIndices2_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_applyToIndices2_ct
	jmp .LcHoJ
	.size EngineziMatrixziMatrix_applyToIndices2_info, .-EngineziMatrixziMatrix_applyToIndices2_info
.section .data
	.align 8
.align 1
EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_srt:
	.quad	base_DataziList_sum_closure
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_closure
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_closure, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info
	.quad	0
.section .rodata
	.align 8
.align 1
cHp5_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	95
	.byte	36
	.byte	99
	.byte	42
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHp8_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cHp5_str
	.quad	cHp8_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	17
sH2X_info:
.LcHpj:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHpl
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp base_DataziList_transpose_info
.LcHpl:
	jmp *-16(%r13)
	.size sH2X_info, .-sH2X_info
.section .rodata
	.align 8
.align 1
cHpq_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	111
	.byte	83
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHpt_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
sHoS_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHpq_str
	.quad	cHpt_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cHpC_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	111
	.byte	82
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHpF_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
sHoR_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHpC_str
	.quad	cHpF_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_srt-(sHoQ_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sHoQ_info:
.LcHpP:
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfNumCFloat_closure,%r14d
	movq %rbx,%rsi
	addq $8,%rbp
	jmp base_DataziList_sum_info
	.size sHoQ_info, .-sHoQ_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_srt-(sHoR_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
sHoR_info:
.LcHpS:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHpU
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHoR_ct
	je .LcHpV
.LcHpW:
	incq sHoR_ct+40
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rsi
	movq %r14,%rdi
	movl $base_GHCziFloat_timesFloat_closure+2,%r14d
	movq $sHoQ_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_zzipWith_info
.LcHpU:
	jmp *-8(%r13)
.LcHpV:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHoR_ct+56
	movq $sHoR_ct,ticky_entry_ctrs
	movq $1,sHoR_ct
	jmp .LcHpW
	.size sHoR_info, .-sHoR_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_srt-(sHoS_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
sHoS_info:
.LcHq1:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHq5
	addq $2,sHoS_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHoS_ct
	je .LcHq6
.LcHq7:
	incq sHoS_ct+40
	movq $sHoR_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	movq 7(%rbx),%rsi
	jmp base_GHCziBase_map_info
.LcHq5:
	movq $16,192(%r13)
.LcHq3:
	jmp *-8(%r13)
.LcHq6:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHoS_ct+56
	movq $sHoS_ct,ticky_entry_ctrs
	movq $1,sHoS_ct
	jmp .LcHq7
	.size sHoS_info, .-sHoS_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_srt-(EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info:
.LcHqb:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcHqf
	addq $5,EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct
	je .LcHqg
.LcHqh:
	incq EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct+40
	movq $sH2X_info,-32(%r12)
	movq %r14,-16(%r12)
	movq $sHoS_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	jmp base_GHCziBase_map_info
.LcHqf:
	movq $40,192(%r13)
.LcHqd:
	movl $EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_closure,%ebx
	jmp *-8(%r13)
.LcHqg:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_ct
	jmp .LcHqh
	.size EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info, .-EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info
.data
	.align 8
.align 1
rH0x_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	63
	.long	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN2_closure
.type EngineziMatrixziMatrix_zdfNumZMZN2_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN2_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.data
	.align 8
.align 1
rH0y_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH0z_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0y_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0A_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0z_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0B_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	rH0A_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0C_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH0D_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0C_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0E_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	rH0D_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0F_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0E_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0G_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH0H_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	rH0G_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0I_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0H_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0J_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0I_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0K_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH0L_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0K_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0M_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0L_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0N_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0M_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0O_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0N_closure+2
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH0P_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0J_closure+2
	.quad	rH0O_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0Q_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0F_closure+2
	.quad	rH0P_closure+2
	.quad	1
.data
	.align 8
.align 1
rF98_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0B_closure+2
	.quad	rH0Q_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0R_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH0S_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0R_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0T_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0S_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0U_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	rH0T_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0V_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH0W_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0V_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0X_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	rH0W_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0Y_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH0X_closure+2
	.quad	1
.data
	.align 8
.align 1
rH0Z_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH10_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	rH0Z_closure+2
	.quad	1
.data
	.align 8
.align 1
rH11_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH10_closure+2
	.quad	1
.data
	.align 8
.align 1
rH12_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH11_closure+2
	.quad	1
.data
	.align 8
.align 1
rH13_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rF9e_closure:
	.quad	rF9e_info
.section .rodata
	.align 8
.align 1
cHsu_str:
	.byte	103
	.byte	116
	.byte	114
	.byte	97
	.byte	110
	.byte	115
	.byte	108
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	57
	.byte	101
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHsx_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rF9e_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHsu_str
	.quad	cHsx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sHrx_info:
.LcHsY:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHsZ
	addq $168,%r12
	cmpq 144(%r13),%r12
	ja .LcHt5
	addq $21,rF9e_ct+48
	incq ALLOC_HEAP_ctr
	addq $21,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-160(%r12)
	movq 8(%rbp),%rax
	movq %rax,-152(%r12)
	movq $rH13_closure+2,-144(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-136(%r12)
	movq 16(%rbp),%rax
	movq %rax,-128(%r12)
	leaq -158(%r12),%rax
	movq %rax,-120(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	movq 24(%rbp),%rax
	movq %rax,-104(%r12)
	leaq -134(%r12),%rax
	movq %rax,-96(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-88(%r12)
	leaq -110(%r12),%rax
	movq %rax,-80(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	movq $rH12_closure+2,-56(%r12)
	leaq -86(%r12),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq $rH0Y_closure+2,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $rH0U_closure+2,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHsZ:
	movl $rF98_closure+2,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHt5:
	movq $168,192(%r13)
.LcHt3:
	jmp *-16(%r13)
	.size sHrx_info, .-sHrx_info
.text
	.align 8
	.quad	2
	.quad	32
sHrv_info:
.LcHtm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHtn
	movl $rF98_closure+2,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LcHtn:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sHrx_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHrx_info
	jmp *(%rbx)
	.size sHrv_info, .-sHrv_info
.text
	.align 8
	.quad	1
	.quad	32
sHru_info:
.LcHtz:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHtA
	movl $rF98_closure+2,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcHtA:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sHrv_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHrv_info
	jmp *(%rbx)
	.size sHru_info, .-sHru_info
.text
	.align 8
	.quad	0
	.quad	32
sHrt_info:
.LcHtM:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHtN
	movl $rF98_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcHtN:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sHru_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHru_info
	jmp *(%rbx)
	.size sHrt_info, .-sHrt_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rF9e_info:
.LcHtX:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHtZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rF9e_ct
	je .LcHu0
.LcHu1:
	incq rF9e_ct+40
	movq %r14,%rbx
	movq $sHrt_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHrt_info
	jmp *(%rbx)
.LcHtZ:
	movl $rF9e_closure,%ebx
	jmp *-8(%r13)
.LcHu0:
	movq ticky_entry_ctrs,%rax
	movq %rax,rF9e_ct+56
	movq $rF9e_ct,ticky_entry_ctrs
	movq $1,rF9e_ct
	jmp .LcHu1
	.size rF9e_info, .-rF9e_info
.data
	.align 8
.align 1
rH14_closure:
	.quad	rH14_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cHuh_str:
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rH14_info:
.LcHul:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHun
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHup
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcHuq
.LcHur:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cHuh_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcHup:
	movq $16,192(%r13)
.LcHun:
	jmp *-16(%r13)
.LcHuq:
	jmp *(%rbx)
	.size rH14_info, .-rH14_info
.data
	.align 8
.align 1
rH15_closure:
	.quad	base_GHCziWord_W8zh_static_info
	.quad	0
.data
	.align 8
.align 1
rH16_closure:
	.quad	base_GHCziInt_I32zh_static_info
	.quad	1
.data
	.align 8
.align 1
rH17_closure:
	.quad	rH17_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cHuM_str:
	.byte	118
	.byte	105
	.byte	101
	.byte	119
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rH17_info:
.LcHuQ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHuS
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHuU
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcHuV
.LcHuW:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cHuM_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcHuU:
	movq $16,192(%r13)
.LcHuS:
	jmp *-16(%r13)
.LcHuV:
	jmp *(%rbx)
	.size rH17_info, .-rH17_info
.data
	.align 8
.align 1
rH18_closure:
	.quad	rH18_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cHvb_str:
	.byte	112
	.byte	114
	.byte	111
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rH18_info:
.LcHvf:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHvh
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHvj
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcHvk
.LcHvl:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cHvb_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcHvj:
	movq $16,192(%r13)
.LcHvh:
	jmp *-16(%r13)
.LcHvk:
	jmp *(%rbx)
	.size rH18_info, .-rH18_info
.data
	.align 8
.align 1
rH19_closure:
	.quad	rH19_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cHvA_str:
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rH19_info:
.LcHvE:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHvG
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHvI
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcHvJ
.LcHvK:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cHvA_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcHvI:
	movq $16,192(%r13)
.LcHvG:
	jmp *-16(%r13)
.LcHvJ:
	jmp *(%rbx)
	.size rH19_info, .-rH19_info
.section .data
	.align 8
.align 1
rH1a_srt:
	.quad	base_GHCziReal_zdfNumRatio3_closure
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	base_GHCziReal_zdwzdczs_closure
	.quad	base_DataziFixed_zdfHasResolutionE7_closure
	.quad	base_ForeignziMarshalziArray_withArrayLen_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
	.quad	EngineziGraphicsziShaders_setShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_quickGetUniform1_closure
	.quad	EngineziGraphicsziShaders_disableShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_bindTextures1_closure
	.quad	EngineziCoreziWorld_pentityModel1_closure
	.quad	rH14_closure
	.quad	rH17_closure
	.quad	rH18_closure
	.quad	rH19_closure
	.quad	rH1a_closure
.data
	.align 8
.align 1
rH1a_closure:
	.quad	rH1a_info
	.quad	0
.section .rodata
	.align 8
.align 1
cHzV_str:
	.byte	36
	.byte	115
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	72
	.byte	49
	.byte	97
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHzX_str:
	.byte	77
	.byte	76
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	69
	.byte	83
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rH1a_ct:
	.quad	0
	.quad	12
	.quad	6
	.quad	cHzV_str
	.quad	cHzX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
rH1a_slow:
.LcHA0:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp rH1a_info
	.size rH1a_slow, .-rH1a_slow
.text
	.align 8
	.quad	3
	.quad	16
sHvU_info:
.LcHAb:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHAd
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcHAf
	addq $9,rH1a_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	movq 32(%rbx),%rax
	movq %rax,-56(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -14(%r12),%r14
	addq $-16,%rbp
	jmp rF9e_info
.LcHAf:
	movq $72,192(%r13)
.LcHAd:
	jmp *-16(%r13)
	.size sHvU_info, .-sHvU_info
.text
	.align 8
	.quad	3
	.quad	32
sHwk_info:
.LcHAo:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcHAs
	addq $9,rH1a_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $sHvU_info,-64(%r12)
	movq 24(%rbp),%rax
	movq %rax,-48(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziMatrixziMatrix_WorldMatrices_con_info,-24(%r12)
	leaq -64(%r12),%rax
	movq %rax,-16(%r12)
	movq 15(%rbx),%rax
	movq %rax,-8(%r12)
	movq 23(%rbx),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHAs:
	movq $72,192(%r13)
.LcHAq:
	jmp *-16(%r13)
	.size sHwk_info, .-sHwk_info
.text
	.align 8
	.quad	4
	.quad	16
sH4N_info:
.LcHAD:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHAF
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sHwk_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne sHwk_info
	jmp *(%rbx)
.LcHAF:
	jmp *-16(%r13)
	.size sH4N_info, .-sH4N_info
.section .rodata
	.align 8
.align 1
cHAN_str:
	.byte	101
	.byte	116
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	72
	.byte	52
	.byte	81
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHAQ_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sH4Q_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cHAN_str
	.quad	cHAQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rH1a_srt-(sH4Q_info)+48
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sH4Q_info:
.LcHAV:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sH4Q_ct
	je .LcHAY
.LcHB0:
	incq sH4Q_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movl $rH16_closure+1,%edi
	movl $rH15_closure+1,%r8d
	movq %r14,%r9
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglUniformMatrix4fv_info
.LcHAY:
	movq ticky_entry_ctrs,%rax
	movq %rax,sH4Q_ct+56
	movq $sH4Q_ct,ticky_entry_ctrs
	movq $1,sH4Q_ct
	jmp .LcHB0
	.size sH4Q_info, .-sH4Q_info
.section .rodata
	.align 8
.align 1
cHB4_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	119
	.byte	101
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHB7_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sHwe_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cHB4_str
	.quad	cHB7_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901900
	.quad	1
	.quad	10
sHwe_info:
.LcHBc:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHwe_ct
	je .LcHBf
.LcHBh:
	incq sHwe_ct+40
	incq KNOWN_CALL_ctr
	movq 5(%rbx),%rbx
	movq %rsi,%r14
	jmp sH4Q_info
.LcHBf:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHwe_ct+56
	movq $sHwe_ct,ticky_entry_ctrs
	movq $1,sHwe_ct
	jmp .LcHBh
	.size sHwe_info, .-sHwe_info
.text
	.align 8
	.quad	0
	.quad	32
sHwu_info:
.LcHBo:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size sHwu_info, .-sHwu_info
.text
	.align 8
	.quad	1
	.quad	17
sHwf_info:
.LcHBt:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHBv
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sHwu_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHwu_info
	jmp *(%rbx)
.LcHBv:
	jmp *-16(%r13)
	.size sHwf_info, .-sHwf_info
.section .rodata
	.align 8
.align 1
cHBA_str:
	.byte	101
	.byte	116
	.byte	97
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	72
	.byte	53
	.byte	97
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHBD_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sH5a_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cHBA_str
	.quad	cHBD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rH1a_srt-(sH5a_info)+48
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sH5a_info:
.LcHBI:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sH5a_ct
	je .LcHBL
.LcHBN:
	incq sH5a_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movl $rH16_closure+1,%edi
	movl $rH15_closure+1,%r8d
	movq %r14,%r9
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglUniformMatrix4fv_info
.LcHBL:
	movq ticky_entry_ctrs,%rax
	movq %rax,sH5a_ct+56
	movq $sH5a_ct,ticky_entry_ctrs
	movq $1,sH5a_ct
	jmp .LcHBN
	.size sH5a_info, .-sH5a_info
.section .rodata
	.align 8
.align 1
cHBR_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	119
	.byte	57
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHBU_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sHw9_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cHBR_str
	.quad	cHBU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901900
	.quad	1
	.quad	10
sHw9_info:
.LcHBZ:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHw9_ct
	je .LcHC2
.LcHC4:
	incq sHw9_ct+40
	incq KNOWN_CALL_ctr
	movq 5(%rbx),%rbx
	movq %rsi,%r14
	jmp sH5a_info
.LcHC2:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHw9_ct+56
	movq $sHw9_ct,ticky_entry_ctrs
	movq $1,sHw9_ct
	jmp .LcHC4
	.size sHw9_info, .-sHw9_info
.text
	.align 8
	.quad	0
	.quad	32
sHwx_info:
.LcHCb:
	incq KNOWN_CALL_ctr
	movq 23(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size sHwx_info, .-sHwx_info
.text
	.align 8
	.quad	1
	.quad	17
sHwa_info:
.LcHCg:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHCi
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sHwx_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHwx_info
	jmp *(%rbx)
.LcHCi:
	jmp *-16(%r13)
	.size sHwa_info, .-sHwa_info
.section .rodata
	.align 8
.align 1
cHCn_str:
	.byte	101
	.byte	116
	.byte	97
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	72
	.byte	53
	.byte	117
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHCq_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sH5u_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cHCn_str
	.quad	cHCq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rH1a_srt-(sH5u_info)+48
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sH5u_info:
.LcHCv:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sH5u_ct
	je .LcHCy
.LcHCA:
	incq sH5u_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movl $rH16_closure+1,%edi
	movl $rH15_closure+1,%r8d
	movq %r14,%r9
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglUniformMatrix4fv_info
.LcHCy:
	movq ticky_entry_ctrs,%rax
	movq %rax,sH5u_ct+56
	movq $sH5u_ct,ticky_entry_ctrs
	movq $1,sH5u_ct
	jmp .LcHCA
	.size sH5u_info, .-sH5u_info
.section .rodata
	.align 8
.align 1
cHCE_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	119
	.byte	49
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHCH_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sHw1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cHCE_str
	.quad	cHCH_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901900
	.quad	1
	.quad	10
sHw1_info:
.LcHCM:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHw1_ct
	je .LcHCP
.LcHCR:
	incq sHw1_ct+40
	incq KNOWN_CALL_ctr
	movq 5(%rbx),%rbx
	movq %rsi,%r14
	jmp sH5u_info
.LcHCP:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHw1_ct+56
	movq $sHw1_ct,ticky_entry_ctrs
	movq $1,sHw1_ct
	jmp .LcHCR
	.size sHw1_info, .-sHw1_info
.text
	.align 8
	.quad	0
	.quad	32
sHwA_info:
.LcHCY:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size sHwA_info, .-sHwA_info
.text
	.align 8
	.quad	1
	.quad	17
sHw2_info:
.LcHD3:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHD5
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sHwA_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHwA_info
	jmp *(%rbx)
.LcHD5:
	jmp *-16(%r13)
	.size sHw2_info, .-sHw2_info
.section .rodata
	.align 8
.align 1
cHDa_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	54
	.byte	57
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHDd_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sH69_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHDa_str
	.quad	cHDd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rH1a_srt-(sHwB_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sHwB_info:
.LcHDp:
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq %rbx,%r14
	addq $8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sHwB_info, .-sHwB_info
.text
	.align 8
	.long	rH1a_srt-(sH66_info)+0
	.long	0
	.quad	1
	.quad	64424509457
sH66_info:
.LcHDt:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHDv
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movl $base_GHCziReal_zdfNumRatio3_closure,%esi
	movl $base_DataziFixed_zdfHasResolutionE7_closure,%edi
	movl $base_GHCziReal_zdfNumRatio3_closure,%r8d
	movq $sHwB_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziReal_zdwzdczs_info
.LcHDv:
	jmp *-16(%r13)
	.size sH66_info, .-sH66_info
.text
	.align 8
	.long	rH1a_srt-(sH69_info)+0
	.long	0
	.quad	4294967299
	.quad	1
	.quad	64424509450
sH69_info:
.LcHDz:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcHDD
	addq $6,sH69_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sH69_ct
	je .LcHDE
.LcHDF:
	incq sH69_ct+40
	movq $sH66_info,-40(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcHDD:
	movq $48,192(%r13)
.LcHDB:
	jmp *-8(%r13)
.LcHDE:
	movq ticky_entry_ctrs,%rax
	movq %rax,sH69_ct+56
	movq $sH69_ct,ticky_entry_ctrs
	movq $1,sH69_ct
	jmp .LcHDF
	.size sH69_info, .-sH69_info
.text
	.align 8
	.long	rH1a_srt-(sHwH_info)+160
	.long	0
	.quad	140
	.quad	4294967328
sHwH_info:
.LcHDS:
	xorl %edi,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq 40(%rbp),%rsi
	movq 96(%rbp),%rdi
	movq 8(%rbp),%rax
	movq %rax,96(%rbp)
	movq 32(%rbp),%r8
	movq 24(%rbp),%r9
	addq $56,%rbp
	jmp rH1a_info
	.size sHwH_info, .-sHwH_info
.text
	.align 8
	.long	rH1a_srt-(sHwI_info)+40
	.long	0
	.quad	140
	.quad	140741783322656
sHwI_info:
.LcHDX:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sHwH_info,0(%rbp)
	testq $7,%rbx
	jne sHwH_info
	jmp *(%rbx)
	.size sHwI_info, .-sHwI_info
.text
	.align 8
	.long	rH1a_srt-(sH6N_info)+40
	.long	0
	.quad	1423
	.quad	141841294950432
sH6N_info:
.LcHE3:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sHwI_info,24(%rbp)
	addq $24,%rbp
	jmp EngineziGraphicsziShaders_disableShaderAttribs1_info
	.size sH6N_info, .-sH6N_info
.text
	.align 8
	.long	rH1a_srt-(sHwO_info)+40
	.long	0
	.quad	1423
	.quad	141841294950432
sHwO_info:
.LcHEf:
	movl $3553,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	jmp sH6N_info
	.size sHwO_info, .-sHwO_info
.text
	.align 8
	.long	rH1a_srt-(sHwQ_info)+40
	.long	0
	.quad	1423
	.quad	141875654688800
sHwQ_info:
.LcHEj:
	movl $33984,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $sHwO_info,0(%rbp)
	testq $7,%rbx
	jne sHwO_info
	jmp *(%rbx)
	.size sHwQ_info, .-sHwQ_info
.text
	.align 8
	.long	rH1a_srt-(sH6O_info)+40
	.long	0
	.quad	1423
	.quad	141944374165536
sH6O_info:
.LcHEq:
	movl %ebx,%eax
	xorl %ebx,%ebx
	cmpq %rax,%rbx
	jb .LcHEs
	jmp sH6N_info
.LcHEs:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $sHwQ_info,0(%rbp)
	testq $7,%rbx
	jne sHwQ_info
	jmp *(%rbx)
	.size sH6O_info, .-sH6O_info
.text
	.align 8
	.long	rH1a_srt-(sHwK_info)+40
	.long	0
	.quad	2832
	.quad	141944374165536
sHwK_info:
.LcHEA:
	movq 48(%rbp),%rdx
	movl $4,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	xorl %esi,%esi
	movq $sH6O_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziList_zdwlen_info
	.size sHwK_info, .-sHwK_info
.text
	.align 8
	.long	rH1a_srt-(sHwL_info)+40
	.long	0
	.quad	2832
	.quad	141961554034720
sHwL_info:
.LcHEF:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure,%ebx
	movq $sHwK_info,0(%rbp)
	testq $7,%rbx
	jne sHwK_info
	jmp *(%rbx)
	.size sHwL_info, .-sHwL_info
.text
	.align 8
	.long	rH1a_srt-(sHwC_info)+0
	.long	0
	.quad	5649
	.quad	4828707176841248
sHwC_info:
.LcHEL:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcHEP
	addq $8,rH1a_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $sH69_info,-56(%r12)
	movq 96(%rbp),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-40(%r12)
	movq $rH14_closure,-32(%r12)
	leaq -55(%r12),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	leaq -14(%r12),%rsi
	movq $sHwL_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziGraphicsziShaders_setUniforms1_info
.LcHEP:
	movq $64,192(%r13)
.LcHEN:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sHwC_info, .-sHwC_info
.text
	.align 8
	.long	rH1a_srt-(sHwD_info)+0
	.long	0
	.quad	5649
	.quad	4899075921018912
sHwD_info:
.LcHEV:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sHwC_info,0(%rbp)
	jmp EngineziGraphicsziShaders_bindTextures1_info
	.size sHwD_info, .-sHwD_info
.text
	.align 8
	.long	rH1a_srt-(sHwE_info)+0
	.long	0
	.quad	5649
	.quad	4899075921018912
sHwE_info:
.LcHEY:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 136(%rbp),%rsi
	movq $sHwD_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setUniforms1_info
	.size sHwE_info, .-sHwE_info
.text
	.align 8
	.long	rH1a_srt-(sHwF_info)+0
	.long	0
	.quad	5649
	.quad	4907872014041120
sHwF_info:
.LcHF1:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq $sHwE_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setShaderAttribs1_info
	.size sHwF_info, .-sHwF_info
.text
	.align 8
	.long	rH1a_srt-(sHwy_info)+0
	.long	0
	.quad	4625
	.quad	4908215611424800
sHwy_info:
.LcHF4:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcHF8
	addq $7,rH1a_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sH5u_info,-48(%r12)
	movq %rbx,-40(%r12)
	movq $sHw1_info,-32(%r12)
	leaq -46(%r12),%rax
	movq %rax,-24(%r12)
	movq $sHw2_info,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $stg_ap_v_info,-8(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	leaq -16(%r12),%rsi
	leaq -29(%r12),%rdi
	movq $sHwF_info,0(%rbp)
	addq $-8,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LcHF8:
	movq $56,192(%r13)
.LcHF6:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sHwy_info, .-sHwy_info
.text
	.align 8
	.long	rH1a_srt-(sHwz_info)+0
	.long	0
	.quad	4625
	.quad	5488757750890528
sHwz_info:
.LcHFd:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movl $rH17_closure,%esi
	movq $sHwy_info,0(%rbp)
	jmp EngineziGraphicsziShaders_quickGetUniform1_info
	.size sHwz_info, .-sHwz_info
.text
	.align 8
	.long	rH1a_srt-(sHwv_info)+0
	.long	0
	.quad	4625
	.quad	5488757750890528
sHwv_info:
.LcHFg:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcHFk
	addq $7,rH1a_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sH5a_info,-48(%r12)
	movq %rbx,-40(%r12)
	movq $sHw9_info,-32(%r12)
	leaq -46(%r12),%rax
	movq %rax,-24(%r12)
	movq $sHwa_info,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $stg_ap_v_info,-8(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	leaq -16(%r12),%rsi
	leaq -29(%r12),%rdi
	movq $sHwz_info,0(%rbp)
	addq $-8,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LcHFk:
	movq $56,192(%r13)
.LcHFi:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sHwv_info, .-sHwv_info
.text
	.align 8
	.long	rH1a_srt-(sHww_info)+0
	.long	0
	.quad	4625
	.quad	6614657657733152
sHww_info:
.LcHFp:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movl $rH18_closure,%esi
	movq $sHwv_info,0(%rbp)
	jmp EngineziGraphicsziShaders_quickGetUniform1_info
	.size sHww_info, .-sHww_info
.text
	.align 8
	.long	rH1a_srt-(sHwl_info)+0
	.long	0
	.quad	20499
	.quad	6614657657733152
sHwl_info:
.LcHFs:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcHFw
	addq $13,rH1a_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $sH4N_info,-96(%r12)
	movq 144(%rbp),%rax
	movq %rax,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq $sH4Q_info,-48(%r12)
	movq %rbx,-40(%r12)
	movq $sHwe_info,-32(%r12)
	leaq -46(%r12),%rax
	movq %rax,-24(%r12)
	movq $sHwf_info,-16(%r12)
	leaq -96(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	leaq -96(%r12),%rax
	movq %rax,56(%rbp)
	movq $stg_ap_v_info,8(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	leaq -16(%r12),%rsi
	leaq -29(%r12),%rdi
	movq $sHww_info,16(%rbp)
	addq $8,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LcHFw:
	movq $104,192(%r13)
.LcHFu:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sHwl_info, .-sHwl_info
.text
	.align 8
	.long	rH1a_srt-(sHwn_info)+0
	.long	0
	.quad	20499
	.quad	8866457471418400
sHwn_info:
.LcHFG:
	movq 56(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 72(%rbp),%rcx
	call *%rcx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,72(%rbp)
	movq 24(%rbp),%r14
	movl $rH19_closure,%esi
	movq $sHwl_info,0(%rbp)
	jmp EngineziGraphicsziShaders_quickGetUniform1_info
	.size sHwn_info, .-sHwn_info
.text
	.align 8
	.long	rH1a_srt-(sHwo_info)+0
	.long	0
	.quad	5137
	.quad	8866457471418400
sHwo_info:
.LcHFM:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sHwn_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sHwn_info
	jmp *(%rbx)
	.size sHwo_info, .-sHwo_info
.text
	.align 8
	.long	rH1a_srt-(sH4q_info)+0
	.long	0
	.quad	2064
	.quad	8866457471418400
sH4q_info:
.LcHFX:
	movq %rbx,0(%rbp)
	movq 32(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sHwo_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHwo_info
	jmp *(%rbx)
	.size sH4q_info, .-sH4q_info
.text
	.align 8
	.long	rH1a_srt-(sHwp_info)+0
	.long	0
	.quad	269
	.quad	8866457471418400
sHwp_info:
.LcHG6:
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sH4q_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sH4q_info
	jmp *(%rbx)
	.size sHwp_info, .-sHwp_info
.text
	.align 8
	.long	rH1a_srt-(sHvS_info)+0
	.long	0
	.quad	140
	.quad	9007194959773728
sHvS_info:
.LcHGg:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcHGh
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 22(%rbx),%rbx
	movq $sHwp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHwp_info
	jmp *(%rbx)
.LcHGh:
	movl $EngineziCoreziWorld_pentityModel1_closure,%ebx
	addq $104,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sHvS_info, .-sHvS_info
.text
	.align 8
	.long	rH1a_srt-(sHvT_info)+0
	.long	0
	.quad	12
	.quad	9007194959773728
sHvT_info:
.LcHGr:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sHvS_info,0(%rbp)
	testq $7,%rbx
	jne sHvS_info
	jmp *(%rbx)
	.size sHvT_info, .-sHvT_info
.text
	.align 8
	.long	rH1a_srt-(sHvR_info)+0
	.long	0
	.quad	10
	.quad	9007194959773728
sHvR_info:
.LcHGC:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHGD
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $88,%rbp
	jmp *0(%rbp)
.LcHGD:
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sHvT_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sHvT_info
	jmp *(%rbx)
	.size sHvR_info, .-sHvR_info
.text
	.align 8
	.long	rH1a_slow-(rH1a_info)+0
	.long	0
	.quad	11
	.long	rH1a_srt-(rH1a_info)+0
	.long	0
	.quad	51539607552
	.quad	0
	.quad	9007194959773711
rH1a_info:
.LcHGO:
	leaq -112(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHGQ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rH1a_ct
	je .LcHGR
.LcHGS:
	incq rH1a_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq 40(%rbp),%rbx
	movq %rdi,40(%rbp)
	movq $sHvR_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sHvR_info
	jmp *(%rbx)
.LcHGQ:
	movl $rH1a_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcHGR:
	movq ticky_entry_ctrs,%rax
	movq %rax,rH1a_ct+56
	movq $rH1a_ct,ticky_entry_ctrs
	movq $1,rH1a_ct
	jmp .LcHGS
	.size rH1a_info, .-rH1a_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_closure
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_closure, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_info
.section .rodata
	.align 8
.align 1
cHH4_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	95
	.byte	36
	.byte	99
	.byte	43
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	84
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHH7_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cHH4_str
	.quad	cHH7_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_info
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_info, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_info:
.LcHHc:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct
	je .LcHHf
.LcHHh:
	incq EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct+40
	incq KNOWN_CALL_ctr
	movl $base_GHCziFloat_plusFloat_closure+2,%edi
	jmp EngineziMatrixziMatrix_applyToIndices2_info
.LcHHf:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_ct
	jmp .LcHHh
	.size EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_info, .-EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN9_closure
.type EngineziMatrixziMatrix_zdfNumZMZN9_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN9_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZN9_info
.section .rodata
	.align 8
.align 1
cHHp_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	57
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	72
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHHs_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN9_ct
.type EngineziMatrixziMatrix_zdfNumZMZN9_ct, @object
EngineziMatrixziMatrix_zdfNumZMZN9_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHHp_str
	.quad	cHHs_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_zdfNumZMZN9_info
.type EngineziMatrixziMatrix_zdfNumZMZN9_info, @object
EngineziMatrixziMatrix_zdfNumZMZN9_info:
.LcHHx:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZN9_ct
	je .LcHHA
.LcHHC:
	incq EngineziMatrixziMatrix_zdfNumZMZN9_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $base_GHCziFloat_zdfNumFloatzuzdcabs_closure+1,%r14d
	jmp base_GHCziBase_map_info
.LcHHA:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZN9_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZN9_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZN9_ct
	jmp .LcHHC
	.size EngineziMatrixziMatrix_zdfNumZMZN9_info, .-EngineziMatrixziMatrix_zdfNumZMZN9_info
.section .data
	.align 8
.align 1
EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_srt:
	.quad	EngineziMatrixziMatrix_zdfNumZMZN9_closure
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_closure
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_closure, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_info
	.quad	0
.section .rodata
	.align 8
.align 1
cHHL_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	95
	.byte	36
	.byte	99
	.byte	97
	.byte	98
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHHO_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHHL_str
	.quad	cHHO_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_srt-(EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_info
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_info, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_info:
.LcHHT:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct
	je .LcHHW
.LcHHY:
	incq EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $EngineziMatrixziMatrix_zdfNumZMZN9_closure+1,%r14d
	jmp base_GHCziBase_map_info
.LcHHW:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_ct
	jmp .LcHHY
	.size EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_info, .-EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN8_closure
.type EngineziMatrixziMatrix_zdfNumZMZN8_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN8_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZN8_info
.section .rodata
	.align 8
.align 1
cHI6_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	56
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	68
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHI9_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN8_ct
.type EngineziMatrixziMatrix_zdfNumZMZN8_ct, @object
EngineziMatrixziMatrix_zdfNumZMZN8_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHI6_str
	.quad	cHI9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_zdfNumZMZN8_info
.type EngineziMatrixziMatrix_zdfNumZMZN8_info, @object
EngineziMatrixziMatrix_zdfNumZMZN8_info:
.LcHIe:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZN8_ct
	je .LcHIh
.LcHIj:
	incq EngineziMatrixziMatrix_zdfNumZMZN8_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $base_GHCziFloat_zdfNumFloatzuzdcsignum_closure+1,%r14d
	jmp base_GHCziBase_map_info
.LcHIh:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZN8_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZN8_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZN8_ct
	jmp .LcHIj
	.size EngineziMatrixziMatrix_zdfNumZMZN8_info, .-EngineziMatrixziMatrix_zdfNumZMZN8_info
.section .data
	.align 8
.align 1
EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_srt:
	.quad	EngineziMatrixziMatrix_zdfNumZMZN8_closure
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_closure
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_closure, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_info
	.quad	0
.section .rodata
	.align 8
.align 1
cHIs_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	95
	.byte	36
	.byte	99
	.byte	115
	.byte	105
	.byte	103
	.byte	110
	.byte	117
	.byte	109
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	79
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHIv_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHIs_str
	.quad	cHIv_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_srt-(EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_info
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_info, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_info:
.LcHIA:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct
	je .LcHID
.LcHIF:
	incq EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $EngineziMatrixziMatrix_zdfNumZMZN8_closure+1,%r14d
	jmp base_GHCziBase_map_info
.LcHID:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_ct
	jmp .LcHIF
	.size EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_info, .-EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN7_closure
.type EngineziMatrixziMatrix_zdfNumZMZN7_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN7_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN6_closure
.type EngineziMatrixziMatrix_zdfNumZMZN6_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN6_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	EngineziMatrixziMatrix_zdfNumZMZN7_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN5_closure
.type EngineziMatrixziMatrix_zdfNumZMZN5_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN5_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	EngineziMatrixziMatrix_zdfNumZMZN6_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN4_closure
.type EngineziMatrixziMatrix_zdfNumZMZN4_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN4_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN3_closure
.type EngineziMatrixziMatrix_zdfNumZMZN3_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN3_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	EngineziMatrixziMatrix_zdfNumZMZN4_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN1_closure
.type EngineziMatrixziMatrix_zdfNumZMZN1_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN1_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_closure
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_closure, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_info
.section .rodata
	.align 8
.align 1
cHJ7_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	95
	.byte	36
	.byte	99
	.byte	102
	.byte	114
	.byte	111
	.byte	109
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	103
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	78
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHJa_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHJ7_str
	.quad	cHJa_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	17
sH7w_info:
.LcHJl:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHJn
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp base_GHCziFloat_zdfNumFloatzuzdcfromInteger_info
.LcHJn:
	jmp *-16(%r13)
	.size sH7w_info, .-sH7w_info
.text
	.align 8
	.quad	1
	.quad	17
sH7p_info:
.LcHJu:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHJw
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp base_GHCziFloat_zdfNumFloatzuzdcfromInteger_info
.LcHJw:
	jmp *-16(%r13)
	.size sH7p_info, .-sH7p_info
.text
	.align 8
	.quad	1
	.quad	17
sH7k_info:
.LcHJD:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHJF
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp base_GHCziFloat_zdfNumFloatzuzdcfromInteger_info
.LcHJF:
	jmp *-16(%r13)
	.size sH7k_info, .-sH7k_info
.text
	.align 8
	.quad	1
	.quad	17
sH7h_info:
.LcHJM:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHJO
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp base_GHCziFloat_zdfNumFloatzuzdcfromInteger_info
.LcHJO:
	jmp *-16(%r13)
	.size sH7h_info, .-sH7h_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_info
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_info, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_info:
.LcHJS:
	addq $432,%r12
	cmpq 144(%r13),%r12
	ja .LcHJW
	addq $54,EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct+48
	incq ALLOC_HEAP_ctr
	addq $54,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct
	je .LcHJX
.LcHJY:
	incq EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct+40
	movq $sH7w_info,-424(%r12)
	movq %r14,-408(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-400(%r12)
	leaq -424(%r12),%rax
	movq %rax,-392(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-384(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-376(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN2_closure+1,-368(%r12)
	leaq -398(%r12),%rax
	movq %rax,-360(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-352(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN2_closure+1,-344(%r12)
	leaq -374(%r12),%rax
	movq %rax,-336(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-328(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN2_closure+1,-320(%r12)
	leaq -350(%r12),%rax
	movq %rax,-312(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-304(%r12)
	leaq -326(%r12),%rax
	movq %rax,-296(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-288(%r12)
	movq $sH7p_info,-280(%r12)
	movq %r14,-264(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-256(%r12)
	leaq -280(%r12),%rax
	movq %rax,-248(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN1_closure+2,-240(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-232(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN2_closure+1,-224(%r12)
	leaq -254(%r12),%rax
	movq %rax,-216(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-208(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN2_closure+1,-200(%r12)
	leaq -230(%r12),%rax
	movq %rax,-192(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-184(%r12)
	leaq -206(%r12),%rax
	movq %rax,-176(%r12)
	leaq -302(%r12),%rax
	movq %rax,-168(%r12)
	movq $sH7k_info,-160(%r12)
	movq %r14,-144(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-136(%r12)
	leaq -160(%r12),%rax
	movq %rax,-128(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN3_closure+2,-120(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN2_closure+1,-104(%r12)
	leaq -134(%r12),%rax
	movq %rax,-96(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-88(%r12)
	leaq -110(%r12),%rax
	movq %rax,-80(%r12)
	leaq -182(%r12),%rax
	movq %rax,-72(%r12)
	movq $sH7h_info,-64(%r12)
	movq %r14,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	leaq -64(%r12),%rax
	movq %rax,-32(%r12)
	movq $EngineziMatrixziMatrix_zdfNumZMZN5_closure+2,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -38(%r12),%rax
	movq %rax,-8(%r12)
	leaq -86(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcHJW:
	movq $432,192(%r13)
.LcHJU:
	movl $EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_closure,%ebx
	jmp *-8(%r13)
.LcHJX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_ct
	jmp .LcHJY
	.size EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_info, .-EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_info
.data
	.align 8
.align 1
rH1b_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	0
.section .data
	.align 8
.align 1
rH1c_srt:
	.quad	rH1b_closure
.data
	.align 8
.align 1
rH1c_closure:
	.quad	rH1c_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rH1c_srt-(rH1c_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rH1c_info:
.LcHKw:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHKy
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHKA
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcHKB
.LcHKC:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rH1b_closure+1,%r14d
	addq $-16,%rbp
	jmp EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_info
.LcHKA:
	movq $16,192(%r13)
.LcHKy:
	jmp *-16(%r13)
.LcHKB:
	jmp *(%rbx)
	.size rH1c_info, .-rH1c_info
.section .data
	.align 8
.align 1
EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_srt:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_closure
	.quad	rH1c_closure
.section .data
	.align 8
.align 1
EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_srt:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_closure
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_closure
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_closure, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info
	.quad	0
.section .rodata
	.align 8
.align 1
cHKT_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	95
	.byte	36
	.byte	99
	.byte	110
	.byte	101
	.byte	103
	.byte	97
	.byte	116
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHKW_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHKT_str
	.quad	cHKW_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_srt-(EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	12884901903
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info:
.LcHL1:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct
	je .LcHL4
.LcHL6:
	incq EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $rH1c_closure,%r14d
	jmp EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info
.LcHL4:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_ct
	jmp .LcHL6
	.size EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info, .-EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_closure
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_closure, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_closure:
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info
	.quad	0
.section .rodata
	.align 8
.align 1
cHLd_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	91
	.byte	93
	.byte	95
	.byte	36
	.byte	99
	.byte	45
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cHLg_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cHLd_str
	.quad	cHLg_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_srt-(sHKJ_info)+0
	.long	0
	.quad	1
	.quad	4294967313
sHKJ_info:
.LcHLr:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHLt
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_info
.LcHLt:
	jmp *-16(%r13)
	.size sHKJ_info, .-sHKJ_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_srt-(EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info
.type EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info, @object
EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info:
.LcHLx:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcHLB
	addq $3,EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct
	je .LcHLC
.LcHLD:
	incq EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct+40
	movq $sHKJ_info,-16(%r12)
	movq %rsi,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%rsi
	movl $base_GHCziFloat_plusFloat_closure+2,%edi
	jmp EngineziMatrixziMatrix_applyToIndices2_info
.LcHLB:
	movq $24,192(%r13)
.LcHLz:
	movl $EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_closure,%ebx
	jmp *-8(%r13)
.LcHLC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct+56
	movq $EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_ct
	jmp .LcHLD
	.size EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info, .-EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_zdfNumZMZN_closure
.type EngineziMatrixziMatrix_zdfNumZMZN_closure, @object
EngineziMatrixziMatrix_zdfNumZMZN_closure:
	.quad	base_GHCziNum_DZCNum_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdczp_closure+2
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_closure+2
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdczm_closure+2
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcnegate_closure+1
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcabs_closure+1
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcsignum_closure+1
	.quad	EngineziMatrixziMatrix_zdfNumZMZNzuzdcfromInteger_closure+1
	.quad	0
.data
	.align 8
.align 1
rH1d_closure:
	.quad	rH1d_info
.section .rodata
	.align 8
.align 1
cHLO_str:
	.byte	97
	.byte	51
	.byte	48
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	72
	.byte	49
	.byte	100
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHLR_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rH1d_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHLO_str
	.quad	cHLR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rH1d_info:
.LcHLW:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rH1d_ct
	je .LcHLZ
.LcHM1:
	incq rH1d_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	jmp base_GHCziFloat_timesFloat_info
.LcHLZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,rH1d_ct+56
	movq $rH1d_ct,ticky_entry_ctrs
	movq $1,rH1d_ct
	jmp .LcHM1
	.size rH1d_info, .-rH1d_info
.section .data
	.align 8
.align 1
rH1e_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rH1e_closure:
	.quad	rH1e_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cHMe_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	47
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	51
	.byte	52
	.byte	58
	.byte	57
	.byte	45
	.byte	51
	.byte	54
	.byte	124
	.byte	91
	.byte	120
	.byte	44
	.byte	32
	.byte	121
	.byte	44
	.byte	32
	.byte	122
	.byte	93
	.byte	0
.text
	.align 8
	.long	rH1e_srt-(rH1e_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rH1e_info:
.LcHMi:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHMk
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHMm
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcHMn
.LcHMo:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cHMe_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcHMm:
	movq $16,192(%r13)
.LcHMk:
	jmp *-16(%r13)
.LcHMn:
	jmp *(%rbx)
	.size rH1e_info, .-rH1e_info
.data
	.align 8
.align 1
rH1f_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH0x_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1g_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1f_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1h_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1g_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1i_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1h_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1j_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1k_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1l_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1m_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1i_closure+2
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.section .data
	.align 8
.align 1
rF9g_srt:
	.quad	base_DataziList_sum_closure
	.quad	rH1e_closure
.data
	.align 8
.align 1
rF9g_closure:
	.quad	rF9g_info
	.quad	0
.section .rodata
	.align 8
.align 1
cHTu_str:
	.byte	103
	.byte	114
	.byte	111
	.byte	116
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	57
	.byte	103
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHTx_str:
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rF9g_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cHTu_str
	.quad	cHTx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sHNs_info:
.LcHTJ:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHTP
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcHTP:
	movq $16,192(%r13)
.LcHTN:
	jmp *-16(%r13)
	.size sHNs_info, .-sHNs_info
.text
	.align 8
	.quad	1
	.quad	17
sH83_info:
.LcHTW:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHTY
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sHNs_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHNs_info
	jmp *(%rbx)
.LcHTY:
	jmp *-16(%r13)
	.size sH83_info, .-sH83_info
.text
	.align 8
	.quad	0
	.quad	32
sHNt_info:
.LcHU7:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHUd
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcHUd:
	movq $16,192(%r13)
.LcHUb:
	jmp *-16(%r13)
	.size sHNt_info, .-sHNt_info
.text
	.align 8
	.quad	1
	.quad	17
sH89_info:
.LcHUk:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHUm
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sHNt_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHNt_info
	jmp *(%rbx)
.LcHUm:
	jmp *-16(%r13)
	.size sH89_info, .-sH89_info
.text
	.align 8
	.quad	0
	.quad	32
sHNu_info:
.LcHUv:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHUB
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss .LnHUD(%rip),%xmm0
	subss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcHUB:
	movq $16,192(%r13)
.LcHUz:
	jmp *-16(%r13)
	.size sHNu_info, .-sHNu_info
.section .rodata
	.align 8
.align 4
.LnHUD:
	.byte	0
	.byte	0
	.byte	128
	.byte	63
.text
	.align 8
	.quad	1
	.quad	17
sH8f_info:
.LcHUJ:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHUL
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sHNu_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHNu_info
	jmp *(%rbx)
.LcHUL:
	jmp *-16(%r13)
	.size sH8f_info, .-sH8f_info
.text
	.align 8
	.quad	0
	.quad	32
sHNv_info:
.LcHV0:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHV6
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sqrtf
	addq $8,%rsp
	movss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss .LnHV9(%rip),%xmm0
	divss %xmm1,%xmm0
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcHV6:
	movq $16,192(%r13)
.LcHV4:
	jmp *-16(%r13)
	.size sHNv_info, .-sHNv_info
.section .rodata
	.align 8
.align 4
.LnHV9:
	.byte	0
	.byte	0
	.byte	128
	.byte	63
.text
	.align 8
	.long	rF9g_srt-(sHMO_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sHMO_info:
.LcHVe:
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfNumCFloat_closure,%r14d
	movq %rbx,%rsi
	movq $sHNv_info,0(%rbp)
	jmp base_DataziList_sum_info
	.size sHMO_info, .-sHMO_info
.text
	.align 8
	.long	rF9g_srt-(sH8q_info)+0
	.long	0
	.quad	1
	.quad	4294967313
sH8q_info:
.LcHVi:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHVk
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rH1d_closure+1,%r14d
	movq 16(%rbx),%rsi
	movq $sHMO_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziBase_map_info
.LcHVk:
	jmp *-16(%r13)
	.size sH8q_info, .-sH8q_info
.section .rodata
	.align 8
.align 1
cHVp_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	77
	.byte	81
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cHVs_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sHMQ_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cHVp_str
	.quad	cHVs_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	65
	.quad	32
sHNw_info:
.LcHVG:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHVM
	addq $2,sHMQ_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcHVM:
	movq $16,192(%r13)
.LcHVK:
	jmp *-16(%r13)
	.size sHNw_info, .-sHNw_info
.text
	.align 8
	.quad	1
	.quad	32
sHNx_info:
.LcHVR:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHNw_info,0(%rbp)
	testq $7,%rbx
	jne sHNw_info
	jmp *(%rbx)
	.size sHNx_info, .-sHNx_info
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sHMQ_info:
.LcHW0:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHW2
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHMQ_ct
	je .LcHW3
.LcHW4:
	incq sHMQ_ct+40
	movq %r14,-8(%rbp)
	movq 7(%rbx),%rbx
	movq $sHNx_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sHNx_info
	jmp *(%rbx)
.LcHW2:
	jmp *-8(%r13)
.LcHW3:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHMQ_ct+56
	movq $sHMQ_ct,ticky_entry_ctrs
	movq $1,sHMQ_ct
	jmp .LcHW4
	.size sHMQ_info, .-sHMQ_info
.text
	.align 8
	.long	rF9g_srt-(sHNB_info)+8
	.long	0
	.quad	3
	.quad	4294967328
sHNB_info:
.LcHWv:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHWw
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcHWC
	addq $4,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z3T_con_info,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcHWw:
	movl $rH1e_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcHWC:
	movq $32,192(%r13)
.LcHWA:
	jmp *-16(%r13)
	.size sHNB_info, .-sHNB_info
.text
	.align 8
	.long	rF9g_srt-(sHNA_info)+8
	.long	0
	.quad	2
	.quad	4294967328
sHNA_info:
.LcHWO:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHWP
	movl $rH1e_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcHWP:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sHNB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHNB_info
	jmp *(%rbx)
	.size sHNA_info, .-sHNA_info
.text
	.align 8
	.long	rF9g_srt-(sHNz_info)+8
	.long	0
	.quad	1
	.quad	4294967328
sHNz_info:
.LcHX2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHX3
	movl $rH1e_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcHX3:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sHNA_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHNA_info
	jmp *(%rbx)
	.size sHNz_info, .-sHNz_info
.text
	.align 8
	.long	rF9g_srt-(sHNy_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sHNy_info:
.LcHXg:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcHXh
	movl $rH1e_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcHXh:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sHNz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sHNz_info
	jmp *(%rbx)
	.size sHNy_info, .-sHNy_info
.text
	.align 8
	.long	rF9g_srt-(sH8T_info)+0
	.long	0
	.quad	1
	.quad	12884901905
sH8T_info:
.LcHXt:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHXv
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcHXx
	addq $5,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sH8q_info,-32(%r12)
	movq 16(%rbx),%rax
	movq %rax,-16(%r12)
	movq $sHMQ_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	movq 16(%rbx),%rsi
	movq $sHNy_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziBase_map_info
.LcHXx:
	movq $40,192(%r13)
.LcHXv:
	jmp *-16(%r13)
	.size sH8T_info, .-sH8T_info
.text
	.align 8
	.quad	194
	.quad	32
sHNF_info:
.LcHXP:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHXV
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss 8(%rbp),%xmm0
	mulss 16(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcHXV:
	movq $16,192(%r13)
.LcHXT:
	jmp *-16(%r13)
	.size sHNF_info, .-sHNF_info
.text
	.align 8
	.quad	66
	.quad	32
sHNG_info:
.LcHY2:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHNF_info,0(%rbp)
	testq $7,%rbx
	jne sHNF_info
	jmp *(%rbx)
	.size sHNG_info, .-sHNG_info
.text
	.align 8
	.quad	2
	.quad	32
sHNH_info:
.LcHYb:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHNG_info,0(%rbp)
	testq $7,%rbx
	jne sHNG_info
	jmp *(%rbx)
	.size sHNH_info, .-sHNH_info
.text
	.align 8
	.quad	3
	.quad	16
sHca_info:
.LcHYm:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHYo
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 32(%rbx),%rbx
	movq $sHNH_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sHNH_info
	jmp *(%rbx)
.LcHYo:
	jmp *-16(%r13)
	.size sHca_info, .-sHca_info
.text
	.align 8
	.quad	964
	.quad	32
sHNI_info:
.LcHYP:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcHYV
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 32(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 16(%rbp),%xmm1
	mulss 24(%rbp),%xmm1
	mulss 8(%rbp),%xmm1
	subss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcHYV:
	movq $16,192(%r13)
.LcHYT:
	jmp *-16(%r13)
	.size sHNI_info, .-sHNI_info
.text
	.align 8
	.quad	452
	.quad	32
sHNJ_info:
.LcHZ4:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sHNI_info,0(%rbp)
	testq $7,%rbx
	jne sHNI_info
	jmp *(%rbx)
	.size sHNJ_info, .-sHNJ_info
.text
	.align 8
	.quad	388
	.quad	32
sHNK_info:
.LcHZd:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHNJ_info,0(%rbp)
	testq $7,%rbx
	jne sHNJ_info
	jmp *(%rbx)
	.size sHNK_info, .-sHNK_info
.text
	.align 8
	.quad	132
	.quad	32
sHNL_info:
.LcHZm:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sHNK_info,0(%rbp)
	testq $7,%rbx
	jne sHNK_info
	jmp *(%rbx)
	.size sHNL_info, .-sHNL_info
.text
	.align 8
	.quad	4
	.quad	32
sHNM_info:
.LcHZv:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHNL_info,0(%rbp)
	testq $7,%rbx
	jne sHNL_info
	jmp *(%rbx)
	.size sHNM_info, .-sHNM_info
.text
	.align 8
	.quad	5
	.quad	16
sHcd_info:
.LcHZG:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcHZI
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $sHNM_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sHNM_info
	jmp *(%rbx)
.LcHZI:
	jmp *-16(%r13)
	.size sHcd_info, .-sHcd_info
.text
	.align 8
	.quad	964
	.quad	32
sHNN_info:
.LcI0b:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI0h
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 32(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 16(%rbp),%xmm1
	mulss 24(%rbp),%xmm1
	mulss 8(%rbp),%xmm1
	addss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcI0h:
	movq $16,192(%r13)
.LcI0f:
	jmp *-16(%r13)
	.size sHNN_info, .-sHNN_info
.text
	.align 8
	.quad	452
	.quad	32
sHNO_info:
.LcI0q:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sHNN_info,0(%rbp)
	testq $7,%rbx
	jne sHNN_info
	jmp *(%rbx)
	.size sHNO_info, .-sHNO_info
.text
	.align 8
	.quad	388
	.quad	32
sHNP_info:
.LcI0z:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHNO_info,0(%rbp)
	testq $7,%rbx
	jne sHNO_info
	jmp *(%rbx)
	.size sHNP_info, .-sHNP_info
.text
	.align 8
	.quad	132
	.quad	32
sHNQ_info:
.LcI0I:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sHNP_info,0(%rbp)
	testq $7,%rbx
	jne sHNP_info
	jmp *(%rbx)
	.size sHNQ_info, .-sHNQ_info
.text
	.align 8
	.quad	4
	.quad	32
sHNR_info:
.LcI0R:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHNQ_info,0(%rbp)
	testq $7,%rbx
	jne sHNQ_info
	jmp *(%rbx)
	.size sHNR_info, .-sHNR_info
.text
	.align 8
	.quad	5
	.quad	16
sHcg_info:
.LcI12:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI14
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 48(%rbx),%rbx
	movq $sHNR_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sHNR_info
	jmp *(%rbx)
.LcI14:
	jmp *-16(%r13)
	.size sHcg_info, .-sHcg_info
.text
	.align 8
	.quad	964
	.quad	32
sHNS_info:
.LcI1x:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI1D
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 32(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 16(%rbp),%xmm1
	mulss 24(%rbp),%xmm1
	mulss 8(%rbp),%xmm1
	addss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcI1D:
	movq $16,192(%r13)
.LcI1B:
	jmp *-16(%r13)
	.size sHNS_info, .-sHNS_info
.text
	.align 8
	.quad	452
	.quad	32
sHNT_info:
.LcI1M:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sHNS_info,0(%rbp)
	testq $7,%rbx
	jne sHNS_info
	jmp *(%rbx)
	.size sHNT_info, .-sHNT_info
.text
	.align 8
	.quad	388
	.quad	32
sHNU_info:
.LcI1V:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHNT_info,0(%rbp)
	testq $7,%rbx
	jne sHNT_info
	jmp *(%rbx)
	.size sHNU_info, .-sHNU_info
.text
	.align 8
	.quad	132
	.quad	32
sHNV_info:
.LcI24:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sHNU_info,0(%rbp)
	testq $7,%rbx
	jne sHNU_info
	jmp *(%rbx)
	.size sHNV_info, .-sHNV_info
.text
	.align 8
	.quad	4
	.quad	32
sHNW_info:
.LcI2d:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHNV_info,0(%rbp)
	testq $7,%rbx
	jne sHNV_info
	jmp *(%rbx)
	.size sHNW_info, .-sHNW_info
.text
	.align 8
	.quad	5
	.quad	16
sHb9_info:
.LcI2o:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI2q
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $sHNW_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sHNW_info
	jmp *(%rbx)
.LcI2q:
	jmp *-16(%r13)
	.size sHb9_info, .-sHb9_info
.text
	.align 8
	.quad	194
	.quad	32
sHNX_info:
.LcI2L:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI2R
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss 8(%rbp),%xmm0
	mulss 16(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcI2R:
	movq $16,192(%r13)
.LcI2P:
	jmp *-16(%r13)
	.size sHNX_info, .-sHNX_info
.text
	.align 8
	.quad	66
	.quad	32
sHNY_info:
.LcI2Y:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHNX_info,0(%rbp)
	testq $7,%rbx
	jne sHNX_info
	jmp *(%rbx)
	.size sHNY_info, .-sHNY_info
.text
	.align 8
	.quad	2
	.quad	32
sHNZ_info:
.LcI37:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHNY_info,0(%rbp)
	testq $7,%rbx
	jne sHNY_info
	jmp *(%rbx)
	.size sHNZ_info, .-sHNZ_info
.text
	.align 8
	.quad	3
	.quad	16
sHbc_info:
.LcI3i:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI3k
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 32(%rbx),%rbx
	movq $sHNZ_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sHNZ_info
	jmp *(%rbx)
.LcI3k:
	jmp *-16(%r13)
	.size sHbc_info, .-sHbc_info
.text
	.align 8
	.quad	964
	.quad	32
sHO0_info:
.LcI3L:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI3R
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 32(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 8(%rbp),%xmm1
	mulss 24(%rbp),%xmm1
	mulss 16(%rbp),%xmm1
	subss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcI3R:
	movq $16,192(%r13)
.LcI3P:
	jmp *-16(%r13)
	.size sHO0_info, .-sHO0_info
.text
	.align 8
	.quad	452
	.quad	32
sHO1_info:
.LcI40:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sHO0_info,0(%rbp)
	testq $7,%rbx
	jne sHO0_info
	jmp *(%rbx)
	.size sHO1_info, .-sHO1_info
.text
	.align 8
	.quad	324
	.quad	32
sHO2_info:
.LcI49:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHO1_info,0(%rbp)
	testq $7,%rbx
	jne sHO1_info
	jmp *(%rbx)
	.size sHO2_info, .-sHO2_info
.text
	.align 8
	.quad	68
	.quad	32
sHO3_info:
.LcI4i:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sHO2_info,0(%rbp)
	testq $7,%rbx
	jne sHO2_info
	jmp *(%rbx)
	.size sHO3_info, .-sHO3_info
.text
	.align 8
	.quad	4
	.quad	32
sHO4_info:
.LcI4r:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHO3_info,0(%rbp)
	testq $7,%rbx
	jne sHO3_info
	jmp *(%rbx)
	.size sHO4_info, .-sHO4_info
.text
	.align 8
	.quad	5
	.quad	16
sHbf_info:
.LcI4C:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI4E
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 48(%rbx),%rbx
	movq $sHO4_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sHO4_info
	jmp *(%rbx)
.LcI4E:
	jmp *-16(%r13)
	.size sHbf_info, .-sHbf_info
.text
	.align 8
	.quad	964
	.quad	32
sHO5_info:
.LcI57:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI5d
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 32(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 8(%rbp),%xmm1
	mulss 24(%rbp),%xmm1
	mulss 16(%rbp),%xmm1
	subss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcI5d:
	movq $16,192(%r13)
.LcI5b:
	jmp *-16(%r13)
	.size sHO5_info, .-sHO5_info
.text
	.align 8
	.quad	452
	.quad	32
sHO6_info:
.LcI5m:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sHO5_info,0(%rbp)
	testq $7,%rbx
	jne sHO5_info
	jmp *(%rbx)
	.size sHO6_info, .-sHO6_info
.text
	.align 8
	.quad	324
	.quad	32
sHO7_info:
.LcI5v:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHO6_info,0(%rbp)
	testq $7,%rbx
	jne sHO6_info
	jmp *(%rbx)
	.size sHO7_info, .-sHO7_info
.text
	.align 8
	.quad	68
	.quad	32
sHO8_info:
.LcI5E:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sHO7_info,0(%rbp)
	testq $7,%rbx
	jne sHO7_info
	jmp *(%rbx)
	.size sHO8_info, .-sHO8_info
.text
	.align 8
	.quad	4
	.quad	32
sHO9_info:
.LcI5N:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHO8_info,0(%rbp)
	testq $7,%rbx
	jne sHO8_info
	jmp *(%rbx)
	.size sHO9_info, .-sHO9_info
.text
	.align 8
	.quad	5
	.quad	16
sHa8_info:
.LcI5Y:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI60
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 32(%rbx),%rbx
	movq $sHO9_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sHO9_info
	jmp *(%rbx)
.LcI60:
	jmp *-16(%r13)
	.size sHa8_info, .-sHa8_info
.text
	.align 8
	.quad	964
	.quad	32
sHOa_info:
.LcI6t:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI6z
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 32(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 8(%rbp),%xmm1
	mulss 24(%rbp),%xmm1
	mulss 16(%rbp),%xmm1
	addss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcI6z:
	movq $16,192(%r13)
.LcI6x:
	jmp *-16(%r13)
	.size sHOa_info, .-sHOa_info
.text
	.align 8
	.quad	452
	.quad	32
sHOb_info:
.LcI6I:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sHOa_info,0(%rbp)
	testq $7,%rbx
	jne sHOa_info
	jmp *(%rbx)
	.size sHOb_info, .-sHOb_info
.text
	.align 8
	.quad	324
	.quad	32
sHOc_info:
.LcI6R:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHOb_info,0(%rbp)
	testq $7,%rbx
	jne sHOb_info
	jmp *(%rbx)
	.size sHOc_info, .-sHOc_info
.text
	.align 8
	.quad	68
	.quad	32
sHOd_info:
.LcI70:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sHOc_info,0(%rbp)
	testq $7,%rbx
	jne sHOc_info
	jmp *(%rbx)
	.size sHOd_info, .-sHOd_info
.text
	.align 8
	.quad	4
	.quad	32
sHOe_info:
.LcI79:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHOd_info,0(%rbp)
	testq $7,%rbx
	jne sHOd_info
	jmp *(%rbx)
	.size sHOe_info, .-sHOe_info
.text
	.align 8
	.quad	5
	.quad	16
sHab_info:
.LcI7k:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI7m
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $sHOe_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sHOe_info
	jmp *(%rbx)
.LcI7m:
	jmp *-16(%r13)
	.size sHab_info, .-sHab_info
.text
	.align 8
	.quad	194
	.quad	32
sHOf_info:
.LcI7H:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI7N
	addq $2,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss 8(%rbp),%xmm0
	mulss 16(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcI7N:
	movq $16,192(%r13)
.LcI7L:
	jmp *-16(%r13)
	.size sHOf_info, .-sHOf_info
.text
	.align 8
	.quad	66
	.quad	32
sHOg_info:
.LcI7U:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sHOf_info,0(%rbp)
	testq $7,%rbx
	jne sHOf_info
	jmp *(%rbx)
	.size sHOg_info, .-sHOg_info
.text
	.align 8
	.quad	2
	.quad	32
sHOh_info:
.LcI83:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sHOg_info,0(%rbp)
	testq $7,%rbx
	jne sHOg_info
	jmp *(%rbx)
	.size sHOh_info, .-sHOh_info
.text
	.align 8
	.quad	3
	.quad	16
sHae_info:
.LcI8e:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI8g
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 32(%rbx),%rbx
	movq $sHOh_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sHOh_info
	jmp *(%rbx)
.LcI8g:
	jmp *-16(%r13)
	.size sHae_info, .-sHae_info
.text
	.align 8
	.long	rF9g_srt-(rF9g_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	12884901903
rF9g_info:
.LcI8n:
	addq $912,%r12
	cmpq 144(%r13),%r12
	ja .LcI8r
	addq $114,rF9g_ct+48
	incq ALLOC_HEAP_ctr
	addq $114,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rF9g_ct
	je .LcI8s
.LcI8t:
	incq rF9g_ct+40
	movq $sH83_info,-904(%r12)
	movq %r14,-888(%r12)
	movq $sH89_info,-880(%r12)
	movq %r14,-864(%r12)
	movq $sH8f_info,-856(%r12)
	leaq -880(%r12),%rax
	movq %rax,-840(%r12)
	movq $sH8T_info,-832(%r12)
	movq %rsi,-816(%r12)
	movq $stg_sel_2_upd_info,-808(%r12)
	leaq -832(%r12),%rax
	movq %rax,-792(%r12)
	movq $stg_sel_1_upd_info,-784(%r12)
	leaq -832(%r12),%rax
	movq %rax,-768(%r12)
	movq $stg_sel_0_upd_info,-760(%r12)
	leaq -832(%r12),%rax
	movq %rax,-744(%r12)
	movq $sHca_info,-736(%r12)
	leaq -880(%r12),%rax
	movq %rax,-720(%r12)
	leaq -856(%r12),%rax
	movq %rax,-712(%r12)
	leaq -808(%r12),%rax
	movq %rax,-704(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-696(%r12)
	leaq -736(%r12),%rax
	movq %rax,-688(%r12)
	movq $rH1l_closure+2,-680(%r12)
	movq $sHcd_info,-672(%r12)
	leaq -904(%r12),%rax
	movq %rax,-656(%r12)
	leaq -856(%r12),%rax
	movq %rax,-648(%r12)
	leaq -808(%r12),%rax
	movq %rax,-640(%r12)
	leaq -784(%r12),%rax
	movq %rax,-632(%r12)
	leaq -760(%r12),%rax
	movq %rax,-624(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-616(%r12)
	leaq -672(%r12),%rax
	movq %rax,-608(%r12)
	leaq -694(%r12),%rax
	movq %rax,-600(%r12)
	movq $sHcg_info,-592(%r12)
	leaq -904(%r12),%rax
	movq %rax,-576(%r12)
	leaq -856(%r12),%rax
	movq %rax,-568(%r12)
	leaq -808(%r12),%rax
	movq %rax,-560(%r12)
	leaq -784(%r12),%rax
	movq %rax,-552(%r12)
	leaq -760(%r12),%rax
	movq %rax,-544(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-536(%r12)
	leaq -592(%r12),%rax
	movq %rax,-528(%r12)
	leaq -614(%r12),%rax
	movq %rax,-520(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-512(%r12)
	leaq -534(%r12),%rax
	movq %rax,-504(%r12)
	movq $rH1m_closure+2,-496(%r12)
	movq $sHb9_info,-488(%r12)
	leaq -904(%r12),%rax
	movq %rax,-472(%r12)
	leaq -856(%r12),%rax
	movq %rax,-464(%r12)
	leaq -808(%r12),%rax
	movq %rax,-456(%r12)
	leaq -784(%r12),%rax
	movq %rax,-448(%r12)
	leaq -760(%r12),%rax
	movq %rax,-440(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-432(%r12)
	leaq -488(%r12),%rax
	movq %rax,-424(%r12)
	movq $rH1k_closure+2,-416(%r12)
	movq $sHbc_info,-408(%r12)
	leaq -880(%r12),%rax
	movq %rax,-392(%r12)
	leaq -856(%r12),%rax
	movq %rax,-384(%r12)
	leaq -784(%r12),%rax
	movq %rax,-376(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-368(%r12)
	leaq -408(%r12),%rax
	movq %rax,-360(%r12)
	leaq -430(%r12),%rax
	movq %rax,-352(%r12)
	movq $sHbf_info,-344(%r12)
	leaq -904(%r12),%rax
	movq %rax,-328(%r12)
	leaq -856(%r12),%rax
	movq %rax,-320(%r12)
	leaq -808(%r12),%rax
	movq %rax,-312(%r12)
	leaq -784(%r12),%rax
	movq %rax,-304(%r12)
	leaq -760(%r12),%rax
	movq %rax,-296(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-288(%r12)
	leaq -344(%r12),%rax
	movq %rax,-280(%r12)
	leaq -366(%r12),%rax
	movq %rax,-272(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-264(%r12)
	leaq -286(%r12),%rax
	movq %rax,-256(%r12)
	leaq -510(%r12),%rax
	movq %rax,-248(%r12)
	movq $sHa8_info,-240(%r12)
	leaq -904(%r12),%rax
	movq %rax,-224(%r12)
	leaq -856(%r12),%rax
	movq %rax,-216(%r12)
	leaq -808(%r12),%rax
	movq %rax,-208(%r12)
	leaq -784(%r12),%rax
	movq %rax,-200(%r12)
	leaq -760(%r12),%rax
	movq %rax,-192(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-184(%r12)
	leaq -240(%r12),%rax
	movq %rax,-176(%r12)
	movq $rH1j_closure+2,-168(%r12)
	movq $sHab_info,-160(%r12)
	leaq -904(%r12),%rax
	movq %rax,-144(%r12)
	leaq -856(%r12),%rax
	movq %rax,-136(%r12)
	leaq -808(%r12),%rax
	movq %rax,-128(%r12)
	leaq -784(%r12),%rax
	movq %rax,-120(%r12)
	leaq -760(%r12),%rax
	movq %rax,-112(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-104(%r12)
	leaq -160(%r12),%rax
	movq %rax,-96(%r12)
	leaq -182(%r12),%rax
	movq %rax,-88(%r12)
	movq $sHae_info,-80(%r12)
	leaq -880(%r12),%rax
	movq %rax,-64(%r12)
	leaq -856(%r12),%rax
	movq %rax,-56(%r12)
	leaq -760(%r12),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	leaq -80(%r12),%rax
	movq %rax,-32(%r12)
	leaq -102(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -38(%r12),%rax
	movq %rax,-8(%r12)
	leaq -262(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcI8r:
	movq $912,192(%r13)
.LcI8p:
	movl $rF9g_closure,%ebx
	jmp *-8(%r13)
.LcI8s:
	movq ticky_entry_ctrs,%rax
	movq %rax,rF9g_ct+56
	movq $rF9g_ct,ticky_entry_ctrs
	movq $1,rF9g_ct
	jmp .LcI8t
	.size rF9g_info, .-rF9g_info
.section .data
	.align 8
.align 1
rH1n_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
rH1n_closure:
	.quad	rH1n_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cI9H_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	47
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	40
	.byte	49
	.byte	51
	.byte	55
	.byte	44
	.byte	49
	.byte	41
	.byte	45
	.byte	40
	.byte	49
	.byte	52
	.byte	55
	.byte	44
	.byte	52
	.byte	53
	.byte	41
	.byte	124
	.byte	102
	.byte	117
	.byte	110
	.byte	99
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	99
	.byte	97
	.byte	108
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	0
.text
	.align 8
	.long	rH1n_srt-(rH1n_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rH1n_info:
.LcI9L:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcI9N
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcI9P
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcI9Q
.LcI9R:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cI9H_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcI9P:
	movq $16,192(%r13)
.LcI9N:
	jmp *-16(%r13)
.LcI9Q:
	jmp *(%rbx)
	.size rH1n_info, .-rH1n_info
.data
	.align 8
.align 1
rH1o_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	191
	.long	0
.data
	.align 8
.align 1
rH1p_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1q_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1p_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1r_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1o_closure+1
	.quad	rH1q_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1s_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1t_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1o_closure+1
	.quad	rH1s_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1u_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1t_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1v_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	1
.data
	.align 8
.align 1
rH1w_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	10
.section .data
	.align 8
.align 1
rH1x_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rH1v_closure
	.quad	rH1w_closure
.data
	.align 8
.align 1
rH1x_closure:
	.quad	rH1x_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rH1x_srt-(rH1x_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rH1x_info:
.LcIaz:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIaB
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIaD
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIaE
.LcIaF:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rH1v_closure+1,%r14d
	movl $rH1w_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcIaD:
	movq $16,192(%r13)
.LcIaB:
	jmp *-16(%r13)
.LcIaE:
	jmp *(%rbx)
	.size rH1x_info, .-rH1x_info
.data
	.align 8
.align 1
rH1y_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	360
.section .data
	.align 8
.align 1
rH1z_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rH1v_closure
	.quad	rH1x_closure
	.quad	rH1y_closure
.data
	.align 8
.align 1
rH1z_closure:
	.quad	rH1z_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	65
	.quad	32
sIaO_info:
.LcIbm:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIbs
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss .LnIbu(%rip),%xmm0
	divss (%rax),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call tanf
	addq $8,%rsp
	movss 8(%rbp),%xmm1
	mulss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcIbs:
	movq $16,192(%r13)
.LcIbq:
	jmp *-16(%r13)
	.size sIaO_info, .-sIaO_info
.section .rodata
	.align 8
.align 4
.LnIbu:
	.byte	38
	.byte	95
	.byte	13
	.byte	67
.text
	.align 8
	.long	rH1z_srt-(sIaP_info)+0
	.long	0
	.quad	0
	.quad	47244640288
sIaP_info:
.LcIbz:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $rH1y_closure+1,%r14d
	movl $rH1v_closure+1,%esi
	movq $sIaO_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sIaP_info, .-sIaP_info
.text
	.align 8
	.long	rH1z_srt-(rH1z_info)+0
	.long	0
	.quad	0
	.quad	64424509462
rH1z_info:
.LcIbF:
	incq ENT_STATIC_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIbH
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIbJ
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIbK
.LcIbL:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	movl $rH1x_closure,%ebx
	movq $sIaP_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIaP_info
	jmp *(%rbx)
.LcIbJ:
	movq $16,192(%r13)
.LcIbH:
	jmp *-16(%r13)
.LcIbK:
	jmp *(%rbx)
	.size rH1z_info, .-rH1z_info
.section .data
	.align 8
.align 1
rH1A_srt:
	.quad	rH1z_closure
.data
	.align 8
.align 1
rH1A_closure:
	.quad	rH1A_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sIbT_info:
.LcIcc:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIci
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LnIcj(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcIci:
	movq $16,192(%r13)
.LcIcg:
	jmp *-16(%r13)
	.size sIbT_info, .-sIbT_info
.section .rodata
	.align 8
.align 4
.LnIcj:
	.long	-2147483648
.text
	.align 8
	.long	rH1A_srt-(rH1A_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rH1A_info:
.LcIcp:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIcr
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIct
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIcu
.LcIcv:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	movl $rH1z_closure,%ebx
	movq $sIbT_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIbT_info
	jmp *(%rbx)
.LcIct:
	movq $16,192(%r13)
.LcIcr:
	jmp *-16(%r13)
.LcIcu:
	jmp *(%rbx)
	.size rH1A_info, .-rH1A_info
.section .data
	.align 8
.align 1
rH1B_srt:
	.quad	rH1x_closure
.data
	.align 8
.align 1
rH1B_closure:
	.quad	rH1B_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sIcD_info:
.LcIcW:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcId2
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss .LnId4(%rip),%xmm0
	mulss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcId2:
	movq $16,192(%r13)
.LcId0:
	jmp *-16(%r13)
	.size sIcD_info, .-sIcD_info
.section .rodata
	.align 8
.align 4
.LnId4:
	.byte	0
	.byte	0
	.byte	0
	.byte	64
.text
	.align 8
	.long	rH1B_srt-(rH1B_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rH1B_info:
.LcIda:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIdc
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIde
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIdf
.LcIdg:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	movl $rH1x_closure,%ebx
	movq $sIcD_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIcD_info
	jmp *(%rbx)
.LcIde:
	movq $16,192(%r13)
.LcIdc:
	jmp *-16(%r13)
.LcIdf:
	jmp *(%rbx)
	.size rH1B_info, .-rH1B_info
.section .data
	.align 8
.align 1
rH1C_srt:
	.quad	rH1x_closure
	.quad	rH1z_closure
	.quad	rH1A_closure
.data
	.align 8
.align 1
rH1C_closure:
	.quad	rH1C_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
sIdp_info:
.LcIe4:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIea
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	movss .LnIee(%rip),%xmm1
	mulss 16(%rbp),%xmm1
	divss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcIea:
	movq $16,192(%r13)
.LcIe8:
	jmp *-16(%r13)
	.size sIdp_info, .-sIdp_info
.section .rodata
	.align 8
.align 4
.LnIee:
	.byte	0
	.byte	0
	.byte	0
	.byte	64
.text
	.align 8
	.long	rH1C_srt-(sIdq_info)+16
	.long	0
	.quad	65
	.quad	4294967328
sIdq_info:
.LcIej:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $rH1A_closure,%ebx
	movq $sIdp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIdp_info
	jmp *(%rbx)
	.size sIdq_info, .-sIdq_info
.text
	.align 8
	.long	rH1C_srt-(sIdr_info)+8
	.long	0
	.quad	0
	.quad	12884901920
sIdr_info:
.LcIeq:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $rH1z_closure,%ebx
	movq $sIdq_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIdq_info
	jmp *(%rbx)
	.size sIdr_info, .-sIdr_info
.text
	.align 8
	.long	rH1C_srt-(rH1C_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rH1C_info:
.LcIez:
	incq ENT_STATIC_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIeB
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIeD
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIeE
.LcIeF:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	movl $rH1x_closure,%ebx
	movq $sIdr_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIdr_info
	jmp *(%rbx)
.LcIeD:
	movq $16,192(%r13)
.LcIeB:
	jmp *-16(%r13)
.LcIeE:
	jmp *(%rbx)
	.size rH1C_info, .-rH1C_info
.data
	.align 8
.align 1
rH1D_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1E_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1D_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1F_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1C_closure
	.quad	rH1E_closure+2
	.quad	0
.data
	.align 8
.align 1
rH1G_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1F_closure+2
	.quad	0
.section .data
	.align 8
.align 1
rH1H_srt:
	.quad	rH1z_closure
	.quad	rH1A_closure
.data
	.align 8
.align 1
rH1H_closure:
	.quad	rH1H_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	65
	.quad	32
sIeW_info:
.LcIfx:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIfD
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm1
	addss (%rax),%xmm1
	divss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcIfD:
	movq $16,192(%r13)
.LcIfB:
	jmp *-16(%r13)
	.size sIeW_info, .-sIeW_info
.text
	.align 8
	.long	rH1H_srt-(sIeX_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sIeX_info:
.LcIfM:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $rH1A_closure,%ebx
	movq $sIeW_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIeW_info
	jmp *(%rbx)
	.size sIeX_info, .-sIeX_info
.text
	.align 8
	.long	rH1H_srt-(rH1H_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rH1H_info:
.LcIfV:
	incq ENT_STATIC_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIfX
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIfZ
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIg0
.LcIg1:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	movl $rH1z_closure,%ebx
	movq $sIeX_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIeX_info
	jmp *(%rbx)
.LcIfZ:
	movq $16,192(%r13)
.LcIfX:
	jmp *-16(%r13)
.LcIg0:
	jmp *(%rbx)
	.size rH1H_info, .-rH1H_info
.section .data
	.align 8
.align 1
rH1I_srt:
	.quad	rH1x_closure
.data
	.align 8
.align 1
rH1I_closure:
	.quad	rH1I_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sIgb_info:
.LcIgD:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIgJ
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss .LnIgL(%rip),%xmm0
	subss (%rax),%xmm0
	leaq 7(%rbx),%rax
	movss .LnIgP(%rip),%xmm1
	addss (%rax),%xmm1
	divss %xmm0,%xmm1
	movss .LnIgS(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcIgJ:
	movq $16,192(%r13)
.LcIgH:
	jmp *-16(%r13)
	.size sIgb_info, .-sIgb_info
.section .rodata
	.align 8
.align 4
.LnIgL:
	.byte	0
	.byte	0
	.byte	200
	.byte	66
.section .rodata
	.align 8
.align 4
.LnIgP:
	.byte	0
	.byte	0
	.byte	200
	.byte	66
.section .rodata
	.align 8
.align 4
.LnIgS:
	.long	-2147483648
.text
	.align 8
	.long	rH1I_srt-(rH1I_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rH1I_info:
.LcIgY:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIh0
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIh2
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIh3
.LcIh4:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	movl $rH1x_closure,%ebx
	movq $sIgb_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIgb_info
	jmp *(%rbx)
.LcIh2:
	movq $16,192(%r13)
.LcIh0:
	jmp *-16(%r13)
.LcIh3:
	jmp *(%rbx)
	.size rH1I_info, .-rH1I_info
.section .data
	.align 8
.align 1
rH1J_srt:
	.quad	rH1x_closure
.data
	.align 8
.align 1
rH1J_closure:
	.quad	rH1J_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sIhe_info:
.LcIhG:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIhM
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss .LnIhO(%rip),%xmm0
	subss (%rax),%xmm0
	leaq 7(%rbx),%rax
	movss .LnIhS(%rip),%xmm1
	mulss (%rax),%xmm1
	divss %xmm0,%xmm1
	movss .LnIhV(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcIhM:
	movq $16,192(%r13)
.LcIhK:
	jmp *-16(%r13)
	.size sIhe_info, .-sIhe_info
.section .rodata
	.align 8
.align 4
.LnIhO:
	.byte	0
	.byte	0
	.byte	200
	.byte	66
.section .rodata
	.align 8
.align 4
.LnIhS:
	.byte	0
	.byte	0
	.byte	72
	.byte	67
.section .rodata
	.align 8
.align 4
.LnIhV:
	.long	-2147483648
.text
	.align 8
	.long	rH1J_srt-(rH1J_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rH1J_info:
.LcIi1:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIi3
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIi5
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPD_CAF_BH_SINGLE_ENTRY_ctr
	movq $stg_CAF_BLACKHOLE_info,-8(%r12)
	movq 160(%r13),%rax
	movq %rax,0(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -8(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcIi6
.LcIi7:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	movl $rH1x_closure,%ebx
	movq $sIhe_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIhe_info
	jmp *(%rbx)
.LcIi5:
	movq $16,192(%r13)
.LcIi3:
	jmp *-16(%r13)
.LcIi6:
	jmp *(%rbx)
	.size rH1J_info, .-rH1J_info
.data
	.align 8
.align 1
rH1K_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1L_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1J_closure
	.quad	rH1K_closure+2
	.quad	0
.data
	.align 8
.align 1
rH1M_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1L_closure+2
	.quad	0
.data
	.align 8
.align 1
rH1N_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1M_closure+2
	.quad	0
.data
	.align 8
.align 1
rH1O_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1P_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1O_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1Q_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziMatrixziMatrix_zdfNumZMZN2_closure+1
	.quad	rH1P_closure+2
	.quad	1
.data
	.align 8
.align 1
rH1R_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1o_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rH1S_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1I_closure
	.quad	rH1R_closure+2
	.quad	0
.data
	.align 8
.align 1
rH1T_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1H_closure
	.quad	rH1S_closure+2
	.quad	0
.data
	.align 8
.align 1
rH1U_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rH1N_closure+2
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.section .data
	.align 8
.align 1
EngineziMatrixziMatrix_renderWorldMat1_srt:
	.quad	base_GHCziReal_zdfNumRatio3_closure
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	base_GHCziReal_zdwzdczs_closure
	.quad	base_DataziFixed_zdfHasResolutionE7_closure
	.quad	base_DataziMaybe_fromJust1_closure
	.quad	base_ForeignziMarshalziArray_withArrayLen_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
	.quad	EngineziGraphicsziShaders_setShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_quickGetUniform1_closure
	.quad	EngineziGraphicsziShaders_disableShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_bindTextures1_closure
	.quad	EngineziCoreziWorld_pentityModel1_closure
	.quad	base_DataziList_sum_closure
	.quad	rF9g_closure
	.quad	rH14_closure
	.quad	rH17_closure
	.quad	rH18_closure
	.quad	rH19_closure
	.quad	rH1a_closure
	.quad	rH1n_closure
	.quad	rH1z_closure
	.quad	rH1A_closure
	.quad	rH1B_closure
	.quad	rH1G_closure
	.quad	rH1T_closure
	.quad	rH1U_closure
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_renderWorldMat1_closure
.type EngineziMatrixziMatrix_renderWorldMat1_closure, @object
EngineziMatrixziMatrix_renderWorldMat1_closure:
	.quad	EngineziMatrixziMatrix_renderWorldMat1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cIqv_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	77
	.byte	97
	.byte	116
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	65
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cIqx_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_renderWorldMat1_ct
.type EngineziMatrixziMatrix_renderWorldMat1_ct, @object
EngineziMatrixziMatrix_renderWorldMat1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cIqv_str
	.quad	cIqx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjn_info)+32
	.long	0
	.quad	0
	.quad	4294967328
sIjn_info:
.LcIqS:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcIqT
	movl $base_DataziMaybe_fromJust1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcIqT:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sIjn_info, .-sIjn_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjp_info)+32
	.long	0
	.quad	0
	.quad	4294967328
sIjp_info:
.LcIr0:
	movq 31(%rbx),%rbx
	movq $sIjn_info,0(%rbp)
	testq $7,%rbx
	jne sIjn_info
	jmp *(%rbx)
	.size sIjp_info, .-sIjp_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjr_info)+32
	.long	0
	.quad	0
	.quad	4294967328
sIjr_info:
.LcIr6:
	movq 39(%rbx),%rbx
	movq $sIjp_info,0(%rbp)
	testq $7,%rbx
	jne sIjp_info
	jmp *(%rbx)
	.size sIjr_info, .-sIjr_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjt_info)+32
	.long	0
	.quad	0
	.quad	4294967328
sIjt_info:
.LcIrc:
	movq 31(%rbx),%rbx
	movq $sIjr_info,0(%rbp)
	testq $7,%rbx
	jne sIjr_info
	jmp *(%rbx)
	.size sIjt_info, .-sIjt_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIj4_info)+32
	.long	0
	.quad	1
	.quad	4294967313
sIj4_info:
.LcIrk:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIrm
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sIjt_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIjt_info
	jmp *(%rbx)
.LcIrm:
	jmp *-16(%r13)
	.size sIj4_info, .-sIj4_info
.text
	.align 8
	.quad	65
	.quad	32
sIjE_info:
.LcIsb:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIsh
	addq $2,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	cvtsi2ssq 7(%rbx),%xmm0
	cvtsi2ssq 8(%rbp),%xmm1
	divss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcIsh:
	movq $16,192(%r13)
.LcIsf:
	jmp *-16(%r13)
	.size sIjE_info, .-sIjE_info
.text
	.align 8
	.quad	1
	.quad	32
sIjF_info:
.LcIsm:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sIjE_info,0(%rbp)
	testq $7,%rbx
	jne sIjE_info
	jmp *(%rbx)
	.size sIjF_info, .-sIjF_info
.text
	.align 8
	.quad	2
	.quad	19
sHfh_info:
.LcIsx:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIsz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sIjF_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sIjF_info
	jmp *(%rbx)
.LcIsz:
	jmp *-16(%r13)
	.size sHfh_info, .-sHfh_info
.text
	.align 8
	.quad	65
	.quad	32
sIjO_info:
.LcIsN:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIsT
	addq $2,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcIsT:
	movq $16,192(%r13)
.LcIsR:
	jmp *-16(%r13)
	.size sIjO_info, .-sIjO_info
.text
	.align 8
	.quad	1
	.quad	32
sIjP_info:
.LcIsY:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sIjO_info,0(%rbp)
	testq $7,%rbx
	jne sIjO_info
	jmp *(%rbx)
	.size sIjP_info, .-sIjP_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHfq_info)+208
	.long	0
	.quad	1
	.quad	4294967313
sHfq_info:
.LcIt9:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcItb
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movl $rH1A_closure,%ebx
	movq $sIjP_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sIjP_info
	jmp *(%rbx)
.LcItb:
	jmp *-16(%r13)
	.size sHfq_info, .-sHfq_info
.text
	.align 8
	.quad	65
	.quad	32
sIjQ_info:
.LcItp:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcItv
	addq $2,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcItv:
	movq $16,192(%r13)
.LcItt:
	jmp *-16(%r13)
	.size sIjQ_info, .-sIjQ_info
.text
	.align 8
	.quad	1
	.quad	32
sIjR_info:
.LcItA:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sIjQ_info,0(%rbp)
	testq $7,%rbx
	jne sIjQ_info
	jmp *(%rbx)
	.size sIjR_info, .-sIjR_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHfz_info)+200
	.long	0
	.quad	1
	.quad	4294967313
sHfz_info:
.LcItL:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcItN
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movl $rH1z_closure,%ebx
	movq $sIjR_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sIjR_info
	jmp *(%rbx)
.LcItN:
	jmp *-16(%r13)
	.size sHfz_info, .-sHfz_info
.text
	.align 8
	.quad	65
	.quad	32
sIjS_info:
.LcIu1:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIu7
	addq $2,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm1
	addss (%rax),%xmm1
	divss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcIu7:
	movq $16,192(%r13)
.LcIu5:
	jmp *-16(%r13)
	.size sIjS_info, .-sIjS_info
.text
	.align 8
	.quad	1
	.quad	32
sIjT_info:
.LcIug:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sIjS_info,0(%rbp)
	testq $7,%rbx
	jne sIjS_info
	jmp *(%rbx)
	.size sIjT_info, .-sIjT_info
.text
	.align 8
	.quad	2
	.quad	19
sHg0_info:
.LcIur:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIut
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sIjT_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sIjT_info
	jmp *(%rbx)
.LcIut:
	jmp *-16(%r13)
	.size sHg0_info, .-sHg0_info
.text
	.align 8
	.quad	194
	.quad	32
sIjU_info:
.LcIuL:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIuR
	addq $2,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 16(%rbp),%xmm0
	subss (%rax),%xmm0
	movss 8(%rbp),%xmm1
	divss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcIuR:
	movq $16,192(%r13)
.LcIuP:
	jmp *-16(%r13)
	.size sIjU_info, .-sIjU_info
.text
	.align 8
	.quad	66
	.quad	32
sIjV_info:
.LcIuY:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sIjU_info,0(%rbp)
	testq $7,%rbx
	jne sIjU_info
	jmp *(%rbx)
	.size sIjV_info, .-sIjV_info
.text
	.align 8
	.quad	2
	.quad	32
sIjW_info:
.LcIv7:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sIjV_info,0(%rbp)
	testq $7,%rbx
	jne sIjV_info
	jmp *(%rbx)
	.size sIjW_info, .-sIjW_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHfN_info)+216
	.long	0
	.quad	2
	.quad	4294967315
sHfN_info:
.LcIvi:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIvk
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movl $rH1B_closure,%ebx
	movq $sIjW_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sIjW_info
	jmp *(%rbx)
.LcIvk:
	jmp *-16(%r13)
	.size sHfN_info, .-sHfN_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjd_info)+144
	.long	0
	.quad	4294967296
	.quad	4294967314
sIjd_info:
.LcIvO:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIvQ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIvS
	addq $2,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 16(%rbx),%xmm0
	mulss .LnIvU(%rip),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	movl $rH1r_closure+2,%esi
	addq $-16,%rbp
	jmp rF9g_info
.LcIvS:
	movq $16,192(%r13)
.LcIvQ:
	jmp *-16(%r13)
	.size sIjd_info, .-sIjd_info
.section .rodata
	.align 8
.align 4
.LnIvU:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjc_info)+136
	.long	0
	.quad	65
	.quad	12884901920
sIjc_info:
.LcIvY:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcIw2
	addq $3,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sIjd_info,-16(%r12)
	movss 8(%rbp),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%r14
	movq %rbx,%rsi
	addq $16,%rbp
	jmp EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info
.LcIw2:
	movq $24,192(%r13)
.LcIw0:
	jmp *-16(%r13)
	.size sIjc_info, .-sIjc_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjf_info)+136
	.long	0
	.quad	8589934592
	.quad	12884901909
sIjf_info:
.LcIw6:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIw8
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcIwa
	addq $2,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	mulss .LnIwc(%rip),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	movss 16(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	leaq -7(%r12),%r14
	movl $rH1u_closure+2,%esi
	movq $sIjc_info,-32(%rbp)
	addq $-32,%rbp
	jmp rF9g_info
.LcIwa:
	movq $16,192(%r13)
.LcIw8:
	jmp *-16(%r13)
	.size sIjf_info, .-sIjf_info
.section .rodata
	.align 8
.align 4
.LnIwc:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIje_info)+136
	.long	0
	.quad	194
	.quad	12884901920
sIje_info:
.LcIwh:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcIwl
	addq $4,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sIjf_info,-24(%r12)
	movss 16(%rbp),%xmm0
	movss %xmm0,-8(%r12)
	movss 8(%rbp),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%r14
	movq %rbx,%rsi
	addq $24,%rbp
	jmp EngineziMatrixziMatrix_zdfNumZMZNzuzdczt_info
.LcIwl:
	movq $32,192(%r13)
.LcIwj:
	jmp *-16(%r13)
	.size sIje_info, .-sIje_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjh_info)+136
	.long	0
	.quad	21474836480
	.quad	12884901904
sIjh_info:
.LcIwq:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIws
	addq $120,%r12
	cmpq 144(%r13),%r12
	ja .LcIwu
	addq $15,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $15,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 48(%rbx),%xmm1
	movss .LnIww(%rip),%xmm0
	xorps %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-112(%r12)
	movss %xmm1,-104(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-96(%r12)
	leaq -111(%r12),%rax
	movq %rax,-88(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-80(%r12)
	movss 40(%rbx),%xmm1
	movss .LnIwz(%rip),%xmm0
	xorps %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm1,-64(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	leaq -71(%r12),%rax
	movq %rax,-48(%r12)
	leaq -94(%r12),%rax
	movq %rax,-40(%r12)
	movss 32(%rbx),%xmm1
	movss .LnIwD(%rip),%xmm0
	xorps %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-32(%r12)
	movss %xmm1,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -31(%r12),%rax
	movq %rax,-8(%r12)
	leaq -54(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movss 24(%rbx),%xmm0
	movss %xmm0,-32(%rbp)
	movss 16(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	leaq -14(%r12),%r14
	movq $sIje_info,-40(%rbp)
	addq $-40,%rbp
	jmp rF9e_info
.LcIwu:
	movq $120,192(%r13)
.LcIws:
	jmp *-16(%r13)
	.size sIjh_info, .-sIjh_info
.section .rodata
	.align 8
.align 4
.LnIww:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.LnIwz:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.LnIwD:
	.long	-2147483648
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjG_info)+136
	.long	0
	.quad	1989
	.quad	69282117451808
sIjG_info:
.LcIwL:
	addq $352,%r12
	cmpq 144(%r13),%r12
	ja .LcIwP
	addq $44,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $44,ALLOC_HEAP_tot
	movq $sHfh_info,-344(%r12)
	movq 7(%rbx),%rax
	movq %rax,-328(%r12)
	movq 15(%rbx),%rax
	movq %rax,-320(%r12)
	movq $sHfq_info,-312(%r12)
	leaq -344(%r12),%rax
	movq %rax,-296(%r12)
	movq $sHfz_info,-288(%r12)
	leaq -344(%r12),%rax
	movq %rax,-272(%r12)
	movq $sHg0_info,-264(%r12)
	leaq -312(%r12),%rax
	movq %rax,-248(%r12)
	leaq -288(%r12),%rax
	movq %rax,-240(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-232(%r12)
	leaq -264(%r12),%rax
	movq %rax,-224(%r12)
	movq $rH1T_closure+2,-216(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-208(%r12)
	leaq -230(%r12),%rax
	movq %rax,-200(%r12)
	movq $rH1U_closure+2,-192(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-184(%r12)
	movq $rH1G_closure+2,-176(%r12)
	leaq -206(%r12),%rax
	movq %rax,-168(%r12)
	movq $sHfN_info,-160(%r12)
	leaq -312(%r12),%rax
	movq %rax,-144(%r12)
	leaq -288(%r12),%rax
	movq %rax,-136(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-128(%r12)
	leaq -160(%r12),%rax
	movq %rax,-120(%r12)
	movq $rH1Q_closure+2,-112(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-104(%r12)
	leaq -126(%r12),%rax
	movq %rax,-96(%r12)
	leaq -182(%r12),%rax
	movq %rax,-88(%r12)
	movq $sIjh_info,-80(%r12)
	movss 24(%rbp),%xmm0
	movss %xmm0,-64(%r12)
	movss 32(%rbp),%xmm0
	movss %xmm0,-56(%r12)
	movss 16(%rbp),%xmm0
	movss %xmm0,-48(%r12)
	movss 8(%rbp),%xmm0
	movss %xmm0,-40(%r12)
	movss 40(%rbp),%xmm0
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziMatrixziMatrix_WorldMatrices_con_info,-24(%r12)
	movq $rF98_closure+2,-16(%r12)
	leaq -80(%r12),%rax
	movq %rax,-8(%r12)
	leaq -102(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcIwP:
	movq $352,192(%r13)
.LcIwN:
	jmp *-16(%r13)
	.size sIjG_info, .-sIjG_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjH_info)+136
	.long	0
	.quad	965
	.quad	69282117451808
sIjH_info:
.LcIxd:
	movq 40(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $sIjG_info,0(%rbp)
	testq $7,%rbx
	jne sIjG_info
	jmp *(%rbx)
	.size sIjH_info, .-sIjH_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjI_info)+136
	.long	0
	.quad	901
	.quad	69282117451808
sIjI_info:
.LcIxm:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sIjH_info,0(%rbp)
	testq $7,%rbx
	jne sIjH_info
	jmp *(%rbx)
	.size sIjI_info, .-sIjI_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjJ_info)+136
	.long	0
	.quad	773
	.quad	69282117451808
sIjJ_info:
.LcIxv:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sIjI_info,0(%rbp)
	testq $7,%rbx
	jne sIjI_info
	jmp *(%rbx)
	.size sIjJ_info, .-sIjJ_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjK_info)+136
	.long	0
	.quad	195
	.quad	69282117451808
sIjK_info:
.LcIxE:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sIjJ_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sIjJ_info
	jmp *(%rbx)
	.size sIjK_info, .-sIjK_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjL_info)+136
	.long	0
	.quad	67
	.quad	69282117451808
sIjL_info:
.LcIxM:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sIjK_info,0(%rbp)
	testq $7,%rbx
	jne sIjK_info
	jmp *(%rbx)
	.size sIjL_info, .-sIjL_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjM_info)+136
	.long	0
	.quad	3
	.quad	69282117451808
sIjM_info:
.LcIxV:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sIjL_info,0(%rbp)
	testq $7,%rbx
	jne sIjL_info
	jmp *(%rbx)
	.size sIjM_info, .-sIjM_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjN_info)+136
	.long	0
	.quad	2
	.quad	69282117451808
sIjN_info:
.LcIy4:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sIjM_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIjM_info
	jmp *(%rbx)
	.size sIjN_info, .-sIjN_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjB_info)+136
	.long	0
	.quad	1
	.quad	69831873265696
sIjB_info:
.LcIyc:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcIyd
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sIjN_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIjN_info
	jmp *(%rbx)
.LcIyd:
	movl $rH1n_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sIjB_info, .-sIjB_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHg9_info)+136
	.long	0
	.quad	2
	.quad	69831873265683
sHg9_info:
.LcIyp:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIyr
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sIjB_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sIjB_info
	jmp *(%rbx)
.LcIyr:
	jmp *-16(%r13)
	.size sHg9_info, .-sHg9_info
.text
	.align 8
	.quad	3
	.quad	16
sIiA_info:
.LcIyF:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIyH
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcIyJ
	addq $9,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	movq 32(%rbx),%rax
	movq %rax,-56(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -14(%r12),%r14
	addq $-16,%rbp
	jmp rF9e_info
.LcIyJ:
	movq $72,192(%r13)
.LcIyH:
	jmp *-16(%r13)
	.size sIiA_info, .-sIiA_info
.text
	.align 8
	.quad	3
	.quad	32
sIjZ_info:
.LcIyS:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcIyW
	addq $9,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $sIiA_info,-64(%r12)
	movq 24(%rbp),%rax
	movq %rax,-48(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziMatrixziMatrix_WorldMatrices_con_info,-24(%r12)
	leaq -64(%r12),%rax
	movq %rax,-16(%r12)
	movq 15(%rbx),%rax
	movq %rax,-8(%r12)
	movq 23(%rbx),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcIyW:
	movq $72,192(%r13)
.LcIyU:
	jmp *-16(%r13)
	.size sIjZ_info, .-sIjZ_info
.text
	.align 8
	.quad	4
	.quad	16
sHh9_info:
.LcIz7:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIz9
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sIjZ_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne sIjZ_info
	jmp *(%rbx)
.LcIz9:
	jmp *-16(%r13)
	.size sHh9_info, .-sHh9_info
.section .rodata
	.align 8
.align 1
cIzh_str:
	.byte	101
	.byte	116
	.byte	97
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	72
	.byte	104
	.byte	99
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cIzk_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sHhc_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cIzh_str
	.quad	cIzk_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHhc_info)+56
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sHhc_info:
.LcIzp:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHhc_ct
	je .LcIzs
.LcIzu:
	incq sHhc_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movl $rH16_closure+1,%edi
	movl $rH15_closure+1,%r8d
	movq %r14,%r9
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglUniformMatrix4fv_info
.LcIzs:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHhc_ct+56
	movq $sHhc_ct,ticky_entry_ctrs
	movq $1,sHhc_ct
	jmp .LcIzu
	.size sHhc_info, .-sHhc_info
.section .rodata
	.align 8
.align 1
cIzy_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	73
	.byte	105
	.byte	85
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cIzB_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sIiU_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cIzy_str
	.quad	cIzB_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901900
	.quad	1
	.quad	10
sIiU_info:
.LcIzG:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sIiU_ct
	je .LcIzJ
.LcIzL:
	incq sIiU_ct+40
	incq KNOWN_CALL_ctr
	movq 5(%rbx),%rbx
	movq %rsi,%r14
	jmp sHhc_info
.LcIzJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,sIiU_ct+56
	movq $sIiU_ct,ticky_entry_ctrs
	movq $1,sIiU_ct
	jmp .LcIzL
	.size sIiU_info, .-sIiU_info
.text
	.align 8
	.quad	0
	.quad	32
sIk5_info:
.LcIzS:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size sIk5_info, .-sIk5_info
.text
	.align 8
	.quad	1
	.quad	17
sIiV_info:
.LcIzX:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIzZ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sIk5_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIk5_info
	jmp *(%rbx)
.LcIzZ:
	jmp *-16(%r13)
	.size sIiV_info, .-sIiV_info
.section .rodata
	.align 8
.align 1
cIA4_str:
	.byte	101
	.byte	116
	.byte	97
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	72
	.byte	104
	.byte	119
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cIA7_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sHhw_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cIA4_str
	.quad	cIA7_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHhw_info)+56
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sHhw_info:
.LcIAc:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHhw_ct
	je .LcIAf
.LcIAh:
	incq sHhw_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movl $rH16_closure+1,%edi
	movl $rH15_closure+1,%r8d
	movq %r14,%r9
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglUniformMatrix4fv_info
.LcIAf:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHhw_ct+56
	movq $sHhw_ct,ticky_entry_ctrs
	movq $1,sHhw_ct
	jmp .LcIAh
	.size sHhw_info, .-sHhw_info
.section .rodata
	.align 8
.align 1
cIAl_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	73
	.byte	105
	.byte	80
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cIAo_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sIiP_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cIAl_str
	.quad	cIAo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901900
	.quad	1
	.quad	10
sIiP_info:
.LcIAt:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sIiP_ct
	je .LcIAw
.LcIAy:
	incq sIiP_ct+40
	incq KNOWN_CALL_ctr
	movq 5(%rbx),%rbx
	movq %rsi,%r14
	jmp sHhw_info
.LcIAw:
	movq ticky_entry_ctrs,%rax
	movq %rax,sIiP_ct+56
	movq $sIiP_ct,ticky_entry_ctrs
	movq $1,sIiP_ct
	jmp .LcIAy
	.size sIiP_info, .-sIiP_info
.text
	.align 8
	.quad	0
	.quad	32
sIk8_info:
.LcIAF:
	incq KNOWN_CALL_ctr
	movq 23(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size sIk8_info, .-sIk8_info
.text
	.align 8
	.quad	1
	.quad	17
sIiQ_info:
.LcIAK:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIAM
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sIk8_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIk8_info
	jmp *(%rbx)
.LcIAM:
	jmp *-16(%r13)
	.size sIiQ_info, .-sIiQ_info
.section .rodata
	.align 8
.align 1
cIAR_str:
	.byte	101
	.byte	116
	.byte	97
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	72
	.byte	104
	.byte	81
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cIAU_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sHhQ_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cIAR_str
	.quad	cIAU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHhQ_info)+56
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sHhQ_info:
.LcIAZ:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHhQ_ct
	je .LcIB2
.LcIB4:
	incq sHhQ_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movl $rH16_closure+1,%edi
	movl $rH15_closure+1,%r8d
	movq %r14,%r9
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniformMatrix4fv_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglUniformMatrix4fv_info
.LcIB2:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHhQ_ct+56
	movq $sHhQ_ct,ticky_entry_ctrs
	movq $1,sHhQ_ct
	jmp .LcIB4
	.size sHhQ_info, .-sHhQ_info
.section .rodata
	.align 8
.align 1
cIB8_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	73
	.byte	105
	.byte	72
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cIBb_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sIiH_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cIB8_str
	.quad	cIBb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901900
	.quad	1
	.quad	10
sIiH_info:
.LcIBg:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sIiH_ct
	je .LcIBj
.LcIBl:
	incq sIiH_ct+40
	incq KNOWN_CALL_ctr
	movq 5(%rbx),%rbx
	movq %rsi,%r14
	jmp sHhQ_info
.LcIBj:
	movq ticky_entry_ctrs,%rax
	movq %rax,sIiH_ct+56
	movq $sIiH_ct,ticky_entry_ctrs
	movq $1,sIiH_ct
	jmp .LcIBl
	.size sIiH_info, .-sIiH_info
.text
	.align 8
	.quad	0
	.quad	32
sIkb_info:
.LcIBs:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size sIkb_info, .-sIkb_info
.text
	.align 8
	.quad	1
	.quad	17
sIiI_info:
.LcIBx:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIBz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sIkb_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIkb_info
	jmp *(%rbx)
.LcIBz:
	jmp *-16(%r13)
	.size sIiI_info, .-sIiI_info
.section .rodata
	.align 8
.align 1
cIBE_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	72
	.byte	105
	.byte	71
	.byte	123
	.byte	118
	.byte	125
	.byte	32
	.byte	40
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cIBH_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sHiG_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cIBE_str
	.quad	cIBH_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkc_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sIkc_info:
.LcIBT:
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq %rbx,%r14
	addq $8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sIkc_info, .-sIkc_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHiD_info)+0
	.long	0
	.quad	1
	.quad	64424509457
sHiD_info:
.LcIBX:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIBZ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movl $base_GHCziReal_zdfNumRatio3_closure,%esi
	movl $base_DataziFixed_zdfHasResolutionE7_closure,%edi
	movl $base_GHCziReal_zdfNumRatio3_closure,%r8d
	movq $sIkc_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziReal_zdwzdczs_info
.LcIBZ:
	jmp *-16(%r13)
	.size sHiD_info, .-sHiD_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHiG_info)+0
	.long	0
	.quad	4294967299
	.quad	1
	.quad	64424509450
sHiG_info:
.LcIC3:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcIC7
	addq $6,sHiG_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sHiG_ct
	je .LcIC8
.LcIC9:
	incq sHiG_ct+40
	movq $sHiD_info,-40(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcIC7:
	movq $48,192(%r13)
.LcIC5:
	jmp *-8(%r13)
.LcIC8:
	movq ticky_entry_ctrs,%rax
	movq %rax,sHiG_ct+56
	movq $sHiG_ct,ticky_entry_ctrs
	movq $1,sHiG_ct
	jmp .LcIC9
	.size sHiG_info, .-sHiG_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkk_info)+184
	.long	0
	.quad	69135
	.quad	4294967328
sIkk_info:
.LcICm:
	xorl %edi,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq 120(%rbp),%r14
	movq 72(%rbp),%rax
	movq %rax,120(%rbp)
	movq 80(%rbp),%rsi
	movq 16(%rbp),%rax
	movq %rax,80(%rbp)
	movq 96(%rbp),%rdi
	movq 56(%rbp),%rax
	movq %rax,96(%rbp)
	movq 104(%rbp),%r8
	movq 24(%rbp),%rax
	movq %rax,104(%rbp)
	movq 8(%rbp),%r9
	addq $80,%rbp
	jmp rH1a_info
	.size sIkk_info, .-sIkk_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkl_info)+48
	.long	0
	.quad	69135
	.quad	562954248388640
sIkl_info:
.LcICv:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sIkk_info,0(%rbp)
	testq $7,%rbx
	jne sIkk_info
	jmp *(%rbx)
	.size sIkl_info, .-sIkl_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHjj_info)+48
	.long	0
	.quad	67087
	.quad	564053760016416
sHjj_info:
.LcICB:
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq $sIkl_info,0(%rbp)
	jmp EngineziGraphicsziShaders_disableShaderAttribs1_info
	.size sHjj_info, .-sHjj_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkr_info)+48
	.long	0
	.quad	67087
	.quad	564053760016416
sIkr_info:
.LcICN:
	movl $3553,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	jmp sHjj_info
	.size sIkr_info, .-sIkr_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkt_info)+48
	.long	0
	.quad	67087
	.quad	564088119754784
sIkt_info:
.LcICR:
	movl $33984,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $sIkr_info,0(%rbp)
	testq $7,%rbx
	jne sIkr_info
	jmp *(%rbx)
	.size sIkt_info, .-sIkt_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHjk_info)+48
	.long	0
	.quad	67087
	.quad	564156839231520
sHjk_info:
.LcICY:
	movl %ebx,%eax
	xorl %ebx,%ebx
	cmpq %rax,%rbx
	jb .LcID0
	jmp sHjj_info
.LcID0:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $sIkt_info,0(%rbp)
	testq $7,%rbx
	jne sIkt_info
	jmp *(%rbx)
	.size sHjk_info, .-sHjk_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkn_info)+48
	.long	0
	.quad	66063
	.quad	564156839231520
sIkn_info:
.LcID8:
	movq 88(%rbp),%rdx
	movl $4,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	xorl %esi,%esi
	movq $sHjk_info,0(%rbp)
	jmp base_GHCziList_zdwlen_info
	.size sIkn_info, .-sIkn_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIko_info)+48
	.long	0
	.quad	66063
	.quad	564174019100704
sIko_info:
.LcIDd:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure,%ebx
	movq $sIkn_info,0(%rbp)
	testq $7,%rbx
	jne sIkn_info
	jmp *(%rbx)
	.size sIko_info, .-sIko_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkd_info)+0
	.long	0
	.quad	65551
	.quad	38367797553659936
sIkd_info:
.LcIDj:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcIDn
	addq $8,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $sHiG_info,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-40(%r12)
	movq $rH14_closure,-32(%r12)
	leaq -55(%r12),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	leaq -14(%r12),%rsi
	movq $sIko_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setUniforms1_info
.LcIDn:
	movq $64,192(%r13)
.LcIDl:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sIkd_info, .-sIkd_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIke_info)+0
	.long	0
	.quad	65551
	.quad	38508535042015264
sIke_info:
.LcIDt:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq $sIkd_info,0(%rbp)
	jmp EngineziGraphicsziShaders_bindTextures1_info
	.size sIke_info, .-sIke_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkf_info)+0
	.long	0
	.quad	16397
	.quad	38508535042015264
sIkf_info:
.LcIDw:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%r14
	movq 80(%rbp),%rsi
	movq $sIke_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziGraphicsziShaders_setUniforms1_info
	.size sIkf_info, .-sIkf_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkg_info)+0
	.long	0
	.quad	42508
	.quad	38508535042015264
sIkg_info:
.LcIDB:
	movq 39(%rbx),%rax
	movq %rax,0(%rbp)
	movq 31(%rbx),%rax
	movq %rax,32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rax
	movq %rax,80(%rbp)
	movq 15(%rbx),%rbx
	movq $sIkf_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIkf_info
	jmp *(%rbx)
	.size sIkg_info, .-sIkg_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIkh_info)+0
	.long	0
	.quad	9740
	.quad	38508535042015264
sIkh_info:
.LcIDL:
	movq 80(%rbp),%rbx
	movq $sIkg_info,0(%rbp)
	testq $7,%rbx
	jne sIkg_info
	jmp *(%rbx)
	.size sIkh_info, .-sIkh_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIki_info)+0
	.long	0
	.quad	9740
	.quad	38526127228059680
sIki_info:
.LcIDR:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq $sIkh_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setShaderAttribs1_info
	.size sIki_info, .-sIki_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIk9_info)+0
	.long	0
	.quad	8716
	.quad	38526814422827040
sIk9_info:
.LcIDU:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcIDY
	addq $7,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sHhQ_info,-48(%r12)
	movq %rbx,-40(%r12)
	movq $sIiH_info,-32(%r12)
	leaq -46(%r12),%rax
	movq %rax,-24(%r12)
	movq $sIiI_info,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $stg_ap_v_info,-8(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	leaq -16(%r12),%rsi
	leaq -29(%r12),%rdi
	movq $sIki_info,0(%rbp)
	addq $-8,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LcIDY:
	movq $56,192(%r13)
.LcIDW:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sIk9_info, .-sIk9_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIka_info)+0
	.long	0
	.quad	8716
	.quad	43065598422286368
sIka_info:
.LcIE3:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movl $rH17_closure,%esi
	movq $sIk9_info,0(%rbp)
	jmp EngineziGraphicsziShaders_quickGetUniform1_info
	.size sIka_info, .-sIka_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIk6_info)+0
	.long	0
	.quad	8716
	.quad	43065598422286368
sIk6_info:
.LcIE6:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcIEa
	addq $7,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sHhw_info,-48(%r12)
	movq %rbx,-40(%r12)
	movq $sIiP_info,-32(%r12)
	leaq -46(%r12),%rax
	movq %rax,-24(%r12)
	movq $sIiQ_info,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $stg_ap_v_info,-8(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	leaq -16(%r12),%rsi
	leaq -29(%r12),%rdi
	movq $sIka_info,0(%rbp)
	addq $-8,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LcIEa:
	movq $56,192(%r13)
.LcIE8:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sIk6_info, .-sIk6_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIk7_info)+0
	.long	0
	.quad	8716
	.quad	52072797677027360
sIk7_info:
.LcIEf:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movl $rH18_closure,%esi
	movq $sIk6_info,0(%rbp)
	jmp EngineziGraphicsziShaders_quickGetUniform1_info
	.size sIk7_info, .-sIk7_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIk0_info)+0
	.long	0
	.quad	36878
	.quad	52072797677027360
sIk0_info:
.LcIEi:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcIEm
	addq $13,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $sHh9_info,-96(%r12)
	movq 104(%rbp),%rax
	movq %rax,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq $sHhc_info,-48(%r12)
	movq %rbx,-40(%r12)
	movq $sIiU_info,-32(%r12)
	leaq -46(%r12),%rax
	movq %rax,-24(%r12)
	movq $sIiV_info,-16(%r12)
	leaq -96(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	leaq -96(%r12),%rax
	movq %rax,56(%rbp)
	movq $stg_ap_v_info,8(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	leaq -16(%r12),%rsi
	leaq -29(%r12),%rdi
	movq $sIk7_info,16(%rbp)
	addq $8,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LcIEm:
	movq $104,192(%r13)
.LcIEk:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sIk0_info, .-sIk0_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIk2_info)+0
	.long	0
	.quad	36878
	.quad	70087196186509344
sIk2_info:
.LcIEw:
	movq 56(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 80(%rbp),%rcx
	call *%rcx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,80(%rbp)
	movq 24(%rbp),%r14
	movl $rH19_closure,%esi
	movq $sIk0_info,0(%rbp)
	jmp EngineziGraphicsziShaders_quickGetUniform1_info
	.size sIk2_info, .-sIk2_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIk3_info)+0
	.long	0
	.quad	9228
	.quad	70087196186509344
sIk3_info:
.LcIEC:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sIk2_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sIk2_info
	jmp *(%rbx)
	.size sIk3_info, .-sIk3_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHgN_info)+0
	.long	0
	.quad	4107
	.quad	70087196186509344
sHgN_info:
.LcIEN:
	movq %rbx,0(%rbp)
	movq 32(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sIk3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIk3_info
	jmp *(%rbx)
	.size sHgN_info, .-sHgN_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIk4_info)+0
	.long	0
	.quad	520
	.quad	70087196186509344
sIk4_info:
.LcIEW:
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sHgN_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHgN_info
	jmp *(%rbx)
	.size sIk4_info, .-sIk4_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjX_info)+0
	.long	0
	.quad	263
	.quad	70368671163220000
sIjX_info:
.LcIF6:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcIF7
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 22(%rbx),%rbx
	movq $sIk4_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sIk4_info
	jmp *(%rbx)
.LcIF7:
	movl $EngineziCoreziWorld_pentityModel1_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sIjX_info, .-sIjX_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjY_info)+0
	.long	0
	.quad	7
	.quad	70368671163220000
sIjY_info:
.LcIFh:
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sIjX_info,0(%rbp)
	testq $7,%rbx
	jne sIjX_info
	jmp *(%rbx)
	.size sIjY_info, .-sIjY_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sHjb_info)+0
	.long	0
	.quad	4
	.quad	70368671163220000
sHjb_info:
.LcIFs:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcIFt
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $40,%rbp
	jmp *0(%rbp)
.LcIFt:
	movq 14(%rbx),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sIjY_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sIjY_info
	jmp *(%rbx)
	.size sHjb_info, .-sHjb_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjC_info)+0
	.long	0
	.quad	1
	.quad	9223371963840331808
sIjC_info:
.LcIFE:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcIFI
	addq $4,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sHg9_info,-24(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	leaq -24(%r12),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rax
	movq %rax,8(%rbp)
	movq 15(%rbx),%rbx
	movq $sHjb_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sHjb_info
	jmp *(%rbx)
.LcIFI:
	movq $32,192(%r13)
.LcIFG:
	jmp *-16(%r13)
	.size sIjC_info, .-sIjC_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(sIjD_info)+0
	.long	0
	.quad	1
	.quad	9223371963840331808
sIjD_info:
.LcIFU:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sIjC_info,0(%rbp)
	testq $7,%rbx
	jne sIjC_info
	jmp *(%rbx)
	.size sIjD_info, .-sIjD_info
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat1_srt-(EngineziMatrixziMatrix_renderWorldMat1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	9223372032559808527
.globl EngineziMatrixziMatrix_renderWorldMat1_info
.type EngineziMatrixziMatrix_renderWorldMat1_info, @object
EngineziMatrixziMatrix_renderWorldMat1_info:
.LcIG2:
	leaq -128(%rbp),%rax
	cmpq %r15,%rax
	jb .LcIG4
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcIG6
	addq $3,EngineziMatrixziMatrix_renderWorldMat1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_renderWorldMat1_ct
	je .LcIG7
.LcIG8:
	incq EngineziMatrixziMatrix_renderWorldMat1_ct+40
	movq $sIj4_info,-16(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	leaq -16(%r12),%r14
	movq $sIjD_info,-16(%rbp)
	addq $-16,%rbp
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_getWindowSizze1_info
.LcIG6:
	movq $24,192(%r13)
.LcIG4:
	movl $EngineziMatrixziMatrix_renderWorldMat1_closure,%ebx
	jmp *-8(%r13)
.LcIG7:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_renderWorldMat1_ct+56
	movq $EngineziMatrixziMatrix_renderWorldMat1_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_renderWorldMat1_ct
	jmp .LcIG8
	.size EngineziMatrixziMatrix_renderWorldMat1_info, .-EngineziMatrixziMatrix_renderWorldMat1_info
.section .data
	.align 8
.align 1
EngineziMatrixziMatrix_renderWorldMat_srt:
	.quad	EngineziMatrixziMatrix_renderWorldMat1_closure
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_renderWorldMat_closure
.type EngineziMatrixziMatrix_renderWorldMat_closure, @object
EngineziMatrixziMatrix_renderWorldMat_closure:
	.quad	EngineziMatrixziMatrix_renderWorldMat_info
	.quad	0
.section .rodata
	.align 8
.align 1
cIGi_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	77
	.byte	97
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	56
	.byte	86
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cIGl_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_renderWorldMat_ct
.type EngineziMatrixziMatrix_renderWorldMat_ct, @object
EngineziMatrixziMatrix_renderWorldMat_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cIGi_str
	.quad	cIGl_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziMatrixziMatrix_renderWorldMat_srt-(EngineziMatrixziMatrix_renderWorldMat_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziMatrixziMatrix_renderWorldMat_info
.type EngineziMatrixziMatrix_renderWorldMat_info, @object
EngineziMatrixziMatrix_renderWorldMat_info:
.LcIGq:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_renderWorldMat_ct
	je .LcIGt
.LcIGv:
	incq EngineziMatrixziMatrix_renderWorldMat_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziMatrixziMatrix_renderWorldMat1_info
.LcIGt:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_renderWorldMat_ct+56
	movq $EngineziMatrixziMatrix_renderWorldMat_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_renderWorldMat_ct
	jmp .LcIGv
	.size EngineziMatrixziMatrix_renderWorldMat_info, .-EngineziMatrixziMatrix_renderWorldMat_info
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_WorldMatrices_closure
.type EngineziMatrixziMatrix_WorldMatrices_closure, @object
EngineziMatrixziMatrix_WorldMatrices_closure:
	.quad	EngineziMatrixziMatrix_WorldMatrices_info
.section .rodata
	.align 8
.align 1
cIGD_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	70
	.byte	65
	.byte	72
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cIGG_str:
	.byte	76
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziMatrixziMatrix_WorldMatrices_ct
.type EngineziMatrixziMatrix_WorldMatrices_ct, @object
EngineziMatrixziMatrix_WorldMatrices_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cIGD_str
	.quad	cIGG_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
EngineziMatrixziMatrix_WorldMatrices_info:
.LcIGL:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcIGQ
	addq $4,EngineziMatrixziMatrix_WorldMatrices_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziMatrixziMatrix_WorldMatrices_ct
	je .LcIGS
.LcIGU:
	incq EngineziMatrixziMatrix_WorldMatrices_ct+40
	incq RET_NEW_ctr
	movq $EngineziMatrixziMatrix_WorldMatrices_con_info,-24(%r12)
	movq %r14,-16(%r12)
	movq %rsi,-8(%r12)
	movq %rdi,0(%r12)
	leaq -23(%r12),%rbx
	jmp *0(%rbp)
.LcIGQ:
	movq $32,192(%r13)
.LcIGO:
	movl $EngineziMatrixziMatrix_WorldMatrices_closure,%ebx
	jmp *-8(%r13)
.LcIGS:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziMatrixziMatrix_WorldMatrices_ct+56
	movq $EngineziMatrixziMatrix_WorldMatrices_ct,ticky_entry_ctrs
	movq $1,EngineziMatrixziMatrix_WorldMatrices_ct
	jmp .LcIGU
	.size EngineziMatrixziMatrix_WorldMatrices_info, .-EngineziMatrixziMatrix_WorldMatrices_info
.section .rodata
	.align 8
.align 1
iIH0_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	0
.text
	.align 8
	.long	iIH0_str-(EngineziMatrixziMatrix_WorldMatrices_con_info)+0
	.long	0
	.quad	3
	.quad	1
.globl EngineziMatrixziMatrix_WorldMatrices_con_info
.type EngineziMatrixziMatrix_WorldMatrices_con_info, @object
EngineziMatrixziMatrix_WorldMatrices_con_info:
.LcIH3:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziMatrixziMatrix_WorldMatrices_con_info, .-EngineziMatrixziMatrix_WorldMatrices_con_info
.section .rodata
	.align 8
.align 1
iIH5_str:
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
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	0
.text
	.align 8
	.long	iIH5_str-(EngineziMatrixziMatrix_WorldMatrices_static_info)+0
	.long	0
	.quad	3
	.quad	7
.globl EngineziMatrixziMatrix_WorldMatrices_static_info
.type EngineziMatrixziMatrix_WorldMatrices_static_info, @object
EngineziMatrixziMatrix_WorldMatrices_static_info:
.LcIH8:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziMatrixziMatrix_WorldMatrices_static_info, .-EngineziMatrixziMatrix_WorldMatrices_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
