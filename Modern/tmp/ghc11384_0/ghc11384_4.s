.data
	.align 8
.align 1
.globl __stginit_EngineziCoreziVec
.type __stginit_EngineziCoreziVec, @object
__stginit_EngineziCoreziVec:
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdWVec4_closure
.type EngineziCoreziVec_zdWVec4_closure, @object
EngineziCoreziVec_zdWVec4_closure:
	.quad	EngineziCoreziVec_zdWVec4_info
.section .rodata
	.align 8
.align 1
cfYi_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	87
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	57
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cfYl_str:
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdWVec4_ct
.type EngineziCoreziVec_zdWVec4_ct, @object
EngineziCoreziVec_zdWVec4_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cfYi_str
	.quad	cfYl_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfyS_info:
.LcfYH:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcfYN
	addq $5,EngineziCoreziVec_zdWVec4_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcfYN:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfyS_info, .-sfyS_info
.text
	.align 8
	.quad	3
	.quad	32
sfyR_info:
.LcfYT:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sfyS_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sfyR_info, .-sfyR_info
.text
	.align 8
	.quad	3
	.quad	32
sfyQ_info:
.LcfYZ:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sfyR_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sfyQ_info, .-sfyQ_info
.text
	.align 8
	.quad	3
	.quad	32
sfyP_info:
.LcfZ5:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sfyQ_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sfyP_info, .-sfyP_info
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdWVec4_info
.type EngineziCoreziVec_zdWVec4_info, @object
EngineziCoreziVec_zdWVec4_info:
.LcfZb:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcfZd
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdWVec4_ct
	je .LcfZe
.LcfZf:
	incq EngineziCoreziVec_zdWVec4_ct+40
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sfyP_info,-32(%rbp)
	addq $-32,%rbp
	jmp stg_ap_0_fast
.LcfZd:
	movl $EngineziCoreziVec_zdWVec4_closure,%ebx
	jmp *-8(%r13)
.LcfZe:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdWVec4_ct+56
	movq $EngineziCoreziVec_zdWVec4_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdWVec4_ct
	jmp .LcfZf
	.size EngineziCoreziVec_zdWVec4_info, .-EngineziCoreziVec_zdWVec4_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdWVec3_closure
.type EngineziCoreziVec_zdWVec3_closure, @object
EngineziCoreziVec_zdWVec3_closure:
	.quad	EngineziCoreziVec_zdWVec3_info
.section .rodata
	.align 8
.align 1
cfZx_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	87
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	57
	.byte	50
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cfZA_str:
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdWVec3_ct
.type EngineziCoreziVec_zdWVec3_ct, @object
EngineziCoreziVec_zdWVec3_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cfZx_str
	.quad	cfZA_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sfz4_info:
.LcfZS:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcfZY
	addq $4,EngineziCoreziVec_zdWVec3_ct+48
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
.LcfZY:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfz4_info, .-sfz4_info
.text
	.align 8
	.quad	2
	.quad	32
sfz3_info:
.Lcg03:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sfz4_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sfz3_info, .-sfz3_info
.text
	.align 8
	.quad	2
	.quad	32
sfz2_info:
.Lcg09:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sfz3_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sfz2_info, .-sfz2_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdWVec3_info
.type EngineziCoreziVec_zdWVec3_info, @object
EngineziCoreziVec_zdWVec3_info:
.Lcg0f:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg0h
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdWVec3_ct
	je .Lcg0i
.Lcg0j:
	incq EngineziCoreziVec_zdWVec3_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sfz2_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_ap_0_fast
.Lcg0h:
	movl $EngineziCoreziVec_zdWVec3_closure,%ebx
	jmp *-8(%r13)
.Lcg0i:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdWVec3_ct+56
	movq $EngineziCoreziVec_zdWVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdWVec3_ct
	jmp .Lcg0j
	.size EngineziCoreziVec_zdWVec3_info, .-EngineziCoreziVec_zdWVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdWVec2_closure
.type EngineziCoreziVec_zdWVec2_closure, @object
EngineziCoreziVec_zdWVec2_closure:
	.quad	EngineziCoreziVec_zdWVec2_info
.section .rodata
	.align 8
.align 1
cg0y_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	87
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	57
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cg0B_str:
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdWVec2_ct
.type EngineziCoreziVec_zdWVec2_ct, @object
EngineziCoreziVec_zdWVec2_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cg0y_str
	.quad	cg0B_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfzc_info:
.Lcg0P:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcg0V
	addq $3,EngineziCoreziVec_zdWVec2_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lcg0V:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfzc_info, .-sfzc_info
.text
	.align 8
	.quad	1
	.quad	32
sfzb_info:
.Lcg0Z:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sfzc_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sfzb_info, .-sfzb_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdWVec2_info
.type EngineziCoreziVec_zdWVec2_info, @object
EngineziCoreziVec_zdWVec2_info:
.Lcg15:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg17
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdWVec2_ct
	je .Lcg18
.Lcg19:
	incq EngineziCoreziVec_zdWVec2_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sfzb_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
.Lcg17:
	movl $EngineziCoreziVec_zdWVec2_closure,%ebx
	jmp *-8(%r13)
.Lcg18:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdWVec2_ct+56
	movq $EngineziCoreziVec_zdWVec2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdWVec2_ct
	jmp .Lcg19
	.size EngineziCoreziVec_zdWVec2_info, .-EngineziCoreziVec_zdWVec2_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwcrossVec3_closure
.type EngineziCoreziVec_zdwcrossVec3_closure, @object
EngineziCoreziVec_zdwcrossVec3_closure:
	.quad	EngineziCoreziVec_zdwcrossVec3_info
.section .rodata
	.align 8
.align 1
cg1D_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	99
	.byte	114
	.byte	111
	.byte	115
	.byte	115
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	89
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cg1G_str:
	.byte	77
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwcrossVec3_ct
.type EngineziCoreziVec_zdwcrossVec3_ct, @object
EngineziCoreziVec_zdwcrossVec3_ct:
	.quad	0
	.quad	8
	.quad	3
	.quad	cg1D_str
	.quad	cg1G_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwcrossVec3_slow
.type EngineziCoreziVec_zdwcrossVec3_slow, @object
EngineziCoreziVec_zdwcrossVec3_slow:
.Lcg1K:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziCoreziVec_zdwcrossVec3_info
	.size EngineziCoreziVec_zdwcrossVec3_slow, .-EngineziCoreziVec_zdwcrossVec3_slow
.text
	.align 8
	.quad	2
	.quad	32
sfzE_info:
.Lcg21:
	incq RET_UNBOXED_TUP_ctr
	movq 8(%rbp),%r14
	movq %rbx,%rsi
	movq 16(%rbp),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
	.size sfzE_info, .-sfzE_info
.text
	.align 8
	.quad	136
	.quad	32
