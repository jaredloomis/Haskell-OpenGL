.data
	.align 8
.align 1
.globl __stginit_EngineziGraphicsziTextures
.type __stginit_EngineziGraphicsziTextures, @object
__stginit_EngineziGraphicsziTextures:
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_fbufName_closure
.type EngineziGraphicsziTextures_fbufName_closure, @object
EngineziGraphicsziTextures_fbufName_closure:
	.quad	EngineziGraphicsziTextures_fbufName_info
.section .rodata
	.align 8
.align 1
ccoX_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	102
	.byte	98
	.byte	117
	.byte	102
	.byte	78
	.byte	97
	.byte	109
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	113
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccp0_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_fbufName_ct
.type EngineziGraphicsziTextures_fbufName_ct, @object
EngineziGraphicsziTextures_fbufName_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccoX_str
	.quad	ccp0_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scoN_info:
.Lccpa:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size scoN_info, .-scoN_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziGraphicsziTextures_fbufName_info
.type EngineziGraphicsziTextures_fbufName_info, @object
EngineziGraphicsziTextures_fbufName_info:
.Lccpe:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lccpg
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_fbufName_ct
	je .Lccph
.Lccpi:
	incq EngineziGraphicsziTextures_fbufName_ct+40
	movq %r14,%rbx
	movq $scoN_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scoN_info
	jmp *(%rbx)
.Lccpg:
	movl $EngineziGraphicsziTextures_fbufName_closure,%ebx
	jmp *-8(%r13)
.Lccph:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_fbufName_ct+56
	movq $EngineziGraphicsziTextures_fbufName_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_fbufName_ct
	jmp .Lccpi
	.size EngineziGraphicsziTextures_fbufName_info, .-EngineziGraphicsziTextures_fbufName_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_fbufTexture_closure
.type EngineziGraphicsziTextures_fbufTexture_closure, @object
EngineziGraphicsziTextures_fbufTexture_closure:
	.quad	EngineziGraphicsziTextures_fbufTexture_info
.section .rodata
	.align 8
.align 1
ccpz_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	102
	.byte	98
	.byte	117
	.byte	102
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	112
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccpC_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_fbufTexture_ct
.type EngineziGraphicsziTextures_fbufTexture_ct, @object
EngineziGraphicsziTextures_fbufTexture_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccpz_str
	.quad	ccpC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scpq_info:
.LccpM:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size scpq_info, .-scpq_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziGraphicsziTextures_fbufTexture_info
.type EngineziGraphicsziTextures_fbufTexture_info, @object
EngineziGraphicsziTextures_fbufTexture_info:
.LccpQ:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LccpS
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_fbufTexture_ct
	je .LccpT
.LccpU:
	incq EngineziGraphicsziTextures_fbufTexture_ct+40
	movq %r14,%rbx
	movq $scpq_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scpq_info
	jmp *(%rbx)
.LccpS:
	movl $EngineziGraphicsziTextures_fbufTexture_closure,%ebx
	jmp *-8(%r13)
.LccpT:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_fbufTexture_ct+56
	movq $EngineziGraphicsziTextures_fbufTexture_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_fbufTexture_ct
	jmp .LccpU
	.size EngineziGraphicsziTextures_fbufTexture_info, .-EngineziGraphicsziTextures_fbufTexture_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImage2_closure
.type EngineziGraphicsziTextures_zdfShowImage2_closure, @object
EngineziGraphicsziTextures_zdfShowImage2_closure:
	.quad	EngineziGraphicsziTextures_zdfShowImage2_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ccqa_str:
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziGraphicsziTextures_zdfShowImage2_info
.type EngineziGraphicsziTextures_zdfShowImage2_info, @object
EngineziGraphicsziTextures_zdfShowImage2_info:
.Lccqe:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lccqg
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lccqi
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
	je .Lccqj
.Lccqk:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ccqa_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lccqi:
	movq $16,192(%r13)
.Lccqg:
	jmp *-16(%r13)
.Lccqj:
	jmp *(%rbx)
	.size EngineziGraphicsziTextures_zdfShowImage2_info, .-EngineziGraphicsziTextures_zdfShowImage2_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdwzdcshowsPrec_srt:
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziCoordTrans_zdwzdcshowsPrec3_closure
	.quad	EngineziGraphicsziTextures_zdfShowImage2_closure
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziPixelData_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwzdcshowsPrec_closure
.type EngineziGraphicsziTextures_zdwzdcshowsPrec_closure, @object
EngineziGraphicsziTextures_zdwzdcshowsPrec_closure:
	.quad	EngineziGraphicsziTextures_zdwzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccr6_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	115
	.byte	80
	.byte	114
	.byte	101
	.byte	99
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	105
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccr8_str:
	.byte	105
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwzdcshowsPrec_ct
.type EngineziGraphicsziTextures_zdwzdcshowsPrec_ct, @object
EngineziGraphicsziTextures_zdwzdcshowsPrec_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ccr6_str
	.quad	ccr8_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(scqt_info)+16
	.long	0
	.quad	0
	.quad	4294967328
scqt_info:
.Lccrf:
	incq KNOWN_CALL_ctr
	movl $11,%r14d
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	addq $8,%rbp
	jmp OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziPixelData_zdwzdcshowsPrec_info
	.size scqt_info, .-scqt_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(sceT_info)+16
	.long	0
	.quad	1
	.quad	4294967313
sceT_info:
.Lccrk:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lccrm
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $scqt_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne scqt_info
	jmp *(%rbx)
.Lccrm:
	jmp *-16(%r13)
	.size sceT_info, .-sceT_info
.section .rodata
	.align 8
.align 1
ccrr_str:
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	99
	.byte	102
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ccru_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
scfd_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccrr_str
	.quad	ccru_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(scqu_info)+0
	.long	0
	.quad	67
	.quad	4294967328
scqu_info:
.LccrO:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LccrU
	addq $7,scfd_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $stg_ap_2_upd_info,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_showSpace1_closure,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $11,%r14d
	movq 8(%rbp),%rsi
	movq 7(%rbx),%rdi
	leaq -14(%r12),%r8
	addq $32,%rbp
	jmp OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziCoordTrans_zdwzdcshowsPrec3_info
.LccrU:
	movq $56,192(%r13)
.LccrS:
	jmp *-16(%r13)
	.size scqu_info, .-scqu_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(scqv_info)+0
	.long	0
	.quad	3
	.quad	4294967328
scqv_info:
.Lccs0:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $scqu_info,0(%rbp)
	testq $7,%rbx
	jne scqu_info
	jmp *(%rbx)
	.size scqv_info, .-scqv_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(scqw_info)+0
	.long	0
	.quad	2
	.quad	4294967328
scqw_info:
.Lccs9:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $scqv_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scqv_info
	jmp *(%rbx)
	.size scqw_info, .-scqw_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(scqr_info)+0
	.long	0
	.quad	3
	.quad	4294967312
scqr_info:
.Lccsi:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lccsk
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $scqw_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne scqw_info
	jmp *(%rbx)
.Lccsk:
	jmp *-16(%r13)
	.size scqr_info, .-scqr_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(scfd_info)+0
	.long	0
	.quad	4294967301
	.quad	2
	.quad	12884901900
scfd_info:
.Lccsr:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lccsv
	addq $5,scfd_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,scfd_ct
	je .Lccsw
.Lccsx:
	incq scfd_ct+40
	movq $scqr_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-16(%r12)
	movq 15(%rbx),%rax
	movq %rax,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziGraphicsziTextures_zdfShowImage2_closure,%r14d
	leaq -32(%r12),%rsi
	jmp base_GHCziBase_zpzp_info
.Lccsv:
	movq $40,192(%r13)
.Lccst:
	jmp *-8(%r13)
.Lccsw:
	movq ticky_entry_ctrs,%rax
	movq %rax,scfd_ct+56
	movq $scfd_ct,ticky_entry_ctrs
	movq $1,scfd_ct
	jmp .Lccsx
	.size scfd_info, .-scfd_info
.section .rodata
	.align 8
.align 1
ccsH_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	99
	.byte	113
	.byte	115
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ccsK_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
scqs_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccsH_str
	.quad	ccsK_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
