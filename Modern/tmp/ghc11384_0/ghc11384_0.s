.data
	.align 8
.align 1
.globl __stginit_EngineziCoreziUtil
.type __stginit_EngineziCoreziUtil, @object
__stginit_EngineziCoreziUtil:
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_toRadianszuzdstoRadians_closure
.type EngineziCoreziUtil_toRadianszuzdstoRadians_closure, @object
EngineziCoreziUtil_toRadianszuzdstoRadians_closure:
	.quad	EngineziCoreziUtil_toRadianszuzdstoRadians_info
.section .rodata
	.align 8
.align 1
cla_str:
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	46
	.byte	116
	.byte	111
	.byte	82
	.byte	97
	.byte	100
	.byte	105
	.byte	97
	.byte	110
	.byte	115
	.byte	95
	.byte	36
	.byte	115
	.byte	116
	.byte	111
	.byte	82
	.byte	97
	.byte	100
	.byte	105
	.byte	97
	.byte	110
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cld_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_toRadianszuzdstoRadians_ct
.type EngineziCoreziUtil_toRadianszuzdstoRadians_ct, @object
EngineziCoreziUtil_toRadianszuzdstoRadians_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cla_str
	.quad	cld_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
skY_info:
.Lcln:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lclt
	addq $2,EngineziCoreziUtil_toRadianszuzdstoRadians_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	mulss .Lnlu(%rip),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lclt:
	movq $16,192(%r13)
.Lclr:
	jmp *-16(%r13)
	.size skY_info, .-skY_info
.section .rodata
	.align 8
.align 4
.Lnlu:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziUtil_toRadianszuzdstoRadians_info
.type EngineziCoreziUtil_toRadianszuzdstoRadians_info, @object
EngineziCoreziUtil_toRadianszuzdstoRadians_info:
.Lcly:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LclA
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziUtil_toRadianszuzdstoRadians_ct
	je .LclB
.LclC:
	incq EngineziCoreziUtil_toRadianszuzdstoRadians_ct+40
	movq %r14,%rbx
	movq $skY_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne skY_info
	jmp *(%rbx)
.LclA:
	movl $EngineziCoreziUtil_toRadianszuzdstoRadians_closure,%ebx
	jmp *-8(%r13)
.LclB:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziUtil_toRadianszuzdstoRadians_ct+56
	movq $EngineziCoreziUtil_toRadianszuzdstoRadians_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziUtil_toRadianszuzdstoRadians_ct
	jmp .LclC
	.size EngineziCoreziUtil_toRadianszuzdstoRadians_info, .-EngineziCoreziUtil_toRadianszuzdstoRadians_info
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_toRadians1_closure
.type EngineziCoreziUtil_toRadians1_closure, @object
EngineziCoreziUtil_toRadians1_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	180
.section .data
	.align 8
.align 1
EngineziCoreziUtil_zdwtoRadians_srt:
	.quad	EngineziCoreziUtil_toRadians1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_zdwtoRadians_closure
.type EngineziCoreziUtil_zdwtoRadians_closure, @object
EngineziCoreziUtil_zdwtoRadians_closure:
	.quad	EngineziCoreziUtil_zdwtoRadians_info
	.quad	0
.section .rodata
	.align 8
.align 1
cm8_str:
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	46
	.byte	36
	.byte	119
	.byte	116
	.byte	111
	.byte	82
	.byte	97
	.byte	100
	.byte	105
	.byte	97
	.byte	110
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	49
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cmb_str:
	.byte	43
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_zdwtoRadians_ct
.type EngineziCoreziUtil_zdwtoRadians_ct, @object
EngineziCoreziUtil_zdwtoRadians_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cm8_str
	.quad	cmb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziUtil_zdwtoRadians_srt-(skf_info)+0
	.long	0
	.quad	1
	.quad	4294967313
skf_info:
.Lcmw:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcmy
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq UNKNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	movl $EngineziCoreziUtil_toRadians1_closure+1,%r14d
	addq $-16,%rbp
	jmp stg_ap_p_fast
.Lcmy:
	jmp *-16(%r13)
	.size skf_info, .-skf_info
