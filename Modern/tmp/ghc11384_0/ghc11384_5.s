.data
	.align 8
.align 1
.globl __stginit_EngineziGraphicsziShaders
.type __stginit_EngineziGraphicsziShaders, @object
__stginit_EngineziGraphicsziShaders:
.data
	.align 8
.align 1
rj7A_closure:
	.quad	rj7A_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cjlS_str:
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	115
	.byte	58
	.byte	32
	.byte	103
	.byte	105
	.byte	118
	.byte	101
	.byte	110
	.byte	32
	.byte	108
	.byte	105
	.byte	115
	.byte	116
	.byte	115
	.byte	32
	.byte	97
	.byte	114
	.byte	101
	.byte	32
	.byte	110
	.byte	111
	.byte	116
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	97
	.byte	109
	.byte	101
	.byte	32
	.byte	108
	.byte	101
	.byte	110
	.byte	103
	.byte	116
	.byte	104
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rj7A_info:
.LcjlW:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjlY
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcjm0
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
	je .Lcjm1
.Lcjm2:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cjlS_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lcjm0:
	movq $16,192(%r13)
.LcjlY:
	jmp *-16(%r13)
.Lcjm1:
	jmp *(%rbx)
	.size rj7A_info, .-rj7A_info
.section .data
	.align 8
.align 1
rj7B_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rj7A_closure
.data
	.align 8