scfl_info:
.LccsV:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccsX
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LccsZ
	addq $3,scqs_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_shows10_closure,-8(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	leaq -14(%r12),%r14
	addq $-16,%rbp
	jmp scfd_info
.LccsZ:
	movq $24,192(%r13)
.LccsX:
	jmp *-16(%r13)
	.size scfl_info, .-scfl_info
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
scqs_info:
.Lcct4:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lcct8
	addq $7,scqs_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,scqs_ct
	je .Lcct9
.Lccta:
	incq scqs_ct+40
	movq $scfl_info,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_shows11_closure,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.Lcct8:
	movq $56,192(%r13)
.Lcct6:
	jmp *-8(%r13)
.Lcct9:
	movq ticky_entry_ctrs,%rax
	movq %rax,scqs_ct+56
	movq $scqs_ct,ticky_entry_ctrs
	movq $1,scqs_ct
	jmp .Lccta
	.size scqs_info, .-scqs_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshowsPrec_srt-(EngineziGraphicsziTextures_zdwzdcshowsPrec_info)+0
	.long	0
	.quad	12884901904
	.quad	0
	.quad	30064771087
.globl EngineziGraphicsziTextures_zdwzdcshowsPrec_info
.type EngineziGraphicsziTextures_zdwzdcshowsPrec_info, @object
EngineziGraphicsziTextures_zdwzdcshowsPrec_info:
.Lcctg:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .Lcctk
	addq $8,EngineziGraphicsziTextures_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdwzdcshowsPrec_ct
	je .Lcctl
.Lcctm:
	incq EngineziGraphicsziTextures_zdwzdcshowsPrec_ct+40
	movq $sceT_info,-56(%r12)
	movq %rdi,-40(%r12)
	movq $scfd_info,-32(%r12)
	leaq -56(%r12),%rax
	movq %rax,-24(%r12)
	movq %rsi,-16(%r12)
	cmpq $11,%r14
	jge .Lccto
	leaq -31(%r12),%rbx
	addq $-16,%r12
	addq $-2,EngineziGraphicsziTextures_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp *0(%rbp)
.Lcctk:
	movq $64,192(%r13)
.Lccti:
	movl $EngineziGraphicsziTextures_zdwzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.Lcctl:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdwzdcshowsPrec_ct+56
	movq $EngineziGraphicsziTextures_zdwzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdwzdcshowsPrec_ct
	jmp .Lcctm
.Lccto:
	movq $scqs_info,-8(%r12)
	leaq -31(%r12),%rax
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	jmp *0(%rbp)
	.size EngineziGraphicsziTextures_zdwzdcshowsPrec_info, .-EngineziGraphicsziTextures_zdwzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_srt:
	.quad	EngineziGraphicsziTextures_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_closure
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_closure, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_closure:
	.quad	EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
cctH_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	95
	.byte	36
	.byte	99
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	115
	.byte	80
	.byte	114
	.byte	101
	.byte	99
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cctK_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cctH_str
	.quad	cctK_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_srt-(sctt_info)+0
	.long	0
	.quad	65
	.quad	4294967328
sctt_info:
.LcctY:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	addq $16,%rbp
	jmp EngineziGraphicsziTextures_zdwzdcshowsPrec_info
	.size sctt_info, .-sctt_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_srt-(sctu_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sctu_info:
.Lccu1:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sctt_info,0(%rbp)
	testq $7,%rbx
	jne sctt_info
	jmp *(%rbx)
	.size sctu_info, .-sctu_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_srt-(EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_info
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_info, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_info:
.Lccua:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lccuc
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct
	je .Lccud
.Lccue:
	incq EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sctu_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sctu_info
	jmp *(%rbx)
.Lccuc:
	movl $EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.Lccud:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct+56
	movq $EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_ct
	jmp .Lccue
	.size EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_info, .-EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdfShowImage1_srt:
	.quad	EngineziGraphicsziTextures_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImage1_closure
.type EngineziGraphicsziTextures_zdfShowImage1_closure, @object
EngineziGraphicsziTextures_zdfShowImage1_closure:
	.quad	EngineziGraphicsziTextures_zdfShowImage1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccuv_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccuy_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImage1_ct
.type EngineziGraphicsziTextures_zdfShowImage1_ct, @object
EngineziGraphicsziTextures_zdfShowImage1_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccuv_str
	.quad	ccuy_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImage1_srt-(scul_info)+0
	.long	0
	.quad	0
	.quad	4294967328
scul_info:
.LccuI:
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	addq $8,%rbp
	jmp EngineziGraphicsziTextures_zdwzdcshowsPrec_info
	.size scul_info, .-scul_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImage1_srt-(EngineziGraphicsziTextures_zdfShowImage1_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_zdfShowImage1_info
.type EngineziGraphicsziTextures_zdfShowImage1_info, @object
EngineziGraphicsziTextures_zdfShowImage1_info:
.LccuL:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LccuN
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdfShowImage1_ct
	je .LccuO
.LccuP:
	incq EngineziGraphicsziTextures_zdfShowImage1_ct+40
	movq %r14,%rbx
	movq $scul_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scul_info
	jmp *(%rbx)
.LccuN:
	movl $EngineziGraphicsziTextures_zdfShowImage1_closure,%ebx
	jmp *-8(%r13)
.LccuO:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdfShowImage1_ct+56
	movq $EngineziGraphicsziTextures_zdfShowImage1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdfShowImage1_ct
	jmp .LccuP
	.size EngineziGraphicsziTextures_zdfShowImage1_info, .-EngineziGraphicsziTextures_zdfShowImage1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_srt:
	.quad	EngineziGraphicsziTextures_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_closure
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_closure, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_closure:
	.quad	EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccv2_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	95
	.byte	36
	.byte	99
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	76
	.byte	105
	.byte	115
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	106
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccv5_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ccv2_str
	.quad	ccv5_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_srt-(EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_info
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_info, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_info:
.Lccva:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct
	je .Lccvd
.Lccvf:
	incq EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movl $EngineziGraphicsziTextures_zdfShowImage1_closure+1,%r14d
	jmp base_GHCziShow_showListzuzu_info
.Lccvd:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct+56
	movq $EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_ct
	jmp .Lccvf
	.size EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_info, .-EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdwzdcshow_srt:
	.quad	EngineziGraphicsziTextures_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwzdcshow_closure
.type EngineziGraphicsziTextures_zdwzdcshow_closure, @object
EngineziGraphicsziTextures_zdwzdcshow_closure:
	.quad	EngineziGraphicsziTextures_zdwzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccvo_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	99
	.byte	100
	.byte	74
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccvr_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwzdcshow_ct
.type EngineziGraphicsziTextures_zdwzdcshow_ct, @object
EngineziGraphicsziTextures_zdwzdcshow_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ccvo_str
	.quad	ccvr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwzdcshow_srt-(EngineziGraphicsziTextures_zdwzdcshow_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_zdwzdcshow_info
.type EngineziGraphicsziTextures_zdwzdcshow_info, @object
EngineziGraphicsziTextures_zdwzdcshow_info:
.Lccvw:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lccvz
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdwzdcshow_ct
	je .LccvB
.LccvD:
	incq EngineziGraphicsziTextures_zdwzdcshow_ct+40
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-8(%rbp)
	movq $stg_ap_p_info,-16(%rbp)
	movq %rsi,%rdi
	movq %r14,%rsi
	xorl %r14d,%r14d
	addq $-16,%rbp
	jmp EngineziGraphicsziTextures_zdwzdcshowsPrec_info
.Lccvz:
	movl $EngineziGraphicsziTextures_zdwzdcshow_closure,%ebx
	jmp *-8(%r13)
.LccvB:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdwzdcshow_ct+56
	movq $EngineziGraphicsziTextures_zdwzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdwzdcshow_ct
	jmp .LccvD
	.size EngineziGraphicsziTextures_zdwzdcshow_info, .-EngineziGraphicsziTextures_zdwzdcshow_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdfShowImagezuzdcshow_srt:
	.quad	EngineziGraphicsziTextures_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshow_closure
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshow_closure, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshow_closure:
	.quad	EngineziGraphicsziTextures_zdfShowImagezuzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccvR_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	95
	.byte	36
	.byte	99
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccvU_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccvR_str
	.quad	ccvU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImagezuzdcshow_srt-(scvH_info)+0
	.long	0
	.quad	0
	.quad	4294967328
scvH_info:
.Lccw4:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	addq $8,%rbp
	jmp EngineziGraphicsziTextures_zdwzdcshow_info
	.size scvH_info, .-scvH_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdfShowImagezuzdcshow_srt-(EngineziGraphicsziTextures_zdfShowImagezuzdcshow_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_zdfShowImagezuzdcshow_info
.type EngineziGraphicsziTextures_zdfShowImagezuzdcshow_info, @object
EngineziGraphicsziTextures_zdfShowImagezuzdcshow_info:
.Lccw7:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lccw9
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct
	je .Lccwa
.Lccwb:
	incq EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct+40
	movq %r14,%rbx
	movq $scvH_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scvH_info
	jmp *(%rbx)
.Lccw9:
	movl $EngineziGraphicsziTextures_zdfShowImagezuzdcshow_closure,%ebx
	jmp *-8(%r13)
.Lccwa:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct+56
	movq $EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdfShowImagezuzdcshow_ct
	jmp .Lccwb
	.size EngineziGraphicsziTextures_zdfShowImagezuzdcshow_info, .-EngineziGraphicsziTextures_zdfShowImagezuzdcshow_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdfShowImage_closure
.type EngineziGraphicsziTextures_zdfShowImage_closure, @object
EngineziGraphicsziTextures_zdfShowImage_closure:
	.quad	base_GHCziShow_DZCShow_static_info
	.quad	EngineziGraphicsziTextures_zdfShowImagezuzdcshowsPrec_closure+2
	.quad	EngineziGraphicsziTextures_zdfShowImagezuzdcshow_closure+1
	.quad	EngineziGraphicsziTextures_zdfShowImagezuzdcshowList_closure+2
	.quad	0
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdwa1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglViewport_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClear_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindFramebuffer_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwa1_closure
.type EngineziGraphicsziTextures_zdwa1_closure, @object
EngineziGraphicsziTextures_zdwa1_closure:
	.quad	EngineziGraphicsziTextures_zdwa1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccwU_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
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
	.byte	57
	.byte	51
	.byte	79
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccwX_str:
	.byte	105
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwa1_ct
.type EngineziGraphicsziTextures_zdwa1_ct, @object
EngineziGraphicsziTextures_zdwa1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ccwU_str
	.quad	ccwX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scwl_info:
.Lccxp:
	movl $36160,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size scwl_info, .-scwl_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa1_srt-(scwn_info)+24
	.long	0
	.quad	194
	.quad	4294967328
scwn_info:
.Lccxt:
	movq 8(%rbp),%rdx
	movl $4,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindFramebuffer_closure,%ebx
	movq $scwl_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne scwl_info
	jmp *(%rbx)
	.size scwn_info, .-scwn_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa1_srt-(scwp_info)+8
	.long	0
	.quad	194
	.quad	21474836512
scwp_info:
.LccxB:
	movl $16640,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure,%ebx
	movq $scwn_info,0(%rbp)
	testq $7,%rbx
	jne scwn_info
	jmp *(%rbx)
	.size scwp_info, .-scwp_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa1_srt-(scwr_info)+8
	.long	0
	.quad	194
	.quad	30064771104
scwr_info:
.LccxI:
	xorl %edi,%edi
	xorl %esi,%esi
	movl $800,%edx
	movl $600,%ecx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClear_closure,%ebx
	movq $scwp_info,0(%rbp)
	testq $7,%rbx
	jne scwp_info
	jmp *(%rbx)
	.size scwr_info, .-scwr_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa1_srt-(scwt_info)+0
	.long	0
	.quad	194
	.quad	64424509472
scwt_info:
.LccxP:
	movq 16(%rbp),%rsi
	movl $36160,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglViewport_closure,%ebx
	movq $scwr_info,0(%rbp)
	testq $7,%rbx
	jne scwr_info
	jmp *(%rbx)
	.size scwt_info, .-scwt_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa1_srt-(EngineziGraphicsziTextures_zdwa1_info)+0
	.long	0
	.quad	12884901897
	.quad	0
	.quad	64424509455
.globl EngineziGraphicsziTextures_zdwa1_info
.type EngineziGraphicsziTextures_zdwa1_info, @object
EngineziGraphicsziTextures_zdwa1_info:
.LccxX:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccxZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdwa1_ct
	je .Lccy0
.Lccy1:
	incq EngineziGraphicsziTextures_zdwa1_ct+40
	movq %r14,-16(%rbp)
	movq %rsi,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindFramebuffer_closure,%ebx
	movq $scwt_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne scwt_info
	jmp *(%rbx)
.LccxZ:
	movl $EngineziGraphicsziTextures_zdwa1_closure,%ebx
	jmp *-8(%r13)
.Lccy0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdwa1_ct+56
	movq $EngineziGraphicsziTextures_zdwa1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdwa1_ct
	jmp .Lccy1
	.size EngineziGraphicsziTextures_zdwa1_info, .-EngineziGraphicsziTextures_zdwa1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_renderToFrameBuffer1_srt:
	.quad	EngineziGraphicsziTextures_zdwa1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderToFrameBuffer1_closure
.type EngineziGraphicsziTextures_renderToFrameBuffer1_closure, @object
EngineziGraphicsziTextures_renderToFrameBuffer1_closure:
	.quad	EngineziGraphicsziTextures_renderToFrameBuffer1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccym_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	84
	.byte	111
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	51
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccyp_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderToFrameBuffer1_ct
.type EngineziGraphicsziTextures_renderToFrameBuffer1_ct, @object
EngineziGraphicsziTextures_renderToFrameBuffer1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ccym_str
	.quad	ccyp_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderToFrameBuffer1_srt-(scy8_info)+0
	.long	0
	.quad	65
	.quad	4294967328
scy8_info:
.LccyD:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	addq $16,%rbp
	jmp EngineziGraphicsziTextures_zdwa1_info
	.size scy8_info, .-scy8_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderToFrameBuffer1_srt-(scy9_info)+0
	.long	0
	.quad	1
	.quad	4294967328
scy9_info:
.LccyG:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $scy8_info,0(%rbp)
	testq $7,%rbx
	jne scy8_info
	jmp *(%rbx)
	.size scy9_info, .-scy9_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderToFrameBuffer1_srt-(EngineziGraphicsziTextures_renderToFrameBuffer1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_renderToFrameBuffer1_info
.type EngineziGraphicsziTextures_renderToFrameBuffer1_info, @object
EngineziGraphicsziTextures_renderToFrameBuffer1_info:
.LccyP:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccyR
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_renderToFrameBuffer1_ct
	je .LccyS
.LccyT:
	incq EngineziGraphicsziTextures_renderToFrameBuffer1_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $scy9_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne scy9_info
	jmp *(%rbx)
.LccyR:
	movl $EngineziGraphicsziTextures_renderToFrameBuffer1_closure,%ebx
	jmp *-8(%r13)
.LccyS:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_renderToFrameBuffer1_ct+56
	movq $EngineziGraphicsziTextures_renderToFrameBuffer1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_renderToFrameBuffer1_ct
	jmp .LccyT
	.size EngineziGraphicsziTextures_renderToFrameBuffer1_info, .-EngineziGraphicsziTextures_renderToFrameBuffer1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_renderToFrameBuffer_srt:
	.quad	EngineziGraphicsziTextures_zdwa1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderToFrameBuffer_closure
.type EngineziGraphicsziTextures_renderToFrameBuffer_closure, @object
EngineziGraphicsziTextures_renderToFrameBuffer_closure:
	.quad	EngineziGraphicsziTextures_renderToFrameBuffer_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccz6_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	84
	.byte	111
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
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
	.byte	57
	.byte	52
	.byte	116
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccz9_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderToFrameBuffer_ct
.type EngineziGraphicsziTextures_renderToFrameBuffer_ct, @object
EngineziGraphicsziTextures_renderToFrameBuffer_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ccz6_str
	.quad	ccz9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderToFrameBuffer_srt-(EngineziGraphicsziTextures_renderToFrameBuffer_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_renderToFrameBuffer_info
.type EngineziGraphicsziTextures_renderToFrameBuffer_info, @object
EngineziGraphicsziTextures_renderToFrameBuffer_info:
.Lccze:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_renderToFrameBuffer_ct
	je .Lcczh
.Lcczj:
	incq EngineziGraphicsziTextures_renderToFrameBuffer_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziTextures_renderToFrameBuffer1_info
.Lcczh:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_renderToFrameBuffer_ct+56
	movq $EngineziGraphicsziTextures_renderToFrameBuffer_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_renderToFrameBuffer_ct
	jmp .Lcczj
	.size EngineziGraphicsziTextures_renderToFrameBuffer_info, .-EngineziGraphicsziTextures_renderToFrameBuffer_info
.data
	.align 8
.align 1
rcdK_closure:
	.quad	rcdK_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cczv_str:
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
	.byte	98
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	32
	.byte	101
	.byte	114
	.byte	114
	.byte	111
	.byte	114
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rcdK_info:
.Lcczz:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcczB
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcczD
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
	je .LcczE
.LcczF:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cczv_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcczD:
	movq $16,192(%r13)
.LcczB:
	jmp *-16(%r13)
.LcczE:
	jmp *(%rbx)
	.size rcdK_info, .-rcdK_info
.data
	.align 8
.align 1
rcdL_closure:
	.quad	rcdL_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cczU_str:
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
	.byte	98
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	32
	.byte	115
	.byte	117
	.byte	99
	.byte	99
	.byte	101
	.byte	115
	.byte	115
	.byte	102
	.byte	117
	.byte	108
	.byte	108
	.byte	121
	.byte	32
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	100
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rcdL_info:
.LcczY:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccA0
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccA2
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
	je .LccA3
.LccA4:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cczU_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LccA2:
	movq $16,192(%r13)
.LccA0:
	jmp *-16(%r13)
.LccA3:
	jmp *(%rbx)
	.size rcdL_info, .-rcdL_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_makeFrameBuffer1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexImage2D_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglRenderbufferStorage_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenTextures_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenRenderbuffers_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenFramebuffers_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglFramebufferRenderbuffer_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawBuffers_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCheckFramebufferStatus_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindRenderbuffer_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindFramebuffer_closure
	.quad	base_GHCziIOziHandleziFD_stdout_closure
	.quad	base_GHCziIOziHandleziText_hPutStr2_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziGeometryShader4_ptrzuglFramebufferTexture_closure
	.quad	rcdK_closure
	.quad	rcdL_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_makeFrameBuffer1_closure
.type EngineziGraphicsziTextures_makeFrameBuffer1_closure, @object
EngineziGraphicsziTextures_makeFrameBuffer1_closure:
	.quad	EngineziGraphicsziTextures_makeFrameBuffer1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccEz_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	109
	.byte	97
	.byte	107
	.byte	101
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	51
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccEB_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_makeFrameBuffer1_ct
.type EngineziGraphicsziTextures_makeFrameBuffer1_ct, @object
EngineziGraphicsziTextures_makeFrameBuffer1_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccEz_str
	.quad	ccEB_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAc_info)+120
	.long	0
	.quad	4294967296
	.quad	12884901906
scAc_info:
.LccEF:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccEH
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	cmpl $36053,%eax
	je .LccEK
	movl $rcdK_closure,%ebx
	addq $-16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LccEH:
	jmp *-16(%r13)
.LccEK:
	movl $rcdL_closure,%ebx
	addq $-16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size scAc_info, .-scAc_info
.text
	.align 8
	.quad	194
	.quad	32
scAZ_info:
.LccEW:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LccF2
	addq $7,EngineziGraphicsziTextures_makeFrameBuffer1_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movl $36160,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movq $base_GHCziWord_W32zh_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq $base_GHCziWord_W32zh_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq $EngineziGraphicsziTextures_FB_con_info,-16(%r12)
	leaq -31(%r12),%rax
	movq %rax,-8(%r12)
	leaq -47(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -15(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LccF2:
	movq $56,192(%r13)
.LccF0:
	jmp *-16(%r13)
	.size scAZ_info, .-scAZ_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scB0_info)+88
	.long	0
	.quad	194
	.quad	4294967328
scB0_info:
.LccFa:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindFramebuffer_closure,%ebx
	movq $scAZ_info,0(%rbp)
	testq $7,%rbx
	jne scAZ_info
	jmp *(%rbx)
	.size scB0_info, .-scB0_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAi_info)+88
	.long	0
	.quad	194
	.quad	236223201312
scAi_info:
.LccFg:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LccFk
	addq $3,EngineziGraphicsziTextures_makeFrameBuffer1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movl $36160,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movq $scAc_info,-16(%r12)
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_GHCziIOziHandleziFD_stdout_closure,%r14d
	leaq -16(%r12),%rsi
	movl $ghczmprim_GHCziTypes_True_closure+2,%edi
	movq $scB0_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hPutStr2_info
.LccFk:
	movq $24,192(%r13)
.LccFi:
	jmp *-16(%r13)
	.size scAi_info, .-scAi_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAk_info)+64
	.long	0
	.quad	194
	.quad	1894080577568
scAk_info:
.LccFo:
	movl $1,%edi
	movl $36064,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCheckFramebufferStatus_closure,%ebx
	movq $scAi_info,0(%rbp)
	testq $7,%rbx
	jne scAi_info
	jmp *(%rbx)
	.size scAk_info, .-scAk_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAm_info)+56
	.long	0
	.quad	194
	.quad	3792456122400
scAm_info:
.LccFv:
	movq 8(%rbp),%rdx
	movl $36160,%edi
	movl $36064,%esi
	xorl %ecx,%ecx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawBuffers_closure,%ebx
	movq $scAk_info,0(%rbp)
	testq $7,%rbx
	jne scAk_info
	jmp *(%rbx)
	.size scAm_info, .-scAm_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAo_info)+56
	.long	0
	.quad	451
	.quad	4342211936288
scAo_info:
.LccFD:
	movq 8(%rbp),%rcx
	movl $36160,%edi
	movl $36096,%esi
	movl $36161,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziGeometryShader4_ptrzuglFramebufferTexture_closure,%ebx
	movq $scAm_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne scAm_info
	jmp *(%rbx)
	.size scAo_info, .-scAo_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAq_info)+48
	.long	0
	.quad	451
	.quad	8688718839840
scAq_info:
.LccFL:
	movl $36161,%edi
	movl $6402,%esi
	movl $800,%edx
	movl $600,%ecx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglFramebufferRenderbuffer_closure,%ebx
	movq $scAo_info,0(%rbp)
	testq $7,%rbx
	jne scAo_info
	jmp *(%rbx)
	.size scAq_info, .-scAq_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAs_info)+16
	.long	0
	.quad	451
	.quad	139023796404256
scAs_info:
.LccFS:
	movq 8(%rbp),%rsi
	movl $36161,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglRenderbufferStorage_closure,%ebx
	movq $scAq_info,0(%rbp)
	testq $7,%rbx
	jne scAq_info
	jmp *(%rbx)
	.size scAs_info, .-scAs_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAv_info)+16
	.long	0
	.quad	387
	.quad	140123308032032
scAv_info:
.LccG0:
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
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindRenderbuffer_closure,%ebx
	movq $scAs_info,0(%rbp)
	testq $7,%rbx
	jne scAs_info
	jmp *(%rbx)
	.size scAv_info, .-scAv_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAx_info)+16
	.long	0
	.quad	194
	.quad	140140487901216
scAx_info:
.LccG9:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenRenderbuffers_closure,%ebx
	movq $scAv_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scAv_info
	jmp *(%rbx)
	.size scAx_info, .-scAx_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAz_info)+16
	.long	0
	.quad	194
	.quad	140140487901216