.text
	.align 8
	.long	EngineziCoreziUtil_zdwtoRadians_srt-(slL_info)+0
	.long	0
	.quad	3
	.quad	4294967312
slL_info:
.LcmD:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcmF
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcmH
	addq $3,EngineziCoreziUtil_zdwtoRadians_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $skf_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 32(%rbx),%rbx
	leaq -16(%r12),%rsi
	addq $-16,%rbp
	jmp stg_ap_pp_fast
.LcmH:
	movq $24,192(%r13)
.LcmF:
	jmp *-16(%r13)
	.size slL_info, .-slL_info
.text
	.align 8
	.long	EngineziCoreziUtil_zdwtoRadians_srt-(slN_info)+0
	.long	0
	.quad	3
	.quad	4294967328
slN_info:
.LcmM:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcmQ
	addq $5,EngineziCoreziUtil_zdwtoRadians_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $slL_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 55(%rbx),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 15(%rbx),%rbx
	movq 24(%rbp),%r14
	leaq -32(%r12),%rsi
	addq $32,%rbp
	jmp stg_ap_pp_fast
.LcmQ:
	movq $40,192(%r13)
.LcmO:
	jmp *-16(%r13)
	.size slN_info, .-slN_info
.text
	.align 8
	.long	EngineziCoreziUtil_zdwtoRadians_srt-(slO_info)+0
	.long	0
	.quad	2
	.quad	4294967328
slO_info:
.LcmW:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $slN_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne slN_info
	jmp *(%rbx)
	.size slO_info, .-slO_info