.align 1
rj7B_closure:
	.quad	rj7B_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rj7B_srt-(rj7B_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rj7B_info:
.Lcjmj:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjml
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcjmn
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
	je .Lcjmo
.Lcjmp:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rj7A_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.Lcjmn:
	movq $16,192(%r13)
.Lcjml:
	jmp *-16(%r13)
.Lcjmo:
	jmp *(%rbx)
	.size rj7B_info, .-rj7B_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_createShaderAttribs_srt:
	.quad	EngineziGraphicsziShaders_createShaderAttribs_closure
	.quad	rj7B_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_createShaderAttribs_closure
.type EngineziGraphicsziShaders_createShaderAttribs_closure, @object
EngineziGraphicsziShaders_createShaderAttribs_closure:
	.quad	EngineziGraphicsziShaders_createShaderAttribs_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjn8_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjnb_str:
	.byte	76
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_createShaderAttribs_ct
.type EngineziGraphicsziShaders_createShaderAttribs_ct, @object
EngineziGraphicsziShaders_createShaderAttribs_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjn8_str
	.quad	cjnb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_createShaderAttribs_srt-(sjmw_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sjmw_info:
.Lcjnv:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lcjnw
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcjnw:
	movl $rj7B_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sjmw_info, .-sjmw_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_createShaderAttribs_srt-(sjmx_info)+8
	.long	0
	.quad	130
	.quad	4294967328
sjmx_info:
.LcjnF:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcjnG
	movq 8(%rbp),%rbx
	movq $sjmw_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne sjmw_info
	jmp *(%rbx)
.LcjnG:
	movl $rj7B_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sjmx_info, .-sjmx_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_createShaderAttribs_srt-(sjmF_info)+0
	.long	0
	.quad	3
	.quad	4294967312
sjmF_info:
.Lcjo5:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjo7
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	addq $-16,%rbp
	jmp EngineziGraphicsziShaders_createShaderAttribs_info
.Lcjo7:
	jmp *-16(%r13)
	.size sjmF_info, .-sjmF_info
.text
	.align 8
	.quad	3
	.quad	16
sjmG_info:
.Lcjoe:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjog
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	addq $-16,%rbp
	jmp EngineziCoreziVec_zdWVec3_info
.Lcjog:
	jmp *-16(%r13)
	.size sjmG_info, .-sjmG_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_createShaderAttribs_srt-(sjmE_info)+0
	.long	0
	.quad	4
	.quad	12884901920
sjmE_info:
.Lcjom:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcjon
	movl $rj7B_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcjon:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .Lcjor
	addq $13,EngineziGraphicsziShaders_createShaderAttribs_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $sjmF_info,-96(%r12)
	movq 16(%rbp),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq 14(%rbx),%rax
	movq %rax,-64(%r12)
	movq $sjmG_info,-56(%r12)
	movq 32(%rbp),%rax
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
	addq $40,%rbp
	jmp *0(%rbp)
.Lcjor:
	movq $104,192(%r13)
.Lcjop:
	jmp *-16(%r13)
	.size sjmE_info, .-sjmE_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_createShaderAttribs_srt-(sjmD_info)+0
	.long	0
	.quad	3
	.quad	12884901920
sjmD_info:
.LcjoI:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjoJ
	movl $rj7B_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcjoJ:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sjmE_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjmE_info
	jmp *(%rbx)
	.size sjmD_info, .-sjmD_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_createShaderAttribs_srt-(sjmy_info)+0
	.long	0
	.quad	2
	.quad	12884901920
sjmy_info:
.LcjoZ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcjp0
	movq 16(%rbp),%rbx
	movq $sjmx_info,0(%rbp)
	testq $7,%rbx
	jne sjmx_info
	jmp *(%rbx)
.Lcjp0:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sjmD_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjmD_info
	jmp *(%rbx)
	.size sjmy_info, .-sjmy_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_createShaderAttribs_srt-(EngineziGraphicsziShaders_createShaderAttribs_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziShaders_createShaderAttribs_info
.type EngineziGraphicsziShaders_createShaderAttribs_info, @object
EngineziGraphicsziShaders_createShaderAttribs_info:
.Lcjpg:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjpi
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_createShaderAttribs_ct
	je .Lcjpj
.Lcjpk:
	incq EngineziGraphicsziShaders_createShaderAttribs_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sjmy_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sjmy_info
	jmp *(%rbx)
.Lcjpi:
	movl $EngineziGraphicsziShaders_createShaderAttribs_closure,%ebx
	jmp *-8(%r13)
.Lcjpj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_createShaderAttribs_ct+56
	movq $EngineziGraphicsziShaders_createShaderAttribs_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_createShaderAttribs_ct
	jmp .Lcjpk
	.size EngineziGraphicsziShaders_createShaderAttribs_info, .-EngineziGraphicsziShaders_createShaderAttribs_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_quickGetUniform1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure
	.quad	base_ForeignziCziString_withCString1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_quickGetUniform1_closure
.type EngineziGraphicsziShaders_quickGetUniform1_closure, @object
EngineziGraphicsziShaders_quickGetUniform1_closure:
	.quad	EngineziGraphicsziShaders_quickGetUniform1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjpy_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	113
	.byte	117
	.byte	105
	.byte	99
	.byte	107
	.byte	71
	.byte	101
	.byte	116
	.byte	85
	.byte	110
	.byte	105
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	87
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjpB_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_quickGetUniform1_ct
.type EngineziGraphicsziShaders_quickGetUniform1_ct, @object
EngineziGraphicsziShaders_quickGetUniform1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjpy_str
	.quad	cjpB_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cjpK_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	106
	.byte	112
	.byte	114
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cjpN_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sjpr_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjpK_str
	.quad	cjpN_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_quickGetUniform1_srt-(sjpr_info)+0
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sjpr_info:
.LcjpS:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sjpr_ct
	je .LcjpV
.LcjpX:
	incq sjpr_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movq %r14,%rdi
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglGetUniformLocation_info
.LcjpV:
	movq ticky_entry_ctrs,%rax
	movq %rax,sjpr_ct+56
	movq $sjpr_ct,ticky_entry_ctrs
	movq $1,sjpr_ct
	jmp .LcjpX
	.size sjpr_info, .-sjpr_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_quickGetUniform1_srt-(EngineziGraphicsziShaders_quickGetUniform1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziShaders_quickGetUniform1_info
.type EngineziGraphicsziShaders_quickGetUniform1_info, @object
EngineziGraphicsziShaders_quickGetUniform1_info:
.Lcjq1:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcjq5
	addq $2,EngineziGraphicsziShaders_quickGetUniform1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_quickGetUniform1_ct
	je .Lcjq6
.Lcjq7:
	incq EngineziGraphicsziShaders_quickGetUniform1_ct+40
	movq $sjpr_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rsi,%r14
	leaq -6(%r12),%rsi
	jmp base_ForeignziCziString_withCString1_info
.Lcjq5:
	movq $16,192(%r13)
.Lcjq3:
	movl $EngineziGraphicsziShaders_quickGetUniform1_closure,%ebx
	jmp *-8(%r13)
.Lcjq6:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_quickGetUniform1_ct+56
	movq $EngineziGraphicsziShaders_quickGetUniform1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_quickGetUniform1_ct
	jmp .Lcjq7
	.size EngineziGraphicsziShaders_quickGetUniform1_info, .-EngineziGraphicsziShaders_quickGetUniform1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_quickGetUniform_srt:
	.quad	EngineziGraphicsziShaders_quickGetUniform1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_quickGetUniform_closure
.type EngineziGraphicsziShaders_quickGetUniform_closure, @object
EngineziGraphicsziShaders_quickGetUniform_closure:
	.quad	EngineziGraphicsziShaders_quickGetUniform_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjqg_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	113
	.byte	117
	.byte	105
	.byte	99
	.byte	107
	.byte	71
	.byte	101
	.byte	116
	.byte	85
	.byte	110
	.byte	105
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	97
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjqj_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_quickGetUniform_ct
.type EngineziGraphicsziShaders_quickGetUniform_ct, @object
EngineziGraphicsziShaders_quickGetUniform_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjqg_str
	.quad	cjqj_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_quickGetUniform_srt-(EngineziGraphicsziShaders_quickGetUniform_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_quickGetUniform_info
.type EngineziGraphicsziShaders_quickGetUniform_info, @object
EngineziGraphicsziShaders_quickGetUniform_info:
.Lcjqo:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_quickGetUniform_ct
	je .Lcjqr
.Lcjqt:
	incq EngineziGraphicsziShaders_quickGetUniform_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_quickGetUniform1_info
.Lcjqr:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_quickGetUniform_ct+56
	movq $EngineziGraphicsziShaders_quickGetUniform_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_quickGetUniform_ct
	jmp .Lcjqt
	.size EngineziGraphicsziShaders_quickGetUniform_info, .-EngineziGraphicsziShaders_quickGetUniform_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_getMatrixFromGL1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetFloatv_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getMatrixFromGL1_closure
.type EngineziGraphicsziShaders_getMatrixFromGL1_closure, @object
EngineziGraphicsziShaders_getMatrixFromGL1_closure:
	.quad	EngineziGraphicsziShaders_getMatrixFromGL1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjqZ_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	71
	.byte	76
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	49
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjr2_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getMatrixFromGL1_ct
.type EngineziGraphicsziShaders_getMatrixFromGL1_ct, @object
EngineziGraphicsziShaders_getMatrixFromGL1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjqZ_str
	.quad	cjr2_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	130
	.quad	32
sjqC_info:
.Lcjrq:
	incq RET_UNBOXED_TUP_ctr
	addq $24,%rbp
	jmp *0(%rbp)
	.size sjqC_info, .-sjqC_info
.text
	.align 8
	.quad	130
	.quad	32
sjqy_info:
.Lcjrt:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcjrx
	addq $2,EngineziGraphicsziShaders_getMatrixFromGL1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 8(%rbp),%rax
	leaq 16(%rax),%r14
	movq 7(%rbx),%rdi
	movq %r14,%rsi
	subq $8,%rsp
	movl $0,%eax
	movq 16(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movq $base_GHCziPtr_Ptr_con_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfStorableCFloat_closure,%r14d
	movl $16,%esi
	leaq -7(%r12),%rdi
	movq $sjqC_info,0(%rbp)
	jmp base_ForeignziMarshalziArray_zdwa8_info
.Lcjrx:
	movq $16,192(%r13)
.Lcjrv:
	jmp *-16(%r13)
	.size sjqy_info, .-sjqy_info
.text
	.align 8
	.quad	2
	.quad	32
sjqz_info:
.LcjrD:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sjqy_info,0(%rbp)
	testq $7,%rbx
	jne sjqy_info
	jmp *(%rbx)
	.size sjqz_info, .-sjqz_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_getMatrixFromGL1_srt-(sjqB_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sjqB_info:
.LcjrM:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetFloatv_closure,%ebx
	movq $sjqz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjqz_info
	jmp *(%rbx)
	.size sjqB_info, .-sjqB_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_getMatrixFromGL1_srt-(EngineziGraphicsziShaders_getMatrixFromGL1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_getMatrixFromGL1_info
.type EngineziGraphicsziShaders_getMatrixFromGL1_info, @object
EngineziGraphicsziShaders_getMatrixFromGL1_info:
.LcjrS:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjrU
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_getMatrixFromGL1_ct
	je .LcjrV
.LcjrW:
	incq EngineziGraphicsziShaders_getMatrixFromGL1_ct+40
	movq %r14,-8(%rbp)
	movl $4,%ebx
	movl $4,%r14d
	movq $sjqB_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
.LcjrU:
	movl $EngineziGraphicsziShaders_getMatrixFromGL1_closure,%ebx
	jmp *-8(%r13)
.LcjrV:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_getMatrixFromGL1_ct+56
	movq $EngineziGraphicsziShaders_getMatrixFromGL1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_getMatrixFromGL1_ct
	jmp .LcjrW
	.size EngineziGraphicsziShaders_getMatrixFromGL1_info, .-EngineziGraphicsziShaders_getMatrixFromGL1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_getMatrixFromGL_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetFloatv_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getMatrixFromGL_closure
.type EngineziGraphicsziShaders_getMatrixFromGL_closure, @object
EngineziGraphicsziShaders_getMatrixFromGL_closure:
	.quad	EngineziGraphicsziShaders_getMatrixFromGL_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjs6_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	71
	.byte	76
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjs9_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getMatrixFromGL_ct
.type EngineziGraphicsziShaders_getMatrixFromGL_ct, @object
EngineziGraphicsziShaders_getMatrixFromGL_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjs6_str
	.quad	cjs9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_getMatrixFromGL_srt-(EngineziGraphicsziShaders_getMatrixFromGL_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_getMatrixFromGL_info
.type EngineziGraphicsziShaders_getMatrixFromGL_info, @object
EngineziGraphicsziShaders_getMatrixFromGL_info:
.Lcjse:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_getMatrixFromGL_ct
	je .Lcjsh
.Lcjsj:
	incq EngineziGraphicsziShaders_getMatrixFromGL_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_getMatrixFromGL1_info
.Lcjsh:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_getMatrixFromGL_ct+56
	movq $EngineziGraphicsziShaders_getMatrixFromGL_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_getMatrixFromGL_ct
	jmp .Lcjsj
	.size EngineziGraphicsziShaders_getMatrixFromGL_info, .-EngineziGraphicsziShaders_getMatrixFromGL_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_getAttrLocs1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetAttribLocation_closure
	.quad	base_ForeignziCziString_withCString1_closure
	.quad	EngineziGraphicsziShaders_getAttrLocs1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getAttrLocs1_closure
.type EngineziGraphicsziShaders_getAttrLocs1_closure, @object
EngineziGraphicsziShaders_getAttrLocs1_closure:
	.quad	EngineziGraphicsziShaders_getAttrLocs1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjsS_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	76
	.byte	111
	.byte	99
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	50
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjsV_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getAttrLocs1_ct
.type EngineziGraphicsziShaders_getAttrLocs1_ct, @object
EngineziGraphicsziShaders_getAttrLocs1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjsS_str
	.quad	cjsV_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cjt9_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	106
	.byte	115
	.byte	113
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cjtc_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sjsq_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjt9_str
	.quad	cjtc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_getAttrLocs1_srt-(sjsq_info)+0
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sjsq_info:
.Lcjth:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sjsq_ct
	je .Lcjtk
.Lcjtm:
	incq sjsq_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movq %r14,%rdi
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetAttribLocation_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglGetAttribLocation_info
.Lcjtk:
	movq ticky_entry_ctrs,%rax
	movq %rax,sjsq_ct+56
	movq $sjsq_ct,ticky_entry_ctrs
	movq $1,sjsq_ct
	jmp .Lcjtm
	.size sjsq_info, .-sjsq_info
.text
	.align 8
	.quad	0
	.quad	32
sjsr_info:
.LcjtA:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcjtG
	addq $2,EngineziGraphicsziShaders_getAttrLocs1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	movl %eax,%eax
	incq RET_NEW_ctr
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcjtG:
	movq $16,192(%r13)
.LcjtE:
	jmp *-16(%r13)
	.size sjsr_info, .-sjsr_info
.text
	.align 8
	.quad	1
	.quad	17
sj9n_info:
.LcjtM:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjtO
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sjsr_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sjsr_info
	jmp *(%rbx)
.LcjtO:
	jmp *-16(%r13)
	.size sj9n_info, .-sj9n_info
.text
	.align 8
	.quad	1
	.quad	32
sjss_info:
.LcjtT:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcjtX
	addq $6,EngineziGraphicsziShaders_getAttrLocs1_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $sj9n_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcjtX:
	movq $48,192(%r13)
.LcjtV:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sjss_info, .-sjss_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_getAttrLocs1_srt-(sjst_info)+16
	.long	0
	.quad	2
	.quad	4294967328
sjst_info:
.Lcju2:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 8(%rbp),%rsi
	movq $sjss_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziGraphicsziShaders_getAttrLocs1_info
	.size sjst_info, .-sjst_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_getAttrLocs1_srt-(sjsn_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sjsn_info:
.Lcju7:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcju8
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.Lcju8:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcjuc
	addq $2,EngineziGraphicsziShaders_getAttrLocs1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $sjsq_info,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%r14
	leaq -6(%r12),%rsi
	movq $sjst_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_ForeignziCziString_withCString1_info
.Lcjuc:
	movq $16,192(%r13)
.Lcjua:
	jmp *-16(%r13)
	.size sjsn_info, .-sjsn_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_getAttrLocs1_srt-(EngineziGraphicsziShaders_getAttrLocs1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	30064771087
.globl EngineziGraphicsziShaders_getAttrLocs1_info
.type EngineziGraphicsziShaders_getAttrLocs1_info, @object
EngineziGraphicsziShaders_getAttrLocs1_info:
.Lcjuk:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjum
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_getAttrLocs1_ct
	je .Lcjun
.Lcjuo:
	incq EngineziGraphicsziShaders_getAttrLocs1_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sjsn_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sjsn_info
	jmp *(%rbx)
.Lcjum:
	movl $EngineziGraphicsziShaders_getAttrLocs1_closure,%ebx
	jmp *-8(%r13)
.Lcjun:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_getAttrLocs1_ct+56
	movq $EngineziGraphicsziShaders_getAttrLocs1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_getAttrLocs1_ct
	jmp .Lcjuo
	.size EngineziGraphicsziShaders_getAttrLocs1_info, .-EngineziGraphicsziShaders_getAttrLocs1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_getAttrLocs_srt:
	.quad	EngineziGraphicsziShaders_getAttrLocs1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getAttrLocs_closure
.type EngineziGraphicsziShaders_getAttrLocs_closure, @object
EngineziGraphicsziShaders_getAttrLocs_closure:
	.quad	EngineziGraphicsziShaders_getAttrLocs_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjuB_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	76
	.byte	111
	.byte	99
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjuE_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_getAttrLocs_ct
.type EngineziGraphicsziShaders_getAttrLocs_ct, @object
EngineziGraphicsziShaders_getAttrLocs_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjuB_str
	.quad	cjuE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_getAttrLocs_srt-(EngineziGraphicsziShaders_getAttrLocs_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_getAttrLocs_info
.type EngineziGraphicsziShaders_getAttrLocs_info, @object
EngineziGraphicsziShaders_getAttrLocs_info:
.LcjuJ:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_getAttrLocs_ct
	je .LcjuM
.LcjuO:
	incq EngineziGraphicsziShaders_getAttrLocs_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_getAttrLocs1_info
.LcjuM:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_getAttrLocs_ct+56
	movq $EngineziGraphicsziShaders_getAttrLocs_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_getAttrLocs_ct
	jmp .LcjuO
	.size EngineziGraphicsziShaders_getAttrLocs_info, .-EngineziGraphicsziShaders_getAttrLocs_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_setUniforms1_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziList_znznzusub_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform4f_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform3f_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform2f_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform1f_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure
	.quad	base_ForeignziCziString_withCString1_closure
	.quad	base_GHCziIOziHandleziFD_stdout_closure
	.quad	base_GHCziIOziHandleziText_hPutStr2_closure
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setUniforms1_closure
.type EngineziGraphicsziShaders_setUniforms1_closure, @object
EngineziGraphicsziShaders_setUniforms1_closure:
	.quad	EngineziGraphicsziShaders_setUniforms1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjwY_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	115
	.byte	101
	.byte	116
	.byte	85
	.byte	110
	.byte	105
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	85
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjx1_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setUniforms1_ct
.type EngineziGraphicsziShaders_setUniforms1_ct, @object
EngineziGraphicsziShaders_setUniforms1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjwY_str
	.quad	cjx1_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cjxm_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	106
	.byte	117
	.byte	90
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cjxp_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sjuZ_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjxm_str
	.quad	cjxp_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjuZ_info)+48
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sjuZ_info:
.Lcjxu:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sjuZ_ct
	je .Lcjxx
.Lcjxz:
	incq sjuZ_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movq %r14,%rdi
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglGetUniformLocation_info
.Lcjxx:
	movq ticky_entry_ctrs,%rax
	movq %rax,sjuZ_ct+56
	movq $sjuZ_ct,ticky_entry_ctrs
	movq $1,sjuZ_ct
	jmp .Lcjxz
	.size sjuZ_info, .-sjuZ_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sj9Q_info)+80
	.long	0
	.quad	196
	.quad	4294967328
sj9Q_info:
.LcjxI:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	addq $40,%rbp
	jmp EngineziGraphicsziShaders_setUniforms1_info
	.size sj9Q_info, .-sj9Q_info
.text
	.align 8
	.quad	4294967296
	.quad	18
sj9V_info:
.LcjxZ:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjy1
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	movq 16(%rbx),%rsi
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%edi
	addq $-16,%rbp
	jmp base_GHCziShow_zdwshowSignedInt_info
.Lcjy1:
	jmp *-16(%r13)
	.size sj9V_info, .-sj9V_info
.section .rodata
	.align 8
.align 1
cjy5_str:
	.byte	58
	.byte	32
	.byte	0
.text
	.align 8
	.quad	4294967296
	.quad	18
sj9X_info:
.Lcjy9:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjyb
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcjyd
	addq $3,EngineziGraphicsziShaders_setUniforms1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sj9V_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $cjy5_str,%r14d
	leaq -16(%r12),%rsi
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackAppendCStringzh_info
.Lcjyd:
	movq $24,192(%r13)
.Lcjyb:
	jmp *-16(%r13)
	.size sj9X_info, .-sj9X_info
.text
	.align 8
	.quad	4294967297
	.quad	20
sj9Z_info:
.Lcjyj:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjyl
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcjyn
	addq $3,EngineziGraphicsziShaders_setUniforms1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sj9X_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	leaq -16(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.Lcjyn:
	movq $24,192(%r13)
.Lcjyl:
	jmp *-16(%r13)
	.size sj9Z_info, .-sj9Z_info
.section .rodata
	.align 8
.align 1
cjys_str:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	108
	.byte	101
	.byte	110
	.byte	103
	.byte	116
	.byte	104
	.byte	32
	.byte	118
	.byte	97
	.byte	108
	.byte	117
	.byte	101
	.byte	32
	.byte	105
	.byte	110
	.byte	32
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	85
	.byte	110
	.byte	105
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	32
	.byte	0
.text
	.align 8
	.quad	4294967297
	.quad	20
sjuT_info:
.Lcjyw:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcjyy
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcjyA
	addq $4,EngineziGraphicsziShaders_setUniforms1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sj9Z_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $cjys_str,%r14d
	leaq -24(%r12),%rsi
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackAppendCStringzh_info
.LcjyA:
	movq $32,192(%r13)
.Lcjyy:
	jmp *-16(%r13)
	.size sjuT_info, .-sjuT_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv3_info)+80
	.long	0
	.quad	2
	.quad	4294967328
sjv3_info:
.LcjyI:
	addq $-16,%rbp
	jmp sj9Q_info
	.size sjv3_info, .-sjv3_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv8_info)+80
	.long	0
	.quad	196
	.quad	4294967328
sjv8_info:
.Lcjz2:
	movq 8(%rbp),%rdi
	movss 7(%rbx),%xmm0
	subq $8,%rsp
	movl $1,%eax
	movq 16(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	jmp sj9Q_info
	.size sjv8_info, .-sjv8_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv4_info)+0
	.long	0
	.quad	196
	.quad	4402341478432
sjv4_info:
.Lcjze:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcjzf
	movl $base_GHCziList_badHead_closure,%ebx
	addq $40,%rbp
	jmp stg_ap_0_fast
.Lcjzf:
	movq 6(%rbx),%rbx
	movq $sjv8_info,0(%rbp)
	testq $7,%rbx
	jne sjv8_info
	jmp *(%rbx)
	.size sjv4_info, .-sjv4_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv5_info)+0
	.long	0
	.quad	132
	.quad	4402341478432
sjv5_info:
.Lcjzo:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjv4_info,0(%rbp)
	testq $7,%rbx
	jne sjv4_info
	jmp *(%rbx)
	.size sjv5_info, .-sjv5_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv6_info)+0
	.long	0
	.quad	261
	.quad	4402341478432
sjv6_info:
.Lcjzx:
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rbx
	movq $sjv5_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjv5_info
	jmp *(%rbx)
	.size sjv6_info, .-sjv6_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvc_info)+80
	.long	0
	.quad	453
	.quad	4294967328
sjvc_info:
.LcjzZ:
	movq 16(%rbp),%rdi
	movss 8(%rbp),%xmm0
	movss 7(%rbx),%xmm1
	subq $8,%rsp
	movl $2,%eax
	movq 24(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	addq $8,%rbp
	jmp sj9Q_info
	.size sjvc_info, .-sjvc_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvd_info)+8
	.long	0
	.quad	389
	.quad	2203318222880
sjvd_info:
.LcjAb:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movl $1,%esi
	movq $sjvc_info,0(%rbp)
	jmp base_GHCziList_znznzusub_info
	.size sjvd_info, .-sjvd_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjaB_info)+0
	.long	0
	.quad	196
	.quad	4410931413024
sjaB_info:
.LcjAh:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjAi
	movl $base_GHCziList_badHead_closure,%ebx
	addq $40,%rbp
	jmp stg_ap_0_fast
.LcjAi:
	movq %rbx,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjvd_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjvd_info
	jmp *(%rbx)
	.size sjaB_info, .-sjaB_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv9_info)+0
	.long	0
	.quad	132
	.quad	4410931413024
sjv9_info:
.LcjAr:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjaB_info,0(%rbp)
	testq $7,%rbx
	jne sjaB_info
	jmp *(%rbx)
	.size sjv9_info, .-sjv9_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjva_info)+0
	.long	0
	.quad	261
	.quad	4410931413024
sjva_info:
.LcjAA:
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rbx
	movq $sjv9_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjv9_info
	jmp *(%rbx)
	.size sjva_info, .-sjva_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvh_info)+80
	.long	0
	.quad	966
	.quad	4294967328
sjvh_info:
.LcjB6:
	movq 24(%rbp),%rdi
	movss 8(%rbp),%xmm0
	movss 16(%rbp),%xmm1
	movss 7(%rbx),%xmm2
	subq $8,%rsp
	movl $3,%eax
	movq 32(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	addq $16,%rbp
	jmp sj9Q_info
	.size sjvh_info, .-sjvh_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvi_info)+8
	.long	0
	.quad	838
	.quad	2203318222880
sjvi_info:
.LcjBk:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movl $2,%esi
	movq $sjvh_info,0(%rbp)
	jmp base_GHCziList_znznzusub_info
	.size sjvi_info, .-sjvi_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvj_info)+8
	.long	0
	.quad	389
	.quad	2203318222880
sjvj_info:
.LcjBo:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 8(%rbp),%r14
	movl $1,%esi
	movq $sjvi_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_znznzusub_info
	.size sjvj_info, .-sjvj_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjaY_info)+0
	.long	0
	.quad	196
	.quad	4410931413024
