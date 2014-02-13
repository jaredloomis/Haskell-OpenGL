.data
	.align 8
.align 1
.globl __stginit_EngineziModelziAABB
.type __stginit_EngineziModelziAABB, @object
__stginit_EngineziModelziAABB:
.data
	.align 8
.align 1
rllE_closure:
	.quad	rllE_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
clAy_str:
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	97
	.byte	98
	.byte	98
	.byte	66
	.byte	121
	.byte	70
	.byte	97
	.byte	99
	.byte	101
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
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	110
	.byte	111
	.byte	116
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	116
	.byte	116
	.byte	101
	.byte	100
	.byte	32
	.byte	112
	.byte	114
	.byte	111
	.byte	112
	.byte	101
	.byte	114
	.byte	108
	.byte	121
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rllE_info:
.LclAC:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LclAE
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LclAG
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
	je .LclAH
.LclAI:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $clAy_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LclAG:
	movq $16,192(%r13)
.LclAE:
	jmp *-16(%r13)
.LclAH:
	jmp *(%rbx)
	.size rllE_info, .-rllE_info
.section .data
	.align 8
.align 1
rllF_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rllE_closure
.data
	.align 8
.align 1
rllF_closure:
	.quad	rllF_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rllF_srt-(rllF_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rllF_info:
.LclAZ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LclB1
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LclB3
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
	je .LclB4
.LclB5:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rllE_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LclB3:
	movq $16,192(%r13)
.LclB1:
	jmp *-16(%r13)
.LclB4:
	jmp *(%rbx)
	.size rllF_info, .-rllF_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_aabbByFace_srt:
	.quad	EngineziModelziAABB_aabbByFace_closure
	.quad	rllF_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_aabbByFace_closure
.type EngineziModelziAABB_aabbByFace_closure, @object
EngineziModelziAABB_aabbByFace_closure:
	.quad	EngineziModelziAABB_aabbByFace_info
	.quad	0
.section .rodata
	.align 8
.align 1
clKs_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	97
	.byte	98
	.byte	98
	.byte	66
	.byte	121
	.byte	70
	.byte	97
	.byte	99
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	85
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
clKu_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_aabbByFace_ct
.type EngineziModelziAABB_aabbByFace_ct, @object
EngineziModelziAABB_aabbByFace_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	clKs_str
	.quad	clKu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBl_info)+0
	.long	0
	.quad	1
	.quad	4294967313
slBl_info:
.LclKA:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LclKC
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp EngineziModelziAABB_aabbByFace_info
.LclKC:
	jmp *-16(%r13)
	.size slBl_info, .-slBl_info
.section .rodata
	.align 8
.align 1
clKF_str:
	.byte	36
	.byte	119
	.byte	36
	.byte	106
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	108
	.byte	112
	.byte	112
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
clKH_str:
	.byte	102
	.byte	83
	.byte	0
.data
	.align 8
.align 1
slpp_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	clKF_str
	.quad	clKH_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
slpp_slow:
.LclKK:
	movss 0(%rbp),%xmm1
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp slpp_info
	.size slpp_slow, .-slpp_slow
.text
	.align 8
	.quad	2887
	.quad	32