scAz_info:
.LccGf:
	movl $3553,%edi
	movl $10243,%esi
	movl $33071,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $4,%ebx
	movl $4,%r14d
	movq $scAx_info,0(%rbp)
	jmp stg_newAlignedPinnedByteArrayzh
	.size scAz_info, .-scAz_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAB_info)+0
	.long	0
	.quad	194
	.quad	560566246572064
scAB_info:
.LccGj:
	movl $3553,%edi
	movl $10242,%esi
	movl $33071,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $scAz_info,0(%rbp)
	testq $7,%rbx
	jne scAz_info
	jmp *(%rbx)
	.size scAB_info, .-scAB_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAD_info)+0
	.long	0
	.quad	194
	.quad	560566246572064
scAD_info:
.LccGq:
	movl $3553,%edi
	movl $10241,%esi
	movl $9728,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $scAB_info,0(%rbp)
	testq $7,%rbx
	jne scAB_info
	jmp *(%rbx)
	.size scAD_info, .-scAD_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAF_info)+0
	.long	0
	.quad	194
	.quad	560566246572064
scAF_info:
.LccGx:
	movl $3553,%edi
	movl $10240,%esi
	movl $9728,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $scAD_info,0(%rbp)
	testq $7,%rbx
	jne scAD_info
	jmp *(%rbx)
	.size scAF_info, .-scAF_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAH_info)+0
	.long	0
	.quad	194
	.quad	560566246572064