sfzD_info:
.Lcg24:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lcg28
	addq $10,EngineziCoreziVec_zdwcrossVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $stg_ap_3_upd_info,-72(%r12)
	movq 32(%rbp),%rax
	movq %rax,-56(%r12)
	movq 40(%rbp),%rax
	movq %rax,-48(%r12)
	movq 48(%rbp),%rax
	movq %rax,-40(%r12)
	movq $stg_ap_3_upd_info,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 56(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq %rbx,56(%rbp)
	movq 24(%rbp),%rbx
	leaq -32(%r12),%r14
	leaq -72(%r12),%rsi
	movq $sfzE_info,48(%rbp)
	addq $48,%rbp
	jmp stg_ap_pp_fast
.Lcg28:
	movq $80,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfzD_info, .-sfzD_info
.text
	.align 8
	.quad	8
	.quad	32
sfzC_info:
.Lcg2h:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lcg2l
	addq $10,EngineziCoreziVec_zdwcrossVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $stg_ap_3_upd_info,-72(%r12)
	movq 32(%rbp),%rax
	movq %rax,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 64(%rbp),%rax
	movq %rax,-40(%r12)
	movq $stg_ap_3_upd_info,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 48(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq %rbx,64(%rbp)
	movq 24(%rbp),%rbx
	leaq -32(%r12),%r14
	leaq -72(%r12),%rsi
	movq $sfzD_info,0(%rbp)
	jmp stg_ap_pp_fast
.Lcg2l:
	movq $80,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfzC_info, .-sfzC_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwcrossVec3_slow-(EngineziCoreziVec_zdwcrossVec3_info)+0
	.long	0
	.quad	8
	.quad	0
	.quad	34359738368
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwcrossVec3_info
.type EngineziCoreziVec_zdwcrossVec3_info, @object
EngineziCoreziVec_zdwcrossVec3_info:
.Lcg2u:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg2w
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lcg2y
	addq $10,EngineziCoreziVec_zdwcrossVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwcrossVec3_ct
	je .Lcg2z
.Lcg2A:
	incq EngineziCoreziVec_zdwcrossVec3_ct+40
	movq $stg_ap_3_upd_info,-72(%r12)
	movq %r14,-56(%r12)
	movq %r9,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq $stg_ap_3_upd_info,-32(%r12)
	movq %r14,-16(%r12)
	movq %r8,-8(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq %rdi,-40(%rbp)
	movq %r9,-32(%rbp)
	movq %rsi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %r8,-8(%rbp)
	movq %rsi,%rbx
	leaq -32(%r12),%r14
	leaq -72(%r12),%rsi
	movq $sfzC_info,-48(%rbp)
	addq $-48,%rbp
	jmp stg_ap_pp_fast
.Lcg2y:
	movq $80,192(%r13)
.Lcg2w:
	movl $EngineziCoreziVec_zdwcrossVec3_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lcg2z:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwcrossVec3_ct+56
	movq $EngineziCoreziVec_zdwcrossVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwcrossVec3_ct
	jmp .Lcg2A
	.size EngineziCoreziVec_zdwcrossVec3_info, .-EngineziCoreziVec_zdwcrossVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_crossVec3_closure
.type EngineziCoreziVec_crossVec3_closure, @object
EngineziCoreziVec_crossVec3_closure:
	.quad	EngineziCoreziVec_crossVec3_info
.section .rodata
	.align 8
.align 1
cg33_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	99
	.byte	114
	.byte	111
	.byte	115
	.byte	115
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	55
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cg36_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_crossVec3_ct
.type EngineziCoreziVec_crossVec3_ct, @object
EngineziCoreziVec_crossVec3_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cg33_str
	.quad	cg36_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sg2G_info:
.Lcg3s:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcg3x
	addq $4,EngineziCoreziVec_crossVec3_ct+48
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
.Lcg3x:
	movq $32,192(%r13)
.Lcg3v:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sg2G_info, .-sg2G_info
.text
	.align 8
	.quad	5
	.quad	32
sg2H_info:
.Lcg3A:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 24(%rbp),%rsi
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 32(%rbp),%rdi
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 16(%rbp),%r8
	movq 7(%rbx),%rax
	movq %rax,16(%rbp)
	movq 8(%rbp),%r9
	movq $sg2G_info,40(%rbp)
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwcrossVec3_info
	.size sg2H_info, .-sg2H_info
.text
	.align 8
	.quad	3
	.quad	32
sg2I_info:
.Lcg3G:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sg2H_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sg2H_info
	jmp *(%rbx)
	.size sg2I_info, .-sg2I_info
.text
	.align 8
	.quad	2
	.quad	32
sg2K_info:
.Lcg3R:
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 15(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sg2I_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sg2I_info
	jmp *(%rbx)
	.size sg2K_info, .-sg2K_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_crossVec3_info
.type EngineziCoreziVec_crossVec3_info, @object
EngineziCoreziVec_crossVec3_info:
.Lcg41:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg43
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_crossVec3_ct
	je .Lcg44
.Lcg45:
	incq EngineziCoreziVec_crossVec3_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sg2K_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sg2K_info
	jmp *(%rbx)
.Lcg43:
	movl $EngineziCoreziVec_crossVec3_closure,%ebx
	jmp *-8(%r13)
.Lcg44:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_crossVec3_ct+56
	movq $EngineziCoreziVec_crossVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_crossVec3_ct
	jmp .Lcg45
	.size EngineziCoreziVec_crossVec3_info, .-EngineziCoreziVec_crossVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwlengthVec3_closure
.type EngineziCoreziVec_zdwlengthVec3_closure, @object
EngineziCoreziVec_zdwlengthVec3_closure:
	.quad	EngineziCoreziVec_zdwlengthVec3_info
.section .rodata
	.align 8
.align 1
cg4B_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	108
	.byte	101
	.byte	110
	.byte	103
	.byte	116
	.byte	104
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	90
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cg4E_str:
	.byte	43
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwlengthVec3_ct
.type EngineziCoreziVec_zdwlengthVec3_ct, @object
EngineziCoreziVec_zdwlengthVec3_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cg4B_str
	.quad	cg4E_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
sg4c_info:
.Lcg4Z:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg51
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq UNKNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp stg_ap_pp_fast
.Lcg51:
	jmp *-16(%r13)
	.size sg4c_info, .-sg4c_info
.text
	.align 8
	.quad	2
	.quad	19
sfAG_info:
.Lcg5a:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg5c
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq UNKNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp stg_ap_pp_fast
.Lcg5c:
	jmp *-16(%r13)
	.size sfAG_info, .-sfAG_info
.text
	.align 8
	.quad	2
	.quad	19
sfAH_info:
.Lcg5j:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg5l
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq UNKNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 24(%rbx),%rbx
	addq $-16,%rbp
	jmp stg_ap_pp_fast
.Lcg5l:
	jmp *-16(%r13)
	.size sfAH_info, .-sfAH_info
.text
	.align 8
	.quad	4
	.quad	16
sg4d_info:
.Lcg5q:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg5s
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .Lcg5u
	addq $8,EngineziCoreziVec_zdwlengthVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sfAG_info,-56(%r12)
	movq 24(%rbx),%rax
	movq %rax,-40(%r12)
	movq 40(%rbx),%rax
	movq %rax,-32(%r12)
	movq $sfAH_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 32(%rbx),%rbx
	leaq -24(%r12),%r14
	leaq -56(%r12),%rsi
	addq $-16,%rbp
	jmp stg_ap_pp_fast
.Lcg5u:
	movq $64,192(%r13)
.Lcg5s:
	jmp *-16(%r13)
	.size sg4d_info, .-sg4d_info
.text
	.align 8
	.quad	3
	.quad	32
sg4f_info:
.Lcg5C:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lcg5G
	addq $10,EngineziCoreziVec_zdwlengthVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $sg4c_info,-72(%r12)
	movq 15(%rbx),%rax
	movq %rax,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq $sg4d_info,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 7(%rbx),%rbx
	leaq -40(%r12),%r14
	leaq -72(%r12),%rsi
	addq $32,%rbp
	jmp stg_ap_pp_fast
.Lcg5G:
	movq $80,192(%r13)
.Lcg5E:
	jmp *-16(%r13)
	.size sg4f_info, .-sg4f_info
.text
	.align 8
	.quad	3
	.quad	32
sg4g_info:
.Lcg5P:
	movq 7(%rbx),%rbx
	movq $sg4f_info,0(%rbp)
	testq $7,%rbx
	jne sg4f_info
	jmp *(%rbx)
	.size sg4g_info, .-sg4g_info
.text
	.align 8
	.quad	4
	.quad	16
sg4e_info:
.Lcg5X:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg5Z
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
	movq $sg4g_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne sg4g_info
	jmp *(%rbx)
.Lcg5Z:
	jmp *-16(%r13)
	.size sg4e_info, .-sg4e_info
.text
	.align 8
	.quad	21474836502
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwlengthVec3_info
.type EngineziCoreziVec_zdwlengthVec3_info, @object
EngineziCoreziVec_zdwlengthVec3_info:
.Lcg67:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .Lcg6b
	addq $6,EngineziCoreziVec_zdwlengthVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwlengthVec3_ct
	je .Lcg6c
.Lcg6d:
	incq EngineziCoreziVec_zdwlengthVec3_ct+40
	movq $sg4e_info,-40(%r12)
	movq %r14,-24(%r12)
	movq %rdi,-16(%r12)
	movq %r8,-8(%r12)
	movq %r9,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq %rsi,%rbx
	leaq -40(%r12),%r14
	jmp stg_ap_p_fast
.Lcg6b:
	movq $48,192(%r13)
.Lcg69:
	movl $EngineziCoreziVec_zdwlengthVec3_closure,%ebx
	jmp *-8(%r13)
.Lcg6c:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwlengthVec3_ct+56
	movq $EngineziCoreziVec_zdwlengthVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwlengthVec3_ct
	jmp .Lcg6d
	.size EngineziCoreziVec_zdwlengthVec3_info, .-EngineziCoreziVec_zdwlengthVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_lengthVec3_closure
.type EngineziCoreziVec_lengthVec3_closure, @object
EngineziCoreziVec_lengthVec3_closure:
	.quad	EngineziCoreziVec_lengthVec3_info
.section .rodata
	.align 8
.align 1
cg6K_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	108
	.byte	101
	.byte	110
	.byte	103
	.byte	116
	.byte	104
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	55
	.byte	51
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cg6N_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_lengthVec3_ct
.type EngineziCoreziVec_lengthVec3_ct, @object
EngineziCoreziVec_lengthVec3_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cg6K_str
	.quad	cg6N_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sg6g_info:
.Lcg71:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	addq $24,%rbp
	jmp EngineziCoreziVec_zdwlengthVec3_info
	.size sg6g_info, .-sg6g_info
.text
	.align 8
	.quad	1
	.quad	32
sg6h_info:
.Lcg74:
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sg6g_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sg6g_info
	jmp *(%rbx)
	.size sg6h_info, .-sg6h_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_lengthVec3_info
.type EngineziCoreziVec_lengthVec3_info, @object
EngineziCoreziVec_lengthVec3_info:
.Lcg7e:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg7g
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_lengthVec3_ct
	je .Lcg7h
.Lcg7i:
	incq EngineziCoreziVec_lengthVec3_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sg6h_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sg6h_info
	jmp *(%rbx)
.Lcg7g:
	movl $EngineziCoreziVec_lengthVec3_closure,%ebx
	jmp *-8(%r13)
.Lcg7h:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_lengthVec3_ct+56
	movq $EngineziCoreziVec_lengthVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_lengthVec3_ct
	jmp .Lcg7i
	.size EngineziCoreziVec_lengthVec3_info, .-EngineziCoreziVec_lengthVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_scaleVec3_closure
.type EngineziCoreziVec_scaleVec3_closure, @object
EngineziCoreziVec_scaleVec3_closure:
	.quad	EngineziCoreziVec_scaleVec3_info
.section .rodata
	.align 8
.align 1
cg7R_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	115
	.byte	99
	.byte	97
	.byte	108
	.byte	101
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	55
	.byte	49
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cg7U_str:
	.byte	43
	.byte	46
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_scaleVec3_ct
.type EngineziCoreziVec_scaleVec3_ct, @object
EngineziCoreziVec_scaleVec3_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cg7R_str
	.quad	cg7U_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	131
	.quad	32
sfBL_info:
.Lcg8k:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcg8q
	addq $4,EngineziCoreziVec_scaleVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcg8q:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfBL_info, .-sfBL_info
.text
	.align 8
	.quad	4
	.quad	32
sfBK_info:
.Lcg8v:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq 24(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sfBL_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_pp_fast
	.size sfBK_info, .-sfBK_info
.text
	.align 8
	.quad	4
	.quad	32
sfBJ_info:
.Lcg8B:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	movq %rbx,16(%rbp)
	movq 32(%rbp),%rbx
	movq $sfBK_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfBJ_info, .-sfBJ_info
.text
	.align 8
	.quad	2
	.quad	32
sg7p_info:
.Lcg8E:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 16(%rbp),%rbx
	movq $sfBJ_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_pp_fast
	.size sg7p_info, .-sg7p_info
.text
	.align 8
	.quad	2
	.quad	32
sg7r_info:
.Lcg8J:
	movq 16(%rbp),%rax
	movq 15(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sg7p_info,0(%rbp)
	testq $7,%rbx
	jne sg7p_info
	jmp *(%rbx)
	.size sg7r_info, .-sg7r_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_scaleVec3_info
.type EngineziCoreziVec_scaleVec3_info, @object
EngineziCoreziVec_scaleVec3_info:
.Lcg8S:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg8U
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_scaleVec3_ct
	je .Lcg8V
.Lcg8W:
	incq EngineziCoreziVec_scaleVec3_ct+40
	movq %rsi,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %r14,%rbx
	movq $sg7r_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sg7r_info
	jmp *(%rbx)
.Lcg8U:
	movl $EngineziCoreziVec_scaleVec3_closure,%ebx
	jmp *-8(%r13)
.Lcg8V:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_scaleVec3_ct+56
	movq $EngineziCoreziVec_scaleVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_scaleVec3_ct
	jmp .Lcg8W
	.size EngineziCoreziVec_scaleVec3_info, .-EngineziCoreziVec_scaleVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwnormalizzeVec3_closure
.type EngineziCoreziVec_zdwnormalizzeVec3_closure, @object
EngineziCoreziVec_zdwnormalizzeVec3_closure:
	.quad	EngineziCoreziVec_zdwnormalizzeVec3_info
.section .rodata
	.align 8
.align 1
cg9x_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	110
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	108
	.byte	105
	.byte	122
	.byte	101
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	88
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cg9A_str:
	.byte	43
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwnormalizzeVec3_ct
.type EngineziCoreziVec_zdwnormalizzeVec3_ct, @object
EngineziCoreziVec_zdwnormalizzeVec3_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cg9x_str
	.quad	cg9A_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	5
	.quad	16
sfCe_info:
.Lcg9V:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcg9X
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	movq 40(%rbx),%r8
	movq 48(%rbx),%r9
	addq $-16,%rbp
	jmp EngineziCoreziVec_zdwlengthVec3_info
.Lcg9X:
	jmp *-16(%r13)
	.size sfCe_info, .-sfCe_info
.text
	.align 8
	.quad	6
	.quad	16
sfCf_info:
.Lcga2:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcga4
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lcga6
	addq $7,EngineziCoreziVec_zdwnormalizzeVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sfCe_info,-48(%r12)
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
	incq UNKNOWN_CALL_ctr
	movq 56(%rbx),%rbx
	leaq -48(%r12),%r14
	addq $-16,%rbp
	jmp stg_ap_p_fast
.Lcga6:
	movq $56,192(%r13)
.Lcga4:
	jmp *-16(%r13)
	.size sfCf_info, .-sfCf_info
.text
	.align 8
	.quad	131
	.quad	32
sfCm_info:
.Lcgap:
	incq RET_UNBOXED_TUP_ctr
	movq 24(%rbp),%r14
	movq %rbx,%rsi
	movq 8(%rbp),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
	.size sfCm_info, .-sfCm_info
.text
	.align 8
	.quad	4
	.quad	32
sfCl_info:
.Lcgas:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,32(%rbp)
	movq 24(%rbp),%rbx
	movq 8(%rbp),%rsi
	movq $sfCm_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_pp_fast
	.size sfCl_info, .-sfCl_info
.text
	.align 8
	.quad	4
	.quad	32
sfCk_info:
.Lcgav:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 16(%rbp),%rsi
	movq %rbx,16(%rbp)
	movq 24(%rbp),%rbx
	movq $sfCl_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfCk_info, .-sfCk_info
.text
	.align 8
	.quad	6
	.quad	32
sg94_info:
.Lcgay:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcgaC
	addq $8,EngineziCoreziVec_zdwnormalizzeVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $sfCf_info,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 48(%rbp),%rax
	movq %rax,-32(%r12)
	movq 40(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	leaq -56(%r12),%rax
	movq %rax,48(%rbp)
	leaq -56(%r12),%r14
	movq 40(%rbp),%rsi
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 15(%rbx),%rbx
	movq $sfCk_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_pp_fast
.LcgaC:
	movq $64,192(%r13)
.LcgaA:
	jmp *-16(%r13)
	.size sg94_info, .-sg94_info
.text
	.align 8
	.quad	4
	.quad	32
sfC7_info:
.LcgaN:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %rbx,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sg94_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sg94_info
	jmp *(%rbx)
	.size sfC7_info, .-sfC7_info
.text
	.align 8
	.quad	21474836502
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwnormalizzeVec3_info
.type EngineziCoreziVec_zdwnormalizzeVec3_info, @object
EngineziCoreziVec_zdwnormalizzeVec3_info:
.LcgaU:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgaW
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwnormalizzeVec3_ct
	je .LcgaX
.LcgaY:
	incq EngineziCoreziVec_zdwnormalizzeVec3_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sfC7_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sfC7_info
	jmp *(%rbx)
.LcgaW:
	movl $EngineziCoreziVec_zdwnormalizzeVec3_closure,%ebx
	jmp *-8(%r13)
.LcgaX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwnormalizzeVec3_ct+56
	movq $EngineziCoreziVec_zdwnormalizzeVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwnormalizzeVec3_ct
	jmp .LcgaY
	.size EngineziCoreziVec_zdwnormalizzeVec3_info, .-EngineziCoreziVec_zdwnormalizzeVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_normalizzeVec3_closure
.type EngineziCoreziVec_normalizzeVec3_closure, @object
EngineziCoreziVec_normalizzeVec3_closure:
	.quad	EngineziCoreziVec_normalizzeVec3_info
.section .rodata
	.align 8
.align 1
cgbA_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	110
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	108
	.byte	105
	.byte	122
	.byte	101
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	55
	.byte	50
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgbD_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_normalizzeVec3_ct
.type EngineziCoreziVec_normalizzeVec3_ct, @object
EngineziCoreziVec_normalizzeVec3_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgbA_str
	.quad	cgbD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sgb5_info:
.LcgbV:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcgc0
	addq $4,EngineziCoreziVec_normalizzeVec3_ct+48
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
.Lcgc0:
	movq $32,192(%r13)
.LcgbY:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sgb5_info, .-sgb5_info
.text
	.align 8
	.quad	2
	.quad	32
sgb6_info:
.Lcgc3:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	movq $sgb5_info,16(%rbp)
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwnormalizzeVec3_info
	.size sgb6_info, .-sgb6_info
.text
	.align 8
	.quad	1
	.quad	32
sgb7_info:
.Lcgc6:
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgb6_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sgb6_info
	jmp *(%rbx)
	.size sgb7_info, .-sgb7_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_normalizzeVec3_info
.type EngineziCoreziVec_normalizzeVec3_info, @object
EngineziCoreziVec_normalizzeVec3_info:
.Lcgcg:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgci
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_normalizzeVec3_ct
	je .Lcgcj
.Lcgck:
	incq EngineziCoreziVec_normalizzeVec3_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgb7_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgb7_info
	jmp *(%rbx)
.Lcgci:
	movl $EngineziCoreziVec_normalizzeVec3_closure,%ebx
	jmp *-8(%r13)
.Lcgcj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_normalizzeVec3_ct+56
	movq $EngineziCoreziVec_normalizzeVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_normalizzeVec3_ct
	jmp .Lcgck
	.size EngineziCoreziVec_normalizzeVec3_info, .-EngineziCoreziVec_normalizzeVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_toArray2_closure
.type EngineziCoreziVec_toArray2_closure, @object
EngineziCoreziVec_toArray2_closure:
	.quad	EngineziCoreziVec_toArray2_info
.section .rodata
	.align 8
.align 1
cgcB_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	116
	.byte	111
	.byte	65
	.byte	114
	.byte	114
	.byte	97
	.byte	121
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	55
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgcE_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_toArray2_ct
.type EngineziCoreziVec_toArray2_ct, @object
EngineziCoreziVec_toArray2_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgcB_str
	.quad	cgcE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sgcs_info:
.LcgcO:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcgcU
	addq $6,EngineziCoreziVec_toArray2_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 15(%rbx),%rax
	movq %rax,-32(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcgcU:
	movq $48,192(%r13)
.LcgcS:
	jmp *-16(%r13)
	.size sgcs_info, .-sgcs_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziVec_toArray2_info
.type EngineziCoreziVec_toArray2_info, @object
EngineziCoreziVec_toArray2_info:
.Lcgd0:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgd2
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_toArray2_ct
	je .Lcgd3
.Lcgd4:
	incq EngineziCoreziVec_toArray2_ct+40
	movq %r14,%rbx
	movq $sgcs_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sgcs_info
	jmp *(%rbx)
.Lcgd2:
	movl $EngineziCoreziVec_toArray2_closure,%ebx
	jmp *-8(%r13)
.Lcgd3:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_toArray2_ct+56
	movq $EngineziCoreziVec_toArray2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_toArray2_ct
	jmp .Lcgd4
	.size EngineziCoreziVec_toArray2_info, .-EngineziCoreziVec_toArray2_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_toArray3_closure
.type EngineziCoreziVec_toArray3_closure, @object
EngineziCoreziVec_toArray3_closure:
	.quad	EngineziCoreziVec_toArray3_info
.section .rodata
	.align 8
.align 1
cgdl_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	116
	.byte	111
	.byte	65
	.byte	114
	.byte	114
	.byte	97
	.byte	121
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	90
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgdo_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_toArray3_ct
.type EngineziCoreziVec_toArray3_ct, @object
EngineziCoreziVec_toArray3_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgdl_str
	.quad	cgdo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sgdc_info:
.Lcgdy:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcgdE
	addq $9,EngineziCoreziVec_toArray3_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	movq 23(%rbx),%rax
	movq %rax,-56(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 15(%rbx),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcgdE:
	movq $72,192(%r13)
.LcgdC:
	jmp *-16(%r13)
	.size sgdc_info, .-sgdc_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziVec_toArray3_info
.type EngineziCoreziVec_toArray3_info, @object
EngineziCoreziVec_toArray3_info:
.LcgdM:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgdO
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_toArray3_ct
	je .LcgdP
.LcgdQ:
	incq EngineziCoreziVec_toArray3_ct+40
	movq %r14,%rbx
	movq $sgdc_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sgdc_info
	jmp *(%rbx)
.LcgdO:
	movl $EngineziCoreziVec_toArray3_closure,%ebx
	jmp *-8(%r13)
.LcgdP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_toArray3_ct+56
	movq $EngineziCoreziVec_toArray3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_toArray3_ct
	jmp .LcgdQ
	.size EngineziCoreziVec_toArray3_info, .-EngineziCoreziVec_toArray3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_vec3ToVec4_closure
.type EngineziCoreziVec_vec3ToVec4_closure, @object
EngineziCoreziVec_vec3ToVec4_closure:
	.quad	EngineziCoreziVec_vec3ToVec4_info
.section .rodata
	.align 8
.align 1
cge9_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	118
	.byte	101
	.byte	99
	.byte	51
	.byte	84
	.byte	111
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	89
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgec_str:
	.byte	83
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_vec3ToVec4_ct
.type EngineziCoreziVec_vec3ToVec4_ct, @object
EngineziCoreziVec_vec3ToVec4_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cge9_str
	.quad	cgec_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfDx_info:
.Lcgeq:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcgew
	addq $5,EngineziCoreziVec_vec3ToVec4_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcgew:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfDx_info, .-sfDx_info
.text
	.align 8
	.quad	1
	.quad	32
sgdX_info:
.LcgeC:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sfDx_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size sgdX_info, .-sgdX_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_vec3ToVec4_info
.type EngineziCoreziVec_vec3ToVec4_info, @object
EngineziCoreziVec_vec3ToVec4_info:
.LcgeL:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgeN
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_vec3ToVec4_ct
	je .LcgeO
.LcgeP:
	incq EngineziCoreziVec_vec3ToVec4_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgdX_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgdX_info
	jmp *(%rbx)
.LcgeN:
	movl $EngineziCoreziVec_vec3ToVec4_closure,%ebx
	jmp *-8(%r13)
.LcgeO:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_vec3ToVec4_ct+56
	movq $EngineziCoreziVec_vec3ToVec4_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_vec3ToVec4_ct
	jmp .LcgeP
	.size EngineziCoreziVec_vec3ToVec4_info, .-EngineziCoreziVec_vec3ToVec4_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_vec4GetIndex1_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_vec4GetIndex1_closure
.type EngineziCoreziVec_vec4GetIndex1_closure, @object
EngineziCoreziVec_vec4GetIndex1_closure:
	.quad	EngineziCoreziVec_vec4GetIndex1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cgf6_str:
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	47
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	40
	.byte	51
	.byte	50
	.byte	44
	.byte	49
	.byte	41
	.byte	45
	.byte	40
	.byte	51
	.byte	54
	.byte	44
	.byte	49
	.byte	54
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
	.byte	118
	.byte	101
	.byte	99
	.byte	52
	.byte	71
	.byte	101
	.byte	116
	.byte	73
	.byte	110
	.byte	100
	.byte	101
	.byte	120
	.byte	0
.text
	.align 8
	.long	EngineziCoreziVec_vec4GetIndex1_srt-(EngineziCoreziVec_vec4GetIndex1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziVec_vec4GetIndex1_info
.type EngineziCoreziVec_vec4GetIndex1_info, @object
EngineziCoreziVec_vec4GetIndex1_info:
.Lcgfa:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgfc
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcgfe
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
	je .Lcgff
.Lcgfg:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cgf6_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.Lcgfe:
	movq $16,192(%r13)
.Lcgfc:
	jmp *-16(%r13)
.Lcgff:
	jmp *(%rbx)
	.size EngineziCoreziVec_vec4GetIndex1_info, .-EngineziCoreziVec_vec4GetIndex1_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_vec4GetIndex_srt:
	.quad	EngineziCoreziVec_vec4GetIndex1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_vec4GetIndex_closure
.type EngineziCoreziVec_vec4GetIndex_closure, @object
EngineziCoreziVec_vec4GetIndex_closure:
	.quad	EngineziCoreziVec_vec4GetIndex_info
	.quad	0
.section .rodata
	.align 8
.align 1
cgfI_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	118
	.byte	101
	.byte	99
	.byte	52
	.byte	71
	.byte	101
	.byte	116
	.byte	73
	.byte	110
	.byte	100
	.byte	101
	.byte	120
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	88
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgfL_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_vec4GetIndex_ct
.type EngineziCoreziVec_vec4GetIndex_ct, @object
EngineziCoreziVec_vec4GetIndex_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgfI_str
	.quad	cgfL_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_vec4GetIndex_srt-(sgfn_info)+0
	.long	0
	.quad	65
	.quad	4294967328
sgfn_info:
.LcgfZ:
	movq 8(%rbp),%rax
	cmpq $2,%rax
	jl .Lcgga
	cmpq $3,%rax
	jl .Lcgg6
	cmpq $3,%rax
	jne .Lcgg4
	movq 31(%rbx),%rbx
	addq $16,%rbp
	jmp stg_ap_0_fast
.Lcgg4:
	movl $EngineziCoreziVec_vec4GetIndex1_closure,%ebx
	addq $16,%rbp
	jmp stg_ap_0_fast
.Lcgg6:
	cmpq $2,%rax
	jne .Lcgg4
	movq 23(%rbx),%rbx
	addq $16,%rbp
	jmp stg_ap_0_fast
.Lcgg8:
	testq %rax,%rax
	jne .Lcgg4
	movq 7(%rbx),%rbx
	addq $16,%rbp
	jmp stg_ap_0_fast
.Lcgga:
	cmpq $1,%rax
	jl .Lcgg8
	cmpq $1,%rax
	jne .Lcgg4
	movq 15(%rbx),%rbx
	addq $16,%rbp
	jmp stg_ap_0_fast
	.size sgfn_info, .-sgfn_info
.text
	.align 8
	.long	EngineziCoreziVec_vec4GetIndex_srt-(sgfo_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sgfo_info:
.Lcggd:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgfn_info,0(%rbp)
	testq $7,%rbx
	jne sgfn_info
	jmp *(%rbx)
	.size sgfo_info, .-sgfo_info
.text
	.align 8
	.long	EngineziCoreziVec_vec4GetIndex_srt-(EngineziCoreziVec_vec4GetIndex_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_vec4GetIndex_info
.type EngineziCoreziVec_vec4GetIndex_info, @object
EngineziCoreziVec_vec4GetIndex_info:
.Lcggm:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcggo
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_vec4GetIndex_ct
	je .Lcggp
.Lcggq:
	incq EngineziCoreziVec_vec4GetIndex_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgfo_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgfo_info
	jmp *(%rbx)
.Lcggo:
	movl $EngineziCoreziVec_vec4GetIndex_closure,%ebx
	jmp *-8(%r13)
.Lcggp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_vec4GetIndex_ct+56
	movq $EngineziCoreziVec_vec4GetIndex_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_vec4GetIndex_ct
	jmp .Lcggq
	.size EngineziCoreziVec_vec4GetIndex_info, .-EngineziCoreziVec_vec4GetIndex_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_closure
.type EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_closure, @object
EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_closure:
	.quad	EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_info
.section .rodata
	.align 8
.align 1
cggS_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	70
	.byte	117
	.byte	110
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	95
	.byte	36
	.byte	99
	.byte	102
	.byte	109
	.byte	97
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	68
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cggV_str:
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct
.type EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct, @object
EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cggS_str
	.quad	cggV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfE9_info:
.Lcghl:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcghr
	addq $5,EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcghr:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfE9_info, .-sfE9_info
.text
	.align 8
	.quad	4
	.quad	32
sfE8_info:
.Lcghx:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfE9_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfE8_info, .-sfE8_info
.text
	.align 8
	.quad	4
	.quad	32
sfE7_info:
.LcghD:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 32(%rbp),%rbx
	movq $sfE8_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfE7_info, .-sfE7_info
.text
	.align 8
	.quad	4
	.quad	32
sfE6_info:
.LcghG:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movq 32(%rbp),%rbx
	movq $sfE7_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfE6_info, .-sfE6_info
.text
	.align 8
	.quad	1
	.quad	32
sggx_info:
.LcghJ:
	incq UNKNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfE6_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_ap_p_fast
	.size sggx_info, .-sggx_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_info
.type EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_info, @object
EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_info:
.LcghP:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcghR
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct
	je .LcghS
.LcghT:
	incq EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sggx_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sggx_info
	jmp *(%rbx)
.LcghR:
	movl $EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_closure,%ebx
	jmp *-8(%r13)
.LcghS:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct+56
	movq $EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_ct
	jmp .LcghT
	.size EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_info, .-EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_closure
.type EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_closure, @object
EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_closure:
	.quad	EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_info
.section .rodata
	.align 8
.align 1
cgig_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	70
	.byte	117
	.byte	110
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	95
	.byte	36
	.byte	99
	.byte	60
	.byte	36
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	67
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgij_str:
	.byte	46
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct
.type EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct, @object
EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgig_str
	.quad	cgij_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sfEk_info:
.Lcgix:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcgiD
	addq $5,EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq %rbx,-16(%r12)
	movq %rbx,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcgiD:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfEk_info, .-sfEk_info
.text
	.align 8
	.quad	1
	.quad	32
sgi1_info:
.LcgiG:
	movq 8(%rbp),%rbx
	movq $sfEk_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size sgi1_info, .-sgi1_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_info
.type EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_info, @object
EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_info:
.LcgiJ:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgiL
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct
	je .LcgiM
.LcgiN:
	incq EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sgi1_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgi1_info
	jmp *(%rbx)
.LcgiL:
	movl $EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_closure,%ebx
	jmp *-8(%r13)
.LcgiM:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct+56
	movq $EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_ct
	jmp .LcgiN
	.size EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_info, .-EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec4_closure
.type EngineziCoreziVec_zdfFunctorVec4_closure, @object
EngineziCoreziVec_zdfFunctorVec4_closure:
	.quad	base_GHCziBase_DZCFunctor_static_info
	.quad	EngineziCoreziVec_zdfFunctorVec4zuzdcfmap_closure+2
	.quad	EngineziCoreziVec_zdfFunctorVec4zuzdczlzd_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_closure
.type EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_closure, @object
EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_closure:
	.quad	EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_info
.section .rodata
	.align 8
.align 1
cgjo_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
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
	.byte	100
	.byte	54
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgjr_str:
	.byte	43
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct
.type EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct, @object
EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgjo_str
	.quad	cgjr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	260
	.quad	32
sfEF_info:
.LcgjR:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcgjX
	addq $5,EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcgjX:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfEF_info, .-sfEF_info
.text
	.align 8
	.quad	4
	.quad	32
sfEE_info:
.Lcgk3:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,32(%rbp)
	movq 24(%rbp),%rbx
	movq $sfEF_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfEE_info, .-sfEE_info
.text
	.align 8
	.quad	3
	.quad	32
sfED_info:
.Lcgk6:
	incq UNKNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 16(%rbp),%rbx
	movq 24(%rbp),%r14
	movq $sfEE_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sfED_info, .-sfED_info
.text
	.align 8
	.quad	2
	.quad	32
sfEC_info:
.Lcgk9:
	incq UNKNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%rbx
	movq 16(%rbp),%r14
	movq $sfED_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sfEC_info, .-sfEC_info
.text
	.align 8
	.quad	1
	.quad	32
sgiX_info:
.Lcgkc:
	incq UNKNOWN_CALL_ctr
	movq 55(%rbx),%rax
	movq %rax,0(%rbp)
	movq 55(%rbx),%rbx
	movq 8(%rbp),%r14
	movq $sfEC_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sgiX_info, .-sgiX_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_info
.type EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_info, @object
EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_info:
.Lcgkg:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgki
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct
	je .Lcgkj
.Lcgkk:
	incq EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgiX_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgiX_info
	jmp *(%rbx)
.Lcgki:
	movl $EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_closure,%ebx
	jmp *-8(%r13)
.Lcgkj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct+56
	movq $EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_ct
	jmp .Lcgkk
	.size EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_info, .-EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcsignum_closure
.type EngineziCoreziVec_zdfNumVec4zuzdcsignum_closure, @object
EngineziCoreziVec_zdfNumVec4zuzdcsignum_closure:
	.quad	EngineziCoreziVec_zdfNumVec4zuzdcsignum_info
.section .rodata
	.align 8
.align 1
cgkW_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
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
	.byte	100
	.byte	54
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgkZ_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct
.type EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct, @object
EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgkW_str
	.quad	cgkZ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfF9_info:
.Lcglt:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcglz
	addq $5,EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcglz:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfF9_info, .-sfF9_info
.text
	.align 8
	.quad	4
	.quad	32
sfF8_info:
.LcglF:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfF9_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfF8_info, .-sfF8_info
.text
	.align 8
	.quad	4
	.quad	32
sfF7_info:
.LcglL:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 32(%rbp),%rbx
	movq $sfF8_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfF7_info, .-sfF7_info
.text
	.align 8
	.quad	4
	.quad	32
sfF6_info:
.LcglO:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movq 32(%rbp),%rbx
	movq $sfF7_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfF6_info, .-sfF6_info
.text
	.align 8
	.quad	1
	.quad	32
sgkr_info:
.LcglR:
	incq UNKNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfF6_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_ap_p_fast
	.size sgkr_info, .-sgkr_info
.text
	.align 8
	.quad	1
	.quad	32
sgkt_info:
.LcglX:
	movq 8(%rbp),%rax
	movq 47(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgkr_info,0(%rbp)
	testq $7,%rbx
	jne sgkr_info
	jmp *(%rbx)
	.size sgkt_info, .-sgkt_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec4zuzdcsignum_info
.type EngineziCoreziVec_zdfNumVec4zuzdcsignum_info, @object
EngineziCoreziVec_zdfNumVec4zuzdcsignum_info:
.Lcgm6:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgm8
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct
	je .Lcgm9
.Lcgma:
	incq EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgkt_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgkt_info
	jmp *(%rbx)
.Lcgm8:
	movl $EngineziCoreziVec_zdfNumVec4zuzdcsignum_closure,%ebx
	jmp *-8(%r13)
.Lcgm9:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct+56
	movq $EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4zuzdcsignum_ct
	jmp .Lcgma
	.size EngineziCoreziVec_zdfNumVec4zuzdcsignum_info, .-EngineziCoreziVec_zdfNumVec4zuzdcsignum_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcabs_closure
.type EngineziCoreziVec_zdfNumVec4zuzdcabs_closure, @object
EngineziCoreziVec_zdfNumVec4zuzdcabs_closure:
	.quad	EngineziCoreziVec_zdfNumVec4zuzdcabs_info
.section .rodata
	.align 8
.align 1
cgmM_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
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
	.byte	100
	.byte	54
	.byte	105
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgmP_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcabs_ct
.type EngineziCoreziVec_zdfNumVec4zuzdcabs_ct, @object
EngineziCoreziVec_zdfNumVec4zuzdcabs_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgmM_str
	.quad	cgmP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfFD_info:
.Lcgnj:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcgnp
	addq $5,EngineziCoreziVec_zdfNumVec4zuzdcabs_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcgnp:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfFD_info, .-sfFD_info
.text
	.align 8
	.quad	4
	.quad	32
sfFC_info:
.Lcgnv:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfFD_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfFC_info, .-sfFC_info
.text
	.align 8
	.quad	4
	.quad	32
sfFB_info:
.LcgnB:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 32(%rbp),%rbx
	movq $sfFC_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfFB_info, .-sfFB_info
.text
	.align 8
	.quad	4
	.quad	32
sfFA_info:
.LcgnE:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movq 32(%rbp),%rbx
	movq $sfFB_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfFA_info, .-sfFA_info
.text
	.align 8
	.quad	1
	.quad	32
sgmh_info:
.LcgnH:
	incq UNKNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfFA_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_ap_p_fast
	.size sgmh_info, .-sgmh_info
.text
	.align 8
	.quad	1
	.quad	32
sgmj_info:
.LcgnN:
	movq 8(%rbp),%rax
	movq 39(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgmh_info,0(%rbp)
	testq $7,%rbx
	jne sgmh_info
	jmp *(%rbx)
	.size sgmj_info, .-sgmj_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec4zuzdcabs_info
.type EngineziCoreziVec_zdfNumVec4zuzdcabs_info, @object
EngineziCoreziVec_zdfNumVec4zuzdcabs_info:
.LcgnW:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgnY
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4zuzdcabs_ct
	je .LcgnZ
.Lcgo0:
	incq EngineziCoreziVec_zdfNumVec4zuzdcabs_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgmj_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgmj_info
	jmp *(%rbx)
.LcgnY:
	movl $EngineziCoreziVec_zdfNumVec4zuzdcabs_closure,%ebx
	jmp *-8(%r13)
.LcgnZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4zuzdcabs_ct+56
	movq $EngineziCoreziVec_zdfNumVec4zuzdcabs_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4zuzdcabs_ct
	jmp .Lcgo0
	.size EngineziCoreziVec_zdfNumVec4zuzdcabs_info, .-EngineziCoreziVec_zdfNumVec4zuzdcabs_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdczm_closure
.type EngineziCoreziVec_zdfNumVec4zuzdczm_closure, @object
EngineziCoreziVec_zdfNumVec4zuzdczm_closure:
	.quad	EngineziCoreziVec_zdfNumVec4zuzdczm_info
.section .rodata
	.align 8
.align 1
cgoG_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	95
	.byte	36
	.byte	99
	.byte	45
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgoJ_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdczm_ct
.type EngineziCoreziVec_zdfNumVec4zuzdczm_ct, @object
EngineziCoreziVec_zdfNumVec4zuzdczm_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgoG_str
	.quad	cgoJ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfGi_info:
.Lcgph:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcgpn
	addq $5,EngineziCoreziVec_zdfNumVec4zuzdczm_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcgpn:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfGi_info, .-sfGi_info
.text
	.align 8
	.quad	647
	.quad	32
sfGh_info:
.Lcgpt:
	incq UNKNOWN_CALL_ctr
	movq 56(%rbp),%rax
	movq %rbx,56(%rbp)
	movq %rax,%rbx
	movq 24(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sfGi_info,32(%rbp)
	addq $32,%rbp
	jmp stg_ap_pp_fast
	.size sfGh_info, .-sfGh_info
.text
	.align 8
	.quad	1031
	.quad	32
sfGg_info:
.Lcgpz:
	incq UNKNOWN_CALL_ctr
	movq %rbx,40(%rbp)
	movq 56(%rbp),%rbx
	movq 32(%rbp),%r14
	movq 16(%rbp),%rsi
	movq $sfGh_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfGg_info, .-sfGg_info
.text
	.align 8
	.quad	7
	.quad	32
sfGf_info:
.LcgpC:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 48(%rbp),%rsi
	movq %rbx,48(%rbp)
	movq 56(%rbp),%rbx
	movq $sfGg_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfGf_info, .-sfGf_info
.text
	.align 8
	.quad	5
	.quad	32
sgo7_info:
.LcgpF:
	incq UNKNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,32(%rbp)
	movq 7(%rbx),%rsi
	movq 40(%rbp),%rbx
	movq $sfGf_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_pp_fast
	.size sgo7_info, .-sgo7_info
.text
	.align 8
	.quad	2
	.quad	32
sgo8_info:
.LcgpL:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgo7_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgo7_info
	jmp *(%rbx)
	.size sgo8_info, .-sgo8_info
.text
	.align 8
	.quad	2
	.quad	32
sgoa_info:
.LcgpX:
	movq 16(%rbp),%rax
	movq 23(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgo8_info,0(%rbp)
	testq $7,%rbx
	jne sgo8_info
	jmp *(%rbx)
	.size sgoa_info, .-sgoa_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec4zuzdczm_info
.type EngineziCoreziVec_zdfNumVec4zuzdczm_info, @object
EngineziCoreziVec_zdfNumVec4zuzdczm_info:
.Lcgq6:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgq8
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4zuzdczm_ct
	je .Lcgq9
.Lcgqa:
	incq EngineziCoreziVec_zdfNumVec4zuzdczm_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgoa_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgoa_info
	jmp *(%rbx)
.Lcgq8:
	movl $EngineziCoreziVec_zdfNumVec4zuzdczm_closure,%ebx
	jmp *-8(%r13)
.Lcgq9:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4zuzdczm_ct+56
	movq $EngineziCoreziVec_zdfNumVec4zuzdczm_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4zuzdczm_ct
	jmp .Lcgqa
	.size EngineziCoreziVec_zdfNumVec4zuzdczm_info, .-EngineziCoreziVec_zdfNumVec4zuzdczm_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdczt_closure
.type EngineziCoreziVec_zdfNumVec4zuzdczt_closure, @object
EngineziCoreziVec_zdfNumVec4zuzdczt_closure:
	.quad	EngineziCoreziVec_zdfNumVec4zuzdczt_info
.section .rodata
	.align 8
.align 1
cgqQ_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	95
	.byte	36
	.byte	99
	.byte	42
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgqT_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdczt_ct
.type EngineziCoreziVec_zdfNumVec4zuzdczt_ct, @object
EngineziCoreziVec_zdfNumVec4zuzdczt_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgqQ_str
	.quad	cgqT_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfGX_info:
.Lcgrr:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lcgrx
	addq $5,EngineziCoreziVec_zdfNumVec4zuzdczt_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcgrx:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfGX_info, .-sfGX_info
.text
	.align 8
	.quad	647
	.quad	32
sfGW_info:
.LcgrD:
	incq UNKNOWN_CALL_ctr
	movq 56(%rbp),%rax
	movq %rbx,56(%rbp)
	movq %rax,%rbx
	movq 24(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sfGX_info,32(%rbp)
	addq $32,%rbp
	jmp stg_ap_pp_fast
	.size sfGW_info, .-sfGW_info
.text
	.align 8
	.quad	1031
	.quad	32
sfGV_info:
.LcgrJ:
	incq UNKNOWN_CALL_ctr
	movq %rbx,40(%rbp)
	movq 56(%rbp),%rbx
	movq 32(%rbp),%r14
	movq 16(%rbp),%rsi
	movq $sfGW_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfGV_info, .-sfGV_info
.text
	.align 8
	.quad	7
	.quad	32
sfGU_info:
.LcgrM:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 48(%rbp),%rsi
	movq %rbx,48(%rbp)
	movq 56(%rbp),%rbx
	movq $sfGV_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfGU_info, .-sfGU_info
.text
	.align 8
	.quad	5
	.quad	32
sgqh_info:
.LcgrP:
	incq UNKNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,32(%rbp)
	movq 7(%rbx),%rsi
	movq 40(%rbp),%rbx
	movq $sfGU_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_pp_fast
	.size sgqh_info, .-sgqh_info
.text
	.align 8
	.quad	2
	.quad	32
sgqi_info:
.LcgrV:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgqh_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgqh_info
	jmp *(%rbx)
	.size sgqi_info, .-sgqi_info
.text
	.align 8
	.quad	2
	.quad	32
sgqk_info:
.Lcgs7:
	movq 16(%rbp),%rax
	movq 15(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgqi_info,0(%rbp)
	testq $7,%rbx
	jne sgqi_info
	jmp *(%rbx)
	.size sgqk_info, .-sgqk_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec4zuzdczt_info
.type EngineziCoreziVec_zdfNumVec4zuzdczt_info, @object
EngineziCoreziVec_zdfNumVec4zuzdczt_info:
.Lcgsg:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgsi
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4zuzdczt_ct
	je .Lcgsj
.Lcgsk:
	incq EngineziCoreziVec_zdfNumVec4zuzdczt_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgqk_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgqk_info
	jmp *(%rbx)
.Lcgsi:
	movl $EngineziCoreziVec_zdfNumVec4zuzdczt_closure,%ebx
	jmp *-8(%r13)
.Lcgsj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4zuzdczt_ct+56
	movq $EngineziCoreziVec_zdfNumVec4zuzdczt_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4zuzdczt_ct
	jmp .Lcgsk
	.size EngineziCoreziVec_zdfNumVec4zuzdczt_info, .-EngineziCoreziVec_zdfNumVec4zuzdczt_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdczp_closure
.type EngineziCoreziVec_zdfNumVec4zuzdczp_closure, @object
EngineziCoreziVec_zdfNumVec4zuzdczp_closure:
	.quad	EngineziCoreziVec_zdfNumVec4zuzdczp_info
.section .rodata
	.align 8
.align 1
cgt0_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	95
	.byte	36
	.byte	99
	.byte	43
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	109
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgt3_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdczp_ct
.type EngineziCoreziVec_zdfNumVec4zuzdczp_ct, @object
EngineziCoreziVec_zdfNumVec4zuzdczp_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgt0_str
	.quad	cgt3_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sfHC_info:
.LcgtB:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcgtH
	addq $5,EngineziCoreziVec_zdfNumVec4zuzdczp_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcgtH:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfHC_info, .-sfHC_info
.text
	.align 8
	.quad	647
	.quad	32
sfHB_info:
.LcgtN:
	incq UNKNOWN_CALL_ctr
	movq 56(%rbp),%rax
	movq %rbx,56(%rbp)
	movq %rax,%rbx
	movq 24(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sfHC_info,32(%rbp)
	addq $32,%rbp
	jmp stg_ap_pp_fast
	.size sfHB_info, .-sfHB_info
.text
	.align 8
	.quad	1031
	.quad	32
sfHA_info:
.LcgtT:
	incq UNKNOWN_CALL_ctr
	movq %rbx,40(%rbp)
	movq 56(%rbp),%rbx
	movq 32(%rbp),%r14
	movq 16(%rbp),%rsi
	movq $sfHB_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfHA_info, .-sfHA_info
.text
	.align 8
	.quad	7
	.quad	32
sfHz_info:
.LcgtW:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 48(%rbp),%rsi
	movq %rbx,48(%rbp)
	movq 56(%rbp),%rbx
	movq $sfHA_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfHz_info, .-sfHz_info
.text
	.align 8
	.quad	5
	.quad	32
sgsr_info:
.LcgtZ:
	incq UNKNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,32(%rbp)
	movq 7(%rbx),%rsi
	movq 40(%rbp),%rbx
	movq $sfHz_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_pp_fast
	.size sgsr_info, .-sgsr_info
.text
	.align 8
	.quad	2
	.quad	32
sgss_info:
.Lcgu5:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgsr_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgsr_info
	jmp *(%rbx)
	.size sgss_info, .-sgss_info
.text
	.align 8
	.quad	2
	.quad	32
sgst_info:
.Lcguh:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgss_info,0(%rbp)
	testq $7,%rbx
	jne sgss_info
	jmp *(%rbx)
	.size sgst_info, .-sgst_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec4zuzdczp_info
.type EngineziCoreziVec_zdfNumVec4zuzdczp_info, @object
EngineziCoreziVec_zdfNumVec4zuzdczp_info:
.Lcguq:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgus
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4zuzdczp_ct
	je .Lcgut
.Lcguu:
	incq EngineziCoreziVec_zdfNumVec4zuzdczp_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgst_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgst_info
	jmp *(%rbx)
.Lcgus:
	movl $EngineziCoreziVec_zdfNumVec4zuzdczp_closure,%ebx
	jmp *-8(%r13)
.Lcgut:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4zuzdczp_ct+56
	movq $EngineziCoreziVec_zdfNumVec4zuzdczp_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4zuzdczp_ct
	jmp .Lcguu
	.size EngineziCoreziVec_zdfNumVec4zuzdczp_info, .-EngineziCoreziVec_zdfNumVec4zuzdczp_info
.data
	.align 8
.align 1
rfyz_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	0
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfNumVec4zuzdcnegate_srt:
	.quad	rfyz_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcnegate_closure
.type EngineziCoreziVec_zdfNumVec4zuzdcnegate_closure, @object
EngineziCoreziVec_zdfNumVec4zuzdcnegate_closure:
	.quad	EngineziCoreziVec_zdfNumVec4zuzdcnegate_info
	.quad	0
.section .rodata
	.align 8
.align 1
cgvc_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
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
	.byte	100
	.byte	54
	.byte	106
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgvf_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct
.type EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct, @object
EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgvc_str
	.quad	cgvf_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	260
	.quad	32
sfI9_info:
.LcgvN:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcgvT
	addq $5,EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcgvT:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfI9_info, .-sfI9_info
.text
	.align 8
	.quad	5
	.quad	32
sfI8_info:
.LcgvZ:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq %rbx,40(%rbp)
	movq 32(%rbp),%rbx
	movq 8(%rbp),%rsi
	movq $sfI9_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_pp_fast
	.size sfI8_info, .-sfI8_info
.text
	.align 8
	.quad	5
	.quad	32
sfI7_info:
.Lcgw2:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 16(%rbp),%rsi
	movq %rbx,16(%rbp)
	movq 32(%rbp),%rbx
	movq $sfI8_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfI7_info, .-sfI7_info
.text
	.align 8
	.quad	5
	.quad	32
sfI6_info:
.Lcgw5:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 24(%rbp),%rsi
	movq %rbx,24(%rbp)
	movq 32(%rbp),%rbx
	movq $sfI7_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfI6_info, .-sfI6_info
.text
	.align 8
	.quad	2
	.quad	32
sguD_info:
.Lcgw8:
	incq UNKNOWN_CALL_ctr
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 8(%rbp),%rbx
	movq $sfI6_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_ap_pp_fast
	.size sguD_info, .-sguD_info
.text
	.align 8
	.quad	2
	.quad	32
sfHW_info:
.Lcgwe:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sguD_info,0(%rbp)
	testq $7,%rbx
	jne sguD_info
	jmp *(%rbx)
	.size sfHW_info, .-sfHW_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec4zuzdcnegate_srt-(sguF_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sguF_info:
.Lcgwm:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 55(%rbx),%rbx
	movl $rfyz_closure+1,%r14d
	movq $sfHW_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sguF_info, .-sguF_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec4zuzdcnegate_srt-(EngineziCoreziVec_zdfNumVec4zuzdcnegate_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfNumVec4zuzdcnegate_info
.type EngineziCoreziVec_zdfNumVec4zuzdcnegate_info, @object
EngineziCoreziVec_zdfNumVec4zuzdcnegate_info:
.Lcgwq:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcgws
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct
	je .Lcgwt
.Lcgwu:
	incq EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sguF_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sguF_info
	jmp *(%rbx)
.Lcgws:
	movl $EngineziCoreziVec_zdfNumVec4zuzdcnegate_closure,%ebx
	jmp *-8(%r13)
.Lcgwt:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct+56
	movq $EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4zuzdcnegate_ct
	jmp .Lcgwu
	.size EngineziCoreziVec_zdfNumVec4zuzdcnegate_info, .-EngineziCoreziVec_zdfNumVec4zuzdcnegate_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfNumVec4_srt:
	.quad	rfyz_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4_closure
.type EngineziCoreziVec_zdfNumVec4_closure, @object
EngineziCoreziVec_zdfNumVec4_closure:
	.quad	EngineziCoreziVec_zdfNumVec4_info
	.quad	0
.section .rodata
	.align 8
.align 1
cgwO_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	78
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgwR_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec4_ct
.type EngineziCoreziVec_zdfNumVec4_ct, @object
EngineziCoreziVec_zdfNumVec4_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgwO_str
	.quad	cgwR_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cgx0_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	119
	.byte	66
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgx3_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
sgwB_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgx0_str
	.quad	cgx3_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sgwB_info:
.Lcgx8:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgwB_ct
	je .Lcgxb
.Lcgxd:
	incq sgwB_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec4zuzdcfromInteger_info
.Lcgxb:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgwB_ct+56
	movq $sgwB_ct,ticky_entry_ctrs
	movq $1,sgwB_ct
	jmp .Lcgxd
	.size sgwB_info, .-sgwB_info
.section .rodata
	.align 8
.align 1
cgxi_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	119
	.byte	67
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgxl_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgwC_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgxi_str
	.quad	cgxl_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sgwC_info:
.Lcgxq:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgwC_ct
	je .Lcgxt
.Lcgxv:
	incq sgwC_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec4zuzdcsignum_info
.Lcgxt:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgwC_ct+56
	movq $sgwC_ct,ticky_entry_ctrs
	movq $1,sgwC_ct
	jmp .Lcgxv
	.size sgwC_info, .-sgwC_info
.section .rodata
	.align 8
.align 1
cgxA_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	119
	.byte	68
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgxD_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgwD_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgxA_str
	.quad	cgxD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sgwD_info:
.LcgxI:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgwD_ct
	je .LcgxL
.LcgxN:
	incq sgwD_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec4zuzdcabs_info
.LcgxL:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgwD_ct+56
	movq $sgwD_ct,ticky_entry_ctrs
	movq $1,sgwD_ct
	jmp .LcgxN
	.size sgwD_info, .-sgwD_info
.section .rodata
	.align 8
.align 1
cgxS_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	119
	.byte	69
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgxV_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgwE_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgxS_str
	.quad	cgxV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec4_srt-(sgwE_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
sgwE_info:
.Lcgy0:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgwE_ct
	je .Lcgy3
.Lcgy5:
	incq sgwE_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec4zuzdcnegate_info
.Lcgy3:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgwE_ct+56
	movq $sgwE_ct,ticky_entry_ctrs
	movq $1,sgwE_ct
	jmp .Lcgy5
	.size sgwE_info, .-sgwE_info
.section .rodata
	.align 8
.align 1
cgya_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	119
	.byte	70
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgyd_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgwF_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgya_str
	.quad	cgyd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sgwF_info:
.Lcgyi:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgwF_ct
	je .Lcgyl
.Lcgyn:
	incq sgwF_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec4zuzdczm_info
.Lcgyl:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgwF_ct+56
	movq $sgwF_ct,ticky_entry_ctrs
	movq $1,sgwF_ct
	jmp .Lcgyn
	.size sgwF_info, .-sgwF_info
.section .rodata
	.align 8
.align 1
cgys_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	119
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgyv_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgwG_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgys_str
	.quad	cgyv_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sgwG_info:
.LcgyA:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgwG_ct
	je .LcgyD
.LcgyF:
	incq sgwG_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec4zuzdczt_info
.LcgyD:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgwG_ct+56
	movq $sgwG_ct,ticky_entry_ctrs
	movq $1,sgwG_ct
	jmp .LcgyF
	.size sgwG_info, .-sgwG_info
.section .rodata
	.align 8
.align 1
cgyK_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	119
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgyN_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgwH_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgyK_str
	.quad	cgyN_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sgwH_info:
.LcgyS:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgwH_ct
	je .LcgyV
.LcgyX:
	incq sgwH_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec4zuzdczp_info
.LcgyV:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgwH_ct+56
	movq $sgwH_ct,ticky_entry_ctrs
	movq $1,sgwH_ct
	jmp .LcgyX
	.size sgwH_info, .-sgwH_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec4_srt-(EngineziCoreziVec_zdfNumVec4_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfNumVec4_info
.type EngineziCoreziVec_zdfNumVec4_info, @object
EngineziCoreziVec_zdfNumVec4_info:
.Lcgz1:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .Lcgz5
	addq $22,EngineziCoreziVec_zdfNumVec4_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec4_ct
	je .Lcgz6
.Lcgz7:
	incq EngineziCoreziVec_zdfNumVec4_ct+40
	movq $sgwB_info,-168(%r12)
	movq %r14,-160(%r12)
	movq $sgwC_info,-152(%r12)
	movq %r14,-144(%r12)
	movq $sgwD_info,-136(%r12)
	movq %r14,-128(%r12)
	movq $sgwE_info,-120(%r12)
	movq %r14,-112(%r12)
	movq $sgwF_info,-104(%r12)
	movq %r14,-96(%r12)
	movq $sgwG_info,-88(%r12)
	movq %r14,-80(%r12)
	movq $sgwH_info,-72(%r12)
	movq %r14,-64(%r12)
	incq RET_NEW_ctr
	movq $base_GHCziNum_DZCNum_con_info,-56(%r12)
	leaq -70(%r12),%rax
	movq %rax,-48(%r12)
	leaq -86(%r12),%rax
	movq %rax,-40(%r12)
	leaq -102(%r12),%rax
	movq %rax,-32(%r12)
	leaq -119(%r12),%rax
	movq %rax,-24(%r12)
	leaq -135(%r12),%rax
	movq %rax,-16(%r12)
	leaq -151(%r12),%rax
	movq %rax,-8(%r12)
	leaq -167(%r12),%rax
	movq %rax,0(%r12)
	leaq -55(%r12),%rbx
	jmp *0(%rbp)
.Lcgz5:
	movq $176,192(%r13)
.Lcgz3:
	movl $EngineziCoreziVec_zdfNumVec4_closure,%ebx
	jmp *-8(%r13)
.Lcgz6:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec4_ct+56
	movq $EngineziCoreziVec_zdfNumVec4_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec4_ct
	jmp .Lcgz7
	.size EngineziCoreziVec_zdfNumVec4_info, .-EngineziCoreziVec_zdfNumVec4_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_closure
.type EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_closure, @object
EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_closure:
	.quad	EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_info
.section .rodata
	.align 8
.align 1
cgzz_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	70
	.byte	117
	.byte	110
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	95
	.byte	36
	.byte	99
	.byte	102
	.byte	109
	.byte	97
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	71
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgzC_str:
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct
.type EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct, @object
EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgzz_str
	.quad	cgzC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sfIz_info:
.LcgzY:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgA4
	addq $4,EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcgA4:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfIz_info, .-sfIz_info
.text
	.align 8
	.quad	3
	.quad	32
sfIy_info:
.LcgA9:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfIz_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfIy_info, .-sfIy_info
.text
	.align 8
	.quad	3
	.quad	32
sfIx_info:
.LcgAf:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 24(%rbp),%rbx
	movq $sfIy_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfIx_info, .-sfIx_info
.text
	.align 8
	.quad	1
	.quad	32
sgzh_info:
.LcgAi:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfIx_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_p_fast
	.size sgzh_info, .-sgzh_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_info
.type EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_info, @object
EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_info:
.LcgAn:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgAp
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct
	je .LcgAq
.LcgAr:
	incq EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sgzh_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgzh_info
	jmp *(%rbx)
.LcgAp:
	movl $EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_closure,%ebx
	jmp *-8(%r13)
.LcgAq:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct+56
	movq $EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_ct
	jmp .LcgAr
	.size EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_info, .-EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_closure
.type EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_closure, @object
EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_closure:
	.quad	EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_info
.section .rodata
	.align 8
.align 1
cgAN_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	70
	.byte	117
	.byte	110
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	95
	.byte	36
	.byte	99
	.byte	60
	.byte	36
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	70
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgAQ_str:
	.byte	46
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct
.type EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct, @object
EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgAN_str
	.quad	cgAQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sfIJ_info:
.LcgB4:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgBa
	addq $4,EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %rbx,-16(%r12)
	movq %rbx,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcgBa:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfIJ_info, .-sfIJ_info
.text
	.align 8
	.quad	1
	.quad	32
sgAz_info:
.LcgBd:
	movq 8(%rbp),%rbx
	movq $sfIJ_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size sgAz_info, .-sgAz_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_info
.type EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_info, @object
EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_info:
.LcgBg:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgBi
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct
	je .LcgBj
.LcgBk:
	incq EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sgAz_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgAz_info
	jmp *(%rbx)
.LcgBi:
	movl $EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_closure,%ebx
	jmp *-8(%r13)
.LcgBj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct+56
	movq $EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_ct
	jmp .LcgBk
	.size EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_info, .-EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec3_closure
.type EngineziCoreziVec_zdfFunctorVec3_closure, @object
EngineziCoreziVec_zdfFunctorVec3_closure:
	.quad	base_GHCziBase_DZCFunctor_static_info
	.quad	EngineziCoreziVec_zdfFunctorVec3zuzdcfmap_closure+2
	.quad	EngineziCoreziVec_zdfFunctorVec3zuzdczlzd_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_closure
.type EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_closure, @object
EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_closure:
	.quad	EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_info
.section .rodata
	.align 8
.align 1
cgBS_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
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
	.byte	100
	.byte	54
	.byte	110
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgBV_str:
	.byte	43
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct
.type EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct, @object
EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgBS_str
	.quad	cgBV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	131
	.quad	32
sfJ2_info:
.LcgCh:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgCn
	addq $4,EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcgCn:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfJ2_info, .-sfJ2_info
.text
	.align 8
	.quad	3
	.quad	32
sfJ1_info:
.LcgCs:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movq 16(%rbp),%rbx
	movq $sfJ2_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfJ1_info, .-sfJ1_info
.text
	.align 8
	.quad	2
	.quad	32
sfJ0_info:
.LcgCv:
	incq UNKNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%rbx
	movq 16(%rbp),%r14
	movq $sfJ1_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sfJ0_info, .-sfJ0_info
.text
	.align 8
	.quad	1
	.quad	32
sgBu_info:
.LcgCy:
	incq UNKNOWN_CALL_ctr
	movq 55(%rbx),%rax
	movq %rax,0(%rbp)
	movq 55(%rbx),%rbx
	movq 8(%rbp),%r14
	movq $sfJ0_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sgBu_info, .-sgBu_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_info
.type EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_info, @object
EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_info:
.LcgCC:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgCE
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct
	je .LcgCF
.LcgCG:
	incq EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgBu_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgBu_info
	jmp *(%rbx)
.LcgCE:
	movl $EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_closure,%ebx
	jmp *-8(%r13)
.LcgCF:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct+56
	movq $EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_ct
	jmp .LcgCG
	.size EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_info, .-EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcsignum_closure
.type EngineziCoreziVec_zdfNumVec3zuzdcsignum_closure, @object
EngineziCoreziVec_zdfNumVec3zuzdcsignum_closure:
	.quad	EngineziCoreziVec_zdfNumVec3zuzdcsignum_info
.section .rodata
	.align 8
.align 1
cgDf_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
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
	.byte	100
	.byte	54
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgDi_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct
.type EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct, @object
EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgDf_str
	.quad	cgDi_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sfJs_info:
.LcgDI:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgDO
	addq $4,EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcgDO:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfJs_info, .-sfJs_info
.text
	.align 8
	.quad	3
	.quad	32
sfJr_info:
.LcgDT:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfJs_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfJr_info, .-sfJr_info
.text
	.align 8
	.quad	3
	.quad	32
sfJq_info:
.LcgDZ:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 24(%rbp),%rbx
	movq $sfJr_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfJq_info, .-sfJq_info
.text
	.align 8
	.quad	1
	.quad	32
sgCN_info:
.LcgE2:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfJq_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_p_fast
	.size sgCN_info, .-sgCN_info
.text
	.align 8
	.quad	1
	.quad	32
sgCP_info:
.LcgE7:
	movq 8(%rbp),%rax
	movq 47(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgCN_info,0(%rbp)
	testq $7,%rbx
	jne sgCN_info
	jmp *(%rbx)
	.size sgCP_info, .-sgCP_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec3zuzdcsignum_info
.type EngineziCoreziVec_zdfNumVec3zuzdcsignum_info, @object
EngineziCoreziVec_zdfNumVec3zuzdcsignum_info:
.LcgEg:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgEi
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct
	je .LcgEj
.LcgEk:
	incq EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgCP_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgCP_info
	jmp *(%rbx)
.LcgEi:
	movl $EngineziCoreziVec_zdfNumVec3zuzdcsignum_closure,%ebx
	jmp *-8(%r13)
.LcgEj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct+56
	movq $EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3zuzdcsignum_ct
	jmp .LcgEk
	.size EngineziCoreziVec_zdfNumVec3zuzdcsignum_info, .-EngineziCoreziVec_zdfNumVec3zuzdcsignum_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcabs_closure
.type EngineziCoreziVec_zdfNumVec3zuzdcabs_closure, @object
EngineziCoreziVec_zdfNumVec3zuzdcabs_closure:
	.quad	EngineziCoreziVec_zdfNumVec3zuzdcabs_info
.section .rodata
	.align 8
.align 1
cgET_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
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
	.byte	100
	.byte	54
	.byte	112
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgEW_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcabs_ct
.type EngineziCoreziVec_zdfNumVec3zuzdcabs_ct, @object
EngineziCoreziVec_zdfNumVec3zuzdcabs_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgET_str
	.quad	cgEW_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sfJS_info:
.LcgFm:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgFs
	addq $4,EngineziCoreziVec_zdfNumVec3zuzdcabs_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcgFs:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfJS_info, .-sfJS_info
.text
	.align 8
	.quad	3
	.quad	32
sfJR_info:
.LcgFx:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfJS_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfJR_info, .-sfJR_info
.text
	.align 8
	.quad	3
	.quad	32
sfJQ_info:
.LcgFD:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 24(%rbp),%rbx
	movq $sfJR_info,0(%rbp)
	jmp stg_ap_p_fast
	.size sfJQ_info, .-sfJQ_info
.text
	.align 8
	.quad	1
	.quad	32
sgEr_info:
.LcgFG:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfJQ_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_p_fast
	.size sgEr_info, .-sgEr_info
.text
	.align 8
	.quad	1
	.quad	32
sgEt_info:
.LcgFL:
	movq 8(%rbp),%rax
	movq 39(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgEr_info,0(%rbp)
	testq $7,%rbx
	jne sgEr_info
	jmp *(%rbx)
	.size sgEt_info, .-sgEt_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec3zuzdcabs_info
.type EngineziCoreziVec_zdfNumVec3zuzdcabs_info, @object
EngineziCoreziVec_zdfNumVec3zuzdcabs_info:
.LcgFU:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgFW
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3zuzdcabs_ct
	je .LcgFX
.LcgFY:
	incq EngineziCoreziVec_zdfNumVec3zuzdcabs_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgEt_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgEt_info
	jmp *(%rbx)
.LcgFW:
	movl $EngineziCoreziVec_zdfNumVec3zuzdcabs_closure,%ebx
	jmp *-8(%r13)
.LcgFX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3zuzdcabs_ct+56
	movq $EngineziCoreziVec_zdfNumVec3zuzdcabs_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3zuzdcabs_ct
	jmp .LcgFY
	.size EngineziCoreziVec_zdfNumVec3zuzdcabs_info, .-EngineziCoreziVec_zdfNumVec3zuzdcabs_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdczm_closure
.type EngineziCoreziVec_zdfNumVec3zuzdczm_closure, @object
EngineziCoreziVec_zdfNumVec3zuzdczm_closure:
	.quad	EngineziCoreziVec_zdfNumVec3zuzdczm_info
.section .rodata
	.align 8
.align 1
cgGB_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	95
	.byte	36
	.byte	99
	.byte	45
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	114
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgGE_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdczm_ct
.type EngineziCoreziVec_zdfNumVec3zuzdczm_ct, @object
EngineziCoreziVec_zdfNumVec3zuzdczm_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgGB_str
	.quad	cgGE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sfKr_info:
.LcgH8:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgHe
	addq $4,EngineziCoreziVec_zdfNumVec3zuzdczm_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcgHe:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfKr_info, .-sfKr_info
.text
	.align 8
	.quad	261
	.quad	32
sfKq_info:
.LcgHj:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sfKr_info,24(%rbp)
	addq $24,%rbp
	jmp stg_ap_pp_fast
	.size sfKq_info, .-sfKq_info
.text
	.align 8
	.quad	5
	.quad	32
sfKp_info:
.LcgHp:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 32(%rbp),%rsi
	movq %rbx,32(%rbp)
	movq 40(%rbp),%rbx
	movq $sfKq_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfKp_info, .-sfKp_info
.text
	.align 8
	.quad	4
	.quad	32
sgG5_info:
.LcgHs:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 7(%rbx),%rsi
	movq 32(%rbp),%rbx
	movq $sfKp_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_pp_fast
	.size sgG5_info, .-sgG5_info
.text
	.align 8
	.quad	2
	.quad	32
sgG6_info:
.LcgHx:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgG5_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgG5_info
	jmp *(%rbx)
	.size sgG6_info, .-sgG6_info
.text
	.align 8
	.quad	2
	.quad	32
sgG8_info:
.LcgHI:
	movq 16(%rbp),%rax
	movq 23(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgG6_info,0(%rbp)
	testq $7,%rbx
	jne sgG6_info
	jmp *(%rbx)
	.size sgG8_info, .-sgG8_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec3zuzdczm_info
.type EngineziCoreziVec_zdfNumVec3zuzdczm_info, @object
EngineziCoreziVec_zdfNumVec3zuzdczm_info:
.LcgHR:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgHT
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3zuzdczm_ct
	je .LcgHU
.LcgHV:
	incq EngineziCoreziVec_zdfNumVec3zuzdczm_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgG8_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgG8_info
	jmp *(%rbx)
.LcgHT:
	movl $EngineziCoreziVec_zdfNumVec3zuzdczm_closure,%ebx
	jmp *-8(%r13)
.LcgHU:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3zuzdczm_ct+56
	movq $EngineziCoreziVec_zdfNumVec3zuzdczm_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3zuzdczm_ct
	jmp .LcgHV
	.size EngineziCoreziVec_zdfNumVec3zuzdczm_info, .-EngineziCoreziVec_zdfNumVec3zuzdczm_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdczt_closure
.type EngineziCoreziVec_zdfNumVec3zuzdczt_closure, @object
EngineziCoreziVec_zdfNumVec3zuzdczt_closure:
	.quad	EngineziCoreziVec_zdfNumVec3zuzdczt_info
.section .rodata
	.align 8
.align 1
cgIy_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	95
	.byte	36
	.byte	99
	.byte	42
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	115
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgIB_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdczt_ct
.type EngineziCoreziVec_zdfNumVec3zuzdczt_ct, @object
EngineziCoreziVec_zdfNumVec3zuzdczt_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgIy_str
	.quad	cgIB_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sfL0_info:
.LcgJ5:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgJb
	addq $4,EngineziCoreziVec_zdfNumVec3zuzdczt_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcgJb:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfL0_info, .-sfL0_info
.text
	.align 8
	.quad	261
	.quad	32
sfKZ_info:
.LcgJg:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sfL0_info,24(%rbp)
	addq $24,%rbp
	jmp stg_ap_pp_fast
	.size sfKZ_info, .-sfKZ_info
.text
	.align 8
	.quad	5
	.quad	32
sfKY_info:
.LcgJm:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 32(%rbp),%rsi
	movq %rbx,32(%rbp)
	movq 40(%rbp),%rbx
	movq $sfKZ_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfKY_info, .-sfKY_info
.text
	.align 8
	.quad	4
	.quad	32
sgI2_info:
.LcgJp:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 7(%rbx),%rsi
	movq 32(%rbp),%rbx
	movq $sfKY_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_pp_fast
	.size sgI2_info, .-sgI2_info
.text
	.align 8
	.quad	2
	.quad	32
sgI3_info:
.LcgJu:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgI2_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgI2_info
	jmp *(%rbx)
	.size sgI3_info, .-sgI3_info
.text
	.align 8
	.quad	2
	.quad	32
sgI5_info:
.LcgJF:
	movq 16(%rbp),%rax
	movq 15(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgI3_info,0(%rbp)
	testq $7,%rbx
	jne sgI3_info
	jmp *(%rbx)
	.size sgI5_info, .-sgI5_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec3zuzdczt_info
.type EngineziCoreziVec_zdfNumVec3zuzdczt_info, @object
EngineziCoreziVec_zdfNumVec3zuzdczt_info:
.LcgJO:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgJQ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3zuzdczt_ct
	je .LcgJR
.LcgJS:
	incq EngineziCoreziVec_zdfNumVec3zuzdczt_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgI5_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgI5_info
	jmp *(%rbx)
.LcgJQ:
	movl $EngineziCoreziVec_zdfNumVec3zuzdczt_closure,%ebx
	jmp *-8(%r13)
.LcgJR:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3zuzdczt_ct+56
	movq $EngineziCoreziVec_zdfNumVec3zuzdczt_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3zuzdczt_ct
	jmp .LcgJS
	.size EngineziCoreziVec_zdfNumVec3zuzdczt_info, .-EngineziCoreziVec_zdfNumVec3zuzdczt_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdczp_closure
.type EngineziCoreziVec_zdfNumVec3zuzdczp_closure, @object
EngineziCoreziVec_zdfNumVec3zuzdczp_closure:
	.quad	EngineziCoreziVec_zdfNumVec3zuzdczp_info
.section .rodata
	.align 8
.align 1
cgKv_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	95
	.byte	36
	.byte	99
	.byte	43
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	116
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgKy_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdczp_ct
.type EngineziCoreziVec_zdfNumVec3zuzdczp_ct, @object
EngineziCoreziVec_zdfNumVec3zuzdczp_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgKv_str
	.quad	cgKy_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
sfLz_info:
.LcgL2:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgL8
	addq $4,EngineziCoreziVec_zdfNumVec3zuzdczp_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcgL8:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfLz_info, .-sfLz_info
.text
	.align 8
	.quad	261
	.quad	32
sfLy_info:
.LcgLd:
	incq UNKNOWN_CALL_ctr
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sfLz_info,24(%rbp)
	addq $24,%rbp
	jmp stg_ap_pp_fast
	.size sfLy_info, .-sfLy_info
.text
	.align 8
	.quad	5
	.quad	32
sfLx_info:
.LcgLj:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 32(%rbp),%rsi
	movq %rbx,32(%rbp)
	movq 40(%rbp),%rbx
	movq $sfLy_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfLx_info, .-sfLx_info
.text
	.align 8
	.quad	4
	.quad	32
sgJZ_info:
.LcgLm:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 7(%rbx),%rsi
	movq 32(%rbp),%rbx
	movq $sfLx_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_pp_fast
	.size sgJZ_info, .-sgJZ_info
.text
	.align 8
	.quad	2
	.quad	32
sgK0_info:
.LcgLr:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgJZ_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgJZ_info
	jmp *(%rbx)
	.size sgK0_info, .-sgK0_info
.text
	.align 8
	.quad	2
	.quad	32
sgK1_info:
.LcgLC:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgK0_info,0(%rbp)
	testq $7,%rbx
	jne sgK0_info
	jmp *(%rbx)
	.size sgK1_info, .-sgK1_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec3zuzdczp_info
.type EngineziCoreziVec_zdfNumVec3zuzdczp_info, @object
EngineziCoreziVec_zdfNumVec3zuzdczp_info:
.LcgLL:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgLN
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3zuzdczp_ct
	je .LcgLO
.LcgLP:
	incq EngineziCoreziVec_zdfNumVec3zuzdczp_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgK1_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgK1_info
	jmp *(%rbx)
.LcgLN:
	movl $EngineziCoreziVec_zdfNumVec3zuzdczp_closure,%ebx
	jmp *-8(%r13)
.LcgLO:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3zuzdczp_ct+56
	movq $EngineziCoreziVec_zdfNumVec3zuzdczp_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3zuzdczp_ct
	jmp .LcgLP
	.size EngineziCoreziVec_zdfNumVec3zuzdczp_info, .-EngineziCoreziVec_zdfNumVec3zuzdczp_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfNumVec3zuzdcnegate_srt:
	.quad	rfyz_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcnegate_closure
.type EngineziCoreziVec_zdfNumVec3zuzdcnegate_closure, @object
EngineziCoreziVec_zdfNumVec3zuzdcnegate_closure:
	.quad	EngineziCoreziVec_zdfNumVec3zuzdcnegate_info
	.quad	0
.section .rodata
	.align 8
.align 1
cgMr_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
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
	.byte	100
	.byte	54
	.byte	113
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgMu_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct
.type EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct, @object
EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgMr_str
	.quad	cgMu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	131
	.quad	32
sfM2_info:
.LcgMY:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcgN4
	addq $4,EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcgN4:
	movq $32,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfM2_info, .-sfM2_info
.text
	.align 8
	.quad	4
	.quad	32
sfM1_info:
.LcgN9:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,32(%rbp)
	movq 24(%rbp),%rbx
	movq 8(%rbp),%rsi
	movq $sfM2_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_pp_fast
	.size sfM1_info, .-sfM1_info
.text
	.align 8
	.quad	4
	.quad	32
sfM0_info:
.LcgNc:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 16(%rbp),%rsi
	movq %rbx,16(%rbp)
	movq 24(%rbp),%rbx
	movq $sfM1_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sfM0_info, .-sfM0_info
.text
	.align 8
	.quad	2
	.quad	32
sgLW_info:
.LcgNf:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 8(%rbp),%rbx
	movq $sfM0_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_pp_fast
	.size sgLW_info, .-sgLW_info
.text
	.align 8
	.quad	2
	.quad	32
sfLS_info:
.LcgNk:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgLW_info,0(%rbp)
	testq $7,%rbx
	jne sgLW_info
	jmp *(%rbx)
	.size sfLS_info, .-sfLS_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec3zuzdcnegate_srt-(sgLY_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sgLY_info:
.LcgNs:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 55(%rbx),%rbx
	movl $rfyz_closure+1,%r14d
	movq $sfLS_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sgLY_info, .-sgLY_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec3zuzdcnegate_srt-(EngineziCoreziVec_zdfNumVec3zuzdcnegate_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfNumVec3zuzdcnegate_info
.type EngineziCoreziVec_zdfNumVec3zuzdcnegate_info, @object
EngineziCoreziVec_zdfNumVec3zuzdcnegate_info:
.LcgNw:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgNy
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct
	je .LcgNz
.LcgNA:
	incq EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgLY_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgLY_info
	jmp *(%rbx)
.LcgNy:
	movl $EngineziCoreziVec_zdfNumVec3zuzdcnegate_closure,%ebx
	jmp *-8(%r13)
.LcgNz:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct+56
	movq $EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3zuzdcnegate_ct
	jmp .LcgNA
	.size EngineziCoreziVec_zdfNumVec3zuzdcnegate_info, .-EngineziCoreziVec_zdfNumVec3zuzdcnegate_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfNumVec3_srt:
	.quad	rfyz_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3_closure
.type EngineziCoreziVec_zdfNumVec3_closure, @object
EngineziCoreziVec_zdfNumVec3_closure:
	.quad	EngineziCoreziVec_zdfNumVec3_info
	.quad	0
.section .rodata
	.align 8
.align 1
cgNU_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	79
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgNX_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec3_ct
.type EngineziCoreziVec_zdfNumVec3_ct, @object
EngineziCoreziVec_zdfNumVec3_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgNU_str
	.quad	cgNX_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cgO6_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	78
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgO9_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
sgNH_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgO6_str
	.quad	cgO9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sgNH_info:
.LcgOe:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgNH_ct
	je .LcgOh
.LcgOj:
	incq sgNH_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec3zuzdcfromInteger_info
.LcgOh:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgNH_ct+56
	movq $sgNH_ct,ticky_entry_ctrs
	movq $1,sgNH_ct
	jmp .LcgOj
	.size sgNH_info, .-sgNH_info
.section .rodata
	.align 8
.align 1
cgOo_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	78
	.byte	73
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgOr_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgNI_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgOo_str
	.quad	cgOr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sgNI_info:
.LcgOw:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgNI_ct
	je .LcgOz
.LcgOB:
	incq sgNI_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec3zuzdcsignum_info
.LcgOz:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgNI_ct+56
	movq $sgNI_ct,ticky_entry_ctrs
	movq $1,sgNI_ct
	jmp .LcgOB
	.size sgNI_info, .-sgNI_info
.section .rodata
	.align 8
.align 1
cgOG_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	78
	.byte	74
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgOJ_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgNJ_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgOG_str
	.quad	cgOJ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sgNJ_info:
.LcgOO:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgNJ_ct
	je .LcgOR
.LcgOT:
	incq sgNJ_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec3zuzdcabs_info
.LcgOR:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgNJ_ct+56
	movq $sgNJ_ct,ticky_entry_ctrs
	movq $1,sgNJ_ct
	jmp .LcgOT
	.size sgNJ_info, .-sgNJ_info
.section .rodata
	.align 8
.align 1
cgOY_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	78
	.byte	75
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgP1_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgNK_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cgOY_str
	.quad	cgP1_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec3_srt-(sgNK_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
sgNK_info:
.LcgP6:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgNK_ct
	je .LcgP9
.LcgPb:
	incq sgNK_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec3zuzdcnegate_info
.LcgP9:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgNK_ct+56
	movq $sgNK_ct,ticky_entry_ctrs
	movq $1,sgNK_ct
	jmp .LcgPb
	.size sgNK_info, .-sgNK_info
.section .rodata
	.align 8
.align 1
cgPg_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	78
	.byte	76
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgPj_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgNL_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgPg_str
	.quad	cgPj_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sgNL_info:
.LcgPo:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgNL_ct
	je .LcgPr
.LcgPt:
	incq sgNL_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec3zuzdczm_info
.LcgPr:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgNL_ct+56
	movq $sgNL_ct,ticky_entry_ctrs
	movq $1,sgNL_ct
	jmp .LcgPt
	.size sgNL_info, .-sgNL_info
.section .rodata
	.align 8
.align 1
cgPy_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	78
	.byte	77
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgPB_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgNM_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgPy_str
	.quad	cgPB_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sgNM_info:
.LcgPG:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgNM_ct
	je .LcgPJ
.LcgPL:
	incq sgNM_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec3zuzdczt_info
.LcgPJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgNM_ct+56
	movq $sgNM_ct,ticky_entry_ctrs
	movq $1,sgNM_ct
	jmp .LcgPL
	.size sgNM_info, .-sgNM_info
.section .rodata
	.align 8
.align 1
cgPQ_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	103
	.byte	78
	.byte	78
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cgPT_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sgNN_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgPQ_str
	.quad	cgPT_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sgNN_info:
.LcgPY:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sgNN_ct
	je .LcgQ1
.LcgQ3:
	incq sgNN_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec3zuzdczp_info
.LcgQ1:
	movq ticky_entry_ctrs,%rax
	movq %rax,sgNN_ct+56
	movq $sgNN_ct,ticky_entry_ctrs
	movq $1,sgNN_ct
	jmp .LcgQ3
	.size sgNN_info, .-sgNN_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec3_srt-(EngineziCoreziVec_zdfNumVec3_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfNumVec3_info
.type EngineziCoreziVec_zdfNumVec3_info, @object
EngineziCoreziVec_zdfNumVec3_info:
.LcgQ7:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcgQb
	addq $22,EngineziCoreziVec_zdfNumVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec3_ct
	je .LcgQc
.LcgQd:
	incq EngineziCoreziVec_zdfNumVec3_ct+40
	movq $sgNH_info,-168(%r12)
	movq %r14,-160(%r12)
	movq $sgNI_info,-152(%r12)
	movq %r14,-144(%r12)
	movq $sgNJ_info,-136(%r12)
	movq %r14,-128(%r12)
	movq $sgNK_info,-120(%r12)
	movq %r14,-112(%r12)
	movq $sgNL_info,-104(%r12)
	movq %r14,-96(%r12)
	movq $sgNM_info,-88(%r12)
	movq %r14,-80(%r12)
	movq $sgNN_info,-72(%r12)
	movq %r14,-64(%r12)
	incq RET_NEW_ctr
	movq $base_GHCziNum_DZCNum_con_info,-56(%r12)
	leaq -70(%r12),%rax
	movq %rax,-48(%r12)
	leaq -86(%r12),%rax
	movq %rax,-40(%r12)
	leaq -102(%r12),%rax
	movq %rax,-32(%r12)
	leaq -119(%r12),%rax
	movq %rax,-24(%r12)
	leaq -135(%r12),%rax
	movq %rax,-16(%r12)
	leaq -151(%r12),%rax
	movq %rax,-8(%r12)
	leaq -167(%r12),%rax
	movq %rax,0(%r12)
	leaq -55(%r12),%rbx
	jmp *0(%rbp)
.LcgQb:
	movq $176,192(%r13)
.LcgQ9:
	movl $EngineziCoreziVec_zdfNumVec3_closure,%ebx
	jmp *-8(%r13)
.LcgQc:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec3_ct+56
	movq $EngineziCoreziVec_zdfNumVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec3_ct
	jmp .LcgQd
	.size EngineziCoreziVec_zdfNumVec3_info, .-EngineziCoreziVec_zdfNumVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_closure
.type EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_closure, @object
EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_closure:
	.quad	EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_info
.section .rodata
	.align 8
.align 1
cgQC_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	70
	.byte	117
	.byte	110
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	95
	.byte	36
	.byte	99
	.byte	102
	.byte	109
	.byte	97
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	74
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgQF_str:
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct
.type EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct, @object
EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgQC_str
	.quad	cgQF_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfMo_info:
.LcgQX:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcgR3
	addq $3,EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcgR3:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfMo_info, .-sfMo_info
.text
	.align 8
	.quad	2
	.quad	32
sfMn_info:
.LcgR7:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfMo_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfMn_info, .-sfMn_info
.text
	.align 8
	.quad	1
	.quad	32
sgQn_info:
.LcgRd:
	incq UNKNOWN_CALL_ctr
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfMn_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sgQn_info, .-sgQn_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_info
.type EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_info, @object
EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_info:
.LcgRh:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgRj
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct
	je .LcgRk
.LcgRl:
	incq EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sgQn_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgQn_info
	jmp *(%rbx)
.LcgRj:
	movl $EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_closure,%ebx
	jmp *-8(%r13)
.LcgRk:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct+56
	movq $EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_ct
	jmp .LcgRl
	.size EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_info, .-EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_closure
.type EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_closure, @object
EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_closure:
	.quad	EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_info
.section .rodata
	.align 8
.align 1
cgRG_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	70
	.byte	117
	.byte	110
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	95
	.byte	36
	.byte	99
	.byte	60
	.byte	36
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	73
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgRJ_str:
	.byte	46
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct
.type EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct, @object
EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgRG_str
	.quad	cgRJ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sfMx_info:
.LcgRX:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcgS3
	addq $3,EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcgS3:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfMx_info, .-sfMx_info
.text
	.align 8
	.quad	1
	.quad	32
sgRt_info:
.LcgS6:
	movq 8(%rbp),%rbx
	movq $sfMx_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size sgRt_info, .-sgRt_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_info
.type EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_info, @object
EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_info:
.LcgS9:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgSb
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct
	je .LcgSc
.LcgSd:
	incq EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sgRt_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgRt_info
	jmp *(%rbx)
.LcgSb:
	movl $EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_closure,%ebx
	jmp *-8(%r13)
.LcgSc:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct+56
	movq $EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_ct
	jmp .LcgSd
	.size EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_info, .-EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfFunctorVec2_closure
.type EngineziCoreziVec_zdfFunctorVec2_closure, @object
EngineziCoreziVec_zdfFunctorVec2_closure:
	.quad	base_GHCziBase_DZCFunctor_static_info
	.quad	EngineziCoreziVec_zdfFunctorVec2zuzdcfmap_closure+2
	.quad	EngineziCoreziVec_zdfFunctorVec2zuzdczlzd_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_closure
.type EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_closure, @object
EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_closure:
	.quad	EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_info
.section .rodata
	.align 8
.align 1
cgSI_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	100
	.byte	54
	.byte	117
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgSL_str:
	.byte	43
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct
.type EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct, @object
EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgSI_str
	.quad	cgSL_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfMO_info:
.LcgT3:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcgT9
	addq $3,EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcgT9:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfMO_info, .-sfMO_info
.text
	.align 8
	.quad	2
	.quad	32
sfMN_info:
.LcgTd:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq 8(%rbp),%rbx
	movq $sfMO_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfMN_info, .-sfMN_info
.text
	.align 8
	.quad	1
	.quad	32
sgSn_info:
.LcgTg:
	incq UNKNOWN_CALL_ctr
	movq 55(%rbx),%rax
	movq %rax,0(%rbp)
	movq 55(%rbx),%rbx
	movq 8(%rbp),%r14
	movq $sfMN_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sgSn_info, .-sgSn_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_info
.type EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_info, @object
EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_info:
.LcgTk:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgTm
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct
	je .LcgTn
.LcgTo:
	incq EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgSn_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgSn_info
	jmp *(%rbx)
.LcgTm:
	movl $EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_closure,%ebx
	jmp *-8(%r13)
.LcgTn:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct+56
	movq $EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_ct
	jmp .LcgTo
	.size EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_info, .-EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcsignum_closure
.type EngineziCoreziVec_zdfNumVec2zuzdcsignum_closure, @object
EngineziCoreziVec_zdfNumVec2zuzdcsignum_closure:
	.quad	EngineziCoreziVec_zdfNumVec2zuzdcsignum_info
.section .rodata
	.align 8
.align 1
cgTU_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	100
	.byte	54
	.byte	118
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgTX_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct
.type EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct, @object
EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgTU_str
	.quad	cgTX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfNa_info:
.LcgUj:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcgUp
	addq $3,EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcgUp:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfNa_info, .-sfNa_info
.text
	.align 8
	.quad	2
	.quad	32
sfN9_info:
.LcgUt:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfNa_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfN9_info, .-sfN9_info
.text
	.align 8
	.quad	1
	.quad	32
sgTv_info:
.LcgUz:
	incq UNKNOWN_CALL_ctr
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfN9_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sgTv_info, .-sgTv_info
.text
	.align 8
	.quad	1
	.quad	32
sgTx_info:
.LcgUD:
	movq 8(%rbp),%rax
	movq 47(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgTv_info,0(%rbp)
	testq $7,%rbx
	jne sgTv_info
	jmp *(%rbx)
	.size sgTx_info, .-sgTx_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec2zuzdcsignum_info
.type EngineziCoreziVec_zdfNumVec2zuzdcsignum_info, @object
EngineziCoreziVec_zdfNumVec2zuzdcsignum_info:
.LcgUM:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgUO
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct
	je .LcgUP
.LcgUQ:
	incq EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgTx_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgTx_info
	jmp *(%rbx)
.LcgUO:
	movl $EngineziCoreziVec_zdfNumVec2zuzdcsignum_closure,%ebx
	jmp *-8(%r13)
.LcgUP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct+56
	movq $EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2zuzdcsignum_ct
	jmp .LcgUQ
	.size EngineziCoreziVec_zdfNumVec2zuzdcsignum_info, .-EngineziCoreziVec_zdfNumVec2zuzdcsignum_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcabs_closure
.type EngineziCoreziVec_zdfNumVec2zuzdcabs_closure, @object
EngineziCoreziVec_zdfNumVec2zuzdcabs_closure:
	.quad	EngineziCoreziVec_zdfNumVec2zuzdcabs_info
.section .rodata
	.align 8
.align 1
cgVm_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	100
	.byte	54
	.byte	119
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgVp_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcabs_ct
.type EngineziCoreziVec_zdfNumVec2zuzdcabs_ct, @object
EngineziCoreziVec_zdfNumVec2zuzdcabs_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cgVm_str
	.quad	cgVp_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfNw_info:
.LcgVL:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcgVR
	addq $3,EngineziCoreziVec_zdfNumVec2zuzdcabs_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcgVR:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfNw_info, .-sfNw_info
.text
	.align 8
	.quad	2
	.quad	32
sfNv_info:
.LcgVV:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq $sfNw_info,8(%rbp)
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size sfNv_info, .-sfNv_info
.text
	.align 8
	.quad	1
	.quad	32
sgUX_info:
.LcgW1:
	incq UNKNOWN_CALL_ctr
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq 8(%rbp),%rbx
	movq $sfNv_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sgUX_info, .-sgUX_info
.text
	.align 8
	.quad	1
	.quad	32
sgUZ_info:
.LcgW5:
	movq 8(%rbp),%rax
	movq 39(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgUX_info,0(%rbp)
	testq $7,%rbx
	jne sgUX_info
	jmp *(%rbx)
	.size sgUZ_info, .-sgUZ_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec2zuzdcabs_info
.type EngineziCoreziVec_zdfNumVec2zuzdcabs_info, @object
EngineziCoreziVec_zdfNumVec2zuzdcabs_info:
.LcgWe:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgWg
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2zuzdcabs_ct
	je .LcgWh
.LcgWi:
	incq EngineziCoreziVec_zdfNumVec2zuzdcabs_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgUZ_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sgUZ_info
	jmp *(%rbx)
.LcgWg:
	movl $EngineziCoreziVec_zdfNumVec2zuzdcabs_closure,%ebx
	jmp *-8(%r13)
.LcgWh:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2zuzdcabs_ct+56
	movq $EngineziCoreziVec_zdfNumVec2zuzdcabs_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2zuzdcabs_ct
	jmp .LcgWi
	.size EngineziCoreziVec_zdfNumVec2zuzdcabs_info, .-EngineziCoreziVec_zdfNumVec2zuzdcabs_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdczm_closure
.type EngineziCoreziVec_zdfNumVec2zuzdczm_closure, @object
EngineziCoreziVec_zdfNumVec2zuzdczm_closure:
	.quad	EngineziCoreziVec_zdfNumVec2zuzdczm_info
.section .rodata
	.align 8
.align 1
cgWS_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	95
	.byte	36
	.byte	99
	.byte	45
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	121
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgWV_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdczm_ct
.type EngineziCoreziVec_zdfNumVec2zuzdczm_ct, @object
EngineziCoreziVec_zdfNumVec2zuzdczm_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgWS_str
	.quad	cgWV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfNZ_info:
.LcgXl:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcgXr
	addq $3,EngineziCoreziVec_zdfNumVec2zuzdczm_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcgXr:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfNZ_info, .-sfNZ_info
.text
	.align 8
	.quad	3
	.quad	32
sfNY_info:
.LcgXv:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq 16(%rbp),%rsi
	movq $sfNZ_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_pp_fast
	.size sfNY_info, .-sfNY_info
.text
	.align 8
	.quad	3
	.quad	32
sgWp_info:
.LcgXB:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rsi
	movq 24(%rbp),%rbx
	movq $sfNY_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sgWp_info, .-sgWp_info
.text
	.align 8
	.quad	2
	.quad	32
sgWq_info:
.LcgXF:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgWp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sgWp_info
	jmp *(%rbx)
	.size sgWq_info, .-sgWq_info
.text
	.align 8
	.quad	2
	.quad	32
sgWs_info:
.LcgXP:
	movq 16(%rbp),%rax
	movq 23(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgWq_info,0(%rbp)
	testq $7,%rbx
	jne sgWq_info
	jmp *(%rbx)
	.size sgWs_info, .-sgWs_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec2zuzdczm_info
.type EngineziCoreziVec_zdfNumVec2zuzdczm_info, @object
EngineziCoreziVec_zdfNumVec2zuzdczm_info:
.LcgXY:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgY0
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2zuzdczm_ct
	je .LcgY1
.LcgY2:
	incq EngineziCoreziVec_zdfNumVec2zuzdczm_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgWs_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgWs_info
	jmp *(%rbx)
.LcgY0:
	movl $EngineziCoreziVec_zdfNumVec2zuzdczm_closure,%ebx
	jmp *-8(%r13)
.LcgY1:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2zuzdczm_ct+56
	movq $EngineziCoreziVec_zdfNumVec2zuzdczm_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2zuzdczm_ct
	jmp .LcgY2
	.size EngineziCoreziVec_zdfNumVec2zuzdczm_info, .-EngineziCoreziVec_zdfNumVec2zuzdczm_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdczt_closure
.type EngineziCoreziVec_zdfNumVec2zuzdczt_closure, @object
EngineziCoreziVec_zdfNumVec2zuzdczt_closure:
	.quad	EngineziCoreziVec_zdfNumVec2zuzdczt_info
.section .rodata
	.align 8
.align 1
cgYC_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	95
	.byte	36
	.byte	99
	.byte	42
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	122
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cgYF_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdczt_ct
.type EngineziCoreziVec_zdfNumVec2zuzdczt_ct, @object
EngineziCoreziVec_zdfNumVec2zuzdczt_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cgYC_str
	.quad	cgYF_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfOs_info:
.LcgZ5:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcgZb
	addq $3,EngineziCoreziVec_zdfNumVec2zuzdczt_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcgZb:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfOs_info, .-sfOs_info
.text
	.align 8
	.quad	3
	.quad	32
sfOr_info:
.LcgZf:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq 16(%rbp),%rsi
	movq $sfOs_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_pp_fast
	.size sfOr_info, .-sfOr_info
.text
	.align 8
	.quad	3
	.quad	32
sgY9_info:
.LcgZl:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rsi
	movq 24(%rbp),%rbx
	movq $sfOr_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sgY9_info, .-sgY9_info
.text
	.align 8
	.quad	2
	.quad	32
sgYa_info:
.LcgZp:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgY9_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sgY9_info
	jmp *(%rbx)
	.size sgYa_info, .-sgYa_info
.text
	.align 8
	.quad	2
	.quad	32
sgYc_info:
.LcgZz:
	movq 16(%rbp),%rax
	movq 15(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgYa_info,0(%rbp)
	testq $7,%rbx
	jne sgYa_info
	jmp *(%rbx)
	.size sgYc_info, .-sgYc_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec2zuzdczt_info
.type EngineziCoreziVec_zdfNumVec2zuzdczt_info, @object
EngineziCoreziVec_zdfNumVec2zuzdczt_info:
.LcgZI:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcgZK
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2zuzdczt_ct
	je .LcgZL
.LcgZM:
	incq EngineziCoreziVec_zdfNumVec2zuzdczt_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgYc_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgYc_info
	jmp *(%rbx)
.LcgZK:
	movl $EngineziCoreziVec_zdfNumVec2zuzdczt_closure,%ebx
	jmp *-8(%r13)
.LcgZL:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2zuzdczt_ct+56
	movq $EngineziCoreziVec_zdfNumVec2zuzdczt_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2zuzdczt_ct
	jmp .LcgZM
	.size EngineziCoreziVec_zdfNumVec2zuzdczt_info, .-EngineziCoreziVec_zdfNumVec2zuzdczt_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdczp_closure
.type EngineziCoreziVec_zdfNumVec2zuzdczp_closure, @object
EngineziCoreziVec_zdfNumVec2zuzdczp_closure:
	.quad	EngineziCoreziVec_zdfNumVec2zuzdczp_info
.section .rodata
	.align 8
.align 1
ch0m_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	95
	.byte	36
	.byte	99
	.byte	43
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	65
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ch0p_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdczp_ct
.type EngineziCoreziVec_zdfNumVec2zuzdczp_ct, @object
EngineziCoreziVec_zdfNumVec2zuzdczp_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ch0m_str
	.quad	ch0p_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfOV_info:
.Lch0P:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lch0V
	addq $3,EngineziCoreziVec_zdfNumVec2zuzdczp_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lch0V:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfOV_info, .-sfOV_info
.text
	.align 8
	.quad	3
	.quad	32
sfOU_info:
.Lch0Z:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq 8(%rbp),%r14
	movq 16(%rbp),%rsi
	movq $sfOV_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_pp_fast
	.size sfOU_info, .-sfOU_info
.text
	.align 8
	.quad	3
	.quad	32
sgZT_info:
.Lch15:
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rsi
	movq 24(%rbp),%rbx
	movq $sfOU_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sgZT_info, .-sgZT_info
.text
	.align 8
	.quad	2
	.quad	32
sgZU_info:
.Lch19:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sgZT_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sgZT_info
	jmp *(%rbx)
	.size sgZU_info, .-sgZU_info
.text
	.align 8
	.quad	2
	.quad	32
sgZV_info:
.Lch1j:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sgZU_info,0(%rbp)
	testq $7,%rbx
	jne sgZU_info
	jmp *(%rbx)
	.size sgZV_info, .-sgZV_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfNumVec2zuzdczp_info
.type EngineziCoreziVec_zdfNumVec2zuzdczp_info, @object
EngineziCoreziVec_zdfNumVec2zuzdczp_info:
.Lch1s:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lch1u
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2zuzdczp_ct
	je .Lch1v
.Lch1w:
	incq EngineziCoreziVec_zdfNumVec2zuzdczp_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sgZV_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sgZV_info
	jmp *(%rbx)
.Lch1u:
	movl $EngineziCoreziVec_zdfNumVec2zuzdczp_closure,%ebx
	jmp *-8(%r13)
.Lch1v:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2zuzdczp_ct+56
	movq $EngineziCoreziVec_zdfNumVec2zuzdczp_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2zuzdczp_ct
	jmp .Lch1w
	.size EngineziCoreziVec_zdfNumVec2zuzdczp_info, .-EngineziCoreziVec_zdfNumVec2zuzdczp_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfNumVec2zuzdcnegate_srt:
	.quad	rfyz_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcnegate_closure
.type EngineziCoreziVec_zdfNumVec2zuzdcnegate_closure, @object
EngineziCoreziVec_zdfNumVec2zuzdcnegate_closure:
	.quad	EngineziCoreziVec_zdfNumVec2zuzdcnegate_info
	.quad	0
.section .rodata
	.align 8
.align 1
ch25_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	100
	.byte	54
	.byte	120
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ch28_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct
.type EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct, @object
EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ch25_str
	.quad	ch28_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sfPk_info:
.Lch2y:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lch2E
	addq $3,EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lch2E:
	movq $24,192(%r13)
	jmp stg_gc_unpt_r1
	.size sfPk_info, .-sfPk_info
.text
	.align 8
	.quad	3
	.quad	32
sfPj_info:
.Lch2I:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movq 16(%rbp),%rbx
	movq 8(%rbp),%rsi
	movq $sfPk_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_pp_fast
	.size sfPj_info, .-sfPj_info
.text
	.align 8
	.quad	2
	.quad	32
sh1D_info:
.Lch2L:
	incq UNKNOWN_CALL_ctr
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 8(%rbp),%rbx
	movq $sfPj_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_pp_fast
	.size sh1D_info, .-sh1D_info
.text
	.align 8
	.quad	2
	.quad	32
sfPd_info:
.Lch2P:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sh1D_info,0(%rbp)
	testq $7,%rbx
	jne sh1D_info
	jmp *(%rbx)
	.size sfPd_info, .-sfPd_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec2zuzdcnegate_srt-(sh1F_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sh1F_info:
.Lch2X:
	incq UNKNOWN_CALL_ctr
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 55(%rbx),%rbx
	movl $rfyz_closure+1,%r14d
	movq $sfPd_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
	.size sh1F_info, .-sh1F_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec2zuzdcnegate_srt-(EngineziCoreziVec_zdfNumVec2zuzdcnegate_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfNumVec2zuzdcnegate_info
.type EngineziCoreziVec_zdfNumVec2zuzdcnegate_info, @object
EngineziCoreziVec_zdfNumVec2zuzdcnegate_info:
.Lch31:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lch33
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct
	je .Lch34
.Lch35:
	incq EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sh1F_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sh1F_info
	jmp *(%rbx)
.Lch33:
	movl $EngineziCoreziVec_zdfNumVec2zuzdcnegate_closure,%ebx
	jmp *-8(%r13)
.Lch34:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct+56
	movq $EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2zuzdcnegate_ct
	jmp .Lch35
	.size EngineziCoreziVec_zdfNumVec2zuzdcnegate_info, .-EngineziCoreziVec_zdfNumVec2zuzdcnegate_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfNumVec2_srt:
	.quad	rfyz_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2_closure
.type EngineziCoreziVec_zdfNumVec2_closure, @object
EngineziCoreziVec_zdfNumVec2_closure:
	.quad	EngineziCoreziVec_zdfNumVec2_info
	.quad	0
.section .rodata
	.align 8
.align 1
ch3p_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	78
	.byte	117
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ch3s_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfNumVec2_ct
.type EngineziCoreziVec_zdfNumVec2_ct, @object
EngineziCoreziVec_zdfNumVec2_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ch3p_str
	.quad	ch3s_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
ch3B_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	51
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ch3E_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
sh3c_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ch3B_str
	.quad	ch3E_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sh3c_info:
.Lch3J:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sh3c_ct
	je .Lch3M
.Lch3O:
	incq sh3c_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec2zuzdcfromInteger_info
.Lch3M:
	movq ticky_entry_ctrs,%rax
	movq %rax,sh3c_ct+56
	movq $sh3c_ct,ticky_entry_ctrs
	movq $1,sh3c_ct
	jmp .Lch3O
	.size sh3c_info, .-sh3c_info
.section .rodata
	.align 8
.align 1
ch3T_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	51
	.byte	100
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ch3W_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sh3d_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ch3T_str
	.quad	ch3W_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sh3d_info:
.Lch41:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sh3d_ct
	je .Lch44
.Lch46:
	incq sh3d_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec2zuzdcsignum_info
.Lch44:
	movq ticky_entry_ctrs,%rax
	movq %rax,sh3d_ct+56
	movq $sh3d_ct,ticky_entry_ctrs
	movq $1,sh3d_ct
	jmp .Lch46
	.size sh3d_info, .-sh3d_info
.section .rodata
	.align 8
.align 1
ch4b_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	51
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ch4e_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sh3e_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ch4b_str
	.quad	ch4e_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sh3e_info:
.Lch4j:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sh3e_ct
	je .Lch4m
.Lch4o:
	incq sh3e_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec2zuzdcabs_info
.Lch4m:
	movq ticky_entry_ctrs,%rax
	movq %rax,sh3e_ct+56
	movq $sh3e_ct,ticky_entry_ctrs
	movq $1,sh3e_ct
	jmp .Lch4o
	.size sh3e_info, .-sh3e_info
.section .rodata
	.align 8
.align 1
ch4t_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	51
	.byte	102
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ch4w_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sh3f_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ch4t_str
	.quad	ch4w_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec2_srt-(sh3f_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
sh3f_info:
.Lch4B:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sh3f_ct
	je .Lch4E
.Lch4G:
	incq sh3f_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec2zuzdcnegate_info
.Lch4E:
	movq ticky_entry_ctrs,%rax
	movq %rax,sh3f_ct+56
	movq $sh3f_ct,ticky_entry_ctrs
	movq $1,sh3f_ct
	jmp .Lch4G
	.size sh3f_info, .-sh3f_info
.section .rodata
	.align 8
.align 1
ch4L_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	51
	.byte	103
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ch4O_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sh3g_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ch4L_str
	.quad	ch4O_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sh3g_info:
.Lch4T:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sh3g_ct
	je .Lch4W
.Lch4Y:
	incq sh3g_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec2zuzdczm_info
.Lch4W:
	movq ticky_entry_ctrs,%rax
	movq %rax,sh3g_ct+56
	movq $sh3g_ct,ticky_entry_ctrs
	movq $1,sh3g_ct
	jmp .Lch4Y
	.size sh3g_info, .-sh3g_info
.section .rodata
	.align 8
.align 1
ch53_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	51
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ch56_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sh3h_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ch53_str
	.quad	ch56_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sh3h_info:
.Lch5b:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sh3h_ct
	je .Lch5e
.Lch5g:
	incq sh3h_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec2zuzdczt_info
.Lch5e:
	movq ticky_entry_ctrs,%rax
	movq %rax,sh3h_ct+56
	movq $sh3h_ct,ticky_entry_ctrs
	movq $1,sh3h_ct
	jmp .Lch5g
	.size sh3h_info, .-sh3h_info
.section .rodata
	.align 8
.align 1
ch5l_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	51
	.byte	105
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ch5o_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sh3i_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	ch5l_str
	.quad	ch5o_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
sh3i_info:
.Lch5t:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sh3i_ct
	je .Lch5w
.Lch5y:
	incq sh3i_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfNumVec2zuzdczp_info
.Lch5w:
	movq ticky_entry_ctrs,%rax
	movq %rax,sh3i_ct+56
	movq $sh3i_ct,ticky_entry_ctrs
	movq $1,sh3i_ct
	jmp .Lch5y
	.size sh3i_info, .-sh3i_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfNumVec2_srt-(EngineziCoreziVec_zdfNumVec2_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfNumVec2_info
.type EngineziCoreziVec_zdfNumVec2_info, @object
EngineziCoreziVec_zdfNumVec2_info:
.Lch5C:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .Lch5G
	addq $22,EngineziCoreziVec_zdfNumVec2_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfNumVec2_ct
	je .Lch5H
.Lch5I:
	incq EngineziCoreziVec_zdfNumVec2_ct+40
	movq $sh3c_info,-168(%r12)
	movq %r14,-160(%r12)
	movq $sh3d_info,-152(%r12)
	movq %r14,-144(%r12)
	movq $sh3e_info,-136(%r12)
	movq %r14,-128(%r12)
	movq $sh3f_info,-120(%r12)
	movq %r14,-112(%r12)
	movq $sh3g_info,-104(%r12)
	movq %r14,-96(%r12)
	movq $sh3h_info,-88(%r12)
	movq %r14,-80(%r12)
	movq $sh3i_info,-72(%r12)
	movq %r14,-64(%r12)
	incq RET_NEW_ctr
	movq $base_GHCziNum_DZCNum_con_info,-56(%r12)
	leaq -70(%r12),%rax
	movq %rax,-48(%r12)
	leaq -86(%r12),%rax
	movq %rax,-40(%r12)
	leaq -102(%r12),%rax
	movq %rax,-32(%r12)
	leaq -119(%r12),%rax
	movq %rax,-24(%r12)
	leaq -135(%r12),%rax
	movq %rax,-16(%r12)
	leaq -151(%r12),%rax
	movq %rax,-8(%r12)
	leaq -167(%r12),%rax
	movq %rax,0(%r12)
	leaq -55(%r12),%rbx
	jmp *0(%rbp)
.Lch5G:
	movq $176,192(%r13)
.Lch5E:
	movl $EngineziCoreziVec_zdfNumVec2_closure,%ebx
	jmp *-8(%r13)
.Lch5H:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfNumVec2_ct+56
	movq $EngineziCoreziVec_zdfNumVec2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfNumVec2_ct
	jmp .Lch5I
	.size EngineziCoreziVec_zdfNumVec2_info, .-EngineziCoreziVec_zdfNumVec2_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczeze2_closure
.type EngineziCoreziVec_zdwzdczeze2_closure, @object
EngineziCoreziVec_zdwzdczeze2_closure:
	.quad	EngineziCoreziVec_zdwzdczeze2_info
.section .rodata
	.align 8
.align 1
ch6c_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	61
	.byte	61
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	102
	.byte	121
	.byte	118
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ch6f_str:
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczeze2_ct
.type EngineziCoreziVec_zdwzdczeze2_ct, @object
EngineziCoreziVec_zdwzdczeze2_ct:
	.quad	0
	.quad	9
	.quad	4
	.quad	ch6c_str
	.quad	ch6f_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwzdczeze2_slow
.type EngineziCoreziVec_zdwzdczeze2_slow, @object
EngineziCoreziVec_zdwzdczeze2_slow:
.Lch6j:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziCoreziVec_zdwzdczeze2_info
	.size EngineziCoreziVec_zdwzdczeze2_slow, .-EngineziCoreziVec_zdwzdczeze2_slow
.text
	.align 8
	.quad	3463
	.quad	32
sh5U_info:
.Lch6E:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lch6F
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $64,%rbp
	jmp *0(%rbp)
.Lch6F:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%rbx
	movq 8(%rbp),%r14
	movq 56(%rbp),%rsi
	addq $64,%rbp
	jmp stg_ap_pp_fast
	.size sh5U_info, .-sh5U_info
.text
	.align 8
	.quad	1287
	.quad	32
sh5T_info:
.Lch6N:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lch6O
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $64,%rbp
	jmp *0(%rbp)
.Lch6O:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%rbx
	movq 16(%rbp),%r14
	movq 48(%rbp),%rsi
	movq $sh5U_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sh5T_info, .-sh5T_info
.text
	.align 8
	.quad	7
	.quad	32
sh5S_info:
.Lch6W:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lch6X
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $64,%rbp
	jmp *0(%rbp)
.Lch6X:
	incq UNKNOWN_CALL_ctr
	movq 32(%rbp),%rbx
	movq 24(%rbp),%r14
	movq 40(%rbp),%rsi
	movq $sh5T_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size sh5S_info, .-sh5S_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdczeze2_slow-(EngineziCoreziVec_zdwzdczeze2_info)+0
	.long	0
	.quad	9
	.quad	0
	.quad	38654705664
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwzdczeze2_info
.type EngineziCoreziVec_zdwzdczeze2_info, @object
EngineziCoreziVec_zdwzdczeze2_info:
.Lch73:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lch75
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdczeze2_ct
	je .Lch76
.Lch77:
	incq EngineziCoreziVec_zdwzdczeze2_ct+40
	incq UNKNOWN_CALL_ctr
	movq %r9,-24(%rbp)
	movq %r8,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %r14,%rbx
	movq 0(%rbp),%rax
	movq %r14,0(%rbp)
	movq %rsi,%r14
	movq %rax,%rsi
	movq $sh5S_info,-32(%rbp)
	addq $-32,%rbp
	jmp stg_ap_pp_fast
.Lch75:
	movl $EngineziCoreziVec_zdwzdczeze2_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lch76:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdczeze2_ct+56
	movq $EngineziCoreziVec_zdwzdczeze2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdczeze2_ct
	jmp .Lch77
	.size EngineziCoreziVec_zdwzdczeze2_info, .-EngineziCoreziVec_zdwzdczeze2_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec4zuzdczeze_closure
.type EngineziCoreziVec_zdfEqVec4zuzdczeze_closure, @object
EngineziCoreziVec_zdfEqVec4zuzdczeze_closure:
	.quad	EngineziCoreziVec_zdfEqVec4zuzdczeze_info
.section .rodata
	.align 8
.align 1
ch7w_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	95
	.byte	36
	.byte	99
	.byte	61
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	77
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ch7z_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec4zuzdczeze_ct
.type EngineziCoreziVec_zdfEqVec4zuzdczeze_ct, @object
EngineziCoreziVec_zdfEqVec4zuzdczeze_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ch7w_str
	.quad	ch7z_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	5
	.quad	32
sh7e_info:
.Lch7R:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 31(%rbx),%rax
	movq %rax,40(%rbp)
	movq 32(%rbp),%rsi
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 24(%rbp),%rdi
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 16(%rbp),%r8
	movq 7(%rbx),%rax
	movq %rax,16(%rbp)
	movq 8(%rbp),%r9
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdczeze2_info
	.size sh7e_info, .-sh7e_info
.text
	.align 8
	.quad	2
	.quad	32
sh7f_info:
.Lch7Y:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sh7e_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sh7e_info
	jmp *(%rbx)
	.size sh7f_info, .-sh7f_info
.text
	.align 8
	.quad	2
	.quad	32
sh7g_info:
.Lch8a:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sh7f_info,0(%rbp)
	testq $7,%rbx
	jne sh7f_info
	jmp *(%rbx)
	.size sh7g_info, .-sh7g_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec4zuzdczeze_info
.type EngineziCoreziVec_zdfEqVec4zuzdczeze_info, @object
EngineziCoreziVec_zdfEqVec4zuzdczeze_info:
.Lch8j:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lch8l
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec4zuzdczeze_ct
	je .Lch8m
.Lch8n:
	incq EngineziCoreziVec_zdfEqVec4zuzdczeze_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sh7g_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sh7g_info
	jmp *(%rbx)
.Lch8l:
	movl $EngineziCoreziVec_zdfEqVec4zuzdczeze_closure,%ebx
	jmp *-8(%r13)
.Lch8m:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec4zuzdczeze_ct+56
	movq $EngineziCoreziVec_zdfEqVec4zuzdczeze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec4zuzdczeze_ct
	jmp .Lch8n
	.size EngineziCoreziVec_zdfEqVec4zuzdczeze_info, .-EngineziCoreziVec_zdfEqVec4zuzdczeze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczsze2_closure
.type EngineziCoreziVec_zdwzdczsze2_closure, @object
EngineziCoreziVec_zdwzdczsze2_closure:
	.quad	EngineziCoreziVec_zdwzdczsze2_info
.section .rodata
	.align 8
.align 1
ch8E_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	47
	.byte	61
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	102
	.byte	121
	.byte	117
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ch8H_str:
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczsze2_ct
.type EngineziCoreziVec_zdwzdczsze2_ct, @object
EngineziCoreziVec_zdwzdczsze2_ct:
	.quad	0
	.quad	9
	.quad	4
	.quad	ch8E_str
	.quad	ch8H_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwzdczsze2_slow
.type EngineziCoreziVec_zdwzdczsze2_slow, @object
EngineziCoreziVec_zdwzdczsze2_slow:
.Lch8L:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziCoreziVec_zdwzdczsze2_info
	.size EngineziCoreziVec_zdwzdczsze2_slow, .-EngineziCoreziVec_zdwzdczsze2_slow
.text
	.align 8
	.quad	0
	.quad	32
sh8u_info:
.Lch8W:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lch8X
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lch8X:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sh8u_info, .-sh8u_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdczsze2_slow-(EngineziCoreziVec_zdwzdczsze2_info)+0
	.long	0
	.quad	9
	.quad	0
	.quad	38654705664
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwzdczsze2_info
.type EngineziCoreziVec_zdwzdczsze2_info, @object
EngineziCoreziVec_zdwzdczsze2_info:
.Lch93:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lch95
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdczsze2_ct
	je .Lch96
.Lch97:
	incq EngineziCoreziVec_zdwzdczsze2_ct+40
	incq KNOWN_CALL_ctr
	movq 0(%rbp),%rax
	movq %rax,-8(%rbp)
	movq 8(%rbp),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq %rax,8(%rbp)
	movq 24(%rbp),%rax
	movq %rax,16(%rbp)
	movq $sh8u_info,24(%rbp)
	addq $-8,%rbp
	jmp EngineziCoreziVec_zdwzdczeze2_info
.Lch95:
	movl $EngineziCoreziVec_zdwzdczsze2_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lch96:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdczsze2_ct+56
	movq $EngineziCoreziVec_zdwzdczsze2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdczsze2_ct
	jmp .Lch97
	.size EngineziCoreziVec_zdwzdczsze2_info, .-EngineziCoreziVec_zdwzdczsze2_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec4zuzdczsze_closure
.type EngineziCoreziVec_zdfEqVec4zuzdczsze_closure, @object
EngineziCoreziVec_zdfEqVec4zuzdczsze_closure:
	.quad	EngineziCoreziVec_zdfEqVec4zuzdczsze_info
.section .rodata
	.align 8
.align 1
ch9x_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	95
	.byte	36
	.byte	99
	.byte	47
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	76
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ch9A_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec4zuzdczsze_ct
.type EngineziCoreziVec_zdfEqVec4zuzdczsze_ct, @object
EngineziCoreziVec_zdfEqVec4zuzdczsze_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ch9x_str
	.quad	ch9A_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	5
	.quad	32
sh9f_info:
.Lch9S:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 31(%rbx),%rax
	movq %rax,40(%rbp)
	movq 32(%rbp),%rsi
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 24(%rbp),%rdi
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 16(%rbp),%r8
	movq 7(%rbx),%rax
	movq %rax,16(%rbp)
	movq 8(%rbp),%r9
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdczsze2_info
	.size sh9f_info, .-sh9f_info
.text
	.align 8
	.quad	2
	.quad	32
sh9g_info:
.Lch9Z:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sh9f_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sh9f_info
	jmp *(%rbx)
	.size sh9g_info, .-sh9g_info
.text
	.align 8
	.quad	2
	.quad	32
sh9h_info:
.Lchab:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sh9g_info,0(%rbp)
	testq $7,%rbx
	jne sh9g_info
	jmp *(%rbx)
	.size sh9h_info, .-sh9h_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec4zuzdczsze_info
.type EngineziCoreziVec_zdfEqVec4zuzdczsze_info, @object
EngineziCoreziVec_zdfEqVec4zuzdczsze_info:
.Lchak:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcham
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec4zuzdczsze_ct
	je .Lchan
.Lchao:
	incq EngineziCoreziVec_zdfEqVec4zuzdczsze_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sh9h_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sh9h_info
	jmp *(%rbx)
.Lcham:
	movl $EngineziCoreziVec_zdfEqVec4zuzdczsze_closure,%ebx
	jmp *-8(%r13)
.Lchan:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec4zuzdczsze_ct+56
	movq $EngineziCoreziVec_zdfEqVec4zuzdczsze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec4zuzdczsze_ct
	jmp .Lchao
	.size EngineziCoreziVec_zdfEqVec4zuzdczsze_info, .-EngineziCoreziVec_zdfEqVec4zuzdczsze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec4_closure
.type EngineziCoreziVec_zdfEqVec4_closure, @object
EngineziCoreziVec_zdfEqVec4_closure:
	.quad	EngineziCoreziVec_zdfEqVec4_info
.section .rodata
	.align 8
.align 1
chaC_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	84
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chaF_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec4_ct
.type EngineziCoreziVec_zdfEqVec4_ct, @object
EngineziCoreziVec_zdfEqVec4_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chaC_str
	.quad	chaF_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chaO_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	97
	.byte	118
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chaR_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shav_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chaO_str
	.quad	chaR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
shav_info:
.LchaW:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shav_ct
	je .LchaZ
.Lchb1:
	incq shav_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfEqVec4zuzdczsze_info
.LchaZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,shav_ct+56
	movq $shav_ct,ticky_entry_ctrs
	movq $1,shav_ct
	jmp .Lchb1
	.size shav_info, .-shav_info
.section .rodata
	.align 8
.align 1
chb6_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	97
	.byte	119
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chb9_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shaw_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chb6_str
	.quad	chb9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
shaw_info:
.Lchbe:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shaw_ct
	je .Lchbh
.Lchbj:
	incq shaw_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfEqVec4zuzdczeze_info
.Lchbh:
	movq ticky_entry_ctrs,%rax
	movq %rax,shaw_ct+56
	movq $shaw_ct,ticky_entry_ctrs
	movq $1,shaw_ct
	jmp .Lchbj
	.size shaw_info, .-shaw_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec4_info
.type EngineziCoreziVec_zdfEqVec4_info, @object
EngineziCoreziVec_zdfEqVec4_info:
.Lchbn:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lchbr
	addq $7,EngineziCoreziVec_zdfEqVec4_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec4_ct
	je .Lchbs
.Lchbt:
	incq EngineziCoreziVec_zdfEqVec4_ct+40
	movq $shav_info,-48(%r12)
	movq %r14,-40(%r12)
	movq $shaw_info,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziClasses_DZCEq_con_info,-16(%r12)
	leaq -30(%r12),%rax
	movq %rax,-8(%r12)
	leaq -46(%r12),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	jmp *0(%rbp)
.Lchbr:
	movq $56,192(%r13)
.Lchbp:
	movl $EngineziCoreziVec_zdfEqVec4_closure,%ebx
	jmp *-8(%r13)
.Lchbs:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec4_ct+56
	movq $EngineziCoreziVec_zdfEqVec4_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec4_ct
	jmp .Lchbt
	.size EngineziCoreziVec_zdfEqVec4_info, .-EngineziCoreziVec_zdfEqVec4_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec7_closure
.type EngineziCoreziVec_zdfShowVec7_closure, @object
EngineziCoreziVec_zdfShowVec7_closure:
	.quad	EngineziCoreziVec_zdfShowVec7_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chbH_str:
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziCoreziVec_zdfShowVec7_info
.type EngineziCoreziVec_zdfShowVec7_info, @object
EngineziCoreziVec_zdfShowVec7_info:
.LchbL:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchbN
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LchbP
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
	je .LchbQ
.LchbR:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $chbH_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LchbP:
	movq $16,192(%r13)
.LchbN:
	jmp *-16(%r13)
.LchbQ:
	jmp *(%rbx)
	.size EngineziCoreziVec_zdfShowVec7_info, .-EngineziCoreziVec_zdfShowVec7_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec5_closure
.type EngineziCoreziVec_zdfShowVec5_closure, @object
EngineziCoreziVec_zdfShowVec5_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	11
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdwzdcshowsPrec2_srt:
	.quad	EngineziCoreziVec_zdfShowVec7_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshowsPrec2_closure
.type EngineziCoreziVec_zdwzdcshowsPrec2_closure, @object
EngineziCoreziVec_zdwzdcshowsPrec2_closure:
	.quad	EngineziCoreziVec_zdwzdcshowsPrec2_info
	.quad	0
.section .rodata
	.align 8
.align 1
chcv_str:
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
	.byte	86
	.byte	101
	.byte	99
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
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chcx_str:
	.byte	43
	.byte	105
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshowsPrec2_ct
.type EngineziCoreziVec_zdwzdcshowsPrec2_ct, @object
EngineziCoreziVec_zdwzdcshowsPrec2_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	chcv_str
	.quad	chcx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwzdcshowsPrec2_slow
.type EngineziCoreziVec_zdwzdcshowsPrec2_slow, @object
EngineziCoreziVec_zdwzdcshowsPrec2_slow:
.LchcA:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec2_info
	.size EngineziCoreziVec_zdwzdcshowsPrec2_slow, .-EngineziCoreziVec_zdwzdcshowsPrec2_slow
.text
	.align 8
	.quad	2
	.quad	19
sfRf_info:
.LchcF:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchcH
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.LchcH:
	jmp *-16(%r13)
	.size sfRf_info, .-sfRf_info
.text
	.align 8
	.quad	2
	.quad	19
sfRi_info:
.LchcO:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchcQ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.LchcQ:
	jmp *-16(%r13)
	.size sfRi_info, .-sfRi_info
.text
	.align 8
	.quad	2
	.quad	19
sfRl_info:
.LchcX:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchcZ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.LchcZ:
	jmp *-16(%r13)
	.size sfRl_info, .-sfRl_info
.text
	.align 8
	.quad	2
	.quad	19
sfRo_info:
.Lchd6:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchd8
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.Lchd8:
	jmp *-16(%r13)
	.size sfRo_info, .-sfRo_info
.section .rodata
	.align 8
.align 1
chdd_str:
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	102
	.byte	82
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chdg_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
sfRF_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chdd_str
	.quad	chdg_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	16
sfRx_info:
.Lchdv:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchdx
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lchdz
	addq $7,sfRF_ct+48
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
.Lchdz:
	movq $56,192(%r13)
.Lchdx:
	jmp *-16(%r13)
	.size sfRx_info, .-sfRx_info
.text
	.align 8
	.quad	4
	.quad	16
sfRB_info:
.LchdH:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchdJ
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LchdL
	addq $8,sfRF_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sfRx_info,-56(%r12)
	movq 16(%rbx),%rax
	movq %rax,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	movq 40(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_showSpace1_closure,-8(%r12)
	leaq -56(%r12),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 32(%rbx),%rbx
	leaq -14(%r12),%r14
	addq $-16,%rbp
	jmp stg_ap_p_fast
.LchdL:
	movq $64,192(%r13)
.LchdJ:
	jmp *-16(%r13)
	.size sfRB_info, .-sfRB_info
.text
	.align 8
	.quad	5
	.quad	16
shbZ_info:
.LchdU:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchdW
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LchdY
	addq $9,sfRF_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sfRB_info,-64(%r12)
	movq 16(%rbx),%rax
	movq %rax,-48(%r12)
	movq 24(%rbx),%rax
	movq %rax,-40(%r12)
	movq 32(%rbx),%rax
	movq %rax,-32(%r12)
	movq 48(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_showSpace1_closure,-8(%r12)
	leaq -64(%r12),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 40(%rbx),%rbx
	leaq -14(%r12),%r14
	addq $-16,%rbp
	jmp stg_ap_p_fast
.LchdY:
	movq $72,192(%r13)
.LchdW:
	jmp *-16(%r13)
	.size shbZ_info, .-shbZ_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshowsPrec2_srt-(sfRF_info)+0
	.long	0
	.quad	4294967301
	.quad	4
	.quad	4294967305
sfRF_info:
.Lche7:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lcheb
	addq $7,sfRF_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sfRF_ct
	je .Lchec
.Lched:
	incq sfRF_ct+40
	movq $shbZ_info,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-32(%r12)
	movq 15(%rbx),%rax
	movq %rax,-24(%r12)
	movq 23(%rbx),%rax
	movq %rax,-16(%r12)
	movq 31(%rbx),%rax
	movq %rax,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziCoreziVec_zdfShowVec7_closure,%r14d
	leaq -48(%r12),%rsi
	jmp base_GHCziBase_zpzp_info
.Lcheb:
	movq $56,192(%r13)
.Lche9:
	jmp *-8(%r13)
.Lchec:
	movq ticky_entry_ctrs,%rax
	movq %rax,sfRF_ct+56
	movq $sfRF_ct,ticky_entry_ctrs
	movq $1,sfRF_ct
	jmp .Lched
	.size sfRF_info, .-sfRF_info
.section .rodata
	.align 8
.align 1
chep_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	99
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
ches_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
shc0_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chep_str
	.quad	ches_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
sfRN_info:
.LcheD:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcheF
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcheH
	addq $3,shc0_ct+48
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
	jmp sfRF_info
.LcheH:
	movq $24,192(%r13)
.LcheF:
	jmp *-16(%r13)
	.size sfRN_info, .-sfRN_info
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
shc0_info:
.LcheM:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcheQ
	addq $7,shc0_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shc0_ct
	je .LcheR
.LcheS:
	incq shc0_ct+40
	movq $sfRN_info,-48(%r12)
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
.LcheQ:
	movq $56,192(%r13)
.LcheO:
	jmp *-8(%r13)
.LcheR:
	movq ticky_entry_ctrs,%rax
	movq %rax,shc0_ct+56
	movq $shc0_ct,ticky_entry_ctrs
	movq $1,shc0_ct
	jmp .LcheS
	.size shc0_info, .-shc0_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshowsPrec2_slow-(EngineziCoreziVec_zdwzdcshowsPrec2_info)+0
	.long	0
	.quad	134
	.long	EngineziCoreziVec_zdwzdcshowsPrec2_srt-(EngineziCoreziVec_zdwzdcshowsPrec2_info)+0
	.long	0
	.quad	25769803776
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdwzdcshowsPrec2_info
.type EngineziCoreziVec_zdwzdcshowsPrec2_info, @object
EngineziCoreziVec_zdwzdcshowsPrec2_info:
.LcheY:
	addq $184,%r12
	cmpq 144(%r13),%r12
	ja .Lchf2
	addq $23,EngineziCoreziVec_zdwzdcshowsPrec2_ct+48
	incq ALLOC_HEAP_ctr
	addq $23,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdcshowsPrec2_ct
	je .Lchf3
.Lchf4:
	incq EngineziCoreziVec_zdwzdcshowsPrec2_ct+40
	movq $sfRf_info,-176(%r12)
	movq %r14,-160(%r12)
	movq 0(%rbp),%rax
	movq %rax,-152(%r12)
	movq $sfRi_info,-144(%r12)
	movq %r14,-128(%r12)
	movq %r9,-120(%r12)
	movq $sfRl_info,-112(%r12)
	movq %r14,-96(%r12)
	movq %r8,-88(%r12)
	movq $sfRo_info,-80(%r12)
	movq %r14,-64(%r12)
	movq %rdi,-56(%r12)
	movq $sfRF_info,-48(%r12)
	leaq -176(%r12),%rax
	movq %rax,-40(%r12)
	leaq -144(%r12),%rax
	movq %rax,-32(%r12)
	leaq -112(%r12),%rax
	movq %rax,-24(%r12)
	leaq -80(%r12),%rax
	movq %rax,-16(%r12)
	cmpq $11,%rsi
	jge .Lchf6
	leaq -47(%r12),%rbx
	addq $8,%rbp
	addq $-16,%r12
	addq $-2,EngineziCoreziVec_zdwzdcshowsPrec2_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp *0(%rbp)
.Lchf2:
	movq $184,192(%r13)
.Lchf0:
	movl $EngineziCoreziVec_zdwzdcshowsPrec2_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lchf3:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdcshowsPrec2_ct+56
	movq $EngineziCoreziVec_zdwzdcshowsPrec2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdcshowsPrec2_ct
	jmp .Lchf4
.Lchf6:
	movq $shc0_info,-8(%r12)
	leaq -47(%r12),%rax
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
	.size EngineziCoreziVec_zdwzdcshowsPrec2_info, .-EngineziCoreziVec_zdwzdcshowsPrec2_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_srt:
	.quad	EngineziCoreziVec_zdfShowVec7_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_closure
.type EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_closure, @object
EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_closure:
	.quad	EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
chft_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	52
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
	.byte	100
	.byte	54
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chfw_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct
.type EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct, @object
EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chft_str
	.quad	chfw_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_srt-(shff_info)+0
	.long	0
	.quad	130
	.quad	4294967328
shff_info:
.LchfK:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 31(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec2_info
	.size shff_info, .-shff_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_srt-(shfg_info)+0
	.long	0
	.quad	2
	.quad	4294967328
shfg_info:
.LchfO:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $shff_info,0(%rbp)
	testq $7,%rbx
	jne shff_info
	jmp *(%rbx)
	.size shfg_info, .-shfg_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_srt-(EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info
.type EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info, @object
EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info:
.LchfX:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LchfZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct
	je .Lchg0
.Lchg1:
	incq EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct+40
	movq %r14,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %rsi,%rbx
	movq $shfg_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne shfg_info
	jmp *(%rbx)
.LchfZ:
	movl $EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.Lchg0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct+56
	movq $EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_ct
	jmp .Lchg1
	.size EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info, .-EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec4zuzdcshowList_srt:
	.quad	EngineziCoreziVec_zdfShowVec7_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4zuzdcshowList_closure
.type EngineziCoreziVec_zdfShowVec4zuzdcshowList_closure, @object
EngineziCoreziVec_zdfShowVec4zuzdcshowList_closure:
	.quad	EngineziCoreziVec_zdfShowVec4zuzdcshowList_info
	.quad	0
.section .rodata
	.align 8
.align 1
chgk_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	52
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
	.byte	100
	.byte	54
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chgn_str:
	.byte	43
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct
.type EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct, @object
EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chgk_str
	.quad	chgn_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chgw_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	103
	.byte	56
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chgz_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shg8_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chgw_str
	.quad	chgz_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshowList_srt-(shg9_info)+0
	.long	0
	.quad	1
	.quad	4294967328
shg9_info:
.LchgJ:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 31(%rbx),%rax
	movq %rax,8(%rbp)
	xorl %esi,%esi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	addq $8,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec2_info
	.size shg9_info, .-shg9_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshowList_srt-(shg8_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
shg8_info:
.LchgN:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchgP
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shg8_ct
	je .LchgQ
.LchgR:
	incq shg8_ct+40
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $shg9_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shg9_info
	jmp *(%rbx)
.LchgP:
	jmp *-8(%r13)
.LchgQ:
	movq ticky_entry_ctrs,%rax
	movq %rax,shg8_ct+56
	movq $shg8_ct,ticky_entry_ctrs
	movq $1,shg8_ct
	jmp .LchgR
	.size shg8_info, .-shg8_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshowList_srt-(EngineziCoreziVec_zdfShowVec4zuzdcshowList_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec4zuzdcshowList_info
.type EngineziCoreziVec_zdfShowVec4zuzdcshowList_info, @object
EngineziCoreziVec_zdfShowVec4zuzdcshowList_info:
.Lchh0:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lchh4
	addq $2,EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct
	je .Lchh5
.Lchh6:
	incq EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct+40
	movq $shg8_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	jmp base_GHCziShow_showListzuzu_info
.Lchh4:
	movq $16,192(%r13)
.Lchh2:
	movl $EngineziCoreziVec_zdfShowVec4zuzdcshowList_closure,%ebx
	jmp *-8(%r13)
.Lchh5:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct+56
	movq $EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec4zuzdcshowList_ct
	jmp .Lchh6
	.size EngineziCoreziVec_zdfShowVec4zuzdcshowList_info, .-EngineziCoreziVec_zdfShowVec4zuzdcshowList_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdwzdcshow2_srt:
	.quad	EngineziCoreziVec_zdfShowVec7_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshow2_closure
.type EngineziCoreziVec_zdwzdcshow2_closure, @object
EngineziCoreziVec_zdwzdcshow2_closure:
	.quad	EngineziCoreziVec_zdwzdcshow2_info
	.quad	0
.section .rodata
	.align 8
.align 1
chhf_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	102
	.byte	121
	.byte	121
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chhi_str:
	.byte	43
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshow2_ct
.type EngineziCoreziVec_zdwzdcshow2_ct, @object
EngineziCoreziVec_zdwzdcshow2_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	chhf_str
	.quad	chhi_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshow2_srt-(EngineziCoreziVec_zdwzdcshow2_info)+0
	.long	0
	.quad	21474836502
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdwzdcshow2_info
.type EngineziCoreziVec_zdwzdcshow2_info, @object
EngineziCoreziVec_zdwzdcshow2_info:
.Lchhn:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchhq
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdcshow2_ct
	je .Lchhs
.Lchhu:
	incq EngineziCoreziVec_zdwzdcshow2_ct+40
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-8(%rbp)
	movq $stg_ap_p_info,-16(%rbp)
	movq %r9,-24(%rbp)
	movq %r8,%r9
	movq %rdi,%r8
	movq %rsi,%rdi
	xorl %esi,%esi
	addq $-24,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec2_info
.Lchhq:
	movl $EngineziCoreziVec_zdwzdcshow2_closure,%ebx
	jmp *-8(%r13)
.Lchhs:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdcshow2_ct+56
	movq $EngineziCoreziVec_zdwzdcshow2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdcshow2_ct
	jmp .Lchhu
	.size EngineziCoreziVec_zdwzdcshow2_info, .-EngineziCoreziVec_zdwzdcshow2_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec4zuzdcshow_srt:
	.quad	EngineziCoreziVec_zdfShowVec7_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4zuzdcshow_closure
.type EngineziCoreziVec_zdfShowVec4zuzdcshow_closure, @object
EngineziCoreziVec_zdfShowVec4zuzdcshow_closure:
	.quad	EngineziCoreziVec_zdfShowVec4zuzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
chhI_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	52
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
	.byte	100
	.byte	54
	.byte	54
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chhL_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4zuzdcshow_ct
.type EngineziCoreziVec_zdfShowVec4zuzdcshow_ct, @object
EngineziCoreziVec_zdfShowVec4zuzdcshow_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chhI_str
	.quad	chhL_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshow_srt-(shhy_info)+0
	.long	0
	.quad	1
	.quad	4294967328
shhy_info:
.LchhV:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 31(%rbx),%r9
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdcshow2_info
	.size shhy_info, .-shhy_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4zuzdcshow_srt-(EngineziCoreziVec_zdfShowVec4zuzdcshow_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec4zuzdcshow_info
.type EngineziCoreziVec_zdfShowVec4zuzdcshow_info, @object
EngineziCoreziVec_zdfShowVec4zuzdcshow_info:
.LchhY:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchi0
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec4zuzdcshow_ct
	je .Lchi1
.Lchi2:
	incq EngineziCoreziVec_zdfShowVec4zuzdcshow_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $shhy_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shhy_info
	jmp *(%rbx)
.Lchi0:
	movl $EngineziCoreziVec_zdfShowVec4zuzdcshow_closure,%ebx
	jmp *-8(%r13)
.Lchi1:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec4zuzdcshow_ct+56
	movq $EngineziCoreziVec_zdfShowVec4zuzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec4zuzdcshow_ct
	jmp .Lchi2
	.size EngineziCoreziVec_zdfShowVec4zuzdcshow_info, .-EngineziCoreziVec_zdfShowVec4zuzdcshow_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec4_srt:
	.quad	EngineziCoreziVec_zdfShowVec7_closure
	.quad	EngineziCoreziVec_zdfShowVec7_closure
	.quad	EngineziCoreziVec_zdfShowVec7_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4_closure
.type EngineziCoreziVec_zdfShowVec4_closure, @object
EngineziCoreziVec_zdfShowVec4_closure:
	.quad	EngineziCoreziVec_zdfShowVec4_info
	.quad	0
.section .rodata
	.align 8
.align 1
chii_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	75
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chil_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec4_ct
.type EngineziCoreziVec_zdfShowVec4_ct, @object
EngineziCoreziVec_zdfShowVec4_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chii_str
	.quad	chil_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chiu_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	105
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chix_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
shi9_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chiu_str
	.quad	chix_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4_srt-(shi9_info)+0
	.long	0
	.quad	8589934604
	.quad	1
	.quad	4294967306
shi9_info:
.LchiC:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shi9_ct
	je .LchiF
.LchiH:
	incq shi9_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec4zuzdcshowList_info
.LchiF:
	movq ticky_entry_ctrs,%rax
	movq %rax,shi9_ct+56
	movq $shi9_ct,ticky_entry_ctrs
	movq $1,shi9_ct
	jmp .LchiH
	.size shi9_info, .-shi9_info
.section .rodata
	.align 8
.align 1
chiM_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	105
	.byte	97
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chiP_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shia_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chiM_str
	.quad	chiP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4_srt-(shia_info)+8
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
shia_info:
.LchiU:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shia_ct
	je .LchiX
.LchiZ:
	incq shia_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec4zuzdcshow_info
.LchiX:
	movq ticky_entry_ctrs,%rax
	movq %rax,shia_ct+56
	movq $shia_ct,ticky_entry_ctrs
	movq $1,shia_ct
	jmp .LchiZ
	.size shia_info, .-shia_info
.section .rodata
	.align 8
.align 1
chj4_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	105
	.byte	98
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chj7_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shib_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chj4_str
	.quad	chj7_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4_srt-(shib_info)+16
	.long	0
	.quad	8589934604
	.quad	1
	.quad	4294967306
shib_info:
.Lchjc:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shib_ct
	je .Lchjf
.Lchjh:
	incq shib_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec4zuzdcshowsPrec_info
.Lchjf:
	movq ticky_entry_ctrs,%rax
	movq %rax,shib_ct+56
	movq $shib_ct,ticky_entry_ctrs
	movq $1,shib_ct
	jmp .Lchjh
	.size shib_info, .-shib_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec4_srt-(EngineziCoreziVec_zdfShowVec4_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
.globl EngineziCoreziVec_zdfShowVec4_info
.type EngineziCoreziVec_zdfShowVec4_info, @object
EngineziCoreziVec_zdfShowVec4_info:
.Lchjl:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lchjp
	addq $10,EngineziCoreziVec_zdfShowVec4_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec4_ct
	je .Lchjq
.Lchjr:
	incq EngineziCoreziVec_zdfShowVec4_ct+40
	movq $shi9_info,-72(%r12)
	movq %r14,-64(%r12)
	movq $shia_info,-56(%r12)
	movq %r14,-48(%r12)
	movq $shib_info,-40(%r12)
	movq %r14,-32(%r12)
	incq RET_NEW_ctr
	movq $base_GHCziShow_DZCShow_con_info,-24(%r12)
	leaq -38(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -70(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	jmp *0(%rbp)
.Lchjp:
	movq $80,192(%r13)
.Lchjn:
	movl $EngineziCoreziVec_zdfShowVec4_closure,%ebx
	jmp *-8(%r13)
.Lchjq:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec4_ct+56
	movq $EngineziCoreziVec_zdfShowVec4_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec4_ct
	jmp .Lchjr
	.size EngineziCoreziVec_zdfShowVec4_info, .-EngineziCoreziVec_zdfShowVec4_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczeze1_closure
.type EngineziCoreziVec_zdwzdczeze1_closure, @object
EngineziCoreziVec_zdwzdczeze1_closure:
	.quad	EngineziCoreziVec_zdwzdczeze1_info
.section .rodata
	.align 8
.align 1
chjM_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	61
	.byte	61
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	102
	.byte	121
	.byte	116
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chjP_str:
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczeze1_ct
.type EngineziCoreziVec_zdwzdczeze1_ct, @object
EngineziCoreziVec_zdwzdczeze1_ct:
	.quad	0
	.quad	7
	.quad	2
	.quad	chjM_str
	.quad	chjP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwzdczeze1_slow
.type EngineziCoreziVec_zdwzdczeze1_slow, @object
EngineziCoreziVec_zdwzdczeze1_slow:
.LchjT:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziCoreziVec_zdwzdczeze1_info
	.size EngineziCoreziVec_zdwzdczeze1_slow, .-EngineziCoreziVec_zdwzdczeze1_slow
.text
	.align 8
	.quad	645
	.quad	32
shjy_info:
.Lchk9:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lchka
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $48,%rbp
	jmp *0(%rbp)
.Lchka:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rbx
	movq 8(%rbp),%r14
	movq 40(%rbp),%rsi
	addq $48,%rbp
	jmp stg_ap_pp_fast
	.size shjy_info, .-shjy_info
.text
	.align 8
	.quad	5
	.quad	32
shjx_info:
.Lchki:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lchkj
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $48,%rbp
	jmp *0(%rbp)
.Lchkj:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rbx
	movq 16(%rbp),%r14
	movq 32(%rbp),%rsi
	movq $shjy_info,0(%rbp)
	jmp stg_ap_pp_fast
	.size shjx_info, .-shjx_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdczeze1_slow-(EngineziCoreziVec_zdwzdczeze1_info)+0
	.long	0
	.quad	7
	.quad	0
	.quad	30064771072
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwzdczeze1_info
.type EngineziCoreziVec_zdwzdczeze1_info, @object
EngineziCoreziVec_zdwzdczeze1_info:
.Lchkp:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchkr
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdczeze1_ct
	je .Lchks
.Lchkt:
	incq EngineziCoreziVec_zdwzdczeze1_ct+40
	incq UNKNOWN_CALL_ctr
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %r14,%rbx
	movq %rsi,%r14
	movq %r9,%rsi
	movq $shjx_info,-32(%rbp)
	addq $-32,%rbp
	jmp stg_ap_pp_fast
.Lchkr:
	movl $EngineziCoreziVec_zdwzdczeze1_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lchks:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdczeze1_ct+56
	movq $EngineziCoreziVec_zdwzdczeze1_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdczeze1_ct
	jmp .Lchkt
	.size EngineziCoreziVec_zdwzdczeze1_info, .-EngineziCoreziVec_zdwzdczeze1_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec3zuzdczeze_closure
.type EngineziCoreziVec_zdfEqVec3zuzdczeze_closure, @object
EngineziCoreziVec_zdfEqVec3zuzdczeze_closure:
	.quad	EngineziCoreziVec_zdfEqVec3zuzdczeze_info
.section .rodata
	.align 8
.align 1
chkP_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	95
	.byte	36
	.byte	99
	.byte	61
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	79
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chkS_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec3zuzdczeze_ct
.type EngineziCoreziVec_zdfEqVec3zuzdczeze_ct, @object
EngineziCoreziVec_zdfEqVec3zuzdczeze_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chkP_str
	.quad	chkS_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4
	.quad	32
shkx_info:
.Lchla:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 24(%rbp),%rsi
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 16(%rbp),%rdi
	movq 8(%rbp),%r8
	movq 7(%rbx),%r9
	addq $24,%rbp
	jmp EngineziCoreziVec_zdwzdczeze1_info
	.size shkx_info, .-shkx_info
.text
	.align 8
	.quad	2
	.quad	32
shky_info:
.Lchlf:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $shkx_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shkx_info
	jmp *(%rbx)
	.size shky_info, .-shky_info
.text
	.align 8
	.quad	2
	.quad	32
shkz_info:
.Lchlq:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $shky_info,0(%rbp)
	testq $7,%rbx
	jne shky_info
	jmp *(%rbx)
	.size shkz_info, .-shkz_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec3zuzdczeze_info
.type EngineziCoreziVec_zdfEqVec3zuzdczeze_info, @object
EngineziCoreziVec_zdfEqVec3zuzdczeze_info:
.Lchlz:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchlB
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec3zuzdczeze_ct
	je .LchlC
.LchlD:
	incq EngineziCoreziVec_zdfEqVec3zuzdczeze_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $shkz_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne shkz_info
	jmp *(%rbx)
.LchlB:
	movl $EngineziCoreziVec_zdfEqVec3zuzdczeze_closure,%ebx
	jmp *-8(%r13)
.LchlC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec3zuzdczeze_ct+56
	movq $EngineziCoreziVec_zdfEqVec3zuzdczeze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec3zuzdczeze_ct
	jmp .LchlD
	.size EngineziCoreziVec_zdfEqVec3zuzdczeze_info, .-EngineziCoreziVec_zdfEqVec3zuzdczeze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczsze1_closure
.type EngineziCoreziVec_zdwzdczsze1_closure, @object
EngineziCoreziVec_zdwzdczsze1_closure:
	.quad	EngineziCoreziVec_zdwzdczsze1_info
.section .rodata
	.align 8
.align 1
chlU_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	47
	.byte	61
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	102
	.byte	121
	.byte	115
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chlX_str:
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczsze1_ct
.type EngineziCoreziVec_zdwzdczsze1_ct, @object
EngineziCoreziVec_zdwzdczsze1_ct:
	.quad	0
	.quad	7
	.quad	2
	.quad	chlU_str
	.quad	chlX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwzdczsze1_slow
.type EngineziCoreziVec_zdwzdczsze1_slow, @object
EngineziCoreziVec_zdwzdczsze1_slow:
.Lchm1:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziCoreziVec_zdwzdczsze1_info
	.size EngineziCoreziVec_zdwzdczsze1_slow, .-EngineziCoreziVec_zdwzdczsze1_slow
.text
	.align 8
	.quad	0
	.quad	32
shlK_info:
.Lchmc:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lchmd
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lchmd:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size shlK_info, .-shlK_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdczsze1_slow-(EngineziCoreziVec_zdwzdczsze1_info)+0
	.long	0
	.quad	7
	.quad	0
	.quad	30064771072
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwzdczsze1_info
.type EngineziCoreziVec_zdwzdczsze1_info, @object
EngineziCoreziVec_zdwzdczsze1_info:
.Lchmj:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchml
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdczsze1_ct
	je .Lchmm
.Lchmn:
	incq EngineziCoreziVec_zdwzdczsze1_ct+40
	incq KNOWN_CALL_ctr
	movq 0(%rbp),%rax
	movq %rax,-8(%rbp)
	movq 8(%rbp),%rax
	movq %rax,0(%rbp)
	movq $shlK_info,8(%rbp)
	addq $-8,%rbp
	jmp EngineziCoreziVec_zdwzdczeze1_info
.Lchml:
	movl $EngineziCoreziVec_zdwzdczsze1_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lchmm:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdczsze1_ct+56
	movq $EngineziCoreziVec_zdwzdczsze1_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdczsze1_ct
	jmp .Lchmn
	.size EngineziCoreziVec_zdwzdczsze1_info, .-EngineziCoreziVec_zdwzdczsze1_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec3zuzdczsze_closure
.type EngineziCoreziVec_zdfEqVec3zuzdczsze_closure, @object
EngineziCoreziVec_zdfEqVec3zuzdczsze_closure:
	.quad	EngineziCoreziVec_zdfEqVec3zuzdczsze_info
.section .rodata
	.align 8
.align 1
chmL_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	95
	.byte	36
	.byte	99
	.byte	47
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	78
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chmO_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec3zuzdczsze_ct
.type EngineziCoreziVec_zdfEqVec3zuzdczsze_ct, @object
EngineziCoreziVec_zdfEqVec3zuzdczsze_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chmL_str
	.quad	chmO_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4
	.quad	32
shmt_info:
.Lchn6:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 24(%rbp),%rsi
	movq 15(%rbx),%rax
	movq %rax,24(%rbp)
	movq 16(%rbp),%rdi
	movq 8(%rbp),%r8
	movq 7(%rbx),%r9
	addq $24,%rbp
	jmp EngineziCoreziVec_zdwzdczsze1_info
	.size shmt_info, .-shmt_info
.text
	.align 8
	.quad	2
	.quad	32
shmu_info:
.Lchnb:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $shmt_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shmt_info
	jmp *(%rbx)
	.size shmu_info, .-shmu_info
.text
	.align 8
	.quad	2
	.quad	32
shmv_info:
.Lchnm:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $shmu_info,0(%rbp)
	testq $7,%rbx
	jne shmu_info
	jmp *(%rbx)
	.size shmv_info, .-shmv_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec3zuzdczsze_info
.type EngineziCoreziVec_zdfEqVec3zuzdczsze_info, @object
EngineziCoreziVec_zdfEqVec3zuzdczsze_info:
.Lchnv:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchnx
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec3zuzdczsze_ct
	je .Lchny
.Lchnz:
	incq EngineziCoreziVec_zdfEqVec3zuzdczsze_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $shmv_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne shmv_info
	jmp *(%rbx)
.Lchnx:
	movl $EngineziCoreziVec_zdfEqVec3zuzdczsze_closure,%ebx
	jmp *-8(%r13)
.Lchny:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec3zuzdczsze_ct+56
	movq $EngineziCoreziVec_zdfEqVec3zuzdczsze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec3zuzdczsze_ct
	jmp .Lchnz
	.size EngineziCoreziVec_zdfEqVec3zuzdczsze_info, .-EngineziCoreziVec_zdfEqVec3zuzdczsze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec3_closure
.type EngineziCoreziVec_zdfEqVec3_closure, @object
EngineziCoreziVec_zdfEqVec3_closure:
	.quad	EngineziCoreziVec_zdfEqVec3_info
.section .rodata
	.align 8
.align 1
chnN_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	85
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chnQ_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec3_ct
.type EngineziCoreziVec_zdfEqVec3_ct, @object
EngineziCoreziVec_zdfEqVec3_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chnN_str
	.quad	chnQ_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chnZ_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	110
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cho2_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shnG_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chnZ_str
	.quad	cho2_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
shnG_info:
.Lcho7:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shnG_ct
	je .Lchoa
.Lchoc:
	incq shnG_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfEqVec3zuzdczsze_info
.Lchoa:
	movq ticky_entry_ctrs,%rax
	movq %rax,shnG_ct+56
	movq $shnG_ct,ticky_entry_ctrs
	movq $1,shnG_ct
	jmp .Lchoc
	.size shnG_info, .-shnG_info
.section .rodata
	.align 8
.align 1
choh_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	110
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chok_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shnH_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	choh_str
	.quad	chok_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
shnH_info:
.Lchop:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shnH_ct
	je .Lchos
.Lchou:
	incq shnH_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfEqVec3zuzdczeze_info
.Lchos:
	movq ticky_entry_ctrs,%rax
	movq %rax,shnH_ct+56
	movq $shnH_ct,ticky_entry_ctrs
	movq $1,shnH_ct
	jmp .Lchou
	.size shnH_info, .-shnH_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec3_info
.type EngineziCoreziVec_zdfEqVec3_info, @object
EngineziCoreziVec_zdfEqVec3_info:
.Lchoy:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LchoC
	addq $7,EngineziCoreziVec_zdfEqVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec3_ct
	je .LchoD
.LchoE:
	incq EngineziCoreziVec_zdfEqVec3_ct+40
	movq $shnG_info,-48(%r12)
	movq %r14,-40(%r12)
	movq $shnH_info,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziClasses_DZCEq_con_info,-16(%r12)
	leaq -30(%r12),%rax
	movq %rax,-8(%r12)
	leaq -46(%r12),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	jmp *0(%rbp)
.LchoC:
	movq $56,192(%r13)
.LchoA:
	movl $EngineziCoreziVec_zdfEqVec3_closure,%ebx
	jmp *-8(%r13)
.LchoD:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec3_ct+56
	movq $EngineziCoreziVec_zdfEqVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec3_ct
	jmp .LchoE
	.size EngineziCoreziVec_zdfEqVec3_info, .-EngineziCoreziVec_zdfEqVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec6_closure
.type EngineziCoreziVec_zdfShowVec6_closure, @object
EngineziCoreziVec_zdfShowVec6_closure:
	.quad	EngineziCoreziVec_zdfShowVec6_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
choS_str:
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziCoreziVec_zdfShowVec6_info
.type EngineziCoreziVec_zdfShowVec6_info, @object
EngineziCoreziVec_zdfShowVec6_info:
.LchoW:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchoY
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lchp0
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
	je .Lchp1
.Lchp2:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $choS_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lchp0:
	movq $16,192(%r13)
.LchoY:
	jmp *-16(%r13)
.Lchp1:
	jmp *(%rbx)
	.size EngineziCoreziVec_zdfShowVec6_info, .-EngineziCoreziVec_zdfShowVec6_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdwzdcshowsPrec1_srt:
	.quad	EngineziCoreziVec_zdfShowVec6_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshowsPrec1_closure
.type EngineziCoreziVec_zdwzdcshowsPrec1_closure, @object
EngineziCoreziVec_zdwzdcshowsPrec1_closure:
	.quad	EngineziCoreziVec_zdwzdcshowsPrec1_info
	.quad	0
.section .rodata
	.align 8
.align 1
chpB_str:
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
	.byte	86
	.byte	101
	.byte	99
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
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	56
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chpD_str:
	.byte	43
	.byte	105
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshowsPrec1_ct
.type EngineziCoreziVec_zdwzdcshowsPrec1_ct, @object
EngineziCoreziVec_zdwzdcshowsPrec1_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	chpB_str
	.quad	chpD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwzdcshowsPrec1_slow
.type EngineziCoreziVec_zdwzdcshowsPrec1_slow, @object
EngineziCoreziVec_zdwzdcshowsPrec1_slow:
.LchpG:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec1_info
	.size EngineziCoreziVec_zdwzdcshowsPrec1_slow, .-EngineziCoreziVec_zdwzdcshowsPrec1_slow
.text
	.align 8
	.quad	2
	.quad	19
sfUk_info:
.LchpL:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchpN
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.LchpN:
	jmp *-16(%r13)
	.size sfUk_info, .-sfUk_info
.text
	.align 8
	.quad	2
	.quad	19
sfUn_info:
.LchpU:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchpW
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.LchpW:
	jmp *-16(%r13)
	.size sfUn_info, .-sfUn_info
.text
	.align 8
	.quad	2
	.quad	19
sfUq_info:
.Lchq3:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchq5
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.Lchq5:
	jmp *-16(%r13)
	.size sfUq_info, .-sfUq_info
.section .rodata
	.align 8
.align 1
chqa_str:
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	102
	.byte	85
	.byte	68
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chqd_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
sfUD_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chqa_str
	.quad	chqd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	16
sfUz_info:
.Lchqq:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchqs
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lchqu
	addq $7,sfUD_ct+48
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
.Lchqu:
	movq $56,192(%r13)
.Lchqs:
	jmp *-16(%r13)
	.size sfUz_info, .-sfUz_info
.text
	.align 8
	.quad	4
	.quad	16
shp8_info:
.LchqC:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchqE
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LchqG
	addq $8,sfUD_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sfUz_info,-56(%r12)
	movq 16(%rbx),%rax
	movq %rax,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-32(%r12)
	movq 40(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_GHCziShow_showSpace1_closure,-8(%r12)
	leaq -56(%r12),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 32(%rbx),%rbx
	leaq -14(%r12),%r14
	addq $-16,%rbp
	jmp stg_ap_p_fast
.LchqG:
	movq $64,192(%r13)
.LchqE:
	jmp *-16(%r13)
	.size shp8_info, .-shp8_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshowsPrec1_srt-(sfUD_info)+0
	.long	0
	.quad	4294967301
	.quad	3
	.quad	4294967305
sfUD_info:
.LchqO:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LchqS
	addq $6,sfUD_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sfUD_ct
	je .LchqT
.LchqU:
	incq sfUD_ct+40
	movq $shp8_info,-40(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 23(%rbx),%rax
	movq %rax,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziCoreziVec_zdfShowVec6_closure,%r14d
	leaq -40(%r12),%rsi
	jmp base_GHCziBase_zpzp_info
.LchqS:
	movq $48,192(%r13)
.LchqQ:
	jmp *-8(%r13)
.LchqT:
	movq ticky_entry_ctrs,%rax
	movq %rax,sfUD_ct+56
	movq $sfUD_ct,ticky_entry_ctrs
	movq $1,sfUD_ct
	jmp .LchqU
	.size sfUD_info, .-sfUD_info
.section .rodata
	.align 8
.align 1
chr5_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	112
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chr8_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
shp9_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chr5_str
	.quad	chr8_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
sfUL_info:
.Lchrj:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchrl
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lchrn
	addq $3,shp9_ct+48
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
	jmp sfUD_info
.Lchrn:
	movq $24,192(%r13)
.Lchrl:
	jmp *-16(%r13)
	.size sfUL_info, .-sfUL_info
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
shp9_info:
.Lchrs:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lchrw
	addq $7,shp9_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shp9_ct
	je .Lchrx
.Lchry:
	incq shp9_ct+40
	movq $sfUL_info,-48(%r12)
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
.Lchrw:
	movq $56,192(%r13)
.Lchru:
	jmp *-8(%r13)
.Lchrx:
	movq ticky_entry_ctrs,%rax
	movq %rax,shp9_ct+56
	movq $shp9_ct,ticky_entry_ctrs
	movq $1,shp9_ct
	jmp .Lchry
	.size shp9_info, .-shp9_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshowsPrec1_slow-(EngineziCoreziVec_zdwzdcshowsPrec1_info)+0
	.long	0
	.quad	133
	.long	EngineziCoreziVec_zdwzdcshowsPrec1_srt-(EngineziCoreziVec_zdwzdcshowsPrec1_info)+0
	.long	0
	.quad	21474836480
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdwzdcshowsPrec1_info
.type EngineziCoreziVec_zdwzdcshowsPrec1_info, @object
EngineziCoreziVec_zdwzdcshowsPrec1_info:
.LchrE:
	addq $144,%r12
	cmpq 144(%r13),%r12
	ja .LchrI
	addq $18,EngineziCoreziVec_zdwzdcshowsPrec1_ct+48
	incq ALLOC_HEAP_ctr
	addq $18,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdcshowsPrec1_ct
	je .LchrJ
.LchrK:
	incq EngineziCoreziVec_zdwzdcshowsPrec1_ct+40
	movq $sfUk_info,-136(%r12)
	movq %r14,-120(%r12)
	movq %r9,-112(%r12)
	movq $sfUn_info,-104(%r12)
	movq %r14,-88(%r12)
	movq %r8,-80(%r12)
	movq $sfUq_info,-72(%r12)
	movq %r14,-56(%r12)
	movq %rdi,-48(%r12)
	movq $sfUD_info,-40(%r12)
	leaq -136(%r12),%rax
	movq %rax,-32(%r12)
	leaq -104(%r12),%rax
	movq %rax,-24(%r12)
	leaq -72(%r12),%rax
	movq %rax,-16(%r12)
	cmpq $11,%rsi
	jge .LchrM
	leaq -39(%r12),%rbx
	addq $-16,%r12
	addq $-2,EngineziCoreziVec_zdwzdcshowsPrec1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LchrI:
	movq $144,192(%r13)
.LchrG:
	movl $EngineziCoreziVec_zdwzdcshowsPrec1_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LchrJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdcshowsPrec1_ct+56
	movq $EngineziCoreziVec_zdwzdcshowsPrec1_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdcshowsPrec1_ct
	jmp .LchrK
.LchrM:
	movq $shp9_info,-8(%r12)
	leaq -39(%r12),%rax
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_zdwzdcshowsPrec1_info, .-EngineziCoreziVec_zdwzdcshowsPrec1_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_srt:
	.quad	EngineziCoreziVec_zdfShowVec6_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_closure
.type EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_closure, @object
EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_closure:
	.quad	EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
chs7_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	51
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
	.byte	100
	.byte	54
	.byte	98
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chsa_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct
.type EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct, @object
EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chs7_str
	.quad	chsa_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_srt-(shrT_info)+0
	.long	0
	.quad	130
	.quad	4294967328
shrT_info:
.Lchso:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	addq $24,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec1_info
	.size shrT_info, .-shrT_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_srt-(shrU_info)+0
	.long	0
	.quad	2
	.quad	4294967328
shrU_info:
.Lchsr:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $shrT_info,0(%rbp)
	testq $7,%rbx
	jne shrT_info
	jmp *(%rbx)
	.size shrU_info, .-shrU_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_srt-(EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info
.type EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info, @object
EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info:
.LchsA:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LchsC
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct
	je .LchsD
.LchsE:
	incq EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct+40
	movq %r14,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %rsi,%rbx
	movq $shrU_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne shrU_info
	jmp *(%rbx)
.LchsC:
	movl $EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.LchsD:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct+56
	movq $EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_ct
	jmp .LchsE
	.size EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info, .-EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec3zuzdcshowList_srt:
	.quad	EngineziCoreziVec_zdfShowVec6_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3zuzdcshowList_closure
.type EngineziCoreziVec_zdfShowVec3zuzdcshowList_closure, @object
EngineziCoreziVec_zdfShowVec3zuzdcshowList_closure:
	.quad	EngineziCoreziVec_zdfShowVec3zuzdcshowList_info
	.quad	0
.section .rodata
	.align 8
.align 1
chsX_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	51
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
	.byte	100
	.byte	54
	.byte	57
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cht0_str:
	.byte	43
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct
.type EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct, @object
EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chsX_str
	.quad	cht0_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cht9_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	115
	.byte	76
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chtc_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shsL_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cht9_str
	.quad	chtc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshowList_srt-(shsM_info)+0
	.long	0
	.quad	1
	.quad	4294967328
shsM_info:
.Lchtm:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	xorl %esi,%esi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 23(%rbx),%r9
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec1_info
	.size shsM_info, .-shsM_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshowList_srt-(shsL_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
shsL_info:
.Lchtp:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchtr
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shsL_ct
	je .Lchts
.Lchtt:
	incq shsL_ct+40
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $shsM_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shsM_info
	jmp *(%rbx)
.Lchtr:
	jmp *-8(%r13)
.Lchts:
	movq ticky_entry_ctrs,%rax
	movq %rax,shsL_ct+56
	movq $shsL_ct,ticky_entry_ctrs
	movq $1,shsL_ct
	jmp .Lchtt
	.size shsL_info, .-shsL_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshowList_srt-(EngineziCoreziVec_zdfShowVec3zuzdcshowList_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec3zuzdcshowList_info
.type EngineziCoreziVec_zdfShowVec3zuzdcshowList_info, @object
EngineziCoreziVec_zdfShowVec3zuzdcshowList_info:
.LchtC:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LchtG
	addq $2,EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct
	je .LchtH
.LchtI:
	incq EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct+40
	movq $shsL_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	jmp base_GHCziShow_showListzuzu_info
.LchtG:
	movq $16,192(%r13)
.LchtE:
	movl $EngineziCoreziVec_zdfShowVec3zuzdcshowList_closure,%ebx
	jmp *-8(%r13)
.LchtH:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct+56
	movq $EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec3zuzdcshowList_ct
	jmp .LchtI
	.size EngineziCoreziVec_zdfShowVec3zuzdcshowList_info, .-EngineziCoreziVec_zdfShowVec3zuzdcshowList_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdwzdcshow1_srt:
	.quad	EngineziCoreziVec_zdfShowVec6_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshow1_closure
.type EngineziCoreziVec_zdwzdcshow1_closure, @object
EngineziCoreziVec_zdwzdcshow1_closure:
	.quad	EngineziCoreziVec_zdwzdcshow1_info
	.quad	0
.section .rodata
	.align 8
.align 1
chtR_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	115
	.byte	104
	.byte	111
	.byte	119
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	102
	.byte	121
	.byte	120
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chtU_str:
	.byte	43
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshow1_ct
.type EngineziCoreziVec_zdwzdcshow1_ct, @object
EngineziCoreziVec_zdwzdcshow1_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	chtR_str
	.quad	chtU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshow1_srt-(EngineziCoreziVec_zdwzdcshow1_info)+0
	.long	0
	.quad	17179869205
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdwzdcshow1_info
.type EngineziCoreziVec_zdwzdcshow1_info, @object
EngineziCoreziVec_zdwzdcshow1_info:
.LchtZ:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lchu2
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdcshow1_ct
	je .Lchu4
.Lchu6:
	incq EngineziCoreziVec_zdwzdcshow1_ct+40
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-8(%rbp)
	movq $stg_ap_p_info,-16(%rbp)
	movq %r8,%r9
	movq %rdi,%r8
	movq %rsi,%rdi
	xorl %esi,%esi
	addq $-16,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec1_info
.Lchu2:
	movl $EngineziCoreziVec_zdwzdcshow1_closure,%ebx
	jmp *-8(%r13)
.Lchu4:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdcshow1_ct+56
	movq $EngineziCoreziVec_zdwzdcshow1_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdcshow1_ct
	jmp .Lchu6
	.size EngineziCoreziVec_zdwzdcshow1_info, .-EngineziCoreziVec_zdwzdcshow1_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec3zuzdcshow_srt:
	.quad	EngineziCoreziVec_zdfShowVec6_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3zuzdcshow_closure
.type EngineziCoreziVec_zdfShowVec3zuzdcshow_closure, @object
EngineziCoreziVec_zdfShowVec3zuzdcshow_closure:
	.quad	EngineziCoreziVec_zdfShowVec3zuzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
chuk_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	51
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
	.byte	100
	.byte	54
	.byte	97
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chun_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3zuzdcshow_ct
.type EngineziCoreziVec_zdfShowVec3zuzdcshow_ct, @object
EngineziCoreziVec_zdfShowVec3zuzdcshow_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chuk_str
	.quad	chun_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshow_srt-(shua_info)+0
	.long	0
	.quad	1
	.quad	4294967328
shua_info:
.Lchux:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdcshow1_info
	.size shua_info, .-shua_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3zuzdcshow_srt-(EngineziCoreziVec_zdfShowVec3zuzdcshow_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec3zuzdcshow_info
.type EngineziCoreziVec_zdfShowVec3zuzdcshow_info, @object
EngineziCoreziVec_zdfShowVec3zuzdcshow_info:
.LchuA:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchuC
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec3zuzdcshow_ct
	je .LchuD
.LchuE:
	incq EngineziCoreziVec_zdfShowVec3zuzdcshow_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $shua_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shua_info
	jmp *(%rbx)
.LchuC:
	movl $EngineziCoreziVec_zdfShowVec3zuzdcshow_closure,%ebx
	jmp *-8(%r13)
.LchuD:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec3zuzdcshow_ct+56
	movq $EngineziCoreziVec_zdfShowVec3zuzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec3zuzdcshow_ct
	jmp .LchuE
	.size EngineziCoreziVec_zdfShowVec3zuzdcshow_info, .-EngineziCoreziVec_zdfShowVec3zuzdcshow_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec3_srt:
	.quad	EngineziCoreziVec_zdfShowVec6_closure
	.quad	EngineziCoreziVec_zdfShowVec6_closure
	.quad	EngineziCoreziVec_zdfShowVec6_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3_closure
.type EngineziCoreziVec_zdfShowVec3_closure, @object
EngineziCoreziVec_zdfShowVec3_closure:
	.quad	EngineziCoreziVec_zdfShowVec3_info
	.quad	0
.section .rodata
	.align 8
.align 1
chuU_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	76
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chuX_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec3_ct
.type EngineziCoreziVec_zdfShowVec3_ct, @object
EngineziCoreziVec_zdfShowVec3_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chuU_str
	.quad	chuX_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chv6_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	117
	.byte	76
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chv9_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
shuL_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chv6_str
	.quad	chv9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3_srt-(shuL_info)+0
	.long	0
	.quad	8589934604
	.quad	1
	.quad	4294967306
shuL_info:
.Lchve:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shuL_ct
	je .Lchvh
.Lchvj:
	incq shuL_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec3zuzdcshowList_info
.Lchvh:
	movq ticky_entry_ctrs,%rax
	movq %rax,shuL_ct+56
	movq $shuL_ct,ticky_entry_ctrs
	movq $1,shuL_ct
	jmp .Lchvj
	.size shuL_info, .-shuL_info
.section .rodata
	.align 8
.align 1
chvo_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	117
	.byte	77
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chvr_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shuM_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chvo_str
	.quad	chvr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3_srt-(shuM_info)+8
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
shuM_info:
.Lchvw:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shuM_ct
	je .Lchvz
.LchvB:
	incq shuM_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec3zuzdcshow_info
.Lchvz:
	movq ticky_entry_ctrs,%rax
	movq %rax,shuM_ct+56
	movq $shuM_ct,ticky_entry_ctrs
	movq $1,shuM_ct
	jmp .LchvB
	.size shuM_info, .-shuM_info
.section .rodata
	.align 8
.align 1
chvG_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	117
	.byte	78
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chvJ_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shuN_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chvG_str
	.quad	chvJ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3_srt-(shuN_info)+16
	.long	0
	.quad	8589934604
	.quad	1
	.quad	4294967306
shuN_info:
.LchvO:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shuN_ct
	je .LchvR
.LchvT:
	incq shuN_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec3zuzdcshowsPrec_info
.LchvR:
	movq ticky_entry_ctrs,%rax
	movq %rax,shuN_ct+56
	movq $shuN_ct,ticky_entry_ctrs
	movq $1,shuN_ct
	jmp .LchvT
	.size shuN_info, .-shuN_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec3_srt-(EngineziCoreziVec_zdfShowVec3_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
.globl EngineziCoreziVec_zdfShowVec3_info
.type EngineziCoreziVec_zdfShowVec3_info, @object
EngineziCoreziVec_zdfShowVec3_info:
.LchvX:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lchw1
	addq $10,EngineziCoreziVec_zdfShowVec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec3_ct
	je .Lchw2
.Lchw3:
	incq EngineziCoreziVec_zdfShowVec3_ct+40
	movq $shuL_info,-72(%r12)
	movq %r14,-64(%r12)
	movq $shuM_info,-56(%r12)
	movq %r14,-48(%r12)
	movq $shuN_info,-40(%r12)
	movq %r14,-32(%r12)
	incq RET_NEW_ctr
	movq $base_GHCziShow_DZCShow_con_info,-24(%r12)
	leaq -38(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -70(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	jmp *0(%rbp)
.Lchw1:
	movq $80,192(%r13)
.LchvZ:
	movl $EngineziCoreziVec_zdfShowVec3_closure,%ebx
	jmp *-8(%r13)
.Lchw2:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec3_ct+56
	movq $EngineziCoreziVec_zdfShowVec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec3_ct
	jmp .Lchw3
	.size EngineziCoreziVec_zdfShowVec3_info, .-EngineziCoreziVec_zdfShowVec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczeze_closure
.type EngineziCoreziVec_zdwzdczeze_closure, @object
EngineziCoreziVec_zdwzdczeze_closure:
	.quad	EngineziCoreziVec_zdwzdczeze_info
.section .rodata
	.align 8
.align 1
chwj_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	61
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	75
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chwm_str:
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczeze_ct
.type EngineziCoreziVec_zdwzdczeze_ct, @object
EngineziCoreziVec_zdwzdczeze_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	chwj_str
	.quad	chwm_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
shw9_info:
.Lchwy:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lchwz
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.Lchwz:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rbx
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	addq $32,%rbp
	jmp stg_ap_pp_fast
	.size shw9_info, .-shw9_info
.text
	.align 8
	.quad	21474836502
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwzdczeze_info
.type EngineziCoreziVec_zdwzdczeze_info, @object
EngineziCoreziVec_zdwzdczeze_info:
.LchwF:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LchwH
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdczeze_ct
	je .LchwI
.LchwJ:
	incq EngineziCoreziVec_zdwzdczeze_ct+40
	incq UNKNOWN_CALL_ctr
	movq %r9,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %r14,%rbx
	movq %rsi,%r14
	movq %r8,%rsi
	movq $shw9_info,-32(%rbp)
	addq $-32,%rbp
	jmp stg_ap_pp_fast
.LchwH:
	movl $EngineziCoreziVec_zdwzdczeze_closure,%ebx
	jmp *-8(%r13)
.LchwI:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdczeze_ct+56
	movq $EngineziCoreziVec_zdwzdczeze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdczeze_ct
	jmp .LchwJ
	.size EngineziCoreziVec_zdwzdczeze_info, .-EngineziCoreziVec_zdwzdczeze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec2zuzdczeze_closure
.type EngineziCoreziVec_zdfEqVec2zuzdczeze_closure, @object
EngineziCoreziVec_zdfEqVec2zuzdczeze_closure:
	.quad	EngineziCoreziVec_zdfEqVec2zuzdczeze_info
.section .rodata
	.align 8
.align 1
chx5_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	95
	.byte	36
	.byte	99
	.byte	61
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chx8_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec2zuzdczeze_ct
.type EngineziCoreziVec_zdfEqVec2zuzdczeze_ct, @object
EngineziCoreziVec_zdfEqVec2zuzdczeze_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chx5_str
	.quad	chx8_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
shwN_info:
.Lchxq:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 8(%rbp),%rdi
	movq 7(%rbx),%r8
	movq 15(%rbx),%r9
	addq $32,%rbp
	jmp EngineziCoreziVec_zdwzdczeze_info
	.size shwN_info, .-shwN_info
.text
	.align 8
	.quad	2
	.quad	32
shwO_info:
.Lchxt:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $shwN_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne shwN_info
	jmp *(%rbx)
	.size shwO_info, .-shwO_info
.text
	.align 8
	.quad	2
	.quad	32
shwP_info:
.LchxD:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $shwO_info,0(%rbp)
	testq $7,%rbx
	jne shwO_info
	jmp *(%rbx)
	.size shwP_info, .-shwP_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec2zuzdczeze_info
.type EngineziCoreziVec_zdfEqVec2zuzdczeze_info, @object
EngineziCoreziVec_zdfEqVec2zuzdczeze_info:
.LchxM:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LchxO
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec2zuzdczeze_ct
	je .LchxP
.LchxQ:
	incq EngineziCoreziVec_zdfEqVec2zuzdczeze_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $shwP_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne shwP_info
	jmp *(%rbx)
.LchxO:
	movl $EngineziCoreziVec_zdfEqVec2zuzdczeze_closure,%ebx
	jmp *-8(%r13)
.LchxP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec2zuzdczeze_ct+56
	movq $EngineziCoreziVec_zdfEqVec2zuzdczeze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec2zuzdczeze_ct
	jmp .LchxQ
	.size EngineziCoreziVec_zdfEqVec2zuzdczeze_info, .-EngineziCoreziVec_zdfEqVec2zuzdczeze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczsze_closure
.type EngineziCoreziVec_zdwzdczsze_closure, @object
EngineziCoreziVec_zdwzdczsze_closure:
	.quad	EngineziCoreziVec_zdwzdczsze_info
.section .rodata
	.align 8
.align 1
chyc_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	99
	.byte	47
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	102
	.byte	121
	.byte	114
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chyf_str:
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdczsze_ct
.type EngineziCoreziVec_zdwzdczsze_ct, @object
EngineziCoreziVec_zdwzdczsze_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	chyc_str
	.quad	chyf_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
shxY_info:
.Lchyw:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .Lchyx
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lchyx:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size shxY_info, .-shxY_info
.text
	.align 8
	.quad	3
	.quad	32
shxX_info:
.LchyF:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LchyG
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LchyG:
	incq UNKNOWN_CALL_ctr
	movq 24(%rbp),%rbx
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $shxY_info,24(%rbp)
	addq $24,%rbp
	jmp stg_ap_pp_fast
	.size shxX_info, .-shxX_info
.text
	.align 8
	.quad	21474836502
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdwzdczsze_info
.type EngineziCoreziVec_zdwzdczsze_info, @object
EngineziCoreziVec_zdwzdczsze_info:
.LchyM:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LchyO
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdczsze_ct
	je .LchyP
.LchyQ:
	incq EngineziCoreziVec_zdwzdczsze_ct+40
	incq UNKNOWN_CALL_ctr
	movq %r9,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %r14,%rbx
	movq %rsi,%r14
	movq %r8,%rsi
	movq $shxX_info,-32(%rbp)
	addq $-32,%rbp
	jmp stg_ap_pp_fast
.LchyO:
	movl $EngineziCoreziVec_zdwzdczsze_closure,%ebx
	jmp *-8(%r13)
.LchyP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdczsze_ct+56
	movq $EngineziCoreziVec_zdwzdczsze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdczsze_ct
	jmp .LchyQ
	.size EngineziCoreziVec_zdwzdczsze_info, .-EngineziCoreziVec_zdwzdczsze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec2zuzdczsze_closure
.type EngineziCoreziVec_zdfEqVec2zuzdczsze_closure, @object
EngineziCoreziVec_zdfEqVec2zuzdczsze_closure:
	.quad	EngineziCoreziVec_zdfEqVec2zuzdczsze_info
.section .rodata
	.align 8
.align 1
chzc_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	95
	.byte	36
	.byte	99
	.byte	47
	.byte	61
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chzf_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec2zuzdczsze_ct
.type EngineziCoreziVec_zdfEqVec2zuzdczsze_ct, @object
EngineziCoreziVec_zdfEqVec2zuzdczsze_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chzc_str
	.quad	chzf_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
shyU_info:
.Lchzx:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 8(%rbp),%rdi
	movq 7(%rbx),%r8
	movq 15(%rbx),%r9
	addq $32,%rbp
	jmp EngineziCoreziVec_zdwzdczsze_info
	.size shyU_info, .-shyU_info
.text
	.align 8
	.quad	2
	.quad	32
shyV_info:
.LchzA:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $shyU_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne shyU_info
	jmp *(%rbx)
	.size shyV_info, .-shyV_info
.text
	.align 8
	.quad	2
	.quad	32
shyW_info:
.LchzK:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $shyV_info,0(%rbp)
	testq $7,%rbx
	jne shyV_info
	jmp *(%rbx)
	.size shyW_info, .-shyW_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec2zuzdczsze_info
.type EngineziCoreziVec_zdfEqVec2zuzdczsze_info, @object
EngineziCoreziVec_zdfEqVec2zuzdczsze_info:
.LchzT:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LchzV
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec2zuzdczsze_ct
	je .LchzW
.LchzX:
	incq EngineziCoreziVec_zdfEqVec2zuzdczsze_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $shyW_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne shyW_info
	jmp *(%rbx)
.LchzV:
	movl $EngineziCoreziVec_zdfEqVec2zuzdczsze_closure,%ebx
	jmp *-8(%r13)
.LchzW:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec2zuzdczsze_ct+56
	movq $EngineziCoreziVec_zdfEqVec2zuzdczsze_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec2zuzdczsze_ct
	jmp .LchzX
	.size EngineziCoreziVec_zdfEqVec2zuzdczsze_info, .-EngineziCoreziVec_zdfEqVec2zuzdczsze_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec2_closure
.type EngineziCoreziVec_zdfEqVec2_closure, @object
EngineziCoreziVec_zdfEqVec2_closure:
	.quad	EngineziCoreziVec_zdfEqVec2_info
.section .rodata
	.align 8
.align 1
chAb_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	69
	.byte	113
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	86
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chAe_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfEqVec2_ct
.type EngineziCoreziVec_zdfEqVec2_ct, @object
EngineziCoreziVec_zdfEqVec2_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chAb_str
	.quad	chAe_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chAn_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	65
	.byte	52
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chAq_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shA4_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chAn_str
	.quad	chAq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
shA4_info:
.LchAv:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shA4_ct
	je .LchAy
.LchAA:
	incq shA4_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfEqVec2zuzdczsze_info
.LchAy:
	movq ticky_entry_ctrs,%rax
	movq %rax,shA4_ct+56
	movq $shA4_ct,ticky_entry_ctrs
	movq $1,shA4_ct
	jmp .LchAA
	.size shA4_info, .-shA4_info
.section .rodata
	.align 8
.align 1
chAF_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	65
	.byte	53
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chAI_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shA5_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chAF_str
	.quad	chAI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	1
	.quad	10
shA5_info:
.LchAN:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shA5_ct
	je .LchAQ
.LchAS:
	incq shA5_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfEqVec2zuzdczeze_info
.LchAQ:
	movq ticky_entry_ctrs,%rax
	movq %rax,shA5_ct+56
	movq $shA5_ct,ticky_entry_ctrs
	movq $1,shA5_ct
	jmp .LchAS
	.size shA5_info, .-shA5_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziVec_zdfEqVec2_info
.type EngineziCoreziVec_zdfEqVec2_info, @object
EngineziCoreziVec_zdfEqVec2_info:
.LchAW:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LchB0
	addq $7,EngineziCoreziVec_zdfEqVec2_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfEqVec2_ct
	je .LchB1
.LchB2:
	incq EngineziCoreziVec_zdfEqVec2_ct+40
	movq $shA4_info,-48(%r12)
	movq %r14,-40(%r12)
	movq $shA5_info,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziClasses_DZCEq_con_info,-16(%r12)
	leaq -30(%r12),%rax
	movq %rax,-8(%r12)
	leaq -46(%r12),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	jmp *0(%rbp)
.LchB0:
	movq $56,192(%r13)
.LchAY:
	movl $EngineziCoreziVec_zdfEqVec2_closure,%ebx
	jmp *-8(%r13)
.LchB1:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfEqVec2_ct+56
	movq $EngineziCoreziVec_zdfEqVec2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfEqVec2_ct
	jmp .LchB2
	.size EngineziCoreziVec_zdfEqVec2_info, .-EngineziCoreziVec_zdfEqVec2_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec1_closure
.type EngineziCoreziVec_zdfShowVec1_closure, @object
EngineziCoreziVec_zdfShowVec1_closure:
	.quad	EngineziCoreziVec_zdfShowVec1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chBg_str:
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziCoreziVec_zdfShowVec1_info
.type EngineziCoreziVec_zdfShowVec1_info, @object
EngineziCoreziVec_zdfShowVec1_info:
.LchBk:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchBm
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LchBo
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
	je .LchBp
.LchBq:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $chBg_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LchBo:
	movq $16,192(%r13)
.LchBm:
	jmp *-16(%r13)
.LchBp:
	jmp *(%rbx)
	.size EngineziCoreziVec_zdfShowVec1_info, .-EngineziCoreziVec_zdfShowVec1_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdwzdcshowsPrec_srt:
	.quad	EngineziCoreziVec_zdfShowVec1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshowsPrec_closure
.type EngineziCoreziVec_zdwzdcshowsPrec_closure, @object
EngineziCoreziVec_zdwzdcshowsPrec_closure:
	.quad	EngineziCoreziVec_zdwzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
chBX_str:
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
	.byte	86
	.byte	101
	.byte	99
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
	.byte	100
	.byte	54
	.byte	99
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chBZ_str:
	.byte	43
	.byte	105
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshowsPrec_ct
.type EngineziCoreziVec_zdwzdcshowsPrec_ct, @object
EngineziCoreziVec_zdwzdcshowsPrec_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	chBX_str
	.quad	chBZ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziCoreziVec_zdwzdcshowsPrec_slow
.type EngineziCoreziVec_zdwzdcshowsPrec_slow, @object
EngineziCoreziVec_zdwzdcshowsPrec_slow:
.LchC2:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	addq $32,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec_info
	.size EngineziCoreziVec_zdwzdcshowsPrec_slow, .-EngineziCoreziVec_zdwzdcshowsPrec_slow
.text
	.align 8
	.quad	2
	.quad	19
sfWT_info:
.LchC7:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchC9
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.LchC9:
	jmp *-16(%r13)
	.size sfWT_info, .-sfWT_info
.text
	.align 8
	.quad	2
	.quad	19
sfWW_info:
.LchCg:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LchCi
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq $EngineziCoreziVec_zdfShowVec5_closure+1,-32(%rbp)
	movq $stg_ap_pp_info,-40(%rbp)
	movq 16(%rbx),%r14
	addq $-40,%rbp
	jmp base_GHCziShow_showsPrec_info
.LchCi:
	jmp *-16(%r13)
	.size sfWW_info, .-sfWW_info
.section .rodata
	.align 8
.align 1
chCn_str:
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	102
	.byte	88
	.byte	53
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chCq_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
sfX5_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chCn_str
	.quad	chCq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	16
shBw_info:
.LchCB:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchCD
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LchCF
	addq $7,sfX5_ct+48
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
.LchCF:
	movq $56,192(%r13)
.LchCD:
	jmp *-16(%r13)
	.size shBw_info, .-shBw_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshowsPrec_srt-(sfX5_info)+0
	.long	0
	.quad	4294967301
	.quad	2
	.quad	4294967308
sfX5_info:
.LchCM:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LchCQ
	addq $5,sfX5_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sfX5_ct
	je .LchCR
.LchCS:
	incq sfX5_ct+40
	movq $shBw_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-16(%r12)
	movq 15(%rbx),%rax
	movq %rax,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movl $EngineziCoreziVec_zdfShowVec1_closure,%r14d
	leaq -32(%r12),%rsi
	jmp base_GHCziBase_zpzp_info
.LchCQ:
	movq $40,192(%r13)
.LchCO:
	jmp *-8(%r13)
.LchCR:
	movq ticky_entry_ctrs,%rax
	movq %rax,sfX5_ct+56
	movq $sfX5_ct,ticky_entry_ctrs
	movq $1,sfX5_ct
	jmp .LchCS
	.size sfX5_info, .-sfX5_info
.section .rodata
	.align 8
.align 1
chD2_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	66
	.byte	120
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chD5_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
shBx_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chD2_str
	.quad	chD5_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
sfXd_info:
.LchDg:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchDi
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LchDk
	addq $3,shBx_ct+48
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
	jmp sfX5_info
.LchDk:
	movq $24,192(%r13)
.LchDi:
	jmp *-16(%r13)
	.size sfXd_info, .-sfXd_info
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
shBx_info:
.LchDp:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LchDt
	addq $7,shBx_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shBx_ct
	je .LchDu
.LchDv:
	incq shBx_ct+40
	movq $sfXd_info,-48(%r12)
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
.LchDt:
	movq $56,192(%r13)
.LchDr:
	jmp *-8(%r13)
.LchDu:
	movq ticky_entry_ctrs,%rax
	movq %rax,shBx_ct+56
	movq $shBx_ct,ticky_entry_ctrs
	movq $1,shBx_ct
	jmp .LchDv
	.size shBx_info, .-shBx_info
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshowsPrec_slow-(EngineziCoreziVec_zdwzdcshowsPrec_info)+0
	.long	0
	.quad	132
	.long	EngineziCoreziVec_zdwzdcshowsPrec_srt-(EngineziCoreziVec_zdwzdcshowsPrec_info)+0
	.long	0
	.quad	17179869184
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdwzdcshowsPrec_info
.type EngineziCoreziVec_zdwzdcshowsPrec_info, @object
EngineziCoreziVec_zdwzdcshowsPrec_info:
.LchDB:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LchDF
	addq $13,EngineziCoreziVec_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdcshowsPrec_ct
	je .LchDG
.LchDH:
	incq EngineziCoreziVec_zdwzdcshowsPrec_ct+40
	movq $sfWT_info,-96(%r12)
	movq %r14,-80(%r12)
	movq %r8,-72(%r12)
	movq $sfWW_info,-64(%r12)
	movq %r14,-48(%r12)
	movq %rdi,-40(%r12)
	movq $sfX5_info,-32(%r12)
	leaq -96(%r12),%rax
	movq %rax,-24(%r12)
	leaq -64(%r12),%rax
	movq %rax,-16(%r12)
	cmpq $11,%rsi
	jge .LchDJ
	leaq -31(%r12),%rbx
	addq $-16,%r12
	addq $-2,EngineziCoreziVec_zdwzdcshowsPrec_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LchDF:
	movq $104,192(%r13)
.LchDD:
	movl $EngineziCoreziVec_zdwzdcshowsPrec_closure,%ebx
	addq $-32,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	jmp *-8(%r13)
.LchDG:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdcshowsPrec_ct+56
	movq $EngineziCoreziVec_zdwzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdcshowsPrec_ct
	jmp .LchDH
.LchDJ:
	movq $shBx_info,-8(%r12)
	leaq -31(%r12),%rax
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_zdwzdcshowsPrec_info, .-EngineziCoreziVec_zdwzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_srt:
	.quad	EngineziCoreziVec_zdfShowVec1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_closure
.type EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_closure, @object
EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_closure:
	.quad	EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info
	.quad	0
.section .rodata
	.align 8
.align 1
chE3_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	100
	.byte	54
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chE6_str:
	.byte	43
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct
.type EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct, @object
EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chE3_str
	.quad	chE6_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_srt-(shDP_info)+0
	.long	0
	.quad	130
	.quad	4294967328
shDP_info:
.LchEk:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	addq $24,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec_info
	.size shDP_info, .-shDP_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_srt-(shDQ_info)+0
	.long	0
	.quad	2
	.quad	4294967328
shDQ_info:
.LchEn:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $shDP_info,0(%rbp)
	testq $7,%rbx
	jne shDP_info
	jmp *(%rbx)
	.size shDQ_info, .-shDQ_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_srt-(EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info
.type EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info, @object
EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info:
.LchEw:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LchEy
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct
	je .LchEz
.LchEA:
	incq EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct+40
	movq %r14,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %rsi,%rbx
	movq $shDQ_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne shDQ_info
	jmp *(%rbx)
.LchEy:
	movl $EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_closure,%ebx
	jmp *-8(%r13)
.LchEz:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct+56
	movq $EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_ct
	jmp .LchEA
	.size EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info, .-EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec2zuzdcshowList_srt:
	.quad	EngineziCoreziVec_zdfShowVec1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2zuzdcshowList_closure
.type EngineziCoreziVec_zdfShowVec2zuzdcshowList_closure, @object
EngineziCoreziVec_zdfShowVec2zuzdcshowList_closure:
	.quad	EngineziCoreziVec_zdfShowVec2zuzdcshowList_info
	.quad	0
.section .rodata
	.align 8
.align 1
chET_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	100
	.byte	54
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chEW_str:
	.byte	43
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct
.type EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct, @object
EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chET_str
	.quad	chEW_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chF5_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	69
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chF8_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shEH_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chF5_str
	.quad	chF8_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshowList_srt-(shEI_info)+0
	.long	0
	.quad	1
	.quad	4294967328
shEI_info:
.LchFi:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	xorl %esi,%esi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec_info
	.size shEI_info, .-shEI_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshowList_srt-(shEH_info)+0
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
shEH_info:
.LchFl:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchFn
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shEH_ct
	je .LchFo
.LchFp:
	incq shEH_ct+40
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $shEI_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shEI_info
	jmp *(%rbx)
.LchFn:
	jmp *-8(%r13)
.LchFo:
	movq ticky_entry_ctrs,%rax
	movq %rax,shEH_ct+56
	movq $shEH_ct,ticky_entry_ctrs
	movq $1,shEH_ct
	jmp .LchFp
	.size shEH_info, .-shEH_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshowList_srt-(EngineziCoreziVec_zdfShowVec2zuzdcshowList_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec2zuzdcshowList_info
.type EngineziCoreziVec_zdfShowVec2zuzdcshowList_info, @object
EngineziCoreziVec_zdfShowVec2zuzdcshowList_info:
.LchFy:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LchFC
	addq $2,EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct
	je .LchFD
.LchFE:
	incq EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct+40
	movq $shEH_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	jmp base_GHCziShow_showListzuzu_info
.LchFC:
	movq $16,192(%r13)
.LchFA:
	movl $EngineziCoreziVec_zdfShowVec2zuzdcshowList_closure,%ebx
	jmp *-8(%r13)
.LchFD:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct+56
	movq $EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec2zuzdcshowList_ct
	jmp .LchFE
	.size EngineziCoreziVec_zdfShowVec2zuzdcshowList_info, .-EngineziCoreziVec_zdfShowVec2zuzdcshowList_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdwzdcshow_srt:
	.quad	EngineziCoreziVec_zdfShowVec1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshow_closure
.type EngineziCoreziVec_zdwzdcshow_closure, @object
EngineziCoreziVec_zdwzdcshow_closure:
	.quad	EngineziCoreziVec_zdwzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
chFN_str:
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
	.byte	86
	.byte	101
	.byte	99
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
	.byte	102
	.byte	121
	.byte	119
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chFQ_str:
	.byte	43
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdwzdcshow_ct
.type EngineziCoreziVec_zdwzdcshow_ct, @object
EngineziCoreziVec_zdwzdcshow_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chFN_str
	.quad	chFQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdwzdcshow_srt-(EngineziCoreziVec_zdwzdcshow_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdwzdcshow_info
.type EngineziCoreziVec_zdwzdcshow_info, @object
EngineziCoreziVec_zdwzdcshow_info:
.LchFV:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchFY
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdwzdcshow_ct
	je .LchG0
.LchG2:
	incq EngineziCoreziVec_zdwzdcshow_ct+40
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-8(%rbp)
	movq $stg_ap_p_info,-16(%rbp)
	movq %rdi,%r8
	movq %rsi,%rdi
	xorl %esi,%esi
	addq $-16,%rbp
	jmp EngineziCoreziVec_zdwzdcshowsPrec_info
.LchFY:
	movl $EngineziCoreziVec_zdwzdcshow_closure,%ebx
	jmp *-8(%r13)
.LchG0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdwzdcshow_ct+56
	movq $EngineziCoreziVec_zdwzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdwzdcshow_ct
	jmp .LchG2
	.size EngineziCoreziVec_zdwzdcshow_info, .-EngineziCoreziVec_zdwzdcshow_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec2zuzdcshow_srt:
	.quad	EngineziCoreziVec_zdfShowVec1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2zuzdcshow_closure
.type EngineziCoreziVec_zdfShowVec2zuzdcshow_closure, @object
EngineziCoreziVec_zdfShowVec2zuzdcshow_closure:
	.quad	EngineziCoreziVec_zdfShowVec2zuzdcshow_info
	.quad	0
.section .rodata
	.align 8
.align 1
chGg_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	100
	.byte	54
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chGj_str:
	.byte	43
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2zuzdcshow_ct
.type EngineziCoreziVec_zdfShowVec2zuzdcshow_ct, @object
EngineziCoreziVec_zdfShowVec2zuzdcshow_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chGg_str
	.quad	chGj_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshow_srt-(shG6_info)+0
	.long	0
	.quad	1
	.quad	4294967328
shG6_info:
.LchGt:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	addq $16,%rbp
	jmp EngineziCoreziVec_zdwzdcshow_info
	.size shG6_info, .-shG6_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2zuzdcshow_srt-(EngineziCoreziVec_zdfShowVec2zuzdcshow_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziCoreziVec_zdfShowVec2zuzdcshow_info
.type EngineziCoreziVec_zdfShowVec2zuzdcshow_info, @object
EngineziCoreziVec_zdfShowVec2zuzdcshow_info:
.LchGw:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LchGy
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec2zuzdcshow_ct
	je .LchGz
.LchGA:
	incq EngineziCoreziVec_zdfShowVec2zuzdcshow_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $shG6_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne shG6_info
	jmp *(%rbx)
.LchGy:
	movl $EngineziCoreziVec_zdfShowVec2zuzdcshow_closure,%ebx
	jmp *-8(%r13)
.LchGz:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec2zuzdcshow_ct+56
	movq $EngineziCoreziVec_zdfShowVec2zuzdcshow_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec2zuzdcshow_ct
	jmp .LchGA
	.size EngineziCoreziVec_zdfShowVec2zuzdcshow_info, .-EngineziCoreziVec_zdfShowVec2zuzdcshow_info
.section .data
	.align 8
.align 1
EngineziCoreziVec_zdfShowVec2_srt:
	.quad	EngineziCoreziVec_zdfShowVec1_closure
	.quad	EngineziCoreziVec_zdfShowVec1_closure
	.quad	EngineziCoreziVec_zdfShowVec1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2_closure
.type EngineziCoreziVec_zdfShowVec2_closure, @object
EngineziCoreziVec_zdfShowVec2_closure:
	.quad	EngineziCoreziVec_zdfShowVec2_info
	.quad	0
.section .rodata
	.align 8
.align 1
chGQ_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	36
	.byte	102
	.byte	83
	.byte	104
	.byte	111
	.byte	119
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	53
	.byte	77
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chGT_str:
	.byte	43
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_zdfShowVec2_ct
.type EngineziCoreziVec_zdfShowVec2_ct, @object
EngineziCoreziVec_zdfShowVec2_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chGQ_str
	.quad	chGT_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
chH2_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	71
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chH5_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
shGH_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chH2_str
	.quad	chH5_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2_srt-(shGH_info)+0
	.long	0
	.quad	8589934604
	.quad	1
	.quad	4294967306
shGH_info:
.LchHa:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shGH_ct
	je .LchHd
.LchHf:
	incq shGH_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec2zuzdcshowList_info
.LchHd:
	movq ticky_entry_ctrs,%rax
	movq %rax,shGH_ct+56
	movq $shGH_ct,ticky_entry_ctrs
	movq $1,shGH_ct
	jmp .LchHf
	.size shGH_info, .-shGH_info
.section .rodata
	.align 8
.align 1
chHk_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	71
	.byte	73
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chHn_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shGI_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	chHk_str
	.quad	chHn_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2_srt-(shGI_info)+8
	.long	0
	.quad	4294967301
	.quad	1
	.quad	4294967306
shGI_info:
.LchHs:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shGI_ct
	je .LchHv
.LchHx:
	incq shGI_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq 7(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec2zuzdcshow_info
.LchHv:
	movq ticky_entry_ctrs,%rax
	movq %rax,shGI_ct+56
	movq $shGI_ct,ticky_entry_ctrs
	movq $1,shGI_ct
	jmp .LchHx
	.size shGI_info, .-shGI_info
.section .rodata
	.align 8
.align 1
chHC_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	104
	.byte	71
	.byte	74
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
	.byte	67
	.byte	111
	.byte	114
	.byte	101
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
chHF_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
shGJ_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chHC_str
	.quad	chHF_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2_srt-(shGJ_info)+16
	.long	0
	.quad	8589934604
	.quad	1
	.quad	4294967306
shGJ_info:
.LchHK:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,shGJ_ct
	je .LchHN
.LchHP:
	incq shGJ_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,%rdi
	movq %r14,%rsi
	movq 6(%rbx),%r14
	jmp EngineziCoreziVec_zdfShowVec2zuzdcshowsPrec_info
.LchHN:
	movq ticky_entry_ctrs,%rax
	movq %rax,shGJ_ct+56
	movq $shGJ_ct,ticky_entry_ctrs
	movq $1,shGJ_ct
	jmp .LchHP
	.size shGJ_info, .-shGJ_info
.text
	.align 8
	.long	EngineziCoreziVec_zdfShowVec2_srt-(EngineziCoreziVec_zdfShowVec2_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
.globl EngineziCoreziVec_zdfShowVec2_info
.type EngineziCoreziVec_zdfShowVec2_info, @object
EngineziCoreziVec_zdfShowVec2_info:
.LchHT:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LchHX
	addq $10,EngineziCoreziVec_zdfShowVec2_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_zdfShowVec2_ct
	je .LchHY
.LchHZ:
	incq EngineziCoreziVec_zdfShowVec2_ct+40
	movq $shGH_info,-72(%r12)
	movq %r14,-64(%r12)
	movq $shGI_info,-56(%r12)
	movq %r14,-48(%r12)
	movq $shGJ_info,-40(%r12)
	movq %r14,-32(%r12)
	incq RET_NEW_ctr
	movq $base_GHCziShow_DZCShow_con_info,-24(%r12)
	leaq -38(%r12),%rax
	movq %rax,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -70(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	jmp *0(%rbp)
.LchHX:
	movq $80,192(%r13)
.LchHV:
	movl $EngineziCoreziVec_zdfShowVec2_closure,%ebx
	jmp *-8(%r13)
.LchHY:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_zdfShowVec2_ct+56
	movq $EngineziCoreziVec_zdfShowVec2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_zdfShowVec2_ct
	jmp .LchHZ
	.size EngineziCoreziVec_zdfShowVec2_info, .-EngineziCoreziVec_zdfShowVec2_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_Vec4_closure
.type EngineziCoreziVec_Vec4_closure, @object
EngineziCoreziVec_Vec4_closure:
	.quad	EngineziCoreziVec_Vec4_info
.section .rodata
	.align 8
.align 1
chIa_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	66
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chId_str:
	.byte	46
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_Vec4_ct
.type EngineziCoreziVec_Vec4_ct, @object
EngineziCoreziVec_Vec4_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	chIa_str
	.quad	chId_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
EngineziCoreziVec_Vec4_info:
.LchIi:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LchIn
	addq $5,EngineziCoreziVec_Vec4_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_Vec4_ct
	je .LchIp
.LchIr:
	incq EngineziCoreziVec_Vec4_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec4_con_info,-32(%r12)
	movq %r14,-24(%r12)
	movq %rsi,-16(%r12)
	movq %rdi,-8(%r12)
	movq %r8,0(%r12)
	leaq -31(%r12),%rbx
	jmp *0(%rbp)
.LchIn:
	movq $40,192(%r13)
.LchIl:
	movl $EngineziCoreziVec_Vec4_closure,%ebx
	jmp *-8(%r13)
.LchIp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_Vec4_ct+56
	movq $EngineziCoreziVec_Vec4_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_Vec4_ct
	jmp .LchIr
	.size EngineziCoreziVec_Vec4_info, .-EngineziCoreziVec_Vec4_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_Vec3_closure
.type EngineziCoreziVec_Vec3_closure, @object
EngineziCoreziVec_Vec3_closure:
	.quad	EngineziCoreziVec_Vec3_info
.section .rodata
	.align 8
.align 1
chIz_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	69
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chIC_str:
	.byte	46
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_Vec3_ct
.type EngineziCoreziVec_Vec3_ct, @object
EngineziCoreziVec_Vec3_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	chIz_str
	.quad	chIC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
EngineziCoreziVec_Vec3_info:
.LchIH:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LchIM
	addq $4,EngineziCoreziVec_Vec3_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_Vec3_ct
	je .LchIO
.LchIQ:
	incq EngineziCoreziVec_Vec3_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq %r14,-16(%r12)
	movq %rsi,-8(%r12)
	movq %rdi,0(%r12)
	leaq -23(%r12),%rbx
	jmp *0(%rbp)
.LchIM:
	movq $32,192(%r13)
.LchIK:
	movl $EngineziCoreziVec_Vec3_closure,%ebx
	jmp *-8(%r13)
.LchIO:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_Vec3_ct+56
	movq $EngineziCoreziVec_Vec3_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_Vec3_ct
	jmp .LchIQ
	.size EngineziCoreziVec_Vec3_info, .-EngineziCoreziVec_Vec3_info
.data
	.align 8
.align 1
.globl EngineziCoreziVec_Vec2_closure
.type EngineziCoreziVec_Vec2_closure, @object
EngineziCoreziVec_Vec2_closure:
	.quad	EngineziCoreziVec_Vec2_info
.section .rodata
	.align 8
.align 1
chIY_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	100
	.byte	54
	.byte	72
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
chJ1_str:
	.byte	46
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziVec_Vec2_ct
.type EngineziCoreziVec_Vec2_ct, @object
EngineziCoreziVec_Vec2_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	chIY_str
	.quad	chJ1_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
EngineziCoreziVec_Vec2_info:
.LchJ6:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LchJb
	addq $3,EngineziCoreziVec_Vec2_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziVec_Vec2_ct
	je .LchJd
.LchJf:
	incq EngineziCoreziVec_Vec2_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq %r14,-8(%r12)
	movq %rsi,0(%r12)
	leaq -15(%r12),%rbx
	jmp *0(%rbp)
.LchJb:
	movq $24,192(%r13)
.LchJ9:
	movl $EngineziCoreziVec_Vec2_closure,%ebx
	jmp *-8(%r13)
.LchJd:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziVec_Vec2_ct+56
	movq $EngineziCoreziVec_Vec2_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziVec_Vec2_ct
	jmp .LchJf
	.size EngineziCoreziVec_Vec2_info, .-EngineziCoreziVec_Vec2_info
.section .rodata
	.align 8
.align 1
ihJl_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	0
.text
	.align 8
	.long	ihJl_str-(EngineziCoreziVec_Vec4_con_info)+0
	.long	0
	.quad	4
	.quad	1
.globl EngineziCoreziVec_Vec4_con_info
.type EngineziCoreziVec_Vec4_con_info, @object
EngineziCoreziVec_Vec4_con_info:
.LchJo:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_Vec4_con_info, .-EngineziCoreziVec_Vec4_con_info
.section .rodata
	.align 8
.align 1
ihJq_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	52
	.byte	0
.text
	.align 8
	.long	ihJq_str-(EngineziCoreziVec_Vec4_static_info)+0
	.long	0
	.quad	4
	.quad	7
.globl EngineziCoreziVec_Vec4_static_info
.type EngineziCoreziVec_Vec4_static_info, @object
EngineziCoreziVec_Vec4_static_info:
.LchJt:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_Vec4_static_info, .-EngineziCoreziVec_Vec4_static_info
.section .rodata
	.align 8
.align 1
ihJx_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	0
.text
	.align 8
	.long	ihJx_str-(EngineziCoreziVec_Vec3_con_info)+0
	.long	0
	.quad	3
	.quad	1
.globl EngineziCoreziVec_Vec3_con_info
.type EngineziCoreziVec_Vec3_con_info, @object
EngineziCoreziVec_Vec3_con_info:
.LchJA:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_Vec3_con_info, .-EngineziCoreziVec_Vec3_con_info
.section .rodata
	.align 8
.align 1
ihJC_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	0
.text
	.align 8
	.long	ihJC_str-(EngineziCoreziVec_Vec3_static_info)+0
	.long	0
	.quad	3
	.quad	7
.globl EngineziCoreziVec_Vec3_static_info
.type EngineziCoreziVec_Vec3_static_info, @object
EngineziCoreziVec_Vec3_static_info:
.LchJF:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_Vec3_static_info, .-EngineziCoreziVec_Vec3_static_info
.section .rodata
	.align 8
.align 1
ihJJ_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	0
.text
	.align 8
	.long	ihJJ_str-(EngineziCoreziVec_Vec2_con_info)+0
	.long	0
	.quad	2
	.quad	4
.globl EngineziCoreziVec_Vec2_con_info
.type EngineziCoreziVec_Vec2_con_info, @object
EngineziCoreziVec_Vec2_con_info:
.LchJM:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_Vec2_con_info, .-EngineziCoreziVec_Vec2_con_info
.section .rodata
	.align 8
.align 1
ihJO_str:
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
	.byte	86
	.byte	101
	.byte	99
	.byte	46
	.byte	86
	.byte	101
	.byte	99
	.byte	50
	.byte	0
.text
	.align 8
	.long	ihJO_str-(EngineziCoreziVec_Vec2_static_info)+0
	.long	0
	.quad	2
	.quad	7
.globl EngineziCoreziVec_Vec2_static_info
.type EngineziCoreziVec_Vec2_static_info, @object
EngineziCoreziVec_Vec2_static_info:
.LchJR:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziVec_Vec2_static_info, .-EngineziCoreziVec_Vec2_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