sjaY_info:
.LcjBu:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjBv
	movl $base_GHCziList_badHead_closure,%ebx
	addq $40,%rbp
	jmp stg_ap_0_fast
.LcjBv:
	movq %rbx,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjvj_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjvj_info
	jmp *(%rbx)
	.size sjaY_info, .-sjaY_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjve_info)+0
	.long	0
	.quad	132
	.quad	4410931413024
sjve_info:
.LcjBE:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjaY_info,0(%rbp)
	testq $7,%rbx
	jne sjaY_info
	jmp *(%rbx)
	.size sjve_info, .-sjve_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvf_info)+0
	.long	0
	.quad	261
	.quad	4410931413024
sjvf_info:
.LcjBN:
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rbx
	movq $sjve_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjve_info
	jmp *(%rbx)
	.size sjvf_info, .-sjvf_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvn_info)+80
	.long	0
	.quad	1991
	.quad	4294967328
sjvn_info:
.LcjCn:
	movq 32(%rbp),%rdi
	movss 16(%rbp),%xmm0
	movss 8(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	subq $8,%rsp
	movl $4,%eax
	movq 40(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	addq $24,%rbp
	jmp sj9Q_info
	.size sjvn_info, .-sjvn_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvo_info)+8
	.long	0
	.quad	1735
	.quad	2203318222880
sjvo_info:
.LcjCD:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movl $3,%esi
	movq $sjvn_info,0(%rbp)
	jmp base_GHCziList_znznzusub_info
	.size sjvo_info, .-sjvo_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvp_info)+8
	.long	0
	.quad	838
	.quad	2203318222880
sjvp_info:
.LcjCH:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 16(%rbp),%r14
	movl $2,%esi
	movq $sjvo_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_znznzusub_info
	.size sjvp_info, .-sjvp_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvq_info)+8
	.long	0
	.quad	389
	.quad	2203318222880
sjvq_info:
.LcjCL:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 8(%rbp),%r14
	movl $1,%esi
	movq $sjvp_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_znznzusub_info
	.size sjvq_info, .-sjvq_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjbo_info)+0
	.long	0
	.quad	196
	.quad	4410931413024
sjbo_info:
.LcjCR:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjCS
	movl $base_GHCziList_badHead_closure,%ebx
	addq $40,%rbp
	jmp stg_ap_0_fast
.LcjCS:
	movq %rbx,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjvq_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjvq_info
	jmp *(%rbx)
	.size sjbo_info, .-sjbo_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvk_info)+0
	.long	0
	.quad	132
	.quad	4410931413024
sjvk_info:
.LcjD1:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjbo_info,0(%rbp)
	testq $7,%rbx
	jne sjbo_info
	jmp *(%rbx)
	.size sjvk_info, .-sjvk_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjvl_info)+0
	.long	0
	.quad	261
	.quad	4410931413024
sjvl_info:
.LcjDa:
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rbx
	movq $sjvk_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjvk_info
	jmp *(%rbx)
	.size sjvl_info, .-sjvl_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sj9T_info)+0
	.long	0
	.quad	5
	.quad	7967164334112
sj9T_info:
.LcjDh:
	cmpq $3,%rbx
	jl .LcjDz
	cmpq $4,%rbx
	jl .LcjDp
	cmpq $4,%rbx
	jne .LcjDj
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform4f_closure,%ebx
	movq $sjvl_info,0(%rbp)
	testq $7,%rbx
	jne sjvl_info
	jmp *(%rbx)
.LcjDj:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcjDn
	addq $4,EngineziGraphicsziShaders_setUniforms1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sjuT_info,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_GHCziIOziHandleziFD_stdout_closure,%r14d
	leaq -24(%r12),%rsi
	movl $ghczmprim_GHCziTypes_True_closure+2,%edi
	movq $sjv3_info,24(%rbp)
	addq $24,%rbp
	jmp base_GHCziIOziHandleziText_hPutStr2_info
.LcjDn:
	movq $32,192(%r13)
	jmp stg_gc_unbx_r1
.LcjDp:
	cmpq $3,%rbx
	jne .LcjDj
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform3f_closure,%ebx
	movq $sjvf_info,0(%rbp)
	testq $7,%rbx
	jne sjvf_info
	jmp *(%rbx)
.LcjDu:
	cmpq $1,%rbx
	jne .LcjDj
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform1f_closure,%ebx
	movq $sjv6_info,0(%rbp)
	testq $7,%rbx
	jne sjv6_info
	jmp *(%rbx)
.LcjDz:
	cmpq $2,%rbx
	jl .LcjDu
	cmpq $2,%rbx
	jne .LcjDj
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform2f_closure,%ebx
	movq $sjva_info,0(%rbp)
	testq $7,%rbx
	jne sjva_info
	jmp *(%rbx)
	.size sj9T_info, .-sj9T_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv2_info)+0
	.long	0
	.quad	4
	.quad	7967164334112
sjv2_info:
.LcjDJ:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%r14
	xorl %esi,%esi
	movq $sj9T_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_zdwlen_info
	.size sjv2_info, .-sjv2_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv0_info)+0
	.long	0
	.quad	3
	.quad	8791798054944
sjv0_info:
.LcjDM:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcjDQ
	addq $2,EngineziGraphicsziShaders_setUniforms1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $sjuZ_info,-8(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%r14
	leaq -6(%r12),%rsi
	movq $sjv2_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_ForeignziCziString_withCString1_info
.LcjDQ:
	movq $16,192(%r13)
.LcjDO:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sjv0_info, .-sjv0_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjv1_info)+0
	.long	0
	.quad	2
	.quad	8791798054944
sjv1_info:
.LcjDU:
	incq UNKNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sjv0_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_v_fast
	.size sjv1_info, .-sjv1_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(sjuS_info)+0
	.long	0
	.quad	1
	.quad	8791798054944
