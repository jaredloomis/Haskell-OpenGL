.data
	.align 8
.align 1
.globl __stginit_EngineziModelziMaterial
.type __stginit_EngineziModelziMaterial, @object
__stginit_EngineziModelziMaterial:
.data
	.align 8
.align 1
rurL_closure:
	.quad	rurL_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuCd_str:
	.byte	116
	.byte	111
	.byte	84
	.byte	114
	.byte	105
	.byte	112
	.byte	108
	.byte	101
	.byte	116
	.byte	77
	.byte	116
	.byte	108
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rurL_info:
.LcuCh:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuCj
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuCl
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
	je .LcuCm
.LcuCn:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuCd_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuCl:
	movq $16,192(%r13)
.LcuCj:
	jmp *-16(%r13)
.LcuCm:
	jmp *(%rbx)
	.size rurL_info, .-rurL_info
.section .data
	.align 8
.align 1
rurM_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rurL_closure
.data
	.align 8
.align 1
rurM_closure:
	.quad	rurM_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rurM_srt-(rurM_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rurM_info:
.LcuCE:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuCG
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuCI
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
	je .LcuCJ
.LcuCK:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rurL_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcuCI:
	movq $16,192(%r13)
.LcuCG:
	jmp *-16(%r13)
.LcuCJ:
	jmp *(%rbx)
	.size rurM_info, .-rurM_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_emptyMaterial_closure
.type EngineziModelziMaterial_emptyMaterial_closure, @object
EngineziModelziMaterial_emptyMaterial_closure:
	.quad	EngineziModelziMaterial_Material_static_info
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matAmbientColor_closure
.type EngineziModelziMaterial_matAmbientColor_closure, @object
EngineziModelziMaterial_matAmbientColor_closure:
	.quad	EngineziModelziMaterial_matAmbientColor_info
.section .rodata
	.align 8
.align 1
cuD7_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	65
	.byte	109
	.byte	98
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	67
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuDa_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matAmbientColor_ct
.type EngineziModelziMaterial_matAmbientColor_ct, @object
EngineziModelziMaterial_matAmbientColor_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuD7_str
	.quad	cuDa_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
suCT_info:
.LcuDk:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size suCT_info, .-suCT_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziMaterial_matAmbientColor_info
.type EngineziModelziMaterial_matAmbientColor_info, @object
EngineziModelziMaterial_matAmbientColor_info:
.LcuDo:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuDq
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_matAmbientColor_ct
	je .LcuDr
.LcuDs:
	incq EngineziModelziMaterial_matAmbientColor_ct+40
	movq %r14,%rbx
	movq $suCT_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suCT_info
	jmp *(%rbx)
.LcuDq:
	movl $EngineziModelziMaterial_matAmbientColor_closure,%ebx
	jmp *-8(%r13)
.LcuDr:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_matAmbientColor_ct+56
	movq $EngineziModelziMaterial_matAmbientColor_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_matAmbientColor_ct
	jmp .LcuDs
	.size EngineziModelziMaterial_matAmbientColor_info, .-EngineziModelziMaterial_matAmbientColor_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matDiffuseColor_closure
.type EngineziModelziMaterial_matDiffuseColor_closure, @object
EngineziModelziMaterial_matDiffuseColor_closure:
	.quad	EngineziModelziMaterial_matDiffuseColor_info
.section .rodata
	.align 8
.align 1
cuDN_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	68
	.byte	105
	.byte	102
	.byte	102
	.byte	117
	.byte	115
	.byte	101
	.byte	67
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuDQ_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matDiffuseColor_ct
.type EngineziModelziMaterial_matDiffuseColor_ct, @object
EngineziModelziMaterial_matDiffuseColor_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuDN_str
	.quad	cuDQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
suDA_info:
.LcuE0:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size suDA_info, .-suDA_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziMaterial_matDiffuseColor_info
.type EngineziModelziMaterial_matDiffuseColor_info, @object
EngineziModelziMaterial_matDiffuseColor_info:
.LcuE4:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuE6
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_matDiffuseColor_ct
	je .LcuE7
.LcuE8:
	incq EngineziModelziMaterial_matDiffuseColor_ct+40
	movq %r14,%rbx
	movq $suDA_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suDA_info
	jmp *(%rbx)
.LcuE6:
	movl $EngineziModelziMaterial_matDiffuseColor_closure,%ebx
	jmp *-8(%r13)
.LcuE7:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_matDiffuseColor_ct+56
	movq $EngineziModelziMaterial_matDiffuseColor_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_matDiffuseColor_ct
	jmp .LcuE8
	.size EngineziModelziMaterial_matDiffuseColor_info, .-EngineziModelziMaterial_matDiffuseColor_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matName_closure
.type EngineziModelziMaterial_matName_closure, @object
EngineziModelziMaterial_matName_closure:
	.quad	EngineziModelziMaterial_matName_info
.section .rodata
	.align 8
.align 1
cuEt_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	78
	.byte	97
	.byte	109
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	106
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuEw_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matName_ct
.type EngineziModelziMaterial_matName_ct, @object
EngineziModelziMaterial_matName_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuEt_str
	.quad	cuEw_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
suEf_info:
.LcuEG:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size suEf_info, .-suEf_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziMaterial_matName_info
.type EngineziModelziMaterial_matName_info, @object
EngineziModelziMaterial_matName_info:
.LcuEK:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuEM
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_matName_ct
	je .LcuEN
.LcuEO:
	incq EngineziModelziMaterial_matName_ct+40
	movq %r14,%rbx
	movq $suEf_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suEf_info
	jmp *(%rbx)
.LcuEM:
	movl $EngineziModelziMaterial_matName_closure,%ebx
	jmp *-8(%r13)
.LcuEN:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_matName_ct+56
	movq $EngineziModelziMaterial_matName_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_matName_ct
	jmp .LcuEO
	.size EngineziModelziMaterial_matName_info, .-EngineziModelziMaterial_matName_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matSpecularColor_closure
.type EngineziModelziMaterial_matSpecularColor_closure, @object
EngineziModelziMaterial_matSpecularColor_closure:
	.quad	EngineziModelziMaterial_matSpecularColor_info
.section .rodata
	.align 8
.align 1
cuF9_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	83
	.byte	112
	.byte	101
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	114
	.byte	67
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	105
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuFc_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matSpecularColor_ct
.type EngineziModelziMaterial_matSpecularColor_ct, @object
EngineziModelziMaterial_matSpecularColor_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuF9_str
	.quad	cuFc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
suEW_info:
.LcuFm:
	movq 31(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size suEW_info, .-suEW_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziMaterial_matSpecularColor_info
.type EngineziModelziMaterial_matSpecularColor_info, @object
EngineziModelziMaterial_matSpecularColor_info:
.LcuFq:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuFs
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_matSpecularColor_ct
	je .LcuFt
.LcuFu:
	incq EngineziModelziMaterial_matSpecularColor_ct+40
	movq %r14,%rbx
	movq $suEW_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suEW_info
	jmp *(%rbx)
.LcuFs:
	movl $EngineziModelziMaterial_matSpecularColor_closure,%ebx
	jmp *-8(%r13)
.LcuFt:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_matSpecularColor_ct+56
	movq $EngineziModelziMaterial_matSpecularColor_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_matSpecularColor_ct
	jmp .LcuFu
	.size EngineziModelziMaterial_matSpecularColor_info, .-EngineziModelziMaterial_matSpecularColor_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matTexId_closure
.type EngineziModelziMaterial_matTexId_closure, @object
EngineziModelziMaterial_matTexId_closure:
	.quad	EngineziModelziMaterial_matTexId_info
.section .rodata
	.align 8
.align 1
cuFP_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	109
	.byte	97
	.byte	116
	.byte	84
	.byte	101
	.byte	120
	.byte	73
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuFS_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matTexId_ct
.type EngineziModelziMaterial_matTexId_ct, @object
EngineziModelziMaterial_matTexId_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuFP_str
	.quad	cuFS_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
suFC_info:
.LcuG2:
	movq 47(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size suFC_info, .-suFC_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziMaterial_matTexId_info
.type EngineziModelziMaterial_matTexId_info, @object
EngineziModelziMaterial_matTexId_info:
.LcuG6:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuG8
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_matTexId_ct
	je .LcuG9
.LcuGa:
	incq EngineziModelziMaterial_matTexId_ct+40
	movq %r14,%rbx
	movq $suFC_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suFC_info
	jmp *(%rbx)
.LcuG8:
	movl $EngineziModelziMaterial_matTexId_closure,%ebx
	jmp *-8(%r13)
.LcuG9:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_matTexId_ct+56
	movq $EngineziModelziMaterial_matTexId_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_matTexId_ct
	jmp .LcuGa
	.size EngineziModelziMaterial_matTexId_info, .-EngineziModelziMaterial_matTexId_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matTexture_closure
.type EngineziModelziMaterial_matTexture_closure, @object
EngineziModelziMaterial_matTexture_closure:
	.quad	EngineziModelziMaterial_matTexture_info
.section .rodata
	.align 8
.align 1
cuGv_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	109
	.byte	97
	.byte	116
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
	.byte	116
	.byte	105
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuGy_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_matTexture_ct
.type EngineziModelziMaterial_matTexture_ct, @object
EngineziModelziMaterial_matTexture_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuGv_str
	.quad	cuGy_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
suGi_info:
.LcuGI:
	movq 39(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size suGi_info, .-suGi_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziMaterial_matTexture_info
.type EngineziModelziMaterial_matTexture_info, @object
EngineziModelziMaterial_matTexture_info:
.LcuGM:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuGO
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_matTexture_ct
	je .LcuGP
.LcuGQ:
	incq EngineziModelziMaterial_matTexture_ct+40
	movq %r14,%rbx
	movq $suGi_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suGi_info
	jmp *(%rbx)
.LcuGO:
	movl $EngineziModelziMaterial_matTexture_closure,%ebx
	jmp *-8(%r13)
.LcuGP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_matTexture_ct+56
	movq $EngineziModelziMaterial_matTexture_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_matTexture_ct
	jmp .LcuGQ
	.size EngineziModelziMaterial_matTexture_info, .-EngineziModelziMaterial_matTexture_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile6_closure
.type EngineziModelziMaterial_loadMtlFile6_closure, @object
EngineziModelziMaterial_loadMtlFile6_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	1
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile9_closure
.type EngineziModelziMaterial_loadMtlFile9_closure, @object
EngineziModelziMaterial_loadMtlFile9_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	5
.section .data
	.align 8
.align 1
EngineziModelziMaterial_loadMtlFile12_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziModelziMaterial_loadMtlFile9_closure
	.quad	EngineziModelziMaterial_loadMtlFile6_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile12_closure
.type EngineziModelziMaterial_loadMtlFile12_closure, @object
EngineziModelziMaterial_loadMtlFile12_closure:
	.quad	EngineziModelziMaterial_loadMtlFile12_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
suta_info:
.LcuHz:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcuHF
	addq $4,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcuHF:
	movq $32,192(%r13)
.LcuHD:
	jmp *-16(%r13)
	.size suta_info, .-suta_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile12_srt-(sut9_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sut9_info:
.LcuHK:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile9_closure+1,%esi
	movq $suta_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sut9_info, .-sut9_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile12_srt-(sut8_info)+0
	.long	0
	.quad	0
	.quad	30064771104
sut8_info:
.LcuHN:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile9_closure+1,%esi
	movq $sut9_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sut8_info, .-sut8_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile12_srt-(EngineziModelziMaterial_loadMtlFile12_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziModelziMaterial_loadMtlFile12_info
.type EngineziModelziMaterial_loadMtlFile12_info, @object
EngineziModelziMaterial_loadMtlFile12_info:
.LcuHR:
	incq ENT_STATIC_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuHT
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuHV
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
	je .LcuHW
.LcuHX:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile9_closure+1,%esi
	movq $sut8_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcuHV:
	movq $16,192(%r13)
.LcuHT:
	jmp *-16(%r13)
.LcuHW:
	jmp *(%rbx)
	.size EngineziModelziMaterial_loadMtlFile12_info, .-EngineziModelziMaterial_loadMtlFile12_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile11_closure
.type EngineziModelziMaterial_loadMtlFile11_closure, @object
EngineziModelziMaterial_loadMtlFile11_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	EngineziModelziMaterial_loadMtlFile12_closure
	.quad	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile10_closure
.type EngineziModelziMaterial_loadMtlFile10_closure, @object
EngineziModelziMaterial_loadMtlFile10_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	4
.section .data
	.align 8
.align 1
EngineziModelziMaterial_loadMtlFile8_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziModelziMaterial_loadMtlFile10_closure
	.quad	EngineziModelziMaterial_loadMtlFile9_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile8_closure
.type EngineziModelziMaterial_loadMtlFile8_closure, @object
EngineziModelziMaterial_loadMtlFile8_closure:
	.quad	EngineziModelziMaterial_loadMtlFile8_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sutj_info:
.LcuIF:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcuIL
	addq $4,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcuIL:
	movq $32,192(%r13)
.LcuIJ:
	jmp *-16(%r13)
	.size sutj_info, .-sutj_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile8_srt-(suti_info)+0
	.long	0
	.quad	1
	.quad	30064771104
suti_info:
.LcuIQ:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $EngineziModelziMaterial_loadMtlFile10_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile9_closure+1,%esi
	movq $sutj_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size suti_info, .-suti_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile8_srt-(suth_info)+0
	.long	0
	.quad	0
	.quad	30064771104
suth_info:
.LcuIT:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $EngineziModelziMaterial_loadMtlFile10_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile9_closure+1,%esi
	movq $suti_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size suth_info, .-suth_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile8_srt-(EngineziModelziMaterial_loadMtlFile8_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziModelziMaterial_loadMtlFile8_info
.type EngineziModelziMaterial_loadMtlFile8_info, @object
EngineziModelziMaterial_loadMtlFile8_info:
.LcuIX:
	incq ENT_STATIC_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuIZ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuJ1
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
	je .LcuJ2
.LcuJ3:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_loadMtlFile10_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile9_closure+1,%esi
	movq $suth_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcuJ1:
	movq $16,192(%r13)
.LcuIZ:
	jmp *-16(%r13)
.LcuJ2:
	jmp *(%rbx)
	.size EngineziModelziMaterial_loadMtlFile8_info, .-EngineziModelziMaterial_loadMtlFile8_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile7_closure
.type EngineziModelziMaterial_loadMtlFile7_closure, @object
EngineziModelziMaterial_loadMtlFile7_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	EngineziModelziMaterial_loadMtlFile8_closure
	.quad	0
.section .data
	.align 8
.align 1
EngineziModelziMaterial_loadMtlFile5_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziModelziMaterial_loadMtlFile6_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile5_closure
.type EngineziModelziMaterial_loadMtlFile5_closure, @object
EngineziModelziMaterial_loadMtlFile5_closure:
	.quad	EngineziModelziMaterial_loadMtlFile5_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
suts_info:
.LcuJI:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcuJO
	addq $4,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcuJO:
	movq $32,192(%r13)
.LcuJM:
	jmp *-16(%r13)
	.size suts_info, .-suts_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile5_srt-(sutr_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sutr_info:
.LcuJT:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%esi
	movq $suts_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sutr_info, .-sutr_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile5_srt-(sutq_info)+0
	.long	0
	.quad	0
	.quad	12884901920
sutq_info:
.LcuJW:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%esi
	movq $sutr_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sutq_info, .-sutq_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile5_srt-(EngineziModelziMaterial_loadMtlFile5_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziModelziMaterial_loadMtlFile5_info
.type EngineziModelziMaterial_loadMtlFile5_info, @object
EngineziModelziMaterial_loadMtlFile5_info:
.LcuK0:
	incq ENT_STATIC_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuK2
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuK4
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
	je .LcuK5
.LcuK6:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%r14d
	movl $EngineziModelziMaterial_loadMtlFile6_closure+1,%esi
	movq $sutq_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcuK4:
	movq $16,192(%r13)
.LcuK2:
	jmp *-16(%r13)
.LcuK5:
	jmp *(%rbx)
	.size EngineziModelziMaterial_loadMtlFile5_info, .-EngineziModelziMaterial_loadMtlFile5_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile4_closure
.type EngineziModelziMaterial_loadMtlFile4_closure, @object
EngineziModelziMaterial_loadMtlFile4_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	EngineziModelziMaterial_loadMtlFile5_closure
	.quad	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile3_closure
.type EngineziModelziMaterial_loadMtlFile3_closure, @object
EngineziModelziMaterial_loadMtlFile3_closure:
	.quad	base_GHCziInt_I32zh_static_info
	.quad	-1
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile2_closure
.type EngineziModelziMaterial_loadMtlFile2_closure, @object
EngineziModelziMaterial_loadMtlFile2_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	EngineziModelziMaterial_loadMtlFile3_closure+1
	.quad	1
.section .data
	.align 8
.align 1
EngineziModelziMaterial_applyDefualtMtl_srt:
	.quad	EngineziModelziMaterial_loadMtlFile4_closure
	.quad	EngineziModelziMaterial_loadMtlFile7_closure
	.quad	EngineziModelziMaterial_loadMtlFile11_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_applyDefualtMtl_closure
.type EngineziModelziMaterial_applyDefualtMtl_closure, @object
EngineziModelziMaterial_applyDefualtMtl_closure:
	.quad	EngineziModelziMaterial_applyDefualtMtl_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuKX_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	68
	.byte	101
	.byte	102
	.byte	117
	.byte	97
	.byte	108
	.byte	116
	.byte	77
	.byte	116
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	50
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuL0_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_applyDefualtMtl_ct
.type EngineziModelziMaterial_applyDefualtMtl_ct, @object
EngineziModelziMaterial_applyDefualtMtl_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuKX_str
	.quad	cuL0_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sutW_info:
.LcuLi:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcuLj
	movl $EngineziModelziMaterial_loadMtlFile2_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcuLj:
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sutW_info, .-sutW_info
.text
	.align 8
	.quad	1
	.quad	17
suKi_info:
.LcuLs:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuLu
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sutW_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sutW_info
	jmp *(%rbx)
.LcuLu:
	jmp *-16(%r13)
	.size suKi_info, .-suKi_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(sutQ_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sutQ_info:
.LcuLF:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcuLG
	movl $EngineziModelziMaterial_loadMtlFile4_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcuLG:
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sutQ_info, .-sutQ_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(suKj_info)+0
	.long	0
	.quad	1
	.quad	4294967313
suKj_info:
.LcuLP:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuLR
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sutQ_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sutQ_info
	jmp *(%rbx)
.LcuLR:
	jmp *-16(%r13)
	.size suKj_info, .-suKj_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(sutL_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sutL_info:
.LcuM2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcuM3
	movl $EngineziModelziMaterial_loadMtlFile7_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcuM3:
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sutL_info, .-sutL_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(suKk_info)+8
	.long	0
	.quad	1
	.quad	4294967313
suKk_info:
.LcuMc:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuMe
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sutL_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sutL_info
	jmp *(%rbx)
.LcuMe:
	jmp *-16(%r13)
	.size suKk_info, .-suKk_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(sutG_info)+16
	.long	0
	.quad	0
	.quad	4294967328
sutG_info:
.LcuMp:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcuMq
	movl $EngineziModelziMaterial_loadMtlFile11_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcuMq:
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sutG_info, .-sutG_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(suKl_info)+16
	.long	0
	.quad	1
	.quad	4294967313
suKl_info:
.LcuMz:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuMB
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sutG_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sutG_info
	jmp *(%rbx)
.LcuMB:
	jmp *-16(%r13)
	.size suKl_info, .-suKl_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(suKp_info)+0
	.long	0
	.quad	0
	.quad	30064771104
suKp_info:
.LcuMG:
	addq $152,%r12
	cmpq 144(%r13),%r12
	ja .LcuMK
	addq $19,EngineziModelziMaterial_applyDefualtMtl_ct+48
	incq ALLOC_HEAP_ctr
	addq $19,ALLOC_HEAP_tot
	movq $suKi_info,-144(%r12)
	movq 47(%rbx),%rax
	movq %rax,-128(%r12)
	movq $suKj_info,-120(%r12)
	movq 31(%rbx),%rax
	movq %rax,-104(%r12)
	movq $suKk_info,-96(%r12)
	movq 23(%rbx),%rax
	movq %rax,-80(%r12)
	movq $suKl_info,-72(%r12)
	movq 15(%rbx),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziModelziMaterial_Material_con_info,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	leaq -72(%r12),%rax
	movq %rax,-32(%r12)
	leaq -96(%r12),%rax
	movq %rax,-24(%r12)
	leaq -120(%r12),%rax
	movq %rax,-16(%r12)
	movq 39(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -144(%r12),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcuMK:
	movq $152,192(%r13)
.LcuMI:
	jmp *-16(%r13)
	.size suKp_info, .-suKp_info
.text
	.align 8
	.long	EngineziModelziMaterial_applyDefualtMtl_srt-(EngineziModelziMaterial_applyDefualtMtl_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
.globl EngineziModelziMaterial_applyDefualtMtl_info
.type EngineziModelziMaterial_applyDefualtMtl_info, @object
EngineziModelziMaterial_applyDefualtMtl_info:
.LcuMX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuMZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_applyDefualtMtl_ct
	je .LcuN0
.LcuN1:
	incq EngineziModelziMaterial_applyDefualtMtl_ct+40
	movq %r14,%rbx
	movq $suKp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suKp_info
	jmp *(%rbx)
.LcuMZ:
	movl $EngineziModelziMaterial_applyDefualtMtl_closure,%ebx
	jmp *-8(%r13)
.LcuN0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_applyDefualtMtl_ct+56
	movq $EngineziModelziMaterial_applyDefualtMtl_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_applyDefualtMtl_ct
	jmp .LcuN1
	.size EngineziModelziMaterial_applyDefualtMtl_info, .-EngineziModelziMaterial_applyDefualtMtl_info
.section .data
	.align 8
.align 1
EngineziModelziMaterial_zdfShowMaterialzuzddShow_srt:
	.quad	base_ForeignziCziTypes_zdfShowCFloat_closure
	.quad	EngineziCoreziVec_zdfShowVec3_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterialzuzddShow_closure
.type EngineziModelziMaterial_zdfShowMaterialzuzddShow_closure, @object
EngineziModelziMaterial_zdfShowMaterialzuzddShow_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzddShow_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterialzuzddShow_srt-(EngineziModelziMaterial_zdfShowMaterialzuzddShow_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziModelziMaterial_zdfShowMaterialzuzddShow_info
.type EngineziModelziMaterial_zdfShowMaterialzuzddShow_info, @object
EngineziModelziMaterial_zdfShowMaterialzuzddShow_info:
.LcuNj:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuNl
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuNn
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
	je .LcuNo
.LcuNp:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfShowCFloat_closure,%r14d
	addq $-16,%rbp
	jmp EngineziCoreziVec_zdfShowVec3_info
.LcuNn:
	movq $16,192(%r13)
.LcuNl:
	jmp *-16(%r13)
.LcuNo:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterialzuzddShow_info, .-EngineziModelziMaterial_zdfShowMaterialzuzddShow_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial11_closure
.type EngineziModelziMaterial_zdfShowMaterial11_closure, @object
EngineziModelziMaterial_zdfShowMaterial11_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial11_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuNE_str:
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	32
	.byte	123
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial11_info
.type EngineziModelziMaterial_zdfShowMaterial11_info, @object
EngineziModelziMaterial_zdfShowMaterial11_info:
.LcuNI:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuNK
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuNM
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
	je .LcuNN
.LcuNO:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuNE_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuNM:
	movq $16,192(%r13)
.LcuNK:
	jmp *-16(%r13)
.LcuNN:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial11_info, .-EngineziModelziMaterial_zdfShowMaterial11_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial10_closure
.type EngineziModelziMaterial_zdfShowMaterial10_closure, @object
EngineziModelziMaterial_zdfShowMaterial10_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial10_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuO3_str:
	.byte	109
	.byte	97
	.byte	116
	.byte	78
	.byte	97
	.byte	109
	.byte	101
	.byte	32
	.byte	61
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial10_info
.type EngineziModelziMaterial_zdfShowMaterial10_info, @object
EngineziModelziMaterial_zdfShowMaterial10_info:
.LcuO7:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuO9
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuOb
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
	je .LcuOc
.LcuOd:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuO3_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuOb:
	movq $16,192(%r13)
.LcuO9:
	jmp *-16(%r13)
.LcuOc:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial10_info, .-EngineziModelziMaterial_zdfShowMaterial10_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial9_closure
.type EngineziModelziMaterial_zdfShowMaterial9_closure, @object
EngineziModelziMaterial_zdfShowMaterial9_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial9_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuOs_str:
	.byte	44
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial9_info
.type EngineziModelziMaterial_zdfShowMaterial9_info, @object
EngineziModelziMaterial_zdfShowMaterial9_info:
.LcuOw:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuOy
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuOA
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
	je .LcuOB
.LcuOC:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuOs_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuOA:
	movq $16,192(%r13)
.LcuOy:
	jmp *-16(%r13)
.LcuOB:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial9_info, .-EngineziModelziMaterial_zdfShowMaterial9_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial8_closure
.type EngineziModelziMaterial_zdfShowMaterial8_closure, @object
EngineziModelziMaterial_zdfShowMaterial8_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial8_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuOR_str:
	.byte	109
	.byte	97
	.byte	116
	.byte	65
	.byte	109
	.byte	98
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	67
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	32
	.byte	61
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial8_info
.type EngineziModelziMaterial_zdfShowMaterial8_info, @object
EngineziModelziMaterial_zdfShowMaterial8_info:
.LcuOV:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuOX
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuOZ
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
	je .LcuP0
.LcuP1:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuOR_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuOZ:
	movq $16,192(%r13)
.LcuOX:
	jmp *-16(%r13)
.LcuP0:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial8_info, .-EngineziModelziMaterial_zdfShowMaterial8_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial7_closure
.type EngineziModelziMaterial_zdfShowMaterial7_closure, @object
EngineziModelziMaterial_zdfShowMaterial7_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial6_closure
.type EngineziModelziMaterial_zdfShowMaterial6_closure, @object
EngineziModelziMaterial_zdfShowMaterial6_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial6_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuPj_str:
	.byte	109
	.byte	97
	.byte	116
	.byte	68
	.byte	105
	.byte	102
	.byte	102
	.byte	117
	.byte	115
	.byte	101
	.byte	67
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	32
	.byte	61
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial6_info
.type EngineziModelziMaterial_zdfShowMaterial6_info, @object
EngineziModelziMaterial_zdfShowMaterial6_info:
.LcuPn:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuPp
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuPr
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
	je .LcuPs
.LcuPt:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuPj_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuPr:
	movq $16,192(%r13)
.LcuPp:
	jmp *-16(%r13)
.LcuPs:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial6_info, .-EngineziModelziMaterial_zdfShowMaterial6_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial5_closure
.type EngineziModelziMaterial_zdfShowMaterial5_closure, @object
EngineziModelziMaterial_zdfShowMaterial5_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial5_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuPI_str:
	.byte	109
	.byte	97
	.byte	116
	.byte	83
	.byte	112
	.byte	101
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	114
	.byte	67
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	32
	.byte	61
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial5_info
.type EngineziModelziMaterial_zdfShowMaterial5_info, @object
EngineziModelziMaterial_zdfShowMaterial5_info:
.LcuPM:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuPO
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuPQ
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
	je .LcuPR
.LcuPS:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuPI_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuPQ:
	movq $16,192(%r13)
.LcuPO:
	jmp *-16(%r13)
.LcuPR:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial5_info, .-EngineziModelziMaterial_zdfShowMaterial5_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial4_closure
.type EngineziModelziMaterial_zdfShowMaterial4_closure, @object
EngineziModelziMaterial_zdfShowMaterial4_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial4_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuQ7_str:
	.byte	109
	.byte	97
	.byte	116
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	61
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial4_info
.type EngineziModelziMaterial_zdfShowMaterial4_info, @object
EngineziModelziMaterial_zdfShowMaterial4_info:
.LcuQb:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuQd
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuQf
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
	je .LcuQg
.LcuQh:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuQ7_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuQf:
	movq $16,192(%r13)
.LcuQd:
	jmp *-16(%r13)
.LcuQg:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial4_info, .-EngineziModelziMaterial_zdfShowMaterial4_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial3_closure
.type EngineziModelziMaterial_zdfShowMaterial3_closure, @object
EngineziModelziMaterial_zdfShowMaterial3_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial3_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cuQw_str:
	.byte	109
	.byte	97
	.byte	116
	.byte	84
	.byte	101
	.byte	120
	.byte	73
	.byte	100
	.byte	32
	.byte	61
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziMaterial_zdfShowMaterial3_info
.type EngineziModelziMaterial_zdfShowMaterial3_info, @object
EngineziModelziMaterial_zdfShowMaterial3_info:
.LcuQA:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuQC
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcuQE
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
	je .LcuQF
.LcuQG:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cuQw_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcuQE:
	movq $16,192(%r13)
.LcuQC:
	jmp *-16(%r13)
.LcuQF:
	jmp *(%rbx)
	.size EngineziModelziMaterial_zdfShowMaterial3_info, .-EngineziModelziMaterial_zdfShowMaterial3_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial2_closure
.type EngineziModelziMaterial_zdfShowMaterial2_closure, @object
EngineziModelziMaterial_zdfShowMaterial2_closure:
	.quad	ghczmprim_GHCziTypes_Czh_static_info
	.quad	125
.section .data
	.align 8
.align 1
EngineziModelziMaterial_zdwzdcshowsPrec_srt:
	.quad	base_GHCziShow_showLitString_closure
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureObject_zdfShowTextureObject_closure
	.quad	base_GHCziShow_zdfShowMaybezuzdcshowsPrec_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial3_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial4_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial5_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial6_closure
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzddShow_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial8_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial9_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial10_closure
	.quad	EngineziModelziMaterial_zdfShowMaterial11_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdwzdcshowsPrec_closure
.type EngineziModelziMaterial_zdwzdcshowsPrec_closure, @object
EngineziModelziMaterial_zdwzdcshowsPrec_closure:
	.quad	EngineziModelziMaterial_zdwzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuRc_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
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
	.byte	116
	.byte	105
	.byte	99
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuRe_str:
	.byte	105
	.byte	76
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdwzdcshowsPrec_ct
.type EngineziModelziMaterial_zdwzdcshowsPrec_ct, @object
EngineziModelziMaterial_zdwzdcshowsPrec_ct:
	.quad	0
	.quad	8
	.quad	3
	.quad	cuRc_str
	.quad	cuRe_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziModelziMaterial_zdwzdcshowsPrec_slow
.type EngineziModelziMaterial_zdwzdcshowsPrec_slow, @object
EngineziModelziMaterial_zdwzdcshowsPrec_slow:
.LcuRh:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziModelziMaterial_zdwzdcshowsPrec_info
	.size EngineziModelziMaterial_zdwzdcshowsPrec_slow, .-EngineziModelziMaterial_zdwzdcshowsPrec_slow
.section .rodata
	.align 8
.align 1
cuRk_str:
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	117
	.byte	117
	.byte	83
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cuRn_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
suuS_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuRk_str
	.quad	cuRn_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suui_info)+16
	.long	0
	.quad	2
	.quad	4294967315
suui_info:
.LcuS4:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuS6
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcuS8
	addq $3,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $EngineziModelziMaterial_zdfShowMaterial2_closure+1,-8(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfShowCInt_closure,%r14d
	movl $EngineziModelziMaterial_zdfShowMaterial7_closure+1,%esi
	movq 16(%rbx),%rdi
	leaq -14(%r12),%r8
	addq $-16,%rbp
	jmp base_GHCziShow_zdfShowMaybezuzdcshowsPrec_info
.LcuS8:
	movq $24,192(%r13)
.LcuS6:
	jmp *-16(%r13)
	.size suui_info, .-suui_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuk_info)+16
	.long	0
	.quad	2
	.quad	12884901907
suuk_info:
.LcuSe:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuSg
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcuSi
	addq $4,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suui_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial3_closure,%r14d
	leaq -24(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuSi:
	movq $32,192(%r13)
.LcuSg:
	jmp *-16(%r13)
	.size suuk_info, .-suuk_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suum_info)+16
	.long	0
	.quad	2
	.quad	562640715795
suum_info:
.LcuSp:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuSr
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcuSt
	addq $4,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuk_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial9_closure,%r14d
	leaq -24(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuSt:
	movq $32,192(%r13)
.LcuSr:
	jmp *-16(%r13)
	.size suum_info, .-suum_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuo_info)+8
	.long	0
	.quad	3
	.quad	1129576398864
suuo_info:
.LcuSA:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuSC
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcuSE
	addq $4,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suum_info,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 32(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureObject_zdfShowTextureObject_closure,%r14d
	movl $EngineziModelziMaterial_zdfShowMaterial7_closure+1,%esi
	movq 16(%rbx),%rdi
	leaq -24(%r12),%r8
	addq $-16,%rbp
	jmp base_GHCziShow_zdfShowMaybezuzdcshowsPrec_info
.LcuSE:
	movq $32,192(%r13)
.LcuSC:
	jmp *-16(%r13)
	.size suuo_info, .-suuo_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuq_info)+8
	.long	0
	.quad	3
	.quad	1163936137232
suuq_info:
.LcuSL:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuSN
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcuSP
	addq $5,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuo_info,-32(%r12)
	movq 16(%rbx),%rax
	movq %rax,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 32(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial4_closure,%r14d
	leaq -32(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuSP:
	movq $40,192(%r13)
.LcuSN:
	jmp *-16(%r13)
	.size suuq_info, .-suuq_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suus_info)+8
	.long	0
	.quad	3
	.quad	1163936137232
suus_info:
.LcuSX:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuSZ
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcuT1
	addq $5,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuq_info,-32(%r12)
	movq 16(%rbx),%rax
	movq %rax,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 32(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial9_closure,%r14d
	leaq -32(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuT1:
	movq $40,192(%r13)
.LcuSZ:
	jmp *-16(%r13)
	.size suus_info, .-suus_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuu_info)+8
	.long	0
	.quad	4
	.quad	1438814044176
suuu_info:
.LcuT9:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuTb
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcuTd
	addq $5,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suus_info,-32(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterialzuzddShow_closure,%r14d
	movl $EngineziModelziMaterial_zdfShowMaterial7_closure+1,%esi
	movq 16(%rbx),%rdi
	leaq -32(%r12),%r8
	addq $-16,%rbp
	jmp base_GHCziShow_zdfShowMaybezuzdcshowsPrec_info
.LcuTd:
	movq $40,192(%r13)
.LcuTb:
	jmp *-16(%r13)
	.size suuu_info, .-suuu_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuw_info)+8
	.long	0
	.quad	4
	.quad	1507533520912
suuw_info:
.LcuTl:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuTn
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcuTp
	addq $6,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuu_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial5_closure,%r14d
	leaq -40(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuTp:
	movq $48,192(%r13)
.LcuTn:
	jmp *-16(%r13)
	.size suuw_info, .-suuw_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuy_info)+8
	.long	0
	.quad	4
	.quad	1507533520912
suuy_info:
.LcuTy:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuTA
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcuTC
	addq $6,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuw_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial9_closure,%r14d
	leaq -40(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuTC:
	movq $48,192(%r13)
.LcuTA:
	jmp *-16(%r13)
	.size suuy_info, .-suuy_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuA_info)+8
	.long	0
	.quad	5
	.quad	1507533520912
suuA_info:
.LcuTL:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuTN
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcuTP
	addq $6,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuy_info,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-24(%r12)
	movq 32(%rbx),%rax
	movq %rax,-16(%r12)
	movq 40(%rbx),%rax
	movq %rax,-8(%r12)
	movq 48(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterialzuzddShow_closure,%r14d
	movl $EngineziModelziMaterial_zdfShowMaterial7_closure+1,%esi
	movq 16(%rbx),%rdi
	leaq -40(%r12),%r8
	addq $-16,%rbp
	jmp base_GHCziShow_zdfShowMaybezuzdcshowsPrec_info
.LcuTP:
	movq $48,192(%r13)
.LcuTN:
	jmp *-16(%r13)
	.size suuA_info, .-suuA_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuC_info)+8
	.long	0
	.quad	5
	.quad	1644972474384
suuC_info:
.LcuTY:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuU0
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcuU2
	addq $7,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuA_info,-48(%r12)
	movq 16(%rbx),%rax
	movq %rax,-32(%r12)
	movq 24(%rbx),%rax
	movq %rax,-24(%r12)
	movq 32(%rbx),%rax
	movq %rax,-16(%r12)
	movq 40(%rbx),%rax
	movq %rax,-8(%r12)
	movq 48(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial6_closure,%r14d
	leaq -48(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuU2:
	movq $56,192(%r13)
.LcuU0:
	jmp *-16(%r13)
	.size suuC_info, .-suuC_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuE_info)+8
	.long	0
	.quad	5
	.quad	1644972474384
suuE_info:
.LcuUc:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuUe
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcuUg
	addq $7,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuC_info,-48(%r12)
	movq 16(%rbx),%rax
	movq %rax,-32(%r12)
	movq 24(%rbx),%rax
	movq %rax,-24(%r12)
	movq 32(%rbx),%rax
	movq %rax,-16(%r12)
	movq 40(%rbx),%rax
	movq %rax,-8(%r12)
	movq 48(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial9_closure,%r14d
	leaq -48(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuUg:
	movq $56,192(%r13)
.LcuUe:
	jmp *-16(%r13)
	.size suuE_info, .-suuE_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuG_info)+8
	.long	0
	.quad	6
	.quad	1644972474384
suuG_info:
.LcuUq:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuUs
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcuUu
	addq $7,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuE_info,-48(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	movq 32(%rbx),%rax
	movq %rax,-24(%r12)
	movq 40(%rbx),%rax
	movq %rax,-16(%r12)
	movq 48(%rbx),%rax
	movq %rax,-8(%r12)
	movq 56(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterialzuzddShow_closure,%r14d
	movl $EngineziModelziMaterial_zdfShowMaterial7_closure+1,%esi
	movq 16(%rbx),%rdi
	leaq -48(%r12),%r8
	addq $-16,%rbp
	jmp base_GHCziShow_zdfShowMaybezuzdcshowsPrec_info
.LcuUu:
	movq $56,192(%r13)
.LcuUs:
	jmp *-16(%r13)
	.size suuG_info, .-suuG_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuI_info)+8
	.long	0
	.quad	6
	.quad	2194728288272
suuI_info:
.LcuUE:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuUG
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcuUI
	addq $8,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuG_info,-56(%r12)
	movq 16(%rbx),%rax
	movq %rax,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	movq 32(%rbx),%rax
	movq %rax,-24(%r12)
	movq 40(%rbx),%rax
	movq %rax,-16(%r12)
	movq 48(%rbx),%rax
	movq %rax,-8(%r12)
	movq 56(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial8_closure,%r14d
	leaq -56(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuUI:
	movq $64,192(%r13)
.LcuUG:
	jmp *-16(%r13)
	.size suuI_info, .-suuI_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuK_info)+8
	.long	0
	.quad	6
	.quad	2194728288272
suuK_info:
.LcuUT:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuUV
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcuUX
	addq $8,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuI_info,-56(%r12)
	movq 16(%rbx),%rax
	movq %rax,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	movq 32(%rbx),%rax
	movq %rax,-24(%r12)
	movq 40(%rbx),%rax
	movq %rax,-16(%r12)
	movq 48(%rbx),%rax
	movq %rax,-8(%r12)
	movq 56(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial9_closure,%r14d
	leaq -56(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuUX:
	movq $64,192(%r13)
.LcuUV:
	jmp *-16(%r13)
	.size suuK_info, .-suuK_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuO_info)+0
	.long	0
	.quad	7
	.quad	4393751543824
suuO_info:
.LcuV8:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuVa
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcuVc
	addq $11,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuK_info,-80(%r12)
	movq 24(%rbx),%rax
	movq %rax,-64(%r12)
	movq 32(%rbx),%rax
	movq %rax,-56(%r12)
	movq 40(%rbx),%rax
	movq %rax,-48(%r12)
	movq 48(%rbx),%rax
	movq %rax,-40(%r12)
	movq 56(%rbx),%rax
	movq %rax,-32(%r12)
	movq 64(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_zdfShowChar1_closure,-8(%r12)
	leaq -80(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	leaq -14(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziShow_showLitString_info
.LcuVc:
	movq $88,192(%r13)
.LcuVa:
	jmp *-16(%r13)
	.size suuO_info, .-suuO_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suQO_info)+0
	.long	0
	.quad	7
	.quad	8791798054928
suQO_info:
.LcuVo:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuVq
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcuVs
	addq $12,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $suuO_info,-88(%r12)
	movq 16(%rbx),%rax
	movq %rax,-72(%r12)
	movq 24(%rbx),%rax
	movq %rax,-64(%r12)
	movq 32(%rbx),%rax
	movq %rax,-56(%r12)
	movq 40(%rbx),%rax
	movq %rax,-48(%r12)
	movq 48(%rbx),%rax
	movq %rax,-40(%r12)
	movq 56(%rbx),%rax
	movq %rax,-32(%r12)
	movq 64(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_zdfShowChar1_closure,-8(%r12)
	leaq -88(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial10_closure,%r14d
	leaq -14(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcuVs:
	movq $96,192(%r13)
.LcuVq:
	jmp *-16(%r13)
	.size suQO_info, .-suQO_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(suuS_info)+0
	.long	0
	.quad	4294967301
	.quad	6
	.quad	17587891077129
suuS_info:
.LcuVE:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcuVI
	addq $9,suuS_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,suuS_ct
	je .LcuVJ
.LcuVK:
	incq suuS_ct+40
	movq $suQO_info,-64(%r12)
	movq 7(%rbx),%rax
	movq %rax,-48(%r12)
	movq 15(%rbx),%rax
	movq %rax,-40(%r12)
	movq 23(%rbx),%rax
	movq %rax,-32(%r12)
	movq 31(%rbx),%rax
	movq %rax,-24(%r12)
	movq 39(%rbx),%rax
	movq %rax,-16(%r12)
	movq 47(%rbx),%rax
	movq %rax,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_zdfShowMaterial11_closure,%r14d
	leaq -64(%r12),%rsi
	jmp base_GHCziBase_zpzp_info
.LcuVI:
	movq $72,192(%r13)
.LcuVG:
	jmp *-8(%r13)
.LcuVJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,suuS_ct+56
	movq $suuS_ct,ticky_entry_ctrs
	movq $1,suuS_ct
	jmp .LcuVK
	.size suuS_info, .-suuS_info
.text
	.align 8
	.quad	2
	.quad	19
suQP_info:
.LcuW0:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuW2
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcuW4
	addq $3,EngineziModelziMaterial_zdwzdcshowsPrec_ct+48
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
	jmp suuS_info
.LcuW4:
	movq $24,192(%r13)
.LcuW2:
	jmp *-16(%r13)
	.size suQP_info, .-suQP_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_slow-(EngineziModelziMaterial_zdwzdcshowsPrec_info)+0
	.long	0
	.quad	72
	.long	EngineziModelziMaterial_zdwzdcshowsPrec_srt-(EngineziModelziMaterial_zdwzdcshowsPrec_info)+0
	.long	0
	.quad	34359738368
	.quad	0
	.quad	17587891077135
.globl EngineziModelziMaterial_zdwzdcshowsPrec_info
.type EngineziModelziMaterial_zdwzdcshowsPrec_info, @object
EngineziModelziMaterial_zdwzdcshowsPrec_info:
.LcuW9:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .LcuWd
	addq $14,EngineziModelziMaterial_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_zdwzdcshowsPrec_ct
	je .LcuWe
.LcuWf:
	incq EngineziModelziMaterial_zdwzdcshowsPrec_ct+40
	movq $suuS_info,-104(%r12)
	movq %rsi,-96(%r12)
	movq %rdi,-88(%r12)
	movq %r8,-80(%r12)
	movq %r9,-72(%r12)
	movq 0(%rbp),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	cmpq $11,%r14
	jge .LcuWh
	incq KNOWN_CALL_ctr
	leaq -103(%r12),%rbx
	movq 16(%rbp),%r14
	addq $24,%rbp
	addq $-56,%r12
	addq $-7,EngineziModelziMaterial_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $-7,ALLOC_HEAP_tot
	jmp suuS_info
.LcuWd:
	movq $112,192(%r13)
.LcuWb:
	movl $EngineziModelziMaterial_zdwzdcshowsPrec_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcuWe:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_zdwzdcshowsPrec_ct+56
	movq $EngineziModelziMaterial_zdwzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_zdwzdcshowsPrec_ct
	jmp .LcuWf
.LcuWh:
	movq $suQP_info,-48(%r12)
	leaq -103(%r12),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_shows11_closure,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
	.size EngineziModelziMaterial_zdwzdcshowsPrec_info, .-EngineziModelziMaterial_zdwzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_srt:
	.quad	EngineziModelziMaterial_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_closure
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_closure, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuWD_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
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
	.byte	116
	.byte	105
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuWG_str:
	.byte	83
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cuWD_str
	.quad	cuWG_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_srt-(suWp_info)+0
	.long	0
	.quad	130
	.quad	4294967328
suWp_info:
.LcuWU:
	incq KNOWN_CALL_ctr
	movq 39(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%r14
	movq 8(%rbp),%rax
	movq %rax,16(%rbp)
	movq 47(%rbx),%rax
	movq %rax,8(%rbp)
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	jmp EngineziModelziMaterial_zdwzdcshowsPrec_info
	.size suWp_info, .-suWp_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_srt-(suWq_info)+0
	.long	0
	.quad	2
	.quad	4294967328
suWq_info:
.LcuX0:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $suWp_info,0(%rbp)
	testq $7,%rbx
	jne suWp_info
	jmp *(%rbx)
	.size suWq_info, .-suWq_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_srt-(EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_info
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_info, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_info:
.LcuX9:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuXb
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct
	je .LcuXc
.LcuXd:
	incq EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $suWq_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne suWq_info
	jmp *(%rbx)
.LcuXb:
	movl $EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.LcuXc:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct+56
	movq $EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_ct
	jmp .LcuXd
	.size EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_info, .-EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziModelziMaterial_zdfShowMaterial1_srt:
	.quad	EngineziModelziMaterial_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial1_closure
.type EngineziModelziMaterial_zdfShowMaterial1_closure, @object
EngineziModelziMaterial_zdfShowMaterial1_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterial1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuXu_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	98
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuXx_str:
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial1_ct
.type EngineziModelziMaterial_zdfShowMaterial1_ct, @object
EngineziModelziMaterial_zdfShowMaterial1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cuXu_str
	.quad	cuXx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterial1_srt-(suXk_info)+0
	.long	0
	.quad	1
	.quad	4294967328
suXk_info:
.LcuXH:
	incq KNOWN_CALL_ctr
	movq 47(%rbx),%rax
	movq %rax,0(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-8(%rbp)
	xorl %r14d,%r14d
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	addq $-8,%rbp
	jmp EngineziModelziMaterial_zdwzdcshowsPrec_info
	.size suXk_info, .-suXk_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterial1_srt-(EngineziModelziMaterial_zdfShowMaterial1_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziModelziMaterial_zdfShowMaterial1_info
.type EngineziModelziMaterial_zdfShowMaterial1_info, @object
EngineziModelziMaterial_zdfShowMaterial1_info:
.LcuXM:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuXO
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_zdfShowMaterial1_ct
	je .LcuXP
.LcuXQ:
	incq EngineziModelziMaterial_zdfShowMaterial1_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $suXk_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne suXk_info
	jmp *(%rbx)
.LcuXO:
	movl $EngineziModelziMaterial_zdfShowMaterial1_closure,%ebx
	jmp *-8(%r13)
.LcuXP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_zdfShowMaterial1_ct+56
	movq $EngineziModelziMaterial_zdfShowMaterial1_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_zdfShowMaterial1_ct
	jmp .LcuXQ
	.size EngineziModelziMaterial_zdfShowMaterial1_info, .-EngineziModelziMaterial_zdfShowMaterial1_info
.section .data
	.align 8
.align 1
EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_srt:
	.quad	EngineziModelziMaterial_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_closure
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_closure, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuY3_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
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
	.byte	116
	.byte	105
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuY6_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cuY3_str
	.quad	cuY6_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_srt-(EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_info
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_info, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_info:
.LcuYb:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct
	je .LcuYe
.LcuYg:
	incq EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movl $EngineziModelziMaterial_zdfShowMaterial1_closure+2,%r14d
	jmp base_GHCziShow_showListzuzu_info
.LcuYe:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct+56
	movq $EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_ct
	jmp .LcuYg
	.size EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_info, .-EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_info
.section .data
	.align 8
.align 1
EngineziModelziMaterial_zdwzdcshow_srt:
	.quad	EngineziModelziMaterial_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdwzdcshow_closure
.type EngineziModelziMaterial_zdwzdcshow_closure, @object
EngineziModelziMaterial_zdwzdcshow_closure:
	.quad	EngineziModelziMaterial_zdwzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuYp_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
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
	.byte	117
	.byte	114
	.byte	75
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuYs_str:
	.byte	76
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdwzdcshow_ct
.type EngineziModelziMaterial_zdwzdcshow_ct, @object
EngineziModelziMaterial_zdwzdcshow_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	cuYp_str
	.quad	cuYs_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_zdwzdcshow_srt-(EngineziModelziMaterial_zdwzdcshow_info)+0
	.long	0
	.quad	25769803799
	.quad	0
	.quad	4294967311
.globl EngineziModelziMaterial_zdwzdcshow_info
.type EngineziModelziMaterial_zdwzdcshow_info, @object
EngineziModelziMaterial_zdwzdcshow_info:
.LcuYx:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuYA
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_zdwzdcshow_ct
	je .LcuYC
.LcuYE:
	incq EngineziModelziMaterial_zdwzdcshow_ct+40
	incq KNOWN_CALL_ctr
	movq 0(%rbp),%rax
	movq %rax,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%rbp)
	movq %r9,-16(%rbp)
	movq %r8,%r9
	movq %rdi,%r8
	movq %rsi,%rdi
	movq %r14,%rsi
	xorl %r14d,%r14d
	addq $-16,%rbp
	jmp EngineziModelziMaterial_zdwzdcshowsPrec_info
.LcuYA:
	movl $EngineziModelziMaterial_zdwzdcshow_closure,%ebx
	jmp *-8(%r13)
.LcuYC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_zdwzdcshow_ct+56
	movq $EngineziModelziMaterial_zdwzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_zdwzdcshow_ct
	jmp .LcuYE
	.size EngineziModelziMaterial_zdwzdcshow_info, .-EngineziModelziMaterial_zdwzdcshow_info
.section .data
	.align 8
.align 1
EngineziModelziMaterial_zdfShowMaterialzuzdcshow_srt:
	.quad	EngineziModelziMaterial_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshow_closure
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshow_closure, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshow_closure:
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuYT_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
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
	.byte	116
	.byte	105
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cuYW_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuYT_str
	.quad	cuYW_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterialzuzdcshow_srt-(suYJ_info)+0
	.long	0
	.quad	0
	.quad	4294967328
suYJ_info:
.LcuZ6:
	incq KNOWN_CALL_ctr
	movq 47(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	movq 39(%rbx),%r9
	jmp EngineziModelziMaterial_zdwzdcshow_info
	.size suYJ_info, .-suYJ_info
.text
	.align 8
	.long	EngineziModelziMaterial_zdfShowMaterialzuzdcshow_srt-(EngineziModelziMaterial_zdfShowMaterialzuzdcshow_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziModelziMaterial_zdfShowMaterialzuzdcshow_info
.type EngineziModelziMaterial_zdfShowMaterialzuzdcshow_info, @object
EngineziModelziMaterial_zdfShowMaterialzuzdcshow_info:
.LcuZa:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuZc
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct
	je .LcuZd
.LcuZe:
	incq EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct+40
	movq %r14,%rbx
	movq $suYJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suYJ_info
	jmp *(%rbx)
.LcuZc:
	movl $EngineziModelziMaterial_zdfShowMaterialzuzdcshow_closure,%ebx
	jmp *-8(%r13)
.LcuZd:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct+56
	movq $EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_zdfShowMaterialzuzdcshow_ct
	jmp .LcuZe
	.size EngineziModelziMaterial_zdfShowMaterialzuzdcshow_info, .-EngineziModelziMaterial_zdfShowMaterialzuzdcshow_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_zdfShowMaterial_closure
.type EngineziModelziMaterial_zdfShowMaterial_closure, @object
EngineziModelziMaterial_zdfShowMaterial_closure:
	.quad	base_GHCziShow_DZCShow_static_info
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzdcshowsPrec_closure+3
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzdcshow_closure+1
	.quad	EngineziModelziMaterial_zdfShowMaterialzuzdcshowList_closure+2
	.quad	0
.section .data
	.align 8
.align 1
rurN_srt:
	.quad	base_GHCziErr_error_closure
	.quad	base_ForeignziCziTypes_zdfReadCFloat2_closure
	.quad	base_TextziRead_zdwreadEither_closure
.data
	.align 8
.align 1
rurN_closure:
	.quad	rurN_info
	.quad	0
.section .rodata
	.align 8
.align 1
cuZz_str:
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	117
	.byte	114
	.byte	78
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cuZC_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rurN_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cuZz_str
	.quad	cuZC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rurN_srt-(suZn_info)+0
	.long	0
	.quad	0
	.quad	4294967328
suZn_info:
.LcuZO:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcuZP
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziErr_error_info
.LcuZP:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size suZn_info, .-suZn_info
.text
	.align 8
	.long	rurN_srt-(rurN_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
rurN_info:
.LcuZW:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcuZY
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rurN_ct
	je .LcuZZ
.Lcv00:
	incq rurN_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $base_ForeignziCziTypes_zdfReadCFloat2_closure+1,%r14d
	movq $suZn_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_TextziRead_zdwreadEither_info
.LcuZY:
	movl $rurN_closure,%ebx
	jmp *-8(%r13)
.LcuZZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,rurN_ct+56
	movq $rurN_ct,ticky_entry_ctrs
	movq $1,rurN_ct
	jmp .Lcv00
	.size rurN_info, .-rurN_info
.data
	.align 8
.align 1
rurO_closure:
	.quad	rurO_info
.section .rodata
	.align 8
.align 1
cv0g_str:
	.byte	97
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	117
	.byte	114
	.byte	79
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cv0j_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rurO_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cv0g_str
	.quad	cv0j_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sv04_info:
.Lcv0v:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lcv0w
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcv0w:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sv04_info, .-sv04_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rurO_info:
.Lcv0C:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv0E
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rurO_ct
	je .Lcv0F
.Lcv0G:
	incq rurO_ct+40
	movq %r14,%rbx
	movq $sv04_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sv04_info
	jmp *(%rbx)
.Lcv0E:
	movl $rurO_closure,%ebx
	jmp *-8(%r13)
.Lcv0F:
	movq ticky_entry_ctrs,%rax
	movq %rax,rurO_ct+56
	movq $rurO_ct,ticky_entry_ctrs
	movq $1,rurO_ct
	jmp .Lcv0G
	.size rurO_info, .-rurO_info
.data
	.align 8
.align 1
rurP_closure:
	.quad	ghczmprim_GHCziTypes_Czh_static_info
	.quad	32
.data
	.align 8
.align 1
rurQ_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rurP_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rurR_closure:
	.quad	rurR_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
rurR_info:
.Lcv13:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv15
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcv17
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
	je .Lcv18
.Lcv19:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurQ_closure+2,%esi
	addq $-16,%rbp
	jmp splitzm0zi2zi2_DataziListziSplitziInternals_splitOn_info
.Lcv17:
	movq $16,192(%r13)
.Lcv15:
	jmp *-16(%r13)
.Lcv18:
	jmp *(%rbx)
	.size rurR_info, .-rurR_info
.section .data
	.align 8
.align 1
rurS_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziList_tail1_closure
	.quad	base_GHCziList_znznzusub_closure
	.quad	rurM_closure
	.quad	rurN_closure
	.quad	rurR_closure
.data
	.align 8
.align 1
rurS_closure:
	.quad	rurS_info
	.quad	0
.section .rodata
	.align 8
.align 1
cv1U_str:
	.byte	36
	.byte	119
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	77
	.byte	116
	.byte	108
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	84
	.byte	114
	.byte	105
	.byte	112
	.byte	108
	.byte	101
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	117
	.byte	114
	.byte	83
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cv1X_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rurS_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cv1U_str
	.quad	cv1X_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
suwF_info:
.Lcv2y:
	incq RET_UNBOXED_TUP_ctr
	movq 16(%rbp),%r14
	movq %rbx,%rsi
	movq 8(%rbp),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
	.size suwF_info, .-suwF_info
.text
	.align 8
	.long	rurS_srt-(suwE_info)+16
	.long	0
	.quad	2
	.quad	4294967328
suwE_info:
.Lcv2B:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movl $2,%esi
	movq $suwF_info,0(%rbp)
	jmp base_GHCziList_znznzusub_info
	.size suwE_info, .-suwE_info
.text
	.align 8
	.long	rurS_srt-(suwD_info)+16
	.long	0
	.quad	1
	.quad	4294967328
suwD_info:
.Lcv2E:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%r14
	movl $1,%esi
	movq $suwE_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_znznzusub_info
	.size suwD_info, .-suwD_info
.text
	.align 8
	.long	rurS_srt-(suwy_info)+0
	.long	0
	.quad	0
	.quad	21474836512
suwy_info:
.Lcv2J:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcv2K
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.Lcv2K:
	movq %rbx,0(%rbp)
	movq 6(%rbx),%rbx
	movq $suwD_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne suwD_info
	jmp *(%rbx)
	.size suwy_info, .-suwy_info
.text
	.align 8
	.long	rurS_srt-(sv1g_info)+0
	.long	0
	.quad	1
	.quad	55834574880
sv1g_info:
.Lcv2T:
	cmpq $3,%rbx
	jne .Lcv2V
	movq 8(%rbp),%rbx
	movq $suwy_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne suwy_info
	jmp *(%rbx)
.Lcv2V:
	movl $rurM_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sv1g_info, .-sv1g_info
.text
	.align 8
	.long	rurS_srt-(suwo_info)+0
	.long	0
	.quad	0
	.quad	55834574880
suwo_info:
.Lcv32:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq %rbx,%r14
	xorl %esi,%esi
	movq $sv1g_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_zdwlen_info
	.size suwo_info, .-suwo_info
.text
	.align 8
	.long	rurS_srt-(sv1l_info)+0
	.long	0
	.quad	0
	.quad	133143986208
sv1l_info:
.Lcv39:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcv3a
	movl $base_GHCziList_tail1_closure,%ebx
	movq $suwo_info,0(%rbp)
	testq $7,%rbx
	jne suwo_info
	jmp *(%rbx)
.Lcv3a:
	incq KNOWN_CALL_ctr
	movl $rurN_closure+1,%r14d
	movq 14(%rbx),%rsi
	movq $suwo_info,0(%rbp)
	jmp base_GHCziBase_map_info
	.size sv1l_info, .-sv1l_info
.text
	.align 8
	.long	rurS_srt-(sv1f_info)+0
	.long	0
	.quad	0
	.quad	133143986208
sv1f_info:
.Lcv3l:
	incq KNOWN_CALL_ctr
	movl $rurO_closure+1,%r14d
	movq %rbx,%rsi
	movq $sv1l_info,0(%rbp)
	jmp base_GHCziList_filter_info
	.size sv1f_info, .-sv1f_info
.text
	.align 8
	.long	rurS_srt-(rurS_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	270582939663
rurS_info:
.Lcv3o:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv3q
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rurS_ct
	je .Lcv3r
.Lcv3s:
	incq rurS_ct+40
	incq UNKNOWN_CALL_ctr
	movl $rurR_closure,%ebx
	movq $sv1f_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
.Lcv3q:
	movl $rurS_closure,%ebx
	jmp *-8(%r13)
.Lcv3r:
	movq ticky_entry_ctrs,%rax
	movq %rax,rurS_ct+56
	movq $rurS_ct,ticky_entry_ctrs
	movq $1,rurS_ct
	jmp .Lcv3s
	.size rurS_info, .-rurS_info
.data
	.align 8
.align 1
rurT_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rurP_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rurU_closure:
	.quad	rurU_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
rurU_info:
.Lcv3J:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv3L
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcv3N
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
	je .Lcv3O
.Lcv3P:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurT_closure+2,%esi
	addq $-16,%rbp
	jmp splitzm0zi2zi2_DataziListziSplitziInternals_splitOn_info
.Lcv3N:
	movq $16,192(%r13)
.Lcv3L:
	jmp *-16(%r13)
.Lcv3O:
	jmp *(%rbx)
	.size rurU_info, .-rurU_info
.section .data
	.align 8
.align 1
rtjh_srt:
	.quad	base_GHCziList_tail1_closure
	.quad	rurU_closure
.data
	.align 8
.align 1
rtjh_closure:
	.quad	rtjh_info
	.quad	0
.section .rodata
	.align 8
.align 1
cv4b_str:
	.byte	114
	.byte	97
	.byte	119
	.byte	77
	.byte	116
	.byte	108
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	106
	.byte	104
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cv4e_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rtjh_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cv4b_str
	.quad	cv4e_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rtjh_srt-(sv3W_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sv3W_info:
.Lcv4u:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcv4v
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcv4v:
	movq 14(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sv3W_info, .-sv3W_info
.text
	.align 8
	.long	rtjh_srt-(sv3V_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sv3V_info:
.Lcv4D:
	incq KNOWN_CALL_ctr
	movl $rurO_closure+1,%r14d
	movq %rbx,%rsi
	movq $sv3W_info,0(%rbp)
	jmp base_GHCziList_filter_info
	.size sv3V_info, .-sv3V_info
.text
	.align 8
	.long	rtjh_srt-(rtjh_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	12884901903
rtjh_info:
.Lcv4G:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv4I
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rtjh_ct
	je .Lcv4J
.Lcv4K:
	incq rtjh_ct+40
	incq UNKNOWN_CALL_ctr
	movl $rurU_closure,%ebx
	movq $sv3V_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
.Lcv4I:
	movl $rtjh_closure,%ebx
	jmp *-8(%r13)
.Lcv4J:
	movq ticky_entry_ctrs,%rax
	movq %rax,rtjh_ct+56
	movq $rtjh_ct,ticky_entry_ctrs
	movq $1,rtjh_ct
	jmp .Lcv4K
	.size rtjh_info, .-rtjh_info
.data
	.align 8
.align 1
rurV_closure:
	.quad	rurV_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cv4X_str:
	.byte	110
	.byte	101
	.byte	119
	.byte	109
	.byte	116
	.byte	108
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rurV_info:
.Lcv51:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv53
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcv55
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
	je .Lcv56
.Lcv57:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cv4X_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lcv55:
	movq $16,192(%r13)
.Lcv53:
	jmp *-16(%r13)
.Lcv56:
	jmp *(%rbx)
	.size rurV_info, .-rurV_info
.data
	.align 8
.align 1
rurW_closure:
	.quad	rurW_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cv5m_str:
	.byte	75
	.byte	97
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rurW_info:
.Lcv5q:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv5s
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcv5u
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
	je .Lcv5v
.Lcv5w:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cv5m_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lcv5u:
	movq $16,192(%r13)
.Lcv5s:
	jmp *-16(%r13)
.Lcv5v:
	jmp *(%rbx)
	.size rurW_info, .-rurW_info
.data
	.align 8
.align 1
rurX_closure:
	.quad	rurX_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cv5L_str:
	.byte	75
	.byte	100
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rurX_info:
.Lcv5P:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv5R
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcv5T
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
	je .Lcv5U
.Lcv5V:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cv5L_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lcv5T:
	movq $16,192(%r13)
.Lcv5R:
	jmp *-16(%r13)
.Lcv5U:
	jmp *(%rbx)
	.size rurX_info, .-rurX_info
.data
	.align 8
.align 1
rurY_closure:
	.quad	rurY_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cv6a_str:
	.byte	75
	.byte	115
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rurY_info:
.Lcv6e:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv6g
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcv6i
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
	je .Lcv6j
.Lcv6k:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cv6a_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lcv6i:
	movq $16,192(%r13)
.Lcv6g:
	jmp *-16(%r13)
.Lcv6j:
	jmp *(%rbx)
	.size rurY_info, .-rurY_info
.data
	.align 8
.align 1
rurZ_closure:
	.quad	rurZ_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cv6z_str:
	.byte	109
	.byte	97
	.byte	112
	.byte	95
	.byte	75
	.byte	100
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rurZ_info:
.Lcv6D:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcv6F
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcv6H
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
	je .Lcv6I
.Lcv6J:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cv6z_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lcv6H:
	movq $16,192(%r13)
.Lcv6F:
	jmp *-16(%r13)
.Lcv6I:
	jmp *(%rbx)
	.size rurZ_info, .-rurZ_info
.section .data
	.align 8
.align 1
rus0_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	EngineziCoreziWorld_loadWorldTexture1_closure
	.quad	EngineziModelziMaterial_loadMtlFilezuzdsa_closure
	.quad	rtjh_closure
	.quad	rurS_closure
	.quad	rurV_closure
	.quad	rurW_closure
	.quad	rurX_closure
	.quad	rurY_closure
	.quad	rurZ_closure
	.quad	rus0_closure
.section .data
	.align 8
.align 1
EngineziModelziMaterial_loadMtlFilezuzdsa_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	EngineziCoreziWorld_loadWorldTexture1_closure
	.quad	EngineziModelziMaterial_loadMtlFilezuzdsa_closure
	.quad	rtjh_closure
	.quad	rurS_closure
	.quad	rurV_closure
	.quad	rurW_closure
	.quad	rurX_closure
	.quad	rurY_closure
	.quad	rurZ_closure
	.quad	rus0_closure
.data
	.align 8
.align 1
rus0_closure:
	.quad	rus0_info
	.quad	0
.section .rodata
	.align 8
.align 1
cvbi_str:
	.byte	36
	.byte	115
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	117
	.byte	115
	.byte	48
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cvbk_str:
	.byte	83
	.byte	83
	.byte	77
	.byte	76
	.byte	77
	.byte	77
	.byte	77
	.byte	83
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rus0_ct:
	.quad	0
	.quad	10
	.quad	4
	.quad	cvbi_str
	.quad	cvbk_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
rus0_slow:
.Lcvbn:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp rus0_info
	.size rus0_slow, .-rus0_slow
.text
	.align 8
	.quad	0
	.quad	32
sv72_info:
.Lcvbt:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcvbz
	addq $2,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	incq %rax
	movl %eax,%eax
	incq RET_NEW_ctr
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcvbz:
	movq $16,192(%r13)
.Lcvbx:
	jmp *-16(%r13)
	.size sv72_info, .-sv72_info
.text
	.align 8
	.quad	1
	.quad	17
suxt_info:
.LcvbG:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcvbI
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sv72_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sv72_info
	jmp *(%rbx)
.LcvbI:
	jmp *-16(%r13)
	.size suxt_info, .-suxt_info
.text
	.align 8
	.long	rus0_srt-(sv76_info)+104
	.long	0
	.quad	32779
	.quad	4294967328
sv76_info:
.LcvbN:
	movq 80(%rbp),%rax
	cmpq 7(%rbx),%rax
	je .LcvbQ
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rax
	movq %rax,80(%rbp)
	movq 48(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 56(%rbp),%rdi
	movq 88(%rbp),%r8
	movq 24(%rbp),%rax
	movq %rax,88(%rbp)
	movq 72(%rbp),%r9
	movq 32(%rbp),%rax
	movq %rax,72(%rbp)
	addq $64,%rbp
	jmp rus0_info
.LcvbQ:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rax
	movq %rax,80(%rbp)
	movq 48(%rbp),%r14
	movq 40(%rbp),%rsi
	movq 56(%rbp),%rdi
	movq 88(%rbp),%r8
	movq 24(%rbp),%rax
	movq %rax,88(%rbp)
	movq 72(%rbp),%r9
	movq 32(%rbp),%rax
	movq %rax,72(%rbp)
	addq $64,%rbp
	jmp rus0_info
	.size sv76_info, .-sv76_info
.text
	.align 8
	.long	rus0_srt-(suxO_info)+104
	.long	0
	.quad	10
	.quad	4294967328
suxO_info:
.Lcvc0:
	movq %rbx,0(%rbp)
	movq 72(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,72(%rbp)
	movq %rax,%rbx
	movq $sv76_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sv76_info
	jmp *(%rbx)
	.size suxO_info, .-suxO_info
.text
	.align 8
	.long	rus0_srt-(suxR_info)+104
	.long	0
	.quad	45450
	.quad	4294967328
suxR_info:
.Lcvc9:
	movq %r9,16(%rbp)
	movq %rdi,24(%rbp)
	movq %rsi,56(%rbp)
	movq %r14,64(%rbp)
	movq %rbx,80(%rbp)
	movq %r8,%rbx
	movq $suxO_info,0(%rbp)
	testq $7,%rbx
	jne suxO_info
	jmp *(%rbx)
	.size suxR_info, .-suxR_info
.text
	.align 8
	.long	rus0_srt-(sv7b_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sv7b_info:
.LcvcG:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcvcH
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcvcH:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sv7b_info, .-sv7b_info
.text
	.align 8
	.long	rus0_srt-(sv70_info)+0
	.long	0
	.quad	1
	.quad	279172874257
sv70_info:
.LcvcP:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcvcR
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7b_info,-24(%rbp)
	addq $-24,%rbp
	jmp rtjh_info
.LcvcR:
	jmp *-16(%r13)
	.size sv70_info, .-sv70_info
.text
	.align 8
	.quad	0
	.quad	32
sv7e_info:
.Lcvd2:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcvd8
	addq $2,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	movslq %eax,%rax
	incq RET_NEW_ctr
	movq $base_GHCziInt_I32zh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcvd8:
	movq $16,192(%r13)
.Lcvd6:
	jmp *-16(%r13)
	.size sv7e_info, .-sv7e_info
.text
	.align 8
	.quad	1
	.quad	17
suyl_info:
.Lcvde:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvdg
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sv7e_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sv7e_info
	jmp *(%rbx)
.Lcvdg:
	jmp *-16(%r13)
	.size suyl_info, .-suyl_info
.text
	.align 8
	.long	rus0_srt-(sv7f_info)+104
	.long	0
	.quad	32778
	.quad	4294967328
sv7f_info:
.Lcvdl:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcvdp
	addq $5,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $suyl_info,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	movq 16(%rbp),%r14
	movq 56(%rbp),%rsi
	movq 64(%rbp),%rdi
	movq %rbx,%r8
	movq 24(%rbp),%rbx
	leaq -6(%r12),%r9
	jmp suxR_info
.Lcvdp:
	movq $40,192(%r13)
.Lcvdn:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sv7f_info, .-sv7f_info
.text
	.align 8
	.long	rus0_srt-(sv7d_info)+0
	.long	0
	.quad	65547
	.quad	35532264439840
sv7d_info:
.Lcvdu:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcvdy
	addq $3,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	movq 8(%rax),%r14
	movq $sv70_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%rsi
	movq $sv7f_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziCoreziWorld_loadWorldTexture1_info
.Lcvdy:
	movq $24,192(%r13)
.Lcvdw:
	jmp *-16(%r13)
	.size sv7d_info, .-sv7d_info
.text
	.align 8
	.long	rus0_srt-(sv77_info)+0
	.long	0
	.quad	11
	.quad	35532264439840
sv77_info:
.LcvdF:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcvdG
	movq 32(%rbp),%rbx
	movq 24(%rbp),%r14
	movq 64(%rbp),%rsi
	movq 72(%rbp),%rdi
	movq 80(%rbp),%r8
	movq 88(%rbp),%r9
	addq $8,%rbp
	jmp suxR_info
.LcvdG:
	movq 48(%rbp),%rbx
	movq $sv7d_info,0(%rbp)
	testq $7,%rbx
	jne sv7d_info
	jmp *(%rbx)
	.size sv77_info, .-sv77_info
.text
	.align 8
	.quad	0
	.quad	32
sv7g_info:
.LcvdV:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcve0
	addq $4,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %rbx,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcve0:
	movq $32,192(%r13)
.LcvdY:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sv7g_info, .-sv7g_info
.text
	.align 8
	.long	rus0_srt-(suyw_info)+56
	.long	0
	.quad	1
	.quad	4294967313
suyw_info:
.Lcve4:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcve6
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7g_info,-24(%rbp)
	addq $-24,%rbp
	jmp rurS_info
.Lcve6:
	jmp *-16(%r13)
	.size suyw_info, .-suyw_info
.text
	.align 8
	.long	rus0_srt-(sv78_info)+0
	.long	0
	.quad	11
	.quad	53674206298144
sv78_info:
.Lcvec:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcved
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurZ_closure,%esi
	movq 8(%rbp),%rdi
	movq $sv77_info,0(%rbp)
	jmp base_DataziList_isPrefixOf_info
.Lcved:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcveh
	addq $5,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $suyw_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	movq 32(%rbp),%rbx
	movq 24(%rbp),%r14
	movq 64(%rbp),%rsi
	leaq -6(%r12),%rdi
	movq 80(%rbp),%r8
	movq 88(%rbp),%r9
	addq $8,%rbp
	jmp suxR_info
.Lcveh:
	movq $40,192(%r13)
.Lcvef:
	jmp *-16(%r13)
	.size sv78_info, .-sv78_info
.text
	.align 8
	.quad	0
	.quad	32
sv7h_info:
.Lcvev:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcveA
	addq $4,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %rbx,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcveA:
	movq $32,192(%r13)
.Lcvey:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sv7h_info, .-sv7h_info
.text
	.align 8
	.long	rus0_srt-(suyG_info)+56
	.long	0
	.quad	1
	.quad	4294967313
suyG_info:
.LcveE:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcveG
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7h_info,-24(%rbp)
	addq $-24,%rbp
	jmp rurS_info
.LcveG:
	jmp *-16(%r13)
	.size suyG_info, .-suyG_info
.text
	.align 8
	.long	rus0_srt-(sv79_info)+0
	.long	0
	.quad	11
	.quad	62470299320352
sv79_info:
.LcveM:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcveN
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurY_closure,%esi
	movq 8(%rbp),%rdi
	movq $sv78_info,0(%rbp)
	jmp base_DataziList_isPrefixOf_info
.LcveN:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcveR
	addq $5,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $suyG_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	movq 32(%rbp),%rbx
	movq 24(%rbp),%r14
	leaq -6(%r12),%rsi
	movq 72(%rbp),%rdi
	movq 80(%rbp),%r8
	movq 88(%rbp),%r9
	addq $8,%rbp
	jmp suxR_info
.LcveR:
	movq $40,192(%r13)
.LcveP:
	jmp *-16(%r13)
	.size sv79_info, .-sv79_info
.text
	.align 8
	.quad	0
	.quad	32
sv7i_info:
.Lcvf5:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcvfa
	addq $4,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %rbx,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcvfa:
	movq $32,192(%r13)
.Lcvf8:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sv7i_info, .-sv7i_info
.text
	.align 8
	.long	rus0_srt-(suyQ_info)+56
	.long	0
	.quad	1
	.quad	4294967313
suyQ_info:
.Lcvfe:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvfg
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7i_info,-24(%rbp)
	addq $-24,%rbp
	jmp rurS_info
.Lcvfg:
	jmp *-16(%r13)
	.size suyQ_info, .-suyQ_info
.text
	.align 8
	.long	rus0_srt-(sv7a_info)+0
	.long	0
	.quad	11
	.quad	66868345831456
sv7a_info:
.Lcvfm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcvfn
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurX_closure,%esi
	movq 8(%rbp),%rdi
	movq $sv79_info,0(%rbp)
	jmp base_DataziList_isPrefixOf_info
.Lcvfn:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcvfr
	addq $5,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $suyQ_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	movq 32(%rbp),%rbx
	leaq -6(%r12),%r14
	movq 64(%rbp),%rsi
	movq 72(%rbp),%rdi
	movq 80(%rbp),%r8
	movq 88(%rbp),%r9
	addq $8,%rbp
	jmp suxR_info
.Lcvfr:
	movq $40,192(%r13)
.Lcvfp:
	jmp *-16(%r13)
	.size sv7a_info, .-sv7a_info
.text
	.align 8
	.long	rus0_srt-(suxS_info)+0
	.long	0
	.quad	9
	.quad	69067369087008
suxS_info:
.LcvfB:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcvfC
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	movq 40(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	addq $48,%rbp
	jmp rus0_info
.LcvfC:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcvfG
	addq $3,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $suxt_info,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	leaq -16(%r12),%rax
	movq %rax,0(%rbp)
	incq KNOWN_CALL_ctr
	movq %rbx,-8(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurW_closure,%esi
	movq %rbx,%rdi
	movq $sv7a_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_DataziList_isPrefixOf_info
.LcvfG:
	movq $24,192(%r13)
.LcvfE:
	jmp *-16(%r13)
	.size suxS_info, .-suxS_info
.text
	.align 8
	.long	rus0_srt-(sv7l_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sv7l_info:
.LcvfW:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcvfX
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcvfX:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sv7l_info, .-sv7l_info
.text
	.align 8
	.long	rus0_srt-(sv7k_info)+0
	.long	0
	.quad	1
	.quad	279172874257
sv7k_info:
.Lcvg5:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvg7
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7l_info,-24(%rbp)
	addq $-24,%rbp
	jmp rtjh_info
.Lcvg7:
	jmp *-16(%r13)
	.size sv7k_info, .-sv7k_info
.text
	.align 8
	.quad	1801
	.quad	32
sv7n_info:
.Lcvgd:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .Lcvgi
	addq $12,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $base_DataziMaybe_Just_con_info,-88(%r12)
	movq 64(%rbp),%rax
	movq %rax,-80(%r12)
	movq $EngineziModelziMaterial_Material_con_info,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 56(%rbp),%rax
	movq %rax,-40(%r12)
	leaq -86(%r12),%rax
	movq %rax,-32(%r12)
	movq 72(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -71(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $80,%rbp
	jmp *0(%rbp)
.Lcvgi:
	movq $96,192(%r13)
.Lcvgg:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sv7n_info, .-sv7n_info
.text
	.align 8
	.long	rus0_srt-(sv6Q_info)+0
	.long	0
	.quad	10
	.quad	69204808040480
sv6Q_info:
.Lcvgv:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcvgw
	movq 8(%rbp),%rbx
	movq $suxS_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne suxS_info
	jmp *(%rbx)
.Lcvgw:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcvgA
	addq $3,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sv7k_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq $base_DataziMaybe_Nothing_closure+1,0(%rbp)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%rbp)
	movq $base_DataziMaybe_Nothing_closure+1,-16(%rbp)
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 48(%rbp),%rdi
	leaq -16(%r12),%r8
	movl $base_DataziMaybe_Nothing_closure+1,%r9d
	movq $sv7n_info,8(%rbp)
	addq $-16,%rbp
	jmp EngineziModelziMaterial_loadMtlFilezuzdsa_info
.LcvgA:
	movq $24,192(%r13)
.Lcvgy:
	jmp *-16(%r13)
	.size sv6Q_info, .-sv6Q_info
.text
	.align 8
	.long	rus0_srt-(sv6R_info)+0
	.long	0
	.quad	9
	.quad	70304319668256
sv6R_info:
.LcvgK:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurV_closure,%esi
	movq %rbx,%rdi
	movq $sv6Q_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sv6R_info, .-sv6R_info
.text
	.align 8
	.quad	1801
	.quad	32
sv7p_info:
.LcvgR:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcvgW
	addq $12,rus0_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $base_DataziMaybe_Just_con_info,-88(%r12)
	movq 64(%rbp),%rax
	movq %rax,-80(%r12)
	movq $EngineziModelziMaterial_Material_con_info,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 56(%rbp),%rax
	movq %rax,-40(%r12)
	leaq -86(%r12),%rax
	movq %rax,-32(%r12)
	movq 72(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -71(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $80,%rbp
	jmp *0(%rbp)
.LcvgW:
	movq $96,192(%r13)
.LcvgU:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sv7p_info, .-sv7p_info
.text
	.align 8
	.long	rus0_srt-(sv6S_info)+0
	.long	0
	.quad	9
	.quad	70330089472032
sv6S_info:
.Lcvh9:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lcvha
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq $sv6R_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.Lcvha:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq $sv7p_info,0(%rbp)
	jmp base_GHCziIOziHandle_hClose1_info
	.size sv6S_info, .-sv6S_info
.text
	.align 8
	.long	rus0_srt-(sv6T_info)+0
	.long	0
	.quad	9
	.quad	70330089472032
sv6T_info:
.Lcvhg:
	movq $sv6S_info,0(%rbp)
	testq $7,%rbx
	jne sv6S_info
	jmp *(%rbx)
	.size sv6T_info, .-sv6T_info
.text
	.align 8
	.long	rus0_slow-(rus0_info)+0
	.long	0
	.quad	9
	.long	rus0_srt-(rus0_info)+0
	.long	0
	.quad	42949672960
	.quad	0
	.quad	70364449210383
rus0_info:
.Lcvhm:
	leaq -72(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvho
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rus0_ct
	je .Lcvhp
.Lcvhq:
	incq rus0_ct+40
	incq KNOWN_CALL_ctr
	movq %r9,-40(%rbp)
	movq %r8,-32(%rbp)
	movq %rsi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %rdi,%r14
	movq $sv6T_info,-48(%rbp)
	addq $-48,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.Lcvho:
	movl $rus0_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lcvhp:
	movq ticky_entry_ctrs,%rax
	movq %rax,rus0_ct+56
	movq $rus0_ct,ticky_entry_ctrs
	movq $1,rus0_ct
	jmp .Lcvhq
	.size rus0_info, .-rus0_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFilezuzdsa_closure
.type EngineziModelziMaterial_loadMtlFilezuzdsa_closure, @object
EngineziModelziMaterial_loadMtlFilezuzdsa_closure:
	.quad	EngineziModelziMaterial_loadMtlFilezuzdsa_info
	.quad	0
.section .rodata
	.align 8
.align 1
cvhy_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	77
	.byte	116
	.byte	108
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	95
	.byte	36
	.byte	115
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cvhB_str:
	.byte	83
	.byte	83
	.byte	77
	.byte	76
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFilezuzdsa_ct
.type EngineziModelziMaterial_loadMtlFilezuzdsa_ct, @object
EngineziModelziMaterial_loadMtlFilezuzdsa_ct:
	.quad	0
	.quad	9
	.quad	3
	.quad	cvhy_str
	.quad	cvhB_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziModelziMaterial_loadMtlFilezuzdsa_slow
.type EngineziModelziMaterial_loadMtlFilezuzdsa_slow, @object
EngineziModelziMaterial_loadMtlFilezuzdsa_slow:
.LcvhF:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziModelziMaterial_loadMtlFilezuzdsa_info
	.size EngineziModelziMaterial_loadMtlFilezuzdsa_slow, .-EngineziModelziMaterial_loadMtlFilezuzdsa_slow
.text
	.align 8
	.quad	0
	.quad	32
sv7J_info:
.Lcvi9:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcvif
	addq $2,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	incq %rax
	movl %eax,%eax
	incq RET_NEW_ctr
	movq $base_GHCziWord_W32zh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcvif:
	movq $16,192(%r13)
.Lcvid:
	jmp *-16(%r13)
	.size sv7J_info, .-sv7J_info
.text
	.align 8
	.quad	1
	.quad	17
suzU_info:
.Lcvim:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvio
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sv7J_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sv7J_info
	jmp *(%rbx)
.Lcvio:
	jmp *-16(%r13)
	.size suzU_info, .-suzU_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7M_info)+40
	.long	0
	.quad	9
	.quad	1103806595104
sv7M_info:
.LcviE:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcviF
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 48(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 16(%rbp),%rax
	movq %rax,72(%rbp)
	movq 64(%rbp),%r9
	movq 24(%rbp),%rax
	movq %rax,64(%rbp)
	addq $56,%rbp
	jmp EngineziModelziMaterial_loadMtlFilezuzdsa_info
.LcviF:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 48(%rbp),%rdi
	movq 56(%rbp),%rax
	movq %rax,48(%rbp)
	movq 24(%rbp),%rax
	movq %rax,56(%rbp)
	movq 72(%rbp),%r8
	movq 16(%rbp),%rax
	movq %rax,72(%rbp)
	movq 64(%rbp),%r9
	movq 6(%rbx),%rax
	movq %rax,64(%rbp)
	addq $48,%rbp
	jmp rus0_info
	.size sv7M_info, .-sv7M_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7N_info)+40
	.long	0
	.quad	29065
	.quad	1103806595104
sv7N_info:
.LcviR:
	movq 47(%rbx),%rax
	movq %rax,16(%rbp)
	movq 31(%rbx),%rax
	movq %rax,24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,56(%rbp)
	movq 15(%rbx),%rax
	movq %rax,64(%rbp)
	movq 7(%rbx),%rax
	movq %rax,72(%rbp)
	movq 39(%rbx),%rbx
	movq $sv7M_info,0(%rbp)
	testq $7,%rbx
	jne sv7M_info
	jmp *(%rbx)
	.size sv7N_info, .-sv7N_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(suAg_info)+40
	.long	0
	.quad	29065
	.quad	1103806595104
suAg_info:
.Lcvj2:
	movq $sv7N_info,0(%rbp)
	testq $7,%rbx
	jne sv7N_info
	jmp *(%rbx)
	.size suAg_info, .-suAg_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7S_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sv7S_info:
.Lcvjz:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcvjA
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcvjA:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sv7S_info, .-sv7S_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7H_info)+0
	.long	0
	.quad	1
	.quad	279172874257
sv7H_info:
.LcvjI:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcvjK
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7S_info,-24(%rbp)
	addq $-24,%rbp
	jmp rtjh_info
.LcvjK:
	jmp *-16(%r13)
	.size sv7H_info, .-sv7H_info
.text
	.align 8
	.quad	0
	.quad	32
sv7V_info:
.LcvjV:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcvk1
	addq $2,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	movslq %eax,%rax
	incq RET_NEW_ctr
	movq $base_GHCziInt_I32zh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcvk1:
	movq $16,192(%r13)
.LcvjZ:
	jmp *-16(%r13)
	.size sv7V_info, .-sv7V_info
.text
	.align 8
	.quad	1
	.quad	17
suAM_info:
.Lcvk7:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvk9
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sv7V_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sv7V_info
	jmp *(%rbx)
.Lcvk9:
	jmp *-16(%r13)
	.size suAM_info, .-suAM_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7W_info)+40
	.long	0
	.quad	16393
	.quad	1103806595104
sv7W_info:
.Lcvke:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .Lcvki
	addq $14,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	movq $suAM_info,-104(%r12)
	movq 32(%rbp),%rax
	movq %rax,-88(%r12)
	movq $base_DataziMaybe_Just_con_info,-80(%r12)
	leaq -104(%r12),%rax
	movq %rax,-72(%r12)
	movq $base_DataziMaybe_Just_con_info,-64(%r12)
	movq %rbx,-56(%r12)
	movq $EngineziModelziMaterial_Material_con_info,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	movq 16(%rbp),%rax
	movq %rax,-32(%r12)
	movq 56(%rbp),%rax
	movq %rax,-24(%r12)
	movq 64(%rbp),%rax
	movq %rax,-16(%r12)
	leaq -62(%r12),%rax
	movq %rax,-8(%r12)
	leaq -78(%r12),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	jmp suAg_info
.Lcvki:
	movq $112,192(%r13)
.Lcvkg:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sv7W_info, .-sv7W_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7U_info)+0
	.long	0
	.quad	32778
	.quad	35669703393312
sv7U_info:
.Lcvkt:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcvkx
	addq $3,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	movq 8(%rax),%r14
	movq $sv7H_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%rsi
	movq $sv7W_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziCoreziWorld_loadWorldTexture1_info
.Lcvkx:
	movq $24,192(%r13)
.Lcvkv:
	jmp *-16(%r13)
	.size sv7U_info, .-sv7U_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7O_info)+0
	.long	0
	.quad	10
	.quad	35669703393312
sv7O_info:
.LcvkE:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcvkF
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcvkN
	addq $7,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $EngineziModelziMaterial_Material_con_info,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 64(%rbp),%rax
	movq %rax,-24(%r12)
	movq 72(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $8,%rbp
	jmp suAg_info
.LcvkF:
	movq 48(%rbp),%rbx
	movq $sv7U_info,0(%rbp)
	testq $7,%rbx
	jne sv7U_info
	jmp *(%rbx)
.LcvkN:
	movq $56,192(%r13)
.LcvkL:
	jmp *-16(%r13)
	.size sv7O_info, .-sv7O_info
.text
	.align 8
	.quad	0
	.quad	32
sv7X_info:
.Lcvl4:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcvl9
	addq $4,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %rbx,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcvl9:
	movq $32,192(%r13)
.Lcvl7:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sv7X_info, .-sv7X_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(suAZ_info)+56
	.long	0
	.quad	1
	.quad	4294967313
suAZ_info:
.Lcvld:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvlf
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7X_info,-24(%rbp)
	addq $-24,%rbp
	jmp rurS_info
.Lcvlf:
	jmp *-16(%r13)
	.size suAZ_info, .-suAZ_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7P_info)+0
	.long	0
	.quad	10
	.quad	53811645251616
sv7P_info:
.Lcvll:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcvlm
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurZ_closure,%esi
	movq 8(%rbp),%rdi
	movq $sv7O_info,0(%rbp)
	jmp base_DataziList_isPrefixOf_info
.Lcvlm:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .Lcvlq
	addq $12,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $suAZ_info,-88(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq $base_DataziMaybe_Just_con_info,-64(%r12)
	leaq -88(%r12),%rax
	movq %rax,-56(%r12)
	movq $EngineziModelziMaterial_Material_con_info,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 64(%rbp),%rax
	movq %rax,-24(%r12)
	leaq -62(%r12),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $8,%rbp
	jmp suAg_info
.Lcvlq:
	movq $96,192(%r13)
.Lcvlo:
	jmp *-16(%r13)
	.size sv7P_info, .-sv7P_info
.text
	.align 8
	.quad	0
	.quad	32
sv7Y_info:
.LcvlJ:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcvlO
	addq $4,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %rbx,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcvlO:
	movq $32,192(%r13)
.LcvlM:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sv7Y_info, .-sv7Y_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(suBa_info)+56
	.long	0
	.quad	1
	.quad	4294967313
suBa_info:
.LcvlS:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcvlU
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7Y_info,-24(%rbp)
	addq $-24,%rbp
	jmp rurS_info
.LcvlU:
	jmp *-16(%r13)
	.size suBa_info, .-suBa_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7Q_info)+0
	.long	0
	.quad	10
	.quad	62607738273824
sv7Q_info:
.Lcvm0:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcvm1
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurY_closure,%esi
	movq 8(%rbp),%rdi
	movq $sv7P_info,0(%rbp)
	jmp base_DataziList_isPrefixOf_info
.Lcvm1:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .Lcvm5
	addq $12,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $suBa_info,-88(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq $base_DataziMaybe_Just_con_info,-64(%r12)
	leaq -88(%r12),%rax
	movq %rax,-56(%r12)
	movq $EngineziModelziMaterial_Material_con_info,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	movq 72(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $8,%rbp
	jmp suAg_info
.Lcvm5:
	movq $96,192(%r13)
.Lcvm3:
	jmp *-16(%r13)
	.size sv7Q_info, .-sv7Q_info
.text
	.align 8
	.quad	0
	.quad	32
sv7Z_info:
.Lcvmo:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcvmt
	addq $4,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %rbx,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcvmt:
	movq $32,192(%r13)
.Lcvmr:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sv7Z_info, .-sv7Z_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(suBl_info)+56
	.long	0
	.quad	1
	.quad	4294967313
suBl_info:
.Lcvmx:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvmz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv7Z_info,-24(%rbp)
	addq $-24,%rbp
	jmp rurS_info
.Lcvmz:
	jmp *-16(%r13)
	.size suBl_info, .-suBl_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7R_info)+0
	.long	0
	.quad	10
	.quad	67005784784928
sv7R_info:
.LcvmF:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcvmG
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurX_closure,%esi
	movq 8(%rbp),%rdi
	movq $sv7Q_info,0(%rbp)
	jmp base_DataziList_isPrefixOf_info
.LcvmG:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcvmK
	addq $12,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $suBl_info,-88(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq $base_DataziMaybe_Just_con_info,-64(%r12)
	leaq -88(%r12),%rax
	movq %rax,-56(%r12)
	movq $EngineziModelziMaterial_Material_con_info,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	leaq -62(%r12),%rax
	movq %rax,-32(%r12)
	movq 64(%rbp),%rax
	movq %rax,-24(%r12)
	movq 72(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $8,%rbp
	jmp suAg_info
.LcvmK:
	movq $96,192(%r13)
.LcvmI:
	jmp *-16(%r13)
	.size sv7R_info, .-sv7R_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(suAh_info)+0
	.long	0
	.quad	8
	.quad	69204808040480
suAh_info:
.LcvmZ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcvn0
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	movq 40(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	addq $48,%rbp
	jmp EngineziModelziMaterial_loadMtlFilezuzdsa_info
.Lcvn0:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcvn4
	addq $3,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $suzU_info,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	leaq -16(%r12),%rax
	movq %rax,0(%rbp)
	incq KNOWN_CALL_ctr
	movq %rbx,-8(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurW_closure,%esi
	movq %rbx,%rdi
	movq $sv7R_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_DataziList_isPrefixOf_info
.Lcvn4:
	movq $24,192(%r13)
.Lcvn2:
	jmp *-16(%r13)
	.size suAh_info, .-suAh_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv82_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sv82_info:
.Lcvnk:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcvnl
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.Lcvnl:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sv82_info, .-sv82_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv81_info)+0
	.long	0
	.quad	1
	.quad	279172874257
sv81_info:
.Lcvnt:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcvnv
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sv82_info,-24(%rbp)
	addq $-24,%rbp
	jmp rtjh_info
.Lcvnv:
	jmp *-16(%r13)
	.size sv81_info, .-sv81_info
.text
	.align 8
	.quad	1800
	.quad	32
sv84_info:
.LcvnB:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcvnG
	addq $10,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $EngineziModelziMaterial_Material_con_info,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 56(%rbp),%rax
	movq %rax,-40(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-32(%r12)
	movq 64(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -71(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $72,%rbp
	jmp *0(%rbp)
.LcvnG:
	movq $80,192(%r13)
.LcvnE:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sv84_info, .-sv84_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7s_info)+0
	.long	0
	.quad	9
	.quad	69204808040480
sv7s_info:
.LcvnR:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcvnS
	movq 8(%rbp),%rbx
	movq $suAh_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne suAh_info
	jmp *(%rbx)
.LcvnS:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcvnW
	addq $3,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sv81_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq $base_DataziMaybe_Nothing_closure+1,0(%rbp)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%rbp)
	movq $base_DataziMaybe_Nothing_closure+1,-16(%rbp)
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 48(%rbp),%rdi
	leaq -16(%r12),%r8
	movl $base_DataziMaybe_Nothing_closure+1,%r9d
	movq $sv84_info,8(%rbp)
	addq $-16,%rbp
	jmp EngineziModelziMaterial_loadMtlFilezuzdsa_info
.LcvnW:
	movq $24,192(%r13)
.LcvnU:
	jmp *-16(%r13)
	.size sv7s_info, .-sv7s_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7t_info)+0
	.long	0
	.quad	8
	.quad	70304319668256
sv7t_info:
.Lcvo6:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rurV_closure,%esi
	movq %rbx,%rdi
	movq $sv7s_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sv7t_info, .-sv7t_info
.text
	.align 8
	.quad	1800
	.quad	32
sv86_info:
.Lcvod:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lcvoi
	addq $10,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $EngineziModelziMaterial_Material_con_info,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 56(%rbp),%rax
	movq %rax,-40(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-32(%r12)
	movq 64(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -71(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $72,%rbp
	jmp *0(%rbp)
.Lcvoi:
	movq $80,192(%r13)
.Lcvog:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sv86_info, .-sv86_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7u_info)+0
	.long	0
	.quad	8
	.quad	70330089472032
sv7u_info:
.Lcvot:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lcvou
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq $sv7t_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.Lcvou:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq $sv86_info,0(%rbp)
	jmp base_GHCziIOziHandle_hClose1_info
	.size sv7u_info, .-sv7u_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(sv7v_info)+0
	.long	0
	.quad	8
	.quad	70330089472032
sv7v_info:
.LcvoA:
	movq $sv7u_info,0(%rbp)
	testq $7,%rbx
	jne sv7u_info
	jmp *(%rbx)
	.size sv7v_info, .-sv7v_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_slow-(EngineziModelziMaterial_loadMtlFilezuzdsa_info)+0
	.long	0
	.quad	8
	.long	EngineziModelziMaterial_loadMtlFilezuzdsa_srt-(EngineziModelziMaterial_loadMtlFilezuzdsa_info)+0
	.long	0
	.quad	38654705664
	.quad	0
	.quad	70364449210383
.globl EngineziModelziMaterial_loadMtlFilezuzdsa_info
.type EngineziModelziMaterial_loadMtlFilezuzdsa_info, @object
EngineziModelziMaterial_loadMtlFilezuzdsa_info:
.LcvoG:
	leaq -72(%rbp),%rax
	cmpq %r15,%rax
	jb .LcvoI
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_loadMtlFilezuzdsa_ct
	je .LcvoJ
.LcvoK:
	incq EngineziModelziMaterial_loadMtlFilezuzdsa_ct+40
	incq KNOWN_CALL_ctr
	movq %r9,-40(%rbp)
	movq %r8,-32(%rbp)
	movq %rsi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %rdi,%r14
	movq $sv7v_info,-48(%rbp)
	addq $-48,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.LcvoI:
	movl $EngineziModelziMaterial_loadMtlFilezuzdsa_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcvoJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_loadMtlFilezuzdsa_ct+56
	movq $EngineziModelziMaterial_loadMtlFilezuzdsa_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_loadMtlFilezuzdsa_ct
	jmp .LcvoK
	.size EngineziModelziMaterial_loadMtlFilezuzdsa_info, .-EngineziModelziMaterial_loadMtlFilezuzdsa_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile13_closure
.type EngineziModelziMaterial_loadMtlFile13_closure, @object
EngineziModelziMaterial_loadMtlFile13_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	0
.section .data
	.align 8
.align 1
EngineziModelziMaterial_loadMtlFile1_srt:
	.quad	base_GHCziList_tail1_closure
	.quad	base_GHCziIOziHandleziFD_openFile1_closure
	.quad	EngineziModelziMaterial_applyDefualtMtl_closure
	.quad	EngineziModelziMaterial_loadMtlFilezuzdsa_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile1_closure
.type EngineziModelziMaterial_loadMtlFile1_closure, @object
EngineziModelziMaterial_loadMtlFile1_closure:
	.quad	EngineziModelziMaterial_loadMtlFile1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cvp9_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	77
	.byte	116
	.byte	108
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cvpc_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile1_ct
.type EngineziModelziMaterial_loadMtlFile1_ct, @object
EngineziModelziMaterial_loadMtlFile1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cvp9_str
	.quad	cvpc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile1_srt-(svoR_info)+0
	.long	0
	.quad	0
	.quad	21474836512
svoR_info:
.Lcvpw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcvpx
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcvpx:
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_applyDefualtMtl_closure+1,%r14d
	movq 14(%rbx),%rsi
	addq $8,%rbp
	jmp base_GHCziBase_map_info
	.size svoR_info, .-svoR_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile1_srt-(svoQ_info)+0
	.long	0
	.quad	1
	.quad	21474836497
svoQ_info:
.LcvpG:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcvpI
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $svoR_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne svoR_info
	jmp *(%rbx)
.LcvpI:
	jmp *-16(%r13)
	.size svoQ_info, .-svoQ_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile1_srt-(svoS_info)+0
	.long	0
	.quad	0
	.quad	21474836512
svoS_info:
.LcvpN:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcvpR
	addq $3,EngineziModelziMaterial_loadMtlFile1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $svoQ_info,-16(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -16(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcvpR:
	movq $24,192(%r13)
.LcvpP:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size svoS_info, .-svoS_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile1_srt-(svoT_info)+0
	.long	0
	.quad	1
	.quad	55834574880
svoT_info:
.LcvpU:
	incq KNOWN_CALL_ctr
	movq $base_DataziMaybe_Nothing_closure+1,0(%rbp)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%rbp)
	movq $base_DataziMaybe_Nothing_closure+1,-16(%rbp)
	movq 8(%rbp),%r14
	movl $EngineziModelziMaterial_loadMtlFile13_closure+1,%esi
	movq %rbx,%rdi
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r8d
	movl $base_DataziMaybe_Nothing_closure+1,%r9d
	movq $svoS_info,8(%rbp)
	addq $-16,%rbp
	jmp EngineziModelziMaterial_loadMtlFilezuzdsa_info
	.size svoT_info, .-svoT_info
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile1_srt-(EngineziModelziMaterial_loadMtlFile1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	64424509455
.globl EngineziModelziMaterial_loadMtlFile1_info
.type EngineziModelziMaterial_loadMtlFile1_info, @object
EngineziModelziMaterial_loadMtlFile1_info:
.LcvpX:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcvpZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_loadMtlFile1_ct
	je .Lcvq0
.Lcvq1:
	incq EngineziModelziMaterial_loadMtlFile1_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq %rsi,%r14
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $svoT_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_GHCziIOziHandleziFD_openFile1_info
.LcvpZ:
	movl $EngineziModelziMaterial_loadMtlFile1_closure,%ebx
	jmp *-8(%r13)
.Lcvq0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_loadMtlFile1_ct+56
	movq $EngineziModelziMaterial_loadMtlFile1_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_loadMtlFile1_ct
	jmp .Lcvq1
	.size EngineziModelziMaterial_loadMtlFile1_info, .-EngineziModelziMaterial_loadMtlFile1_info
.section .data
	.align 8
.align 1
EngineziModelziMaterial_loadMtlFile_srt:
	.quad	EngineziModelziMaterial_loadMtlFile1_closure
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile_closure
.type EngineziModelziMaterial_loadMtlFile_closure, @object
EngineziModelziMaterial_loadMtlFile_closure:
	.quad	EngineziModelziMaterial_loadMtlFile_info
	.quad	0
.section .rodata
	.align 8
.align 1
cvqb_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	77
	.byte	116
	.byte	108
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cvqe_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_loadMtlFile_ct
.type EngineziModelziMaterial_loadMtlFile_ct, @object
EngineziModelziMaterial_loadMtlFile_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cvqb_str
	.quad	cvqe_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziMaterial_loadMtlFile_srt-(EngineziModelziMaterial_loadMtlFile_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziModelziMaterial_loadMtlFile_info
.type EngineziModelziMaterial_loadMtlFile_info, @object
EngineziModelziMaterial_loadMtlFile_info:
.Lcvqj:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_loadMtlFile_ct
	je .Lcvqm
.Lcvqo:
	incq EngineziModelziMaterial_loadMtlFile_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziModelziMaterial_loadMtlFile1_info
.Lcvqm:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_loadMtlFile_ct+56
	movq $EngineziModelziMaterial_loadMtlFile_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_loadMtlFile_ct
	jmp .Lcvqo
	.size EngineziModelziMaterial_loadMtlFile_info, .-EngineziModelziMaterial_loadMtlFile_info
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_Material_closure
.type EngineziModelziMaterial_Material_closure, @object
EngineziModelziMaterial_Material_closure:
	.quad	EngineziModelziMaterial_Material_info
.section .rodata
	.align 8
.align 1
cvqw_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	116
	.byte	105
	.byte	97
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cvqz_str:
	.byte	76
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziMaterial_Material_ct
.type EngineziModelziMaterial_Material_ct, @object
EngineziModelziMaterial_Material_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	cvqw_str
	.quad	cvqz_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	25769803799
	.quad	0
	.quad	15
EngineziModelziMaterial_Material_info:
.LcvqE:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcvqJ
	addq $7,EngineziModelziMaterial_Material_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziMaterial_Material_ct
	je .LcvqL
.LcvqN:
	incq EngineziModelziMaterial_Material_ct+40
	incq RET_NEW_ctr
	movq $EngineziModelziMaterial_Material_con_info,-48(%r12)
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
.LcvqJ:
	movq $56,192(%r13)
.LcvqH:
	movl $EngineziModelziMaterial_Material_closure,%ebx
	jmp *-8(%r13)
.LcvqL:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziMaterial_Material_ct+56
	movq $EngineziModelziMaterial_Material_ct,ticky_entry_ctrs
	movq $1,EngineziModelziMaterial_Material_ct
	jmp .LcvqN
	.size EngineziModelziMaterial_Material_info, .-EngineziModelziMaterial_Material_info
.section .rodata
	.align 8
.align 1
ivqU_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	0
.text
	.align 8
	.long	ivqU_str-(EngineziModelziMaterial_Material_con_info)+0
	.long	0
	.quad	6
	.quad	1
.globl EngineziModelziMaterial_Material_con_info
.type EngineziModelziMaterial_Material_con_info, @object
EngineziModelziMaterial_Material_con_info:
.LcvqX:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziModelziMaterial_Material_con_info, .-EngineziModelziMaterial_Material_con_info
.section .rodata
	.align 8
.align 1
ivqZ_str:
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
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	46
	.byte	77
	.byte	97
	.byte	116
	.byte	101
	.byte	114
	.byte	105
	.byte	97
	.byte	108
	.byte	0
.text
	.align 8
	.long	ivqZ_str-(EngineziModelziMaterial_Material_static_info)+0
	.long	0
	.quad	6
	.quad	7
.globl EngineziModelziMaterial_Material_static_info
.type EngineziModelziMaterial_Material_static_info, @object
EngineziModelziMaterial_Material_static_info:
.Lcvr2:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziModelziMaterial_Material_static_info, .-EngineziModelziMaterial_Material_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