slp2_info:
.LclKN:
	movss 24(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnlKS
	jbe .LclKQ
.LnlKS:
	incq RET_UNBOXED_TUP_ctr
	movq 56(%rbp),%rbx
	movq 40(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $64,%rbp
	jmp *0(%rbp)
.LclKQ:
	incq RET_UNBOXED_TUP_ctr
	movq 40(%rbp),%r14
	movq %rbx,%rsi
	movq 56(%rbp),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
	.size slp2_info, .-slp2_info
.text
	.align 8
	.quad	1158
	.quad	32
sloV_info:
.LclKV:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 40(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlL9
	jbe .LclKY
.LnlL9:
	movq 24(%rbp),%rbx
	movq $slp2_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slp2_info
	jmp *(%rbx)
.LclKY:
	movq $slp2_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slp2_info
	jmp *(%rbx)
	.size sloV_info, .-sloV_info
.text
	.align 8
	.quad	1158
	.quad	32
slp1_info:
.LclLc:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sloV_info,0(%rbp)
	testq $7,%rbx
	jne sloV_info
	jmp *(%rbx)
	.size slp1_info, .-slp1_info
.text
	.align 8
	.quad	1158
	.quad	32
sloO_info:
.LclLk:
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movss 40(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlLy
	jbe .LclLn
.LnlLy:
	movq 24(%rbp),%rbx
	movq $slp1_info,0(%rbp)
	testq $7,%rbx
	jne slp1_info
	jmp *(%rbx)
.LclLn:
	movq $slp1_info,0(%rbp)
	testq $7,%rbx
	jne slp1_info
	jmp *(%rbx)
	.size sloO_info, .-sloO_info
.text
	.align 8
	.quad	1286
	.quad	32
sloN_info:
.LclLB:
	movq %rbx,24(%rbp)
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq 16(%rbp),%rbx
	movq $sloO_info,0(%rbp)
	testq $7,%rbx
	jne sloO_info
	jmp *(%rbx)
	.size sloN_info, .-sloN_info
.text
	.align 8
	.quad	1863
	.quad	32
slpo_info:
.LclLI:
	movss 24(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnlLN
	jbe .LclLL
.LnlLN:
	incq RET_UNBOXED_TUP_ctr
	movq 56(%rbp),%rbx
	movq 48(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $64,%rbp
	jmp *0(%rbp)
.LclLL:
	incq RET_UNBOXED_TUP_ctr
	movq 48(%rbp),%r14
	movq %rbx,%rsi
	movq 56(%rbp),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
	.size slpo_info, .-slpo_info
.text
	.align 8
	.quad	646
	.quad	32
slpi_info:
.LclLQ:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 32(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlM4
	jbe .LclLT
.LnlM4:
	movq 24(%rbp),%rbx
	movq $slpo_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slpo_info
	jmp *(%rbx)
.LclLT:
	movq $slpo_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slpo_info
	jmp *(%rbx)
	.size slpi_info, .-slpi_info
.text
	.align 8
	.quad	646
	.quad	32
slpn_info:
.LclM7:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $slpi_info,0(%rbp)
	testq $7,%rbx
	jne slpi_info
	jmp *(%rbx)
	.size slpn_info, .-slpn_info
.text
	.align 8
	.quad	646
	.quad	32
slpb_info:
.LclMf:
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movss 32(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlMt
	jbe .LclMi
.LnlMt:
	movq 24(%rbp),%rbx
	movq $slpn_info,0(%rbp)
	testq $7,%rbx
	jne slpn_info
	jmp *(%rbx)
.LclMi:
	movq $slpn_info,0(%rbp)
	testq $7,%rbx
	jne slpn_info
	jmp *(%rbx)
	.size slpb_info, .-slpb_info
.text
	.align 8
	.quad	774
	.quad	32
slpa_info:
.LclMw:
	movq %rbx,24(%rbp)
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq 16(%rbp),%rbx
	movq $slpb_info,0(%rbp)
	testq $7,%rbx
	jne slpb_info
	jmp *(%rbx)
	.size slpa_info, .-slpa_info
.text
	.align 8
	.quad	8649
	.quad	32
slpm_info:
.LclMD:
	movss 16(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnlMN
	jbe .LclMF
.LnlMN:
	movq 48(%rbp),%rbx
	movq $sloN_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sloN_info
	jmp *(%rbx)
.LclMF:
	movq %rbx,64(%rbp)
	movq 48(%rbp),%rbx
	movq $slpa_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne slpa_info
	jmp *(%rbx)
	.size slpm_info, .-slpm_info
.text
	.align 8
	.quad	4168
	.quad	32
sloC_info:
.LclMQ:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 56(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlN4
	jbe .LclMT
.LnlN4:
	movq 16(%rbp),%rbx
	movq $slpm_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slpm_info
	jmp *(%rbx)
.LclMT:
	movq $slpm_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slpm_info
	jmp *(%rbx)
	.size sloC_info, .-sloC_info
.text
	.align 8
	.quad	4168
	.quad	32
slp0_info:
.LclN7:
	movq 48(%rbp),%rax
	movq %rbx,48(%rbp)
	movq %rax,%rbx
	movq $sloC_info,0(%rbp)
	testq $7,%rbx
	jne sloC_info
	jmp *(%rbx)
	.size slp0_info, .-slp0_info
.text
	.align 8
	.quad	2055
	.quad	32
slov_info:
.LclNf:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 48(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlNt
	jbe .LclNi
.LnlNt:
	movq 8(%rbp),%rbx
	movq $slp0_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slp0_info
	jmp *(%rbx)
.LclNi:
	movq $slp0_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slp0_info
	jmp *(%rbx)
	.size slov_info, .-slov_info
.text
	.align 8
	.quad	6
	.quad	32
slou_info:
.LclNw:
	movq %rbx,0(%rbp)
	movq 40(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $slov_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slov_info
	jmp *(%rbx)
	.size slou_info, .-slou_info
.text
	.align 8
	.quad	6
	.quad	32
sloZ_info:
.LclNF:
	movq 48(%rbp),%rax
	movq %rbx,48(%rbp)
	movq %rax,%rbx
	movq $slou_info,0(%rbp)
	testq $7,%rbx
	jne slou_info
	jmp *(%rbx)
	.size sloZ_info, .-sloZ_info
.text
	.align 8
	.long	slpp_slow-(slpp_info)+0
	.long	0
	.quad	66
	.quad	0
	.quad	8589934592
	.quad	4294967303
	.quad	9
slpp_info:
.LclNN:
	leaq -80(%rbp),%rax
	cmpq %r15,%rax
	jb .LclNP
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,slpp_ct
	je .LclNQ
.LclNR:
	incq slpp_ct+40
	movq 6(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 14(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 22(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 30(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 38(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 46(%rbx),%rax
	movq %rax,-48(%rbp)
	movss 62(%rbx),%xmm0
	ucomiss %xmm1,%xmm0
	jp .LnlOc
	jbe .LclNU
.LnlOc:
	movq 54(%rbx),%rbx
	movq $sloZ_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sloZ_info
	jmp *(%rbx)
.LclNP:
	addq $-16,%rbp
	movss %xmm1,0(%rbp)
	movq %r14,8(%rbp)
	jmp *-8(%r13)
.LclNQ:
	movq ticky_entry_ctrs,%rax
	movq %rax,slpp_ct+56
	movq $slpp_ct,ticky_entry_ctrs
	movq $1,slpp_ct
	jmp .LclNR
.LclNU:
	movq %r14,%rbx
	movq $sloZ_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sloZ_info
	jmp *(%rbx)
	.size slpp_info, .-slpp_info
.text
	.align 8
	.quad	0
	.quad	32
slBL_info:
.LclOj:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LclOo
	addq $4,EngineziModelziAABB_aabbByFace_ct+48
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
.LclOo:
	movq $32,192(%r13)
.LclOm:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size slBL_info, .-slBL_info
.text
	.align 8
	.quad	0
	.quad	32
slBN_info:
.LclOu:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LclOz
	addq $4,EngineziModelziAABB_aabbByFace_ct+48
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
.LclOz:
	movq $32,192(%r13)
.LclOx:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size slBN_info, .-slBN_info
.text
	.align 8
	.quad	49162
	.quad	32
slpB_info:
.LclOC:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LclOG
	addq $9,EngineziModelziAABB_aabbByFace_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $slpp_info,-64(%r12)
	movq 64(%rbp),%rax
	movq %rax,-56(%r12)
	movq 56(%rbp),%rax
	movq %rax,-48(%r12)
	movq 48(%rbp),%rax
	movq %rax,-40(%r12)
	movq 40(%rbp),%rax
	movq %rax,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movss 80(%rbp),%xmm0
	movss %xmm0,0(%r12)
	movss 72(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlOS
	jbe .LclOI
.LnlOS:
	incq KNOWN_CALL_ctr
	leaq -62(%r12),%rbx
	movss 72(%rbp),%xmm1
	movq 8(%rbp),%r14
	movq $slBL_info,80(%rbp)
	addq $80,%rbp
	jmp slpp_info
.LclOG:
	movq $72,192(%r13)
.LclOE:
	jmp *-16(%r13)
.LclOI:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm1
	movq %rbx,%r14
	leaq -62(%r12),%rbx
	movq $slBN_info,80(%rbp)
	addq $80,%rbp
	jmp slpp_info
	.size slpB_info, .-slpB_info
.text
	.align 8
	.quad	16393
	.quad	32
slpt_info:
.LclOV:
	movq %rbx,0(%rbp)
	movq 64(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,64(%rbp)
	movq %rax,%rbx
	movq $slpB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slpB_info
	jmp *(%rbx)
	.size slpt_info, .-slpt_info
.text
	.align 8
	.quad	8
	.quad	32
sloj_info:
.LclP4:
	movq %rbx,0(%rbp)
	movq 64(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,64(%rbp)
	movq %rax,%rbx
	movq $slpt_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slpt_info
	jmp *(%rbx)
	.size sloj_info, .-sloj_info
.text
	.align 8
	.quad	9
	.quad	16
slpK_info:
.LclPf:
	incq ENT_DYN_THK_ctr
	leaq -104(%rbp),%rax
	cmpq %r15,%rax
	jb .LclPh
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
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
	movq $sloj_info,-88(%rbp)
	addq $-88,%rbp
	testq $7,%rbx
	jne sloj_info
	jmp *(%rbx)
.LclPh:
	jmp *-16(%r13)
	.size slpK_info, .-slpK_info
.section .rodata
	.align 8
.align 1
clPt_str:
	.byte	36
	.byte	119
	.byte	36
	.byte	106
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	108
	.byte	110
	.byte	77
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
clPv_str:
	.byte	102
	.byte	83
	.byte	0
.data
	.align 8
.align 1
slnM_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	clPt_str
	.quad	clPv_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
slnM_slow:
.LclPy:
	movss 0(%rbp),%xmm1
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp slnM_info
	.size slnM_slow, .-slnM_slow
.text
	.align 8
	.quad	1863
	.quad	32
slno_info:
.LclPB:
	movss 24(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnlPG
	jbe .LclPE
.LnlPG:
	incq RET_UNBOXED_TUP_ctr
	movq 48(%rbp),%r14
	movq %rbx,%rsi
	movq 56(%rbp),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
.LclPE:
	incq RET_UNBOXED_TUP_ctr
	movq 56(%rbp),%rbx
	movq 48(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $64,%rbp
	jmp *0(%rbp)
	.size slno_info, .-slno_info
.text
	.align 8
	.quad	646
	.quad	32
slni_info:
.LclPJ:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 32(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlPX
	jbe .LclPM
.LnlPX:
	movq $slno_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slno_info
	jmp *(%rbx)
.LclPM:
	movq 24(%rbp),%rbx
	movq $slno_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slno_info
	jmp *(%rbx)
	.size slni_info, .-slni_info
.text
	.align 8
	.quad	646
	.quad	32
slnp_info:
.LclQ0:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $slni_info,0(%rbp)
	testq $7,%rbx
	jne slni_info
	jmp *(%rbx)
	.size slnp_info, .-slnp_info
.text
	.align 8
	.quad	646
	.quad	32
sln9_info:
.LclQ8:
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movss 32(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlQm
	jbe .LclQb
.LnlQm:
	movq $slnp_info,0(%rbp)
	testq $7,%rbx
	jne slnp_info
	jmp *(%rbx)
.LclQb:
	movq 24(%rbp),%rbx
	movq $slnp_info,0(%rbp)
	testq $7,%rbx
	jne slnp_info
	jmp *(%rbx)
	.size sln9_info, .-sln9_info
.text
	.align 8
	.quad	774
	.quad	32
slna_info:
.LclQp:
	movq %rbx,24(%rbp)
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq 16(%rbp),%rbx
	movq $sln9_info,0(%rbp)
	testq $7,%rbx
	jne sln9_info
	jmp *(%rbx)
	.size slna_info, .-slna_info
.text
	.align 8
	.quad	2887
	.quad	32
slnK_info:
.LclQw:
	movss 24(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnlQB
	jbe .LclQz
.LnlQB:
	incq RET_UNBOXED_TUP_ctr
	movq 40(%rbp),%r14
	movq %rbx,%rsi
	movq 56(%rbp),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
.LclQz:
	incq RET_UNBOXED_TUP_ctr
	movq 56(%rbp),%rbx
	movq 40(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $64,%rbp
	jmp *0(%rbp)
	.size slnK_info, .-slnK_info
.text
	.align 8
	.quad	1158
	.quad	32
slnF_info:
.LclQE:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 40(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlQS
	jbe .LclQH
.LnlQS:
	movq $slnK_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnK_info
	jmp *(%rbx)
.LclQH:
	movq 24(%rbp),%rbx
	movq $slnK_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnK_info
	jmp *(%rbx)
	.size slnF_info, .-slnF_info
.text
	.align 8
	.quad	1158
	.quad	32
slnL_info:
.LclQV:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $slnF_info,0(%rbp)
	testq $7,%rbx
	jne slnF_info
	jmp *(%rbx)
	.size slnL_info, .-slnL_info
.text
	.align 8
	.quad	1158
	.quad	32
slnx_info:
.LclR3:
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movss 40(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlRh
	jbe .LclR6
.LnlRh:
	movq $slnL_info,0(%rbp)
	testq $7,%rbx
	jne slnL_info
	jmp *(%rbx)
.LclR6:
	movq 24(%rbp),%rbx
	movq $slnL_info,0(%rbp)
	testq $7,%rbx
	jne slnL_info
	jmp *(%rbx)
	.size slnx_info, .-slnx_info
.text
	.align 8
	.quad	1286
	.quad	32
slny_info:
.LclRk:
	movq %rbx,24(%rbp)
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq 16(%rbp),%rbx
	movq $slnx_info,0(%rbp)
	testq $7,%rbx
	jne slnx_info
	jmp *(%rbx)
	.size slny_info, .-slny_info
.text
	.align 8
	.quad	8649
	.quad	32
slnn_info:
.LclRr:
	movss 16(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnlRB
	jbe .LclRt
.LnlRB:
	movq %rbx,64(%rbp)
	movq 48(%rbp),%rbx
	movq $slna_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne slna_info
	jmp *(%rbx)
.LclRt:
	movq 48(%rbp),%rbx
	movq $slny_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne slny_info
	jmp *(%rbx)
	.size slnn_info, .-slnn_info
.text
	.align 8
	.quad	4168
	.quad	32
slmW_info:
.LclRE:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 56(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlRS
	jbe .LclRH
.LnlRS:
	movq $slnn_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnn_info
	jmp *(%rbx)
.LclRH:
	movq 16(%rbp),%rbx
	movq $slnn_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnn_info
	jmp *(%rbx)
	.size slmW_info, .-slmW_info
.text
	.align 8
	.quad	4168
	.quad	32
slnJ_info:
.LclRV:
	movq 48(%rbp),%rax
	movq %rbx,48(%rbp)
	movq %rax,%rbx
	movq $slmW_info,0(%rbp)
	testq $7,%rbx
	jne slmW_info
	jmp *(%rbx)
	.size slnJ_info, .-slnJ_info
.text
	.align 8
	.quad	2055
	.quad	32
slmN_info:
.LclS3:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movss 48(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlSh
	jbe .LclS6
.LnlSh:
	movq $slnJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnJ_info
	jmp *(%rbx)
.LclS6:
	movq 8(%rbp),%rbx
	movq $slnJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnJ_info
	jmp *(%rbx)
	.size slmN_info, .-slmN_info
.text
	.align 8
	.quad	6
	.quad	32
slmO_info:
.LclSk:
	movq %rbx,0(%rbp)
	movq 40(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $slmN_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slmN_info
	jmp *(%rbx)
	.size slmO_info, .-slmO_info
.text
	.align 8
	.quad	6
	.quad	32
slnm_info:
.LclSt:
	movq 48(%rbp),%rax
	movq %rbx,48(%rbp)
	movq %rax,%rbx
	movq $slmO_info,0(%rbp)
	testq $7,%rbx
	jne slmO_info
	jmp *(%rbx)
	.size slnm_info, .-slnm_info
.text
	.align 8
	.long	slnM_slow-(slnM_info)+0
	.long	0
	.quad	66
	.quad	0
	.quad	8589934592
	.quad	4294967303
	.quad	9
slnM_info:
.LclSB:
	leaq -80(%rbp),%rax
	cmpq %r15,%rax
	jb .LclSD
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,slnM_ct
	je .LclSE
.LclSF:
	incq slnM_ct+40
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 22(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 30(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 38(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 46(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 54(%rbx),%rax
	movq %rax,-48(%rbp)
	movss 62(%rbx),%xmm0
	ucomiss %xmm1,%xmm0
	jp .LnlT0
	jbe .LclSI
.LnlT0:
	movq %r14,%rbx
	movq $slnm_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne slnm_info
	jmp *(%rbx)
.LclSD:
	addq $-16,%rbp
	movss %xmm1,0(%rbp)
	movq %r14,8(%rbp)
	jmp *-8(%r13)
.LclSE:
	movq ticky_entry_ctrs,%rax
	movq %rax,slnM_ct+56
	movq $slnM_ct,ticky_entry_ctrs
	movq $1,slnM_ct
	jmp .LclSF
.LclSI:
	movq 6(%rbx),%rbx
	movq $slnm_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne slnm_info
	jmp *(%rbx)
	.size slnM_info, .-slnM_info
.text
	.align 8
	.quad	0
	.quad	32
slBY_info:
.LclT7:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LclTc
	addq $4,EngineziModelziAABB_aabbByFace_ct+48
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
.LclTc:
	movq $32,192(%r13)
.LclTa:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size slBY_info, .-slBY_info
.text
	.align 8
	.quad	0
	.quad	32
slC0_info:
.LclTi:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LclTn
	addq $4,EngineziModelziAABB_aabbByFace_ct+48
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
.LclTn:
	movq $32,192(%r13)
.LclTl:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size slC0_info, .-slC0_info
.text
	.align 8
	.quad	49162
	.quad	32
slnQ_info:
.LclTq:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LclTu
	addq $9,EngineziModelziAABB_aabbByFace_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $slnM_info,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq 64(%rbp),%rax
	movq %rax,-48(%r12)
	movq 56(%rbp),%rax
	movq %rax,-40(%r12)
	movq 48(%rbp),%rax
	movq %rax,-32(%r12)
	movq 40(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movss 80(%rbp),%xmm0
	movss %xmm0,0(%r12)
	movss 72(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnlTG
	jbe .LclTw
.LnlTG:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm1
	movq %rbx,%r14
	leaq -62(%r12),%rbx
	movq $slBY_info,80(%rbp)
	addq $80,%rbp
	jmp slnM_info
.LclTu:
	movq $72,192(%r13)
.LclTs:
	jmp *-16(%r13)
.LclTw:
	incq KNOWN_CALL_ctr
	leaq -62(%r12),%rbx
	movss 72(%rbp),%xmm1
	movq 8(%rbp),%r14
	movq $slC0_info,80(%rbp)
	addq $80,%rbp
	jmp slnM_info
	.size slnQ_info, .-slnQ_info
.text
	.align 8
	.quad	16393
	.quad	32
slnY_info:
.LclTJ:
	movq %rbx,0(%rbp)
	movq 64(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,64(%rbp)
	movq %rax,%rbx
	movq $slnQ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnQ_info
	jmp *(%rbx)
	.size slnY_info, .-slnY_info
.text
	.align 8
	.quad	8
	.quad	32
slmB_info:
.LclTS:
	movq %rbx,0(%rbp)
	movq 64(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,64(%rbp)
	movq %rax,%rbx
	movq $slnY_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slnY_info
	jmp *(%rbx)
	.size slmB_info, .-slmB_info
.text
	.align 8
	.quad	9
	.quad	16
slpL_info:
.LclU3:
	incq ENT_DYN_THK_ctr
	leaq -104(%rbp),%rax
	cmpq %r15,%rax
	jb .LclU5
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
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
	movq $slmB_info,-88(%rbp)
	addq $-88,%rbp
	testq $7,%rbx
	jne slmB_info
	jmp *(%rbx)
.LclU5:
	jmp *-16(%r13)
	.size slpL_info, .-slpL_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBk_info)+0
	.long	0
	.quad	8
	.quad	12884901920
slBk_info:
.LclUk:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclUl
	movl $rllF_closure,%ebx
	addq $72,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclUl:
	addq $248,%r12
	cmpq 144(%r13),%r12
	ja .LclUp
	addq $31,EngineziModelziAABB_aabbByFace_ct+48
	incq ALLOC_HEAP_ctr
	addq $31,ALLOC_HEAP_tot
	movq $slBl_info,-240(%r12)
	movq 14(%rbx),%rax
	movq %rax,-224(%r12)
	movq $slpK_info,-216(%r12)
	movq 16(%rbp),%rax
	movq %rax,-200(%r12)
	movq 64(%rbp),%rax
	movq %rax,-192(%r12)
	movq 40(%rbp),%rax
	movq %rax,-184(%r12)
	movq 8(%rbp),%rax
	movq %rax,-176(%r12)
	movq 56(%rbp),%rax
	movq %rax,-168(%r12)
	movq 32(%rbp),%rax
	movq %rax,-160(%r12)
	movq 6(%rbx),%rax
	movq %rax,-152(%r12)
	movq 48(%rbp),%rax
	movq %rax,-144(%r12)
	movq 24(%rbp),%rax
	movq %rax,-136(%r12)
	movq $slpL_info,-128(%r12)
	movq 16(%rbp),%rax
	movq %rax,-112(%r12)
	movq 64(%rbp),%rax
	movq %rax,-104(%r12)
	movq 40(%rbp),%rax
	movq %rax,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-88(%r12)
	movq 56(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 6(%rbx),%rax
	movq %rax,-64(%r12)
	movq 48(%rbp),%rax
	movq %rax,-56(%r12)
	movq 24(%rbp),%rax
	movq %rax,-48(%r12)
	movq $EngineziModelziAABB_AABB_con_info,-40(%r12)
	leaq -128(%r12),%rax
	movq %rax,-32(%r12)
	leaq -216(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	leaq -240(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $72,%rbp
	jmp *0(%rbp)
.LclUp:
	movq $248,192(%r13)
.LclUn:
	jmp *-16(%r13)
	.size slBk_info, .-slBk_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBj_info)+0
	.long	0
	.quad	7
	.quad	12884901920
slBj_info:
.LclUV:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclUW
	movl $rllF_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclUW:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBk_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBk_info
	jmp *(%rbx)
	.size slBj_info, .-slBj_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBi_info)+0
	.long	0
	.quad	6
	.quad	12884901920
slBi_info:
.LclV9:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclVa
	movl $rllF_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclVa:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBj_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBj_info
	jmp *(%rbx)
	.size slBi_info, .-slBi_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBh_info)+0
	.long	0
	.quad	5
	.quad	12884901920
slBh_info:
.LclVn:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclVo
	movl $rllF_closure,%ebx
	addq $48,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclVo:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBi_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBi_info
	jmp *(%rbx)
	.size slBh_info, .-slBh_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBg_info)+0
	.long	0
	.quad	4
	.quad	12884901920
slBg_info:
.LclVB:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclVC
	movl $rllF_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclVC:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBh_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBh_info
	jmp *(%rbx)
	.size slBg_info, .-slBg_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBf_info)+0
	.long	0
	.quad	3
	.quad	12884901920
slBf_info:
.LclVP:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclVQ
	movl $rllF_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclVQ:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBg_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBg_info
	jmp *(%rbx)
	.size slBf_info, .-slBf_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBe_info)+0
	.long	0
	.quad	2
	.quad	12884901920
slBe_info:
.LclW3:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclW4
	movl $rllF_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclW4:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBf_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBf_info
	jmp *(%rbx)
	.size slBe_info, .-slBe_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBd_info)+0
	.long	0
	.quad	1
	.quad	12884901920
slBd_info:
.LclWh:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclWi
	movl $rllF_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LclWi:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBe_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBe_info
	jmp *(%rbx)
	.size slBd_info, .-slBd_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(slBc_info)+0
	.long	0
	.quad	0
	.quad	12884901920
slBc_info:
.LclWv:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LclWw
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LclWw:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $slBd_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBd_info
	jmp *(%rbx)
	.size slBc_info, .-slBc_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbByFace_srt-(EngineziModelziAABB_aabbByFace_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	12884901903
.globl EngineziModelziAABB_aabbByFace_info
.type EngineziModelziAABB_aabbByFace_info, @object
EngineziModelziAABB_aabbByFace_info:
.LclWG:
	leaq -72(%rbp),%rax
	cmpq %r15,%rax
	jb .LclWI
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_aabbByFace_ct
	je .LclWJ
.LclWK:
	incq EngineziModelziAABB_aabbByFace_ct+40
	movq %r14,%rbx
	movq $slBc_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slBc_info
	jmp *(%rbx)
.LclWI:
	movl $EngineziModelziAABB_aabbByFace_closure,%ebx
	jmp *-8(%r13)
.LclWJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_aabbByFace_ct+56
	movq $EngineziModelziAABB_aabbByFace_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_aabbByFace_ct
	jmp .LclWK
	.size EngineziModelziAABB_aabbByFace_info, .-EngineziModelziAABB_aabbByFace_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABB2_closure
.type EngineziModelziAABB_zdfShowAABB2_closure, @object
EngineziModelziAABB_zdfShowAABB2_closure:
	.quad	EngineziModelziAABB_zdfShowAABB2_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
clX0_str:
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziModelziAABB_zdfShowAABB2_info
.type EngineziModelziAABB_zdfShowAABB2_info, @object
EngineziModelziAABB_zdfShowAABB2_info:
.LclX4:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LclX6
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LclX8
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
	je .LclX9
.LclXa:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $clX0_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LclX8:
	movq $16,192(%r13)
.LclX6:
	jmp *-16(%r13)
.LclX9:
	jmp *(%rbx)
	.size EngineziModelziAABB_zdfShowAABB2_info, .-EngineziModelziAABB_zdfShowAABB2_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_zdwzdcshowsPrec_srt:
	.quad	base_ForeignziCziTypes_zdfShowCFloat_closure
	.quad	EngineziCoreziVec_zdwzdcshowsPrec1_closure
	.quad	EngineziModelziAABB_zdfShowAABB2_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwzdcshowsPrec_closure
.type EngineziModelziAABB_zdwzdcshowsPrec_closure, @object
EngineziModelziAABB_zdwzdcshowsPrec_closure:
	.quad	EngineziModelziAABB_zdwzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
clXO_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
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
	.byte	107
	.byte	102
	.byte	75
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
clXQ_str:
	.byte	105
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwzdcshowsPrec_ct
.type EngineziModelziAABB_zdwzdcshowsPrec_ct, @object
EngineziModelziAABB_zdwzdcshowsPrec_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	clXO_str
	.quad	clXQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_zdwzdcshowsPrec_srt-(slXi_info)+0
	.long	0
	.quad	0
	.quad	12884901920
slXi_info:
.LclXX:
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfShowCFloat_closure,%r14d
	movl $11,%esi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	addq $8,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec1_info
	.size slXi_info, .-slXi_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwzdcshowsPrec_srt-(slq1_info)+0
	.long	0
	.quad	1
	.quad	12884901905
slq1_info:
.LclY2:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LclY4
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $slXi_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne slXi_info
	jmp *(%rbx)
.LclY4:
	jmp *-16(%r13)
	.size slq1_info, .-slq1_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwzdcshowsPrec_srt-(slXj_info)+0
	.long	0
	.quad	0
	.quad	12884901920
slXj_info:
.LclYc:
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfShowCFloat_closure,%r14d
	movl $11,%esi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	addq $8,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec1_info
	.size slXj_info, .-slXj_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwzdcshowsPrec_srt-(slqb_info)+0
	.long	0
	.quad	1
	.quad	12884901905
slqb_info:
.LclYh:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LclYj
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $slXj_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne slXj_info
	jmp *(%rbx)
.LclYj:
	jmp *-16(%r13)
	.size slqb_info, .-slqb_info
.section .rodata
	.align 8
.align 1
clYo_str:
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	108
	.byte	113
	.byte	107
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
clYr_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
slqk_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	clYo_str
	.quad	clYr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	16
slXg_info:
.LclYC:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LclYE
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LclYG
	addq $7,slqk_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $stg_ap_2_upd_info,-48(%r12)
	movq 16(%rbx),%rax
	movq %rax,-32(%r12)
	movq 32(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_showSpace1_closure,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 24(%rbx),%rbx
	leaq -14(%r12),%r14
	addq $-16,%rbp
	jmp stg_ap_p_fast
.LclYG:
	movq $56,192(%r13)
.LclYE:
	jmp *-16(%r13)
	.size slXg_info, .-slXg_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwzdcshowsPrec_srt-(slqk_info)+16
	.long	0
	.quad	4294967301
	.quad	2
	.quad	4294967308
slqk_info:
.LclYN:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LclYR
	addq $5,slqk_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,slqk_ct
	je .LclYS
.LclYT:
	incq slqk_ct+40
	movq $slXg_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-16(%r12)
	movq 15(%rbx),%rax
	movq %rax,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziAABB_zdfShowAABB2_closure,%r14d
	leaq -32(%r12),%rsi
	jmp base_GHCziBase_zpzp_info
.LclYR:
	movq $40,192(%r13)
.LclYP:
	jmp *-8(%r13)
.LclYS:
	movq ticky_entry_ctrs,%rax
	movq %rax,slqk_ct+56
	movq $slqk_ct,ticky_entry_ctrs
	movq $1,slqk_ct
	jmp .LclYT
	.size slqk_info, .-slqk_info
.section .rodata
	.align 8
.align 1
clZ3_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	108
	.byte	88
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
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	46
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
clZ6_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
slXh_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	clZ3_str
	.quad	clZ6_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
slqs_info:
.LclZh:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LclZj
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LclZl
	addq $3,slXh_ct+48
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
	jmp slqk_info
.LclZl:
	movq $24,192(%r13)
.LclZj:
	jmp *-16(%r13)
	.size slqs_info, .-slqs_info
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
slXh_info:
.LclZq:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LclZu
	addq $7,slXh_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,slXh_ct
	je .LclZv
.LclZw:
	incq slXh_ct+40
	movq $slqs_info,-48(%r12)
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
.LclZu:
	movq $56,192(%r13)
.LclZs:
	jmp *-8(%r13)
.LclZv:
	movq ticky_entry_ctrs,%rax
	movq %rax,slXh_ct+56
	movq $slXh_ct,ticky_entry_ctrs
	movq $1,slXh_ct
	jmp .LclZw
	.size slXh_info, .-slXh_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwzdcshowsPrec_srt-(EngineziModelziAABB_zdwzdcshowsPrec_info)+0
	.long	0
	.quad	12884901904
	.quad	0
	.quad	30064771087
.globl EngineziModelziAABB_zdwzdcshowsPrec_info
.type EngineziModelziAABB_zdwzdcshowsPrec_info, @object
EngineziModelziAABB_zdwzdcshowsPrec_info:
.LclZC:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LclZG
	addq $11,EngineziModelziAABB_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdwzdcshowsPrec_ct
	je .LclZH
.LclZI:
	incq EngineziModelziAABB_zdwzdcshowsPrec_ct+40
	movq $slq1_info,-80(%r12)
	movq %rdi,-64(%r12)
	movq $slqb_info,-56(%r12)
	movq %rsi,-40(%r12)
	movq $slqk_info,-32(%r12)
	leaq -80(%r12),%rax
	movq %rax,-24(%r12)
	leaq -56(%r12),%rax
	movq %rax,-16(%r12)
	cmpq $11,%r14
	jge .LclZK
	leaq -31(%r12),%rbx
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LclZG:
	movq $88,192(%r13)
.LclZE:
	movl $EngineziModelziAABB_zdwzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.LclZH:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdwzdcshowsPrec_ct+56
	movq $EngineziModelziAABB_zdwzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdwzdcshowsPrec_ct
	jmp .LclZI
.LclZK:
	movq $slXh_info,-8(%r12)
	leaq -31(%r12),%rax
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	jmp *0(%rbp)
	.size EngineziModelziAABB_zdwzdcshowsPrec_info, .-EngineziModelziAABB_zdwzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_srt:
	.quad	EngineziModelziAABB_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_closure
.type EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_closure, @object
EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_closure:
	.quad	EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
cm04_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	65
	.byte	65
	.byte	66
	.byte	66
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
	.byte	107
	.byte	102
	.byte	78
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cm07_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct
.type EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct, @object
EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cm04_str
	.quad	cm07_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_srt-(slZQ_info)+0
	.long	0
	.quad	65
	.quad	4294967328
slZQ_info:
.Lcm0l:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	addq $16,%rbp
	jmp EngineziModelziAABB_zdwzdcshowsPrec_info
	.size slZQ_info, .-slZQ_info
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_srt-(slZR_info)+0
	.long	0
	.quad	1
	.quad	4294967328
slZR_info:
.Lcm0o:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $slZQ_info,0(%rbp)
	testq $7,%rbx
	jne slZQ_info
	jmp *(%rbx)
	.size slZR_info, .-slZR_info
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_srt-(EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_info
.type EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_info, @object
EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_info:
.Lcm0x:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcm0z
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct
	je .Lcm0A
.Lcm0B:
	incq EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $slZR_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne slZR_info
	jmp *(%rbx)
.Lcm0z:
	movl $EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.Lcm0A:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct+56
	movq $EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_ct
	jmp .Lcm0B
	.size EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_info, .-EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_zdfShowAABB1_srt:
	.quad	EngineziModelziAABB_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABB1_closure
.type EngineziModelziAABB_zdfShowAABB1_closure, @object
EngineziModelziAABB_zdfShowAABB1_closure:
	.quad	EngineziModelziAABB_zdfShowAABB1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cm0S_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	74
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cm0V_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABB1_ct
.type EngineziModelziAABB_zdfShowAABB1_ct, @object
EngineziModelziAABB_zdfShowAABB1_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cm0S_str
	.quad	cm0V_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABB1_srt-(sm0I_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sm0I_info:
.Lcm15:
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	addq $8,%rbp
	jmp EngineziModelziAABB_zdwzdcshowsPrec_info
	.size sm0I_info, .-sm0I_info
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABB1_srt-(EngineziModelziAABB_zdfShowAABB1_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziModelziAABB_zdfShowAABB1_info
.type EngineziModelziAABB_zdfShowAABB1_info, @object
EngineziModelziAABB_zdfShowAABB1_info:
.Lcm18:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcm1a
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdfShowAABB1_ct
	je .Lcm1b
.Lcm1c:
	incq EngineziModelziAABB_zdfShowAABB1_ct+40
	movq %r14,%rbx
	movq $sm0I_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sm0I_info
	jmp *(%rbx)
.Lcm1a:
	movl $EngineziModelziAABB_zdfShowAABB1_closure,%ebx
	jmp *-8(%r13)
.Lcm1b:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdfShowAABB1_ct+56
	movq $EngineziModelziAABB_zdfShowAABB1_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdfShowAABB1_ct
	jmp .Lcm1c
	.size EngineziModelziAABB_zdfShowAABB1_info, .-EngineziModelziAABB_zdfShowAABB1_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_zdfShowAABBzuzdcshowList_srt:
	.quad	EngineziModelziAABB_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABBzuzdcshowList_closure
.type EngineziModelziAABB_zdfShowAABBzuzdcshowList_closure, @object
EngineziModelziAABB_zdfShowAABBzuzdcshowList_closure:
	.quad	EngineziModelziAABB_zdfShowAABBzuzdcshowList_info
	.quad	0
.section .rodata
	.align 8
.align 1
cm1p_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	65
	.byte	65
	.byte	66
	.byte	66
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
	.byte	107
	.byte	102
	.byte	76
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cm1s_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct
.type EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct, @object
EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cm1p_str
	.quad	cm1s_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABBzuzdcshowList_srt-(EngineziModelziAABB_zdfShowAABBzuzdcshowList_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziModelziAABB_zdfShowAABBzuzdcshowList_info
.type EngineziModelziAABB_zdfShowAABBzuzdcshowList_info, @object
EngineziModelziAABB_zdfShowAABBzuzdcshowList_info:
.Lcm1x:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct
	je .Lcm1A
.Lcm1C:
	incq EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movl $EngineziModelziAABB_zdfShowAABB1_closure+1,%r14d
	jmp base_GHCziShow_showListzuzu_info
.Lcm1A:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct+56
	movq $EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdfShowAABBzuzdcshowList_ct
	jmp .Lcm1C
	.size EngineziModelziAABB_zdfShowAABBzuzdcshowList_info, .-EngineziModelziAABB_zdfShowAABBzuzdcshowList_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_zdwzdcshow_srt:
	.quad	EngineziModelziAABB_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwzdcshow_closure
.type EngineziModelziAABB_zdwzdcshow_closure, @object
EngineziModelziAABB_zdwzdcshow_closure:
	.quad	EngineziModelziAABB_zdwzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
cm1L_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
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
	.byte	108
	.byte	108
	.byte	68
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cm1O_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwzdcshow_ct
.type EngineziModelziAABB_zdwzdcshow_ct, @object
EngineziModelziAABB_zdwzdcshow_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cm1L_str
	.quad	cm1O_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_zdwzdcshow_srt-(EngineziModelziAABB_zdwzdcshow_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziModelziAABB_zdwzdcshow_info
.type EngineziModelziAABB_zdwzdcshow_info, @object
EngineziModelziAABB_zdwzdcshow_info:
.Lcm1T:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcm1W
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdwzdcshow_ct
	je .Lcm1Y
.Lcm20:
	incq EngineziModelziAABB_zdwzdcshow_ct+40
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-8(%rbp)
	movq $stg_ap_p_info,-16(%rbp)
	movq %rsi,%rdi
	movq %r14,%rsi
	xorl %r14d,%r14d
	addq $-16,%rbp
	jmp EngineziModelziAABB_zdwzdcshowsPrec_info
.Lcm1W:
	movl $EngineziModelziAABB_zdwzdcshow_closure,%ebx
	jmp *-8(%r13)
.Lcm1Y:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdwzdcshow_ct+56
	movq $EngineziModelziAABB_zdwzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdwzdcshow_ct
	jmp .Lcm20
	.size EngineziModelziAABB_zdwzdcshow_info, .-EngineziModelziAABB_zdwzdcshow_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_zdfShowAABBzuzdcshow_srt:
	.quad	EngineziModelziAABB_zdwzdcshowsPrec_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABBzuzdcshow_closure
.type EngineziModelziAABB_zdfShowAABBzuzdcshow_closure, @object
EngineziModelziAABB_zdfShowAABBzuzdcshow_closure:
	.quad	EngineziModelziAABB_zdfShowAABBzuzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
cm2e_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	65
	.byte	65
	.byte	66
	.byte	66
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
	.byte	107
	.byte	102
	.byte	77
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cm2h_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABBzuzdcshow_ct
.type EngineziModelziAABB_zdfShowAABBzuzdcshow_ct, @object
EngineziModelziAABB_zdfShowAABBzuzdcshow_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cm2e_str
	.quad	cm2h_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABBzuzdcshow_srt-(sm24_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sm24_info:
.Lcm2r:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	addq $8,%rbp
	jmp EngineziModelziAABB_zdwzdcshow_info
	.size sm24_info, .-sm24_info
.text
	.align 8
	.long	EngineziModelziAABB_zdfShowAABBzuzdcshow_srt-(EngineziModelziAABB_zdfShowAABBzuzdcshow_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziModelziAABB_zdfShowAABBzuzdcshow_info
.type EngineziModelziAABB_zdfShowAABBzuzdcshow_info, @object
EngineziModelziAABB_zdfShowAABBzuzdcshow_info:
.Lcm2u:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcm2w
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdfShowAABBzuzdcshow_ct
	je .Lcm2x
.Lcm2y:
	incq EngineziModelziAABB_zdfShowAABBzuzdcshow_ct+40
	movq %r14,%rbx
	movq $sm24_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sm24_info
	jmp *(%rbx)
.Lcm2w:
	movl $EngineziModelziAABB_zdfShowAABBzuzdcshow_closure,%ebx
	jmp *-8(%r13)
.Lcm2x:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdfShowAABBzuzdcshow_ct+56
	movq $EngineziModelziAABB_zdfShowAABBzuzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdfShowAABBzuzdcshow_ct
	jmp .Lcm2y
	.size EngineziModelziAABB_zdfShowAABBzuzdcshow_info, .-EngineziModelziAABB_zdfShowAABBzuzdcshow_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdfShowAABB_closure
.type EngineziModelziAABB_zdfShowAABB_closure, @object
EngineziModelziAABB_zdfShowAABB_closure:
	.quad	base_GHCziShow_DZCShow_static_info
	.quad	EngineziModelziAABB_zdfShowAABBzuzdcshowsPrec_closure+2
	.quad	EngineziModelziAABB_zdfShowAABBzuzdcshow_closure+1
	.quad	EngineziModelziAABB_zdfShowAABBzuzdcshowList_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwaabbFromPointsAccum_closure
.type EngineziModelziAABB_zdwaabbFromPointsAccum_closure, @object
EngineziModelziAABB_zdwaabbFromPointsAccum_closure:
	.quad	EngineziModelziAABB_zdwaabbFromPointsAccum_info
.section .rodata
	.align 8
.align 1
cm6u_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	97
	.byte	98
	.byte	98
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	80
	.byte	111
	.byte	105
	.byte	110
	.byte	116
	.byte	115
	.byte	65
	.byte	99
	.byte	99
	.byte	117
	.byte	109
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	71
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cm6w_str:
	.byte	76
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwaabbFromPointsAccum_ct
.type EngineziModelziAABB_zdwaabbFromPointsAccum_ct, @object
EngineziModelziAABB_zdwaabbFromPointsAccum_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cm6u_str
	.quad	cm6w_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
slsH_info:
.Lcm6B:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcm6H
	addq $4,EngineziModelziAABB_zdwaabbFromPointsAccum_ct+48
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
.Lcm6H:
	movq $32,192(%r13)
.Lcm6F:
	jmp *-16(%r13)
	.size slsH_info, .-slsH_info
.text
	.align 8
	.quad	3976
	.quad	32
slsC_info:
.Lcm6M:
	movss 16(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnm6Z
	jbe .Lcm6P
.Lnm6Z:
	movq 8(%rbp),%rbx
	movq $slsH_info,48(%rbp)
	addq $48,%rbp
	testq $7,%rbx
	jne slsH_info
	jmp *(%rbx)
.Lcm6P:
	movq $slsH_info,48(%rbp)
	addq $48,%rbp
	testq $7,%rbx
	jne slsH_info
	jmp *(%rbx)
	.size slsC_info, .-slsC_info
.text
	.align 8
	.quad	3976
	.quad	32
slsG_info:
.Lcm72:
	movq 56(%rbp),%rax
	movq %rbx,56(%rbp)
	movq %rax,%rbx
	movq $slsC_info,0(%rbp)
	testq $7,%rbx
	jne slsC_info
	jmp *(%rbx)
	.size slsG_info, .-slsG_info
.text
	.align 8
	.quad	3720
	.quad	32
slst_info:
.Lcm7a:
	movss 32(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnm7n
	jbe .Lcm7d
.Lnm7n:
	movq 24(%rbp),%rbx
	movq $slsG_info,0(%rbp)
	testq $7,%rbx
	jne slsG_info
	jmp *(%rbx)
.Lcm7d:
	movq $slsG_info,0(%rbp)
	testq $7,%rbx
	jne slsG_info
	jmp *(%rbx)
	.size slst_info, .-slst_info
.text
	.align 8
	.quad	3720
	.quad	32
slsF_info:
.Lcm7q:
	movq 64(%rbp),%rax
	movq %rbx,64(%rbp)
	movq %rax,%rbx
	movq $slst_info,0(%rbp)
	testq $7,%rbx
	jne slst_info
	jmp *(%rbx)
	.size slsF_info, .-slsF_info
.text
	.align 8
	.quad	2696
	.quad	32
slsk_info:
.Lcm7y:
	movss 48(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnm7L
	jbe .Lcm7B
.Lnm7L:
	movq 40(%rbp),%rbx
	movq $slsF_info,0(%rbp)
	testq $7,%rbx
	jne slsF_info
	jmp *(%rbx)
.Lcm7B:
	movq $slsF_info,0(%rbp)
	testq $7,%rbx
	jne slsF_info
	jmp *(%rbx)
	.size slsk_info, .-slsk_info
.text
	.align 8
	.quad	12884901894
	.quad	16
sm2L_info:
.Lcm7Q:
	incq ENT_DYN_THK_ctr
	leaq -88(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcm7S
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 56(%rbx),%rax
	movq %rax,-80(%rbp)
	movss 80(%rbx),%xmm0
	movss %xmm0,-72(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-64(%rbp)
	movss 72(%rbx),%xmm0
	movss %xmm0,-56(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-48(%rbp)
	movss 64(%rbx),%xmm0
	movss %xmm0,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $slsk_info,-88(%rbp)
	addq $-88,%rbp
	testq $7,%rbx
	jne slsk_info
	jmp *(%rbx)
.Lcm7S:
	jmp *-16(%r13)
	.size sm2L_info, .-sm2L_info
.text
	.align 8
	.quad	2
	.quad	32
slsc_info:
.Lcm86:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcm8c
	addq $4,EngineziModelziAABB_zdwaabbFromPointsAccum_ct+48
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
.Lcm8c:
	movq $32,192(%r13)
.Lcm8a:
	jmp *-16(%r13)
	.size slsc_info, .-slsc_info
.text
	.align 8
	.quad	3976
	.quad	32
sls6_info:
.Lcm8h:
	movss 16(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnm8u
	jbe .Lcm8k
.Lnm8u:
	movq $slsc_info,48(%rbp)
	addq $48,%rbp
	testq $7,%rbx
	jne slsc_info
	jmp *(%rbx)
.Lcm8k:
	movq 8(%rbp),%rbx
	movq $slsc_info,48(%rbp)
	addq $48,%rbp
	testq $7,%rbx
	jne slsc_info
	jmp *(%rbx)
	.size sls6_info, .-sls6_info
.text
	.align 8
	.quad	7816
	.quad	32
slsb_info:
.Lcm8x:
	movq %rbx,56(%rbp)
	movq 24(%rbp),%rbx
	movq $sls6_info,0(%rbp)
	testq $7,%rbx
	jne sls6_info
	jmp *(%rbx)
	.size slsb_info, .-slsb_info
.text
	.align 8
	.quad	7304
	.quad	32
slrW_info:
.Lcm8D:
	movss 40(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnm8Q
	jbe .Lcm8G
.Lnm8Q:
	movq $slsb_info,0(%rbp)
	testq $7,%rbx
	jne slsb_info
	jmp *(%rbx)
.Lcm8G:
	movq 32(%rbp),%rbx
	movq $slsb_info,0(%rbp)
	testq $7,%rbx
	jne slsb_info
	jmp *(%rbx)
	.size slrW_info, .-slrW_info
.text
	.align 8
	.quad	13448
	.quad	32
slsa_info:
.Lcm8T:
	movq %rbx,64(%rbp)
	movq 48(%rbp),%rbx
	movq $slrW_info,0(%rbp)
	testq $7,%rbx
	jne slrW_info
	jmp *(%rbx)
	.size slsa_info, .-slsa_info
.text
	.align 8
	.quad	9352
	.quad	32
slrM_info:
.Lcm8Z:
	movss 64(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnm9c
	jbe .Lcm92
.Lnm9c:
	movq $slsa_info,0(%rbp)
	testq $7,%rbx
	jne slsa_info
	jmp *(%rbx)
.Lcm92:
	movq 56(%rbp),%rbx
	movq $slsa_info,0(%rbp)
	testq $7,%rbx
	jne slsa_info
	jmp *(%rbx)
	.size slrM_info, .-slrM_info
.text
	.align 8
	.quad	12884901894
	.quad	16
sm2M_info:
.Lcm9h:
	incq ENT_DYN_THK_ctr
	leaq -88(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcm9j
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 56(%rbx),%rax
	movq %rax,-80(%rbp)
	movss 80(%rbx),%xmm0
	movss %xmm0,-72(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-64(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-56(%rbp)
	movss 72(%rbx),%xmm0
	movss %xmm0,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movss 64(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $slrM_info,-88(%rbp)
	addq $-88,%rbp
	testq $7,%rbx
	jne slrM_info
	jmp *(%rbx)
.Lcm9j:
	jmp *-16(%r13)
	.size sm2M_info, .-sm2M_info
.text
	.align 8
	.quad	287502
	.quad	32
slsB_info:
.Lcm9w:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .Lcm9A
	addq $22,EngineziModelziAABB_zdwaabbFromPointsAccum_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	movq $sm2L_info,-168(%r12)
	movq 96(%rbp),%rax
	movq %rax,-152(%r12)
	movq 88(%rbp),%rax
	movq %rax,-144(%r12)
	movq 80(%rbp),%rax
	movq %rax,-136(%r12)
	movq 16(%rbp),%rax
	movq %rax,-128(%r12)
	movq 8(%rbp),%rax
	movq %rax,-120(%r12)
	movq %rbx,-112(%r12)
	movss 32(%rbp),%xmm0
	movss %xmm0,-104(%r12)
	movss 24(%rbp),%xmm0
	movss %xmm0,-96(%r12)
	movss 7(%rbx),%xmm0
	movss %xmm0,-88(%r12)
	movq $sm2M_info,-80(%r12)
	movq 96(%rbp),%rax
	movq %rax,-64(%r12)
	movq 56(%rbp),%rax
	movq %rax,-56(%r12)
	movq 88(%rbp),%rax
	movq %rax,-48(%r12)
	movq 48(%rbp),%rax
	movq %rax,-40(%r12)
	movq 80(%rbp),%rax
	movq %rax,-32(%r12)
	movq 40(%rbp),%rax
	movq %rax,-24(%r12)
	movss 72(%rbp),%xmm0
	movss %xmm0,-16(%r12)
	movss 64(%rbp),%xmm0
	movss %xmm0,-8(%r12)
	movss 104(%rbp),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	movq 112(%rbp),%r14
	leaq -80(%r12),%rsi
	leaq -168(%r12),%rdi
	addq $120,%rbp
	jmp EngineziModelziAABB_zdwaabbFromPointsAccum_info
.Lcm9A:
	movq $176,192(%r13)
.Lcm9y:
	jmp *-16(%r13)
	.size slsB_info, .-slsB_info
.text
	.align 8
	.quad	143629
	.quad	32
slss_info:
.Lcm9U:
	movq %rbx,0(%rbp)
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $slsB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slsB_info
	jmp *(%rbx)
	.size slss_info, .-slss_info
.text
	.align 8
	.quad	71692
	.quad	32
slsj_info:
.Lcma3:
	movq %rbx,0(%rbp)
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $slss_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slss_info
	jmp *(%rbx)
	.size slsj_info, .-slsj_info
.text
	.align 8
	.quad	17930
	.quad	32
sm2T_info:
.Lcmac:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $slsj_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne slsj_info
	jmp *(%rbx)
	.size sm2T_info, .-sm2T_info
.text
	.align 8
	.quad	777
	.quad	32
sls7_info:
.Lcmak:
	movq %rbx,0(%rbp)
	movq 64(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,64(%rbp)
	movq %rax,%rbx
	movq $sm2T_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sm2T_info
	jmp *(%rbx)
	.size sls7_info, .-sls7_info
.text
	.align 8
	.quad	264
	.quad	32
slrX_info:
.Lcmat:
	movq %rbx,0(%rbp)
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sls7_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sls7_info
	jmp *(%rbx)
	.size slrX_info, .-slrX_info
.text
	.align 8
	.quad	7
	.quad	32
slrN_info:
.LcmaC:
	movq %rbx,0(%rbp)
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $slrX_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slrX_info
	jmp *(%rbx)
	.size slrN_info, .-slrN_info
.text
	.align 8
	.quad	5
	.quad	32
sm2U_info:
.LcmaL:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $slrN_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne slrN_info
	jmp *(%rbx)
	.size sm2U_info, .-sm2U_info
.text
	.align 8
	.quad	4
	.quad	32
sm2K_info:
.LcmaV:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcmaW
	incq RET_UNBOXED_TUP_ctr
	movq 32(%rbp),%rbx
	movq 24(%rbp),%r14
	addq $40,%rbp
	jmp *0(%rbp)
.LcmaW:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%rax
	movq 14(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sm2U_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sm2U_info
	jmp *(%rbx)
	.size sm2K_info, .-sm2K_info
.text
	.align 8
	.quad	3
	.quad	32
sm2J_info:
.Lcmbb:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcmbc
	incq RET_UNBOXED_TUP_ctr
	movq 24(%rbp),%rbx
	movq 16(%rbp),%r14
	addq $32,%rbp
	jmp *0(%rbp)
.Lcmbc:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sm2K_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sm2K_info
	jmp *(%rbx)
	.size sm2J_info, .-sm2J_info
.text
	.align 8
	.quad	2
	.quad	32
sm2I_info:
.Lcmbo:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcmbp
	incq RET_UNBOXED_TUP_ctr
	movq 16(%rbp),%rbx
	movq 8(%rbp),%r14
	addq $24,%rbp
	jmp *0(%rbp)
.Lcmbp:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sm2J_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sm2J_info
	jmp *(%rbx)
	.size sm2I_info, .-sm2I_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziModelziAABB_zdwaabbFromPointsAccum_info
.type EngineziModelziAABB_zdwaabbFromPointsAccum_info, @object
EngineziModelziAABB_zdwaabbFromPointsAccum_info:
.Lcmbz:
	leaq -120(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmbB
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdwaabbFromPointsAccum_ct
	je .LcmbC
.LcmbD:
	incq EngineziModelziAABB_zdwaabbFromPointsAccum_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sm2I_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sm2I_info
	jmp *(%rbx)
.LcmbB:
	movl $EngineziModelziAABB_zdwaabbFromPointsAccum_closure,%ebx
	jmp *-8(%r13)
.LcmbC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdwaabbFromPointsAccum_ct+56
	movq $EngineziModelziAABB_zdwaabbFromPointsAccum_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdwaabbFromPointsAccum_ct
	jmp .LcmbD
	.size EngineziModelziAABB_zdwaabbFromPointsAccum_info, .-EngineziModelziAABB_zdwaabbFromPointsAccum_info
.data
	.align 8
.align 1
rllG_closure:
	.quad	rllG_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cmbT_str:
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	97
	.byte	98
	.byte	98
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	80
	.byte	111
	.byte	105
	.byte	110
	.byte	116
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
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	111
	.byte	111
	.byte	32
	.byte	115
	.byte	104
	.byte	111
	.byte	114
	.byte	116
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rllG_info:
.LcmbX:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmbZ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcmc1
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
	je .Lcmc2
.Lcmc3:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cmbT_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lcmc1:
	movq $16,192(%r13)
.LcmbZ:
	jmp *-16(%r13)
.Lcmc2:
	jmp *(%rbx)
	.size rllG_info, .-rllG_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_aabbFromPoints1_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rllG_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_aabbFromPoints1_closure
.type EngineziModelziAABB_aabbFromPoints1_closure, @object
EngineziModelziAABB_aabbFromPoints1_closure:
	.quad	EngineziModelziAABB_aabbFromPoints1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziAABB_aabbFromPoints1_srt-(EngineziModelziAABB_aabbFromPoints1_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziModelziAABB_aabbFromPoints1_info
.type EngineziModelziAABB_aabbFromPoints1_info, @object
EngineziModelziAABB_aabbFromPoints1_info:
.Lcmck:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcmcm
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcmco
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
	je .Lcmcp
.Lcmcq:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rllG_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.Lcmco:
	movq $16,192(%r13)
.Lcmcm:
	jmp *-16(%r13)
.Lcmcp:
	jmp *(%rbx)
	.size EngineziModelziAABB_aabbFromPoints1_info, .-EngineziModelziAABB_aabbFromPoints1_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_zdwaabbFromPoints_srt:
	.quad	EngineziModelziAABB_aabbFromPoints1_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwaabbFromPoints_closure
.type EngineziModelziAABB_zdwaabbFromPoints_closure, @object
EngineziModelziAABB_zdwaabbFromPoints_closure:
	.quad	EngineziModelziAABB_zdwaabbFromPoints_info
	.quad	0
.section .rodata
	.align 8
.align 1
cmcT_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	97
	.byte	98
	.byte	98
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	80
	.byte	111
	.byte	105
	.byte	110
	.byte	116
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	70
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmcW_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_zdwaabbFromPoints_ct
.type EngineziModelziAABB_zdwaabbFromPoints_ct, @object
EngineziModelziAABB_zdwaabbFromPoints_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cmcT_str
	.quad	cmcW_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	16
smcy_info:
.Lcmdm:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcmdo
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	addq $-16,%rbp
	jmp EngineziCoreziVec_zdWVec3_info
.Lcmdo:
	jmp *-16(%r13)
	.size smcy_info, .-smcy_info
.text
	.align 8
	.quad	3
	.quad	16
smcz_info:
.Lcmdv:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcmdx
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	addq $-16,%rbp
	jmp EngineziCoreziVec_zdWVec3_info
.Lcmdx:
	jmp *-16(%r13)
	.size smcz_info, .-smcz_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwaabbFromPoints_srt-(smcx_info)+0
	.long	0
	.quad	3
	.quad	4294967328
smcx_info:
.LcmdD:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcmdE
	movl $EngineziModelziAABB_aabbFromPoints1_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcmdE:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcmdI
	addq $10,EngineziModelziAABB_zdwaabbFromPoints_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $smcy_info,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 6(%rbx),%rax
	movq %rax,-40(%r12)
	movq $smcz_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 6(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	leaq -32(%r12),%rsi
	leaq -72(%r12),%rdi
	addq $32,%rbp
	jmp EngineziModelziAABB_zdwaabbFromPointsAccum_info
.LcmdI:
	movq $80,192(%r13)
.LcmdG:
	jmp *-16(%r13)
	.size smcx_info, .-smcx_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwaabbFromPoints_srt-(smcw_info)+0
	.long	0
	.quad	2
	.quad	4294967328
smcw_info:
.LcmdX:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcmdY
	movl $EngineziModelziAABB_aabbFromPoints1_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcmdY:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $smcx_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smcx_info
	jmp *(%rbx)
	.size smcw_info, .-smcw_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwaabbFromPoints_srt-(slsZ_info)+0
	.long	0
	.quad	0
	.quad	4294967328
slsZ_info:
.Lcmeb:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcmec
	movl $EngineziModelziAABB_aabbFromPoints1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcmec:
	movq 6(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %rbx,0(%rbp)
	movq 14(%rbx),%rbx
	movq $smcw_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smcw_info
	jmp *(%rbx)
	.size slsZ_info, .-slsZ_info
.text
	.align 8
	.long	EngineziModelziAABB_zdwaabbFromPoints_srt-(EngineziModelziAABB_zdwaabbFromPoints_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziModelziAABB_zdwaabbFromPoints_info
.type EngineziModelziAABB_zdwaabbFromPoints_info, @object
EngineziModelziAABB_zdwaabbFromPoints_info:
.Lcmen:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcmep
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_zdwaabbFromPoints_ct
	je .Lcmeq
.Lcmer:
	incq EngineziModelziAABB_zdwaabbFromPoints_ct+40
	movq %r14,%rbx
	movq $slsZ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slsZ_info
	jmp *(%rbx)
.Lcmep:
	movl $EngineziModelziAABB_zdwaabbFromPoints_closure,%ebx
	jmp *-8(%r13)
.Lcmeq:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_zdwaabbFromPoints_ct+56
	movq $EngineziModelziAABB_zdwaabbFromPoints_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_zdwaabbFromPoints_ct
	jmp .Lcmer
	.size EngineziModelziAABB_zdwaabbFromPoints_info, .-EngineziModelziAABB_zdwaabbFromPoints_info
.section .data
	.align 8
.align 1
EngineziModelziAABB_aabbFromPoints_srt:
	.quad	EngineziModelziAABB_aabbFromPoints1_closure
.data
	.align 8
.align 1
.globl EngineziModelziAABB_aabbFromPoints_closure
.type EngineziModelziAABB_aabbFromPoints_closure, @object
EngineziModelziAABB_aabbFromPoints_closure:
	.quad	EngineziModelziAABB_aabbFromPoints_info
	.quad	0
.section .rodata
	.align 8
.align 1
cmeF_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	97
	.byte	98
	.byte	98
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	80
	.byte	111
	.byte	105
	.byte	110
	.byte	116
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	84
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmeI_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_aabbFromPoints_ct
.type EngineziModelziAABB_aabbFromPoints_ct, @object
EngineziModelziAABB_aabbFromPoints_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cmeF_str
	.quad	cmeI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
smey_info:
.LcmeS:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcmeX
	addq $3,EngineziModelziAABB_aabbFromPoints_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziModelziAABB_AABB_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcmeX:
	movq $24,192(%r13)
.LcmeV:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size smey_info, .-smey_info
.text
	.align 8
	.long	EngineziModelziAABB_aabbFromPoints_srt-(EngineziModelziAABB_aabbFromPoints_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziModelziAABB_aabbFromPoints_info
.type EngineziModelziAABB_aabbFromPoints_info, @object
EngineziModelziAABB_aabbFromPoints_info:
.Lcmf0:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcmf2
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_aabbFromPoints_ct
	je .Lcmf3
.Lcmf4:
	incq EngineziModelziAABB_aabbFromPoints_ct+40
	incq KNOWN_CALL_ctr
	movq $smey_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziModelziAABB_zdwaabbFromPoints_info
.Lcmf2:
	movl $EngineziModelziAABB_aabbFromPoints_closure,%ebx
	jmp *-8(%r13)
.Lcmf3:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_aabbFromPoints_ct+56
	movq $EngineziModelziAABB_aabbFromPoints_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_aabbFromPoints_ct
	jmp .Lcmf4
	.size EngineziModelziAABB_aabbFromPoints_info, .-EngineziModelziAABB_aabbFromPoints_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_intersecting_closure
.type EngineziModelziAABB_intersecting_closure, @object
EngineziModelziAABB_intersecting_closure:
	.quad	EngineziModelziAABB_intersecting_info
.section .rodata
	.align 8
.align 1
cmin_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	105
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
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmip_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_intersecting_ct
.type EngineziModelziAABB_intersecting_ct, @object
EngineziModelziAABB_intersecting_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cmin_str
	.quad	cmip_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	131019
	.quad	32
smf9_info:
.Lcmit:
	movss 56(%rbp),%xmm0
	ucomiss 32(%rbp),%xmm0
	ja .Lcmiv
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $96,%rbp
	jmp *0(%rbp)
.Lcmiv:
	movss 72(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnmiM
	jb .Lcmix
.LnmiM:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $96,%rbp
	jmp *0(%rbp)
.Lcmix:
	movss 48(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	ja .Lcmiz
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $96,%rbp
	jmp *0(%rbp)
.Lcmiz:
	movss 64(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnmiQ
	jb .LcmiB
.LnmiQ:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $96,%rbp
	jmp *0(%rbp)
.LcmiB:
	movss 88(%rbp),%xmm0
	ucomiss 40(%rbp),%xmm0
	ja .LcmiE
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $96,%rbp
	jmp *0(%rbp)
.LcmiE:
	movss 80(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	setb %al
	setnp %bl
	andb %al,%bl
	movzbl %bl,%eax
	shlq $3,%rax
	movq ghczmprim_GHCziTypes_Bool_closure_tbl(%rax),%rbx
	addq $96,%rbp
	jmp *0(%rbp)
	.size smf9_info, .-smf9_info
.text
	.align 8
	.quad	130955
	.quad	32
smfa_info:
.LcmiZ:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smf9_info,0(%rbp)
	testq $7,%rbx
	jne smf9_info
	jmp *(%rbx)
	.size smfa_info, .-smfa_info
.text
	.align 8
	.quad	130827
	.quad	32
smfb_info:
.Lcmj8:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smfa_info,0(%rbp)
	testq $7,%rbx
	jne smfa_info
	jmp *(%rbx)
	.size smfb_info, .-smfb_info
.text
	.align 8
	.quad	32713
	.quad	32
smfc_info:
.Lcmjh:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smfb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smfb_info
	jmp *(%rbx)
	.size smfc_info, .-smfc_info
.text
	.align 8
	.quad	32457
	.quad	32
smfd_info:
.Lcmjp:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $smfc_info,0(%rbp)
	testq $7,%rbx
	jne smfc_info
	jmp *(%rbx)
	.size smfd_info, .-smfd_info
.text
	.align 8
	.quad	32393
	.quad	32
smfe_info:
.Lcmjy:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smfd_info,0(%rbp)
	testq $7,%rbx
	jne smfd_info
	jmp *(%rbx)
	.size smfe_info, .-smfe_info
.text
	.align 8
	.quad	32265
	.quad	32
smff_info:
.LcmjH:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smfe_info,0(%rbp)
	testq $7,%rbx
	jne smfe_info
	jmp *(%rbx)
	.size smff_info, .-smff_info
.text
	.align 8
	.quad	8071
	.quad	32
smfg_info:
.LcmjQ:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smff_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smff_info
	jmp *(%rbx)
	.size smfg_info, .-smfg_info
.text
	.align 8
	.quad	4038
	.quad	32
smfh_info:
.LcmjY:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smfg_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smfg_info
	jmp *(%rbx)
	.size smfh_info, .-smfh_info
.text
	.align 8
	.quad	1990
	.quad	32
smfi_info:
.Lcmk5:
	movq 48(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,48(%rbp)
	movq %rax,%rbx
	movq $smfh_info,0(%rbp)
	testq $7,%rbx
	jne smfh_info
	jmp *(%rbx)
	.size smfi_info, .-smfi_info
.text
	.align 8
	.quad	1926
	.quad	32
smfj_info:
.Lcmke:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smfi_info,0(%rbp)
	testq $7,%rbx
	jne smfi_info
	jmp *(%rbx)
	.size smfj_info, .-smfj_info
.text
	.align 8
	.quad	1798
	.quad	32
smfk_info:
.Lcmkn:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smfj_info,0(%rbp)
	testq $7,%rbx
	jne smfj_info
	jmp *(%rbx)
	.size smfk_info, .-smfk_info
.text
	.align 8
	.quad	452
	.quad	32
smfl_info:
.Lcmkw:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smfk_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smfk_info
	jmp *(%rbx)
	.size smfl_info, .-smfl_info
.text
	.align 8
	.quad	196
	.quad	32
smfm_info:
.LcmkE:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $smfl_info,0(%rbp)
	testq $7,%rbx
	jne smfl_info
	jmp *(%rbx)
	.size smfm_info, .-smfm_info
.text
	.align 8
	.quad	132
	.quad	32
smfn_info:
.LcmkN:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smfm_info,0(%rbp)
	testq $7,%rbx
	jne smfm_info
	jmp *(%rbx)
	.size smfn_info, .-smfn_info
.text
	.align 8
	.quad	4
	.quad	32
smfo_info:
.LcmkW:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smfn_info,0(%rbp)
	testq $7,%rbx
	jne smfn_info
	jmp *(%rbx)
	.size smfo_info, .-smfo_info
.text
	.align 8
	.quad	2
	.quad	32
smfp_info:
.Lcml5:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smfo_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smfo_info
	jmp *(%rbx)
	.size smfp_info, .-smfp_info
.text
	.align 8
	.quad	1
	.quad	32
smfq_info:
.Lcmld:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smfp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smfp_info
	jmp *(%rbx)
	.size smfq_info, .-smfq_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziModelziAABB_intersecting_info
.type EngineziModelziAABB_intersecting_info, @object
EngineziModelziAABB_intersecting_info:
.Lcmlk:
	leaq -96(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcmlm
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_intersecting_ct
	je .Lcmln
.Lcmlo:
	incq EngineziModelziAABB_intersecting_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $smfq_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smfq_info
	jmp *(%rbx)
.Lcmlm:
	movl $EngineziModelziAABB_intersecting_closure,%ebx
	jmp *-8(%r13)
.Lcmln:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_intersecting_ct+56
	movq $EngineziModelziAABB_intersecting_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_intersecting_ct
	jmp .Lcmlo
	.size EngineziModelziAABB_intersecting_info, .-EngineziModelziAABB_intersecting_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_closure
.type EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_closure, @object
EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_closure:
	.quad	EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.section .rodata
	.align 8
.align 1
cmoC_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	110
	.byte	121
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	71
	.byte	101
	.byte	116
	.byte	95
	.byte	36
	.byte	115
	.byte	97
	.byte	110
	.byte	121
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	71
	.byte	101
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	66
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmoE_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct
.type EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct, @object
EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct:
	.quad	0
	.quad	7
	.quad	2
	.quad	cmoC_str
	.quad	cmoE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_slow
.type EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_slow, @object
EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_slow:
.LcmoH:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
	.size EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_slow, .-EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_slow
.text
	.align 8
	.quad	768979
	.quad	32
smly_info:
.LcmoK:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcmoO
	addq $2,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 112(%rbp),%xmm0
	ucomiss 32(%rbp),%xmm0
	ja .LcmoQ
	incq KNOWN_CALL_ctr
	movq 136(%rbp),%r14
	movq 128(%rbp),%rsi
	movq 120(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 144(%rbp),%r9
	movq 152(%rbp),%rax
	movq %rax,144(%rbp)
	movq 104(%rbp),%rax
	movq %rax,152(%rbp)
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmoO:
	movq $16,192(%r13)
.LcmoM:
	jmp *-16(%r13)
.LcmoQ:
	movss 96(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .Lnmp7
	jb .LcmoS
.Lnmp7:
	incq KNOWN_CALL_ctr
	movq 136(%rbp),%r14
	movq 128(%rbp),%rsi
	movq 120(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 144(%rbp),%r9
	movq 152(%rbp),%rax
	movq %rax,144(%rbp)
	movq 104(%rbp),%rax
	movq %rax,152(%rbp)
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmoS:
	movss 64(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	ja .LcmoU
	incq KNOWN_CALL_ctr
	movq 136(%rbp),%r14
	movq 128(%rbp),%rsi
	movq 120(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 144(%rbp),%r9
	movq 152(%rbp),%rax
	movq %rax,144(%rbp)
	movq 104(%rbp),%rax
	movq %rax,152(%rbp)
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmoU:
	movss 88(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .Lnmpf
	jb .LcmoW
.Lnmpf:
	incq KNOWN_CALL_ctr
	movq 136(%rbp),%r14
	movq 128(%rbp),%rsi
	movq 120(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 144(%rbp),%r9
	movq 152(%rbp),%rax
	movq %rax,144(%rbp)
	movq 104(%rbp),%rax
	movq %rax,152(%rbp)
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmoW:
	movss 56(%rbp),%xmm0
	ucomiss 48(%rbp),%xmm0
	ja .LcmoY
	incq KNOWN_CALL_ctr
	movq 136(%rbp),%r14
	movq 128(%rbp),%rsi
	movq 120(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 144(%rbp),%r9
	movq 152(%rbp),%rax
	movq %rax,144(%rbp)
	movq 104(%rbp),%rax
	movq %rax,152(%rbp)
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmoY:
	movss 80(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnmpn
	jb .Lcmp1
.Lnmpn:
	incq KNOWN_CALL_ctr
	movq 136(%rbp),%r14
	movq 128(%rbp),%rsi
	movq 120(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 144(%rbp),%r9
	movq 152(%rbp),%rax
	movq %rax,144(%rbp)
	movq 104(%rbp),%rax
	movq %rax,152(%rbp)
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.Lcmp1:
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $160,%rbp
	jmp *0(%rbp)
	.size smly_info, .-smly_info
.text
	.align 8
	.quad	768915
	.quad	32
smlz_info:
.Lcmpt:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smly_info,0(%rbp)
	testq $7,%rbx
	jne smly_info
	jmp *(%rbx)
	.size smlz_info, .-smlz_info
.text
	.align 8
	.quad	768787
	.quad	32
smlA_info:
.LcmpC:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smlz_info,0(%rbp)
	testq $7,%rbx
	jne smlz_info
	jmp *(%rbx)
	.size smlA_info, .-smlA_info
.text
	.align 8
	.quad	192209
	.quad	32
smlB_info:
.LcmpL:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smlA_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smlA_info
	jmp *(%rbx)
	.size smlB_info, .-smlB_info
.text
	.align 8
	.quad	191697
	.quad	32
smlC_info:
.LcmpT:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $smlB_info,0(%rbp)
	testq $7,%rbx
	jne smlB_info
	jmp *(%rbx)
	.size smlC_info, .-smlC_info
.text
	.align 8
	.quad	191633
	.quad	32
smlD_info:
.Lcmq2:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smlC_info,0(%rbp)
	testq $7,%rbx
	jne smlC_info
	jmp *(%rbx)
	.size smlD_info, .-smlD_info
.text
	.align 8
	.quad	191505
	.quad	32
smlE_info:
.Lcmqb:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smlD_info,0(%rbp)
	testq $7,%rbx
	jne smlD_info
	jmp *(%rbx)
	.size smlE_info, .-smlE_info
.text
	.align 8
	.quad	47887
	.quad	32
smlF_info:
.Lcmqk:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smlE_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smlE_info
	jmp *(%rbx)
	.size smlF_info, .-smlF_info
.text
	.align 8
	.quad	11981
	.quad	32
slvV_info:
.Lcmqs:
	movq %rbx,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smlF_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smlF_info
	jmp *(%rbx)
	.size slvV_info, .-slvV_info
.text
	.align 8
	.quad	5964
	.quad	32
slvE_info:
.Lcmqz:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 96(%rbp),%rax
	movq %rbx,96(%rbp)
	movq %rax,%rbx
	movq $slvV_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slvV_info
	jmp *(%rbx)
	.size slvE_info, .-slvE_info
.text
	.align 8
	.quad	2955
	.quad	32
slvD_info:
.LcmqI:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 80(%rbp),%rax
	movq %rbx,80(%rbp)
	movq %rax,%rbx
	movq $slvE_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slvE_info
	jmp *(%rbx)
	.size slvD_info, .-slvD_info
.text
	.align 8
	.quad	458
	.quad	32
slvC_info:
.LcmqR:
	movq %rbx,0(%rbp)
	movq 40(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $slvD_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slvD_info
	jmp *(%rbx)
	.size slvC_info, .-slvC_info
.text
	.align 8
	.quad	201
	.quad	32
slvB_info:
.Lcmr0:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $slvC_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slvC_info
	jmp *(%rbx)
	.size slvB_info, .-slvB_info
.text
	.align 8
	.quad	72
	.quad	32
slvA_info:
.Lcmr9:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $slvB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slvB_info
	jmp *(%rbx)
	.size slvA_info, .-slvA_info
.text
	.align 8
	.quad	7
	.quad	32
slvz_info:
.Lcmri:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $slvA_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slvA_info
	jmp *(%rbx)
	.size slvz_info, .-slvz_info
.text
	.align 8
	.quad	6
	.quad	32
smlw_info:
.Lcmrt:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcmru
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $56,%rbp
	jmp *0(%rbp)
.Lcmru:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 48(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,48(%rbp)
	movq %rax,%rbx
	movq $slvz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slvz_info
	jmp *(%rbx)
	.size smlw_info, .-smlw_info
.text
	.align 8
	.long	EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_slow-(EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info)+0
	.long	0
	.quad	7
	.quad	0
	.quad	30064771072
	.quad	0
	.quad	15
.globl EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.type EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info, @object
EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info:
.LcmrH:
	leaq -144(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmrJ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct
	je .LcmrK
.LcmrL:
	incq EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq 8(%rbp),%rbx
	movq %r14,8(%rbp)
	movq $smlw_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne smlw_info
	jmp *(%rbx)
.LcmrJ:
	movl $EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcmrK:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct+56
	movq $EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_ct
	jmp .LcmrL
	.size EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info, .-EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersectGet_closure
.type EngineziModelziAABB_anyIntersectGet_closure, @object
EngineziModelziAABB_anyIntersectGet_closure:
	.quad	EngineziModelziAABB_anyIntersectGet_info
.section .rodata
	.align 8
.align 1
cmvk_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	110
	.byte	121
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	71
	.byte	101
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmvm_str:
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersectGet_ct
.type EngineziModelziAABB_anyIntersectGet_ct, @object
EngineziModelziAABB_anyIntersectGet_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cmvk_str
	.quad	cmvm_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	998355
	.quad	32
smrU_info:
.Lcmvq:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcmvu
	addq $2,EngineziModelziAABB_anyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 88(%rbp),%xmm0
	ucomiss 32(%rbp),%xmm0
	ja .Lcmvw
	incq KNOWN_CALL_ctr
	movq 152(%rbp),%rax
	movq 144(%rbp),%rbx
	movq %rbx,152(%rbp)
	movq %rax,144(%rbp)
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 136(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 80(%rbp),%r9
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.Lcmvu:
	movq $16,192(%r13)
.Lcmvs:
	jmp *-16(%r13)
.Lcmvw:
	movss 112(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .Lnmw5
	jb .Lcmvy
.Lnmw5:
	incq KNOWN_CALL_ctr
	movq 152(%rbp),%rax
	movq 144(%rbp),%rbx
	movq %rbx,152(%rbp)
	movq %rax,144(%rbp)
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 136(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 80(%rbp),%r9
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.Lcmvy:
	movss 64(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	ja .LcmvA
	incq KNOWN_CALL_ctr
	movq 152(%rbp),%rax
	movq 144(%rbp),%rbx
	movq %rbx,152(%rbp)
	movq %rax,144(%rbp)
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 136(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 80(%rbp),%r9
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmvA:
	movss 104(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .Lnmwb
	jb .LcmvC
.Lnmwb:
	incq KNOWN_CALL_ctr
	movq 152(%rbp),%rax
	movq 144(%rbp),%rbx
	movq %rbx,152(%rbp)
	movq %rax,144(%rbp)
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 136(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 80(%rbp),%r9
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmvC:
	movss 56(%rbp),%xmm0
	ucomiss 48(%rbp),%xmm0
	ja .LcmvE
	incq KNOWN_CALL_ctr
	movq 152(%rbp),%rax
	movq 144(%rbp),%rbx
	movq %rbx,152(%rbp)
	movq %rax,144(%rbp)
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 136(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 80(%rbp),%r9
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmvE:
	movss 96(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnmwh
	jb .LcmvH
.Lnmwh:
	incq KNOWN_CALL_ctr
	movq 152(%rbp),%rax
	movq 144(%rbp),%rbx
	movq %rbx,152(%rbp)
	movq %rax,144(%rbp)
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 136(%rbp),%rdi
	movq 72(%rbp),%r8
	movq 80(%rbp),%r9
	addq $144,%rbp
	addq $-16,%r12
	addq $-2,EngineziModelziAABB_anyIntersectGet_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp EngineziModelziAABB_anyIntersectGetzuzdsanyIntersectGet_info
.LcmvH:
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $160,%rbp
	jmp *0(%rbp)
	.size smrU_info, .-smrU_info
.text
	.align 8
	.quad	998291
	.quad	32
smrV_info:
.Lcmwm:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smrU_info,0(%rbp)
	testq $7,%rbx
	jne smrU_info
	jmp *(%rbx)
	.size smrV_info, .-smrV_info
.text
	.align 8
	.quad	998163
	.quad	32
smrW_info:
.Lcmwv:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smrV_info,0(%rbp)
	testq $7,%rbx
	jne smrV_info
	jmp *(%rbx)
	.size smrW_info, .-smrW_info
.text
	.align 8
	.quad	249553
	.quad	32
smrX_info:
.LcmwE:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smrW_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smrW_info
	jmp *(%rbx)
	.size smrX_info, .-smrX_info
.text
	.align 8
	.quad	249041
	.quad	32
smrY_info:
.LcmwM:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $smrX_info,0(%rbp)
	testq $7,%rbx
	jne smrX_info
	jmp *(%rbx)
	.size smrY_info, .-smrY_info
.text
	.align 8
	.quad	248977
	.quad	32
smrZ_info:
.LcmwV:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smrY_info,0(%rbp)
	testq $7,%rbx
	jne smrY_info
	jmp *(%rbx)
	.size smrZ_info, .-smrZ_info
.text
	.align 8
	.quad	248849
	.quad	32
sms0_info:
.Lcmx4:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smrZ_info,0(%rbp)
	testq $7,%rbx
	jne smrZ_info
	jmp *(%rbx)
	.size sms0_info, .-sms0_info
.text
	.align 8
	.quad	62223
	.quad	32
sms1_info:
.Lcmxd:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sms0_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sms0_info
	jmp *(%rbx)
	.size sms1_info, .-sms1_info
.text
	.align 8
	.quad	15565
	.quad	32
slxt_info:
.Lcmxl:
	movq %rbx,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sms1_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sms1_info
	jmp *(%rbx)
	.size slxt_info, .-slxt_info
.text
	.align 8
	.quad	7756
	.quad	32
slxc_info:
.Lcmxs:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 96(%rbp),%rax
	movq %rbx,96(%rbp)
	movq %rax,%rbx
	movq $slxt_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slxt_info
	jmp *(%rbx)
	.size slxc_info, .-slxc_info
.text
	.align 8
	.quad	3851
	.quad	32
slxb_info:
.LcmxB:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $slxc_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slxc_info
	jmp *(%rbx)
	.size slxb_info, .-slxb_info
.text
	.align 8
	.quad	1802
	.quad	32
slxa_info:
.LcmxK:
	movq %rbx,0(%rbp)
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $slxb_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slxb_info
	jmp *(%rbx)
	.size slxa_info, .-slxa_info
.text
	.align 8
	.quad	456
	.quad	32
sms2_info:
.LcmxT:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $slxa_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne slxa_info
	jmp *(%rbx)
	.size sms2_info, .-sms2_info
.text
	.align 8
	.quad	199
	.quad	32
slx9_info:
.Lcmy1:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $sms2_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sms2_info
	jmp *(%rbx)
	.size slx9_info, .-slx9_info
.text
	.align 8
	.quad	70
	.quad	32
slx8_info:
.Lcmya:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $slx9_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slx9_info
	jmp *(%rbx)
	.size slx8_info, .-slx8_info
.text
	.align 8
	.quad	5
	.quad	32
slx7_info:
.Lcmyj:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $slx8_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slx8_info
	jmp *(%rbx)
	.size slx7_info, .-slx7_info
.text
	.align 8
	.quad	3
	.quad	32
sms3_info:
.Lcmys:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $slx7_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne slx7_info
	jmp *(%rbx)
	.size sms3_info, .-sms3_info
.text
	.align 8
	.quad	2
	.quad	32
sms4_info:
.LcmyA:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sms3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sms3_info
	jmp *(%rbx)
	.size sms4_info, .-sms4_info
.text
	.align 8
	.quad	1
	.quad	32
smrS_info:
.LcmyJ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcmyK
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcmyK:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sms4_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sms4_info
	jmp *(%rbx)
	.size smrS_info, .-smrS_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziModelziAABB_anyIntersectGet_info
.type EngineziModelziAABB_anyIntersectGet_info, @object
EngineziModelziAABB_anyIntersectGet_info:
.LcmyX:
	leaq -160(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmyZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_anyIntersectGet_ct
	je .Lcmz0
.Lcmz1:
	incq EngineziModelziAABB_anyIntersectGet_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $smrS_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smrS_info
	jmp *(%rbx)
.LcmyZ:
	movl $EngineziModelziAABB_anyIntersectGet_closure,%ebx
	jmp *-8(%r13)
.Lcmz0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_anyIntersectGet_ct+56
	movq $EngineziModelziAABB_anyIntersectGet_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_anyIntersectGet_ct
	jmp .Lcmz1
	.size EngineziModelziAABB_anyIntersectGet_info, .-EngineziModelziAABB_anyIntersectGet_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersectzuzdsanyIntersect_closure
.type EngineziModelziAABB_anyIntersectzuzdsanyIntersect_closure, @object
EngineziModelziAABB_anyIntersectzuzdsanyIntersect_closure:
	.quad	EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.section .rodata
	.align 8
.align 1
cmCg_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	110
	.byte	121
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	95
	.byte	36
	.byte	115
	.byte	97
	.byte	110
	.byte	121
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	67
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmCi_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct
.type EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct, @object
EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct:
	.quad	0
	.quad	7
	.quad	2
	.quad	cmCg_str
	.quad	cmCi_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziModelziAABB_anyIntersectzuzdsanyIntersect_slow
.type EngineziModelziAABB_anyIntersectzuzdsanyIntersect_slow, @object
EngineziModelziAABB_anyIntersectzuzdsanyIntersect_slow:
.LcmCl:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
	.size EngineziModelziAABB_anyIntersectzuzdsanyIntersect_slow, .-EngineziModelziAABB_anyIntersectzuzdsanyIntersect_slow
.text
	.align 8
	.quad	384978
	.quad	32
smzb_info:
.LcmCo:
	movss 104(%rbp),%xmm0
	ucomiss 32(%rbp),%xmm0
	ja .LcmCq
	incq KNOWN_CALL_ctr
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 112(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 136(%rbp),%r9
	movq 144(%rbp),%rax
	movq %rax,136(%rbp)
	movq 96(%rbp),%rax
	movq %rax,144(%rbp)
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmCq:
	movss 88(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnmCH
	jb .LcmCs
.LnmCH:
	incq KNOWN_CALL_ctr
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 112(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 136(%rbp),%r9
	movq 144(%rbp),%rax
	movq %rax,136(%rbp)
	movq 96(%rbp),%rax
	movq %rax,144(%rbp)
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmCs:
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	ja .LcmCu
	incq KNOWN_CALL_ctr
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 112(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 136(%rbp),%r9
	movq 144(%rbp),%rax
	movq %rax,136(%rbp)
	movq 96(%rbp),%rax
	movq %rax,144(%rbp)
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmCu:
	movss 80(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnmCP
	jb .LcmCw
.LnmCP:
	incq KNOWN_CALL_ctr
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 112(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 136(%rbp),%r9
	movq 144(%rbp),%rax
	movq %rax,136(%rbp)
	movq 96(%rbp),%rax
	movq %rax,144(%rbp)
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmCw:
	movss 48(%rbp),%xmm0
	ucomiss 40(%rbp),%xmm0
	ja .LcmCy
	incq KNOWN_CALL_ctr
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 112(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 136(%rbp),%r9
	movq 144(%rbp),%rax
	movq %rax,136(%rbp)
	movq 96(%rbp),%rax
	movq %rax,144(%rbp)
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmCy:
	movss 72(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnmCX
	jb .LcmCB
.LnmCX:
	incq KNOWN_CALL_ctr
	movq 128(%rbp),%r14
	movq 120(%rbp),%rsi
	movq 112(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 136(%rbp),%r9
	movq 144(%rbp),%rax
	movq %rax,136(%rbp)
	movq 96(%rbp),%rax
	movq %rax,144(%rbp)
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmCB:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $152,%rbp
	jmp *0(%rbp)
	.size smzb_info, .-smzb_info
.text
	.align 8
	.quad	384914
	.quad	32
smzc_info:
.LcmD2:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smzb_info,0(%rbp)
	testq $7,%rbx
	jne smzb_info
	jmp *(%rbx)
	.size smzc_info, .-smzc_info
.text
	.align 8
	.quad	384786
	.quad	32
smzd_info:
.LcmDb:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smzc_info,0(%rbp)
	testq $7,%rbx
	jne smzc_info
	jmp *(%rbx)
	.size smzd_info, .-smzd_info
.text
	.align 8
	.quad	96208
	.quad	32
smze_info:
.LcmDk:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smzd_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smzd_info
	jmp *(%rbx)
	.size smze_info, .-smze_info
.text
	.align 8
	.quad	95952
	.quad	32
smzf_info:
.LcmDs:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $smze_info,0(%rbp)
	testq $7,%rbx
	jne smze_info
	jmp *(%rbx)
	.size smzf_info, .-smzf_info
.text
	.align 8
	.quad	95888
	.quad	32
smzg_info:
.LcmDB:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smzf_info,0(%rbp)
	testq $7,%rbx
	jne smzf_info
	jmp *(%rbx)
	.size smzg_info, .-smzg_info
.text
	.align 8
	.quad	95760
	.quad	32
smzh_info:
.LcmDK:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smzg_info,0(%rbp)
	testq $7,%rbx
	jne smzg_info
	jmp *(%rbx)
	.size smzh_info, .-smzh_info
.text
	.align 8
	.quad	23950
	.quad	32
smzi_info:
.LcmDT:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smzh_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smzh_info
	jmp *(%rbx)
	.size smzi_info, .-smzi_info
.text
	.align 8
	.quad	11981
	.quad	32
smzj_info:
.LcmE1:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smzi_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smzi_info
	jmp *(%rbx)
	.size smzj_info, .-smzj_info
.text
	.align 8
	.quad	5964
	.quad	32
slyB_info:
.LcmE8:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 96(%rbp),%rax
	movq %rbx,96(%rbp)
	movq %rax,%rbx
	movq $smzj_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smzj_info
	jmp *(%rbx)
	.size slyB_info, .-slyB_info
.text
	.align 8
	.quad	2955
	.quad	32
slyA_info:
.LcmEh:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 80(%rbp),%rax
	movq %rbx,80(%rbp)
	movq %rax,%rbx
	movq $slyB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slyB_info
	jmp *(%rbx)
	.size slyA_info, .-slyA_info
.text
	.align 8
	.quad	458
	.quad	32
slyz_info:
.LcmEq:
	movq %rbx,0(%rbp)
	movq 40(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $slyA_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slyA_info
	jmp *(%rbx)
	.size slyz_info, .-slyz_info
.text
	.align 8
	.quad	201
	.quad	32
slyy_info:
.LcmEz:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $slyz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slyz_info
	jmp *(%rbx)
	.size slyy_info, .-slyy_info
.text
	.align 8
	.quad	72
	.quad	32
slyx_info:
.LcmEI:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $slyy_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slyy_info
	jmp *(%rbx)
	.size slyx_info, .-slyx_info
.text
	.align 8
	.quad	7
	.quad	32
slyw_info:
.LcmER:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $slyx_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slyx_info
	jmp *(%rbx)
	.size slyw_info, .-slyw_info
.text
	.align 8
	.quad	6
	.quad	32
smz9_info:
.LcmF2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcmF3
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $56,%rbp
	jmp *0(%rbp)
.LcmF3:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 48(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,48(%rbp)
	movq %rax,%rbx
	movq $slyw_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slyw_info
	jmp *(%rbx)
	.size smz9_info, .-smz9_info
.text
	.align 8
	.long	EngineziModelziAABB_anyIntersectzuzdsanyIntersect_slow-(EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info)+0
	.long	0
	.quad	7
	.quad	0
	.quad	30064771072
	.quad	0
	.quad	15
.globl EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.type EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info, @object
EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info:
.LcmFg:
	leaq -136(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmFi
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct
	je .LcmFj
.LcmFk:
	incq EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq 8(%rbp),%rbx
	movq %r14,8(%rbp)
	movq $smz9_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne smz9_info
	jmp *(%rbx)
.LcmFi:
	movl $EngineziModelziAABB_anyIntersectzuzdsanyIntersect_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcmFj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct+56
	movq $EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_anyIntersectzuzdsanyIntersect_ct
	jmp .LcmFk
	.size EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info, .-EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersect_closure
.type EngineziModelziAABB_anyIntersect_closure, @object
EngineziModelziAABB_anyIntersect_closure:
	.quad	EngineziModelziAABB_anyIntersect_info
.section .rodata
	.align 8
.align 1
cmIU_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	97
	.byte	110
	.byte	121
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmIW_str:
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_anyIntersect_ct
.type EngineziModelziAABB_anyIntersect_ct, @object
EngineziModelziAABB_anyIntersect_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cmIU_str
	.quad	cmIW_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	499666
	.quad	32
smFt_info:
.LcmJ0:
	movss 80(%rbp),%xmm0
	ucomiss 32(%rbp),%xmm0
	ja .LcmJ2
	incq KNOWN_CALL_ctr
	movq 144(%rbp),%rax
	movq 136(%rbp),%rbx
	movq %rbx,144(%rbp)
	movq %rax,136(%rbp)
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	movq 128(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 72(%rbp),%r9
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmJ2:
	movss 104(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnmJB
	jb .LcmJ4
.LnmJB:
	incq KNOWN_CALL_ctr
	movq 144(%rbp),%rax
	movq 136(%rbp),%rbx
	movq %rbx,144(%rbp)
	movq %rax,136(%rbp)
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	movq 128(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 72(%rbp),%r9
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmJ4:
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	ja .LcmJ6
	incq KNOWN_CALL_ctr
	movq 144(%rbp),%rax
	movq 136(%rbp),%rbx
	movq %rbx,144(%rbp)
	movq %rax,136(%rbp)
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	movq 128(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 72(%rbp),%r9
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmJ6:
	movss 96(%rbp),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnmJH
	jb .LcmJ8
.LnmJH:
	incq KNOWN_CALL_ctr
	movq 144(%rbp),%rax
	movq 136(%rbp),%rbx
	movq %rbx,144(%rbp)
	movq %rax,136(%rbp)
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	movq 128(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 72(%rbp),%r9
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmJ8:
	movss 48(%rbp),%xmm0
	ucomiss 40(%rbp),%xmm0
	ja .LcmJa
	incq KNOWN_CALL_ctr
	movq 144(%rbp),%rax
	movq 136(%rbp),%rbx
	movq %rbx,144(%rbp)
	movq %rax,136(%rbp)
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	movq 128(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 72(%rbp),%r9
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmJa:
	movss 88(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnmJN
	jb .LcmJd
.LnmJN:
	incq KNOWN_CALL_ctr
	movq 144(%rbp),%rax
	movq 136(%rbp),%rbx
	movq %rbx,144(%rbp)
	movq %rax,136(%rbp)
	movq 120(%rbp),%r14
	movq 112(%rbp),%rsi
	movq 128(%rbp),%rdi
	movq 64(%rbp),%r8
	movq 72(%rbp),%r9
	addq $136,%rbp
	jmp EngineziModelziAABB_anyIntersectzuzdsanyIntersect_info
.LcmJd:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $152,%rbp
	jmp *0(%rbp)
	.size smFt_info, .-smFt_info
.text
	.align 8
	.quad	499602
	.quad	32
smFu_info:
.LcmJR:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smFt_info,0(%rbp)
	testq $7,%rbx
	jne smFt_info
	jmp *(%rbx)
	.size smFu_info, .-smFu_info
.text
	.align 8
	.quad	499474
	.quad	32
smFv_info:
.LcmK0:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smFu_info,0(%rbp)
	testq $7,%rbx
	jne smFu_info
	jmp *(%rbx)
	.size smFv_info, .-smFv_info
.text
	.align 8
	.quad	124880
	.quad	32
smFw_info:
.LcmK9:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smFv_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smFv_info
	jmp *(%rbx)
	.size smFw_info, .-smFw_info
.text
	.align 8
	.quad	124624
	.quad	32
smFx_info:
.LcmKh:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $smFw_info,0(%rbp)
	testq $7,%rbx
	jne smFw_info
	jmp *(%rbx)
	.size smFx_info, .-smFx_info
.text
	.align 8
	.quad	124560
	.quad	32
smFy_info:
.LcmKq:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $smFx_info,0(%rbp)
	testq $7,%rbx
	jne smFx_info
	jmp *(%rbx)
	.size smFy_info, .-smFy_info
.text
	.align 8
	.quad	124432
	.quad	32
smFz_info:
.LcmKz:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $smFy_info,0(%rbp)
	testq $7,%rbx
	jne smFy_info
	jmp *(%rbx)
	.size smFz_info, .-smFz_info
.text
	.align 8
	.quad	31118
	.quad	32
smFA_info:
.LcmKI:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smFz_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smFz_info
	jmp *(%rbx)
	.size smFA_info, .-smFA_info
.text
	.align 8
	.quad	15565
	.quad	32
smFB_info:
.LcmKQ:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smFA_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smFA_info
	jmp *(%rbx)
	.size smFB_info, .-smFB_info
.text
	.align 8
	.quad	7756
	.quad	32
slA8_info:
.LcmKX:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 96(%rbp),%rax
	movq %rbx,96(%rbp)
	movq %rax,%rbx
	movq $smFB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smFB_info
	jmp *(%rbx)
	.size slA8_info, .-slA8_info
.text
	.align 8
	.quad	3851
	.quad	32
slA7_info:
.LcmL6:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $slA8_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slA8_info
	jmp *(%rbx)
	.size slA7_info, .-slA7_info
.text
	.align 8
	.quad	1802
	.quad	32
slA6_info:
.LcmLf:
	movq %rbx,0(%rbp)
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $slA7_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slA7_info
	jmp *(%rbx)
	.size slA6_info, .-slA6_info
.text
	.align 8
	.quad	456
	.quad	32
smFC_info:
.LcmLo:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $slA6_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne slA6_info
	jmp *(%rbx)
	.size smFC_info, .-smFC_info
.text
	.align 8
	.quad	199
	.quad	32
slA5_info:
.LcmLw:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $smFC_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smFC_info
	jmp *(%rbx)
	.size slA5_info, .-slA5_info
.text
	.align 8
	.quad	70
	.quad	32
slA4_info:
.LcmLF:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $slA5_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slA5_info
	jmp *(%rbx)
	.size slA4_info, .-slA4_info
.text
	.align 8
	.quad	5
	.quad	32
slA3_info:
.LcmLO:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $slA4_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slA4_info
	jmp *(%rbx)
	.size slA3_info, .-slA3_info
.text
	.align 8
	.quad	3
	.quad	32
smFD_info:
.LcmLX:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $slA3_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne slA3_info
	jmp *(%rbx)
	.size smFD_info, .-smFD_info
.text
	.align 8
	.quad	2
	.quad	32
smFE_info:
.LcmM5:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $smFD_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smFD_info
	jmp *(%rbx)
	.size smFE_info, .-smFE_info
.text
	.align 8
	.quad	1
	.quad	32
smFr_info:
.LcmMe:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcmMf
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcmMf:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $smFE_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne smFE_info
	jmp *(%rbx)
	.size smFr_info, .-smFr_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziModelziAABB_anyIntersect_info
.type EngineziModelziAABB_anyIntersect_info, @object
EngineziModelziAABB_anyIntersect_info:
.LcmMs:
	leaq -152(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmMu
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_anyIntersect_ct
	je .LcmMv
.LcmMw:
	incq EngineziModelziAABB_anyIntersect_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $smFr_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne smFr_info
	jmp *(%rbx)
.LcmMu:
	movl $EngineziModelziAABB_anyIntersect_closure,%ebx
	jmp *-8(%r13)
.LcmMv:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_anyIntersect_ct+56
	movq $EngineziModelziAABB_anyIntersect_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_anyIntersect_ct
	jmp .LcmMw
	.size EngineziModelziAABB_anyIntersect_info, .-EngineziModelziAABB_anyIntersect_info
.data
	.align 8
.align 1
.globl EngineziModelziAABB_AABB_closure
.type EngineziModelziAABB_AABB_closure, @object
EngineziModelziAABB_AABB_closure:
	.quad	EngineziModelziAABB_AABB_info
.section .rodata
	.align 8
.align 1
cmMI_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	107
	.byte	102
	.byte	68
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmML_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziAABB_AABB_ct
.type EngineziModelziAABB_AABB_ct, @object
EngineziModelziAABB_AABB_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cmMI_str
	.quad	cmML_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
EngineziModelziAABB_AABB_info:
.LcmMQ:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcmMV
	addq $3,EngineziModelziAABB_AABB_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziAABB_AABB_ct
	je .LcmMX
.LcmMZ:
	incq EngineziModelziAABB_AABB_ct+40
	incq RET_NEW_ctr
	movq $EngineziModelziAABB_AABB_con_info,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -15(%r12),%rbx
	jmp *0(%rbp)
.LcmMV:
	movq $24,192(%r13)
.LcmMT:
	movl $EngineziModelziAABB_AABB_closure,%ebx
	jmp *-8(%r13)
.LcmMX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziAABB_AABB_ct+56
	movq $EngineziModelziAABB_AABB_ct,ticky_entry_ctrs
	movq $1,EngineziModelziAABB_AABB_ct
	jmp .LcmMZ
	.size EngineziModelziAABB_AABB_info, .-EngineziModelziAABB_AABB_info
.section .rodata
	.align 8
.align 1
imN5_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	0
.text
	.align 8
	.long	imN5_str-(EngineziModelziAABB_AABB_con_info)+0
	.long	0
	.quad	2
	.quad	4
.globl EngineziModelziAABB_AABB_con_info
.type EngineziModelziAABB_AABB_con_info, @object
EngineziModelziAABB_AABB_con_info:
.LcmN8:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziModelziAABB_AABB_con_info, .-EngineziModelziAABB_AABB_con_info
.section .rodata
	.align 8
.align 1
imNa_str:
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
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	46
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	0
.text
	.align 8
	.long	imNa_str-(EngineziModelziAABB_AABB_static_info)+0
	.long	0
	.quad	2
	.quad	7
.globl EngineziModelziAABB_AABB_static_info
.type EngineziModelziAABB_AABB_static_info, @object
EngineziModelziAABB_AABB_static_info:
.LcmNd:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziModelziAABB_AABB_static_info, .-EngineziModelziAABB_AABB_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