sjuS_info:
.LcjE0:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjE1
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcjE1:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjv1_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjv1_info
	jmp *(%rbx)
	.size sjuS_info, .-sjuS_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms1_srt-(EngineziGraphicsziShaders_setUniforms1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	8791798054927
.globl EngineziGraphicsziShaders_setUniforms1_info
.type EngineziGraphicsziShaders_setUniforms1_info, @object
EngineziGraphicsziShaders_setUniforms1_info:
.LcjEb:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjEd
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_setUniforms1_ct
	je .LcjEe
.LcjEf:
	incq EngineziGraphicsziShaders_setUniforms1_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sjuS_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sjuS_info
	jmp *(%rbx)
.LcjEd:
	movl $EngineziGraphicsziShaders_setUniforms1_closure,%ebx
	jmp *-8(%r13)
.LcjEe:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_setUniforms1_ct+56
	movq $EngineziGraphicsziShaders_setUniforms1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_setUniforms1_ct
	jmp .LcjEf
	.size EngineziGraphicsziShaders_setUniforms1_info, .-EngineziGraphicsziShaders_setUniforms1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_setUniforms_srt:
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setUniforms_closure
.type EngineziGraphicsziShaders_setUniforms_closure, @object
EngineziGraphicsziShaders_setUniforms_closure:
	.quad	EngineziGraphicsziShaders_setUniforms_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjEs_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	115
	.byte	101
	.byte	116
	.byte	85
	.byte	110
	.byte	105
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	56
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjEv_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setUniforms_ct
.type EngineziGraphicsziShaders_setUniforms_ct, @object
EngineziGraphicsziShaders_setUniforms_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjEs_str
	.quad	cjEv_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_setUniforms_srt-(EngineziGraphicsziShaders_setUniforms_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_setUniforms_info
.type EngineziGraphicsziShaders_setUniforms_info, @object
EngineziGraphicsziShaders_setUniforms_info:
.LcjEA:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_setUniforms_ct
	je .LcjED
.LcjEF:
	incq EngineziGraphicsziShaders_setUniforms_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_setUniforms1_info
.LcjED:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_setUniforms_ct+56
	movq $EngineziGraphicsziShaders_setUniforms_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_setUniforms_ct
	jmp .LcjEF
	.size EngineziGraphicsziShaders_setUniforms_info, .-EngineziGraphicsziShaders_setUniforms_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_disableShaderAttribs1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDisableVertexAttribArray_closure
	.quad	EngineziGraphicsziShaders_disableShaderAttribs1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_disableShaderAttribs1_closure
.type EngineziGraphicsziShaders_disableShaderAttribs1_closure, @object
EngineziGraphicsziShaders_disableShaderAttribs1_closure:
	.quad	EngineziGraphicsziShaders_disableShaderAttribs1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjFa_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	100
	.byte	105
	.byte	115
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	51
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjFd_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_disableShaderAttribs1_ct
.type EngineziGraphicsziShaders_disableShaderAttribs1_ct, @object
EngineziGraphicsziShaders_disableShaderAttribs1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjFa_str
	.quad	cjFd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_disableShaderAttribs1_srt-(sjEL_info)+8
	.long	0
	.quad	66
	.quad	4294967328
sjEL_info:
.LcjFA:
	movq 8(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp EngineziGraphicsziShaders_disableShaderAttribs1_info
	.size sjEL_info, .-sjEL_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_disableShaderAttribs1_srt-(sjEM_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sjEM_info:
.LcjFI:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDisableVertexAttribArray_closure,%ebx
	movq $sjEL_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjEL_info
	jmp *(%rbx)
	.size sjEM_info, .-sjEM_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_disableShaderAttribs1_srt-(sjEN_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sjEN_info:
.LcjFP:
	movq 7(%rbx),%rbx
	movq $sjEM_info,0(%rbp)
	testq $7,%rbx
	jne sjEM_info
	jmp *(%rbx)
	.size sjEN_info, .-sjEN_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_disableShaderAttribs1_srt-(sjEJ_info)+0
	.long	0
	.quad	0
	.quad	12884901920
sjEJ_info:
.LcjFX:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjFY
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcjFY:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjEN_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjEN_info
	jmp *(%rbx)
	.size sjEJ_info, .-sjEJ_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_disableShaderAttribs1_srt-(EngineziGraphicsziShaders_disableShaderAttribs1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziShaders_disableShaderAttribs1_info
.type EngineziGraphicsziShaders_disableShaderAttribs1_info, @object
EngineziGraphicsziShaders_disableShaderAttribs1_info:
.LcjG8:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjGa
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_disableShaderAttribs1_ct
	je .LcjGb
.LcjGc:
	incq EngineziGraphicsziShaders_disableShaderAttribs1_ct+40
	movq %r14,%rbx
	movq $sjEJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjEJ_info
	jmp *(%rbx)
.LcjGa:
	movl $EngineziGraphicsziShaders_disableShaderAttribs1_closure,%ebx
	jmp *-8(%r13)
.LcjGb:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_disableShaderAttribs1_ct+56
	movq $EngineziGraphicsziShaders_disableShaderAttribs1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_disableShaderAttribs1_ct
	jmp .LcjGc
	.size EngineziGraphicsziShaders_disableShaderAttribs1_info, .-EngineziGraphicsziShaders_disableShaderAttribs1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_disableShaderAttribs_srt:
	.quad	EngineziGraphicsziShaders_disableShaderAttribs1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_disableShaderAttribs_closure
.type EngineziGraphicsziShaders_disableShaderAttribs_closure, @object
EngineziGraphicsziShaders_disableShaderAttribs_closure:
	.quad	EngineziGraphicsziShaders_disableShaderAttribs_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjGp_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	100
	.byte	105
	.byte	115
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjGs_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_disableShaderAttribs_ct
.type EngineziGraphicsziShaders_disableShaderAttribs_ct, @object
EngineziGraphicsziShaders_disableShaderAttribs_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjGp_str
	.quad	cjGs_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_disableShaderAttribs_srt-(EngineziGraphicsziShaders_disableShaderAttribs_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_disableShaderAttribs_info
.type EngineziGraphicsziShaders_disableShaderAttribs_info, @object
EngineziGraphicsziShaders_disableShaderAttribs_info:
.LcjGx:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_disableShaderAttribs_ct
	je .LcjGA
.LcjGC:
	incq EngineziGraphicsziShaders_disableShaderAttribs_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_disableShaderAttribs1_info
.LcjGA:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_disableShaderAttribs_ct+56
	movq $EngineziGraphicsziShaders_disableShaderAttribs_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_disableShaderAttribs_ct
	jmp .LcjGC
	.size EngineziGraphicsziShaders_disableShaderAttribs_info, .-EngineziGraphicsziShaders_disableShaderAttribs_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_setShaderAttribs1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindBuffer_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglVertexAttribPointer_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnableVertexAttribArray_closure
	.quad	EngineziGraphicsziShaders_setShaderAttribs1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setShaderAttribs1_closure
.type EngineziGraphicsziShaders_setShaderAttribs1_closure, @object
EngineziGraphicsziShaders_setShaderAttribs1_closure:
	.quad	EngineziGraphicsziShaders_setShaderAttribs1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjHA_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	115
	.byte	101
	.byte	116
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	86
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjHD_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setShaderAttribs1_ct
.type EngineziGraphicsziShaders_setShaderAttribs1_ct, @object
EngineziGraphicsziShaders_setShaderAttribs1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjHA_str
	.quad	cjHD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGK_info)+24
	.long	0
	.quad	195
	.quad	4294967328
sjGK_info:
.LcjIi:
	movq 16(%rbp),%rax
	movslq %eax,%rsi
	movq 8(%rbp),%rdi
	movl $5126,%edx
	xorl %ecx,%ecx
	xorl %r8d,%r8d
	xorl %r9d,%r9d
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	addq $32,%rbp
	jmp EngineziGraphicsziShaders_setShaderAttribs1_info
	.size sjGK_info, .-sjGK_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGM_info)+8
	.long	0
	.quad	452
	.quad	21474836512
sjGM_info:
.LcjIx:
	movq 8(%rbp),%rsi
	movl $34962,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglVertexAttribPointer_closure,%ebx
	movq $sjGK_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjGK_info
	jmp *(%rbx)
	.size sjGM_info, .-sjGM_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGO_info)+0
	.long	0
	.quad	452
	.quad	47244640288
sjGO_info:
.LcjIF:
	movq 16(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindBuffer_closure,%ebx
	movq $sjGM_info,0(%rbp)
	testq $7,%rbx
	jne sjGM_info
	jmp *(%rbx)
	.size sjGO_info, .-sjGO_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGP_info)+0
	.long	0
	.quad	195
	.quad	64424509472
sjGP_info:
.LcjIN:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnableVertexAttribArray_closure,%ebx
	movq $sjGO_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjGO_info
	jmp *(%rbx)
	.size sjGP_info, .-sjGP_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGQ_info)+0
	.long	0
	.quad	131
	.quad	64424509472
sjGQ_info:
.LcjIU:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjGP_info,0(%rbp)
	testq $7,%rbx
	jne sjGP_info
	jmp *(%rbx)
	.size sjGQ_info, .-sjGQ_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGR_info)+0
	.long	0
	.quad	3
	.quad	64424509472
sjGR_info:
.LcjJ3:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sjGQ_info,0(%rbp)
	testq $7,%rbx
	jne sjGQ_info
	jmp *(%rbx)
	.size sjGR_info, .-sjGR_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGS_info)+0
	.long	0
	.quad	1
	.quad	64424509472
sjGS_info:
.LcjJc:
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sjGR_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sjGR_info
	jmp *(%rbx)
	.size sjGS_info, .-sjGS_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(sjGG_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sjGG_info:
.LcjJm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjJn
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcjJn:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjGS_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjGS_info
	jmp *(%rbx)
	.size sjGG_info, .-sjGG_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs1_srt-(EngineziGraphicsziShaders_setShaderAttribs1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	64424509455
.globl EngineziGraphicsziShaders_setShaderAttribs1_info
.type EngineziGraphicsziShaders_setShaderAttribs1_info, @object
EngineziGraphicsziShaders_setShaderAttribs1_info:
.LcjJx:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjJz
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_setShaderAttribs1_ct
	je .LcjJA
.LcjJB:
	incq EngineziGraphicsziShaders_setShaderAttribs1_ct+40
	movq %r14,%rbx
	movq $sjGG_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjGG_info
	jmp *(%rbx)
.LcjJz:
	movl $EngineziGraphicsziShaders_setShaderAttribs1_closure,%ebx
	jmp *-8(%r13)
.LcjJA:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_setShaderAttribs1_ct+56
	movq $EngineziGraphicsziShaders_setShaderAttribs1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_setShaderAttribs1_ct
	jmp .LcjJB
	.size EngineziGraphicsziShaders_setShaderAttribs1_info, .-EngineziGraphicsziShaders_setShaderAttribs1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_setShaderAttribs_srt:
	.quad	EngineziGraphicsziShaders_setShaderAttribs1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setShaderAttribs_closure
.type EngineziGraphicsziShaders_setShaderAttribs_closure, @object
EngineziGraphicsziShaders_setShaderAttribs_closure:
	.quad	EngineziGraphicsziShaders_setShaderAttribs_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjJO_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	115
	.byte	101
	.byte	116
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	57
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjJR_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_setShaderAttribs_ct
.type EngineziGraphicsziShaders_setShaderAttribs_ct, @object
EngineziGraphicsziShaders_setShaderAttribs_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjJO_str
	.quad	cjJR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_setShaderAttribs_srt-(EngineziGraphicsziShaders_setShaderAttribs_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_setShaderAttribs_info
.type EngineziGraphicsziShaders_setShaderAttribs_info, @object
EngineziGraphicsziShaders_setShaderAttribs_info:
.LcjJW:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_setShaderAttribs_ct
	je .LcjJZ
.LcjK1:
	incq EngineziGraphicsziShaders_setShaderAttribs_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_setShaderAttribs1_info
.LcjJZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_setShaderAttribs_ct+56
	movq $EngineziGraphicsziShaders_setShaderAttribs_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_setShaderAttribs_ct
	jmp .LcjK1
	.size EngineziGraphicsziShaders_setShaderAttribs_info, .-EngineziGraphicsziShaders_setShaderAttribs_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_zdwa_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_zdwa_closure
.type EngineziGraphicsziShaders_zdwa_closure, @object
EngineziGraphicsziShaders_zdwa_closure:
	.quad	EngineziGraphicsziShaders_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjKx_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjKz_str:
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_zdwa_ct
.type EngineziGraphicsziShaders_zdwa_ct, @object
EngineziGraphicsziShaders_zdwa_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjKx_str
	.quad	cjKz_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sjK6_info:
.LcjKM:
	movl $3553,%edi
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
	.size sjK6_info, .-sjK6_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_zdwa_srt-(sjK8_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sjK8_info:
.LcjKQ:
	movl $33984,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $sjK6_info,0(%rbp)
	testq $7,%rbx
	jne sjK6_info
	jmp *(%rbx)
	.size sjK8_info, .-sjK8_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_zdwa_srt-(EngineziGraphicsziShaders_zdwa_info)+0
	.long	0
	.quad	8589934596
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziShaders_zdwa_info
.type EngineziGraphicsziShaders_zdwa_info, @object
EngineziGraphicsziShaders_zdwa_info:
.LcjKX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjKZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_zdwa_ct
	je .LcjL0
.LcjL1:
	incq EngineziGraphicsziShaders_zdwa_ct+40
	xorl %eax,%eax
	cmpq %r14,%rax
	jb .LcjL3
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	jmp *0(%rbp)
.LcjKZ:
	movl $EngineziGraphicsziShaders_zdwa_closure,%ebx
	jmp *-8(%r13)
.LcjL0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_zdwa_ct+56
	movq $EngineziGraphicsziShaders_zdwa_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_zdwa_ct
	jmp .LcjL1
.LcjL3:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $sjK8_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjK8_info
	jmp *(%rbx)
	.size EngineziGraphicsziShaders_zdwa_info, .-EngineziGraphicsziShaders_zdwa_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_unBindTextures1_srt:
	.quad	EngineziGraphicsziShaders_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_unBindTextures1_closure
.type EngineziGraphicsziShaders_unBindTextures1_closure, @object
EngineziGraphicsziShaders_unBindTextures1_closure:
	.quad	EngineziGraphicsziShaders_unBindTextures1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjLl_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	117
	.byte	110
	.byte	66
	.byte	105
	.byte	110
	.byte	100
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	84
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjLo_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_unBindTextures1_ct
.type EngineziGraphicsziShaders_unBindTextures1_ct, @object
EngineziGraphicsziShaders_unBindTextures1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjLl_str
	.quad	cjLo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_unBindTextures1_srt-(sjLb_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sjLb_info:
.LcjLy:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp EngineziGraphicsziShaders_zdwa_info
	.size sjLb_info, .-sjLb_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_unBindTextures1_srt-(EngineziGraphicsziShaders_unBindTextures1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_unBindTextures1_info
.type EngineziGraphicsziShaders_unBindTextures1_info, @object
EngineziGraphicsziShaders_unBindTextures1_info:
.LcjLB:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjLD
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_unBindTextures1_ct
	je .LcjLE
.LcjLF:
	incq EngineziGraphicsziShaders_unBindTextures1_ct+40
	movq %r14,%rbx
	movq $sjLb_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjLb_info
	jmp *(%rbx)
.LcjLD:
	movl $EngineziGraphicsziShaders_unBindTextures1_closure,%ebx
	jmp *-8(%r13)
.LcjLE:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_unBindTextures1_ct+56
	movq $EngineziGraphicsziShaders_unBindTextures1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_unBindTextures1_ct
	jmp .LcjLF
	.size EngineziGraphicsziShaders_unBindTextures1_info, .-EngineziGraphicsziShaders_unBindTextures1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_unBindTextures_srt:
	.quad	EngineziGraphicsziShaders_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_unBindTextures_closure
.type EngineziGraphicsziShaders_unBindTextures_closure, @object
EngineziGraphicsziShaders_unBindTextures_closure:
	.quad	EngineziGraphicsziShaders_unBindTextures_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjLS_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	117
	.byte	110
	.byte	66
	.byte	105
	.byte	110
	.byte	100
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjLV_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_unBindTextures_ct
.type EngineziGraphicsziShaders_unBindTextures_ct, @object
EngineziGraphicsziShaders_unBindTextures_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjLS_str
	.quad	cjLV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_unBindTextures_srt-(EngineziGraphicsziShaders_unBindTextures_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_unBindTextures_info
.type EngineziGraphicsziShaders_unBindTextures_info, @object
EngineziGraphicsziShaders_unBindTextures_info:
.LcjM0:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_unBindTextures_ct
	je .LcjM3
.LcjM5:
	incq EngineziGraphicsziShaders_unBindTextures_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_unBindTextures1_info
.LcjM3:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_unBindTextures_ct+56
	movq $EngineziGraphicsziShaders_unBindTextures_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_unBindTextures_ct
	jmp .LcjM5
	.size EngineziGraphicsziShaders_unBindTextures_info, .-EngineziGraphicsziShaders_unBindTextures_info
.data
	.align 8
.align 1
rj7C_closure:
	.quad	ghczmprim_GHCziTypes_Czh_static_info
	.quad	93
.data
	.align 8
.align 1
rj7D_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rj7C_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_bindTextures1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform1i_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure
	.quad	base_GHCziForeign_charIsRepresentable3_closure
	.quad	base_GHCziIOziEncoding_getForeignEncoding1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_bindTextures1_closure
.type EngineziGraphicsziShaders_bindTextures1_closure, @object
EngineziGraphicsziShaders_bindTextures1_closure:
	.quad	EngineziGraphicsziShaders_bindTextures1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjQ0_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	98
	.byte	105
	.byte	110
	.byte	100
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjQ2_str:
	.byte	76
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_bindTextures1_ct
.type EngineziGraphicsziShaders_bindTextures1_ct, @object
EngineziGraphicsziShaders_bindTextures1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjQ0_str
	.quad	cjQ2_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cjQ6_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	106
	.byte	77
	.byte	107
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cjQ9_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sjMk_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjQ6_str
	.quad	cjQ9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMk_info)+8
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sjMk_info:
.LcjQe:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sjMk_ct
	je .LcjQh
.LcjQj:
	incq sjMk_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movq %r14,%rdi
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglGetUniformLocation_info
.LcjQh:
	movq ticky_entry_ctrs,%rax
	movq %rax,sjMk_ct+56
	movq $sjMk_ct,ticky_entry_ctrs
	movq $1,sjMk_ct
	jmp .LcjQj
	.size sjMk_info, .-sjMk_info
.text
	.align 8
	.quad	0
	.quad	32
sjMd_info:
.LcjQs:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movl $rj7D_closure+2,%esi
	addq $8,%rbp
	jmp base_GHCziBase_zpzp_info
	.size sjMd_info, .-sjMd_info
.text
	.align 8
	.quad	0
	.quad	16
sjdQ_info:
.LcjQw:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjQy
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	xorl %esi,%esi
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%edi
	movq $sjMd_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziShow_zdwshowSignedInt_info
.LcjQy:
	jmp *-16(%r13)
	.size sjdQ_info, .-sjdQ_info
.section .rodata
	.align 8
.align 1
cjQC_str:
	.byte	116
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	91
	.byte	0
.text
	.align 8
	.quad	0
	.quad	16
sjMl_info:
.LcjQG:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjQI
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcjQK
	addq $2,EngineziGraphicsziShaders_bindTextures1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sjdQ_info,-8(%r12)
	incq KNOWN_CALL_ctr
	movl $cjQC_str,%r14d
	leaq -8(%r12),%rsi
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackAppendCStringzh_info
.LcjQK:
	movq $16,192(%r13)
.LcjQI:
	jmp *-16(%r13)
	.size sjMl_info, .-sjMl_info
.section .rodata
	.align 8
.align 1
cjQU_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	106
	.byte	77
	.byte	104
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cjQX_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sjMh_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjQU_str
	.quad	cjQX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMh_info)+8
	.long	0
	.quad	8589934597
	.quad	1
	.quad	4294967306
sjMh_info:
.LcjR2:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sjMh_ct
	je .LcjR5
.LcjR7:
	incq sjMh_ct+40
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rsi
	movq %r14,%rdi
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetUniformLocation_closure,%r14d
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_dynzuglGetUniformLocation_info
.LcjR5:
	movq ticky_entry_ctrs,%rax
	movq %rax,sjMh_ct+56
	movq $sjMh_ct,ticky_entry_ctrs
	movq $1,sjMh_ct
	jmp .LcjR7
	.size sjMh_info, .-sjMh_info
.text
	.align 8
	.quad	0
	.quad	32
sjMe_info:
.LcjRj:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movl $rj7D_closure+2,%esi
	addq $8,%rbp
	jmp base_GHCziBase_zpzp_info
	.size sjMe_info, .-sjMe_info
.text
	.align 8
	.quad	4294967296
	.quad	18
sjeD_info:
.LcjRm:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjRo
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rsi
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%edi
	movq $sjMe_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziShow_zdwshowSignedInt_info
.LcjRo:
	jmp *-16(%r13)
	.size sjeD_info, .-sjeD_info
.section .rodata
	.align 8
.align 1
cjRs_str:
	.byte	116
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	91
	.byte	0
.text
	.align 8
	.quad	4294967296
	.quad	18
sjMi_info:
.LcjRw:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjRy
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcjRA
	addq $3,EngineziGraphicsziShaders_bindTextures1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sjeD_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $cjRs_str,%r14d
	leaq -16(%r12),%rsi
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackAppendCStringzh_info
.LcjRA:
	movq $24,192(%r13)
.LcjRy:
	jmp *-16(%r13)
	.size sjMi_info, .-sjMi_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMB_info)+0
	.long	0
	.quad	1093
	.quad	133143986208
sjMB_info:
.LcjRO:
	movq 40(%rbp),%rax
	movslq %eax,%rsi
	movq 7(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movq 32(%rbp),%rbx
	movq 16(%rbp),%r14
	movq 40(%rbp),%rax
	incq %rax
	movl %eax,%esi
	addq $16,%rbp
	jmp sjf3_info
	.size sjMB_info, .-sjMB_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMC_info)+0
	.long	0
	.quad	1029
	.quad	133143986208
sjMC_info:
.LcjS3:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjMB_info,0(%rbp)
	testq $7,%rbx
	jne sjMB_info
	jmp *(%rbx)
	.size sjMC_info, .-sjMC_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMD_info)+0
	.long	0
	.quad	516
	.quad	133143986208
sjMD_info:
.LcjSc:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform1i_closure,%ebx
	movq $sjMC_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMC_info
	jmp *(%rbx)
	.size sjMD_info, .-sjMD_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMx_info)+0
	.long	0
	.quad	516
	.quad	133143986208
sjMx_info:
.LcjSi:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcjSm
	addq $5,EngineziGraphicsziShaders_bindTextures1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sjMh_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq $sjMi_info,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	leaq -16(%r12),%rsi
	leaq -30(%r12),%rdi
	movq $sjMD_info,0(%rbp)
	jmp base_GHCziForeign_charIsRepresentable3_info
.LcjSm:
	movq $40,192(%r13)
.LcjSk:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sjMx_info, .-sjMx_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjf6_info)+0
	.long	0
	.quad	1093
	.quad	133143986208
sjf6_info:
.LcjSr:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rbx
	movq $sjMx_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_v_fast
	.size sjf6_info, .-sjf6_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMG_info)+0
	.long	0
	.quad	1093
	.quad	133143986208
sjMG_info:
.LcjSP:
	movq 7(%rbx),%rsi
	movl $3553,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	jmp sjf6_info
	.size sjMG_info, .-sjMG_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMH_info)+0
	.long	0
	.quad	1029
	.quad	133143986208