scAH_info:
.LccGE:
	movl $3553,%edi
	xorl %esi,%esi
	movl $6407,%edx
	movl $1024,%ecx
	movl $768,%r8d
	xorl %r9d,%r9d
	pushq $0
	pushq $5121
	pushq $6407
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $24,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $scAF_info,0(%rbp)
	testq $7,%rbx
	jne scAF_info
	jmp *(%rbx)
	.size scAH_info, .-scAH_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAJ_info)+0
	.long	0
	.quad	194
	.quad	560574836506656
scAJ_info:
.LccGL:
	movq 8(%rbp),%rsi
	movl $3553,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexImage2D_closure,%ebx
	movq $scAH_info,0(%rbp)
	testq $7,%rbx
	jne scAH_info
	jmp *(%rbx)
	.size scAJ_info, .-scAJ_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAM_info)+0
	.long	0
	.quad	194
	.quad	562773859762208
scAM_info:
.LccGT:
	movq 8(%rbp),%rsi
	movl $1,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movq 8(%rbp),%rax
	movl (%rax),%eax
	movq %rax,8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $scAJ_info,0(%rbp)
	testq $7,%rbx
	jne scAJ_info
	jmp *(%rbx)
	.size scAM_info, .-scAM_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAO_info)+0
	.long	0
	.quad	130
	.quad	562808219500576
scAO_info:
.LccH3:
	movq 8(%rbp),%rax
	leaq 16(%rax),%r14
	movl $1,%edi
	movq %r14,%rsi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movq %r14,8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenTextures_closure,%ebx
	movq $scAM_info,0(%rbp)
	testq $7,%rbx
	jne scAM_info
	jmp *(%rbx)
	.size scAO_info, .-scAO_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAQ_info)+0
	.long	0
	.quad	65
	.quad	562808219500576
scAQ_info:
.LccHb:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenTextures_closure,%ebx
	movq $scAO_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scAO_info
	jmp *(%rbx)
	.size scAQ_info, .-scAQ_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAS_info)+0
	.long	0
	.quad	65
	.quad	562808219500576
scAS_info:
.LccHh:
	movq 8(%rbp),%rsi
	movl $36160,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $4,%ebx
	movl $4,%r14d
	movq $scAQ_info,0(%rbp)
	jmp stg_newAlignedPinnedByteArrayzh
	.size scAS_info, .-scAS_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAV_info)+0
	.long	0
	.quad	1
	.quad	562808219500576
scAV_info:
.LccHm:
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
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindFramebuffer_closure,%ebx
	movq $scAS_info,0(%rbp)
	testq $7,%rbx
	jne scAS_info
	jmp *(%rbx)
	.size scAV_info, .-scAV_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(scAX_info)+0
	.long	0
	.quad	0
	.quad	562945658454048
