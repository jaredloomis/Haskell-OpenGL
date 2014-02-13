.data
	.align 8
.align 1
.globl __stginit_EngineziModelziModel
.type __stginit_EngineziModelziModel, @object
__stginit_EngineziModelziModel:
.data
	.align 8
.align 1
.globl EngineziModelziModel_zdWModel_closure
.type EngineziModelziModel_zdWModel_closure, @object
EngineziModelziModel_zdWModel_closure:
	.quad	EngineziModelziModel_zdWModel_info
.section .rodata
	.align 8
.align 1
cmVN_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	36
	.byte	87
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	84
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmVQ_str:
	.byte	83
	.byte	76
	.byte	76
	.byte	83
	.byte	77
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_zdWModel_ct
.type EngineziModelziModel_zdWModel_ct, @object
EngineziModelziModel_zdWModel_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	cmVN_str
	.quad	cmVQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	5
	.quad	32
smTz_info:
.LcmWk:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcmWq
	addq $7,EngineziModelziModel_zdWModel_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziModelziModel_Model_con_info,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -47(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcmWq:
	movq $56,192(%r13)
.LcmWo:
	jmp *-16(%r13)
	.size smTz_info, .-smTz_info
.text
	.align 8
	.quad	5
	.quad	32
smTy_info:
.LcmWy:
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $smTz_info,0(%rbp)
	testq $7,%rbx
	jne smTz_info
	jmp *(%rbx)
	.size smTy_info, .-smTy_info
.text
	.align 8
	.quad	5
	.quad	32
smTx_info:
.LcmWG:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $smTy_info,0(%rbp)
	testq $7,%rbx
	jne smTy_info
	jmp *(%rbx)
	.size smTx_info, .-smTx_info
.text
	.align 8
	.quad	5
	.quad	32
smTw_info:
.LcmWO:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $smTx_info,0(%rbp)
	testq $7,%rbx
	jne smTx_info
	jmp *(%rbx)
	.size smTw_info, .-smTw_info
.text
	.align 8
	.quad	5
	.quad	32
smTv_info:
.LcmWW:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $smTw_info,0(%rbp)
	testq $7,%rbx
	jne smTw_info
	jmp *(%rbx)
	.size smTv_info, .-smTv_info
.text
	.align 8
	.quad	5
	.quad	32
smTu_info:
.LcmX4:
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $smTv_info,0(%rbp)
	testq $7,%rbx
	jne smTv_info
	jmp *(%rbx)
	.size smTu_info, .-smTu_info
.text
	.align 8
	.quad	25769803799
	.quad	0
	.quad	15
.globl EngineziModelziModel_zdWModel_info
.type EngineziModelziModel_zdWModel_info, @object
EngineziModelziModel_zdWModel_info:
.LcmXc:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmXe
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_zdWModel_ct
	je .LcmXf
.LcmXg:
	incq EngineziModelziModel_zdWModel_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $smTu_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne smTu_info
	jmp *(%rbx)
.LcmXe:
	movl $EngineziModelziModel_zdWModel_closure,%ebx
	jmp *-8(%r13)
.LcmXf:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_zdWModel_ct+56
	movq $EngineziModelziModel_zdWModel_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_zdWModel_ct
	jmp .LcmXg
	.size EngineziModelziModel_zdWModel_info, .-EngineziModelziModel_zdWModel_info
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelAABBs_closure
.type EngineziModelziModel_modelAABBs_closure, @object
EngineziModelziModel_modelAABBs_closure:
	.quad	EngineziModelziModel_modelAABBs_info
.section .rodata
	.align 8
.align 1
cmXB_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmXE_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelAABBs_ct
.type EngineziModelziModel_modelAABBs_ct, @object
EngineziModelziModel_modelAABBs_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cmXB_str
	.quad	cmXE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
smXo_info:
.LcmXO:
	movq 39(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size smXo_info, .-smXo_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModel_modelAABBs_info
.type EngineziModelziModel_modelAABBs_info, @object
EngineziModelziModel_modelAABBs_info:
.LcmXS:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmXU
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_modelAABBs_ct
	je .LcmXV
.LcmXW:
	incq EngineziModelziModel_modelAABBs_ct+40
	movq %r14,%rbx
	movq $smXo_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smXo_info
	jmp *(%rbx)
.LcmXU:
	movl $EngineziModelziModel_modelAABBs_closure,%ebx
	jmp *-8(%r13)
.LcmXV:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_modelAABBs_ct+56
	movq $EngineziModelziModel_modelAABBs_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_modelAABBs_ct
	jmp .LcmXW
	.size EngineziModelziModel_modelAABBs_info, .-EngineziModelziModel_modelAABBs_info
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelShader_closure
.type EngineziModelziModel_modelShader_closure, @object
EngineziModelziModel_modelShader_closure:
	.quad	EngineziModelziModel_modelShader_info
.section .rodata
	.align 8
.align 1
cmYh_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmYk_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelShader_ct
.type EngineziModelziModel_modelShader_ct, @object
EngineziModelziModel_modelShader_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cmYh_str
	.quad	cmYk_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
smY3_info:
.LcmYu:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size smY3_info, .-smY3_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModel_modelShader_info
.type EngineziModelziModel_modelShader_info, @object
EngineziModelziModel_modelShader_info:
.LcmYy:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmYA
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_modelShader_ct
	je .LcmYB
.LcmYC:
	incq EngineziModelziModel_modelShader_ct+40
	movq %r14,%rbx
	movq $smY3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smY3_info
	jmp *(%rbx)
.LcmYA:
	movl $EngineziModelziModel_modelShader_closure,%ebx
	jmp *-8(%r13)
.LcmYB:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_modelShader_ct+56
	movq $EngineziModelziModel_modelShader_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_modelShader_ct
	jmp .LcmYC
	.size EngineziModelziModel_modelShader_info, .-EngineziModelziModel_modelShader_info
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelShaderVars_closure
.type EngineziModelziModel_modelShaderVars_closure, @object
EngineziModelziModel_modelShaderVars_closure:
	.quad	EngineziModelziModel_modelShaderVars_info
.section .rodata
	.align 8
.align 1
cmYX_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	83
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	86
	.byte	97
	.byte	114
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	106
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmZ0_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelShaderVars_ct
.type EngineziModelziModel_modelShaderVars_ct, @object
EngineziModelziModel_modelShaderVars_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cmYX_str
	.quad	cmZ0_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
smYK_info:
.LcmZa:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size smYK_info, .-smYK_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModel_modelShaderVars_info
.type EngineziModelziModel_modelShaderVars_info, @object
EngineziModelziModel_modelShaderVars_info:
.LcmZe:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmZg
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_modelShaderVars_ct
	je .LcmZh
.LcmZi:
	incq EngineziModelziModel_modelShaderVars_ct+40
	movq %r14,%rbx
	movq $smYK_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smYK_info
	jmp *(%rbx)
.LcmZg:
	movl $EngineziModelziModel_modelShaderVars_closure,%ebx
	jmp *-8(%r13)
.LcmZh:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_modelShaderVars_ct+56
	movq $EngineziModelziModel_modelShaderVars_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_modelShaderVars_ct
	jmp .LcmZi
	.size EngineziModelziModel_modelShaderVars_info, .-EngineziModelziModel_modelShaderVars_info
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelTextures_closure
.type EngineziModelziModel_modelTextures_closure, @object
EngineziModelziModel_modelTextures_closure:
	.quad	EngineziModelziModel_modelTextures_info
.section .rodata
	.align 8
.align 1
cmZD_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
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
	.byte	109
	.byte	78
	.byte	105
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmZG_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelTextures_ct
.type EngineziModelziModel_modelTextures_ct, @object
EngineziModelziModel_modelTextures_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cmZD_str
	.quad	cmZG_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
smZq_info:
.LcmZQ:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size smZq_info, .-smZq_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModel_modelTextures_info
.type EngineziModelziModel_modelTextures_info, @object
EngineziModelziModel_modelTextures_info:
.LcmZU:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmZW
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_modelTextures_ct
	je .LcmZX
.LcmZY:
	incq EngineziModelziModel_modelTextures_ct+40
	movq %r14,%rbx
	movq $smZq_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smZq_info
	jmp *(%rbx)
.LcmZW:
	movl $EngineziModelziModel_modelTextures_closure,%ebx
	jmp *-8(%r13)
.LcmZX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_modelTextures_ct+56
	movq $EngineziModelziModel_modelTextures_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_modelTextures_ct
	jmp .LcmZY
	.size EngineziModelziModel_modelTextures_info, .-EngineziModelziModel_modelTextures_info
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelVertCount_closure
.type EngineziModelziModel_modelVertCount_closure, @object
EngineziModelziModel_modelVertCount_closure:
	.quad	EngineziModelziModel_modelVertCount_info
.section .rodata
	.align 8
.align 1
cn0j_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	86
	.byte	101
	.byte	114
	.byte	116
	.byte	67
	.byte	111
	.byte	117
	.byte	110
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cn0m_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelVertCount_ct
.type EngineziModelziModel_modelVertCount_ct, @object
EngineziModelziModel_modelVertCount_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cn0j_str
	.quad	cn0m_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sn06_info:
.Lcn0w:
	movq 31(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sn06_info, .-sn06_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModel_modelVertCount_info
.type EngineziModelziModel_modelVertCount_info, @object
EngineziModelziModel_modelVertCount_info:
.Lcn0A:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcn0C
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_modelVertCount_ct
	je .Lcn0D
.Lcn0E:
	incq EngineziModelziModel_modelVertCount_ct+40
	movq %r14,%rbx
	movq $sn06_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sn06_info
	jmp *(%rbx)
.Lcn0C:
	movl $EngineziModelziModel_modelVertCount_closure,%ebx
	jmp *-8(%r13)
.Lcn0D:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_modelVertCount_ct+56
	movq $EngineziModelziModel_modelVertCount_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_modelVertCount_ct
	jmp .Lcn0E
	.size EngineziModelziModel_modelVertCount_info, .-EngineziModelziModel_modelVertCount_info
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelWholeAABB_closure
.type EngineziModelziModel_modelWholeAABB_closure, @object
EngineziModelziModel_modelWholeAABB_closure:
	.quad	EngineziModelziModel_modelWholeAABB_info
.section .rodata
	.align 8
.align 1
cn0Z_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	87
	.byte	104
	.byte	111
	.byte	108
	.byte	101
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cn12_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_modelWholeAABB_ct
.type EngineziModelziModel_modelWholeAABB_ct, @object
EngineziModelziModel_modelWholeAABB_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cn0Z_str
	.quad	cn12_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sn0M_info:
.Lcn1c:
	movq 47(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sn0M_info, .-sn0M_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModel_modelWholeAABB_info
.type EngineziModelziModel_modelWholeAABB_info, @object
EngineziModelziModel_modelWholeAABB_info:
.Lcn1g:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcn1i
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_modelWholeAABB_ct
	je .Lcn1j
.Lcn1k:
	incq EngineziModelziModel_modelWholeAABB_ct+40
	movq %r14,%rbx
	movq $sn0M_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sn0M_info
	jmp *(%rbx)
.Lcn1i:
	movl $EngineziModelziModel_modelWholeAABB_closure,%ebx
	jmp *-8(%r13)
.Lcn1j:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_modelWholeAABB_ct+56
	movq $EngineziModelziModel_modelWholeAABB_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_modelWholeAABB_ct
	jmp .Lcn1k
	.size EngineziModelziModel_modelWholeAABB_info, .-EngineziModelziModel_modelWholeAABB_info
.section .data
	.align 8
.align 1
EngineziModelziModel_createModel1_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	EngineziGraphicsziGraphicsUtils_createBufferIdAll1_closure
	.quad	EngineziGraphicsziShaders_loadProgram1_closure
	.quad	EngineziGraphicsziShaders_getAttrLocs1_closure
	.quad	EngineziGraphicsziShaders_createShaderAttribs_closure
	.quad	EngineziModelziAABB_aabbFromPoints_closure
	.quad	EngineziModelziAABB_aabbByFace_closure
.data
	.align 8
.align 1
.globl EngineziModelziModel_createModel1_closure
.type EngineziModelziModel_createModel1_closure, @object
EngineziModelziModel_createModel1_closure:
	.quad	EngineziModelziModel_createModel1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cn27_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
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
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cn2a_str:
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_createModel1_ct
.type EngineziModelziModel_createModel1_ct, @object
EngineziModelziModel_createModel1_ct:
	.quad	0
	.quad	7
	.quad	1
	.quad	cn27_str
	.quad	cn2a_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(sn1v_info)+0
	.long	0
	.quad	0
	.quad	141733920800
sn1v_info:
.Lcn2L:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcn2M
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.Lcn2M:
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%r14
	addq $8,%rbp
	jmp EngineziModelziAABB_aabbFromPoints_info
	.size sn1v_info, .-sn1v_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(smVn_info)+0
	.long	0
	.quad	1
	.quad	141733920785
smVn_info:
.Lcn2U:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcn2W
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sn1v_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sn1v_info
	jmp *(%rbx)
.Lcn2W:
	jmp *-16(%r13)
	.size smVn_info, .-smVn_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(sn1C_info)+0
	.long	0
	.quad	0
	.quad	279172874272
sn1C_info:
.Lcn37:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcn38
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.Lcn38:
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%r14
	addq $8,%rbp
	jmp EngineziModelziAABB_aabbByFace_info
	.size sn1C_info, .-sn1C_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(smVf_info)+0
	.long	0
	.quad	1
	.quad	279172874257
smVf_info:
.Lcn3g:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcn3i
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sn1C_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sn1C_info
	jmp *(%rbx)
.Lcn3i:
	jmp *-16(%r13)
	.size smVf_info, .-smVf_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(smV8_info)+0
	.long	0
	.quad	3
	.quad	416611827744
smV8_info:
.Lcn3n:
	addq $136,%r12
	cmpq 144(%r13),%r12
	ja .Lcn3r
	addq $17,EngineziModelziModel_createModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $17,ALLOC_HEAP_tot
	movq $smVn_info,-128(%r12)
	movq 24(%rbp),%rax
	movq %rax,-112(%r12)
	movq $base_DataziMaybe_Just_con_info,-104(%r12)
	leaq -128(%r12),%rax
	movq %rax,-96(%r12)
	movq $smVf_info,-88(%r12)
	movq 24(%rbp),%rax
	movq %rax,-72(%r12)
	movq $base_DataziMaybe_Just_con_info,-64(%r12)
	leaq -88(%r12),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziModelziModel_Model_con_info,-48(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-24(%r12)
	movq %rbx,-16(%r12)
	leaq -62(%r12),%rax
	movq %rax,-8(%r12)
	leaq -102(%r12),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcn3r:
	movq $136,192(%r13)
.Lcn3p:
	jmp *-16(%r13)
	.size smV8_info, .-smV8_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(smV7_info)+0
	.long	0
	.quad	389
	.quad	416611827744
smV7_info:
.Lcn3C:
	movq %rbx,24(%rbp)
	movq 8(%rbp),%rbx
	movq $smV8_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne smV8_info
	jmp *(%rbx)
	.size smV7_info, .-smV7_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(smV6_info)+0
	.long	0
	.quad	5
	.quad	485331304480
smV6_info:
.Lcn3I:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,32(%rbp)
	movq 24(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq $smV7_info,0(%rbp)
	jmp EngineziGraphicsziShaders_createShaderAttribs_info
	.size smV6_info, .-smV6_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(sn1u_info)+0
	.long	0
	.quad	6
	.quad	485331304464
sn1u_info:
.Lcn3N:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcn3P
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
	movq $smV6_info,-64(%rbp)
	addq $-64,%rbp
	testq $7,%rbx
	jne smV6_info
	jmp *(%rbx)
.Lcn3P:
	jmp *-16(%r13)
	.size sn1u_info, .-sn1u_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(sn1y_info)+0
	.long	0
	.quad	5
	.quad	485331304480
sn1y_info:
.Lcn3Z:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .Lcn43
	addq $8,EngineziModelziModel_createModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $sn1u_info,-56(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -56(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.Lcn43:
	movq $64,192(%r13)
.Lcn41:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sn1y_info, .-sn1y_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(sn1z_info)+0
	.long	0
	.quad	4
	.quad	493921239072
sn1z_info:
.Lcn4b:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 16(%rbp),%r14
	movq $sn1y_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziGraphicsziGraphicsUtils_createBufferIdAll1_info
	.size sn1z_info, .-sn1z_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(sn1A_info)+0
	.long	0
	.quad	4
	.quad	528280977440
sn1A_info:
.Lcn4e:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 24(%rbp),%rsi
	movq %rbx,24(%rbp)
	movq $sn1z_info,0(%rbp)
	jmp EngineziGraphicsziShaders_getAttrLocs1_info
	.size sn1A_info, .-sn1A_info
.text
	.align 8
	.long	EngineziModelziModel_createModel1_srt-(EngineziModelziModel_createModel1_info)+0
	.long	0
	.quad	30064771095
	.quad	0
	.quad	545460846607
.globl EngineziModelziModel_createModel1_info
.type EngineziModelziModel_createModel1_info, @object
EngineziModelziModel_createModel1_info:
.Lcn4h:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcn4j
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_createModel1_ct
	je .Lcn4k
.Lcn4l:
	incq EngineziModelziModel_createModel1_ct+40
	incq KNOWN_CALL_ctr
	movq %r9,-24(%rbp)
	movq %r8,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq $sn1A_info,-32(%rbp)
	addq $-32,%rbp
	jmp EngineziGraphicsziShaders_loadProgram1_info
.Lcn4j:
	movl $EngineziModelziModel_createModel1_closure,%ebx
	jmp *-8(%r13)
.Lcn4k:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_createModel1_ct+56
	movq $EngineziModelziModel_createModel1_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_createModel1_ct
	jmp .Lcn4l
	.size EngineziModelziModel_createModel1_info, .-EngineziModelziModel_createModel1_info
.section .data
	.align 8
.align 1
EngineziModelziModel_createModel_srt:
	.quad	EngineziModelziModel_createModel1_closure
.data
	.align 8
.align 1
.globl EngineziModelziModel_createModel_closure
.type EngineziModelziModel_createModel_closure, @object
EngineziModelziModel_createModel_closure:
	.quad	EngineziModelziModel_createModel_info
	.quad	0
.section .rodata
	.align 8
.align 1
cn4v_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
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
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cn4y_str:
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_createModel_ct
.type EngineziModelziModel_createModel_ct, @object
EngineziModelziModel_createModel_ct:
	.quad	0
	.quad	7
	.quad	1
	.quad	cn4v_str
	.quad	cn4y_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModel_createModel_srt-(EngineziModelziModel_createModel_info)+0
	.long	0
	.quad	30064771095
	.quad	0
	.quad	4294967311
.globl EngineziModelziModel_createModel_info
.type EngineziModelziModel_createModel_info, @object
EngineziModelziModel_createModel_info:
.Lcn4D:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_createModel_ct
	je .Lcn4G
.Lcn4I:
	incq EngineziModelziModel_createModel_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziModelziModel_createModel1_info
.Lcn4G:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_createModel_ct+56
	movq $EngineziModelziModel_createModel_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_createModel_ct
	jmp .Lcn4I
	.size EngineziModelziModel_createModel_info, .-EngineziModelziModel_createModel_info
.data
	.align 8
.align 1
.globl EngineziModelziModel_Model_closure
.type EngineziModelziModel_Model_closure, @object
EngineziModelziModel_Model_closure:
	.quad	EngineziModelziModel_Model_info
.section .rodata
	.align 8
.align 1
cn4Q_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	109
	.byte	78
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cn4T_str:
	.byte	83
	.byte	76
	.byte	76
	.byte	83
	.byte	77
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModel_Model_ct
.type EngineziModelziModel_Model_ct, @object
EngineziModelziModel_Model_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	cn4Q_str
	.quad	cn4T_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	25769803799
	.quad	0
	.quad	15
EngineziModelziModel_Model_info:
.Lcn4Y:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lcn53
	addq $7,EngineziModelziModel_Model_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModel_Model_ct
	je .Lcn55
.Lcn57:
	incq EngineziModelziModel_Model_ct+40
	incq RET_NEW_ctr
	movq $EngineziModelziModel_Model_con_info,-48(%r12)
	movq %r14,-40(%r12)
	movq %rsi,-32(%r12)
	movq %rdi,-24(%r12)
	movq %r8,-16(%r12)
	movq %r9,-8(%r12)
	movq 0(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcn53:
	movq $56,192(%r13)
.Lcn51:
	movl $EngineziModelziModel_Model_closure,%ebx
	jmp *-8(%r13)
.Lcn55:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModel_Model_ct+56
	movq $EngineziModelziModel_Model_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModel_Model_ct
	jmp .Lcn57
	.size EngineziModelziModel_Model_info, .-EngineziModelziModel_Model_info
.section .rodata
	.align 8
.align 1
in5e_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	0
.text
	.align 8
	.long	in5e_str-(EngineziModelziModel_Model_con_info)+0
	.long	0
	.quad	6
	.quad	1
.globl EngineziModelziModel_Model_con_info
.type EngineziModelziModel_Model_con_info, @object
EngineziModelziModel_Model_con_info:
.Lcn5h:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziModelziModel_Model_con_info, .-EngineziModelziModel_Model_con_info
.section .rodata
	.align 8
.align 1
in5j_str:
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	0
.text
	.align 8
	.long	in5j_str-(EngineziModelziModel_Model_static_info)+0
	.long	0
	.quad	6
	.quad	7
.globl EngineziModelziModel_Model_static_info
.type EngineziModelziModel_Model_static_info, @object
EngineziModelziModel_Model_static_info:
.Lcn5m:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziModelziModel_Model_static_info, .-EngineziModelziModel_Model_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
