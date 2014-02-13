.data
	.align 8
.align 1
.globl __stginit_EngineziObjectziGameObject
.type __stginit_EngineziObjectziGameObject, @object
__stginit_EngineziObjectziGameObject:
.data
	.align 8
.align 1
rDr6_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziCoreziWorld_playerAABB_closure
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.data
	.align 8
.align 1
rDr7_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	rDr6_closure+2
	.quad	0
.section .data
	.align 8
.align 1
rC7z_srt:
	.quad	rDr7_closure
.data
	.align 8
.align 1
rC7z_closure:
	.quad	rC7z_info
	.quad	0
.section .rodata
	.align 8
.align 1
cDKI_str:
	.byte	103
	.byte	101
	.byte	116
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	122
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cDKK_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
rC7z_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cDKI_str
	.quad	cDKK_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sDJZ_info:
.LcDKT:
	movq 39(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDJZ_info, .-sDJZ_info
.text
	.align 8
	.quad	0
	.quad	32
sDK8_info:
.LcDL1:
	movq 39(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDK8_info, .-sDK8_info
.text
	.align 8
	.long	rC7z_srt-(sDJS_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sDJS_info:
.LcDL7:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcDLc
	movl $rDr7_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcDL8:
	movq 21(%rbx),%rbx
	movq $sDK8_info,0(%rbp)
	testq $7,%rbx
	jne sDK8_info
	jmp *(%rbx)
.LcDLc:
	cmpq $3,%rax
	jae .LcDL8
	movq 22(%rbx),%rbx
	movq $sDJZ_info,0(%rbp)
	testq $7,%rbx
	jne sDJZ_info
	jmp *(%rbx)
	.size sDJS_info, .-sDJS_info
.text
	.align 8
	.long	rC7z_srt-(rC7z_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
rC7z_info:
.LcDLj:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDLl
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rC7z_ct
	je .LcDLm
.LcDLn:
	incq rC7z_ct+40
	movq %r14,%rbx
	movq $sDJS_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sDJS_info
	jmp *(%rbx)
.LcDLl:
	movl $rC7z_closure,%ebx
	jmp *-8(%r13)
.LcDLm:
	movq ticky_entry_ctrs,%rax
	movq %rax,rC7z_ct+56
	movq $rC7z_ct,ticky_entry_ctrs
	movq $1,rC7z_ct
	jmp .LcDLn
	.size rC7z_info, .-rC7z_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_calculateNewWholeAABB1_closure
.type EngineziObjectziGameObject_calculateNewWholeAABB1_closure, @object
EngineziObjectziGameObject_calculateNewWholeAABB1_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	EngineziCoreziWorld_playerAABB_closure
	.quad	0
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_getWholeAABB_srt:
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getWholeAABB_closure
.type EngineziObjectziGameObject_getWholeAABB_closure, @object
EngineziObjectziGameObject_getWholeAABB_closure:
	.quad	EngineziObjectziGameObject_getWholeAABB_info
	.quad	0
.section .rodata
	.align 8
.align 1
cDMm_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	103
	.byte	101
	.byte	116
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
	.byte	67
	.byte	55
	.byte	121
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cDMo_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getWholeAABB_ct
.type EngineziObjectziGameObject_getWholeAABB_ct, @object
EngineziObjectziGameObject_getWholeAABB_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cDMm_str
	.quad	cDMo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sDLE_info:
.LcDMx:
	movq 47(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDLE_info, .-sDLE_info
.text
	.align 8
	.quad	0
	.quad	32
sDLN_info:
.LcDMF:
	movq 47(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDLN_info, .-sDLN_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getWholeAABB_srt-(sDLx_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sDLx_info:
.LcDML:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcDMQ
	movl $EngineziObjectziGameObject_calculateNewWholeAABB1_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcDMM:
	movq 21(%rbx),%rbx
	movq $sDLN_info,0(%rbp)
	testq $7,%rbx
	jne sDLN_info
	jmp *(%rbx)
.LcDMQ:
	cmpq $3,%rax
	jae .LcDMM
	movq 22(%rbx),%rbx
	movq $sDLE_info,0(%rbp)
	testq $7,%rbx
	jne sDLE_info
	jmp *(%rbx)
	.size sDLx_info, .-sDLx_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getWholeAABB_srt-(EngineziObjectziGameObject_getWholeAABB_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_getWholeAABB_info
.type EngineziObjectziGameObject_getWholeAABB_info, @object
EngineziObjectziGameObject_getWholeAABB_info:
.LcDMX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDMZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_getWholeAABB_ct
	je .LcDN0
.LcDN1:
	incq EngineziObjectziGameObject_getWholeAABB_ct+40
	movq %r14,%rbx
	movq $sDLx_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sDLx_info
	jmp *(%rbx)
.LcDMZ:
	movl $EngineziObjectziGameObject_getWholeAABB_closure,%ebx
	jmp *-8(%r13)
.LcDN0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_getWholeAABB_ct+56
	movq $EngineziObjectziGameObject_getWholeAABB_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_getWholeAABB_ct
	jmp .LcDN1
	.size EngineziObjectziGameObject_getWholeAABB_info, .-EngineziObjectziGameObject_getWholeAABB_info
.data
	.align 8
.align 1
rDr8_closure:
	.quad	rDr8_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cDNh_str:
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	32
	.byte	99
	.byte	97
	.byte	108
	.byte	108
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
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rDr8_info:
.LcDNl:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDNn
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcDNp
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
	je .LcDNq
.LcDNr:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cDNh_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcDNp:
	movq $16,192(%r13)
.LcDNn:
	jmp *-16(%r13)
.LcDNq:
	jmp *(%rbx)
	.size rDr8_info, .-rDr8_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_getModel1_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rDr8_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getModel1_closure
.type EngineziObjectziGameObject_getModel1_closure, @object
EngineziObjectziGameObject_getModel1_closure:
	.quad	EngineziObjectziGameObject_getModel1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziGameObject_getModel1_srt-(EngineziObjectziGameObject_getModel1_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziObjectziGameObject_getModel1_info
.type EngineziObjectziGameObject_getModel1_info, @object
EngineziObjectziGameObject_getModel1_info:
.LcDNI:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDNK
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcDNM
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
	je .LcDNN
.LcDNO:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rDr8_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcDNM:
	movq $16,192(%r13)
.LcDNK:
	jmp *-16(%r13)
.LcDNN:
	jmp *(%rbx)
	.size EngineziObjectziGameObject_getModel1_info, .-EngineziObjectziGameObject_getModel1_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_getModel_srt:
	.quad	EngineziObjectziGameObject_getModel1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getModel_closure
.type EngineziObjectziGameObject_getModel_closure, @object
EngineziObjectziGameObject_getModel_closure:
	.quad	EngineziObjectziGameObject_getModel_info
	.quad	0
.section .rodata
	.align 8
.align 1
cDOr_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	114
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cDOt_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getModel_ct
.type EngineziObjectziGameObject_getModel_ct, @object
EngineziObjectziGameObject_getModel_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cDOr_str
	.quad	cDOt_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziGameObject_getModel_srt-(sDNV_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sDNV_info:
.LcDOz:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcDOB
	movl $EngineziObjectziGameObject_getModel1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcDOA:
	movq 21(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcDOB:
	cmpq $3,%rax
	jae .LcDOA
	movq 22(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDNV_info, .-sDNV_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getModel_srt-(EngineziObjectziGameObject_getModel_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_getModel_info
.type EngineziObjectziGameObject_getModel_info, @object
EngineziObjectziGameObject_getModel_info:
.LcDOI:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDOK
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_getModel_ct
	je .LcDOL
.LcDOM:
	incq EngineziObjectziGameObject_getModel_ct+40
	movq %r14,%rbx
	movq $sDNV_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sDNV_info
	jmp *(%rbx)
.LcDOK:
	movl $EngineziObjectziGameObject_getModel_closure,%ebx
	jmp *-8(%r13)
.LcDOL:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_getModel_ct+56
	movq $EngineziObjectziGameObject_getModel_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_getModel_ct
	jmp .LcDOM
	.size EngineziObjectziGameObject_getModel_info, .-EngineziObjectziGameObject_getModel_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getPos_closure
.type EngineziObjectziGameObject_getPos_closure, @object
EngineziObjectziGameObject_getPos_closure:
	.quad	EngineziObjectziGameObject_getPos_info
.section .rodata
	.align 8
.align 1
cDPo_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	80
	.byte	111
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	113
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cDPq_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getPos_ct
.type EngineziObjectziGameObject_getPos_ct, @object
EngineziObjectziGameObject_getPos_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cDPo_str
	.quad	cDPq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sDOT_info:
.LcDPw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcDPy
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcDPx:
	movq 5(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcDPy:
	cmpq $3,%rax
	jae .LcDPx
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDOT_info, .-sDOT_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziObjectziGameObject_getPos_info
.type EngineziObjectziGameObject_getPos_info, @object
EngineziObjectziGameObject_getPos_info:
.LcDPF:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDPH
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_getPos_ct
	je .LcDPI
.LcDPJ:
	incq EngineziObjectziGameObject_getPos_ct+40
	movq %r14,%rbx
	movq $sDOT_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sDOT_info
	jmp *(%rbx)
.LcDPH:
	movl $EngineziObjectziGameObject_getPos_closure,%ebx
	jmp *-8(%r13)
.LcDPI:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_getPos_ct+56
	movq $EngineziObjectziGameObject_getPos_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_getPos_ct
	jmp .LcDPJ
	.size EngineziObjectziGameObject_getPos_info, .-EngineziObjectziGameObject_getPos_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_updateObject_closure
.type EngineziObjectziGameObject_updateObject_closure, @object
EngineziObjectziGameObject_updateObject_closure:
	.quad	EngineziObjectziGameObject_updateObject_info
.section .rodata
	.align 8
.align 1
cDQs_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	106
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cDQu_str:
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_updateObject_ct
.type EngineziObjectziGameObject_updateObject_ct, @object
EngineziObjectziGameObject_updateObject_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cDQs_str
	.quad	cDQu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sDPQ_info:
.LcDQC:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDPQ_info, .-sDPQ_info
.text
	.align 8
	.quad	1
	.quad	32
sDtr_info:
.LcDQI:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcDQK
	incq UNKNOWN_CALL_ctr
	movq 39(%rbx),%rbx
	movq 8(%rbp),%r14
	movq $sDPQ_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
.LcDQJ:
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcDQK:
	cmpq $3,%rax
	jae .LcDQJ
	incq UNKNOWN_CALL_ctr
	movq %rbx,%r14
	movq 14(%rbx),%rbx
	addq $16,%rbp
	jmp stg_ap_p_fast
	.size sDtr_info, .-sDtr_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziObjectziGameObject_updateObject_info
.type EngineziObjectziGameObject_updateObject_info, @object
EngineziObjectziGameObject_updateObject_info:
.LcDQP:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDQR
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_updateObject_ct
	je .LcDQS
.LcDQT:
	incq EngineziObjectziGameObject_updateObject_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sDtr_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sDtr_info
	jmp *(%rbx)
.LcDQR:
	movl $EngineziObjectziGameObject_updateObject_closure,%ebx
	jmp *-8(%r13)
.LcDQS:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_updateObject_ct+56
	movq $EngineziObjectziGameObject_updateObject_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_updateObject_ct
	jmp .LcDQT
	.size EngineziObjectziGameObject_updateObject_info, .-EngineziObjectziGameObject_updateObject_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_updateAll_closure
.type EngineziObjectziGameObject_updateAll_closure, @object
EngineziObjectziGameObject_updateAll_closure:
	.quad	EngineziObjectziGameObject_updateAll_info
.section .rodata
	.align 8
.align 1
cDR6_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	65
	.byte	108
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cDR9_str:
	.byte	76
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_updateAll_ct
.type EngineziObjectziGameObject_updateAll_ct, @object
EngineziObjectziGameObject_updateAll_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cDR6_str
	.quad	cDR9_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cDRi_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	68
	.byte	82
	.byte	48
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cDRl_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
sDR0_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cDRi_str
	.quad	cDRl_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sDR0_info:
.LcDRq:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sDR0_ct
	je .LcDRt
.LcDRv:
	incq sDR0_ct+40
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rsi
	jmp EngineziObjectziGameObject_updateObject_info
.LcDRt:
	movq ticky_entry_ctrs,%rax
	movq %rax,sDR0_ct+56
	movq $sDR0_ct,ticky_entry_ctrs
	movq $1,sDR0_ct
	jmp .LcDRv
	.size sDR0_info, .-sDR0_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziObjectziGameObject_updateAll_info
.type EngineziObjectziGameObject_updateAll_info, @object
EngineziObjectziGameObject_updateAll_info:
.LcDRz:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcDRD
	addq $2,EngineziObjectziGameObject_updateAll_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_updateAll_ct
	je .LcDRE
.LcDRF:
	incq EngineziObjectziGameObject_updateAll_ct+40
	movq $sDR0_info,-8(%r12)
	movq %rsi,0(%r12)
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	leaq -7(%r12),%r14
	jmp base_GHCziBase_map_info
.LcDRD:
	movq $16,192(%r13)
.LcDRB:
	movl $EngineziObjectziGameObject_updateAll_closure,%ebx
	jmp *-8(%r13)
.LcDRE:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_updateAll_ct+56
	movq $EngineziObjectziGameObject_updateAll_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_updateAll_ct
	jmp .LcDRF
	.size EngineziObjectziGameObject_updateAll_info, .-EngineziObjectziGameObject_updateAll_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_updateWorld_closure
.type EngineziObjectziGameObject_updateWorld_closure, @object
EngineziObjectziGameObject_updateWorld_closure:
	.quad	EngineziObjectziGameObject_updateWorld_info
.section .rodata
	.align 8
.align 1
cDRT_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	117
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	105
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cDRW_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_updateWorld_ct
.type EngineziObjectziGameObject_updateWorld_ct, @object
EngineziObjectziGameObject_updateWorld_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cDRT_str
	.quad	cDRW_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sDtP_info:
.LcDSa:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcDSg
	addq $5,EngineziObjectziGameObject_updateWorld_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcDSg:
	movq $40,192(%r13)
.LcDSe:
	jmp *-16(%r13)
	.size sDtP_info, .-sDtP_info
.text
	.align 8
	.quad	0
	.quad	32
sDtM_info:
.LcDSm:
	incq KNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%r14
	movq %rbx,%rsi
	movq $sDtP_info,-24(%rbp)
	addq $-24,%rbp
	jmp EngineziObjectziGameObject_updateAll_info
	.size sDtM_info, .-sDtM_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziObjectziGameObject_updateWorld_info
.type EngineziObjectziGameObject_updateWorld_info, @object
EngineziObjectziGameObject_updateWorld_info:
.LcDSs:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDSu
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_updateWorld_ct
	je .LcDSv
.LcDSw:
	incq EngineziObjectziGameObject_updateWorld_ct+40
	movq %r14,%rbx
	movq $sDtM_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sDtM_info
	jmp *(%rbx)
.LcDSu:
	movl $EngineziObjectziGameObject_updateWorld_closure,%ebx
	jmp *-8(%r13)
.LcDSv:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_updateWorld_ct+56
	movq $EngineziObjectziGameObject_updateWorld_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_updateWorld_ct
	jmp .LcDSw
	.size EngineziObjectziGameObject_updateWorld_info, .-EngineziObjectziGameObject_updateWorld_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObject_closure
.type EngineziObjectziGameObject_zdwmoveObject_closure, @object
EngineziObjectziGameObject_zdwmoveObject_closure:
	.quad	EngineziObjectziGameObject_zdwmoveObject_info
.section .rodata
	.align 8
.align 1
cDVd_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cDVf_str:
	.byte	77
	.byte	102
	.byte	102
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObject_ct
.type EngineziObjectziGameObject_zdwmoveObject_ct, @object
EngineziObjectziGameObject_zdwmoveObject_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cDVd_str
	.quad	cDVf_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziGameObject_zdwmoveObject_slow
.type EngineziObjectziGameObject_zdwmoveObject_slow, @object
EngineziObjectziGameObject_zdwmoveObject_slow:
.LcDVi:
	movq 0(%rbp),%r14
	movss 8(%rbp),%xmm1
	movss 16(%rbp),%xmm2
	movss 24(%rbp),%xmm3
	addq $32,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
	.size EngineziObjectziGameObject_zdwmoveObject_slow, .-EngineziObjectziGameObject_zdwmoveObject_slow
.text
	.align 8
	.quad	5
	.quad	32
sDvI_info:
.LcDVp:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcDVv
	addq $7,EngineziObjectziGameObject_zdwmoveObject_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
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
	leaq -47(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcDVv:
	movq $56,192(%r13)
.LcDVt:
	jmp *-16(%r13)
	.size sDvI_info, .-sDvI_info
.text
	.align 8
	.quad	3
	.quad	32
sDvW_info:
.LcDVH:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcDVN
	addq $5,EngineziObjectziGameObject_zdwmoveObject_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_PureEntity_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	leaq -30(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcDVN:
	movq $40,192(%r13)
.LcDVL:
	jmp *-16(%r13)
	.size sDvW_info, .-sDvW_info
.text
	.align 8
	.quad	3
	.quad	32
sDw8_info:
.LcDVX:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcDW3
	addq $5,EngineziObjectziGameObject_zdwmoveObject_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_EffectfulEntity_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	leaq -29(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcDW3:
	movq $40,192(%r13)
.LcDW1:
	jmp *-16(%r13)
	.size sDw8_info, .-sDw8_info
.text
	.align 8
	.quad	1
	.quad	32
sDSI_info:
.LcDWb:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcDWg
	movq 47(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 15(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sDvI_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sDvI_info
	jmp *(%rbx)
.LcDWc:
	movq 29(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 21(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 13(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sDw8_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sDw8_info
	jmp *(%rbx)
.LcDWg:
	cmpq $3,%rax
	jae .LcDWc
	movq 30(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 22(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 14(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sDvW_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sDvW_info
	jmp *(%rbx)
	.size sDSI_info, .-sDSI_info
.text
	.align 8
	.quad	1
	.quad	32
sDvw_info:
.LcDWH:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sDSI_info,0(%rbp)
	testq $7,%rbx
	jne sDSI_info
	jmp *(%rbx)
	.size sDvw_info, .-sDvw_info
.text
	.align 8
	.quad	1990
	.quad	32
sDST_info:
.LcDX5:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcDXb
	addq $10,EngineziObjectziGameObject_zdwmoveObject_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	addss 24(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movss 8(%rbp),%xmm0
	addss 32(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm0,-48(%r12)
	movss 16(%rbp),%xmm0
	addss 40(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -71(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	movq $sDvw_info,40(%rbp)
	addq $40,%rbp
	jmp sDvw_info
.LcDXb:
	movq $80,192(%r13)
.LcDX9:
	jmp *-16(%r13)
	.size sDST_info, .-sDST_info
.text
	.align 8
	.quad	1926
	.quad	32
sDSU_info:
.LcDXk:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sDST_info,0(%rbp)
	testq $7,%rbx
	jne sDST_info
	jmp *(%rbx)
	.size sDSU_info, .-sDSU_info
.text
	.align 8
	.quad	1798
	.quad	32
sDSV_info:
.LcDXt:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sDSU_info,0(%rbp)
	testq $7,%rbx
	jne sDSU_info
	jmp *(%rbx)
	.size sDSV_info, .-sDSV_info
.text
	.align 8
	.quad	452
	.quad	32
sDSW_info:
.LcDXC:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sDSV_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sDSV_info
	jmp *(%rbx)
	.size sDSW_info, .-sDSW_info
.text
	.align 8
	.quad	1990
	.quad	32
sDT6_info:
.LcDY0:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcDY6
	addq $10,EngineziObjectziGameObject_zdwmoveObject_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	addss 24(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movss 8(%rbp),%xmm0
	addss 32(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm0,-48(%r12)
	movss 16(%rbp),%xmm0
	addss 40(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -71(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	movq $sDvw_info,40(%rbp)
	addq $40,%rbp
	jmp sDvw_info
.LcDY6:
	movq $80,192(%r13)
.LcDY4:
	jmp *-16(%r13)
	.size sDT6_info, .-sDT6_info
.text
	.align 8
	.quad	1926
	.quad	32
sDT7_info:
.LcDYf:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sDT6_info,0(%rbp)
	testq $7,%rbx
	jne sDT6_info
	jmp *(%rbx)
	.size sDT7_info, .-sDT7_info
.text
	.align 8
	.quad	1798
	.quad	32
sDT8_info:
.LcDYo:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sDT7_info,0(%rbp)
	testq $7,%rbx
	jne sDT7_info
	jmp *(%rbx)
	.size sDT8_info, .-sDT8_info
.text
	.align 8
	.quad	452
	.quad	32
sDT9_info:
.LcDYx:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sDT8_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sDT8_info
	jmp *(%rbx)
	.size sDT9_info, .-sDT9_info
.text
	.align 8
	.quad	1990
	.quad	32
sDTg_info:
.LcDYV:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcDZ1
	addq $10,EngineziObjectziGameObject_zdwmoveObject_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	addss 24(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movss 8(%rbp),%xmm0
	addss 32(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm0,-48(%r12)
	movss 16(%rbp),%xmm0
	addss 40(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -71(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	movq $sDvw_info,40(%rbp)
	addq $40,%rbp
	jmp sDvw_info
.LcDZ1:
	movq $80,192(%r13)
.LcDYZ:
	jmp *-16(%r13)
	.size sDTg_info, .-sDTg_info
.text
	.align 8
	.quad	1926
	.quad	32
sDTh_info:
.LcDZa:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sDTg_info,0(%rbp)
	testq $7,%rbx
	jne sDTg_info
	jmp *(%rbx)
	.size sDTh_info, .-sDTh_info
.text
	.align 8
	.quad	1798
	.quad	32
sDTi_info:
.LcDZj:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sDTh_info,0(%rbp)
	testq $7,%rbx
	jne sDTh_info
	jmp *(%rbx)
	.size sDTi_info, .-sDTi_info
.text
	.align 8
	.quad	452
	.quad	32
sDTj_info:
.LcDZs:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sDTi_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sDTi_info
	jmp *(%rbx)
	.size sDTj_info, .-sDTj_info
.text
	.align 8
	.quad	452
	.quad	32
sDSX_info:
.LcDZC:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcDZH
	movq 7(%rbx),%rbx
	movq $sDSW_info,0(%rbp)
	testq $7,%rbx
	jne sDSW_info
	jmp *(%rbx)
.LcDZD:
	movq 5(%rbx),%rbx
	movq $sDTj_info,0(%rbp)
	testq $7,%rbx
	jne sDTj_info
	jmp *(%rbx)
.LcDZH:
	cmpq $3,%rax
	jae .LcDZD
	movq 6(%rbx),%rbx
	movq $sDT9_info,0(%rbp)
	testq $7,%rbx
	jne sDT9_info
	jmp *(%rbx)
	.size sDSX_info, .-sDSX_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObject_slow-(EngineziObjectziGameObject_zdwmoveObject_info)+0
	.long	0
	.quad	900
	.quad	0
	.quad	17179869184
	.quad	0
	.quad	15
.globl EngineziObjectziGameObject_zdwmoveObject_info
.type EngineziObjectziGameObject_zdwmoveObject_info, @object
EngineziObjectziGameObject_zdwmoveObject_info:
.LcDZR:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcDZT
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_zdwmoveObject_ct
	je .LcDZU
.LcDZV:
	incq EngineziObjectziGameObject_zdwmoveObject_ct+40
	movq %r14,-8(%rbp)
	movss %xmm3,-32(%rbp)
	movss %xmm2,-24(%rbp)
	movss %xmm1,-16(%rbp)
	movq %r14,%rbx
	movq $sDSX_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sDSX_info
	jmp *(%rbx)
.LcDZT:
	movl $EngineziObjectziGameObject_zdwmoveObject_closure,%ebx
	addq $-32,%rbp
	movq %r14,0(%rbp)
	movss %xmm1,8(%rbp)
	movss %xmm2,16(%rbp)
	movss %xmm3,24(%rbp)
	jmp *-8(%r13)
.LcDZU:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_zdwmoveObject_ct+56
	movq $EngineziObjectziGameObject_zdwmoveObject_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_zdwmoveObject_ct
	jmp .LcDZV
	.size EngineziObjectziGameObject_zdwmoveObject_info, .-EngineziObjectziGameObject_zdwmoveObject_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObject_closure
.type EngineziObjectziGameObject_moveObject_closure, @object
EngineziObjectziGameObject_moveObject_closure:
	.quad	EngineziObjectziGameObject_moveObject_info
.section .rodata
	.align 8
.align 1
cE0n_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	112
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cE0q_str:
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObject_ct
.type EngineziObjectziGameObject_moveObject_ct, @object
EngineziObjectziGameObject_moveObject_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cE0n_str
	.quad	cE0q_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	195
	.quad	32
sE02_info:
.LcE0M:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $32,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
	.size sE02_info, .-sE02_info
.text
	.align 8
	.quad	131
	.quad	32
sE03_info:
.LcE0P:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE02_info,0(%rbp)
	testq $7,%rbx
	jne sE02_info
	jmp *(%rbx)
	.size sE03_info, .-sE03_info
.text
	.align 8
	.quad	3
	.quad	32
sE04_info:
.LcE0Y:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE03_info,0(%rbp)
	testq $7,%rbx
	jne sE03_info
	jmp *(%rbx)
	.size sE04_info, .-sE04_info
.text
	.align 8
	.quad	1
	.quad	32
sE05_info:
.LcE17:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE04_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE04_info
	jmp *(%rbx)
	.size sE05_info, .-sE05_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziObjectziGameObject_moveObject_info
.type EngineziObjectziGameObject_moveObject_info, @object
EngineziObjectziGameObject_moveObject_info:
.LcE1f:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcE1h
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_moveObject_ct
	je .LcE1i
.LcE1j:
	incq EngineziObjectziGameObject_moveObject_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sE05_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE05_info
	jmp *(%rbx)
.LcE1h:
	movl $EngineziObjectziGameObject_moveObject_closure,%ebx
	jmp *-8(%r13)
.LcE1i:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_moveObject_ct+56
	movq $EngineziObjectziGameObject_moveObject_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_moveObject_ct
	jmp .LcE1j
	.size EngineziObjectziGameObject_moveObject_info, .-EngineziObjectziGameObject_moveObject_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_calculateNewWholeAABB_srt:
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_calculateNewWholeAABB_closure
.type EngineziObjectziGameObject_calculateNewWholeAABB_closure, @object
EngineziObjectziGameObject_calculateNewWholeAABB_closure:
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB_info
	.quad	0
.section .rodata
	.align 8
.align 1
cE3V_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	99
	.byte	97
	.byte	108
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	78
	.byte	101
	.byte	119
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
	.byte	67
	.byte	55
	.byte	115
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cE3X_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_calculateNewWholeAABB_ct
.type EngineziObjectziGameObject_calculateNewWholeAABB_ct, @object
EngineziObjectziGameObject_calculateNewWholeAABB_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cE3V_str
	.quad	cE3X_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sE1A_info:
.LcE43:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcE45
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcE44:
	movq 5(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcE45:
	cmpq $3,%rax
	jae .LcE44
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sE1A_info, .-sE1A_info
.text
	.align 8
	.quad	1
	.quad	17
sDwT_info:
.LcE4e:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcE4g
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sE1A_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sE1A_info
	jmp *(%rbx)
.LcE4g:
	jmp *-16(%r13)
	.size sDwT_info, .-sDwT_info
.text
	.align 8
	.quad	0
	.quad	32
sE1M_info:
.LcE4p:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcE4v
	addq $3,EngineziObjectziGameObject_calculateNewWholeAABB_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	movq 15(%rbx),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcE4v:
	movq $24,192(%r13)
.LcE4t:
	jmp *-16(%r13)
	.size sE1M_info, .-sE1M_info
.text
	.align 8
	.quad	1
	.quad	17
sDx1_info:
.LcE4C:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcE4E
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sE1M_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sE1M_info
	jmp *(%rbx)
.LcE4E:
	jmp *-16(%r13)
	.size sDx1_info, .-sDx1_info
.text
	.align 8
	.quad	1989
	.quad	32
sE1N_info:
.LcE5j:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcE5p
	addq $10,EngineziObjectziGameObject_calculateNewWholeAABB_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 40(%rbp),%xmm0
	addss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movss 24(%rbp),%xmm0
	addss 8(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm0,-48(%r12)
	movss 32(%rbp),%xmm0
	addss 16(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -71(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcE5p:
	movq $80,192(%r13)
.LcE5n:
	jmp *-16(%r13)
	.size sE1N_info, .-sE1N_info
.text
	.align 8
	.quad	1925
	.quad	32
sE1O_info:
.LcE5z:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE1N_info,0(%rbp)
	testq $7,%rbx
	jne sE1N_info
	jmp *(%rbx)
	.size sE1O_info, .-sE1O_info
.text
	.align 8
	.quad	1797
	.quad	32
sE1P_info:
.LcE5I:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE1O_info,0(%rbp)
	testq $7,%rbx
	jne sE1O_info
	jmp *(%rbx)
	.size sE1P_info, .-sE1P_info
.text
	.align 8
	.quad	451
	.quad	32
sE1Q_info:
.LcE5R:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE1P_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE1P_info
	jmp *(%rbx)
	.size sE1Q_info, .-sE1Q_info
.text
	.align 8
	.quad	195
	.quad	32
sE1R_info:
.LcE5Z:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sE1Q_info,0(%rbp)
	testq $7,%rbx
	jne sE1Q_info
	jmp *(%rbx)
	.size sE1R_info, .-sE1R_info
.text
	.align 8
	.quad	131
	.quad	32
sE1S_info:
.LcE68:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE1R_info,0(%rbp)
	testq $7,%rbx
	jne sE1R_info
	jmp *(%rbx)
	.size sE1S_info, .-sE1S_info
.text
	.align 8
	.quad	3
	.quad	32
sE1T_info:
.LcE6h:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE1S_info,0(%rbp)
	testq $7,%rbx
	jne sE1S_info
	jmp *(%rbx)
	.size sE1T_info, .-sE1T_info
.text
	.align 8
	.quad	1
	.quad	32
sE1U_info:
.LcE6q:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE1T_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE1T_info
	jmp *(%rbx)
	.size sE1U_info, .-sE1U_info
.text
	.align 8
	.quad	1
	.quad	32
sE1V_info:
.LcE6y:
	movq 15(%rbx),%rbx
	movq $sE1U_info,0(%rbp)
	testq $7,%rbx
	jne sE1U_info
	jmp *(%rbx)
	.size sE1V_info, .-sE1V_info
.text
	.align 8
	.quad	2
	.quad	19
sDyw_info:
.LcE6G:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcE6I
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sE1V_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sE1V_info
	jmp *(%rbx)
.LcE6I:
	jmp *-16(%r13)
	.size sDyw_info, .-sDyw_info
.text
	.align 8
	.quad	1989
	.quad	32
sE1W_info:
.LcE7o:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcE7u
	addq $10,EngineziObjectziGameObject_calculateNewWholeAABB_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 40(%rbp),%xmm0
	addss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movss 24(%rbp),%xmm0
	addss 8(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm0,-48(%r12)
	movss 32(%rbp),%xmm0
	addss 16(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -71(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcE7u:
	movq $80,192(%r13)
.LcE7s:
	jmp *-16(%r13)
	.size sE1W_info, .-sE1W_info
.text
	.align 8
	.quad	1925
	.quad	32
sE1X_info:
.LcE7E:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE1W_info,0(%rbp)
	testq $7,%rbx
	jne sE1W_info
	jmp *(%rbx)
	.size sE1X_info, .-sE1X_info
.text
	.align 8
	.quad	1797
	.quad	32
sE1Y_info:
.LcE7N:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE1X_info,0(%rbp)
	testq $7,%rbx
	jne sE1X_info
	jmp *(%rbx)
	.size sE1Y_info, .-sE1Y_info
.text
	.align 8
	.quad	451
	.quad	32
sE1Z_info:
.LcE7W:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE1Y_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE1Y_info
	jmp *(%rbx)
	.size sE1Z_info, .-sE1Z_info
.text
	.align 8
	.quad	195
	.quad	32
sE20_info:
.LcE84:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sE1Z_info,0(%rbp)
	testq $7,%rbx
	jne sE1Z_info
	jmp *(%rbx)
	.size sE20_info, .-sE20_info
.text
	.align 8
	.quad	131
	.quad	32
sE21_info:
.LcE8d:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE20_info,0(%rbp)
	testq $7,%rbx
	jne sE20_info
	jmp *(%rbx)
	.size sE21_info, .-sE21_info
.text
	.align 8
	.quad	3
	.quad	32
sE22_info:
.LcE8m:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE21_info,0(%rbp)
	testq $7,%rbx
	jne sE21_info
	jmp *(%rbx)
	.size sE22_info, .-sE22_info
.text
	.align 8
	.quad	1
	.quad	32
sE23_info:
.LcE8v:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE22_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE22_info
	jmp *(%rbx)
	.size sE23_info, .-sE23_info
.text
	.align 8
	.quad	1
	.quad	32
sE24_info:
.LcE8D:
	movq 7(%rbx),%rbx
	movq $sE23_info,0(%rbp)
	testq $7,%rbx
	jne sE23_info
	jmp *(%rbx)
	.size sE24_info, .-sE24_info
.text
	.align 8
	.quad	2
	.quad	19
sDyx_info:
.LcE8L:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcE8N
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sE24_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sE24_info
	jmp *(%rbx)
.LcE8N:
	jmp *-16(%r13)
	.size sDyx_info, .-sDyx_info
.text
	.align 8
	.quad	1
	.quad	32
sE1q_info:
.LcE8V:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcE8W
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcE8W:
	addq $152,%r12
	cmpq 144(%r13),%r12
	ja .LcE90
	addq $19,EngineziObjectziGameObject_calculateNewWholeAABB_ct+48
	incq ALLOC_HEAP_ctr
	addq $19,ALLOC_HEAP_tot
	movq $sDwT_info,-144(%r12)
	movq 8(%rbp),%rax
	movq %rax,-128(%r12)
	movq $sDx1_info,-120(%r12)
	movq 6(%rbx),%rax
	movq %rax,-104(%r12)
	movq $sDyw_info,-96(%r12)
	leaq -144(%r12),%rax
	movq %rax,-80(%r12)
	leaq -120(%r12),%rax
	movq %rax,-72(%r12)
	movq $sDyx_info,-64(%r12)
	leaq -144(%r12),%rax
	movq %rax,-48(%r12)
	leaq -120(%r12),%rax
	movq %rax,-40(%r12)
	movq $EngineziModelziAABB_AABB_con_info,-32(%r12)
	leaq -64(%r12),%rax
	movq %rax,-24(%r12)
	leaq -96(%r12),%rax
	movq %rax,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -31(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcE90:
	movq $152,192(%r13)
.LcE8Y:
	jmp *-16(%r13)
	.size sE1q_info, .-sE1q_info
.text
	.align 8
	.long	EngineziObjectziGameObject_calculateNewWholeAABB_srt-(EngineziObjectziGameObject_calculateNewWholeAABB_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_calculateNewWholeAABB_info
.type EngineziObjectziGameObject_calculateNewWholeAABB_info, @object
EngineziObjectziGameObject_calculateNewWholeAABB_info:
.LcE9f:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcE9h
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_calculateNewWholeAABB_ct
	je .LcE9i
.LcE9j:
	incq EngineziObjectziGameObject_calculateNewWholeAABB_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq $sE1q_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_getWholeAABB_info
.LcE9h:
	movl $EngineziObjectziGameObject_calculateNewWholeAABB_closure,%ebx
	jmp *-8(%r13)
.LcE9i:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_calculateNewWholeAABB_ct+56
	movq $EngineziObjectziGameObject_calculateNewWholeAABB_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_calculateNewWholeAABB_ct
	jmp .LcE9j
	.size EngineziObjectziGameObject_calculateNewWholeAABB_info, .-EngineziObjectziGameObject_calculateNewWholeAABB_info
.data
	.align 8
.align 1
rC7w_closure:
	.quad	rC7w_info
.section .rodata
	.align 8
.align 1
cEbc_str:
	.byte	116
	.byte	114
	.byte	97
	.byte	110
	.byte	115
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	65
	.byte	108
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cEbf_str:
	.byte	76
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rC7w_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cEbc_str
	.quad	cEbf_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
sE9v_info:
.LcEbz:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEbB
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movq 16(%rbx),%rsi
	addq $-16,%rbp
	jmp rC7w_info
.LcEbB:
	jmp *-16(%r13)
	.size sE9v_info, .-sE9v_info
.text
	.align 8
	.quad	1989
	.quad	32
sE9y_info:
.LcEcb:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcEch
	addq $10,rC7w_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 40(%rbp),%xmm0
	addss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movss 24(%rbp),%xmm0
	addss 8(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm0,-48(%r12)
	movss 32(%rbp),%xmm0
	addss 16(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -71(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcEch:
	movq $80,192(%r13)
.LcEcf:
	jmp *-16(%r13)
	.size sE9y_info, .-sE9y_info
.text
	.align 8
	.quad	1925
	.quad	32
sE9z_info:
.LcEcr:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE9y_info,0(%rbp)
	testq $7,%rbx
	jne sE9y_info
	jmp *(%rbx)
	.size sE9z_info, .-sE9z_info
.text
	.align 8
	.quad	1797
	.quad	32
sE9A_info:
.LcEcA:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE9z_info,0(%rbp)
	testq $7,%rbx
	jne sE9z_info
	jmp *(%rbx)
	.size sE9A_info, .-sE9A_info
.text
	.align 8
	.quad	451
	.quad	32
sE9B_info:
.LcEcJ:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE9A_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE9A_info
	jmp *(%rbx)
	.size sE9B_info, .-sE9B_info
.text
	.align 8
	.quad	195
	.quad	32
sE9C_info:
.LcEcR:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sE9B_info,0(%rbp)
	testq $7,%rbx
	jne sE9B_info
	jmp *(%rbx)
	.size sE9C_info, .-sE9C_info
.text
	.align 8
	.quad	131
	.quad	32
sE9D_info:
.LcEd0:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE9C_info,0(%rbp)
	testq $7,%rbx
	jne sE9C_info
	jmp *(%rbx)
	.size sE9D_info, .-sE9D_info
.text
	.align 8
	.quad	3
	.quad	32
sE9E_info:
.LcEd9:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE9D_info,0(%rbp)
	testq $7,%rbx
	jne sE9D_info
	jmp *(%rbx)
	.size sE9E_info, .-sE9E_info
.text
	.align 8
	.quad	1
	.quad	32
sE9F_info:
.LcEdi:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE9E_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE9E_info
	jmp *(%rbx)
	.size sE9F_info, .-sE9F_info
.text
	.align 8
	.quad	2
	.quad	19
sDA8_info:
.LcEds:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEdu
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sE9F_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sE9F_info
	jmp *(%rbx)
.LcEdu:
	jmp *-16(%r13)
	.size sDA8_info, .-sDA8_info
.text
	.align 8
	.quad	1989
	.quad	32
sE9G_info:
.LcEe6:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcEec
	addq $10,rC7w_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 40(%rbp),%xmm0
	addss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-72(%r12)
	movss %xmm0,-64(%r12)
	movss 24(%rbp),%xmm0
	addss 8(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm0,-48(%r12)
	movss 32(%rbp),%xmm0
	addss 16(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm0,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -71(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcEec:
	movq $80,192(%r13)
.LcEea:
	jmp *-16(%r13)
	.size sE9G_info, .-sE9G_info
.text
	.align 8
	.quad	1925
	.quad	32
sE9H_info:
.LcEem:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE9G_info,0(%rbp)
	testq $7,%rbx
	jne sE9G_info
	jmp *(%rbx)
	.size sE9H_info, .-sE9H_info
.text
	.align 8
	.quad	1797
	.quad	32
sE9I_info:
.LcEev:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE9H_info,0(%rbp)
	testq $7,%rbx
	jne sE9H_info
	jmp *(%rbx)
	.size sE9I_info, .-sE9I_info
.text
	.align 8
	.quad	451
	.quad	32
sE9J_info:
.LcEeE:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE9I_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE9I_info
	jmp *(%rbx)
	.size sE9J_info, .-sE9J_info
.text
	.align 8
	.quad	195
	.quad	32
sE9K_info:
.LcEeM:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sE9J_info,0(%rbp)
	testq $7,%rbx
	jne sE9J_info
	jmp *(%rbx)
	.size sE9K_info, .-sE9K_info
.text
	.align 8
	.quad	131
	.quad	32
sE9L_info:
.LcEeV:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sE9K_info,0(%rbp)
	testq $7,%rbx
	jne sE9K_info
	jmp *(%rbx)
	.size sE9L_info, .-sE9L_info
.text
	.align 8
	.quad	3
	.quad	32
sE9M_info:
.LcEf4:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sE9L_info,0(%rbp)
	testq $7,%rbx
	jne sE9L_info
	jmp *(%rbx)
	.size sE9M_info, .-sE9M_info
.text
	.align 8
	.quad	1
	.quad	32
sE9N_info:
.LcEfd:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sE9M_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE9M_info
	jmp *(%rbx)
	.size sE9N_info, .-sE9N_info
.text
	.align 8
	.quad	2
	.quad	19
sDA9_info:
.LcEfn:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEfp
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sE9N_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sE9N_info
	jmp *(%rbx)
.LcEfp:
	jmp *-16(%r13)
	.size sDA9_info, .-sDA9_info
.text
	.align 8
	.quad	2
	.quad	32
sE9x_info:
.LcEfv:
	addq $144,%r12
	cmpq 144(%r13),%r12
	ja .LcEfz
	addq $18,rC7w_ct+48
	incq ALLOC_HEAP_ctr
	addq $18,ALLOC_HEAP_tot
	movq $sE9v_info,-136(%r12)
	movq 16(%rbp),%rax
	movq %rax,-120(%r12)
	movq 8(%rbp),%rax
	movq %rax,-112(%r12)
	movq $sDA8_info,-104(%r12)
	movq 16(%rbp),%rax
	movq %rax,-88(%r12)
	movq 15(%rbx),%rax
	movq %rax,-80(%r12)
	movq $sDA9_info,-72(%r12)
	movq 7(%rbx),%rax
	movq %rax,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-48(%r12)
	movq $EngineziModelziAABB_AABB_con_info,-40(%r12)
	leaq -72(%r12),%rax
	movq %rax,-32(%r12)
	leaq -104(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	leaq -136(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcEfz:
	movq $144,192(%r13)
.LcEfx:
	jmp *-16(%r13)
	.size sE9x_info, .-sE9x_info
.text
	.align 8
	.quad	1
	.quad	32
sE9o_info:
.LcEfO:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEfP
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcEfP:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sE9x_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sE9x_info
	jmp *(%rbx)
	.size sE9o_info, .-sE9o_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
rC7w_info:
.LcEfZ:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEg1
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rC7w_ct
	je .LcEg2
.LcEg3:
	incq rC7w_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sE9o_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sE9o_info
	jmp *(%rbx)
.LcEg1:
	movl $rC7w_closure,%ebx
	jmp *-8(%r13)
.LcEg2:
	movq ticky_entry_ctrs,%rax
	movq %rax,rC7w_ct+56
	movq $rC7w_ct,ticky_entry_ctrs
	movq $1,rC7w_ct
	jmp .LcEg3
	.size rC7w_info, .-rC7w_info
.section .data
	.align 8
.align 1
rC7v_srt:
	.quad	rDr7_closure
.data
	.align 8
.align 1
rC7v_closure:
	.quad	rC7v_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEgm_str:
	.byte	99
	.byte	97
	.byte	108
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	78
	.byte	101
	.byte	119
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cEgp_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
rC7v_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cEgm_str
	.quad	cEgp_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	17
sDAj_info:
.LcEgH:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEgJ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_getPos_info
.LcEgJ:
	jmp *-16(%r13)
	.size sDAj_info, .-sDAj_info
.text
	.align 8
	.quad	2
	.quad	19
sEgb_info:
.LcEgO:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEgQ
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEgS
	addq $3,rC7v_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sDAj_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	leaq -16(%r12),%rsi
	addq $-16,%rbp
	jmp rC7w_info
.LcEgS:
	movq $24,192(%r13)
.LcEgQ:
	jmp *-16(%r13)
	.size sEgb_info, .-sEgb_info
.text
	.align 8
	.quad	1
	.quad	32
sEga_info:
.LcEgZ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEh0
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcEh0:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcEh4
	addq $6,rC7v_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $sEgb_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq 6(%rbx),%rax
	movq %rax,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcEh4:
	movq $48,192(%r13)
.LcEh2:
	jmp *-16(%r13)
	.size sEga_info, .-sEga_info
.text
	.align 8
	.long	rC7v_srt-(rC7v_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
rC7v_info:
.LcEhd:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEhf
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rC7v_ct
	je .LcEhg
.LcEhh:
	incq rC7v_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq $sEga_info,-16(%rbp)
	addq $-16,%rbp
	jmp rC7z_info
.LcEhf:
	movl $rC7v_closure,%ebx
	jmp *-8(%r13)
.LcEhg:
	movq ticky_entry_ctrs,%rax
	movq %rax,rC7v_ct+56
	movq $rC7v_ct,ticky_entry_ctrs
	movq $1,rC7v_ct
	jmp .LcEhh
	.size rC7v_info, .-rC7v_info
.section .data
	.align 8
.align 1
rDr9_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDr9_closure:
	.quad	rDr9_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cEhv_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	51
	.byte	48
	.byte	58
	.byte	50
	.byte	49
	.byte	45
	.byte	53
	.byte	49
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
	.byte	110
	.byte	101
	.byte	119
	.byte	114
	.byte	0
.text
	.align 8
	.long	rDr9_srt-(rDr9_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDr9_info:
.LcEhz:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEhB
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEhD
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
	je .LcEhE
.LcEhF:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cEhv_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcEhD:
	movq $16,192(%r13)
.LcEhB:
	jmp *-16(%r13)
.LcEhE:
	jmp *(%rbx)
	.size rDr9_info, .-rDr9_info
.section .data
	.align 8
.align 1
rDra_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDra_closure:
	.quad	rDra_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cEhV_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	57
	.byte	58
	.byte	50
	.byte	49
	.byte	45
	.byte	53
	.byte	49
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
	.byte	110
	.byte	101
	.byte	119
	.byte	108
	.byte	0
.text
	.align 8
	.long	rDra_srt-(rDra_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDra_info:
.LcEhZ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEi1
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEi3
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
	je .LcEi4
.LcEi5:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cEhV_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcEi3:
	movq $16,192(%r13)
.LcEi1:
	jmp *-16(%r13)
.LcEi4:
	jmp *(%rbx)
	.size rDra_info, .-rDra_info
.section .data
	.align 8
.align 1
rDrb_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDrb_closure:
	.quad	rDrb_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cEil_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	54
	.byte	58
	.byte	49
	.byte	51
	.byte	45
	.byte	53
	.byte	49
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
	.byte	104
	.byte	111
	.byte	108
	.byte	101
	.byte	97
	.byte	98
	.byte	114
	.byte	0
.text
	.align 8
	.long	rDrb_srt-(rDrb_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDrb_info:
.LcEip:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEir
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEit
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
	je .LcEiu
.LcEiv:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cEil_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcEit:
	movq $16,192(%r13)
.LcEir:
	jmp *-16(%r13)
.LcEiu:
	jmp *(%rbx)
	.size rDrb_info, .-rDrb_info
.section .data
	.align 8
.align 1
rDrc_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDrc_closure:
	.quad	rDrc_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cEiL_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	53
	.byte	58
	.byte	49
	.byte	51
	.byte	45
	.byte	53
	.byte	49
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
	.byte	104
	.byte	111
	.byte	108
	.byte	101
	.byte	97
	.byte	98
	.byte	108
	.byte	0
.text
	.align 8
	.long	rDrc_srt-(rDrc_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDrc_info:
.LcEiP:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEiR
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEiT
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
	je .LcEiU
.LcEiV:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cEiL_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcEiT:
	movq $16,192(%r13)
.LcEiR:
	jmp *-16(%r13)
.LcEiU:
	jmp *(%rbx)
	.size rDrc_info, .-rDrc_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_isIntersectingAny_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	EngineziObjectziGameObject_isIntersectingAny_closure
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB1_closure
	.quad	rDr7_closure
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB1_closure
	.quad	rDr7_closure
	.quad	rDr9_closure
	.quad	rDra_closure
	.quad	rDrb_closure
	.quad	rDrc_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_isIntersectingAny_closure
.type EngineziObjectziGameObject_isIntersectingAny_closure, @object
EngineziObjectziGameObject_isIntersectingAny_closure:
	.quad	EngineziObjectziGameObject_isIntersectingAny_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEnS_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	105
	.byte	115
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	65
	.byte	110
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cEnU_str:
	.byte	77
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_isIntersectingAny_ct
.type EngineziObjectziGameObject_isIntersectingAny_ct, @object
EngineziObjectziGameObject_isIntersectingAny_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cEnS_str
	.quad	cEnU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjE_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sEjE_info:
.LcEor:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEos
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcEos:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sEjE_info, .-sEjE_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjD_info)+0
	.long	0
	.quad	0
	.quad	554050781216
sEjD_info:
.LcEoB:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEoC
	movl $rDra_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEoC:
	movq 6(%rbx),%rbx
	movq $sEjE_info,0(%rbp)
	testq $7,%rbx
	jne sEjE_info
	jmp *(%rbx)
	.size sEjD_info, .-sEjD_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjC_info)+0
	.long	0
	.quad	1
	.quad	588410519569
sEjC_info:
.LcEoN:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEoP
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sEjD_info,-24(%rbp)
	addq $-24,%rbp
	jmp rC7v_info
.LcEoP:
	jmp *-16(%r13)
	.size sEjC_info, .-sEjC_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjG_info)+8
	.long	0
	.quad	2
	.quad	4294967328
sEjG_info:
.LcEoX:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEoY
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	addq $24,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEoY:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
	.size sEjG_info, .-sEjG_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjA_info)+0
	.long	0
	.quad	2
	.quad	871878361120
sEjA_info:
.LcEp6:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEp7
	movl $rDr9_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEp7:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEpb
	addq $3,EngineziObjectziGameObject_isIntersectingAny_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sEjC_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%r14
	movq 6(%rbx),%rsi
	movq $sEjG_info,0(%rbp)
	jmp EngineziModelziAABB_anyIntersect_info
.LcEpb:
	movq $24,192(%r13)
.LcEp9:
	jmp *-16(%r13)
	.size sEjA_info, .-sEjA_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjy_info)+0
	.long	0
	.quad	3
	.quad	871878361120
sEjy_info:
.LcEpl:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEpm
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcEpm:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sEjA_info,8(%rbp)
	addq $8,%rbp
	jmp rC7v_info
	.size sEjy_info, .-sEjy_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjx_info)+0
	.long	0
	.quad	3
	.quad	1009317314592
sEjx_info:
.LcEpu:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEpv
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcEpv:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sEjy_info,0(%rbp)
	jmp rC7z_info
	.size sEjx_info, .-sEjx_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjj_info)+0
	.long	0
	.quad	131022
	.quad	1009317314592
sEjj_info:
.LcEpB:
	movss 64(%rbp),%xmm0
	ucomiss 32(%rbp),%xmm0
	ja .LcEpD
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	movq 104(%rbp),%rsi
	addq $120,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEpD:
	movss 80(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnEpR
	jb .LcEpF
.LnEpR:
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	movq 104(%rbp),%rsi
	addq $120,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEpF:
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	ja .LcEpH
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	movq 104(%rbp),%rsi
	addq $120,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEpH:
	movss 72(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnEpV
	jb .LcEpJ
.LnEpV:
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	movq 104(%rbp),%rsi
	addq $120,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEpJ:
	movss 48(%rbp),%xmm0
	ucomiss 40(%rbp),%xmm0
	ja .LcEpL
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	movq 104(%rbp),%rsi
	addq $120,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEpL:
	movss 88(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnEpZ
	jb .LcEpN
.LnEpZ:
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	movq 104(%rbp),%rsi
	addq $120,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEpN:
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	movq $sEjx_info,88(%rbp)
	addq $88,%rbp
	jmp rC7z_info
	.size sEjj_info, .-sEjj_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjk_info)+0
	.long	0
	.quad	130958
	.quad	1009317314592
sEjk_info:
.LcEq2:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEjj_info,0(%rbp)
	testq $7,%rbx
	jne sEjj_info
	jmp *(%rbx)
	.size sEjk_info, .-sEjk_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjl_info)+0
	.long	0
	.quad	130830
	.quad	1009317314592
sEjl_info:
.LcEqb:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEjk_info,0(%rbp)
	testq $7,%rbx
	jne sEjk_info
	jmp *(%rbx)
	.size sEjl_info, .-sEjl_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjm_info)+0
	.long	0
	.quad	32716
	.quad	1009317314592
sEjm_info:
.LcEqk:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEjl_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEjl_info
	jmp *(%rbx)
	.size sEjm_info, .-sEjm_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjn_info)+0
	.long	0
	.quad	32460
	.quad	1009317314592
sEjn_info:
.LcEqs:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sEjm_info,0(%rbp)
	testq $7,%rbx
	jne sEjm_info
	jmp *(%rbx)
	.size sEjn_info, .-sEjn_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjo_info)+0
	.long	0
	.quad	32396
	.quad	1009317314592
sEjo_info:
.LcEqB:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEjn_info,0(%rbp)
	testq $7,%rbx
	jne sEjn_info
	jmp *(%rbx)
	.size sEjo_info, .-sEjo_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjp_info)+0
	.long	0
	.quad	32268
	.quad	1009317314592
sEjp_info:
.LcEqK:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEjo_info,0(%rbp)
	testq $7,%rbx
	jne sEjo_info
	jmp *(%rbx)
	.size sEjp_info, .-sEjp_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjq_info)+0
	.long	0
	.quad	8074
	.quad	1009317314592
sEjq_info:
.LcEqT:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEjp_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEjp_info
	jmp *(%rbx)
	.size sEjq_info, .-sEjq_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjr_info)+0
	.long	0
	.quad	4041
	.quad	1009317314592
sEjr_info:
.LcEr1:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEjq_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sEjq_info
	jmp *(%rbx)
	.size sEjr_info, .-sEjr_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEj8_info)+0
	.long	0
	.quad	4041
	.quad	2108828942368
sEj8_info:
.LcEra:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcErb
	movl $rDrb_closure,%ebx
	addq $80,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcErb:
	movq 6(%rbx),%rbx
	movq $sEjr_info,0(%rbp)
	testq $7,%rbx
	jne sEjr_info
	jmp *(%rbx)
	.size sEj8_info, .-sEj8_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEj9_info)+0
	.long	0
	.quad	1992
	.quad	2126008811552
sEj9_info:
.LcErl:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 48(%rbp),%r14
	movq $sEj8_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziGameObject_calculateNewWholeAABB_info
	.size sEj9_info, .-sEj9_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEja_info)+0
	.long	0
	.quad	1928
	.quad	2126008811552
sEja_info:
.LcErp:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEj9_info,0(%rbp)
	testq $7,%rbx
	jne sEj9_info
	jmp *(%rbx)
	.size sEja_info, .-sEja_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjb_info)+0
	.long	0
	.quad	1800
	.quad	2126008811552
sEjb_info:
.LcEry:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEja_info,0(%rbp)
	testq $7,%rbx
	jne sEja_info
	jmp *(%rbx)
	.size sEjb_info, .-sEjb_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjc_info)+0
	.long	0
	.quad	454
	.quad	2126008811552
sEjc_info:
.LcErH:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEjb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEjb_info
	jmp *(%rbx)
	.size sEjc_info, .-sEjc_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjd_info)+0
	.long	0
	.quad	198
	.quad	2126008811552
sEjd_info:
.LcErP:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sEjc_info,0(%rbp)
	testq $7,%rbx
	jne sEjc_info
	jmp *(%rbx)
	.size sEjd_info, .-sEjd_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEje_info)+0
	.long	0
	.quad	134
	.quad	2126008811552
sEje_info:
.LcErY:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEjd_info,0(%rbp)
	testq $7,%rbx
	jne sEjd_info
	jmp *(%rbx)
	.size sEje_info, .-sEje_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjf_info)+0
	.long	0
	.quad	6
	.quad	2126008811552
sEjf_info:
.LcEs7:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEje_info,0(%rbp)
	testq $7,%rbx
	jne sEje_info
	jmp *(%rbx)
	.size sEjf_info, .-sEjf_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjg_info)+0
	.long	0
	.quad	4
	.quad	2126008811552
sEjg_info:
.LcEsg:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEjf_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEjf_info
	jmp *(%rbx)
	.size sEjg_info, .-sEjg_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEjh_info)+0
	.long	0
	.quad	3
	.quad	2126008811552
sEjh_info:
.LcEso:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEjg_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sEjg_info
	jmp *(%rbx)
	.size sEjh_info, .-sEjh_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEj6_info)+0
	.long	0
	.quad	3
	.quad	4325032067104
sEj6_info:
.LcEsx:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEsy
	movl $rDrc_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEsy:
	movq 6(%rbx),%rbx
	movq $sEjh_info,0(%rbp)
	testq $7,%rbx
	jne sEjh_info
	jmp *(%rbx)
	.size sEj6_info, .-sEj6_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEj4_info)+0
	.long	0
	.quad	3
	.quad	4325032067104
sEj4_info:
.LcEsK:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEsL
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $32,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEsL:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq $sEj6_info,0(%rbp)
	jmp EngineziObjectziGameObject_calculateNewWholeAABB_info
	.size sEj4_info, .-sEj4_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEj3_info)+0
	.long	0
	.quad	3
	.quad	4393751543840
sEj3_info:
.LcEsT:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEsU
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $32,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEsU:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sEj4_info,0(%rbp)
	jmp EngineziObjectziGameObject_getWholeAABB_info
	.size sEj3_info, .-sEj3_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(sEj2_info)+0
	.long	0
	.quad	1
	.quad	4393751543840
sEj2_info:
.LcEt2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEt3
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcEt3:
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%r14
	movq $sEj3_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_getWholeAABB_info
	.size sEj2_info, .-sEj2_info
.text
	.align 8
	.long	EngineziObjectziGameObject_isIntersectingAny_srt-(EngineziObjectziGameObject_isIntersectingAny_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4393751543823
.globl EngineziObjectziGameObject_isIntersectingAny_info
.type EngineziObjectziGameObject_isIntersectingAny_info, @object
EngineziObjectziGameObject_isIntersectingAny_info:
.LcEtb:
	leaq -120(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEtd
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_isIntersectingAny_ct
	je .LcEte
.LcEtf:
	incq EngineziObjectziGameObject_isIntersectingAny_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sEj2_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEj2_info
	jmp *(%rbx)
.LcEtd:
	movl $EngineziObjectziGameObject_isIntersectingAny_closure,%ebx
	jmp *-8(%r13)
.LcEte:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_isIntersectingAny_ct+56
	movq $EngineziObjectziGameObject_isIntersectingAny_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_isIntersectingAny_ct
	jmp .LcEtf
	.size EngineziObjectziGameObject_isIntersectingAny_info, .-EngineziObjectziGameObject_isIntersectingAny_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_zdwmoveObjectSlide_srt:
	.quad	EngineziObjectziGameObject_isIntersectingAny_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSlide_closure
.type EngineziObjectziGameObject_zdwmoveObjectSlide_closure, @object
EngineziObjectziGameObject_zdwmoveObjectSlide_closure:
	.quad	EngineziObjectziGameObject_zdwmoveObjectSlide_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEuB_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	54
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cEuD_str:
	.byte	83
	.byte	77
	.byte	102
	.byte	102
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSlide_ct
.type EngineziObjectziGameObject_zdwmoveObjectSlide_ct, @object
EngineziObjectziGameObject_zdwmoveObjectSlide_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cEuB_str
	.quad	cEuD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziGameObject_zdwmoveObjectSlide_slow
.type EngineziObjectziGameObject_zdwmoveObjectSlide_slow, @object
EngineziObjectziGameObject_zdwmoveObjectSlide_slow:
.LcEuG:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movss 32(%rbp),%xmm3
	addq $40,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSlide_info
	.size EngineziObjectziGameObject_zdwmoveObjectSlide_slow, .-EngineziObjectziGameObject_zdwmoveObjectSlide_slow
.text
	.align 8
	.quad	4294967297
	.quad	20
sDCG_info:
.LcEuO:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEuQ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorps %xmm1,%xmm1
	xorps %xmm2,%xmm2
	movss 24(%rbx),%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcEuQ:
	jmp *-16(%r13)
	.size sDCG_info, .-sDCG_info
.text
	.align 8
	.quad	2
	.quad	32
sEtq_info:
.LcEv2:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEv3
	movq 8(%rbp),%rbx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEv3:
	movq 16(%rbp),%rbx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sEtq_info, .-sEtq_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(sEtm_info)+0
	.long	0
	.quad	2
	.quad	4294967328
sEtm_info:
.LcEvb:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sEtq_info,0(%rbp)
	jmp EngineziObjectziGameObject_isIntersectingAny_info
	.size sEtm_info, .-sEtm_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(sDCC_info)+0
	.long	0
	.quad	195
	.quad	4294967328
sDCC_info:
.LcEve:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcEvi
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSlide_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movss 8(%rbp),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnEvn
	je .LcEvk
.LnEvn:
	movq $sDCG_info,-24(%r12)
	movq %rbx,-8(%r12)
	movss 8(%rbp),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movq $sEtm_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcEvi:
	movq $32,192(%r13)
.LcEvg:
	jmp *-16(%r13)
.LcEvk:
	addq $32,%rbp
	addq $-32,%r12
	addq $-4,EngineziObjectziGameObject_zdwmoveObjectSlide_ct+48
	incq ALLOC_HEAP_ctr
	addq $-4,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDCC_info, .-sDCC_info
.text
	.align 8
	.quad	4294967297
	.quad	20
sDCz_info:
.LcEvy:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEvA
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorps %xmm1,%xmm1
	movss 24(%rbx),%xmm2
	xorps %xmm3,%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcEvA:
	jmp *-16(%r13)
	.size sDCz_info, .-sDCz_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(sEts_info)+0
	.long	0
	.quad	132
	.quad	4294967328
sEts_info:
.LcEvM:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEvN
	movq 8(%rbp),%rbx
	movq $sDCC_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sDCC_info
	jmp *(%rbx)
.LcEvN:
	movq 24(%rbp),%rbx
	movq $sDCC_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sDCC_info
	jmp *(%rbx)
	.size sEts_info, .-sEts_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(sEtn_info)+0
	.long	0
	.quad	132
	.quad	4294967328
sEtn_info:
.LcEw3:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sEts_info,0(%rbp)
	jmp EngineziObjectziGameObject_isIntersectingAny_info
	.size sEtn_info, .-sEtn_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(sDCu_info)+0
	.long	0
	.quad	195
	.quad	4294967328
sDCu_info:
.LcEw6:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcEwa
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSlide_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movss 16(%rbp),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnEwj
	je .LcEwc
.LnEwj:
	movq $sDCz_info,-24(%r12)
	movq %rbx,-8(%r12)
	movss 16(%rbp),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,0(%rbp)
	movq %rbx,16(%rbp)
	movq 24(%rbp),%r14
	movq $sEtn_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcEwa:
	movq $32,192(%r13)
.LcEw8:
	jmp *-16(%r13)
.LcEwc:
	movq $sDCC_info,0(%rbp)
	addq $-32,%r12
	addq $-4,EngineziObjectziGameObject_zdwmoveObjectSlide_ct+48
	incq ALLOC_HEAP_ctr
	addq $-4,ALLOC_HEAP_tot
	testq $7,%rbx
	jne sDCC_info
	jmp *(%rbx)
	.size sDCu_info, .-sDCu_info
.text
	.align 8
	.quad	4294967297
	.quad	20
sDCq_info:
.LcEwt:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEwv
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movss 24(%rbx),%xmm1
	xorps %xmm2,%xmm2
	xorps %xmm3,%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcEwv:
	jmp *-16(%r13)
	.size sDCq_info, .-sDCq_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(sEtu_info)+0
	.long	0
	.quad	773
	.quad	4294967328
sEtu_info:
.LcEwH:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEwI
	movq 8(%rbp),%rbx
	movq $sDCu_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne sDCu_info
	jmp *(%rbx)
.LcEwI:
	movq 16(%rbp),%rbx
	movq $sDCu_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne sDCu_info
	jmp *(%rbx)
	.size sEtu_info, .-sEtu_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(sEto_info)+0
	.long	0
	.quad	773
	.quad	4294967328
sEto_info:
.LcEwY:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sEtu_info,0(%rbp)
	jmp EngineziObjectziGameObject_isIntersectingAny_info
	.size sEto_info, .-sEto_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_slow-(EngineziObjectziGameObject_zdwmoveObjectSlide_info)+0
	.long	0
	.quad	1797
	.long	EngineziObjectziGameObject_zdwmoveObjectSlide_srt-(EngineziObjectziGameObject_zdwmoveObjectSlide_info)+0
	.long	0
	.quad	21474836480
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_zdwmoveObjectSlide_info
.type EngineziObjectziGameObject_zdwmoveObjectSlide_info, @object
EngineziObjectziGameObject_zdwmoveObjectSlide_info:
.LcEx1:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEx3
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcEx5
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSlide_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_zdwmoveObjectSlide_ct
	je .LcEx6
.LcEx7:
	incq EngineziObjectziGameObject_zdwmoveObjectSlide_ct+40
	movq %r14,-8(%rbp)
	movss %xmm2,-16(%rbp)
	movss %xmm3,-24(%rbp)
	xorps %xmm0,%xmm0
	ucomiss %xmm0,%xmm1
	jp .LnExh
	je .LcEx9
.LnExh:
	movq $sDCq_info,-24(%r12)
	movq %rsi,-8(%r12)
	movss %xmm1,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-40(%rbp)
	movq %rsi,-32(%rbp)
	movq $sEto_info,-48(%rbp)
	addq $-48,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcEx5:
	movq $32,192(%r13)
.LcEx3:
	movl $EngineziObjectziGameObject_zdwmoveObjectSlide_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movss %xmm1,16(%rbp)
	movss %xmm2,24(%rbp)
	movss %xmm3,32(%rbp)
	jmp *-8(%r13)
.LcEx6:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_zdwmoveObjectSlide_ct+56
	movq $EngineziObjectziGameObject_zdwmoveObjectSlide_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_zdwmoveObjectSlide_ct
	jmp .LcEx7
.LcEx9:
	movq %rsi,%rbx
	movq $sDCu_info,-32(%rbp)
	addq $-32,%rbp
	addq $-32,%r12
	addq $-4,EngineziObjectziGameObject_zdwmoveObjectSlide_ct+48
	incq ALLOC_HEAP_ctr
	addq $-4,ALLOC_HEAP_tot
	testq $7,%rbx
	jne sDCu_info
	jmp *(%rbx)
	.size EngineziObjectziGameObject_zdwmoveObjectSlide_info, .-EngineziObjectziGameObject_zdwmoveObjectSlide_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_moveObjectSlide_srt:
	.quad	EngineziObjectziGameObject_isIntersectingAny_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSlide_closure
.type EngineziObjectziGameObject_moveObjectSlide_closure, @object
EngineziObjectziGameObject_moveObjectSlide_closure:
	.quad	EngineziObjectziGameObject_moveObjectSlide_info
	.quad	0
.section .rodata
	.align 8
.align 1
cExG_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	110
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cExJ_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSlide_ct
.type EngineziObjectziGameObject_moveObjectSlide_ct, @object
EngineziObjectziGameObject_moveObjectSlide_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cExG_str
	.quad	cExJ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlide_srt-(sExk_info)+0
	.long	0
	.quad	196
	.quad	4294967328
sExk_info:
.LcEy5:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $40,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSlide_info
	.size sExk_info, .-sExk_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlide_srt-(sExl_info)+0
	.long	0
	.quad	132
	.quad	4294967328
sExl_info:
.LcEy8:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sExk_info,0(%rbp)
	testq $7,%rbx
	jne sExk_info
	jmp *(%rbx)
	.size sExl_info, .-sExl_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlide_srt-(sExm_info)+0
	.long	0
	.quad	4
	.quad	4294967328
sExm_info:
.LcEyh:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sExl_info,0(%rbp)
	testq $7,%rbx
	jne sExl_info
	jmp *(%rbx)
	.size sExm_info, .-sExm_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlide_srt-(sExn_info)+0
	.long	0
	.quad	2
	.quad	4294967328
sExn_info:
.LcEyq:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sExm_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sExm_info
	jmp *(%rbx)
	.size sExn_info, .-sExn_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlide_srt-(EngineziObjectziGameObject_moveObjectSlide_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_moveObjectSlide_info
.type EngineziObjectziGameObject_moveObjectSlide_info, @object
EngineziObjectziGameObject_moveObjectSlide_info:
.LcEyy:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEyA
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_moveObjectSlide_ct
	je .LcEyB
.LcEyC:
	incq EngineziObjectziGameObject_moveObjectSlide_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rdi,%rbx
	movq $sExn_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sExn_info
	jmp *(%rbx)
.LcEyA:
	movl $EngineziObjectziGameObject_moveObjectSlide_closure,%ebx
	jmp *-8(%r13)
.LcEyB:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_moveObjectSlide_ct+56
	movq $EngineziObjectziGameObject_moveObjectSlide_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_moveObjectSlide_ct
	jmp .LcEyC
	.size EngineziObjectziGameObject_moveObjectSlide_info, .-EngineziObjectziGameObject_moveObjectSlide_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_zdwmoveObjectSafe_srt:
	.quad	EngineziObjectziGameObject_isIntersectingAny_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSafe_closure
.type EngineziObjectziGameObject_zdwmoveObjectSafe_closure, @object
EngineziObjectziGameObject_zdwmoveObjectSafe_closure:
	.quad	EngineziObjectziGameObject_zdwmoveObjectSafe_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEzb_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	97
	.byte	102
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cEze_str:
	.byte	77
	.byte	76
	.byte	76
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSafe_ct
.type EngineziObjectziGameObject_zdwmoveObjectSafe_ct, @object
EngineziObjectziGameObject_zdwmoveObjectSafe_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	cEzb_str
	.quad	cEze_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	195
	.quad	32
sEyJ_info:
.LcEzC:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $32,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
	.size sEyJ_info, .-sEyJ_info
.text
	.align 8
	.quad	131
	.quad	32
sEyK_info:
.LcEzF:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEyJ_info,0(%rbp)
	testq $7,%rbx
	jne sEyJ_info
	jmp *(%rbx)
	.size sEyK_info, .-sEyK_info
.text
	.align 8
	.quad	3
	.quad	32
sEyL_info:
.LcEzO:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEyK_info,0(%rbp)
	testq $7,%rbx
	jne sEyK_info
	jmp *(%rbx)
	.size sEyL_info, .-sEyL_info
.text
	.align 8
	.quad	1
	.quad	32
sEyM_info:
.LcEzX:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEyL_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEyL_info
	jmp *(%rbx)
	.size sEyM_info, .-sEyM_info
.text
	.align 8
	.quad	2
	.quad	19
sDDu_info:
.LcEA7:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEA9
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sEyM_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sEyM_info
	jmp *(%rbx)
.LcEA9:
	jmp *-16(%r13)
	.size sDDu_info, .-sDDu_info
.text
	.align 8
	.quad	2
	.quad	32
sEyN_info:
.LcEAj:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEAk
	movq 8(%rbp),%rbx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEAk:
	movq 16(%rbp),%rbx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sEyN_info, .-sEyN_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSafe_srt-(EngineziObjectziGameObject_zdwmoveObjectSafe_info)+0
	.long	0
	.quad	25769803799
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_zdwmoveObjectSafe_info
.type EngineziObjectziGameObject_zdwmoveObjectSafe_info, @object
EngineziObjectziGameObject_zdwmoveObjectSafe_info:
.LcEAs:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEAu
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcEAw
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_zdwmoveObjectSafe_ct
	je .LcEAx
.LcEAy:
	incq EngineziObjectziGameObject_zdwmoveObjectSafe_ct+40
	movq $sDDu_info,-24(%r12)
	movq 0(%rbp),%rax
	movq %rax,-8(%r12)
	movq %r9,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-8(%rbp)
	movq %r9,0(%rbp)
	leaq -24(%r12),%r14
	movq $sEyN_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_isIntersectingAny_info
.LcEAw:
	movq $32,192(%r13)
.LcEAu:
	movl $EngineziObjectziGameObject_zdwmoveObjectSafe_closure,%ebx
	jmp *-8(%r13)
.LcEAx:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_zdwmoveObjectSafe_ct+56
	movq $EngineziObjectziGameObject_zdwmoveObjectSafe_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_zdwmoveObjectSafe_ct
	jmp .LcEAy
	.size EngineziObjectziGameObject_zdwmoveObjectSafe_info, .-EngineziObjectziGameObject_zdwmoveObjectSafe_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_moveObjectSafe_srt:
	.quad	EngineziObjectziGameObject_isIntersectingAny_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSafe_closure
.type EngineziObjectziGameObject_moveObjectSafe_closure, @object
EngineziObjectziGameObject_moveObjectSafe_closure:
	.quad	EngineziObjectziGameObject_moveObjectSafe_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEAO_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	97
	.byte	102
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cEAR_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSafe_ct
.type EngineziObjectziGameObject_moveObjectSafe_ct, @object
EngineziObjectziGameObject_moveObjectSafe_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cEAO_str
	.quad	cEAR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSafe_srt-(sEAE_info)+0
	.long	0
	.quad	2
	.quad	4294967328
sEAE_info:
.LcEB1:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	movq 16(%rbp),%r9
	movq 8(%rbp),%rax
	movq %rax,16(%rbp)
	addq $16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSafe_info
	.size sEAE_info, .-sEAE_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSafe_srt-(EngineziObjectziGameObject_moveObjectSafe_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_moveObjectSafe_info
.type EngineziObjectziGameObject_moveObjectSafe_info, @object
EngineziObjectziGameObject_moveObjectSafe_info:
.LcEB5:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEB7
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_moveObjectSafe_ct
	je .LcEB8
.LcEB9:
	incq EngineziObjectziGameObject_moveObjectSafe_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sEAE_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sEAE_info
	jmp *(%rbx)
.LcEB7:
	movl $EngineziObjectziGameObject_moveObjectSafe_closure,%ebx
	jmp *-8(%r13)
.LcEB8:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_moveObjectSafe_ct+56
	movq $EngineziObjectziGameObject_moveObjectSafe_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_moveObjectSafe_ct
	jmp .LcEB9
	.size EngineziObjectziGameObject_moveObjectSafe_info, .-EngineziObjectziGameObject_moveObjectSafe_info
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_applyGravity4_closure
.type EngineziObjectziGameObject_applyGravity4_closure, @object
EngineziObjectziGameObject_applyGravity4_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_applyGravity3_closure
.type EngineziObjectziGameObject_applyGravity3_closure, @object
EngineziObjectziGameObject_applyGravity3_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	10
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_applyGravity2_closure
.type EngineziObjectziGameObject_applyGravity2_closure, @object
EngineziObjectziGameObject_applyGravity2_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_applyGravity1_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziGameObject_applyGravity3_closure
	.quad	EngineziObjectziGameObject_applyGravity4_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_applyGravity1_closure
.type EngineziObjectziGameObject_applyGravity1_closure, @object
EngineziObjectziGameObject_applyGravity1_closure:
	.quad	EngineziObjectziGameObject_applyGravity1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sEBn_info:
.LcEBJ:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcEBP
	addq $6,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LnEBQ(%rip),%xmm0
	xorps %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm1,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq $EngineziObjectziGameObject_applyGravity2_closure+1,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	movq $EngineziObjectziGameObject_applyGravity2_closure+1,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcEBP:
	movq $48,192(%r13)
.LcEBN:
	jmp *-16(%r13)
	.size sEBn_info, .-sEBn_info
.section .rodata
	.align 8
.align 4
.LnEBQ:
	.long	-2147483648
.text
	.align 8
	.long	EngineziObjectziGameObject_applyGravity1_srt-(EngineziObjectziGameObject_applyGravity1_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziObjectziGameObject_applyGravity1_info
.type EngineziObjectziGameObject_applyGravity1_info, @object
EngineziObjectziGameObject_applyGravity1_info:
.LcEBW:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEBY
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEC0
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
	je .LcEC1
.LcEC2:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziGameObject_applyGravity4_closure+1,%r14d
	movl $EngineziObjectziGameObject_applyGravity3_closure+1,%esi
	movq $sEBn_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcEC0:
	movq $16,192(%r13)
.LcEBY:
	jmp *-16(%r13)
.LcEC1:
	jmp *(%rbx)
	.size EngineziObjectziGameObject_applyGravity1_info, .-EngineziObjectziGameObject_applyGravity1_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_applyGravity_srt:
	.quad	EngineziObjectziGameObject_applyGravity1_closure
	.quad	EngineziObjectziGameObject_isIntersectingAny_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_applyGravity_closure
.type EngineziObjectziGameObject_applyGravity_closure, @object
EngineziObjectziGameObject_applyGravity_closure:
	.quad	EngineziObjectziGameObject_applyGravity_info
	.quad	0
.section .rodata
	.align 8
.align 1
cECe_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	71
	.byte	114
	.byte	97
	.byte	118
	.byte	105
	.byte	116
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	116
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cECh_str:
	.byte	83
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_applyGravity_ct
.type EngineziObjectziGameObject_applyGravity_ct, @object
EngineziObjectziGameObject_applyGravity_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cECe_str
	.quad	cECh_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziGameObject_applyGravity_srt-(EngineziObjectziGameObject_applyGravity_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	12884901903
.globl EngineziObjectziGameObject_applyGravity_info
.type EngineziObjectziGameObject_applyGravity_info, @object
EngineziObjectziGameObject_applyGravity_info:
.LcECm:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_applyGravity_ct
	je .LcECp
.LcECr:
	incq EngineziObjectziGameObject_applyGravity_ct+40
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziGameObject_applyGravity1_closure,%edi
	jmp EngineziObjectziGameObject_moveObjectSafe_info
.LcECp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_applyGravity_ct+56
	movq $EngineziObjectziGameObject_applyGravity_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_applyGravity_ct
	jmp .LcECr
	.size EngineziObjectziGameObject_applyGravity_info, .-EngineziObjectziGameObject_applyGravity_info
.section .data
	.align 8
.align 1
rDrd_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDrd_closure:
	.quad	rDrd_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cECE_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	56
	.byte	50
	.byte	58
	.byte	49
	.byte	51
	.byte	45
	.byte	53
	.byte	49
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
	.byte	104
	.byte	111
	.byte	108
	.byte	101
	.byte	97
	.byte	98
	.byte	108
	.byte	0
.text
	.align 8
	.long	rDrd_srt-(rDrd_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDrd_info:
.LcECI:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcECK
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcECM
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
	je .LcECN
.LcECO:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cECE_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcECM:
	movq $16,192(%r13)
.LcECK:
	jmp *-16(%r13)
.LcECN:
	jmp *(%rbx)
	.size rDrd_info, .-rDrd_info
.section .data
	.align 8
.align 1
rDre_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDre_closure:
	.quad	rDre_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cED4_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	57
	.byte	48
	.byte	58
	.byte	50
	.byte	53
	.byte	45
	.byte	53
	.byte	53
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
	.byte	110
	.byte	101
	.byte	119
	.byte	114
	.byte	0
.text
	.align 8
	.long	rDre_srt-(rDre_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDre_info:
.LcED8:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEDa
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEDc
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
	je .LcEDd
.LcEDe:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cED4_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcEDc:
	movq $16,192(%r13)
.LcEDa:
	jmp *-16(%r13)
.LcEDd:
	jmp *(%rbx)
	.size rDre_info, .-rDre_info
.section .data
	.align 8
.align 1
rDrf_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDrf_closure:
	.quad	rDrf_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cEDu_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	56
	.byte	57
	.byte	58
	.byte	50
	.byte	53
	.byte	45
	.byte	53
	.byte	53
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
	.byte	110
	.byte	101
	.byte	119
	.byte	108
	.byte	0
.text
	.align 8
	.long	rDrf_srt-(rDrf_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDrf_info:
.LcEDy:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEDA
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEDC
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
	je .LcEDD
.LcEDE:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cEDu_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcEDC:
	movq $16,192(%r13)
.LcEDA:
	jmp *-16(%r13)
.LcEDD:
	jmp *(%rbx)
	.size rDrf_info, .-rDrf_info
.section .data
	.align 8
.align 1
rDrg_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
rDrg_closure:
	.quad	rDrg_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cEDU_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	47
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	56
	.byte	51
	.byte	58
	.byte	49
	.byte	51
	.byte	45
	.byte	53
	.byte	49
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
	.byte	104
	.byte	111
	.byte	108
	.byte	101
	.byte	97
	.byte	98
	.byte	114
	.byte	0
.text
	.align 8
	.long	rDrg_srt-(rDrg_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rDrg_info:
.LcEDY:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEE0
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcEE2
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
	je .LcEE3
.LcEE4:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cEDU_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcEE2:
	movq $16,192(%r13)
.LcEE0:
	jmp *-16(%r13)
.LcEE3:
	jmp *(%rbx)
	.size rDrg_info, .-rDrg_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_getObjectIntersecter_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	EngineziObjectziGameObject_getObjectIntersecter_closure
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB1_closure
	.quad	rDr7_closure
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB1_closure
	.quad	rDr7_closure
	.quad	rDrd_closure
	.quad	rDre_closure
	.quad	rDrf_closure
	.quad	rDrg_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getObjectIntersecter_closure
.type EngineziObjectziGameObject_getObjectIntersecter_closure, @object
EngineziObjectziGameObject_getObjectIntersecter_closure:
	.quad	EngineziObjectziGameObject_getObjectIntersecter_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEJ0_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cEJ2_str:
	.byte	77
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_getObjectIntersecter_ct
.type EngineziObjectziGameObject_getObjectIntersecter_ct, @object
EngineziObjectziGameObject_getObjectIntersecter_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cEJ0_str
	.quad	cEJ2_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEN_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sEEN_info:
.LcEJz:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEJA
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcEJA:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sEEN_info, .-sEEN_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEM_info)+0
	.long	0
	.quad	0
	.quad	1103806595104
sEEM_info:
.LcEJJ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEJK
	movl $rDrf_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEJK:
	movq 6(%rbx),%rbx
	movq $sEEN_info,0(%rbp)
	testq $7,%rbx
	jne sEEN_info
	jmp *(%rbx)
	.size sEEM_info, .-sEEM_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEK_info)+0
	.long	0
	.quad	1
	.quad	1138166333457
sEEK_info:
.LcEJV:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEJX
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sEEM_info,-24(%rbp)
	addq $-24,%rbp
	jmp rC7v_info
.LcEJX:
	jmp *-16(%r13)
	.size sEEK_info, .-sEEK_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sDFW_info)+8
	.long	0
	.quad	2
	.quad	4294967328
sDFW_info:
.LcEK5:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEK6
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	addq $24,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEK6:
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sDFW_info, .-sDFW_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEI_info)+0
	.long	0
	.quad	2
	.quad	1696512081952
sEEI_info:
.LcEKf:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEKg
	movl $rDre_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEKg:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEKk
	addq $3,EngineziObjectziGameObject_getObjectIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sEEK_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%r14
	movq 6(%rbx),%rsi
	movq $sDFW_info,0(%rbp)
	jmp EngineziModelziAABB_anyIntersectGet_info
.LcEKk:
	movq $24,192(%r13)
.LcEKi:
	jmp *-16(%r13)
	.size sEEI_info, .-sEEI_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEG_info)+0
	.long	0
	.quad	8074
	.quad	1696512081952
sEEG_info:
.LcEKu:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEKv
	movq 8(%rbp),%rbx
	addq $88,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEKv:
	incq KNOWN_CALL_ctr
	movq 64(%rbp),%r14
	movq $sEEI_info,64(%rbp)
	addq $64,%rbp
	jmp rC7v_info
	.size sEEG_info, .-sEEG_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEF_info)+0
	.long	0
	.quad	8074
	.quad	1833951035424
sEEF_info:
.LcEKE:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEKF
	movq 8(%rbp),%rbx
	addq $88,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEKF:
	incq KNOWN_CALL_ctr
	movq 64(%rbp),%r14
	movq $sEEG_info,0(%rbp)
	jmp rC7z_info
	.size sEEF_info, .-sEEF_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEr_info)+0
	.long	0
	.quad	260047
	.quad	1833951035424
sEEr_info:
.LcEKM:
	movss 72(%rbp),%xmm0
	ucomiss 32(%rbp),%xmm0
	ja .LcEKO
	incq KNOWN_CALL_ctr
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	addq $128,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEKO:
	movss 88(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnEL2
	jb .LcEKQ
.LnEL2:
	incq KNOWN_CALL_ctr
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	addq $128,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEKQ:
	movss 64(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	ja .LcEKS
	incq KNOWN_CALL_ctr
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	addq $128,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEKS:
	movss 80(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnEL6
	jb .LcEKU
.LnEL6:
	incq KNOWN_CALL_ctr
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	addq $128,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEKU:
	movss 56(%rbp),%xmm0
	ucomiss 40(%rbp),%xmm0
	ja .LcEKW
	incq KNOWN_CALL_ctr
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	addq $128,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEKW:
	movss 96(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnELa
	jb .LcEKY
.LnELa:
	incq KNOWN_CALL_ctr
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	addq $128,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEKY:
	incq KNOWN_CALL_ctr
	movq 120(%rbp),%r14
	movq $sEEF_info,40(%rbp)
	addq $40,%rbp
	jmp rC7z_info
	.size sEEr_info, .-sEEr_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEs_info)+0
	.long	0
	.quad	259983
	.quad	1833951035424
sEEs_info:
.LcELd:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEEr_info,0(%rbp)
	testq $7,%rbx
	jne sEEr_info
	jmp *(%rbx)
	.size sEEs_info, .-sEEs_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEt_info)+0
	.long	0
	.quad	259855
	.quad	1833951035424
sEEt_info:
.LcELm:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEEs_info,0(%rbp)
	testq $7,%rbx
	jne sEEs_info
	jmp *(%rbx)
	.size sEEt_info, .-sEEt_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEu_info)+0
	.long	0
	.quad	64973
	.quad	1833951035424
sEEu_info:
.LcELv:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEEt_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEEt_info
	jmp *(%rbx)
	.size sEEu_info, .-sEEu_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEv_info)+0
	.long	0
	.quad	64717
	.quad	1833951035424
sEEv_info:
.LcELD:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sEEu_info,0(%rbp)
	testq $7,%rbx
	jne sEEu_info
	jmp *(%rbx)
	.size sEEv_info, .-sEEv_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEw_info)+0
	.long	0
	.quad	64653
	.quad	1833951035424
sEEw_info:
.LcELM:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEEv_info,0(%rbp)
	testq $7,%rbx
	jne sEEv_info
	jmp *(%rbx)
	.size sEEw_info, .-sEEw_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEx_info)+0
	.long	0
	.quad	64525
	.quad	1833951035424
sEEx_info:
.LcELV:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEEw_info,0(%rbp)
	testq $7,%rbx
	jne sEEw_info
	jmp *(%rbx)
	.size sEEx_info, .-sEEx_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEy_info)+0
	.long	0
	.quad	16139
	.quad	1833951035424
sEEy_info:
.LcEM4:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEEx_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEEx_info
	jmp *(%rbx)
	.size sEEy_info, .-sEEy_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEz_info)+0
	.long	0
	.quad	8074
	.quad	1833951035424
sEEz_info:
.LcEMc:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEEy_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sEEy_info
	jmp *(%rbx)
	.size sEEz_info, .-sEEz_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sDFD_info)+0
	.long	0
	.quad	4041
	.quad	4032974290976
sDFD_info:
.LcEMl:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEMm
	movl $rDrg_closure,%ebx
	addq $80,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcEMm:
	movq %rbx,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sEEz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sEEz_info
	jmp *(%rbx)
	.size sDFD_info, .-sDFD_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEh_info)+0
	.long	0
	.quad	1992
	.quad	4050154160160
sEEh_info:
.LcEMw:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 48(%rbp),%r14
	movq $sDFD_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziGameObject_calculateNewWholeAABB_info
	.size sEEh_info, .-sEEh_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEi_info)+0
	.long	0
	.quad	1928
	.quad	4050154160160
sEEi_info:
.LcEMA:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEEh_info,0(%rbp)
	testq $7,%rbx
	jne sEEh_info
	jmp *(%rbx)
	.size sEEi_info, .-sEEi_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEj_info)+0
	.long	0
	.quad	1800
	.quad	4050154160160
sEEj_info:
.LcEMJ:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEEi_info,0(%rbp)
	testq $7,%rbx
	jne sEEi_info
	jmp *(%rbx)
	.size sEEj_info, .-sEEj_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEk_info)+0
	.long	0
	.quad	454
	.quad	4050154160160
sEEk_info:
.LcEMS:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEEj_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEEj_info
	jmp *(%rbx)
	.size sEEk_info, .-sEEk_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEl_info)+0
	.long	0
	.quad	198
	.quad	4050154160160
sEEl_info:
.LcEN0:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sEEk_info,0(%rbp)
	testq $7,%rbx
	jne sEEk_info
	jmp *(%rbx)
	.size sEEl_info, .-sEEl_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEm_info)+0
	.long	0
	.quad	134
	.quad	4050154160160
sEEm_info:
.LcEN9:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sEEl_info,0(%rbp)
	testq $7,%rbx
	jne sEEl_info
	jmp *(%rbx)
	.size sEEm_info, .-sEEm_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEn_info)+0
	.long	0
	.quad	6
	.quad	4050154160160
sEEn_info:
.LcENi:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sEEm_info,0(%rbp)
	testq $7,%rbx
	jne sEEm_info
	jmp *(%rbx)
	.size sEEn_info, .-sEEn_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEo_info)+0
	.long	0
	.quad	4
	.quad	4050154160160
sEEo_info:
.LcENr:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEEn_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEEn_info
	jmp *(%rbx)
	.size sEEo_info, .-sEEo_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEp_info)+0
	.long	0
	.quad	3
	.quad	4050154160160
sEEp_info:
.LcENz:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sEEo_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sEEo_info
	jmp *(%rbx)
	.size sEEp_info, .-sEEp_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEf_info)+0
	.long	0
	.quad	3
	.quad	4325032067104
sEEf_info:
.LcENI:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcENJ
	movl $rDrd_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcENJ:
	movq 6(%rbx),%rbx
	movq $sEEp_info,0(%rbp)
	testq $7,%rbx
	jne sEEp_info
	jmp *(%rbx)
	.size sEEf_info, .-sEEf_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEd_info)+0
	.long	0
	.quad	3
	.quad	4325032067104
sEEd_info:
.LcENV:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcENW
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $32,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcENW:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq $sEEf_info,0(%rbp)
	jmp EngineziObjectziGameObject_calculateNewWholeAABB_info
	.size sEEd_info, .-sEEd_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEc_info)+0
	.long	0
	.quad	3
	.quad	4393751543840
sEEc_info:
.LcEO4:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcEO5
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $32,%rbp
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
.LcEO5:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sEEd_info,0(%rbp)
	jmp EngineziObjectziGameObject_getWholeAABB_info
	.size sEEc_info, .-sEEc_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(sEEb_info)+0
	.long	0
	.quad	1
	.quad	4393751543840
sEEb_info:
.LcEOd:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEOe
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcEOe:
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%r14
	movq $sEEc_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_getWholeAABB_info
	.size sEEb_info, .-sEEb_info
.text
	.align 8
	.long	EngineziObjectziGameObject_getObjectIntersecter_srt-(EngineziObjectziGameObject_getObjectIntersecter_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4393751543823
.globl EngineziObjectziGameObject_getObjectIntersecter_info
.type EngineziObjectziGameObject_getObjectIntersecter_info, @object
EngineziObjectziGameObject_getObjectIntersecter_info:
.LcEOm:
	leaq -128(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEOo
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_getObjectIntersecter_ct
	je .LcEOp
.LcEOq:
	incq EngineziObjectziGameObject_getObjectIntersecter_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sEEb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sEEb_info
	jmp *(%rbx)
.LcEOo:
	movl $EngineziObjectziGameObject_getObjectIntersecter_closure,%ebx
	jmp *-8(%r13)
.LcEOp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_getObjectIntersecter_ct+56
	movq $EngineziObjectziGameObject_getObjectIntersecter_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_getObjectIntersecter_ct
	jmp .LcEOq
	.size EngineziObjectziGameObject_getObjectIntersecter_info, .-EngineziObjectziGameObject_getObjectIntersecter_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_srt:
	.quad	EngineziObjectziGameObject_getObjectIntersecter_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_closure
.type EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_closure, @object
EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_closure:
	.quad	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEQi_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cEQk_str:
	.byte	83
	.byte	77
	.byte	102
	.byte	102
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct
.type EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct, @object
EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cEQi_str
	.quad	cEQk_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_slow
.type EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_slow, @object
EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_slow:
.LcEQn:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movss 32(%rbp),%xmm3
	addq $40,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info
	.size EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_slow, .-EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_slow
.text
	.align 8
	.quad	4294967297
	.quad	20
sDG8_info:
.LcEQv:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEQx
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movss 24(%rbx),%xmm1
	xorps %xmm2,%xmm2
	xorps %xmm3,%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcEQx:
	jmp *-16(%r13)
	.size sDG8_info, .-sDG8_info
.text
	.align 8
	.quad	2
	.quad	32
sDGd_info:
.LcEQJ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEQK
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEQW
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -15(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcEQK:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEQR
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcEQR:
	movq $24,192(%r13)
.LcEQP:
	jmp *-16(%r13)
.LcEQW:
	movq $24,192(%r13)
.LcEQU:
	jmp *-16(%r13)
	.size sDGd_info, .-sDGd_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_srt-(sEOx_info)+0
	.long	0
	.quad	2
	.quad	4294967328
sEOx_info:
.LcER4:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sDGd_info,0(%rbp)
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
	.size sEOx_info, .-sEOx_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_srt-(sDGe_info)+0
	.long	0
	.quad	4294967298
	.quad	4294967312
sDGe_info:
.LcER8:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcERa
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcERc
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 32(%rbx),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnERh
	je .LcERd
.LnERh:
	movq $sDG8_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movss 32(%rbx),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%r14
	movq $sEOx_info,-40(%rbp)
	addq $-40,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcERc:
	movq $32,192(%r13)
.LcERa:
	jmp *-16(%r13)
.LcERd:
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	leaq -23(%r12),%rbx
	addq $-16,%rbp
	addq $-8,%r12
	decq EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	decq ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size sDGe_info, .-sDGe_info
.text
	.align 8
	.quad	4294967297
	.quad	20
sDGo_info:
.LcERu:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcERw
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorps %xmm1,%xmm1
	movss 24(%rbx),%xmm2
	xorps %xmm3,%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcERw:
	jmp *-16(%r13)
	.size sDGo_info, .-sDGo_info
.text
	.align 8
	.quad	3
	.quad	32
sDGx_info:
.LcERI:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcERJ
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcERV
	addq $6,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $stg_sel_1_upd_info,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcERJ:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcERQ
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcERQ:
	movq $24,192(%r13)
.LcERO:
	jmp *-16(%r13)
.LcERV:
	movq $48,192(%r13)
.LcERT:
	jmp *-16(%r13)
	.size sDGx_info, .-sDGx_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_srt-(sEOA_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sEOA_info:
.LcES5:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sDGx_info,0(%rbp)
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
	.size sEOA_info, .-sEOA_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_srt-(sDGD_info)+0
	.long	0
	.quad	8589934594
	.quad	4294967312
sDGD_info:
.LcES9:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcESb
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .LcESd
	addq $14,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sDGe_info,-104(%r12)
	movq 16(%rbx),%rax
	movq %rax,-88(%r12)
	movq 24(%rbx),%rax
	movq %rax,-80(%r12)
	movss 32(%rbx),%xmm0
	movss %xmm0,-72(%r12)
	movq $stg_sel_0_upd_info,-64(%r12)
	leaq -104(%r12),%rax
	movq %rax,-48(%r12)
	movss 40(%rbx),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnESm
	je .LcESe
.LnESm:
	movq $sDGo_info,-40(%r12)
	leaq -64(%r12),%rax
	movq %rax,-24(%r12)
	movss 40(%rbx),%xmm0
	movss %xmm0,-16(%r12)
	incq KNOWN_CALL_ctr
	leaq -40(%r12),%rax
	movq %rax,-40(%rbp)
	leaq -64(%r12),%rax
	movq %rax,-32(%rbp)
	leaq -104(%r12),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%r14
	movq $sEOA_info,-48(%rbp)
	addq $-48,%rbp
	addq $-16,%r12
	addq $-2,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziCoreziWorld_worldEntities_info
.LcESd:
	movq $112,192(%r13)
.LcESb:
	jmp *-16(%r13)
.LcESe:
	movq $stg_sel_1_upd_info,-40(%r12)
	leaq -104(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	leaq -64(%r12),%rax
	movq %rax,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	addq $-16,%rbp
	jmp *0(%rbp)
	.size sDGD_info, .-sDGD_info
.text
	.align 8
	.quad	4294967297
	.quad	20
sDGN_info:
.LcESC:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcESE
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorps %xmm1,%xmm1
	xorps %xmm2,%xmm2
	movss 24(%rbx),%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcESE:
	jmp *-16(%r13)
	.size sDGN_info, .-sDGN_info
.text
	.align 8
	.quad	3
	.quad	32
sDGW_info:
.LcESQ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcESR
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcESX
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $stg_sel_1_upd_info,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	movq 8(%rbp),%rbx
	leaq -16(%r12),%r14
	addq $32,%rbp
	jmp *0(%rbp)
.LcESR:
	incq RET_UNBOXED_TUP_ctr
	movq %rbx,%r14
	movq 16(%rbp),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcESX:
	movq $24,192(%r13)
.LcESV:
	jmp *-16(%r13)
	.size sDGW_info, .-sDGW_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_srt-(sEOH_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sEOH_info:
.LcET4:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sDGW_info,0(%rbp)
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
	.size sEOH_info, .-sEOH_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_slow-(EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info)+0
	.long	0
	.quad	1797
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_srt-(EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info)+0
	.long	0
	.quad	21474836480
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info
.type EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info, @object
EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info:
.LcET7:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcET9
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcETb
	addq $13,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct
	je .LcETc
.LcETd:
	incq EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+40
	movq $sDGD_info,-96(%r12)
	movq %rsi,-80(%r12)
	movq %r14,-72(%r12)
	movss %xmm1,-64(%r12)
	movss %xmm2,-56(%r12)
	movq $stg_sel_0_upd_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-32(%r12)
	xorps %xmm0,%xmm0
	ucomiss %xmm0,%xmm3
	jp .LnETk
	je .LcETf
.LnETk:
	movq $sDGN_info,-24(%r12)
	leaq -48(%r12),%rax
	movq %rax,-8(%r12)
	movss %xmm3,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-24(%rbp)
	leaq -48(%r12),%rax
	movq %rax,-16(%rbp)
	leaq -96(%r12),%rax
	movq %rax,-8(%rbp)
	movq $sEOH_info,-32(%rbp)
	addq $-32,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcETb:
	movq $104,192(%r13)
.LcET9:
	movl $EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movss %xmm1,16(%rbp)
	movss %xmm2,24(%rbp)
	movss %xmm3,32(%rbp)
	jmp *-8(%r13)
.LcETc:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+56
	movq $EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct
	jmp .LcETd
.LcETf:
	movq $stg_sel_1_upd_info,-24(%r12)
	leaq -96(%r12),%rax
	movq %rax,-8(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -48(%r12),%rbx
	leaq -24(%r12),%r14
	addq $-8,%r12
	decq EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	decq ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info, .-EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_moveObjectSlideIntersecter_srt:
	.quad	EngineziObjectziGameObject_getObjectIntersecter_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSlideIntersecter_closure
.type EngineziObjectziGameObject_moveObjectSlideIntersecter_closure, @object
EngineziObjectziGameObject_moveObjectSlideIntersecter_closure:
	.quad	EngineziObjectziGameObject_moveObjectSlideIntersecter_info
	.quad	0
.section .rodata
	.align 8
.align 1
cETO_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cETR_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSlideIntersecter_ct
.type EngineziObjectziGameObject_moveObjectSlideIntersecter_ct, @object
EngineziObjectziGameObject_moveObjectSlideIntersecter_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cETO_str
	.quad	cETR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sETr_info:
.LcEUh:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEUm
	addq $3,EngineziObjectziGameObject_moveObjectSlideIntersecter_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcEUm:
	movq $24,192(%r13)
.LcEUk:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sETr_info, .-sETr_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideIntersecter_srt-(sETs_info)+0
	.long	0
	.quad	196
	.quad	4294967328
sETs_info:
.LcEUp:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	movq $sETr_info,32(%rbp)
	addq $32,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSlideIntersecter_info
	.size sETs_info, .-sETs_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideIntersecter_srt-(sETt_info)+0
	.long	0
	.quad	132
	.quad	4294967328
sETt_info:
.LcEUs:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sETs_info,0(%rbp)
	testq $7,%rbx
	jne sETs_info
	jmp *(%rbx)
	.size sETt_info, .-sETt_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideIntersecter_srt-(sETu_info)+0
	.long	0
	.quad	4
	.quad	4294967328
sETu_info:
.LcEUB:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sETt_info,0(%rbp)
	testq $7,%rbx
	jne sETt_info
	jmp *(%rbx)
	.size sETu_info, .-sETu_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideIntersecter_srt-(sETv_info)+0
	.long	0
	.quad	2
	.quad	4294967328
sETv_info:
.LcEUK:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sETu_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sETu_info
	jmp *(%rbx)
	.size sETv_info, .-sETv_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideIntersecter_srt-(EngineziObjectziGameObject_moveObjectSlideIntersecter_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_moveObjectSlideIntersecter_info
.type EngineziObjectziGameObject_moveObjectSlideIntersecter_info, @object
EngineziObjectziGameObject_moveObjectSlideIntersecter_info:
.LcEUS:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEUU
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_moveObjectSlideIntersecter_ct
	je .LcEUV
.LcEUW:
	incq EngineziObjectziGameObject_moveObjectSlideIntersecter_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rdi,%rbx
	movq $sETv_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sETv_info
	jmp *(%rbx)
.LcEUU:
	movl $EngineziObjectziGameObject_moveObjectSlideIntersecter_closure,%ebx
	jmp *-8(%r13)
.LcEUV:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_moveObjectSlideIntersecter_ct+56
	movq $EngineziObjectziGameObject_moveObjectSlideIntersecter_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_moveObjectSlideIntersecter_ct
	jmp .LcEUW
	.size EngineziObjectziGameObject_moveObjectSlideIntersecter_info, .-EngineziObjectziGameObject_moveObjectSlideIntersecter_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt:
	.quad	base_DataziMaybe_fromJust_closure
	.quad	EngineziObjectziGameObject_getObjectIntersecter_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_closure
.type EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_closure, @object
EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_closure:
	.quad	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info
	.quad	0
.section .rodata
	.align 8
.align 1
cEXJ_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	65
	.byte	108
	.byte	108
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cEXL_str:
	.byte	83
	.byte	77
	.byte	102
	.byte	102
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct
.type EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct, @object
EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cEXJ_str
	.quad	cEXL_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_slow
.type EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_slow, @object
EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_slow:
.LcEXO:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movss 32(%rbp),%xmm3
	addq $40,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info
	.size EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_slow, .-EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_slow
.text
	.align 8
	.quad	4294967297
	.quad	20
sDHD_info:
.LcEXW:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEXY
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movss 24(%rbx),%xmm1
	xorps %xmm2,%xmm2
	xorps %xmm3,%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcEXY:
	jmp *-16(%r13)
	.size sDHD_info, .-sDHD_info
.text
	.align 8
	.quad	2
	.quad	32
sDHI_info:
.LcEYa:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEYb
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEYn
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -15(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcEYb:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEYi
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcEYi:
	movq $24,192(%r13)
.LcEYg:
	jmp *-16(%r13)
.LcEYn:
	movq $24,192(%r13)
.LcEYl:
	jmp *-16(%r13)
	.size sDHI_info, .-sDHI_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEV3_info)+8
	.long	0
	.quad	2
	.quad	4294967328
sEV3_info:
.LcEYv:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sDHI_info,0(%rbp)
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
	.size sEV3_info, .-sEV3_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDHJ_info)+8
	.long	0
	.quad	4294967298
	.quad	4294967312
sDHJ_info:
.LcEYz:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEYB
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcEYD
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 32(%rbx),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnEYI
	je .LcEYE
.LnEYI:
	movq $sDHD_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movss 32(%rbx),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%r14
	movq $sEV3_info,-40(%rbp)
	addq $-40,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcEYD:
	movq $32,192(%r13)
.LcEYB:
	jmp *-16(%r13)
.LcEYE:
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	leaq -23(%r12),%rbx
	addq $-16,%rbp
	addq $-8,%r12
	decq EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	decq ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size sDHJ_info, .-sDHJ_info
.text
	.align 8
	.quad	4294967297
	.quad	20
sDI0_info:
.LcEYV:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEYX
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorps %xmm1,%xmm1
	movss 24(%rbx),%xmm2
	xorps %xmm3,%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcEYX:
	jmp *-16(%r13)
	.size sDI0_info, .-sDI0_info
.text
	.align 8
	.quad	3
	.quad	32
sDI4_info:
.LcEZ9:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcEZa
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEZm
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcEZa:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcEZh
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcEZh:
	movq $24,192(%r13)
.LcEZf:
	jmp *-16(%r13)
.LcEZm:
	movq $24,192(%r13)
.LcEZk:
	jmp *-16(%r13)
	.size sDI4_info, .-sDI4_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEV5_info)+8
	.long	0
	.quad	3
	.quad	4294967328
sEV5_info:
.LcEZv:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sDI4_info,0(%rbp)
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
	.size sEV5_info, .-sEV5_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDI5_info)+8
	.long	0
	.quad	4294967299
	.quad	4294967312
sDI5_info:
.LcEZz:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcEZB
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcEZD
	addq $7,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $stg_sel_0_upd_info,-48(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	movss 40(%rbx),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnEZJ
	je .LcEZE
.LnEZJ:
	movq $sDI0_info,-24(%r12)
	leaq -48(%r12),%rax
	movq %rax,-8(%r12)
	movss 40(%rbx),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-40(%rbp)
	leaq -48(%r12),%rax
	movq %rax,-32(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%r14
	movq $sEV5_info,-48(%rbp)
	addq $-48,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcEZD:
	movq $56,192(%r13)
.LcEZB:
	jmp *-16(%r13)
.LcEZE:
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-24(%r12)
	leaq -48(%r12),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -23(%r12),%rbx
	addq $-16,%rbp
	addq $-8,%r12
	decq EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	decq ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size sDI5_info, .-sDI5_info
.text
	.align 8
	.quad	4294967297
	.quad	20
sDIf_info:
.LcEZY:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF00
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorps %xmm1,%xmm1
	xorps %xmm2,%xmm2
	movss 24(%rbx),%xmm3
	addq $-16,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObject_info
.LcF00:
	jmp *-16(%r13)
	.size sDIf_info, .-sDIf_info
.text
	.align 8
	.quad	0
	.quad	32
sDIp_info:
.LcF0o:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF0p
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF0p:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF0w
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF0w:
	movq $24,192(%r13)
.LcF0u:
	jmp *-16(%r13)
	.size sDIp_info, .-sDIp_info
.text
	.align 8
	.quad	0
	.quad	32
sEVH_info:
.LcF0C:
	movq 15(%rbx),%rbx
	movq $sDIp_info,0(%rbp)
	testq $7,%rbx
	jne sDIp_info
	jmp *(%rbx)
	.size sEVH_info, .-sEVH_info
.text
	.align 8
	.quad	1
	.quad	17
sDIq_info:
.LcF0K:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF0M
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sEVH_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sEVH_info
	jmp *(%rbx)
.LcF0M:
	jmp *-16(%r13)
	.size sDIq_info, .-sDIq_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEV9_info)+0
	.long	0
	.quad	1
	.quad	4294967313
sEV9_info:
.LcF13:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF15
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $base_DataziMaybe_fromJust_closure+1,%r14d
	movq 16(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcF15:
	jmp *-16(%r13)
	.size sEV9_info, .-sEV9_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDIv_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sDIv_info:
.LcF1b:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF1c
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF1c:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcF1g
	addq $5,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sEV9_info,-32(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF1g:
	movq $40,192(%r13)
.LcF1e:
	jmp *-16(%r13)
	.size sDIv_info, .-sDIv_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEV7_info)+0
	.long	0
	.quad	2
	.quad	4294967315
sEV7_info:
.LcF1s:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF1u
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF1w
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_DataziMaybe_fromJust_closure+1,%r14d
	leaq -14(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcF1w:
	movq $24,192(%r13)
.LcF1u:
	jmp *-16(%r13)
	.size sEV7_info, .-sEV7_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDIy_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sDIy_info:
.LcF1E:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF1F
	movq 8(%rbp),%rbx
	movq $sDIv_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sDIv_info
	jmp *(%rbx)
.LcF1F:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcF1J
	addq $6,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $sEV7_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcF1J:
	movq $48,192(%r13)
.LcF1H:
	jmp *-16(%r13)
	.size sDIy_info, .-sDIy_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVc_info)+0
	.long	0
	.quad	2
	.quad	4294967315
sEVc_info:
.LcF1W:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF1Y
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF20
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sDIq_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	leaq -16(%r12),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sDIy_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sDIy_info
	jmp *(%rbx)
.LcF20:
	movq $24,192(%r13)
.LcF1Y:
	jmp *-16(%r13)
	.size sEVc_info, .-sEVc_info
.text
	.align 8
	.quad	1
	.quad	32
sDIM_info:
.LcF2l:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF2m
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF2y
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	leaq -14(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcF2m:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcF2t
	addq $6,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcF2t:
	movq $48,192(%r13)
.LcF2r:
	jmp *-16(%r13)
.LcF2y:
	movq $24,192(%r13)
.LcF2w:
	jmp *-16(%r13)
	.size sDIM_info, .-sDIM_info
.text
	.align 8
	.quad	1
	.quad	32
sEVI_info:
.LcF2H:
	movq 15(%rbx),%rbx
	movq $sDIM_info,0(%rbp)
	testq $7,%rbx
	jne sDIM_info
	jmp *(%rbx)
	.size sEVI_info, .-sEVI_info
.text
	.align 8
	.quad	2
	.quad	19
sDIO_info:
.LcF2P:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF2R
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sEVI_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sEVI_info
	jmp *(%rbx)
.LcF2R:
	jmp *-16(%r13)
	.size sDIO_info, .-sDIO_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVg_info)+0
	.long	0
	.quad	1
	.quad	4294967313
sEVg_info:
.LcF39:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF3b
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $base_DataziMaybe_fromJust_closure+1,%r14d
	movq 16(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcF3b:
	jmp *-16(%r13)
	.size sEVg_info, .-sEVg_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDIT_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sDIT_info:
.LcF3h:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF3i
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF3i:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcF3m
	addq $5,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sEVg_info,-32(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF3m:
	movq $40,192(%r13)
.LcF3k:
	jmp *-16(%r13)
	.size sDIT_info, .-sDIT_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVe_info)+0
	.long	0
	.quad	2
	.quad	4294967315
sEVe_info:
.LcF3y:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF3A
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF3C
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_DataziMaybe_fromJust_closure+1,%r14d
	leaq -14(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcF3C:
	movq $24,192(%r13)
.LcF3A:
	jmp *-16(%r13)
	.size sEVe_info, .-sEVe_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDIW_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sDIW_info:
.LcF3K:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF3L
	movq 8(%rbp),%rbx
	movq $sDIT_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sDIT_info
	jmp *(%rbx)
.LcF3L:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcF3P
	addq $6,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $sEVe_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcF3P:
	movq $48,192(%r13)
.LcF3N:
	jmp *-16(%r13)
	.size sDIW_info, .-sDIW_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVj_info)+0
	.long	0
	.quad	3
	.quad	4294967312
sEVj_info:
.LcF42:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF44
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcF46
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sDIO_info,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 32(%rbx),%rax
	movq %rax,0(%r12)
	leaq -24(%r12),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sDIW_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sDIW_info
	jmp *(%rbx)
.LcF46:
	movq $32,192(%r13)
.LcF44:
	jmp *-16(%r13)
	.size sEVj_info, .-sEVj_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDIK_info)+0
	.long	0
	.quad	4
	.quad	4294967328
sDIK_info:
.LcF4g:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF4h
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcF4p
	addq $4,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sEVc_info,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	movq 8(%rbp),%rbx
	leaq -24(%r12),%r14
	addq $40,%rbp
	jmp *0(%rbp)
.LcF4h:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcF4l
	addq $5,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sEVj_info,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	movq 16(%rbp),%rbx
	leaq -32(%r12),%r14
	addq $40,%rbp
	jmp *0(%rbp)
.LcF4l:
	movq $40,192(%r13)
.LcF4j:
	jmp *-16(%r13)
.LcF4p:
	movq $32,192(%r13)
.LcF4n:
	jmp *-16(%r13)
	.size sDIK_info, .-sDIK_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVd_info)+0
	.long	0
	.quad	4
	.quad	12884901920
sEVd_info:
.LcF4z:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq $sDIK_info,0(%rbp)
	jmp EngineziObjectziGameObject_getObjectIntersecter_info
	.size sEVd_info, .-sEVd_info
.text
	.align 8
	.quad	0
	.quad	32
sDJ8_info:
.LcF4P:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF4Q
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF4Q:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF4X
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF4X:
	movq $24,192(%r13)
.LcF4V:
	jmp *-16(%r13)
	.size sDJ8_info, .-sDJ8_info
.text
	.align 8
	.quad	0
	.quad	32
sEVJ_info:
.LcF53:
	movq 15(%rbx),%rbx
	movq $sDJ8_info,0(%rbp)
	testq $7,%rbx
	jne sDJ8_info
	jmp *(%rbx)
	.size sEVJ_info, .-sEVJ_info
.text
	.align 8
	.quad	1
	.quad	17
sDJ9_info:
.LcF5b:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF5d
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sEVJ_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sEVJ_info
	jmp *(%rbx)
.LcF5d:
	jmp *-16(%r13)
	.size sDJ9_info, .-sDJ9_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVs_info)+0
	.long	0
	.quad	1
	.quad	4294967313
sEVs_info:
.LcF5u:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF5w
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $base_DataziMaybe_fromJust_closure+1,%r14d
	movq 16(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcF5w:
	jmp *-16(%r13)
	.size sEVs_info, .-sEVs_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDJe_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sDJe_info:
.LcF5C:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF5D
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF5D:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcF5H
	addq $5,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sEVs_info,-32(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF5H:
	movq $40,192(%r13)
.LcF5F:
	jmp *-16(%r13)
	.size sDJe_info, .-sDJe_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVq_info)+0
	.long	0
	.quad	2
	.quad	4294967315
sEVq_info:
.LcF5T:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF5V
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF5X
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_DataziMaybe_fromJust_closure+1,%r14d
	leaq -14(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcF5X:
	movq $24,192(%r13)
.LcF5V:
	jmp *-16(%r13)
	.size sEVq_info, .-sEVq_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sDJh_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sDJh_info:
.LcF65:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcF66
	movq 8(%rbp),%rbx
	movq $sDJe_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sDJe_info
	jmp *(%rbx)
.LcF66:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcF6a
	addq $6,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $sEVq_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcF6a:
	movq $48,192(%r13)
.LcF68:
	jmp *-16(%r13)
	.size sDJh_info, .-sDJh_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(sEVv_info)+0
	.long	0
	.quad	2
	.quad	4294967315
sEVv_info:
.LcF6n:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF6p
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF6r
	addq $3,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sDJ9_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	leaq -16(%r12),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sDJh_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sDJh_info
	jmp *(%rbx)
.LcF6r:
	movq $24,192(%r13)
.LcF6p:
	jmp *-16(%r13)
	.size sEVv_info, .-sEVv_info
.text
	.align 8
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_slow-(EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info)+0
	.long	0
	.quad	1797
	.long	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_srt-(EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info)+0
	.long	0
	.quad	21474836480
	.quad	0
	.quad	12884901903
.globl EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info
.type EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info, @object
EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info:
.LcF6y:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF6A
	addq $168,%r12
	cmpq 144(%r13),%r12
	ja .LcF6C
	addq $21,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $21,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct
	je .LcF6D
.LcF6E:
	incq EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+40
	movq $sDHJ_info,-160(%r12)
	movq %rsi,-144(%r12)
	movq %r14,-136(%r12)
	movss %xmm1,-128(%r12)
	movq $stg_sel_1_upd_info,-120(%r12)
	leaq -160(%r12),%rax
	movq %rax,-104(%r12)
	movq $sDI5_info,-96(%r12)
	movq %r14,-80(%r12)
	leaq -160(%r12),%rax
	movq %rax,-72(%r12)
	leaq -120(%r12),%rax
	movq %rax,-64(%r12)
	movss %xmm2,-56(%r12)
	movq $stg_sel_0_upd_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-32(%r12)
	xorps %xmm0,%xmm0
	ucomiss %xmm0,%xmm3
	jp .LnF6O
	je .LcF6G
.LnF6O:
	movq $sDIf_info,-24(%r12)
	leaq -48(%r12),%rax
	movq %rax,-8(%r12)
	movss %xmm3,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-32(%rbp)
	leaq -48(%r12),%rax
	movq %rax,-24(%rbp)
	leaq -96(%r12),%rax
	movq %rax,-16(%rbp)
	leaq -120(%r12),%rax
	movq %rax,-8(%rbp)
	movq $sEVd_info,-40(%rbp)
	addq $-40,%rbp
	jmp EngineziCoreziWorld_worldEntities_info
.LcF6C:
	movq $168,192(%r13)
.LcF6A:
	movl $EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movss %xmm1,16(%rbp)
	movss %xmm2,24(%rbp)
	movss %xmm3,32(%rbp)
	jmp *-8(%r13)
.LcF6D:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct+56
	movq $EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_ct
	jmp .LcF6E
.LcF6G:
	movq $sEVv_info,-24(%r12)
	leaq -120(%r12),%rax
	movq %rax,-8(%r12)
	leaq -96(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -48(%r12),%rbx
	leaq -24(%r12),%r14
	jmp *0(%rbp)
	.size EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info, .-EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info
.section .data
	.align 8
.align 1
EngineziObjectziGameObject_moveObjectSlideAllIntersecters_srt:
	.quad	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_closure
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSlideAllIntersecters_closure
.type EngineziObjectziGameObject_moveObjectSlideAllIntersecters_closure, @object
EngineziObjectziGameObject_moveObjectSlideAllIntersecters_closure:
	.quad	EngineziObjectziGameObject_moveObjectSlideAllIntersecters_info
	.quad	0
.section .rodata
	.align 8
.align 1
cF7k_str:
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	71
	.byte	97
	.byte	109
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	65
	.byte	108
	.byte	108
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	67
	.byte	55
	.byte	109
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cF7n_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct
.type EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct, @object
EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cF7k_str
	.quad	cF7n_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sF6X_info:
.LcF7N:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcF7S
	addq $3,EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcF7S:
	movq $24,192(%r13)
.LcF7Q:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sF6X_info, .-sF6X_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideAllIntersecters_srt-(sF6Y_info)+0
	.long	0
	.quad	196
	.quad	4294967328
sF6Y_info:
.LcF7V:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	movq $sF6X_info,32(%rbp)
	addq $32,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info
	.size sF6Y_info, .-sF6Y_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideAllIntersecters_srt-(sF6Z_info)+0
	.long	0
	.quad	132
	.quad	4294967328
sF6Z_info:
.LcF7Y:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sF6Y_info,0(%rbp)
	testq $7,%rbx
	jne sF6Y_info
	jmp *(%rbx)
	.size sF6Z_info, .-sF6Z_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideAllIntersecters_srt-(sF70_info)+0
	.long	0
	.quad	4
	.quad	4294967328
sF70_info:
.LcF87:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sF6Z_info,0(%rbp)
	testq $7,%rbx
	jne sF6Z_info
	jmp *(%rbx)
	.size sF70_info, .-sF70_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideAllIntersecters_srt-(sF71_info)+0
	.long	0
	.quad	2
	.quad	4294967328
sF71_info:
.LcF8g:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sF70_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sF70_info
	jmp *(%rbx)
	.size sF71_info, .-sF71_info
.text
	.align 8
	.long	EngineziObjectziGameObject_moveObjectSlideAllIntersecters_srt-(EngineziObjectziGameObject_moveObjectSlideAllIntersecters_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziObjectziGameObject_moveObjectSlideAllIntersecters_info
.type EngineziObjectziGameObject_moveObjectSlideAllIntersecters_info, @object
EngineziObjectziGameObject_moveObjectSlideAllIntersecters_info:
.LcF8o:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcF8q
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct
	je .LcF8r
.LcF8s:
	incq EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rdi,%rbx
	movq $sF71_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sF71_info
	jmp *(%rbx)
.LcF8q:
	movl $EngineziObjectziGameObject_moveObjectSlideAllIntersecters_closure,%ebx
	jmp *-8(%r13)
.LcF8r:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct+56
	movq $EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziGameObject_moveObjectSlideAllIntersecters_ct
	jmp .LcF8s
	.size EngineziObjectziGameObject_moveObjectSlideAllIntersecters_info, .-EngineziObjectziGameObject_moveObjectSlideAllIntersecters_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