scAX_info:
.LccHv:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenFramebuffers_closure,%ebx
	movq $scAV_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scAV_info
	jmp *(%rbx)
	.size scAX_info, .-scAX_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer1_srt-(EngineziGraphicsziTextures_makeFrameBuffer1_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	562945658454031
.globl EngineziGraphicsziTextures_makeFrameBuffer1_info
.type EngineziGraphicsziTextures_makeFrameBuffer1_info, @object
EngineziGraphicsziTextures_makeFrameBuffer1_info:
.LccHB:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LccHD
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_makeFrameBuffer1_ct
	je .LccHE
.LccHF:
	incq EngineziGraphicsziTextures_makeFrameBuffer1_ct+40
	movl $4,%ebx
	movl $4,%r14d
	movq $scAX_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
.LccHD:
	movl $EngineziGraphicsziTextures_makeFrameBuffer1_closure,%ebx
	jmp *-8(%r13)
.LccHE:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_makeFrameBuffer1_ct+56
	movq $EngineziGraphicsziTextures_makeFrameBuffer1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_makeFrameBuffer1_ct
	jmp .LccHF
	.size EngineziGraphicsziTextures_makeFrameBuffer1_info, .-EngineziGraphicsziTextures_makeFrameBuffer1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_makeFrameBuffer_srt:
	.quad	EngineziGraphicsziTextures_makeFrameBuffer1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_makeFrameBuffer_closure
.type EngineziGraphicsziTextures_makeFrameBuffer_closure, @object
EngineziGraphicsziTextures_makeFrameBuffer_closure:
	.quad	EngineziGraphicsziTextures_makeFrameBuffer_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccHP_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	109
	.byte	97
	.byte	107
	.byte	101
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
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
	.byte	57
	.byte	52
	.byte	118
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccHS_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_makeFrameBuffer_ct
.type EngineziGraphicsziTextures_makeFrameBuffer_ct, @object
EngineziGraphicsziTextures_makeFrameBuffer_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ccHP_str
	.quad	ccHS_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_makeFrameBuffer_srt-(EngineziGraphicsziTextures_makeFrameBuffer_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_makeFrameBuffer_info
.type EngineziGraphicsziTextures_makeFrameBuffer_info, @object
EngineziGraphicsziTextures_makeFrameBuffer_info:
.LccHX:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_makeFrameBuffer_ct
	je .LccI0
.LccI2:
	incq EngineziGraphicsziTextures_makeFrameBuffer_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziTextures_makeFrameBuffer1_info
.LccI0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_makeFrameBuffer_ct+56
	movq $EngineziGraphicsziTextures_makeFrameBuffer_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_makeFrameBuffer_ct
	jmp .LccI2
	.size EngineziGraphicsziTextures_makeFrameBuffer_info, .-EngineziGraphicsziTextures_makeFrameBuffer_info
.data
	.align 8
.align 1
rcdM_closure:
	.quad	rcdM_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ccIe_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	46
	.byte	106
	.byte	117
	.byte	105
	.byte	99
	.byte	121
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	58
	.byte	32
	.byte	98
	.byte	97
	.byte	100
	.byte	32
	.byte	105
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	32
	.byte	99
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	115
	.byte	112
	.byte	97
	.byte	99
	.byte	101
	.byte	32
	.byte	111
	.byte	114
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	116
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rcdM_info:
.LccIi:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccIk
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccIm
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
	je .LccIn
.LccIo:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ccIe_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LccIm:
	movq $16,192(%r13)
.LccIk:
	jmp *-16(%r13)
.LccIn:
	jmp *(%rbx)
	.size rcdM_info, .-rcdM_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_juicyLoadImage2_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rcdM_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_juicyLoadImage2_closure
.type EngineziGraphicsziTextures_juicyLoadImage2_closure, @object
EngineziGraphicsziTextures_juicyLoadImage2_closure:
	.quad	EngineziGraphicsziTextures_juicyLoadImage2_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_juicyLoadImage2_srt-(EngineziGraphicsziTextures_juicyLoadImage2_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziGraphicsziTextures_juicyLoadImage2_info
.type EngineziGraphicsziTextures_juicyLoadImage2_info, @object
EngineziGraphicsziTextures_juicyLoadImage2_info:
.LccIF:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccIH
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccIJ
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
	je .LccIK
.LccIL:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdM_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LccIJ:
	movq $16,192(%r13)
.LccIH:
	jmp *-16(%r13)
.LccIK:
	jmp *(%rbx)
	.size EngineziGraphicsziTextures_juicyLoadImage2_info, .-EngineziGraphicsziTextures_juicyLoadImage2_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_juicyLoadImage1_srt:
	.quad	base_GHCziErr_error_closure
	.quad	JuicyPixelszm3zi1zi3_CodecziPictureziTypes_zdwzdcconvertImage1_closure
	.quad	EngineziGraphicsziTextures_juicyLoadImage2_closure
	.quad	JuicyPixelszm3zi1zi3_CodecziPicture_readImage1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_juicyLoadImage1_closure
.type EngineziGraphicsziTextures_juicyLoadImage1_closure, @object
EngineziGraphicsziTextures_juicyLoadImage1_closure:
	.quad	EngineziGraphicsziTextures_juicyLoadImage1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccKa_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	106
	.byte	117
	.byte	105
	.byte	99
	.byte	121
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	56
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccKc_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_juicyLoadImage1_ct
.type EngineziGraphicsziTextures_juicyLoadImage1_ct, @object
EngineziGraphicsziTextures_juicyLoadImage1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ccKa_str
	.quad	ccKc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
scIW_info:
.LccKp:
	addq $128,%r12
	cmpq 144(%r13),%r12
	ja .LccKv
	addq $16,EngineziGraphicsziTextures_juicyLoadImage1_ct+48
	incq ALLOC_HEAP_ctr
	addq $16,ALLOC_HEAP_tot
	movq $base_GHCziPtr_Ptr_con_info,-120(%r12)
	movq 23(%rbx),%rax
	movq %rax,-112(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziPixelData_PixelData_con_info,-104(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziPixelFormat_RGB_closure+1,-96(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziDataType_UnsignedByte_closure+1,-88(%r12)
	leaq -119(%r12),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movslq %eax,%rax
	movq $base_GHCziInt_I32zh_con_info,-72(%r12)
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movslq %eax,%rax
	movq $base_GHCziInt_I32zh_con_info,-56(%r12)
	movq %rax,-48(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziCoordTrans_Sizze_con_info,-40(%r12)
	leaq -55(%r12),%rax
	movq %rax,-32(%r12)
	leaq -71(%r12),%rax
	movq %rax,-24(%r12)
	movq $EngineziGraphicsziTextures_Image_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	leaq -103(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -15(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LccKv:
	movq $128,192(%r13)
.LccKt:
	jmp *-16(%r13)
	.size scIW_info, .-scIW_info
.text
	.align 8
	.quad	0
	.quad	32
scIX_info:
.LccKG:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $scIW_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne scIW_info
	jmp *(%rbx)
	.size scIX_info, .-scIX_info
.text
	.align 8
	.quad	194
	.quad	32
scJ0_info:
.LccKZ:
	addq $128,%r12
	cmpq 144(%r13),%r12
	ja .LccL5
	addq $16,EngineziGraphicsziTextures_juicyLoadImage1_ct+48
	incq ALLOC_HEAP_ctr
	addq $16,ALLOC_HEAP_tot
	movq $base_GHCziPtr_Ptr_con_info,-120(%r12)
	movq 23(%rbx),%rax
	movq %rax,-112(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziPixelData_PixelData_con_info,-104(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziPixelFormat_RGB_closure+1,-96(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziDataType_UnsignedByte_closure+1,-88(%r12)
	leaq -119(%r12),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movslq %eax,%rax
	movq $base_GHCziInt_I32zh_con_info,-72(%r12)
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movslq %eax,%rax
	movq $base_GHCziInt_I32zh_con_info,-56(%r12)
	movq %rax,-48(%r12)
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziCoordTrans_Sizze_con_info,-40(%r12)
	leaq -55(%r12),%rax
	movq %rax,-32(%r12)
	leaq -71(%r12),%rax
	movq %rax,-24(%r12)
	movq $EngineziGraphicsziTextures_Image_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	leaq -103(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -15(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LccL5:
	movq $128,192(%r13)
.LccL3:
	jmp *-16(%r13)
	.size scJ0_info, .-scJ0_info
.text
	.align 8
	.quad	0
	.quad	32
scJ1_info:
.LccLg:
	movq %r14,-8(%rbp)
	movq %rbx,0(%rbp)
	movq %rsi,%rbx
	movq $scJ0_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne scJ0_info
	jmp *(%rbx)
	.size scJ1_info, .-scJ1_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_juicyLoadImage1_srt-(scJ2_info)+8
	.long	0
	.quad	0
	.quad	4294967328
scJ2_info:
.LccLm:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%r14
	movq 23(%rbx),%rsi
	movq 7(%rbx),%rdi
	movq $scJ1_info,0(%rbp)
	jmp JuicyPixelszm3zi1zi3_CodecziPictureziTypes_zdwzdcconvertImage1_info
	.size scJ2_info, .-scJ2_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_juicyLoadImage1_srt-(scIT_info)+8
	.long	0
	.quad	0
	.quad	12884901920
scIT_info:
.LccLq:
	movq -1(%rbx),%rax
	movl -4(%rax),%eax
	cmpq $5,%rax
	jb .LccLr
	cmpq $10,%rax
	ja .LccLr
	cmpq $10,%rax
	jae .LccLs
	cmpq $5,%rax
	jne .LccLr
	movq 7(%rbx),%rbx
	movq $scIX_info,0(%rbp)
	testq $7,%rbx
	jne scIX_info
	jmp *(%rbx)
.LccLr:
	movl $EngineziGraphicsziTextures_juicyLoadImage2_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LccLs:
	movq 7(%rbx),%rbx
	movq $scJ2_info,0(%rbp)
	testq $7,%rbx
	jne scJ2_info
	jmp *(%rbx)
	.size scIT_info, .-scIT_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_juicyLoadImage1_srt-(scIR_info)+0
	.long	0
	.quad	0
	.quad	30064771104
scIR_info:
.LccLE:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LccLF
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziErr_error_info
.LccLF:
	movq 6(%rbx),%rbx
	movq $scIT_info,0(%rbp)
	testq $7,%rbx
	jne scIT_info
	jmp *(%rbx)
	.size scIR_info, .-scIR_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_juicyLoadImage1_srt-(scIS_info)+0
	.long	0
	.quad	0
	.quad	30064771104
scIS_info:
.LccLO:
	movq $scIR_info,0(%rbp)
	testq $7,%rbx
	jne scIR_info
	jmp *(%rbx)
	.size scIS_info, .-scIS_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_juicyLoadImage1_srt-(EngineziGraphicsziTextures_juicyLoadImage1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	64424509455
.globl EngineziGraphicsziTextures_juicyLoadImage1_info
.type EngineziGraphicsziTextures_juicyLoadImage1_info, @object
EngineziGraphicsziTextures_juicyLoadImage1_info:
.LccLU:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccLW
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_juicyLoadImage1_ct
	je .LccLX
.LccLY:
	incq EngineziGraphicsziTextures_juicyLoadImage1_ct+40
	incq KNOWN_CALL_ctr
	movq $scIS_info,-8(%rbp)
	addq $-8,%rbp
	jmp JuicyPixelszm3zi1zi3_CodecziPicture_readImage1_info
.LccLW:
	movl $EngineziGraphicsziTextures_juicyLoadImage1_closure,%ebx
	jmp *-8(%r13)
.LccLX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_juicyLoadImage1_ct+56
	movq $EngineziGraphicsziTextures_juicyLoadImage1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_juicyLoadImage1_ct
	jmp .LccLY
	.size EngineziGraphicsziTextures_juicyLoadImage1_info, .-EngineziGraphicsziTextures_juicyLoadImage1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_juicyLoadImage_srt:
	.quad	EngineziGraphicsziTextures_juicyLoadImage1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_juicyLoadImage_closure
.type EngineziGraphicsziTextures_juicyLoadImage_closure, @object
EngineziGraphicsziTextures_juicyLoadImage_closure:
	.quad	EngineziGraphicsziTextures_juicyLoadImage_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccM8_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	106
	.byte	117
	.byte	105
	.byte	99
	.byte	121
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	52
	.byte	119
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccMb_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_juicyLoadImage_ct
.type EngineziGraphicsziTextures_juicyLoadImage_ct, @object
EngineziGraphicsziTextures_juicyLoadImage_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ccM8_str
	.quad	ccMb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_juicyLoadImage_srt-(EngineziGraphicsziTextures_juicyLoadImage_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_juicyLoadImage_info
.type EngineziGraphicsziTextures_juicyLoadImage_info, @object
EngineziGraphicsziTextures_juicyLoadImage_info:
.LccMg:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_juicyLoadImage_ct
	je .LccMj
.LccMl:
	incq EngineziGraphicsziTextures_juicyLoadImage_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziTextures_juicyLoadImage1_info
.LccMj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_juicyLoadImage_ct+56
	movq $EngineziGraphicsziTextures_juicyLoadImage_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_juicyLoadImage_ct
	jmp .LccMl
	.size EngineziGraphicsziTextures_juicyLoadImage_info, .-EngineziGraphicsziTextures_juicyLoadImage_info
.data
	.align 8
.align 1
rcdN_closure:
	.quad	rcdN_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ccMx_str:
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	101
	.byte	100
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rcdN_info:
.LccMB:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccMD
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccMF
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
	je .LccMG
.LccMH:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ccMx_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LccMF:
	movq $16,192(%r13)
.LccMD:
	jmp *-16(%r13)
.LccMG:
	jmp *(%rbx)
	.size rcdN_info, .-rcdN_info
.data
	.align 8
.align 1
rcdO_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	1
.section .data
	.align 8
.align 1
rcdP_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rcdP_closure:
	.quad	rcdP_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scMQ_info:
.LccNa:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccNg
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LncNh(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LccNg:
	movq $16,192(%r13)
.LccNe:
	jmp *-16(%r13)
	.size scMQ_info, .-scMQ_info
.section .rodata
	.align 8
.align 4
.LncNh:
	.long	-2147483648
.text
	.align 8
	.long	rcdP_srt-(rcdP_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rcdP_info:
.LccNm:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccNo
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccNq
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
	je .LccNr
.LccNs:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	movq $scMQ_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccNq:
	movq $16,192(%r13)
.LccNo:
	jmp *-16(%r13)
.LccNr:
	jmp *(%rbx)
	.size rcdP_info, .-rcdP_info
.section .data
	.align 8
.align 1
rcdQ_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rcdQ_closure:
	.quad	rcdQ_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scNz_info:
.LccNS:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccNY
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LncNZ(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LccNY:
	movq $16,192(%r13)
.LccNW:
	jmp *-16(%r13)
	.size scNz_info, .-scNz_info
.section .rodata
	.align 8
.align 4
.LncNZ:
	.long	-2147483648
.text
	.align 8
	.long	rcdQ_srt-(rcdQ_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rcdQ_info:
.LccO4:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccO6
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccO8
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
	je .LccO9
.LccOa:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	movq $scNz_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccO8:
	movq $16,192(%r13)
.LccO6:
	jmp *-16(%r13)
.LccO9:
	jmp *(%rbx)
	.size rcdQ_info, .-rcdQ_info
.data
	.align 8
.align 1
rcdR_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	0
.section .data
	.align 8
.align 1
rcdS_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
	.quad	rcdR_closure
.data
	.align 8
.align 1
rcdS_closure:
	.quad	rcdS_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rcdS_srt-(rcdS_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rcdS_info:
.LccOu:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccOw
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccOy
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
	je .LccOz
.LccOA:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdR_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccOy:
	movq $16,192(%r13)
.LccOw:
	jmp *-16(%r13)
.LccOz:
	jmp *(%rbx)
	.size rcdS_info, .-rcdS_info
.section .data
	.align 8
.align 1
rcdT_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rcdT_closure:
	.quad	rcdT_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rcdT_srt-(rcdT_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rcdT_info:
.LccOR:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccOT
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccOV
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
	je .LccOW
.LccOX:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccOV:
	movq $16,192(%r13)
.LccOT:
	jmp *-16(%r13)
.LccOW:
	jmp *(%rbx)
	.size rcdT_info, .-rcdT_info
.section .data
	.align 8
.align 1
rcdU_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rcdU_closure:
	.quad	rcdU_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scP4_info:
.LccPn:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccPt
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LncPu(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LccPt:
	movq $16,192(%r13)
.LccPr:
	jmp *-16(%r13)
	.size scP4_info, .-scP4_info
.section .rodata
	.align 8
.align 4
.LncPu:
	.long	-2147483648
.text
	.align 8
	.long	rcdU_srt-(rcdU_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rcdU_info:
.LccPz:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccPB
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccPD
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
	je .LccPE
.LccPF:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	movq $scP4_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccPD:
	movq $16,192(%r13)
.LccPB:
	jmp *-16(%r13)
.LccPE:
	jmp *(%rbx)
	.size rcdU_info, .-rcdU_info
.section .data
	.align 8
.align 1
rcdV_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
	.quad	rcdR_closure
.data
	.align 8
.align 1
rcdV_closure:
	.quad	rcdV_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rcdV_srt-(rcdV_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rcdV_info:
.LccPW:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccPY
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccQ0
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
	je .LccQ1
.LccQ2:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdR_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccQ0:
	movq $16,192(%r13)
.LccPY:
	jmp *-16(%r13)
.LccQ1:
	jmp *(%rbx)
	.size rcdV_info, .-rcdV_info
.section .data
	.align 8
.align 1
rcdW_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rcdW_closure:
	.quad	rcdW_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scQ9_info:
.LccQs:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccQy
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LncQz(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LccQy:
	movq $16,192(%r13)
.LccQw:
	jmp *-16(%r13)
	.size scQ9_info, .-scQ9_info
.section .rodata
	.align 8
.align 4
.LncQz:
	.long	-2147483648
.text
	.align 8
	.long	rcdW_srt-(rcdW_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rcdW_info:
.LccQE:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccQG
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccQI
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
	je .LccQJ
.LccQK:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	movq $scQ9_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccQI:
	movq $16,192(%r13)
.LccQG:
	jmp *-16(%r13)
.LccQJ:
	jmp *(%rbx)
	.size rcdW_info, .-rcdW_info
.section .data
	.align 8
.align 1
rcdX_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rcdX_closure:
	.quad	rcdX_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rcdX_srt-(rcdX_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rcdX_info:
.LccR1:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccR3
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccR5
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
	je .LccR6
.LccR7:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccR5:
	movq $16,192(%r13)
.LccR3:
	jmp *-16(%r13)
.LccR6:
	jmp *(%rbx)
	.size rcdX_info, .-rcdX_info
.section .data
	.align 8
.align 1
rcdY_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
	.quad	rcdR_closure
.data
	.align 8
.align 1
rcdY_closure:
	.quad	rcdY_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rcdY_srt-(rcdY_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rcdY_info:
.LccRo:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccRq
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccRs
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
	je .LccRt
.LccRu:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdR_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccRs:
	movq $16,192(%r13)
.LccRq:
	jmp *-16(%r13)
.LccRt:
	jmp *(%rbx)
	.size rcdY_info, .-rcdY_info
.section .data
	.align 8
.align 1
rcdZ_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rcdZ_closure:
	.quad	rcdZ_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scRB_info:
.LccRU:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccS0
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LncS1(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LccS0:
	movq $16,192(%r13)
.LccRY:
	jmp *-16(%r13)
	.size scRB_info, .-scRB_info
.section .rodata
	.align 8
.align 4
.LncS1:
	.long	-2147483648
.text
	.align 8
	.long	rcdZ_srt-(rcdZ_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rcdZ_info:
.LccS6:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccS8
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccSa
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
	je .LccSb
.LccSc:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	movq $scRB_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccSa:
	movq $16,192(%r13)
.LccS8:
	jmp *-16(%r13)
.LccSb:
	jmp *(%rbx)
	.size rcdZ_info, .-rcdZ_info
.section .data
	.align 8
.align 1
rce0_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rce0_closure:
	.quad	rce0_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rce0_srt-(rce0_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rce0_info:
.LccSt:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccSv
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccSx
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
	je .LccSy
.LccSz:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccSx:
	movq $16,192(%r13)
.LccSv:
	jmp *-16(%r13)
.LccSy:
	jmp *(%rbx)
	.size rce0_info, .-rce0_info
.section .data
	.align 8
.align 1
rce1_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
	.quad	rcdR_closure
.data
	.align 8
.align 1
rce1_closure:
	.quad	rce1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rce1_srt-(rce1_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rce1_info:
.LccSQ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccSS
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccSU
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
	je .LccSV
.LccSW:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdR_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccSU:
	movq $16,192(%r13)
.LccSS:
	jmp *-16(%r13)
.LccSV:
	jmp *(%rbx)
	.size rce1_info, .-rce1_info
.section .data
	.align 8
.align 1
rce2_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rce2_closure:
	.quad	rce2_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rce2_srt-(rce2_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rce2_info:
.LccTd:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccTf
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccTh
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
	je .LccTi
.LccTj:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccTh:
	movq $16,192(%r13)
.LccTf:
	jmp *-16(%r13)
.LccTi:
	jmp *(%rbx)
	.size rce2_info, .-rce2_info
.section .data
	.align 8
.align 1
rce3_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rce3_closure:
	.quad	rce3_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
scTq_info:
.LccTJ:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccTP
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LncTQ(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LccTP:
	movq $16,192(%r13)
.LccTN:
	jmp *-16(%r13)
	.size scTq_info, .-scTq_info
.section .rodata
	.align 8
.align 4
.LncTQ:
	.long	-2147483648
.text
	.align 8
	.long	rce3_srt-(rce3_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rce3_info:
.LccTV:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccTX
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccTZ
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
	je .LccU0
.LccU1:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	movq $scTq_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccTZ:
	movq $16,192(%r13)
.LccTX:
	jmp *-16(%r13)
.LccU0:
	jmp *(%rbx)
	.size rce3_info, .-rce3_info
.section .data
	.align 8
.align 1
rce4_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
	.quad	rcdR_closure
.data
	.align 8
.align 1
rce4_closure:
	.quad	rce4_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rce4_srt-(rce4_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rce4_info:
.LccUi:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccUk
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccUm
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
	je .LccUn
.LccUo:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdR_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccUm:
	movq $16,192(%r13)
.LccUk:
	jmp *-16(%r13)
.LccUn:
	jmp *(%rbx)
	.size rce4_info, .-rce4_info
.section .data
	.align 8
.align 1
rce5_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rce5_closure:
	.quad	rce5_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rce5_srt-(rce5_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rce5_info:
.LccUF:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccUH
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccUJ
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
	je .LccUK
.LccUL:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccUJ:
	movq $16,192(%r13)
.LccUH:
	jmp *-16(%r13)
.LccUK:
	jmp *(%rbx)
	.size rce5_info, .-rce5_info
.section .data
	.align 8
.align 1
rce6_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
.data
	.align 8
.align 1
rce6_closure:
	.quad	rce6_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rce6_srt-(rce6_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rce6_info:
.LccV2:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccV4
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccV6
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
	je .LccV7
.LccV8:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdO_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccV6:
	movq $16,192(%r13)
.LccV4:
	jmp *-16(%r13)
.LccV7:
	jmp *(%rbx)
	.size rce6_info, .-rce6_info
.section .data
	.align 8
.align 1
rce7_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	rcdO_closure
	.quad	rcdR_closure
.data
	.align 8
.align 1
rce7_closure:
	.quad	rce7_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rce7_srt-(rce7_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rce7_info:
.LccVp:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccVr
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccVt
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
	je .LccVu
.LccVv:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rcdR_closure+1,%r14d
	movl $rcdO_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LccVt:
	movq $16,192(%r13)
.LccVr:
	jmp *-16(%r13)
.LccVu:
	jmp *(%rbx)
	.size rce7_info, .-rce7_info
.data
	.align 8
.align 1
rce8_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce7_closure
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.data
	.align 8
.align 1
rce9_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce6_closure
	.quad	rce8_closure+2
	.quad	0
.data
	.align 8
.align 1
rcea_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce5_closure
	.quad	rce9_closure+2
	.quad	0
.data
	.align 8
.align 1
rceb_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce4_closure
	.quad	rcea_closure+2
	.quad	0
.data
	.align 8
.align 1
rcec_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce3_closure
	.quad	rceb_closure+2
	.quad	0
.data
	.align 8
.align 1
rced_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce2_closure
	.quad	rcec_closure+2
	.quad	0
.data
	.align 8
.align 1
rcee_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce1_closure
	.quad	rced_closure+2
	.quad	0
.data
	.align 8
.align 1
rcef_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rce0_closure
	.quad	rcee_closure+2
	.quad	0
.data
	.align 8
.align 1
rceg_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdZ_closure
	.quad	rcef_closure+2
	.quad	0
.data
	.align 8
.align 1
rceh_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdY_closure
	.quad	rceg_closure+2
	.quad	0
.data
	.align 8
.align 1
rcei_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdX_closure
	.quad	rceh_closure+2
	.quad	0
.data
	.align 8
.align 1
rcej_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdW_closure
	.quad	rcei_closure+2
	.quad	0
.data
	.align 8
.align 1
rcek_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdV_closure
	.quad	rcej_closure+2
	.quad	0
.data
	.align 8
.align 1
rcel_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdU_closure
	.quad	rcek_closure+2
	.quad	0
.data
	.align 8
.align 1
rcem_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdT_closure
	.quad	rcel_closure+2
	.quad	0
.data
	.align 8
.align 1
rcen_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdS_closure
	.quad	rcem_closure+2
	.quad	0
.data
	.align 8
.align 1
rceo_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdQ_closure
	.quad	rcen_closure+2
	.quad	0
.data
	.align 8
.align 1
rcep_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rcdP_closure
	.quad	rceo_closure+2
	.quad	0
.section .data
	.align 8
.align 1
rceq_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBufferData_closure
.data
	.align 8
.align 1
rceq_closure:
	.quad	rceq_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccWQ_str:
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	99
	.byte	101
	.byte	113
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ccWT_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rceq_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ccWQ_str
	.quad	ccWT_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
scWd_info:
.LccXb:
	movq 8(%rbp),%rsi
	shlq $2,%rsi
	movq 7(%rbx),%rdx
	movl $34962,%edi
	movl $35044,%ecx
	subq $8,%rsp
	movl $0,%eax
	movq 16(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
	.size scWd_info, .-scWd_info
.text
	.align 8
	.quad	130
	.quad	32
scWe_info:
.LccXl:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $scWd_info,0(%rbp)
	testq $7,%rbx
	jne scWd_info
	jmp *(%rbx)
	.size scWe_info, .-scWe_info
.text
	.align 8
	.quad	2
	.quad	32
scWf_info:
.LccXu:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $scWe_info,0(%rbp)
	testq $7,%rbx
	jne scWe_info
	jmp *(%rbx)
	.size scWf_info, .-scWf_info
.text
	.align 8
	.long	rceq_srt-(rceq_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
rceq_info:
.LccXD:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LccXF
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rceq_ct
	je .LccXG
.LccXH:
	incq rceq_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBufferData_closure,%ebx
	movq $scWf_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne scWf_info
	jmp *(%rbx)
.LccXF:
	movl $rceq_closure,%ebx
	jmp *-8(%r13)
.LccXG:
	movq ticky_entry_ctrs,%rax
	movq %rax,rceq_ct+56
	movq $rceq_ct,ticky_entry_ctrs
	movq $1,rceq_ct
	jmp .LccXH
	.size rceq_info, .-rceq_info
.section .data
	.align 8
.align 1
rcer_srt:
	.quad	base_ForeignziMarshalziArray_withArrayLen_closure
	.quad	rcep_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBufferData_closure
.data
	.align 8
.align 1
rcer_closure:
	.quad	rcer_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rcer_srt-(rcer_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rcer_info:
.LccXZ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LccY1
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LccY3
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
	je .LccY4
.LccY5:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	movl $rcep_closure+2,%esi
	movl $rceq_closure+3,%edi
	addq $-16,%rbp
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LccY3:
	movq $16,192(%r13)
.LccY1:
	jmp *-16(%r13)
.LccY4:
	jmp *(%rbx)
	.size rcer_info, .-rcer_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_zdwa_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindBuffer_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenBuffers_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglVertexAttribPointer_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform1f_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnableVertexAttribArray_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDisableVertexAttribArray_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure
	.quad	base_ForeignziCziString_withCString1_closure
	.quad	rcdN_closure
	.quad	rcer_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwa_closure
.type EngineziGraphicsziTextures_zdwa_closure, @object
EngineziGraphicsziTextures_zdwa_closure:
	.quad	EngineziGraphicsziTextures_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
ccZN_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	51
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ccZQ_str:
	.byte	83
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_zdwa_ct
.type EngineziGraphicsziTextures_zdwa_ct, @object
EngineziGraphicsziTextures_zdwa_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ccZN_str
	.quad	ccZQ_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cd0h_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	99
	.byte	89
	.byte	99
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cd0k_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
scYc_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cd0h_str
	.quad	cd0k_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYc_info)+40
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
scYc_info:
.Lcd0p:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,scYc_ct
	je .Lcd0s
.Lcd0u:
	incq scYc_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movq %r14,%rdi
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglGetUniformLocation_info
.Lcd0s:
	movq ticky_entry_ctrs,%rax
	movq %rax,scYc_ct+56
	movq $scYc_ct,ticky_entry_ctrs
	movq $1,scYc_ct
	jmp .Lcd0u
	.size scYc_info, .-scYc_info
.text
	.align 8
	.quad	0
	.quad	32
scYl_info:
.Lcd1m:
	xorl %edi,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size scYl_info, .-scYl_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYn_info)+64
	.long	0
	.quad	0
	.quad	4294967328
scYn_info:
.Lcd1q:
	movl $4,%edi
	xorl %esi,%esi
	movl $6,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDisableVertexAttribArray_closure,%ebx
	movq $scYl_info,0(%rbp)
	testq $7,%rbx
	jne scYl_info
	jmp *(%rbx)
	.size scYn_info, .-scYn_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYp_info)+56
	.long	0
	.quad	0
	.quad	12884901920
scYp_info:
.Lcd1x:
	xorl %edi,%edi
	movl $3,%esi
	movl $5126,%edx
	xorl %ecx,%ecx
	xorl %r8d,%r8d
	xorl %r9d,%r9d
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure,%ebx
	movq $scYn_info,0(%rbp)
	testq $7,%rbx
	jne scYn_info
	jmp *(%rbx)
	.size scYp_info, .-scYp_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYr_info)+16
	.long	0
	.quad	65
	.quad	416611827744
scYr_info:
.Lcd1E:
	movq 8(%rbp),%rsi
	movl $34962,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglVertexAttribPointer_closure,%ebx
	movq $scYp_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne scYp_info
	jmp *(%rbx)
	.size scYr_info, .-scYr_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYt_info)+0
	.long	0
	.quad	65
	.quad	1670742278176
scYt_info:
.Lcd1M:
	xorl %edi,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindBuffer_closure,%ebx
	movq $scYr_info,0(%rbp)
	testq $7,%rbx
	jne scYr_info
	jmp *(%rbx)
	.size scYt_info, .-scYt_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYu_info)+0
	.long	0
	.quad	65
	.quad	1945620185120
scYu_info:
.Lcd1T:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnableVertexAttribArray_closure,%ebx
	movq $scYt_info,0(%rbp)
	testq $7,%rbx
	jne scYt_info
	jmp *(%rbx)
	.size scYu_info, .-scYu_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYw_info)+0
	.long	0
	.quad	65
	.quad	37129992273952
scYw_info:
.Lcd1Z:
	movq 8(%rbp),%rsi
	movl $34962,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq UNKNOWN_CALL_ctr
	movl $rcer_closure,%ebx
	movq $scYu_info,0(%rbp)
	jmp stg_ap_v_fast
	.size scYw_info, .-scYw_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYz_info)+0
	.long	0
	.quad	1
	.quad	37129992273952
scYz_info:
.Lcd24:
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
	movq $scYw_info,0(%rbp)
	testq $7,%rbx
	jne scYw_info
	jmp *(%rbx)
	.size scYz_info, .-scYz_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYB_info)+0
	.long	0
	.quad	0
	.quad	37138582208544
scYB_info:
.Lcd2d:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGenBuffers_closure,%ebx
	movq $scYz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scYz_info
	jmp *(%rbx)
	.size scYB_info, .-scYB_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYD_info)+0
	.long	0
	.quad	65
	.quad	37138582208544
scYD_info:
.Lcd2j:
	movq 7(%rbx),%rdi
	xorps %xmm0,%xmm0
	subq $8,%rsp
	movl $1,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movl $4,%ebx
	movl $4,%r14d
	movq $scYB_info,8(%rbp)
	addq $8,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
	.size scYD_info, .-scYD_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYE_info)+0
	.long	0
	.quad	1
	.quad	37138582208544
scYE_info:
.Lcd2o:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $scYD_info,0(%rbp)
	testq $7,%rbx
	jne scYD_info
	jmp *(%rbx)
	.size scYE_info, .-scYE_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYF_info)+0
	.long	0
	.quad	0
	.quad	37207301685280
scYF_info:
.Lcd2x:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform1f_closure,%ebx
	movq $scYE_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne scYE_info
	jmp *(%rbx)
	.size scYF_info, .-scYF_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYf_info)+0
	.long	0
	.quad	66
	.quad	63733019705376
scYf_info:
.Lcd2D:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcd2H
	addq $2,EngineziGraphicsziTextures_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 8(%rbp),%rsi
	movl $3553,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movq $scYc_info,-8(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $rcdN_closure,%r14d
	leaq -6(%r12),%rsi
	movq $scYF_info,16(%rbp)
	addq $16,%rbp
	jmp base_ForeignziCziString_withCString1_info
.Lcd2H:
	movq $16,192(%r13)
.Lcd2F:
	jmp *-16(%r13)
	.size scYf_info, .-scYf_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYh_info)+0
	.long	0
	.quad	66
	.quad	65932042960928
scYh_info:
.Lcd2N:
	movl $33984,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $scYf_info,0(%rbp)
	testq $7,%rbx
	jne scYf_info
	jmp *(%rbx)
	.size scYh_info, .-scYh_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scmZ_info)+0
	.long	0
	.quad	194
	.quad	70330089472032
scmZ_info:
.Lcd2U:
	movq 7(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 16(%rbp),%rcx
	call *%rcx
	addq $8,%rsp
	movq %rbx,16(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $scYh_info,0(%rbp)
	testq $7,%rbx
	jne scYh_info
	jmp *(%rbx)
	.size scmZ_info, .-scmZ_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(scYj_info)+0
	.long	0
	.quad	66
	.quad	70330089472032
scYj_info:
.Lcd32:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $scmZ_info,0(%rbp)
	testq $7,%rbx
	jne scmZ_info
	jmp *(%rbx)
	.size scYj_info, .-scYj_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_zdwa_srt-(EngineziGraphicsziTextures_zdwa_info)+0
	.long	0
	.quad	12884901899
	.quad	0
	.quad	70364449210383
.globl EngineziGraphicsziTextures_zdwa_info
.type EngineziGraphicsziTextures_zdwa_info, @object
EngineziGraphicsziTextures_zdwa_info:
.Lcd3b:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcd3d
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_zdwa_ct
	je .Lcd3e
.Lcd3f:
	incq EngineziGraphicsziTextures_zdwa_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $scYj_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne scYj_info
	jmp *(%rbx)
.Lcd3d:
	movl $EngineziGraphicsziTextures_zdwa_closure,%ebx
	jmp *-8(%r13)
.Lcd3e:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_zdwa_ct+56
	movq $EngineziGraphicsziTextures_zdwa_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_zdwa_ct
	jmp .Lcd3f
	.size EngineziGraphicsziTextures_zdwa_info, .-EngineziGraphicsziTextures_zdwa_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_renderFromFrameBuffer1_srt:
	.quad	EngineziGraphicsziTextures_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderFromFrameBuffer1_closure
.type EngineziGraphicsziTextures_renderFromFrameBuffer1_closure, @object
EngineziGraphicsziTextures_renderFromFrameBuffer1_closure:
	.quad	EngineziGraphicsziTextures_renderFromFrameBuffer1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cd3B_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
	.byte	66
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	51
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cd3E_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderFromFrameBuffer1_ct
.type EngineziGraphicsziTextures_renderFromFrameBuffer1_ct, @object
EngineziGraphicsziTextures_renderFromFrameBuffer1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cd3B_str
	.quad	cd3E_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderFromFrameBuffer1_srt-(sd3m_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sd3m_info:
.Lcd3S:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	addq $16,%rbp
	jmp EngineziGraphicsziTextures_zdwa_info
	.size sd3m_info, .-sd3m_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderFromFrameBuffer1_srt-(sd3o_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sd3o_info:
.Lcd3V:
	movq 15(%rbx),%rbx
	movq $sd3m_info,0(%rbp)
	testq $7,%rbx
	jne sd3m_info
	jmp *(%rbx)
	.size sd3o_info, .-sd3o_info
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderFromFrameBuffer1_srt-(EngineziGraphicsziTextures_renderFromFrameBuffer1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_renderFromFrameBuffer1_info
.type EngineziGraphicsziTextures_renderFromFrameBuffer1_info, @object
EngineziGraphicsziTextures_renderFromFrameBuffer1_info:
.Lcd41:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcd43
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_renderFromFrameBuffer1_ct
	je .Lcd44
.Lcd45:
	incq EngineziGraphicsziTextures_renderFromFrameBuffer1_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sd3o_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sd3o_info
	jmp *(%rbx)
.Lcd43:
	movl $EngineziGraphicsziTextures_renderFromFrameBuffer1_closure,%ebx
	jmp *-8(%r13)
.Lcd44:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_renderFromFrameBuffer1_ct+56
	movq $EngineziGraphicsziTextures_renderFromFrameBuffer1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_renderFromFrameBuffer1_ct
	jmp .Lcd45
	.size EngineziGraphicsziTextures_renderFromFrameBuffer1_info, .-EngineziGraphicsziTextures_renderFromFrameBuffer1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziTextures_renderFromFrameBuffer_srt:
	.quad	EngineziGraphicsziTextures_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderFromFrameBuffer_closure
.type EngineziGraphicsziTextures_renderFromFrameBuffer_closure, @object
EngineziGraphicsziTextures_renderFromFrameBuffer_closure:
	.quad	EngineziGraphicsziTextures_renderFromFrameBuffer_info
	.quad	0
.section .rodata
	.align 8
.align 1
cd4i_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	70
	.byte	114
	.byte	97
	.byte	109
	.byte	101
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
	.byte	57
	.byte	52
	.byte	117
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cd4l_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_renderFromFrameBuffer_ct
.type EngineziGraphicsziTextures_renderFromFrameBuffer_ct, @object
EngineziGraphicsziTextures_renderFromFrameBuffer_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cd4i_str
	.quad	cd4l_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziTextures_renderFromFrameBuffer_srt-(EngineziGraphicsziTextures_renderFromFrameBuffer_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziTextures_renderFromFrameBuffer_info
.type EngineziGraphicsziTextures_renderFromFrameBuffer_info, @object
EngineziGraphicsziTextures_renderFromFrameBuffer_info:
.Lcd4q:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_renderFromFrameBuffer_ct
	je .Lcd4t
.Lcd4v:
	incq EngineziGraphicsziTextures_renderFromFrameBuffer_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziTextures_renderFromFrameBuffer1_info
.Lcd4t:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_renderFromFrameBuffer_ct+56
	movq $EngineziGraphicsziTextures_renderFromFrameBuffer_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_renderFromFrameBuffer_ct
	jmp .Lcd4v
	.size EngineziGraphicsziTextures_renderFromFrameBuffer_info, .-EngineziGraphicsziTextures_renderFromFrameBuffer_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_Image_closure
.type EngineziGraphicsziTextures_Image_closure, @object
EngineziGraphicsziTextures_Image_closure:
	.quad	EngineziGraphicsziTextures_Image_info
.section .rodata
	.align 8
.align 1
cd4D_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	57
	.byte	51
	.byte	90
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cd4G_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_Image_ct
.type EngineziGraphicsziTextures_Image_ct, @object
EngineziGraphicsziTextures_Image_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cd4D_str
	.quad	cd4G_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
EngineziGraphicsziTextures_Image_info:
.Lcd4L:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcd4Q
	addq $3,EngineziGraphicsziTextures_Image_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_Image_ct
	je .Lcd4S
.Lcd4U:
	incq EngineziGraphicsziTextures_Image_ct+40
	incq RET_NEW_ctr
	movq $EngineziGraphicsziTextures_Image_con_info,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -15(%r12),%rbx
	jmp *0(%rbp)
.Lcd4Q:
	movq $24,192(%r13)
.Lcd4O:
	movl $EngineziGraphicsziTextures_Image_closure,%ebx
	jmp *-8(%r13)
.Lcd4S:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_Image_ct+56
	movq $EngineziGraphicsziTextures_Image_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_Image_ct
	jmp .Lcd4U
	.size EngineziGraphicsziTextures_Image_info, .-EngineziGraphicsziTextures_Image_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_FB_closure
.type EngineziGraphicsziTextures_FB_closure, @object
EngineziGraphicsziTextures_FB_closure:
	.quad	EngineziGraphicsziTextures_FB_info
.section .rodata
	.align 8
.align 1
cd52_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	70
	.byte	66
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	97
	.byte	72
	.byte	75
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cd55_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziTextures_FB_ct
.type EngineziGraphicsziTextures_FB_ct, @object
EngineziGraphicsziTextures_FB_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cd52_str
	.quad	cd55_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
EngineziGraphicsziTextures_FB_info:
.Lcd5a:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcd5f
	addq $3,EngineziGraphicsziTextures_FB_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziTextures_FB_ct
	je .Lcd5h
.Lcd5j:
	incq EngineziGraphicsziTextures_FB_ct+40
	incq RET_NEW_ctr
	movq $EngineziGraphicsziTextures_FB_con_info,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -15(%r12),%rbx
	jmp *0(%rbp)
.Lcd5f:
	movq $24,192(%r13)
.Lcd5d:
	movl $EngineziGraphicsziTextures_FB_closure,%ebx
	jmp *-8(%r13)
.Lcd5h:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziTextures_FB_ct+56
	movq $EngineziGraphicsziTextures_FB_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziTextures_FB_ct
	jmp .Lcd5j
	.size EngineziGraphicsziTextures_FB_info, .-EngineziGraphicsziTextures_FB_info
.section .rodata
	.align 8
.align 1
id5p_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	0
.text
	.align 8
	.long	id5p_str-(EngineziGraphicsziTextures_Image_con_info)+0
	.long	0
	.quad	2
	.quad	4
.globl EngineziGraphicsziTextures_Image_con_info
.type EngineziGraphicsziTextures_Image_con_info, @object
EngineziGraphicsziTextures_Image_con_info:
.Lcd5s:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziGraphicsziTextures_Image_con_info, .-EngineziGraphicsziTextures_Image_con_info
.section .rodata
	.align 8
.align 1
id5u_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	73
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	0
.text
	.align 8
	.long	id5u_str-(EngineziGraphicsziTextures_Image_static_info)+0
	.long	0
	.quad	2
	.quad	7
.globl EngineziGraphicsziTextures_Image_static_info
.type EngineziGraphicsziTextures_Image_static_info, @object
EngineziGraphicsziTextures_Image_static_info:
.Lcd5x:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziGraphicsziTextures_Image_static_info, .-EngineziGraphicsziTextures_Image_static_info
.section .rodata
	.align 8
.align 1
id5B_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	70
	.byte	66
	.byte	0
.text
	.align 8
	.long	id5B_str-(EngineziGraphicsziTextures_FB_con_info)+0
	.long	0
	.quad	2
	.quad	4
.globl EngineziGraphicsziTextures_FB_con_info
.type EngineziGraphicsziTextures_FB_con_info, @object
EngineziGraphicsziTextures_FB_con_info:
.Lcd5E:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziGraphicsziTextures_FB_con_info, .-EngineziGraphicsziTextures_FB_con_info
.section .rodata
	.align 8
.align 1
id5G_str:
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
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	46
	.byte	70
	.byte	66
	.byte	0
.text
	.align 8
	.long	id5G_str-(EngineziGraphicsziTextures_FB_static_info)+0
	.long	0
	.quad	2
	.quad	7
.globl EngineziGraphicsziTextures_FB_static_info
.type EngineziGraphicsziTextures_FB_static_info, @object
EngineziGraphicsziTextures_FB_static_info:
.Lcd5J:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziGraphicsziTextures_FB_static_info, .-EngineziGraphicsziTextures_FB_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