sjMH_info:
.LcjSX:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjMG_info,0(%rbp)
	testq $7,%rbx
	jne sjMG_info
	jmp *(%rbx)
	.size sjMH_info, .-sjMH_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMJ_info)+0
	.long	0
	.quad	2118
	.quad	133143986208
sjMJ_info:
.LcjT6:
	movq 8(%rbp),%rax
	movl %eax,%eax
	addq $33984,%rax
	movl %eax,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $sjMH_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjMH_info
	jmp *(%rbx)
	.size sjMJ_info, .-sjMJ_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMy_info)+0
	.long	0
	.quad	1029
	.quad	133143986208
sjMy_info:
.LcjTg:
	cmpq $0,7(%rbx)
	jge .LcjTi
	jmp sjf6_info
.LcjTi:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $sjMJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMJ_info
	jmp *(%rbx)
	.size sjMy_info, .-sjMy_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMz_info)+0
	.long	0
	.quad	516
	.quad	133143986208
sjMz_info:
.LcjTp:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sjMy_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMy_info
	jmp *(%rbx)
	.size sjMz_info, .-sjMz_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMs_info)+0
	.long	0
	.quad	259
	.quad	133143986208
sjMs_info:
.LcjTy:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjTz
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcjTz:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjMz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMz_info
	jmp *(%rbx)
	.size sjMs_info, .-sjMs_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjf3_info)+0
	.long	0
	.quad	387
	.quad	133143986208
sjf3_info:
.LcjTJ:
	movq %rbx,16(%rbp)
	movq %rsi,24(%rbp)
	movq %r14,%rbx
	movq $sjMs_info,0(%rbp)
	testq $7,%rbx
	jne sjMs_info
	jmp *(%rbx)
	.size sjf3_info, .-sjf3_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMu_info)+0
	.long	0
	.quad	68
	.quad	133143986208
sjMu_info:
.LcjTP:
	movq 7(%rbx),%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movq 32(%rbp),%rbx
	movq 24(%rbp),%r14
	movl $1,%esi
	addq $8,%rbp
	jmp sjf3_info
	.size sjMu_info, .-sjMu_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMv_info)+0
	.long	0
	.quad	4
	.quad	133143986208
sjMv_info:
.LcjTU:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjMu_info,0(%rbp)
	testq $7,%rbx
	jne sjMu_info
	jmp *(%rbx)
	.size sjMv_info, .-sjMv_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMw_info)+0
	.long	0
	.quad	3
	.quad	133143986208
sjMw_info:
.LcjU3:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUniform1i_closure,%ebx
	movq $sjMv_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMv_info
	jmp *(%rbx)
	.size sjMw_info, .-sjMw_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMn_info)+0
	.long	0
	.quad	3
	.quad	133143986208
sjMn_info:
.LcjU9:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcjUd
	addq $4,EngineziGraphicsziShaders_bindTextures1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sjMk_info,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq $sjMl_info,-8(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	leaq -8(%r12),%rsi
	leaq -22(%r12),%rdi
	movq $sjMw_info,0(%rbp)
	jmp base_GHCziForeign_charIsRepresentable3_info
.LcjUd:
	movq $32,192(%r13)
.LcjUb:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sjMn_info, .-sjMn_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMo_info)+0
	.long	0
	.quad	2
	.quad	133143986208
sjMo_info:
.LcjUh:
	incq UNKNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sjMn_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_v_fast
	.size sjMo_info, .-sjMo_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjfC_info)+0
	.long	0
	.quad	67
	.quad	270582939680
sjfC_info:
.LcjUl:
	movl $base_GHCziIOziEncoding_getForeignEncoding1_closure,%ebx
	movq $sjMo_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjMo_info
	jmp *(%rbx)
	.size sjfC_info, .-sjfC_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMM_info)+0
	.long	0
	.quad	67
	.quad	270582939680
sjMM_info:
.LcjUM:
	movq 7(%rbx),%rsi
	movl $3553,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	jmp sjfC_info
	.size sjMM_info, .-sjMM_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMN_info)+0
	.long	0
	.quad	3
	.quad	270582939680
sjMN_info:
.LcjUU:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sjMM_info,0(%rbp)
	testq $7,%rbx
	jne sjMM_info
	jmp *(%rbx)
	.size sjMN_info, .-sjMN_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMP_info)+0
	.long	0
	.quad	68
	.quad	270582939680
sjMP_info:
.LcjV3:
	movq 8(%rbp),%rax
	movl %eax,%eax
	addq $33984,%rax
	movl %eax,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $sjMN_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sjMN_info
	jmp *(%rbx)
	.size sjMP_info, .-sjMP_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMp_info)+0
	.long	0
	.quad	3
	.quad	270582939680
sjMp_info:
.LcjVd:
	cmpq $0,7(%rbx)
	jge .LcjVf
	jmp sjfC_info
.LcjVf:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $sjMP_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMP_info
	jmp *(%rbx)
	.size sjMp_info, .-sjMp_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMq_info)+0
	.long	0
	.quad	2
	.quad	270582939680
sjMq_info:
.LcjVm:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sjMp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMp_info
	jmp *(%rbx)
	.size sjMq_info, .-sjMq_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(sjMc_info)+0
	.long	0
	.quad	1
	.quad	270582939680
