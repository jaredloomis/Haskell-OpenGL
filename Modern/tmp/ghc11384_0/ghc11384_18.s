.data
	.align 8
.align 1
.globl __stginit_Main
.type __stginit_Main, @object
__stginit_Main:
.globl __stginit_ZCMain
.type __stginit_ZCMain, @object
__stginit_ZCMain:
.section .data
	.align 8
.align 1
Main_renderStep1_srt:
	.quad	EngineziMatrixziMatrix_renderWorldMat1_closure
.data
	.align 8
.align 1
.globl Main_renderStep1_closure
.type Main_renderStep1_closure, @object
Main_renderStep1_closure:
	.quad	Main_renderStep1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQPe_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	83
	.byte	116
	.byte	101
	.byte	112
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQPh_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_renderStep1_ct
.type Main_renderStep1_ct, @object
Main_renderStep1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cQPe_str
	.quad	cQPh_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_renderStep1_srt-(Main_renderStep1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_renderStep1_info
.type Main_renderStep1_info, @object
Main_renderStep1_info:
.LcQPm:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_renderStep1_ct
	je .LcQPp
.LcQPr:
	incq Main_renderStep1_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziMatrixziMatrix_renderWorldMat1_info
.LcQPp:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_renderStep1_ct+56
	movq $Main_renderStep1_ct,ticky_entry_ctrs
	movq $1,Main_renderStep1_ct
	jmp .LcQPr
	.size Main_renderStep1_info, .-Main_renderStep1_info
.section .data
	.align 8
.align 1
Main_renderStep_srt:
	.quad	EngineziMatrixziMatrix_renderWorldMat1_closure
.data
	.align 8
.align 1
.globl Main_renderStep_closure
.type Main_renderStep_closure, @object
Main_renderStep_closure:
	.quad	Main_renderStep_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQPA_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	83
	.byte	116
	.byte	101
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	51
	.byte	50
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQPD_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_renderStep_ct
.type Main_renderStep_ct, @object
Main_renderStep_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cQPA_str
	.quad	cQPD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_renderStep_srt-(Main_renderStep_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_renderStep_info
.type Main_renderStep_info, @object
Main_renderStep_info:
.LcQPI:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_renderStep_ct
	je .LcQPL
.LcQPN:
	incq Main_renderStep_ct+40
	incq KNOWN_CALL_ctr
	jmp Main_renderStep1_info
.LcQPL:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_renderStep_ct+56
	movq $Main_renderStep_ct,ticky_entry_ctrs
	movq $1,Main_renderStep_ct
	jmp .LcQPN
	.size Main_renderStep_info, .-Main_renderStep_info
.section .data
	.align 8
.align 1
Main_zdwa1_srt:
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa5_closure
.data
	.align 8
.align 1
.globl Main_zdwa1_closure
.type Main_zdwa1_closure, @object
Main_zdwa1_closure:
	.quad	Main_zdwa1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQRO_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	76
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQRQ_str:
	.byte	83
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_zdwa1_ct
.type Main_zdwa1_ct, @object
Main_zdwa1_ct:
	.quad	0
	.quad	6
	.quad	0
	.quad	cQRO_str
	.quad	cQRQ_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cQRT_str:
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	81
	.byte	73
	.byte	54
	.byte	125
	.byte	32
	.byte	40
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cQRV_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sQI6_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cQRT_str
	.quad	cQRV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sQPU_info:
.LcQS4:
	andq $7,%rbx
	cmpq $2,%rbx
	jne .LcQS5
	incq RET_NEW_ctr
	movl $GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqPressed_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcQS5:
	incq RET_NEW_ctr
	movl $GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqRepeating_closure+3,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sQPU_info, .-sQPU_info
.text
	.align 8
	.quad	1
	.quad	32
sQPV_info:
.LcQSc:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcQSe
	movq 8(%rbp),%rbx
	movq $sQPU_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sQPU_info
	jmp *(%rbx)
.LcQSd:
	incq RET_NEW_ctr
	movl $GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqPressed_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcQSe:
	cmpq $3,%rbx
	jae .LcQSd
	incq RET_NEW_ctr
	movl $GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
	.size sQPV_info, .-sQPV_info
.text
	.align 8
	.quad	2
	.quad	19
sQIi_info:
.LcQSn:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQSp
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sQPV_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sQPV_info
	jmp *(%rbx)
.LcQSp:
	jmp *-16(%r13)
	.size sQIi_info, .-sQIi_info
.text
	.align 8
	.quad	1543
	.quad	32
sQPW_info:
.LcQSv:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcQSz
	addq $12,sQI6_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $sQIi_info,-88(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-56(%r12)
	movq 56(%rbp),%rax
	movq %rax,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	leaq -88(%r12),%rax
	movq %rax,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
.LcQSz:
	movq $96,192(%r13)
.LcQSx:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sQPW_info, .-sQPW_info
.text
	.align 8
	.quad	7
	.quad	32
sQPX_info:
.LcQSJ:
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq %rbx,48(%rbp)
	movq 40(%rbp),%rbx
	movq 32(%rbp),%rsi
	movq $sQPW_info,0(%rbp)
	jmp sQI6_info
	.size sQPX_info, .-sQPX_info
.text
	.align 8
	.long	Main_zdwa1_srt-(sQPY_info)+0
	.long	0
	.quad	7
	.quad	4294967328
sQPY_info:
.LcQSM:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 56(%rbp),%rsi
	movq $sQPX_info,0(%rbp)
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa5_info
	.size sQPY_info, .-sQPY_info
.text
	.align 8
	.long	Main_zdwa1_srt-(sQPZ_info)+0
	.long	0
	.quad	4
	.quad	4294967328
sQPZ_info:
.LcQSP:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sQPY_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sQPY_info
	jmp *(%rbx)
	.size sQPZ_info, .-sQPZ_info
.text
	.align 8
	.long	Main_zdwa1_srt-(sQPT_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sQPT_info:
.LcQT3:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcQT4
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcQT4:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sQPZ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sQPZ_info
	jmp *(%rbx)
	.size sQPT_info, .-sQPT_info
.text
	.align 8
	.long	Main_zdwa1_srt-(sQI6_info)+0
	.long	0
	.quad	12884901900
	.quad	1
	.quad	4294967306
sQI6_info:
.LcQTe:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQTg
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sQI6_ct
	je .LcQTh
.LcQTi:
	incq sQI6_ct+40
	movq %rbx,-24(%rbp)
	movq 5(%rbx),%rax
	movq %rax,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sQPT_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sQPT_info
	jmp *(%rbx)
.LcQTg:
	jmp *-8(%r13)
.LcQTh:
	movq ticky_entry_ctrs,%rax
	movq %rax,sQI6_ct+56
	movq $sQI6_ct,ticky_entry_ctrs
	movq $1,sQI6_ct
	jmp .LcQTi
	.size sQI6_info, .-sQI6_info
.text
	.align 8
	.quad	1670
	.quad	32
sQQ0_info:
.LcQTZ:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcQU5
	addq $12,Main_zdwa1_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movsd 32(%rbp),%xmm0
	cvtsd2ss %xmm0,%xmm0
	subss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-88(%r12)
	movss %xmm0,-80(%r12)
	movsd 40(%rbp),%xmm0
	cvtsd2ss %xmm0,%xmm0
	subss 16(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movq $EngineziCoreziVec_Vec2_con_info,-56(%r12)
	leaq -71(%r12),%rax
	movq %rax,-48(%r12)
	leaq -87(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq 48(%rbp),%rax
	movq %rax,-24(%r12)
	leaq -55(%r12),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $56,%rbp
	jmp *0(%rbp)
.LcQU5:
	movq $96,192(%r13)
.LcQU3:
	jmp *-16(%r13)
	.size sQQ0_info, .-sQQ0_info
.text
	.align 8
	.quad	1542
	.quad	32
sQQ1_info:
.LcQUj:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sQQ0_info,0(%rbp)
	testq $7,%rbx
	jne sQQ0_info
	jmp *(%rbx)
	.size sQQ1_info, .-sQQ1_info
.text
	.align 8
	.quad	388
	.quad	32
sQJb_info:
.LcQUs:
	movq %rbx,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sQQ1_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sQQ1_info
	jmp *(%rbx)
	.size sQJb_info, .-sQJb_info
.text
	.align 8
	.quad	260
	.quad	32
sQQ2_info:
.LcQUz:
	movq 16(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sQJb_info,0(%rbp)
	testq $7,%rbx
	jne sQJb_info
	jmp *(%rbx)
	.size sQQ2_info, .-sQQ2_info
.text
	.align 8
	.quad	4
	.quad	32
sQQ3_info:
.LcQUI:
	movq 24(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sQQ2_info,0(%rbp)
	testq $7,%rbx
	jne sQQ2_info
	jmp *(%rbx)
	.size sQQ3_info, .-sQQ3_info
.text
	.align 8
	.quad	4
	.quad	32
sQIT_info:
.LcQUR:
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sQQ3_info,0(%rbp)
	testq $7,%rbx
	jne sQQ3_info
	jmp *(%rbx)
	.size sQIT_info, .-sQIT_info
.text
	.align 8
	.quad	5
	.quad	16
sQPR_info:
.LcQV1:
	incq ENT_DYN_THK_ctr
	leaq -72(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQV3
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sQIT_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sQIT_info
	jmp *(%rbx)
.LcQV3:
	jmp *-16(%r13)
	.size sQPR_info, .-sQPR_info
.text
	.align 8
	.quad	3
	.quad	32
sQQ4_info:
.LcQVc:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcQVg
	addq $7,Main_zdwa1_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sQPR_info,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -48(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcQVg:
	movq $56,192(%r13)
.LcQVe:
	jmp *-16(%r13)
	.size sQQ4_info, .-sQQ4_info
.text
	.align 8
	.quad	3
	.quad	32
sQQ5_info:
.LcQVo:
	movq $sQQ4_info,0(%rbp)
	testq $7,%rbx
	jne sQQ4_info
	jmp *(%rbx)
	.size sQQ5_info, .-sQQ5_info
.text
	.align 8
	.quad	3
	.quad	32
sQQ6_info:
.LcQVu:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movq $sQQ5_info,0(%rbp)
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_getCursorPos1_info
	.size sQQ6_info, .-sQQ6_info
.text
	.align 8
	.long	Main_zdwa1_srt-(Main_zdwa1_info)+0
	.long	0
	.quad	25769803798
	.quad	0
	.quad	4294967311
.globl Main_zdwa1_info
.type Main_zdwa1_info, @object
Main_zdwa1_info:
.LcQVx:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQVz
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcQVB
	addq $2,Main_zdwa1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_zdwa1_ct
	je .LcQVC
.LcQVD:
	incq Main_zdwa1_ct+40
	movq $sQI6_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movq %r9,-24(%rbp)
	movq %r8,-16(%rbp)
	movq %r14,-8(%rbp)
	leaq -5(%r12),%rbx
	movq $sQQ6_info,-32(%rbp)
	addq $-32,%rbp
	jmp sQI6_info
.LcQVB:
	movq $16,192(%r13)
.LcQVz:
	movl $Main_zdwa1_closure,%ebx
	jmp *-8(%r13)
.LcQVC:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_zdwa1_ct+56
	movq $Main_zdwa1_ct,ticky_entry_ctrs
	movq $1,Main_zdwa1_ct
	jmp .LcQVD
	.size Main_zdwa1_info, .-Main_zdwa1_info
.section .data
	.align 8
.align 1
Main_updateInput1_srt:
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa5_closure
.data
	.align 8
.align 1
.globl Main_updateInput1_closure
.type Main_updateInput1_closure, @object
Main_updateInput1_closure:
	.quad	Main_updateInput1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQVR_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQVU_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_updateInput1_ct
.type Main_updateInput1_ct, @object
Main_updateInput1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cQVR_str
	.quad	cQVU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_updateInput1_srt-(sQVH_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sQVH_info:
.LcQW4:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	addq $16,%rbp
	jmp Main_zdwa1_info
	.size sQVH_info, .-sQVH_info
.text
	.align 8
	.long	Main_updateInput1_srt-(Main_updateInput1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_updateInput1_info
.type Main_updateInput1_info, @object
Main_updateInput1_info:
.LcQW7:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQW9
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_updateInput1_ct
	je .LcQWa
.LcQWb:
	incq Main_updateInput1_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sQVH_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sQVH_info
	jmp *(%rbx)
.LcQW9:
	movl $Main_updateInput1_closure,%ebx
	jmp *-8(%r13)
.LcQWa:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_updateInput1_ct+56
	movq $Main_updateInput1_ct,ticky_entry_ctrs
	movq $1,Main_updateInput1_ct
	jmp .LcQWb
	.size Main_updateInput1_info, .-Main_updateInput1_info
.section .data
	.align 8
.align 1
Main_updateInput_srt:
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa5_closure
.data
	.align 8
.align 1
.globl Main_updateInput_closure
.type Main_updateInput_closure, @object
Main_updateInput_closure:
	.quad	Main_updateInput_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQWo_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	51
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQWr_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_updateInput_ct
.type Main_updateInput_ct, @object
Main_updateInput_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cQWo_str
	.quad	cQWr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_updateInput_srt-(Main_updateInput_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_updateInput_info
.type Main_updateInput_info, @object
Main_updateInput_info:
.LcQWw:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_updateInput_ct
	je .LcQWz
.LcQWB:
	incq Main_updateInput_ct+40
	incq KNOWN_CALL_ctr
	jmp Main_updateInput1_info
.LcQWz:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_updateInput_ct+56
	movq $Main_updateInput_ct,ticky_entry_ctrs
	movq $1,Main_updateInput_ct
	jmp .LcQWB
	.size Main_updateInput_info, .-Main_updateInput_info
.data
	.align 8
.align 1
rQHp_closure:
	.quad	rQHp_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cQWN_str:
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	32
	.byte	99
	.byte	97
	.byte	110
	.byte	32
	.byte	111
	.byte	110
	.byte	108
	.byte	121
	.byte	32
	.byte	98
	.byte	101
	.byte	32
	.byte	117
	.byte	115
	.byte	101
	.byte	100
	.byte	32
	.byte	111
	.byte	110
	.byte	32
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rQHp_info:
.LcQWR:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQWT
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcQWV
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
	je .LcQWW
.LcQWX:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cQWN_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcQWV:
	movq $16,192(%r13)
.LcQWT:
	jmp *-16(%r13)
.LcQWW:
	jmp *(%rbx)
	.size rQHp_info, .-rQHp_info
.section .data
	.align 8
.align 1
Main_updatePlayerInput2_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rQHp_closure
.data
	.align 8
.align 1
.globl Main_updatePlayerInput2_closure
.type Main_updatePlayerInput2_closure, @object
Main_updatePlayerInput2_closure:
	.quad	Main_updatePlayerInput2_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_updatePlayerInput2_srt-(Main_updatePlayerInput2_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl Main_updatePlayerInput2_info
.type Main_updatePlayerInput2_info, @object
Main_updatePlayerInput2_info:
.LcQXe:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQXg
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcQXi
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
	je .LcQXj
.LcQXk:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rQHp_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcQXi:
	movq $16,192(%r13)
.LcQXg:
	jmp *-16(%r13)
.LcQXj:
	jmp *(%rbx)
	.size Main_updatePlayerInput2_info, .-Main_updatePlayerInput2_info
.section .data
	.align 8
.align 1
Main_updatePlayerInput1_srt:
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa5_closure
	.quad	Main_updatePlayerInput2_closure
.data
	.align 8
.align 1
.globl Main_updatePlayerInput1_closure
.type Main_updatePlayerInput1_closure, @object
Main_updatePlayerInput1_closure:
	.quad	Main_updatePlayerInput1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQXQ_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	79
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQXT_str:
	.byte	83
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_updatePlayerInput1_ct
.type Main_updatePlayerInput1_ct, @object
Main_updatePlayerInput1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cQXQ_str
	.quad	cQXT_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	5
	.quad	32
sQK7_info:
.LcQYh:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcQYn
	addq $7,Main_updatePlayerInput1_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -47(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcQYn:
	movq $56,192(%r13)
.LcQYl:
	jmp *-16(%r13)
	.size sQK7_info, .-sQK7_info
.text
	.align 8
	.quad	6
	.quad	16
sQXr_info:
.LcQYx:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQYz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 56(%rbx),%rax
	movq %rax,-56(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sQK7_info,-64(%rbp)
	addq $-64,%rbp
	testq $7,%rbx
	jne sQK7_info
	jmp *(%rbx)
.LcQYz:
	jmp *-16(%r13)
	.size sQXr_info, .-sQXr_info
.text
	.align 8
	.quad	2054
	.quad	32
sQXt_info:
.LcQYJ:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcQYN
	addq $8,Main_updatePlayerInput1_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $sQXr_info,-56(%r12)
	movq %rbx,-40(%r12)
	movq 40(%rbp),%rax
	movq %rax,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -56(%r12),%rbx
	addq $56,%rbp
	jmp *0(%rbp)
.LcQYN:
	movq $64,192(%r13)
.LcQYL:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sQXt_info, .-sQXt_info
.text
	.align 8
	.long	Main_updatePlayerInput1_srt-(sQXu_info)+0
	.long	0
	.quad	6
	.quad	4294967328
sQXu_info:
.LcQYV:
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	movq $sQXt_info,0(%rbp)
	jmp Main_zdwa1_info
	.size sQXu_info, .-sQXu_info
.text
	.align 8
	.long	Main_updatePlayerInput1_srt-(sQXq_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sQXq_info:
.LcQYZ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcQZ0
	movq 39(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 47(%rbx),%rbx
	movq $sQXu_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sQXu_info
	jmp *(%rbx)
.LcQZ0:
	movl $Main_updatePlayerInput2_closure,%ebx
	addq $16,%rbp
	jmp stg_ap_0_fast
	.size sQXq_info, .-sQXq_info
.text
	.align 8
	.long	Main_updatePlayerInput1_srt-(Main_updatePlayerInput1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	12884901903
.globl Main_updatePlayerInput1_info
.type Main_updatePlayerInput1_info, @object
Main_updatePlayerInput1_info:
.LcQZd:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQZf
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_updatePlayerInput1_ct
	je .LcQZg
.LcQZh:
	incq Main_updatePlayerInput1_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sQXq_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sQXq_info
	jmp *(%rbx)
.LcQZf:
	movl $Main_updatePlayerInput1_closure,%ebx
	jmp *-8(%r13)
.LcQZg:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_updatePlayerInput1_ct+56
	movq $Main_updatePlayerInput1_ct,ticky_entry_ctrs
	movq $1,Main_updatePlayerInput1_ct
	jmp .LcQZh
	.size Main_updatePlayerInput1_info, .-Main_updatePlayerInput1_info
.section .data
	.align 8
.align 1
Main_updatePlayerInput_srt:
	.quad	Main_updatePlayerInput1_closure
.data
	.align 8
.align 1
.globl Main_updatePlayerInput_closure
.type Main_updatePlayerInput_closure, @object
Main_updatePlayerInput_closure:
	.quad	Main_updatePlayerInput_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQZu_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	90
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQZx_str:
	.byte	83
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_updatePlayerInput_ct
.type Main_updatePlayerInput_ct, @object
Main_updatePlayerInput_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cQZu_str
	.quad	cQZx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_updatePlayerInput_srt-(Main_updatePlayerInput_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_updatePlayerInput_info
.type Main_updatePlayerInput_info, @object
Main_updatePlayerInput_info:
.LcQZC:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_updatePlayerInput_ct
	je .LcQZF
.LcQZH:
	incq Main_updatePlayerInput_ct+40
	incq KNOWN_CALL_ctr
	jmp Main_updatePlayerInput1_info
.LcQZF:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_updatePlayerInput_ct+56
	movq $Main_updatePlayerInput_ct,ticky_entry_ctrs
	movq $1,Main_updatePlayerInput_ct
	jmp .LcQZH
	.size Main_updatePlayerInput_info, .-Main_updatePlayerInput_info
.section .data
	.align 8
.align 1
Main_updateStep4_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl Main_updateStep4_closure
.type Main_updateStep4_closure, @object
Main_updateStep4_closure:
	.quad	Main_updateStep4_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cQZU_str:
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	102
	.byte	105
	.byte	101
	.byte	110
	.byte	100
	.byte	102
	.byte	97
	.byte	110
	.byte	49
	.byte	47
	.byte	119
	.byte	111
	.byte	114
	.byte	107
	.byte	115
	.byte	112
	.byte	97
	.byte	99
	.byte	101
	.byte	47
	.byte	72
	.byte	97
	.byte	115
	.byte	107
	.byte	101
	.byte	108
	.byte	108
	.byte	47
	.byte	72
	.byte	97
	.byte	115
	.byte	107
	.byte	101
	.byte	108
	.byte	108
	.byte	45
	.byte	79
	.byte	112
	.byte	101
	.byte	110
	.byte	71
	.byte	76
	.byte	47
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	114
	.byte	110
	.byte	47
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	49
	.byte	48
	.byte	53
	.byte	58
	.byte	50
	.byte	49
	.byte	45
	.byte	52
	.byte	56
	.byte	124
	.byte	114
	.byte	101
	.byte	99
	.byte	111
	.byte	114
	.byte	100
	.byte	32
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	Main_updateStep4_srt-(Main_updateStep4_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl Main_updateStep4_info
.type Main_updateStep4_info, @object
Main_updateStep4_info:
.LcQZY:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcR00
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcR02
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
	je .LcR03
.LcR04:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cQZU_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcR02:
	movq $16,192(%r13)
.LcR00:
	jmp *-16(%r13)
.LcR03:
	jmp *(%rbx)
	.size Main_updateStep4_info, .-Main_updateStep4_info
.data
	.align 8
.align 1
.globl Main_updateStep3_closure
.type Main_updateStep3_closure, @object
Main_updateStep3_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.data
	.align 8
.align 1
.globl Main_updateStep2_closure
.type Main_updateStep2_closure, @object
Main_updateStep2_closure:
	.quad	EngineziCoreziVec_Vec2_static_info
	.quad	Main_updateStep3_closure+1
	.quad	Main_updateStep3_closure+1
	.quad	1
.section .data
	.align 8
.align 1
Main_zdwa2_srt:
	.quad	base_GHCziReal_zdfNumRatio3_closure
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	base_GHCziReal_zdwzdczs_closure
	.quad	base_DataziFixed_zdfHasResolutionE7_closure
	.quad	timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_zdwposixSecondsToUTCTime_closure
	.quad	timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_getPOSIXTime1_closure
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa5_closure
	.quad	Main_updatePlayerInput2_closure
	.quad	timezm1zi4zi0zi1_DataziTimeziClockziUTCDiff_zdwa_closure
	.quad	Main_updateStep4_closure
.data
	.align 8
.align 1
.globl Main_zdwa2_closure
.type Main_zdwa2_closure, @object
Main_zdwa2_closure:
	.quad	Main_zdwa2_info
	.quad	0
.section .rodata
	.align 8
.align 1
cR1Z_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	72
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cR21_str:
	.byte	105
	.byte	77
	.byte	76
	.byte	76
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_zdwa2_ct
.type Main_zdwa2_ct, @object
Main_zdwa2_ct:
	.quad	0
	.quad	6
	.quad	0
	.quad	cR1Z_str
	.quad	cR21_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl Main_zdwa2_slow
.type Main_zdwa2_slow, @object
Main_zdwa2_slow:
.LcR24:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp Main_zdwa2_info
	.size Main_zdwa2_slow, .-Main_zdwa2_slow
.text
	.align 8
	.quad	13
	.quad	32
sQLt_info:
.LcR2I:
	addq $168,%r12
	cmpq 144(%r13),%r12
	ja .LcR2O
	addq $21,Main_zdwa2_ct+48
	incq ALLOC_HEAP_ctr
	addq $21,ALLOC_HEAP_tot
	movq $timezm1zi4zi0zi1_DataziTimeziClockziUTC_UTCTime_con_info,-160(%r12)
	movq 104(%rbp),%rax
	movq %rax,-152(%r12)
	movq 96(%rbp),%rax
	movq %rax,-144(%r12)
	movq $EngineziCoreziWorld_WorldState_con_info,-136(%r12)
	movq 24(%rbp),%rax
	movq %rax,-128(%r12)
	leaq -159(%r12),%rax
	movq %rax,-120(%r12)
	movq %rbx,-112(%r12)
	movq 16(%rbp),%rax
	movq %rax,-104(%r12)
	movq 8(%rbp),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 88(%rbp),%rax
	movq %rax,-80(%r12)
	movq 80(%rbp),%rax
	movq %rax,-72(%r12)
	movq 72(%rbp),%rax
	movq %rax,-64(%r12)
	movq 64(%rbp),%rax
	movq %rax,-56(%r12)
	movq 56(%rbp),%rax
	movq %rax,-48(%r12)
	movq 48(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 40(%rbp),%rax
	movq %rax,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -135(%r12),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
.LcR2O:
	movq $168,192(%r13)
.LcR2M:
	jmp *-16(%r13)
	.size sQLt_info, .-sQLt_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0x_info)+8
	.long	0
	.quad	13
	.quad	4294967328
sR0x_info:
.LcR37:
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq %rbx,%r14
	movq $sQLt_info,0(%rbp)
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sR0x_info, .-sR0x_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0l_info)+0
	.long	0
	.quad	13
	.quad	64424509472
sR0l_info:
.LcR3a:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movl $base_GHCziReal_zdfNumRatio3_closure,%esi
	movl $base_DataziFixed_zdfHasResolutionE7_closure,%edi
	movl $base_GHCziReal_zdfNumRatio3_closure,%r8d
	movq $sR0x_info,0(%rbp)
	jmp base_GHCziReal_zdwzdczs_info
	.size sR0l_info, .-sR0l_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0y_info)+0
	.long	0
	.quad	13
	.quad	1163936137248
sR0y_info:
.LcR3d:
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 104(%rbp),%rdi
	movq %rbx,104(%rbp)
	movq 96(%rbp),%r8
	movq %r14,96(%rbp)
	movq %rbx,%r14
	movq $sR0l_info,0(%rbp)
	jmp timezm1zi4zi0zi1_DataziTimeziClockziUTCDiff_zdwa_info
	.size sR0y_info, .-sR0y_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0m_info)+0
	.long	0
	.quad	14
	.quad	1232655613968
sR0m_info:
.LcR3h:
	incq ENT_DYN_THK_ctr
	leaq -128(%rbp),%rax
	cmpq %r15,%rax
	jb .LcR3j
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 120(%rbx),%rax
	movq %rax,-120(%rbp)
	movq 112(%rbx),%rax
	movq %rax,-112(%rbp)
	movq 104(%rbx),%rax
	movq %rax,-104(%rbp)
	movq 96(%rbx),%rax
	movq %rax,-96(%rbp)
	movq 88(%rbx),%rax
	movq %rax,-88(%rbp)
	movq 80(%rbx),%rax
	movq %rax,-80(%rbp)
	movq 72(%rbx),%rax
	movq %rax,-72(%rbp)
	movq 64(%rbx),%rax
	movq %rax,-64(%rbp)
	movq 56(%rbx),%rax
	movq %rax,-56(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%r14
	movq $sR0y_info,-128(%rbp)
	addq $-128,%rbp
	jmp timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_zdwposixSecondsToUTCTime_info
.LcR3j:
	jmp *-16(%r13)
	.size sR0m_info, .-sR0m_info
.text
	.align 8
	.quad	8
	.quad	32
sR0B_info:
.LcR3P:
	addq $136,%r12
	cmpq 144(%r13),%r12
	ja .LcR3V
	addq $17,Main_zdwa2_ct+48
	incq ALLOC_HEAP_ctr
	addq $17,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-128(%r12)
	movq 7(%rbx),%rax
	movq %rax,-120(%r12)
	movq $Main_updateStep2_closure+1,-112(%r12)
	movq 23(%rbx),%rax
	movq %rax,-104(%r12)
	movq 31(%rbx),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 40(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	leaq -127(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 64(%rbp),%rax
	movq %rax,-16(%r12)
	movq 56(%rbp),%rax
	movq %rax,-8(%r12)
	movq 48(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $72,%rbp
	jmp *0(%rbp)
.LcR3V:
	movq $136,192(%r13)
.LcR3T:
	jmp *-16(%r13)
	.size sR0B_info, .-sR0B_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0A_info)+72
	.long	0
	.quad	3
	.quad	4294967328
sR0A_info:
.LcR4c:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcR4d
	movq 39(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 47(%rbx),%rbx
	movq $sR0B_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sR0B_info
	jmp *(%rbx)
.LcR4d:
	movl $Main_updateStep4_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sR0A_info, .-sR0A_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sQM7_info)+72
	.long	0
	.quad	3
	.quad	4294967328
sQM7_info:
.LcR4r:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sR0A_info,0(%rbp)
	testq $7,%rbx
	jne sR0A_info
	jmp *(%rbx)
	.size sQM7_info, .-sQM7_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sQLF_info)+72
	.long	0
	.quad	0
	.quad	4294967328
sQLF_info:
.LcR4z:
	incq KNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%r14
	movq %rbx,%rsi
	movq $sQM7_info,-24(%rbp)
	addq $-24,%rbp
	jmp EngineziObjectziGameObject_updateAll_info
	.size sQLF_info, .-sQLF_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sQLn_info)+0
	.long	0
	.quad	13
	.quad	3431678869536
sQLn_info:
.LcR4F:
	addq $128,%r12
	cmpq 144(%r13),%r12
	ja .LcR4J
	addq $16,Main_zdwa2_ct+48
	incq ALLOC_HEAP_ctr
	addq $16,ALLOC_HEAP_tot
	movq $sR0m_info,-120(%r12)
	movq 104(%rbp),%rax
	movq %rax,-104(%r12)
	movq 96(%rbp),%rax
	movq %rax,-96(%r12)
	movq 88(%rbp),%rax
	movq %rax,-88(%r12)
	movq 80(%rbp),%rax
	movq %rax,-80(%r12)
	movq 72(%rbp),%rax
	movq %rax,-72(%r12)
	movq 64(%rbp),%rax
	movq %rax,-64(%r12)
	movq 56(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq %rbx,-40(%r12)
	movq 40(%rbp),%rax
	movq %rax,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 48(%rbp),%rbx
	leaq -120(%r12),%r14
	movq $sQLF_info,104(%rbp)
	addq $104,%rbp
	jmp stg_ap_p_fast
.LcR4J:
	movq $128,192(%r13)
.LcR4H:
	jmp *-16(%r13)
	.size sQLn_info, .-sQLn_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0p_info)+0
	.long	0
	.quad	14
	.quad	3431678869520
sR0p_info:
.LcR51:
	incq ENT_DYN_THK_ctr
	leaq -128(%rbp),%rax
	cmpq %r15,%rax
	jb .LcR53
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 120(%rbx),%rax
	movq %rax,-120(%rbp)
	movq 112(%rbx),%rax
	movq %rax,-112(%rbp)
	movq 104(%rbx),%rax
	movq %rax,-104(%rbp)
	movq 96(%rbx),%rax
	movq %rax,-96(%rbp)
	movq 88(%rbx),%rax
	movq %rax,-88(%rbp)
	movq 80(%rbx),%rax
	movq %rax,-80(%rbp)
	movq 72(%rbx),%rax
	movq %rax,-72(%rbp)
	movq 64(%rbx),%rax
	movq %rax,-64(%rbp)
	movq 56(%rbx),%rax
	movq %rax,-56(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sQLn_info,-128(%rbp)
	addq $-128,%rbp
	testq $7,%rbx
	jne sQLn_info
	jmp *(%rbx)
.LcR53:
	jmp *-16(%r13)
	.size sR0p_info, .-sR0p_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0z_info)+0
	.long	0
	.quad	262158
	.quad	3431678869536
sR0z_info:
.LcR5l:
	addq $128,%r12
	cmpq 144(%r13),%r12
	ja .LcR5p
	addq $16,Main_zdwa2_ct+48
	incq ALLOC_HEAP_ctr
	addq $16,ALLOC_HEAP_tot
	movq $sR0p_info,-120(%r12)
	movq %rbx,-104(%r12)
	movq 112(%rbp),%rax
	movq %rax,-96(%r12)
	movq 56(%rbp),%rax
	movq %rax,-88(%r12)
	movq 48(%rbp),%rax
	movq %rax,-80(%r12)
	movq 40(%rbp),%rax
	movq %rax,-72(%r12)
	movq 32(%rbp),%rax
	movq %rax,-64(%r12)
	movq 24(%rbp),%rax
	movq %rax,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 96(%rbp),%rax
	movq %rax,-32(%r12)
	movq 88(%rbp),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -120(%r12),%rbx
	addq $120,%rbp
	jmp *0(%rbp)
.LcR5p:
	movq $128,192(%r13)
.LcR5n:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sR0z_info, .-sR0z_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0w_info)+0
	.long	0
	.quad	262158
	.quad	3706556776480
sR0w_info:
.LcR5F:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcR5J
	addq $2,Main_zdwa2_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziPtr_Ptr_con_info,-8(%r12)
	movq 104(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	movq $sR0z_info,0(%rbp)
	jmp Main_zdwa1_info
.LcR5J:
	movq $16,192(%r13)
.LcR5H:
	jmp *-16(%r13)
	.size sR0w_info, .-sR0w_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0e_info)+0
	.long	0
	.quad	8201
	.quad	4256312590368
sR0e_info:
.LcR5O:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcR5P
	movq 39(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 47(%rbx),%rbx
	movq $sR0w_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sR0w_info
	jmp *(%rbx)
.LcR5P:
	movl $Main_updatePlayerInput2_closure,%ebx
	addq $80,%rbp
	jmp stg_ap_0_fast
	.size sR0e_info, .-sR0e_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0f_info)+0
	.long	0
	.quad	8201
	.quad	4256312590368
sR0f_info:
.LcR62:
	movq 72(%rbp),%rax
	movq %rbx,72(%rbp)
	movq %rax,%rbx
	movq $sR0e_info,0(%rbp)
	testq $7,%rbx
	jne sR0e_info
	jmp *(%rbx)
	.size sR0f_info, .-sR0f_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sQMb_info)+0
	.long	0
	.quad	8201
	.quad	4393751543840
sQMb_info:
.LcR6a:
	incq KNOWN_CALL_ctr
	movq $sR0f_info,0(%rbp)
	jmp timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_getPOSIXTime1_info
	.size sQMb_info, .-sQMb_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0C_info)+0
	.long	0
	.quad	8201
	.quad	4393751543840
sR0C_info:
.LcR6e:
	jmp sQMb_info
	.size sR0C_info, .-sR0C_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0E_info)+0
	.long	0
	.quad	8201
	.quad	4393751543840
sR0E_info:
.LcR6i:
	jmp sQMb_info
	.size sR0E_info, .-sR0E_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0D_info)+0
	.long	0
	.quad	8201
	.quad	4393751543840
sR0D_info:
.LcR6n:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcR6o
	movq 64(%rbp),%r14
	movq $sR0C_info,0(%rbp)
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	movq %r14,%rdi
	movl $208897,%esi
	movl $212995,%edx
	subq $8,%rsp
	movl $0,%eax
	call glfwSetInputMode
	addq $8,%rsp
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	jmp *0(%rbp)
.LcR6o:
	movq 64(%rbp),%r14
	movq $sR0E_info,0(%rbp)
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	movq %r14,%rdi
	movl $208897,%esi
	movl $212993,%edx
	subq $8,%rsp
	movl $0,%eax
	call glfwSetInputMode
	addq $8,%rsp
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	jmp *0(%rbp)
	.size sR0D_info, .-sR0D_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0g_info)+0
	.long	0
	.quad	2055
	.quad	4393751543840
sR0g_info:
.LcR7a:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 16(%rbp),%rbx
	movq $sR0D_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sR0D_info
	jmp *(%rbx)
	.size sR0g_info, .-sR0g_info
.text
	.align 8
	.long	Main_zdwa2_srt-(sR0h_info)+0
	.long	0
	.quad	260
	.quad	4393751543840
sR0h_info:
.LcR7i:
	movq 39(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sR0g_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sR0g_info
	jmp *(%rbx)
	.size sR0h_info, .-sR0h_info
.text
	.align 8
	.long	Main_zdwa2_slow-(Main_zdwa2_info)+0
	.long	0
	.quad	69
	.long	Main_zdwa2_srt-(Main_zdwa2_info)+0
	.long	0
	.quad	25769803776
	.quad	0
	.quad	4393751543823
.globl Main_zdwa2_info
.type Main_zdwa2_info, @object
Main_zdwa2_info:
.LcR7r:
	leaq -120(%rbp),%rax
	cmpq %r15,%rax
	jb .LcR7t
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_zdwa2_ct
	je .LcR7u
.LcR7v:
	incq Main_zdwa2_ct+40
	movq %r8,-32(%rbp)
	movq %rdi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r9,%rbx
	movq $sR0h_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sR0h_info
	jmp *(%rbx)
.LcR7t:
	movl $Main_zdwa2_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcR7u:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_zdwa2_ct+56
	movq $Main_zdwa2_ct,ticky_entry_ctrs
	movq $1,Main_zdwa2_ct
	jmp .LcR7v
	.size Main_zdwa2_info, .-Main_zdwa2_info
.section .data
	.align 8
.align 1
Main_updateStep1_srt:
	.quad	Main_zdwa2_closure
.data
	.align 8
.align 1
.globl Main_updateStep1_closure
.type Main_updateStep1_closure, @object
Main_updateStep1_closure:
	.quad	Main_updateStep1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cR7Q_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	101
	.byte	112
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	77
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cR7T_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_updateStep1_ct
.type Main_updateStep1_ct, @object
Main_updateStep1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cR7Q_str
	.quad	cR7T_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_updateStep1_srt-(sR7C_info)+0
	.long	0
	.quad	65
	.quad	4294967328
sR7C_info:
.LcR87:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	addq $16,%rbp
	jmp Main_zdwa2_info
	.size sR7C_info, .-sR7C_info
.text
	.align 8
	.long	Main_updateStep1_srt-(sR7D_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sR7D_info:
.LcR8a:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sR7C_info,0(%rbp)
	testq $7,%rbx
	jne sR7C_info
	jmp *(%rbx)
	.size sR7D_info, .-sR7D_info
.text
	.align 8
	.long	Main_updateStep1_srt-(Main_updateStep1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_updateStep1_info
.type Main_updateStep1_info, @object
Main_updateStep1_info:
.LcR8j:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcR8l
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_updateStep1_ct
	je .LcR8m
.LcR8n:
	incq Main_updateStep1_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sR7D_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sR7D_info
	jmp *(%rbx)
.LcR8l:
	movl $Main_updateStep1_closure,%ebx
	jmp *-8(%r13)
.LcR8m:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_updateStep1_ct+56
	movq $Main_updateStep1_ct,ticky_entry_ctrs
	movq $1,Main_updateStep1_ct
	jmp .LcR8n
	.size Main_updateStep1_info, .-Main_updateStep1_info
.section .data
	.align 8
.align 1
Main_updateStep_srt:
	.quad	Main_zdwa2_closure
.data
	.align 8
.align 1
.globl Main_updateStep_closure
.type Main_updateStep_closure, @object
Main_updateStep_closure:
	.quad	Main_updateStep_info
	.quad	0
.section .rodata
	.align 8
.align 1
cR8A_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	101
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	89
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cR8D_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_updateStep_ct
.type Main_updateStep_ct, @object
Main_updateStep_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cR8A_str
	.quad	cR8D_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_updateStep_srt-(Main_updateStep_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_updateStep_info
.type Main_updateStep_info, @object
Main_updateStep_info:
.LcR8I:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_updateStep_ct
	je .LcR8L
.LcR8N:
	incq Main_updateStep_ct+40
	incq KNOWN_CALL_ctr
	jmp Main_updateStep1_info
.LcR8L:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_updateStep_ct+56
	movq $Main_updateStep_ct,ticky_entry_ctrs
	movq $1,Main_updateStep_ct
	jmp .LcR8N
	.size Main_updateStep_info, .-Main_updateStep_info
.section .data
	.align 8
.align 1
Main_zdwa_srt:
	.quad	EngineziObjectziPlayer_applyTransformations1_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglLoadIdentity_closure
	.quad	EngineziGraphicsziGraphics_renderWorld1_closure
.data
	.align 8
.align 1
.globl Main_zdwa_closure
.type Main_zdwa_closure, @object
Main_zdwa_closure:
	.quad	Main_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
cR94_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cR97_str:
	.byte	77
	.byte	76
	.byte	76
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_zdwa_ct
.type Main_zdwa_ct, @object
Main_zdwa_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cR94_str
	.quad	cR97_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_zdwa_srt-(sR8R_info)+16
	.long	0
	.quad	4
	.quad	4294967328
sR8R_info:
.LcR9l:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcR9q
	addq $5,Main_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%r14
	addq $40,%rbp
	jmp EngineziGraphicsziGraphics_renderWorld1_info
.LcR9q:
	movq $40,192(%r13)
.LcR9o:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sR8R_info, .-sR8R_info
.text
	.align 8
	.long	Main_zdwa_srt-(sR8T_info)+0
	.long	0
	.quad	4
	.quad	21474836512
sR8T_info:
.LcR9x:
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq $sR8R_info,0(%rbp)
	jmp EngineziObjectziPlayer_applyTransformations1_info
	.size sR8T_info, .-sR8T_info
.text
	.align 8
	.long	Main_zdwa_srt-(Main_zdwa_info)+0
	.long	0
	.quad	21474836501
	.quad	0
	.quad	30064771087
.globl Main_zdwa_info
.type Main_zdwa_info, @object
Main_zdwa_info:
.LcR9B:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcR9D
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_zdwa_ct
	je .LcR9E
.LcR9F:
	incq Main_zdwa_ct+40
	movq %r8,-32(%rbp)
	movq %rdi,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglLoadIdentity_closure,%ebx
	movq $sR8T_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sR8T_info
	jmp *(%rbx)
.LcR9D:
	movl $Main_zdwa_closure,%ebx
	jmp *-8(%r13)
.LcR9E:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_zdwa_ct+56
	movq $Main_zdwa_ct,ticky_entry_ctrs
	movq $1,Main_zdwa_ct
	jmp .LcR9F
	.size Main_zdwa_info, .-Main_zdwa_info
.section .data
	.align 8
.align 1
Main_renderStepOld1_srt:
	.quad	Main_zdwa_closure
.data
	.align 8
.align 1
.globl Main_renderStepOld1_closure
.type Main_renderStepOld1_closure, @object
Main_renderStepOld1_closure:
	.quad	Main_renderStepOld1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cR9W_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	83
	.byte	116
	.byte	101
	.byte	112
	.byte	79
	.byte	108
	.byte	100
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cR9Z_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_renderStepOld1_ct
.type Main_renderStepOld1_ct, @object
Main_renderStepOld1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cR9W_str
	.quad	cR9Z_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_renderStepOld1_srt-(sR9M_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sR9M_info:
.LcRa9:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $8,%rbp
	jmp Main_zdwa_info
	.size sR9M_info, .-sR9M_info
.text
	.align 8
	.long	Main_renderStepOld1_srt-(Main_renderStepOld1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_renderStepOld1_info
.type Main_renderStepOld1_info, @object
Main_renderStepOld1_info:
.LcRac:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcRae
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_renderStepOld1_ct
	je .LcRaf
.LcRag:
	incq Main_renderStepOld1_ct+40
	movq %r14,%rbx
	movq $sR9M_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sR9M_info
	jmp *(%rbx)
.LcRae:
	movl $Main_renderStepOld1_closure,%ebx
	jmp *-8(%r13)
.LcRaf:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_renderStepOld1_ct+56
	movq $Main_renderStepOld1_ct,ticky_entry_ctrs
	movq $1,Main_renderStepOld1_ct
	jmp .LcRag
	.size Main_renderStepOld1_info, .-Main_renderStepOld1_info
.section .data
	.align 8
.align 1
Main_renderStepOld_srt:
	.quad	Main_zdwa_closure
.data
	.align 8
.align 1
.globl Main_renderStepOld_closure
.type Main_renderStepOld_closure, @object
Main_renderStepOld_closure:
	.quad	Main_renderStepOld_info
	.quad	0
.section .rodata
	.align 8
.align 1
cRat_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	83
	.byte	116
	.byte	101
	.byte	112
	.byte	79
	.byte	108
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	51
	.byte	49
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cRaw_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_renderStepOld_ct
.type Main_renderStepOld_ct, @object
Main_renderStepOld_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cRat_str
	.quad	cRaw_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_renderStepOld_srt-(Main_renderStepOld_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl Main_renderStepOld_info
.type Main_renderStepOld_info, @object
Main_renderStepOld_info:
.LcRaB:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_renderStepOld_ct
	je .LcRaE
.LcRaG:
	incq Main_renderStepOld_ct+40
	incq KNOWN_CALL_ctr
	jmp Main_renderStepOld1_info
.LcRaE:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_renderStepOld_ct+56
	movq $Main_renderStepOld_ct,ticky_entry_ctrs
	movq $1,Main_renderStepOld_ct
	jmp .LcRaG
	.size Main_renderStepOld_info, .-Main_renderStepOld_info
.section .data
	.align 8
.align 1
Main_mainzuzdsa_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClear_closure
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_pollEvents1_closure
	.quad	EngineziMatrixziMatrix_renderWorldMat1_closure
	.quad	Main_mainzuzdsa_closure
	.quad	Main_zdwa2_closure
.data
	.align 8
.align 1
.globl Main_mainzuzdsa_closure
.type Main_mainzuzdsa_closure, @object
Main_mainzuzdsa_closure:
	.quad	Main_mainzuzdsa_info
	.quad	0
.section .rodata
	.align 8
.align 1
cRbx_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	95
	.byte	36
	.byte	115
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	85
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cRbz_str:
	.byte	83
	.byte	65
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_mainzuzdsa_ct
.type Main_mainzuzdsa_ct, @object
Main_mainzuzdsa_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cRbx_str
	.quad	cRbz_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_mainzuzdsa_srt-(sRaK_info)+24
	.long	0
	.quad	66
	.quad	4294967328
sRaK_info:
.LcRbE:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	addq $24,%rbp
	jmp Main_mainzuzdsa_info
	.size sRaK_info, .-sRaK_info
.text
	.align 8
	.long	Main_mainzuzdsa_srt-(sRaL_info)+24
	.long	0
	.quad	66
	.quad	4294967328
sRaL_info:
.LcRbH:
	movq 8(%rbp),%r14
	movq $sRaK_info,0(%rbp)
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	movq %r14,%rdi
	subq $8,%rsp
	movl $0,%eax
	call glfwSwapBuffers
	addq $8,%rsp
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	jmp *0(%rbp)
	.size sRaL_info, .-sRaL_info
.text
	.align 8
	.long	Main_mainzuzdsa_srt-(sRaM_info)+16
	.long	0
	.quad	194
	.quad	12884901920
sRaM_info:
.LcRc5:
	incq KNOWN_CALL_ctr
	movq %rbx,16(%rbp)
	movq %rbx,%r14
	movq $sRaL_info,0(%rbp)
	jmp EngineziMatrixziMatrix_renderWorldMat1_info
	.size sRaM_info, .-sRaM_info
.text
	.align 8
	.long	Main_mainzuzdsa_srt-(sRaN_info)+16
	.long	0
	.quad	194
	.quad	30064771104
sRaN_info:
.LcRc8:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	movq $sRaM_info,0(%rbp)
	jmp Main_zdwa2_info
	.size sRaN_info, .-sRaN_info
.text
	.align 8
	.long	Main_mainzuzdsa_srt-(sRaO_info)+16
	.long	0
	.quad	66
	.quad	30064771104
sRaO_info:
.LcRcb:
	movq 16(%rbp),%rbx
	movq $sRaN_info,0(%rbp)
	testq $7,%rbx
	jne sRaN_info
	jmp *(%rbx)
	.size sRaO_info, .-sRaO_info
.text
	.align 8
	.long	Main_mainzuzdsa_srt-(sRaQ_info)+8
	.long	0
	.quad	66
	.quad	64424509472
sRaQ_info:
.LcRch:
	movl $16640,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq $sRaO_info,0(%rbp)
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_pollEvents1_info
	.size sRaQ_info, .-sRaQ_info
.text
	.align 8
	.long	Main_mainzuzdsa_srt-(Main_mainzuzdsa_info)+0
	.long	0
	.quad	17179869195
	.quad	0
	.quad	133143986191
.globl Main_mainzuzdsa_info
.type Main_mainzuzdsa_info, @object
Main_mainzuzdsa_info:
.LcRcl:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcRcn
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_mainzuzdsa_ct
	je .LcRco
.LcRcp:
	incq Main_mainzuzdsa_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClear_closure,%ebx
	movq $sRaQ_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sRaQ_info
	jmp *(%rbx)
.LcRcn:
	movl $Main_mainzuzdsa_closure,%ebx
	jmp *-8(%r13)
.LcRco:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_mainzuzdsa_ct+56
	movq $Main_mainzuzdsa_ct,ticky_entry_ctrs
	movq $1,Main_mainzuzdsa_ct
	jmp .LcRcp
	.size Main_mainzuzdsa_info, .-Main_mainzuzdsa_info
.section .data
	.align 8
.align 1
Main_main3_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
.globl Main_main3_closure
.type Main_main3_closure, @object
Main_main3_closure:
	.quad	Main_main3_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cRcG_str:
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	102
	.byte	105
	.byte	101
	.byte	110
	.byte	100
	.byte	102
	.byte	97
	.byte	110
	.byte	49
	.byte	47
	.byte	119
	.byte	111
	.byte	114
	.byte	107
	.byte	115
	.byte	112
	.byte	97
	.byte	99
	.byte	101
	.byte	47
	.byte	72
	.byte	97
	.byte	115
	.byte	107
	.byte	101
	.byte	108
	.byte	108
	.byte	47
	.byte	72
	.byte	97
	.byte	115
	.byte	107
	.byte	101
	.byte	108
	.byte	108
	.byte	45
	.byte	79
	.byte	112
	.byte	101
	.byte	110
	.byte	71
	.byte	76
	.byte	47
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	114
	.byte	110
	.byte	47
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	51
	.byte	58
	.byte	57
	.byte	45
	.byte	51
	.byte	55
	.byte	124
	.byte	68
	.byte	97
	.byte	116
	.byte	97
	.byte	46
	.byte	77
	.byte	97
	.byte	121
	.byte	98
	.byte	101
	.byte	46
	.byte	74
	.byte	117
	.byte	115
	.byte	116
	.byte	32
	.byte	119
	.byte	105
	.byte	110
	.byte	0
.text
	.align 8
	.long	Main_main3_srt-(Main_main3_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl Main_main3_info
.type Main_main3_info, @object
Main_main3_info:
.LcRcK:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcRcM
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcRcO
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
	je .LcRcP
.LcRcQ:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cRcG_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcRcO:
	movq $16,192(%r13)
.LcRcM:
	jmp *-16(%r13)
.LcRcP:
	jmp *(%rbx)
	.size Main_main3_info, .-Main_main3_info
.data
	.align 8
.align 1
.globl Main_main2_closure
.type Main_main2_closure, @object
Main_main2_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	EngineziGraphicsziGraphics_resizzeScene1_closure+4
	.quad	0
.section .data
	.align 8
.align 1
Main_main1_srt:
	.quad	EngineziGraphicsziWindow_zdwa_closure
	.quad	EngineziGraphicsziWindow_openWindow1_closure
	.quad	EngineziGraphicsziWindow_defaultWindow_closure
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa26_closure
	.quad	TestVals_mkWorld1_closure
	.quad	EngineziGraphicsziGraphics_initGL1_closure
	.quad	EngineziGraphicsziGraphics_cleanupObjects1_closure
	.quad	Main_mainzuzdsa_closure
	.quad	Main_main2_closure
	.quad	Main_main3_closure
.data
	.align 8
.align 1
.globl Main_main1_closure
.type Main_main1_closure, @object
Main_main1_closure:
	.quad	Main_main1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cReh_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	50
	.byte	88
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cRej_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_main1_ct
.type Main_main1_ct, @object
Main_main1_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cReh_str
	.quad	cRej_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_main1_srt-(sRd5_info)+72
	.long	0
	.quad	0
	.quad	4294967328
sRd5_info:
.LcRew:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcRex
	movl $Main_main3_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcRex:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sRd5_info, .-sRd5_info
.text
	.align 8
	.long	Main_main1_srt-(sRd7_info)+72
	.long	0
	.quad	0
	.quad	4294967328
sRd7_info:
.LcReF:
	movq 31(%rbx),%rbx
	movq $sRd5_info,0(%rbp)
	testq $7,%rbx
	jne sRd5_info
	jmp *(%rbx)
	.size sRd7_info, .-sRd7_info
.text
	.align 8
	.long	Main_main1_srt-(sQOd_info)+72
	.long	0
	.quad	1
	.quad	4294967313
sQOd_info:
.LcReN:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcReP
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sRd7_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sRd7_info
	jmp *(%rbx)
.LcReP:
	jmp *-16(%r13)
	.size sQOd_info, .-sQOd_info
.text
	.align 8
	.quad	4
	.quad	32
sRdb_info:
.LcRf4:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcRfa
	addq $11,Main_main1_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_WorldState_con_info,-80(%r12)
	movq 7(%rbx),%rax
	movq %rax,-72(%r12)
	movq 15(%rbx),%rax
	movq %rax,-64(%r12)
	movq 23(%rbx),%rax
	movq %rax,-56(%r12)
	movq 31(%rbx),%rax
	movq %rax,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -79(%r12),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcRfa:
	movq $88,192(%r13)
.LcRf8:
	jmp *-16(%r13)
	.size sRdb_info, .-sRdb_info
.text
	.align 8
	.quad	1
	.quad	32
sRdc_info:
.LcRfm:
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 31(%rbx),%rbx
	movq $sRdb_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sRdb_info
	jmp *(%rbx)
	.size sRdc_info, .-sRdc_info
.text
	.align 8
	.quad	2
	.quad	19
sQOU_info:
.LcRfx:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcRfz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sRdc_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sRdc_info
	jmp *(%rbx)
.LcRfz:
	jmp *-16(%r13)
	.size sQOU_info, .-sQOU_info
.text
	.align 8
	.long	Main_main1_srt-(sRdi_info)+0
	.long	0
	.quad	451
	.quad	4294967328
sRdi_info:
.LcRfO:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	addq $32,%rbp
	jmp EngineziGraphicsziWindow_zdwa_info
	.size sRdi_info, .-sRdi_info
.text
	.align 8
	.long	Main_main1_srt-(sRcZ_info)+0
	.long	0
	.quad	451
	.quad	279172874272
sRcZ_info:
.LcRfR:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq $sRdi_info,0(%rbp)
	jmp EngineziGraphicsziGraphics_cleanupObjects1_info
	.size sRcZ_info, .-sRcZ_info
.text
	.align 8
	.long	Main_main1_srt-(sRdj_info)+0
	.long	0
	.quad	195
	.quad	279172874272
sRdj_info:
.LcRfU:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq $sRcZ_info,0(%rbp)
	jmp EngineziCoreziWorld_worldEntities_info
	.size sRdj_info, .-sRdj_info
.text
	.align 8
	.long	Main_main1_srt-(sRdd_info)+0
	.long	0
	.quad	67
	.quad	828928688160
sRdd_info:
.LcRfX:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcRg1
	addq $4,Main_main1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sQOU_info,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,24(%rbp)
	leaq -24(%r12),%r14
	movq 8(%rbp),%rsi
	movq $sRdj_info,0(%rbp)
	jmp Main_mainzuzdsa_info
.LcRg1:
	movq $32,192(%r13)
.LcRfZ:
	movq $255,64(%r13)
	jmp stg_gc_ut
	.size sRdd_info, .-sRdd_info
.text
	.align 8
	.long	Main_main1_srt-(sRde_info)+0
	.long	0
	.quad	67
	.quad	828928688160
sRde_info:
.LcRg7:
	movq 8(%rbp),%r14
	movq $sRdd_info,0(%rbp)
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	movq %r14,%rdi
	movl $208897,%esi
	movl $212995,%edx
	subq $8,%rsp
	movl $0,%eax
	call glfwSetInputMode
	addq $8,%rsp
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	jmp *0(%rbp)
	.size sRde_info, .-sRde_info
.text
	.align 8
	.long	Main_main1_srt-(sRdf_info)+0
	.long	0
	.quad	2
	.quad	1962800054304
sRdf_info:
.LcRgv:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movl $Main_main2_closure+2,%esi
	movq $sRde_info,-8(%rbp)
	addq $-8,%rbp
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa26_info
	.size sRdf_info, .-sRdf_info
.text
	.align 8
	.long	Main_main1_srt-(sRdg_info)+0
	.long	0
	.quad	2
	.quad	1962800054304
sRdg_info:
.LcRgz:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sRdf_info,0(%rbp)
	testq $7,%rbx
	jne sRdf_info
	jmp *(%rbx)
	.size sRdg_info, .-sRdg_info
.text
	.align 8
	.long	Main_main1_srt-(sRdh_info)+0
	.long	0
	.quad	2
	.quad	2031519531040
sRdh_info:
.LcRgH:
	incq KNOWN_CALL_ctr
	movq $sRdg_info,0(%rbp)
	jmp TestVals_mkWorld1_info
	.size sRdh_info, .-sRdh_info
.text
	.align 8
	.long	Main_main1_srt-(sRd8_info)+0
	.long	0
	.quad	0
	.quad	4367981740064
sRd8_info:
.LcRgK:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcRgO
	addq $3,Main_main1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sQOd_info,-16(%r12)
	movq %rbx,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%rax
	movq %rax,-8(%rbp)
	movq %rbx,0(%rbp)
	leaq -16(%r12),%r14
	movq $sRdh_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziGraphicsziGraphics_initGL1_info
.LcRgO:
	movq $24,192(%r13)
.LcRgM:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sRd8_info, .-sRd8_info
.text
	.align 8
	.long	Main_main1_srt-(Main_main1_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	4393751543823
.globl Main_main1_info
.type Main_main1_info, @object
Main_main1_info:
.LcRgS:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcRgU
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_main1_ct
	je .LcRgV
.LcRgW:
	incq Main_main1_ct+40
	incq KNOWN_CALL_ctr
	movl $EngineziGraphicsziWindow_defaultWindow_closure,%r14d
	movq $sRd8_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziGraphicsziWindow_openWindow1_info
.LcRgU:
	movl $Main_main1_closure,%ebx
	jmp *-8(%r13)
.LcRgV:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_main1_ct+56
	movq $Main_main1_ct,ticky_entry_ctrs
	movq $1,Main_main1_ct
	jmp .LcRgW
	.size Main_main1_info, .-Main_main1_info
.section .data
	.align 8
.align 1
Main_main_srt:
	.quad	Main_main1_closure
.data
	.align 8
.align 1
.globl Main_main_closure
.type Main_main_closure, @object
Main_main_closure:
	.quad	Main_main_info
	.quad	0
.section .rodata
	.align 8
.align 1
cRh6_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	51
	.byte	51
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cRh9_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_main_ct
.type Main_main_ct, @object
Main_main_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cRh6_str
	.quad	cRh9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_main_srt-(Main_main_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	4294967311
.globl Main_main_info
.type Main_main_info, @object
Main_main_info:
.LcRhe:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_main_ct
	je .LcRhh
.LcRhj:
	incq Main_main_ct+40
	incq KNOWN_CALL_ctr
	jmp Main_main1_info
.LcRhh:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_main_ct+56
	movq $Main_main_ct,ticky_entry_ctrs
	movq $1,Main_main_ct
	jmp .LcRhj
	.size Main_main_info, .-Main_main_info
.section .data
	.align 8
.align 1
Main_main4_srt:
	.quad	base_GHCziTopHandler_runMainIO1_closure
	.quad	Main_main1_closure
.data
	.align 8
.align 1
.globl Main_main4_closure
.type Main_main4_closure, @object
Main_main4_closure:
	.quad	Main_main4_info
	.quad	0
.section .rodata
	.align 8
.align 1
cRhs_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	81
	.byte	72
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cRhv_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl Main_main4_ct
.type Main_main4_ct, @object
Main_main4_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cRhs_str
	.quad	cRhv_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	Main_main4_srt-(Main_main4_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	12884901903
.globl Main_main4_info
.type Main_main4_info, @object
Main_main4_info:
.LcRhA:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,Main_main4_ct
	je .LcRhD
.LcRhF:
	incq Main_main4_ct+40
	incq KNOWN_CALL_ctr
	movl $Main_main1_closure+1,%r14d
	jmp base_GHCziTopHandler_runMainIO1_info
.LcRhD:
	movq ticky_entry_ctrs,%rax
	movq %rax,Main_main4_ct+56
	movq $Main_main4_ct,ticky_entry_ctrs
	movq $1,Main_main4_ct
	jmp .LcRhF
	.size Main_main4_info, .-Main_main4_info
.section .data
	.align 8
.align 1
ZCMain_main_srt:
	.quad	Main_main4_closure
.data
	.align 8
.align 1
.globl ZCMain_main_closure
.type ZCMain_main_closure, @object
ZCMain_main_closure:
	.quad	ZCMain_main_info
	.quad	0
.section .rodata
	.align 8
.align 1
cRhO_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	58
	.byte	77
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	48
	.byte	49
	.byte	67
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cRhR_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl ZCMain_main_ct
.type ZCMain_main_ct, @object
ZCMain_main_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cRhO_str
	.quad	cRhR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	ZCMain_main_srt-(ZCMain_main_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	4294967311
.globl ZCMain_main_info
.type ZCMain_main_info, @object
ZCMain_main_info:
.LcRhW:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,ZCMain_main_ct
	je .LcRhZ
.LcRi1:
	incq ZCMain_main_ct+40
	incq KNOWN_CALL_ctr
	jmp Main_main4_info
.LcRhZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,ZCMain_main_ct+56
	movq $ZCMain_main_ct,ticky_entry_ctrs
	movq $1,ZCMain_main_ct
	jmp .LcRi1
	.size ZCMain_main_info, .-ZCMain_main_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