.text
	.align 8
	.long	EngineziCoreziUtil_zdwtoRadians_srt-(EngineziCoreziUtil_zdwtoRadians_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziUtil_zdwtoRadians_info
.type EngineziCoreziUtil_zdwtoRadians_info, @object
EngineziCoreziUtil_zdwtoRadians_info:
.Lcn3:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcn5
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziUtil_zdwtoRadians_ct
	je .Lcn6
.Lcn7:
	incq EngineziCoreziUtil_zdwtoRadians_ct+40
	movq %rsi,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %r14,%rbx
	movq $slO_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne slO_info
	jmp *(%rbx)
.Lcn5:
	movl $EngineziCoreziUtil_zdwtoRadians_closure,%ebx
	jmp *-8(%r13)
.Lcn6:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziUtil_zdwtoRadians_ct+56
	movq $EngineziCoreziUtil_zdwtoRadians_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziUtil_zdwtoRadians_ct
	jmp .Lcn7
	.size EngineziCoreziUtil_zdwtoRadians_info, .-EngineziCoreziUtil_zdwtoRadians_info
.section .data
	.align 8
.align 1
EngineziCoreziUtil_toRadians_srt:
	.quad	EngineziCoreziUtil_toRadians1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_toRadians_closure
.type EngineziCoreziUtil_toRadians_closure, @object
EngineziCoreziUtil_toRadians_closure:
	.quad	EngineziCoreziUtil_toRadians_info
	.quad	0
.section .rodata
	.align 8
.align 1
cnF_str:
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	46
	.byte	116
	.byte	111
	.byte	82
	.byte	97
	.byte	100
	.byte	105
	.byte	97
	.byte	110
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cnI_str:
	.byte	43
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_toRadians_ct
.type EngineziCoreziUtil_toRadians_ct, @object
EngineziCoreziUtil_toRadians_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cnF_str
	.quad	cnI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziUtil_toRadians_srt-(sne_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sne_info:
.LcnS:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 8(%rbp),%rdi
	addq $16,%rbp
	jmp EngineziCoreziUtil_zdwtoRadians_info
	.size sne_info, .-sne_info
.text
	.align 8
	.long	EngineziCoreziUtil_toRadians_srt-(EngineziCoreziUtil_toRadians_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziUtil_toRadians_info
.type EngineziCoreziUtil_toRadians_info, @object
EngineziCoreziUtil_toRadians_info:
.LcnV:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcnX
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziUtil_toRadians_ct
	je .LcnY
.LcnZ:
	incq EngineziCoreziUtil_toRadians_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sne_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sne_info
	jmp *(%rbx)
.LcnX:
	movl $EngineziCoreziUtil_toRadians_closure,%ebx
	jmp *-8(%r13)
.LcnY:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziUtil_toRadians_ct+56
	movq $EngineziCoreziUtil_toRadians_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziUtil_toRadians_ct
	jmp .LcnZ
	.size EngineziCoreziUtil_toRadians_info, .-EngineziCoreziUtil_toRadians_info
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_cosDeg_closure
.type EngineziCoreziUtil_cosDeg_closure, @object
EngineziCoreziUtil_cosDeg_closure:
	.quad	EngineziCoreziUtil_cosDeg_info
.section .rodata
	.align 8
.align 1
com_str:
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	46
	.byte	99
	.byte	111
	.byte	115
	.byte	68
	.byte	101
	.byte	103
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cop_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_cosDeg_ct
.type EngineziCoreziUtil_cosDeg_ct, @object
EngineziCoreziUtil_cosDeg_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	com_str
	.quad	cop_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
so7_info:
.Lcoz:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoF
	addq $2,EngineziCoreziUtil_cosDeg_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	mulss .LnoG(%rip),%xmm0
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
.LcoF:
	movq $16,192(%r13)
.LcoD:
	jmp *-16(%r13)
	.size so7_info, .-so7_info
.section .rodata
	.align 8
.align 4
.LnoG:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziUtil_cosDeg_info
.type EngineziCoreziUtil_cosDeg_info, @object
EngineziCoreziUtil_cosDeg_info:
.LcoK:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoM
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziUtil_cosDeg_ct
	je .LcoN
.LcoO:
	incq EngineziCoreziUtil_cosDeg_ct+40
	movq %r14,%rbx
	movq $so7_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne so7_info
	jmp *(%rbx)
.LcoM:
	movl $EngineziCoreziUtil_cosDeg_closure,%ebx
	jmp *-8(%r13)
.LcoN:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziUtil_cosDeg_ct+56
	movq $EngineziCoreziUtil_cosDeg_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziUtil_cosDeg_ct
	jmp .LcoO
	.size EngineziCoreziUtil_cosDeg_info, .-EngineziCoreziUtil_cosDeg_info
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_sinDeg_closure
.type EngineziCoreziUtil_sinDeg_closure, @object
EngineziCoreziUtil_sinDeg_closure:
	.quad	EngineziCoreziUtil_sinDeg_info
.section .rodata
	.align 8
.align 1
cpb_str:
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	85
	.byte	116
	.byte	105
	.byte	108
	.byte	46
	.byte	115
	.byte	105
	.byte	110
	.byte	68
	.byte	101
	.byte	103
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	54
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cpe_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziUtil_sinDeg_ct
.type EngineziCoreziUtil_sinDeg_ct, @object
EngineziCoreziUtil_sinDeg_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cpb_str
	.quad	cpe_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
soW_info:
.Lcpo:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcpu
	addq $2,EngineziCoreziUtil_sinDeg_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	mulss .Lnpv(%rip),%xmm0
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
.Lcpu:
	movq $16,192(%r13)
.Lcps:
	jmp *-16(%r13)
	.size soW_info, .-soW_info
.section .rodata
	.align 8
.align 4
.Lnpv:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziUtil_sinDeg_info
.type EngineziCoreziUtil_sinDeg_info, @object
EngineziCoreziUtil_sinDeg_info:
.Lcpz:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcpB
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziUtil_sinDeg_ct
	je .LcpC
.LcpD:
	incq EngineziCoreziUtil_sinDeg_ct+40
	movq %r14,%rbx
	movq $soW_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soW_info
	jmp *(%rbx)
.LcpB:
	movl $EngineziCoreziUtil_sinDeg_closure,%ebx
	jmp *-8(%r13)
.LcpC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziUtil_sinDeg_ct+56
	movq $EngineziCoreziUtil_sinDeg_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziUtil_sinDeg_ct
	jmp .LcpD
	.size EngineziCoreziUtil_sinDeg_info, .-EngineziCoreziUtil_sinDeg_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