sjMc_info:
.LcjVv:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjVw
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcjVw:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sjMq_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjMq_info
	jmp *(%rbx)
	.size sjMc_info, .-sjMc_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures1_srt-(EngineziGraphicsziShaders_bindTextures1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	270582939663
.globl EngineziGraphicsziShaders_bindTextures1_info
.type EngineziGraphicsziShaders_bindTextures1_info, @object
EngineziGraphicsziShaders_bindTextures1_info:
.LcjVG:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjVI
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_bindTextures1_ct
	je .LcjVJ
.LcjVK:
	incq EngineziGraphicsziShaders_bindTextures1_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sjMc_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sjMc_info
	jmp *(%rbx)
.LcjVI:
	movl $EngineziGraphicsziShaders_bindTextures1_closure,%ebx
	jmp *-8(%r13)
.LcjVJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_bindTextures1_ct+56
	movq $EngineziGraphicsziShaders_bindTextures1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_bindTextures1_ct
	jmp .LcjVK
	.size EngineziGraphicsziShaders_bindTextures1_info, .-EngineziGraphicsziShaders_bindTextures1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_bindTextures_srt:
	.quad	EngineziGraphicsziShaders_bindTextures1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_bindTextures_closure
.type EngineziGraphicsziShaders_bindTextures_closure, @object
EngineziGraphicsziShaders_bindTextures_closure:
	.quad	EngineziGraphicsziShaders_bindTextures_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjVX_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	98
	.byte	105
	.byte	110
	.byte	100
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjW0_str:
	.byte	76
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_bindTextures_ct
.type EngineziGraphicsziShaders_bindTextures_ct, @object
EngineziGraphicsziShaders_bindTextures_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cjVX_str
	.quad	cjW0_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_bindTextures_srt-(EngineziGraphicsziShaders_bindTextures_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_bindTextures_info
.type EngineziGraphicsziShaders_bindTextures_info, @object
EngineziGraphicsziShaders_bindTextures_info:
.LcjW5:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_bindTextures_ct
	je .LcjW8
.LcjWa:
	incq EngineziGraphicsziShaders_bindTextures_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_bindTextures1_info
.LcjW8:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_bindTextures_ct+56
	movq $EngineziGraphicsziShaders_bindTextures_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_bindTextures_ct
	jmp .LcjWa
	.size EngineziGraphicsziShaders_bindTextures_info, .-EngineziGraphicsziShaders_bindTextures_info
.data
	.align 8
.align 1
rj7E_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	base_GHCziShow_showListzuzu2_closure
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.section .data
	.align 8
.align 1
rj7F_srt:
	.quad	base_GHCziFloat_zdfShowFloatzuzdsshowFloat_closure
	.quad	rj7F_closure
.data
	.align 8
.align 1
rj7F_closure:
	.quad	rj7F_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjWA_str:
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	106
	.byte	55
	.byte	70
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cjWD_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rj7F_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cjWA_str
	.quad	cjWD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rj7F_srt-(sjWh_info)+8
	.long	0
	.quad	1
	.quad	4294967313
sjWh_info:
.LcjWZ:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjX1
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp rj7F_info
.LcjX1:
	jmp *-16(%r13)
	.size sjWh_info, .-sjWh_info
.text
	.align 8
	.long	rj7F_srt-(sjWj_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sjWj_info:
.LcjX5:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcjX9
	addq $3,rj7F_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sjWh_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	leaq -16(%r12),%rax
	movq %rax,8(%rbp)
	movq $stg_ap_p_info,0(%rbp)
	movl $base_GHCziFloat_zdfShowFloatzuzdsshowFloat_closure+1,%r14d
	movl $base_GHCziFloat_minExpt_closure,%esi
	movss 7(%rbx),%xmm1
	jmp base_GHCziFloat_zdwzdsshowSignedFloat1_info
.LcjX9:
	movq $24,192(%r13)
.LcjX7:
	jmp *-16(%r13)
	.size sjWj_info, .-sjWj_info
.text
	.align 8
	.long	rj7F_srt-(sjWi_info)+0
	.long	0
	.quad	2
	.quad	12884901907
sjWi_info:
.LcjXg:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjXi
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sjWj_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sjWj_info
	jmp *(%rbx)
.LcjXi:
	jmp *-16(%r13)
	.size sjWi_info, .-sjWi_info
.text
	.align 8
	.long	rj7F_srt-(sjWg_info)+0
	.long	0
	.quad	0
	.quad	12884901920
sjWg_info:
.LcjXq:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjXr
	movl $rj7E_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcjXr:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcjXv
	addq $7,rj7F_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sjWi_info,-48(%r12)
	movq 6(%rbx),%rax
	movq %rax,-32(%r12)
	movq 14(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_showListzuzu1_closure,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcjXv:
	movq $56,192(%r13)
.LcjXt:
	jmp *-16(%r13)
	.size sjWg_info, .-sjWg_info
.text
	.align 8
	.long	rj7F_srt-(rj7F_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	12884901903
rj7F_info:
.LcjXE:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjXG
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rj7F_ct
	je .LcjXH
.LcjXI:
	incq rj7F_ct+40
	movq %r14,%rbx
	movq $sjWg_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjWg_info
	jmp *(%rbx)
.LcjXG:
	movl $rj7F_closure,%ebx
	jmp *-8(%r13)
.LcjXH:
	movq ticky_entry_ctrs,%rax
	movq %rax,rj7F_ct+56
	movq $rj7F_ct,ticky_entry_ctrs
	movq $1,rj7F_ct
	jmp .LcjXI
	.size rj7F_info, .-rj7F_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_printMatrix1_srt:
	.quad	base_GHCziFloat_zdfShowFloatzuzdsshowFloat_closure
	.quad	base_GHCziIOziHandleziFD_stdout_closure
	.quad	base_GHCziIOziHandleziText_hPutStr2_closure
	.quad	EngineziGraphicsziShaders_printMatrix1_closure
	.quad	rj7F_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_printMatrix1_closure
.type EngineziGraphicsziShaders_printMatrix1_closure, @object
EngineziGraphicsziShaders_printMatrix1_closure:
	.quad	EngineziGraphicsziShaders_printMatrix1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cjYq_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	112
	.byte	114
	.byte	105
	.byte	110
	.byte	116
	.byte	77
	.byte	97
	.byte	116
	.byte	114
	.byte	105
	.byte	120
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	88
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cjYt_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_printMatrix1_ct
.type EngineziGraphicsziShaders_printMatrix1_ct, @object
EngineziGraphicsziShaders_printMatrix1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cjYq_str
	.quad	cjYt_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjXU_info)+32
	.long	0
	.quad	3
	.quad	4294967312
sjXU_info:
.LcjZ4:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjZ6
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcjZ8
	addq $9,EngineziGraphicsziShaders_printMatrix1_ct+48
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
	jmp rj7F_info
.LcjZ8:
	movq $72,192(%r13)
.LcjZ6:
	jmp *-16(%r13)
	.size sjXU_info, .-sjXU_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjXX_info)+0
	.long	0
	.quad	3
	.quad	73014444064
sjXX_info:
.LcjZh:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcjZl
	addq $5,EngineziGraphicsziShaders_printMatrix1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sjXU_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	leaq -32(%r12),%rax
	movq %rax,24(%rbp)
	movq $stg_ap_p_info,16(%rbp)
	movl $base_GHCziFloat_zdfShowFloatzuzdsshowFloat_closure+1,%r14d
	movl $base_GHCziFloat_minExpt_closure,%esi
	movss 7(%rbx),%xmm1
	addq $16,%rbp
	jmp base_GHCziFloat_zdwzdsshowSignedFloat1_info
.LcjZl:
	movq $40,192(%r13)
.LcjZj:
	jmp *-16(%r13)
	.size sjXX_info, .-sjXX_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjgQ_info)+0
	.long	0
	.quad	4
	.quad	73014444048
sjgQ_info:
.LcjZu:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcjZw
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
	movq $sjXX_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne sjXX_info
	jmp *(%rbx)
.LcjZw:
	jmp *-16(%r13)
	.size sjgQ_info, .-sjgQ_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjXY_info)+24
	.long	0
	.quad	1
	.quad	4294967328
sjXY_info:
.LcjZG:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp EngineziGraphicsziShaders_printMatrix1_info
	.size sjXY_info, .-sjXY_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjXT_info)+0
	.long	0
	.quad	3
	.quad	133143986208
sjXT_info:
.LcjZL:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcjZM
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcjZM:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcjZQ
	addq $9,EngineziGraphicsziShaders_printMatrix1_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $sjgQ_info,-64(%r12)
	movq 24(%rbp),%rax
	movq %rax,-48(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	movq 6(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_showListzuzu3_closure,-8(%r12)
	leaq -64(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,24(%rbp)
	movl $base_GHCziIOziHandleziFD_stdout_closure,%r14d
	leaq -14(%r12),%rsi
	movl $ghczmprim_GHCziTypes_True_closure+2,%edi
	movq $sjXY_info,16(%rbp)
	addq $16,%rbp
	jmp base_GHCziIOziHandleziText_hPutStr2_info
.LcjZQ:
	movq $72,192(%r13)
.LcjZO:
	jmp *-16(%r13)
	.size sjXT_info, .-sjXT_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjXS_info)+0
	.long	0
	.quad	2
	.quad	133143986208
sjXS_info:
.Lck04:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lck05
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.Lck05:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sjXT_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjXT_info
	jmp *(%rbx)
	.size sjXS_info, .-sjXS_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjXR_info)+0
	.long	0
	.quad	1
	.quad	133143986208
sjXR_info:
.Lck0h:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lck0i
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.Lck0i:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sjXS_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjXS_info
	jmp *(%rbx)
	.size sjXR_info, .-sjXR_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(sjXQ_info)+0
	.long	0
	.quad	0
	.quad	133143986208
sjXQ_info:
.Lck0u:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lck0v
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lck0v:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sjXR_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjXR_info
	jmp *(%rbx)
	.size sjXQ_info, .-sjXQ_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix1_srt-(EngineziGraphicsziShaders_printMatrix1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	133143986191
.globl EngineziGraphicsziShaders_printMatrix1_info
.type EngineziGraphicsziShaders_printMatrix1_info, @object
EngineziGraphicsziShaders_printMatrix1_info:
.Lck0F:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lck0H
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_printMatrix1_ct
	je .Lck0I
.Lck0J:
	incq EngineziGraphicsziShaders_printMatrix1_ct+40
	movq %r14,%rbx
	movq $sjXQ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sjXQ_info
	jmp *(%rbx)
.Lck0H:
	movl $EngineziGraphicsziShaders_printMatrix1_closure,%ebx
	jmp *-8(%r13)
.Lck0I:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_printMatrix1_ct+56
	movq $EngineziGraphicsziShaders_printMatrix1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_printMatrix1_ct
	jmp .Lck0J
	.size EngineziGraphicsziShaders_printMatrix1_info, .-EngineziGraphicsziShaders_printMatrix1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_printMatrix_srt:
	.quad	EngineziGraphicsziShaders_printMatrix1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_printMatrix_closure
.type EngineziGraphicsziShaders_printMatrix_closure, @object
EngineziGraphicsziShaders_printMatrix_closure:
	.quad	EngineziGraphicsziShaders_printMatrix_info
	.quad	0
.section .rodata
	.align 8
.align 1
ck0W_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	112
	.byte	114
	.byte	105
	.byte	110
	.byte	116
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
	.byte	104
	.byte	75
	.byte	98
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ck0Z_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_printMatrix_ct
.type EngineziGraphicsziShaders_printMatrix_ct, @object
EngineziGraphicsziShaders_printMatrix_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ck0W_str
	.quad	ck0Z_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_printMatrix_srt-(EngineziGraphicsziShaders_printMatrix_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_printMatrix_info
.type EngineziGraphicsziShaders_printMatrix_info, @object
EngineziGraphicsziShaders_printMatrix_info:
.Lck14:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_printMatrix_ct
	je .Lck17
.Lck19:
	incq EngineziGraphicsziShaders_printMatrix_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_printMatrix1_info
.Lck17:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_printMatrix_ct+56
	movq $EngineziGraphicsziShaders_printMatrix_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_printMatrix_ct
	jmp .Lck19
	.size EngineziGraphicsziShaders_printMatrix_info, .-EngineziGraphicsziShaders_printMatrix_info
.data
	.align 8
.align 1
rj7G_closure:
	.quad	rj7G_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ck1l_str:
	.byte	69
	.byte	114
	.byte	114
	.byte	111
	.byte	114
	.byte	32
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	115
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	58
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rj7G_info:
.Lck1p:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lck1r
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lck1t
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
	je .Lck1u
.Lck1v:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ck1l_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lck1t:
	movq $16,192(%r13)
.Lck1r:
	jmp *-16(%r13)
.Lck1u:
	jmp *(%rbx)
	.size rj7G_info, .-rj7G_info
.data
	.align 8
.align 1
rj7H_closure:
	.quad	rj7H_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ck1K_str:
	.byte	83
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
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	100
	.byte	32
	.byte	115
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	58
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rj7H_info:
.Lck1O:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lck1Q
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lck1S
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
	je .Lck1T
.Lck1U:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ck1K_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lck1S:
	movq $16,192(%r13)
.Lck1Q:
	jmp *-16(%r13)
.Lck1T:
	jmp *(%rbx)
	.size rj7H_info, .-rj7H_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_loadProgram3_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglShaderSource_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetShaderiv_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetShaderInfoLog_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCreateShader_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCompileShader_closure
	.quad	base_ForeignziCziString_withCString1_closure
	.quad	base_ForeignziCziString_peekCString1_closure
	.quad	base_GHCziIOziHandleziFD_stdout_closure
	.quad	base_GHCziIOziHandleziText_hPutStr2_closure
	.quad	base_GHCziShow_zdfShowCharzuzdcshowList_closure
	.quad	base_SystemziIO_readFile1_closure
	.quad	rj7G_closure
	.quad	rj7H_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram3_closure
.type EngineziGraphicsziShaders_loadProgram3_closure, @object
EngineziGraphicsziShaders_loadProgram3_closure:
	.quad	EngineziGraphicsziShaders_loadProgram3_info
	.quad	0
.section .rodata
	.align 8
.align 1
ck5l_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	80
	.byte	114
	.byte	111
	.byte	103
	.byte	114
	.byte	97
	.byte	109
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	90
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ck5n_str:
	.byte	84
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram3_ct
.type EngineziGraphicsziShaders_loadProgram3_ct, @object
EngineziGraphicsziShaders_loadProgram3_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ck5l_str
	.quad	ck5n_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ck5r_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	107
	.byte	50
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ck5u_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sk21_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ck5r_str
	.quad	ck5u_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	323
	.quad	32
sk2i_info:
.Lck5N:
	movq 24(%rbp),%rdi
	movq 8(%rbp),%rdx
	movl $1,%esi
	xorl %ecx,%ecx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
	.size sk2i_info, .-sk2i_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2j_info)+0
	.long	0
	.quad	130
	.quad	4294967328
sk2j_info:
.Lck5X:
	movq 8(%rbp),%rax
	leaq 16(%rax),%rcx
	movq 7(%rbx),%rax
	movq %rax,(%rcx)
	movq %rcx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglShaderSource_closure,%ebx
	movq $sk2i_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sk2i_info
	jmp *(%rbx)
	.size sk2j_info, .-sk2j_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2l_info)+0
	.long	0
	.quad	130
	.quad	4294967328
sk2l_info:
.Lck65:
	movq %rbx,%rax
	movq 8(%rbp),%rbx
	movq %rax,8(%rbp)
	movq $sk2j_info,0(%rbp)
	testq $7,%rbx
	jne sk2j_info
	jmp *(%rbx)
	.size sk2l_info, .-sk2l_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk21_info)+0
	.long	0
	.quad	8589934597
	.quad	4294967296
	.quad	4294967307
sk21_info:
.Lck6b:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lck6d
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sk21_ct
	je .Lck6e
.Lck6f:
	incq sk21_ct+40
	movq 6(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,-16(%rbp)
	movl $8,%ebx
	movl $8,%r14d
	movq $sk2l_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_newAlignedPinnedByteArrayzh
.Lck6d:
	jmp *-8(%r13)
.Lck6e:
	movq ticky_entry_ctrs,%rax
	movq %rax,sk21_ct+56
	movq $sk21_ct,ticky_entry_ctrs
	movq $1,sk21_ct
	jmp .Lck6f
	.size sk21_info, .-sk21_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk23_info)+72
	.long	0
	.quad	1
	.quad	4294967313
sk23_info:
.Lck6M:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lck6O
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziShow_zdfShowCharzuzdcshowList_info
.Lck6O:
	jmp *-16(%r13)
	.size sk23_info, .-sk23_info
.text
	.align 8
	.quad	900
	.quad	32
sk2M_info:
.Lck6U:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lck6Z
	addq $2,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq 32(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.Lck6Z:
	movq $16,192(%r13)
.Lck6X:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sk2M_info, .-sk2M_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2J_info)+56
	.long	0
	.quad	644
	.quad	30064771104
sk2J_info:
.Lck73:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lck77
	addq $3,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sk23_info,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_GHCziIOziHandleziFD_stdout_closure,%r14d
	leaq -16(%r12),%rsi
	movl $ghczmprim_GHCziTypes_True_closure+2,%edi
	movq $sk2M_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hPutStr2_info
.Lck77:
	movq $24,192(%r13)
.Lck75:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sk2J_info, .-sk2J_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk27_info)+72
	.long	0
	.quad	1
	.quad	4294967313
sk27_info:
.Lck7i:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lck7k
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziShow_zdfShowCharzuzdcshowList_info
.Lck7k:
	jmp *-16(%r13)
	.size sk27_info, .-sk27_info
.text
	.align 8
	.quad	900
	.quad	32
sk2O_info:
.Lck7q:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lck7v
	addq $2,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq 32(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.Lck7v:
	movq $16,192(%r13)
.Lck7t:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sk2O_info, .-sk2O_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2N_info)+56
	.long	0
	.quad	644
	.quad	30064771104
sk2N_info:
.Lck7z:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lck7D
	addq $3,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sk27_info,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_GHCziIOziHandleziFD_stdout_closure,%r14d
	leaq -16(%r12),%rsi
	movl $ghczmprim_GHCziTypes_True_closure+2,%edi
	movq $sk2O_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hPutStr2_info
.Lck7D:
	movq $24,192(%r13)
.Lck7B:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sk2N_info, .-sk2N_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2L_info)+56
	.long	0
	.quad	900
	.quad	236223201312
sk2L_info:
.Lck7H:
	cmpq $0,24(%rbp)
	jne .Lck7J
	incq KNOWN_CALL_ctr
	movq %rbx,24(%rbp)
	movl $base_GHCziIOziHandleziFD_stdout_closure,%r14d
	movl $rj7G_closure,%esi
	movl $ghczmprim_GHCziTypes_False_closure+1,%edi
	movq $sk2N_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hPutStr2_info
.Lck7J:
	incq KNOWN_CALL_ctr
	movq %rbx,24(%rbp)
	movl $base_GHCziIOziHandleziFD_stdout_closure,%r14d
	movl $rj7H_closure,%esi
	movl $ghczmprim_GHCziTypes_False_closure+1,%edi
	movq $sk2J_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hPutStr2_info
	.size sk2L_info, .-sk2L_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2G_info)+48
	.long	0
	.quad	900
	.quad	476741369888
sk2G_info:
.Lck7M:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lck7Q
	addq $2,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 8(%rbp),%rax
	leaq 16(%rax),%r14
	movq 32(%rbp),%rdi
	movq 16(%rbp),%rsi
	xorl %edx,%edx
	movq %r14,%rcx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movq $base_GHCziPtr_Ptr_con_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	movq $sk2L_info,0(%rbp)
	jmp base_ForeignziCziString_peekCString1_info
.Lck7Q:
	movq $16,192(%r13)
.Lck7O:
	jmp *-16(%r13)
	.size sk2G_info, .-sk2G_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2I_info)+16
	.long	0
	.quad	451
	.quad	7632156885024
sk2I_info:
.Lck7X:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetShaderInfoLog_closure,%ebx
	movq $sk2G_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sk2G_info
	jmp *(%rbx)
	.size sk2I_info, .-sk2I_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2u_info)+16
	.long	0
	.quad	387
	.quad	7632156885024
sk2u_info:
.Lck83:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lck87
	addq $2,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 8(%rbp),%rax
	leaq 16(%rax),%r14
	movq 24(%rbp),%rdi
	movl $35716,%esi
	movq %r14,%rdx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movslq (%r14),%rax
	testq %rax,%rax
	jg .Lck89
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -7(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lck87:
	movq $16,192(%r13)
.Lck85:
	jmp *-16(%r13)
.Lck89:
	movq %rax,8(%rbp)
	leaq 1(%rax),%rbx
	movl $1,%r14d
	movq $sk2I_info,0(%rbp)
	addq $-16,%r12
	addq $-2,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp stg_newAlignedPinnedByteArrayzh
	.size sk2u_info, .-sk2u_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2w_info)+8
	.long	0
	.quad	194
	.quad	15268608737312
sk2w_info:
.Lck8g:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetShaderiv_closure,%ebx
	movq $sk2u_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sk2u_info
	jmp *(%rbx)
	.size sk2w_info, .-sk2w_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2z_info)+8
	.long	0
	.quad	130
	.quad	15268608737312
sk2z_info:
.Lck8m:
	movq 8(%rbp),%rax
	leaq 16(%rax),%r14
	movq 16(%rbp),%rdi
	movl $35713,%esi
	movq %r14,%rdx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movslq (%r14),%rax
	movq %rax,8(%rbp)
	movl $4,%ebx
	movl $4,%r14d
	movq $sk2w_info,0(%rbp)
	jmp stg_newAlignedPinnedByteArrayzh
	.size sk2z_info, .-sk2z_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2B_info)+8
	.long	0
	.quad	65
	.quad	15268608737312
sk2B_info:
.Lck8t:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglGetShaderiv_closure,%ebx
	movq $sk2z_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sk2z_info
	jmp *(%rbx)
	.size sk2B_info, .-sk2B_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2D_info)+8
	.long	0
	.quad	65
	.quad	15268608737312
sk2D_info:
.Lck8z:
	movq 8(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $4,%ebx
	movl $4,%r14d
	movq $sk2B_info,0(%rbp)
	jmp stg_newAlignedPinnedByteArrayzh
	.size sk2D_info, .-sk2D_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2E_info)+8
	.long	0
	.quad	65
	.quad	15302968475680
sk2E_info:
.Lck8E:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCompileShader_closure,%ebx
	movq $sk2D_info,0(%rbp)
	testq $7,%rbx
	jne sk2D_info
	jmp *(%rbx)
	.size sk2E_info, .-sk2E_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2n_info)+0
	.long	0
	.quad	130
	.quad	30747670872096
sk2n_info:
.Lck8K:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lck8O
	addq $2,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 16(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movl %eax,%eax
	movq $sk21_info,-8(%r12)
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rax,16(%rbp)
	movq 8(%rbp),%r14
	leaq -6(%r12),%rsi
	movq $sk2E_info,8(%rbp)
	addq $8,%rbp
	jmp base_ForeignziCziString_withCString1_info
.Lck8O:
	movq $16,192(%r13)
.Lck8M:
	jmp *-16(%r13)
	.size sk2n_info, .-sk2n_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2o_info)+0
	.long	0
	.quad	130
	.quad	30747670872096
sk2o_info:
.Lck8T:
	movq 7(%rbx),%rbx
	movq $sk2n_info,0(%rbp)
	testq $7,%rbx
	jne sk2n_info
	jmp *(%rbx)
	.size sk2o_info, .-sk2o_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2p_info)+0
	.long	0
	.quad	2
	.quad	30747670872096
sk2p_info:
.Lck8Z:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sk2o_info,0(%rbp)
	testq $7,%rbx
	jne sk2o_info
	jmp *(%rbx)
	.size sk2p_info, .-sk2p_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(sk2q_info)+0
	.long	0
	.quad	1
	.quad	30782030610464
sk2q_info:
.Lck98:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCreateShader_closure,%ebx
	movq $sk2p_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sk2p_info
	jmp *(%rbx)
	.size sk2q_info, .-sk2q_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram3_srt-(EngineziGraphicsziShaders_loadProgram3_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	35180077121551
.globl EngineziGraphicsziShaders_loadProgram3_info
.type EngineziGraphicsziShaders_loadProgram3_info, @object
EngineziGraphicsziShaders_loadProgram3_info:
.Lck9e:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lck9g
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lck9i
	addq $3,EngineziGraphicsziShaders_loadProgram3_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_loadProgram3_ct
	je .Lck9j
.Lck9k:
	incq EngineziGraphicsziShaders_loadProgram3_ct+40
	movq $stg_sel_1_upd_info,-16(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	leaq -16(%r12),%r14
	movq $sk2q_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_SystemziIO_readFile1_info
.Lck9i:
	movq $24,192(%r13)
.Lck9g:
	movl $EngineziGraphicsziShaders_loadProgram3_closure,%ebx
	jmp *-8(%r13)
.Lck9j:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_loadProgram3_ct+56
	movq $EngineziGraphicsziShaders_loadProgram3_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_loadProgram3_ct
	jmp .Lck9k
	.size EngineziGraphicsziShaders_loadProgram3_info, .-EngineziGraphicsziShaders_loadProgram3_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_loadProgram2_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteShader_closure
	.quad	EngineziGraphicsziShaders_loadProgram2_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram2_closure
.type EngineziGraphicsziShaders_loadProgram2_closure, @object
EngineziGraphicsziShaders_loadProgram2_closure:
	.quad	EngineziGraphicsziShaders_loadProgram2_info
	.quad	0
.section .rodata
	.align 8
.align 1
ck9K_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	80
	.byte	114
	.byte	111
	.byte	103
	.byte	114
	.byte	97
	.byte	109
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	74
	.byte	89
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ck9N_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram2_ct
.type EngineziGraphicsziShaders_loadProgram2_ct, @object
EngineziGraphicsziShaders_loadProgram2_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ck9K_str
	.quad	ck9N_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram2_srt-(sk9r_info)+8
	.long	0
	.quad	130
	.quad	4294967328
sk9r_info:
.Lcka6:
	movq 7(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 16(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	addq $24,%rbp
	jmp EngineziGraphicsziShaders_loadProgram2_info
	.size sk9r_info, .-sk9r_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram2_srt-(sk9s_info)+8
	.long	0
	.quad	2
	.quad	4294967328
sk9s_info:
.Lckae:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sk9r_info,0(%rbp)
	testq $7,%rbx
	jne sk9r_info
	jmp *(%rbx)
	.size sk9s_info, .-sk9s_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram2_srt-(sk9p_info)+0
	.long	0
	.quad	0
	.quad	12884901920
sk9p_info:
.Lckap:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lckaq
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lckaq:
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteShader_closure,%ebx
	movq $sk9s_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sk9s_info
	jmp *(%rbx)
	.size sk9p_info, .-sk9p_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram2_srt-(EngineziGraphicsziShaders_loadProgram2_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziShaders_loadProgram2_info
.type EngineziGraphicsziShaders_loadProgram2_info, @object
EngineziGraphicsziShaders_loadProgram2_info:
.LckaB:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LckaD
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_loadProgram2_ct
	je .LckaE
.LckaF:
	incq EngineziGraphicsziShaders_loadProgram2_ct+40
	movq %r14,%rbx
	movq $sk9p_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sk9p_info
	jmp *(%rbx)
.LckaD:
	movl $EngineziGraphicsziShaders_loadProgram2_closure,%ebx
	jmp *-8(%r13)
.LckaE:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_loadProgram2_ct+56
	movq $EngineziGraphicsziShaders_loadProgram2_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_loadProgram2_ct
	jmp .LckaF
	.size EngineziGraphicsziShaders_loadProgram2_info, .-EngineziGraphicsziShaders_loadProgram2_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_loadProgram1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglLinkProgram_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCreateProgram_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglAttachShader_closure
	.quad	EngineziGraphicsziShaders_loadProgram2_closure
	.quad	EngineziGraphicsziShaders_loadProgram3_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram1_closure
.type EngineziGraphicsziShaders_loadProgram1_closure, @object
EngineziGraphicsziShaders_loadProgram1_closure:
	.quad	EngineziGraphicsziShaders_loadProgram1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ckbN_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	80
	.byte	114
	.byte	111
	.byte	103
	.byte	114
	.byte	97
	.byte	109
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ckbQ_str:
	.byte	76
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram1_ct
.type EngineziGraphicsziShaders_loadProgram1_ct, @object
EngineziGraphicsziShaders_loadProgram1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ckbN_str
	.quad	ckbQ_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ckcb_str:
	.byte	36
	.byte	115
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	106
	.byte	108
	.byte	52
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ckce_str:
	.byte	65
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
sjl4_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ckcb_str
	.quad	ckce_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	772
	.quad	32
skaX_info:
.Lckcs:
	movq 32(%rbp),%rdi
	movq 7(%rbx),%rsi
	subq $8,%rsp
	movl $0,%eax
	movq 24(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	movq 16(%rbp),%r14
	addq $40,%rbp
	jmp sjl3_info
	.size skaX_info, .-skaX_info
.text
	.align 8
	.quad	516
	.quad	32
skaY_info:
.LckcC:
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $skaX_info,0(%rbp)
	testq $7,%rbx
	jne skaX_info
	jmp *(%rbx)
	.size skaY_info, .-skaY_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(sjl4_info)+16
	.long	0
	.quad	12884901900
	.quad	4294967297
	.quad	4294967309
sjl4_info:
.LckcL:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LckcN
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sjl4_ct
	je .LckcO
.LckcP:
	incq sjl4_ct+40
	movq 5(%rbx),%rax
	movq %rax,-32(%rbp)
	movq %rsi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq 13(%rbx),%rax
	movq %rax,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglAttachShader_closure,%ebx
	movq $skaY_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne skaY_info
	jmp *(%rbx)
.LckcN:
	jmp *-8(%r13)
.LckcO:
	movq ticky_entry_ctrs,%rax
	movq %rax,sjl4_ct+56
	movq $sjl4_ct,ticky_entry_ctrs
	movq $1,sjl4_ct
	jmp .LckcP
	.size sjl4_info, .-sjl4_info
.section .rodata
	.align 8
.align 1
ckd0_str:
	.byte	97
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	106
	.byte	108
	.byte	51
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ckd3_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sjl3_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ckd0_str
	.quad	ckd3_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	644
	.quad	32
skb1_info:
.Lckdm:
	movq 32(%rbp),%rdi
	movq 7(%rbx),%rsi
	subq $8,%rsp
	movl $0,%eax
	movq 16(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%rbx
	movq 8(%rbp),%r14
	addq $40,%rbp
	jmp sjl3_info
	.size skb1_info, .-skb1_info
.text
	.align 8
	.quad	516
	.quad	32
skb2_info:
.Lckdw:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $skb1_info,0(%rbp)
	testq $7,%rbx
	jne skb1_info
	jmp *(%rbx)
	.size skb2_info, .-skb2_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(skaZ_info)+16
	.long	0
	.quad	130
	.quad	4294967328
skaZ_info:
.LckdH:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LckdI
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LckdI:
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglAttachShader_closure,%ebx
	movq $skb2_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne skb2_info
	jmp *(%rbx)
	.size skaZ_info, .-skaZ_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(sjl3_info)+16
	.long	0
	.quad	8589934597
	.quad	4294967296
	.quad	4294967307
sjl3_info:
.LckdT:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LckdV
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sjl3_ct
	je .LckdW
.LckdX:
	incq sjl3_ct+40
	movq %rbx,-16(%rbp)
	movq 6(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $skaZ_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne skaZ_info
	jmp *(%rbx)
.LckdV:
	jmp *-8(%r13)
.LckdW:
	movq ticky_entry_ctrs,%rax
	movq %rax,sjl3_ct+56
	movq $sjl3_ct,ticky_entry_ctrs
	movq $1,sjl3_ct
	jmp .LckdX
	.size sjl3_info, .-sjl3_info
.text
	.align 8
	.quad	194
	.quad	32
skb6_info:
.Lckeg:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lckel
	addq $2,EngineziGraphicsziShaders_loadProgram1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -7(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.Lckel:
	movq $16,192(%r13)
.Lckej:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size skb6_info, .-skb6_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(skb4_info)+24
	.long	0
	.quad	131
	.quad	4294967328
skb4_info:
.Lckep:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcket
	addq $3,EngineziGraphicsziShaders_loadProgram1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq 16(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -14(%r12),%r14
	movq $skb6_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziGraphicsziShaders_loadProgram2_info
.Lcket:
	movq $24,192(%r13)
.Lcker:
	jmp *-16(%r13)
	.size skb4_info, .-skb4_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(skb5_info)+0
	.long	0
	.quad	131
	.quad	38654705696
skb5_info:
.LckeA:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglLinkProgram_closure,%ebx
	movq $skb4_info,0(%rbp)
	testq $7,%rbx
	jne skb4_info
	jmp *(%rbx)
	.size skb5_info, .-skb5_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(skaU_info)+0
	.long	0
	.quad	2
	.quad	55834574880
skaU_info:
.LckeG:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LckeK
	addq $8,EngineziGraphicsziShaders_loadProgram1_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl %eax,%ebx
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-40(%r12)
	movq $sjl4_info,-32(%r12)
	leaq -6(%r12),%rax
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	movq $sjl3_info,-8(%r12)
	movq %rbx,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -54(%r12),%rax
	movq %rax,0(%rbp)
	movq %rbx,8(%rbp)
	leaq -29(%r12),%rbx
	movq 16(%rbp),%r14
	leaq -54(%r12),%rsi
	movq $skb5_info,-8(%rbp)
	addq $-8,%rbp
	jmp sjl4_info
.LckeK:
	movq $64,192(%r13)
.LckeI:
	jmp *-16(%r13)
	.size skaU_info, .-skaU_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(skaV_info)+0
	.long	0
	.quad	1
	.quad	64424509472
skaV_info:
.LckeR:
	movq %rbx,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCreateProgram_closure,%ebx
	movq $skaU_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne skaU_info
	jmp *(%rbx)
	.size skaV_info, .-skaV_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(skaS_info)+0
	.long	0
	.quad	1
	.quad	133143986208
skaS_info:
.LckeX:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lckf1
	addq $3,EngineziGraphicsziShaders_loadProgram1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziTokens_glzuFRAGMENTzuSHADER1_closure,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,8(%rbp)
	leaq -15(%r12),%r14
	movq $skaV_info,0(%rbp)
	jmp EngineziGraphicsziShaders_loadProgram3_info
.Lckf1:
	movq $24,192(%r13)
.LckeZ:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size skaS_info, .-skaS_info
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram1_srt-(EngineziGraphicsziShaders_loadProgram1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	133143986191
.globl EngineziGraphicsziShaders_loadProgram1_info
.type EngineziGraphicsziShaders_loadProgram1_info, @object
EngineziGraphicsziShaders_loadProgram1_info:
.Lckf5:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lckf7
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lckf9
	addq $3,EngineziGraphicsziShaders_loadProgram1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_loadProgram1_ct
	je .Lckfa
.Lckfb:
	incq EngineziGraphicsziShaders_loadProgram1_ct+40
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziTokens_glzuVERTEXzuSHADER1_closure,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rsi,-8(%rbp)
	leaq -15(%r12),%r14
	movq $skaS_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziGraphicsziShaders_loadProgram3_info
.Lckf9:
	movq $24,192(%r13)
.Lckf7:
	movl $EngineziGraphicsziShaders_loadProgram1_closure,%ebx
	jmp *-8(%r13)
.Lckfa:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_loadProgram1_ct+56
	movq $EngineziGraphicsziShaders_loadProgram1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_loadProgram1_ct
	jmp .Lckfb
	.size EngineziGraphicsziShaders_loadProgram1_info, .-EngineziGraphicsziShaders_loadProgram1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziShaders_loadProgram_srt:
	.quad	EngineziGraphicsziShaders_loadProgram1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram_closure
.type EngineziGraphicsziShaders_loadProgram_closure, @object
EngineziGraphicsziShaders_loadProgram_closure:
	.quad	EngineziGraphicsziShaders_loadProgram_info
	.quad	0
.section .rodata
	.align 8
.align 1
ckfl_str:
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
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	80
	.byte	114
	.byte	111
	.byte	103
	.byte	114
	.byte	97
	.byte	109
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	104
	.byte	75
	.byte	99
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ckfo_str:
	.byte	76
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziShaders_loadProgram_ct
.type EngineziGraphicsziShaders_loadProgram_ct, @object
EngineziGraphicsziShaders_loadProgram_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ckfl_str
	.quad	ckfo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziShaders_loadProgram_srt-(EngineziGraphicsziShaders_loadProgram_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziShaders_loadProgram_info
.type EngineziGraphicsziShaders_loadProgram_info, @object
EngineziGraphicsziShaders_loadProgram_info:
.Lckft:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziShaders_loadProgram_ct
	je .Lckfw
.Lckfy:
	incq EngineziGraphicsziShaders_loadProgram_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziShaders_loadProgram1_info
.Lckfw:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziShaders_loadProgram_ct+56
	movq $EngineziGraphicsziShaders_loadProgram_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziShaders_loadProgram_ct
	jmp .Lckfy
	.size EngineziGraphicsziShaders_loadProgram_info, .-EngineziGraphicsziShaders_loadProgram_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
