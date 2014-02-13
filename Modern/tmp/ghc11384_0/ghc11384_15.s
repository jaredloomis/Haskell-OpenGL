.data
	.align 8
.align 1
.globl __stginit_EngineziObjectziPlayer
.type __stginit_EngineziObjectziPlayer, @object
__stginit_EngineziObjectziPlayer:
.data
	.align 8
.align 1
rLu1_closure:
	.quad	rLu1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cLZW_str:
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	87
	.byte	105
	.byte	116
	.byte	104
	.byte	83
	.byte	116
	.byte	101
	.byte	112
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
rLu1_info:
.LcM00:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM02
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcM04
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
	je .LcM05
.LcM06:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cLZW_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcM04:
	movq $16,192(%r13)
.LcM02:
	jmp *-16(%r13)
.LcM05:
	jmp *(%rbx)
	.size rLu1_info, .-rLu1_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer39_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rLu1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer39_closure
.type EngineziObjectziPlayer_mkPlayer39_closure, @object
EngineziObjectziPlayer_mkPlayer39_closure:
	.quad	EngineziObjectziPlayer_mkPlayer39_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer39_srt-(EngineziObjectziPlayer_mkPlayer39_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziObjectziPlayer_mkPlayer39_info
.type EngineziObjectziPlayer_mkPlayer39_info, @object
EngineziObjectziPlayer_mkPlayer39_info:
.LcM0n:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM0p
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcM0r
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
	je .LcM0s
.LcM0t:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rLu1_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcM0r:
	movq $16,192(%r13)
.LcM0p:
	jmp *-16(%r13)
.LcM0s:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer39_info, .-EngineziObjectziPlayer_mkPlayer39_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer38_closure
.type EngineziObjectziPlayer_mkPlayer38_closure, @object
EngineziObjectziPlayer_mkPlayer38_closure:
	.quad	EngineziObjectziPlayer_mkPlayer38_info
.section .rodata
	.align 8
.align 1
cM0P_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	51
	.byte	56
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	73
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cM0S_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer38_ct
.type EngineziObjectziPlayer_mkPlayer38_ct, @object
EngineziObjectziPlayer_mkPlayer38_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cM0P_str
	.quad	cM0S_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sM0A_info:
.LcM16:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sM0A_info, .-sM0A_info
.text
	.align 8
	.quad	0
	.quad	32
sM0C_info:
.LcM1a:
	movq 15(%rbx),%rbx
	movq $sM0A_info,0(%rbp)
	testq $7,%rbx
	jne sM0A_info
	jmp *(%rbx)
	.size sM0C_info, .-sM0C_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziObjectziPlayer_mkPlayer38_info
.type EngineziObjectziPlayer_mkPlayer38_info, @object
EngineziObjectziPlayer_mkPlayer38_info:
.LcM1g:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM1i
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer38_ct
	je .LcM1j
.LcM1k:
	incq EngineziObjectziPlayer_mkPlayer38_ct+40
	movq %r14,%rbx
	movq $sM0C_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sM0C_info
	jmp *(%rbx)
.LcM1i:
	movl $EngineziObjectziPlayer_mkPlayer38_closure,%ebx
	jmp *-8(%r13)
.LcM1j:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer38_ct+56
	movq $EngineziObjectziPlayer_mkPlayer38_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer38_ct
	jmp .LcM1k
	.size EngineziObjectziPlayer_mkPlayer38_info, .-EngineziObjectziPlayer_mkPlayer38_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer37_srt:
	.quad	base_ControlziExceptionziBase_irrefutPatError_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer37_closure
.type EngineziObjectziPlayer_mkPlayer37_closure, @object
EngineziObjectziPlayer_mkPlayer37_closure:
	.quad	EngineziObjectziPlayer_mkPlayer37_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cM1B_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	49
	.byte	55
	.byte	50
	.byte	58
	.byte	49
	.byte	55
	.byte	45
	.byte	55
	.byte	56
	.byte	124
	.byte	40
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
	.byte	40
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
	.byte	32
	.byte	40
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
	.byte	32
	.byte	95
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	112
	.byte	77
	.byte	105
	.byte	110
	.byte	121
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	95
	.byte	41
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	95
	.byte	41
	.byte	41
	.byte	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer37_srt-(EngineziObjectziPlayer_mkPlayer37_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziObjectziPlayer_mkPlayer37_info
.type EngineziObjectziPlayer_mkPlayer37_info, @object
EngineziObjectziPlayer_mkPlayer37_info:
.LcM1F:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM1H
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcM1J
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
	je .LcM1K
.LcM1L:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cM1B_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_irrefutPatError_info
.LcM1J:
	movq $16,192(%r13)
.LcM1H:
	jmp *-16(%r13)
.LcM1K:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer37_info, .-EngineziObjectziPlayer_mkPlayer37_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer36_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer36_closure
.type EngineziObjectziPlayer_mkPlayer36_closure, @object
EngineziObjectziPlayer_mkPlayer36_closure:
	.quad	EngineziObjectziPlayer_mkPlayer36_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cM21_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	49
	.byte	56
	.byte	52
	.byte	58
	.byte	50
	.byte	52
	.byte	45
	.byte	54
	.byte	51
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
	.long	EngineziObjectziPlayer_mkPlayer36_srt-(EngineziObjectziPlayer_mkPlayer36_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziObjectziPlayer_mkPlayer36_info
.type EngineziObjectziPlayer_mkPlayer36_info, @object
EngineziObjectziPlayer_mkPlayer36_info:
.LcM25:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM27
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcM29
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
	je .LcM2a
.LcM2b:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cM21_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcM29:
	movq $16,192(%r13)
.LcM27:
	jmp *-16(%r13)
.LcM2a:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer36_info, .-EngineziObjectziPlayer_mkPlayer36_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer2_closure
.type EngineziObjectziPlayer_mkPlayer2_closure, @object
EngineziObjectziPlayer_mkPlayer2_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer17_closure
.type EngineziObjectziPlayer_mkPlayer17_closure, @object
EngineziObjectziPlayer_mkPlayer17_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer19_closure
.type EngineziObjectziPlayer_mkPlayer19_closure, @object
EngineziObjectziPlayer_mkPlayer19_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	100
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer35_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer19_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer35_closure
.type EngineziObjectziPlayer_mkPlayer35_closure, @object
EngineziObjectziPlayer_mkPlayer35_closure:
	.quad	EngineziObjectziPlayer_mkPlayer35_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer35_srt-(EngineziObjectziPlayer_mkPlayer35_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziObjectziPlayer_mkPlayer35_info
.type EngineziObjectziPlayer_mkPlayer35_info, @object
EngineziObjectziPlayer_mkPlayer35_info:
.LcM2B:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM2D
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcM2F
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
	je .LcM2G
.LcM2H:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $EngineziObjectziPlayer_mkPlayer19_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcM2F:
	movq $16,192(%r13)
.LcM2D:
	jmp *-16(%r13)
.LcM2G:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer35_info, .-EngineziObjectziPlayer_mkPlayer35_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer34_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer34_closure
.type EngineziObjectziPlayer_mkPlayer34_closure, @object
EngineziObjectziPlayer_mkPlayer34_closure:
	.quad	EngineziObjectziPlayer_mkPlayer34_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cM2X_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	49
	.byte	56
	.byte	49
	.byte	58
	.byte	50
	.byte	52
	.byte	45
	.byte	54
	.byte	52
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
	.long	EngineziObjectziPlayer_mkPlayer34_srt-(EngineziObjectziPlayer_mkPlayer34_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziObjectziPlayer_mkPlayer34_info
.type EngineziObjectziPlayer_mkPlayer34_info, @object
EngineziObjectziPlayer_mkPlayer34_info:
.LcM31:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM33
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcM35
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
	je .LcM36
.LcM37:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cM2X_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcM35:
	movq $16,192(%r13)
.LcM33:
	jmp *-16(%r13)
.LcM36:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer34_info, .-EngineziObjectziPlayer_mkPlayer34_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwlgo_closure
.type EngineziObjectziPlayer_zdwlgo_closure, @object
EngineziObjectziPlayer_zdwlgo_closure:
	.quad	EngineziObjectziPlayer_zdwlgo_info
.section .rodata
	.align 8
.align 1
cM3P_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	108
	.byte	103
	.byte	111
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	73
	.byte	54
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cM3R_str:
	.byte	102
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwlgo_ct
.type EngineziObjectziPlayer_zdwlgo_ct, @object
EngineziObjectziPlayer_zdwlgo_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cM3P_str
	.quad	cM3R_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziPlayer_zdwlgo_slow
.type EngineziObjectziPlayer_zdwlgo_slow, @object
EngineziObjectziPlayer_zdwlgo_slow:
.LcM3U:
	movss 0(%rbp),%xmm1
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp EngineziObjectziPlayer_zdwlgo_info
	.size EngineziObjectziPlayer_zdwlgo_slow, .-EngineziObjectziPlayer_zdwlgo_slow
.text
	.align 8
	.quad	130
	.quad	32
sM3g_info:
.LcM3X:
	movss 16(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnM42
	jbe .LcM40
.LnM42:
	incq KNOWN_CALL_ctr
	movss 16(%rbp),%xmm1
	movq 8(%rbp),%r14
	addq $24,%rbp
	jmp EngineziObjectziPlayer_zdwlgo_info
.LcM40:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm1
	movq 8(%rbp),%r14
	addq $24,%rbp
	jmp EngineziObjectziPlayer_zdwlgo_info
	.size sM3g_info, .-sM3g_info
.text
	.align 8
	.quad	65
	.quad	32
sM3e_info:
.LcM47:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcM48
	movss 8(%rbp),%xmm1
	addq $16,%rbp
	jmp *0(%rbp)
.LcM48:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sM3g_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sM3g_info
	jmp *(%rbx)
	.size sM3e_info, .-sM3e_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwlgo_slow-(EngineziObjectziPlayer_zdwlgo_info)+0
	.long	0
	.quad	66
	.quad	0
	.quad	8589934592
	.quad	0
	.quad	15
.globl EngineziObjectziPlayer_zdwlgo_info
.type EngineziObjectziPlayer_zdwlgo_info, @object
EngineziObjectziPlayer_zdwlgo_info:
.LcM4i:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcM4k
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_zdwlgo_ct
	je .LcM4l
.LcM4m:
	incq EngineziObjectziPlayer_zdwlgo_ct+40
	movss %xmm1,-8(%rbp)
	movq %r14,%rbx
	movq $sM3e_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sM3e_info
	jmp *(%rbx)
.LcM4k:
	movl $EngineziObjectziPlayer_zdwlgo_closure,%ebx
	addq $-16,%rbp
	movss %xmm1,0(%rbp)
	movq %r14,8(%rbp)
	jmp *-8(%r13)
.LcM4l:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_zdwlgo_ct+56
	movq $EngineziObjectziPlayer_zdwlgo_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_zdwlgo_ct
	jmp .LcM4m
	.size EngineziObjectziPlayer_zdwlgo_info, .-EngineziObjectziPlayer_zdwlgo_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_zdwmoveWithStep_srt:
	.quad	base_DataziList_maximum2_closure
	.quad	EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_closure
	.quad	EngineziObjectziGameObject_zdwmoveObjectSlide_closure
	.quad	EngineziObjectziGameObject_calculateNewWholeAABB_closure
	.quad	EngineziObjectziPlayer_mkPlayer34_closure
	.quad	EngineziObjectziPlayer_mkPlayer35_closure
	.quad	EngineziObjectziPlayer_mkPlayer36_closure
	.quad	EngineziObjectziPlayer_mkPlayer37_closure
	.quad	EngineziObjectziPlayer_mkPlayer39_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwmoveWithStep_closure
.type EngineziObjectziPlayer_zdwmoveWithStep_closure, @object
EngineziObjectziPlayer_zdwmoveWithStep_closure:
	.quad	EngineziObjectziPlayer_zdwmoveWithStep_info
	.quad	0
.section .rodata
	.align 8
.align 1
cM75_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	87
	.byte	105
	.byte	116
	.byte	104
	.byte	83
	.byte	116
	.byte	101
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	73
	.byte	57
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cM77_str:
	.byte	83
	.byte	77
	.byte	102
	.byte	102
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwmoveWithStep_ct
.type EngineziObjectziPlayer_zdwmoveWithStep_ct, @object
EngineziObjectziPlayer_zdwmoveWithStep_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cM75_str
	.quad	cM77_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziPlayer_zdwmoveWithStep_slow
.type EngineziObjectziPlayer_zdwmoveWithStep_slow, @object
EngineziObjectziPlayer_zdwmoveWithStep_slow:
.LcM7a:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movss 32(%rbp),%xmm3
	addq $40,%rbp
	jmp EngineziObjectziPlayer_zdwmoveWithStep_info
	.size EngineziObjectziPlayer_zdwmoveWithStep_slow, .-EngineziObjectziPlayer_zdwmoveWithStep_slow
.text
	.align 8
	.quad	5
	.quad	32
sM4O_info:
.LcM7m:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcM7s
	addq $11,EngineziObjectziPlayer_zdwmoveWithStep_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 7(%rbx),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 23(%rbx),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
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
.LcM7s:
	movq $88,192(%r13)
.LcM7q:
	jmp *-16(%r13)
	.size sM4O_info, .-sM4O_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4F_info)+48
	.long	0
	.quad	0
	.quad	4294967328
sM4F_info:
.LcM7E:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcM7F
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sM4O_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sM4O_info
	jmp *(%rbx)
.LcM7F:
	movl $EngineziObjectziPlayer_mkPlayer36_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sM4F_info, .-sM4F_info
.text
	.align 8
	.quad	5
	.quad	32
sM4U_info:
.LcM87:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcM8d
	addq $11,EngineziObjectziPlayer_zdwmoveWithStep_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 7(%rbx),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 23(%rbx),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
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
.LcM8d:
	movq $88,192(%r13)
.LcM8b:
	jmp *-16(%r13)
	.size sM4U_info, .-sM4U_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4R_info)+32
	.long	0
	.quad	0
	.quad	4294967328
sM4R_info:
.LcM8p:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcM8q
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sM4U_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sM4U_info
	jmp *(%rbx)
.LcM8q:
	movl $EngineziObjectziPlayer_mkPlayer34_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sM4R_info, .-sM4R_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4S_info)+16
	.long	0
	.quad	709
	.quad	21474836512
sM4S_info:
.LcM8E:
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm2
	addss (%rax),%xmm2
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 24(%rbp),%rsi
	movss 32(%rbp),%xmm1
	movss 16(%rbp),%xmm3
	movq $sM4R_info,40(%rbp)
	addq $40,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSlide_info
	.size sM4S_info, .-sM4S_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sLwl_info)+16
	.long	0
	.quad	709
	.quad	124554051616
sLwl_info:
.LcM8J:
	ucomiss .LnM8S(%rip),%xmm1
	jp .LnM8T
	jb .LcM8L
.LnM8T:
	movq 24(%rbp),%rbx
	movq $sM4F_info,40(%rbp)
	addq $40,%rbp
	testq $7,%rbx
	jne sM4F_info
	jmp *(%rbx)
.LcM8L:
	movl $EngineziObjectziPlayer_mkPlayer35_closure,%ebx
	movq $sM4S_info,0(%rbp)
	testq $7,%rbx
	jne sM4S_info
	jmp *(%rbx)
	.size sLwl_info, .-sLwl_info
.section .rodata
	.align 8
.align 4
.LnM8S:
	.byte	0
	.byte	0
	.byte	0
	.byte	64
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4H_info)+16
	.long	0
	.quad	709
	.quad	124554051616
sM4H_info:
.LcM8W:
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm1
	subss (%rax),%xmm1
	movss %xmm1,8(%rbp)
	xorps %xmm0,%xmm0
	ucomiss %xmm0,%xmm1
	jae sLwl_info
	movss .LnM94(%rip),%xmm0
	xorps %xmm0,%xmm1
	jmp sLwl_info
	.size sM4H_info, .-sM4H_info
.section .rodata
	.align 8
.align 4
.LnM94:
	.long	-2147483648
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4J_info)+16
	.long	0
	.quad	709
	.quad	124554051616
sM4J_info:
.LcM98:
	movq 15(%rbx),%rbx
	movq $sM4H_info,0(%rbp)
	testq $7,%rbx
	jne sM4H_info
	jmp *(%rbx)
	.size sM4J_info, .-sM4J_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4K_info)+16
	.long	0
	.quad	709
	.quad	124554051616
sM4K_info:
.LcM9e:
	movq 7(%rbx),%rbx
	movq $sM4J_info,0(%rbp)
	testq $7,%rbx
	jne sM4J_info
	jmp *(%rbx)
	.size sM4K_info, .-sM4K_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4C_info)+16
	.long	0
	.quad	709
	.quad	261993005088
sM4C_info:
.LcM9m:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcM9n
	movl $EngineziObjectziPlayer_mkPlayer37_closure,%ebx
	addq $48,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcM9n:
	movq 6(%rbx),%rbx
	movq $sM4K_info,0(%rbp)
	testq $7,%rbx
	jne sM4K_info
	jmp *(%rbx)
	.size sM4C_info, .-sM4C_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sLvw_info)+16
	.long	0
	.quad	324
	.quad	270582939680
sLvw_info:
.LcM9x:
	incq KNOWN_CALL_ctr
	movss %xmm1,0(%rbp)
	movq 16(%rbp),%r14
	movq $sM4C_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziGameObject_calculateNewWholeAABB_info
	.size sLvw_info, .-sLvw_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4D_info)+16
	.long	0
	.quad	645
	.quad	270582939680
sM4D_info:
.LcM9A:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm1
	movq 8(%rbp),%r14
	movq $sLvw_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziObjectziPlayer_zdwlgo_info
	.size sM4D_info, .-sM4D_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4B_info)+0
	.long	0
	.quad	324
	.quad	1086626725920
sM4B_info:
.LcM9F:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcM9G
	movl $base_DataziList_maximum2_closure,%ebx
	addq $40,%rbp
	jmp stg_ap_0_fast
.LcM9G:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sM4D_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sM4D_info
	jmp *(%rbx)
	.size sM4B_info, .-sM4B_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4t_info)+0
	.long	0
	.quad	324
	.quad	1086626725920
sM4t_info:
.LcM9S:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcM9T
	movq 16(%rbp),%rbx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcM9T:
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer38_closure+1,%r14d
	movq 6(%rbx),%rsi
	movq $sM4B_info,0(%rbp)
	jmp base_GHCziBase_map_info
	.size sM4t_info, .-sM4t_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sM4u_info)+0
	.long	0
	.quad	452
	.quad	1086626725920
sM4u_info:
.LcMa0:
	movq %rbx,16(%rbp)
	movq %r14,%rbx
	movq $sM4t_info,0(%rbp)
	testq $7,%rbx
	jne sM4t_info
	jmp *(%rbx)
	.size sM4u_info, .-sM4u_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(sLuU_info)+0
	.long	0
	.quad	452
	.quad	2194728288288
sLuU_info:
.LcMa7:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMa8
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,%rsi
	movss 24(%rbp),%xmm1
	movss 16(%rbp),%xmm2
	movss 8(%rbp),%xmm3
	movq $sM4u_info,0(%rbp)
	jmp EngineziObjectziGameObject_zdwmoveObjectSlideAllIntersecters_info
.LcMa8:
	movl $EngineziObjectziPlayer_mkPlayer39_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sLuU_info, .-sLuU_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveWithStep_slow-(EngineziObjectziPlayer_zdwmoveWithStep_info)+0
	.long	0
	.quad	1797
	.long	EngineziObjectziPlayer_zdwmoveWithStep_srt-(EngineziObjectziPlayer_zdwmoveWithStep_info)+0
	.long	0
	.quad	21474836480
	.quad	0
	.quad	2194728288271
.globl EngineziObjectziPlayer_zdwmoveWithStep_info
.type EngineziObjectziPlayer_zdwmoveWithStep_info, @object
EngineziObjectziPlayer_zdwmoveWithStep_info:
.LcMae:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMag
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_zdwmoveWithStep_ct
	je .LcMah
.LcMai:
	incq EngineziObjectziPlayer_zdwmoveWithStep_ct+40
	movss %xmm3,-32(%rbp)
	movss %xmm2,-24(%rbp)
	movss %xmm1,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sLuU_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sLuU_info
	jmp *(%rbx)
.LcMag:
	movl $EngineziObjectziPlayer_zdwmoveWithStep_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movss %xmm1,16(%rbp)
	movss %xmm2,24(%rbp)
	movss %xmm3,32(%rbp)
	jmp *-8(%r13)
.LcMah:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_zdwmoveWithStep_ct+56
	movq $EngineziObjectziPlayer_zdwmoveWithStep_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_zdwmoveWithStep_ct
	jmp .LcMai
	.size EngineziObjectziPlayer_zdwmoveWithStep_info, .-EngineziObjectziPlayer_zdwmoveWithStep_info
.data
	.align 8
.align 1
rLu2_closure:
	.quad	rLu2_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMay_str:
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	114
	.byte	101
	.byte	115
	.byte	111
	.byte	108
	.byte	118
	.byte	101
	.byte	86
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
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
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rLu2_info:
.LcMaC:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMaE
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMaG
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
	je .LcMaH
.LcMaI:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMay_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcMaG:
	movq $16,192(%r13)
.LcMaE:
	jmp *-16(%r13)
.LcMaH:
	jmp *(%rbx)
	.size rLu2_info, .-rLu2_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer40_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rLu2_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer40_closure
.type EngineziObjectziPlayer_mkPlayer40_closure, @object
EngineziObjectziPlayer_mkPlayer40_closure:
	.quad	EngineziObjectziPlayer_mkPlayer40_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer40_srt-(EngineziObjectziPlayer_mkPlayer40_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziObjectziPlayer_mkPlayer40_info
.type EngineziObjectziPlayer_mkPlayer40_info, @object
EngineziObjectziPlayer_mkPlayer40_info:
.LcMaZ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMb1
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMb3
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
	je .LcMb4
.LcMb5:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rLu2_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcMb3:
	movq $16,192(%r13)
.LcMb1:
	jmp *-16(%r13)
.LcMb4:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer40_info, .-EngineziObjectziPlayer_mkPlayer40_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer33_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer33_closure
.type EngineziObjectziPlayer_mkPlayer33_closure, @object
EngineziObjectziPlayer_mkPlayer33_closure:
	.quad	EngineziObjectziPlayer_mkPlayer33_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMbl_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	40
	.byte	50
	.byte	57
	.byte	56
	.byte	44
	.byte	56
	.byte	41
	.byte	45
	.byte	40
	.byte	50
	.byte	57
	.byte	57
	.byte	44
	.byte	50
	.byte	56
	.byte	41
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
	.long	EngineziObjectziPlayer_mkPlayer33_srt-(EngineziObjectziPlayer_mkPlayer33_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziObjectziPlayer_mkPlayer33_info
.type EngineziObjectziPlayer_mkPlayer33_info, @object
EngineziObjectziPlayer_mkPlayer33_info:
.LcMbp:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMbr
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMbt
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
	je .LcMbu
.LcMbv:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMbl_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcMbt:
	movq $16,192(%r13)
.LcMbr:
	jmp *-16(%r13)
.LcMbu:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer33_info, .-EngineziObjectziPlayer_mkPlayer33_info
.data
	.align 8
.align 1
rLu3_closure:
	.quad	rLu3_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMbK_str:
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	115
	.byte	101
	.byte	116
	.byte	86
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	76
	.byte	111
	.byte	111
	.byte	107
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rLu3_info:
.LcMbO:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMbQ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMbS
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
	je .LcMbT
.LcMbU:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMbK_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcMbS:
	movq $16,192(%r13)
.LcMbQ:
	jmp *-16(%r13)
.LcMbT:
	jmp *(%rbx)
	.size rLu3_info, .-rLu3_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer25_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rLu3_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer25_closure
.type EngineziObjectziPlayer_mkPlayer25_closure, @object
EngineziObjectziPlayer_mkPlayer25_closure:
	.quad	EngineziObjectziPlayer_mkPlayer25_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer25_srt-(EngineziObjectziPlayer_mkPlayer25_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziObjectziPlayer_mkPlayer25_info
.type EngineziObjectziPlayer_mkPlayer25_info, @object
EngineziObjectziPlayer_mkPlayer25_info:
.LcMcb:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMcd
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMcf
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
	je .LcMcg
.LcMch:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rLu3_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcMcf:
	movq $16,192(%r13)
.LcMcd:
	jmp *-16(%r13)
.LcMcg:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer25_info, .-EngineziObjectziPlayer_mkPlayer25_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_applyTransformations1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglRotatef_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglTranslatef_closure
	.quad	EngineziCoreziWorld_playerRotation1_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_glPopAttrib1_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPushAttrib_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_applyTransformations1_closure
.type EngineziObjectziPlayer_applyTransformations1_closure, @object
EngineziObjectziPlayer_applyTransformations1_closure:
	.quad	EngineziObjectziPlayer_applyTransformations1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMdN_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	84
	.byte	114
	.byte	97
	.byte	110
	.byte	115
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	73
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMdQ_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_applyTransformations1_ct
.type EngineziObjectziPlayer_applyTransformations1_ct, @object
EngineziObjectziPlayer_applyTransformations1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cMdN_str
	.quad	cMdQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcv_info)+24
	.long	0
	.quad	4038
	.quad	4294967328
sMcv_info:
.LcMeU:
	movss 48(%rbp),%xmm2
	movss .LnMeV(%rip),%xmm0
	xorps %xmm0,%xmm2
	movss 8(%rbp),%xmm1
	movss .LnMeX(%rip),%xmm0
	xorps %xmm0,%xmm1
	movss 16(%rbp),%xmm3
	movss .LnMeZ(%rip),%xmm0
	xorps %xmm0,%xmm3
	movss %xmm3,%xmm0
	subq $8,%rsp
	movl $3,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	addq $56,%rbp
	jmp OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_glPopAttrib1_info
	.size sMcv_info, .-sMcv_info
.section .rodata
	.align 8
.align 4
.LnMeV:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.LnMeX:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.LnMeZ:
	.long	-2147483648
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcx_info)+8
	.long	0
	.quad	4038
	.quad	21474836512
sMcx_info:
.LcMf4:
	movss 40(%rbp),%xmm0
	xorps %xmm1,%xmm1
	xorps %xmm2,%xmm2
	movss .LnMf9(%rip),%xmm3
	subq $8,%rsp
	movl $4,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglTranslatef_closure,%ebx
	movq $sMcv_info,0(%rbp)
	testq $7,%rbx
	jne sMcv_info
	jmp *(%rbx)
	.size sMcx_info, .-sMcx_info
.section .rodata
	.align 8
.align 4
.LnMf9:
	.byte	0
	.byte	0
	.byte	128
	.byte	191
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcz_info)+0
	.long	0
	.quad	4038
	.quad	47244640288
sMcz_info:
.LcMfd:
	movss 24(%rbp),%xmm0
	xorps %xmm1,%xmm1
	movss .LnMfi(%rip),%xmm2
	xorps %xmm3,%xmm3
	subq $8,%rsp
	movl $4,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglRotatef_closure,%ebx
	movq $sMcx_info,0(%rbp)
	testq $7,%rbx
	jne sMcx_info
	jmp *(%rbx)
	.size sMcz_info, .-sMcz_info
.section .rodata
	.align 8
.align 4
.LnMfi:
	.byte	0
	.byte	0
	.byte	128
	.byte	191
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcB_info)+0
	.long	0
	.quad	4038
	.quad	47244640288
sMcB_info:
.LcMfm:
	movss 32(%rbp),%xmm0
	movss .LnMfr(%rip),%xmm1
	xorps %xmm2,%xmm2
	xorps %xmm3,%xmm3
	subq $8,%rsp
	movl $4,%eax
	movq 48(%rbp),%rcx
	call *%rcx
	addq $8,%rsp
	movss 7(%rbx),%xmm0
	movss %xmm0,48(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglRotatef_closure,%ebx
	movq $sMcz_info,0(%rbp)
	testq $7,%rbx
	jne sMcz_info
	jmp *(%rbx)
	.size sMcB_info, .-sMcB_info
.section .rodata
	.align 8
.align 4
.LnMfr:
	.byte	0
	.byte	0
	.byte	128
	.byte	191
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcC_info)+0
	.long	0
	.quad	3974
	.quad	47244640288
sMcC_info:
.LcMfw:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sMcB_info,0(%rbp)
	testq $7,%rbx
	jne sMcB_info
	jmp *(%rbx)
	.size sMcC_info, .-sMcC_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcD_info)+0
	.long	0
	.quad	3846
	.quad	47244640288
sMcD_info:
.LcMfF:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sMcC_info,0(%rbp)
	testq $7,%rbx
	jne sMcC_info
	jmp *(%rbx)
	.size sMcD_info, .-sMcD_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcE_info)+0
	.long	0
	.quad	964
	.quad	47244640288
sMcE_info:
.LcMfO:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMcD_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMcD_info
	jmp *(%rbx)
	.size sMcE_info, .-sMcE_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcF_info)+0
	.long	0
	.quad	708
	.quad	47244640288
sMcF_info:
.LcMfW:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sMcE_info,0(%rbp)
	testq $7,%rbx
	jne sMcE_info
	jmp *(%rbx)
	.size sMcF_info, .-sMcF_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcG_info)+0
	.long	0
	.quad	644
	.quad	47244640288
sMcG_info:
.LcMg5:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sMcF_info,0(%rbp)
	testq $7,%rbx
	jne sMcF_info
	jmp *(%rbx)
	.size sMcG_info, .-sMcG_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcH_info)+0
	.long	0
	.quad	516
	.quad	47244640288
sMcH_info:
.LcMge:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sMcG_info,0(%rbp)
	testq $7,%rbx
	jne sMcG_info
	jmp *(%rbx)
	.size sMcH_info, .-sMcH_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcI_info)+0
	.long	0
	.quad	130
	.quad	47244640288
sMcI_info:
.LcMgn:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMcH_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMcH_info
	jmp *(%rbx)
	.size sMcI_info, .-sMcI_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcn_info)+0
	.long	0
	.quad	65
	.quad	64424509472
sMcn_info:
.LcMgw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMgx
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sMcI_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMcI_info
	jmp *(%rbx)
.LcMgx:
	movl $EngineziCoreziWorld_playerRotation1_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMcn_info, .-sMcn_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMco_info)+0
	.long	0
	.quad	1
	.quad	64424509472
sMco_info:
.LcMgH:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sMcn_info,0(%rbp)
	testq $7,%rbx
	jne sMcn_info
	jmp *(%rbx)
	.size sMco_info, .-sMco_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(sMcq_info)+0
	.long	0
	.quad	1
	.quad	64424509472
sMcq_info:
.LcMgQ:
	movl $4096,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglRotatef_closure,%ebx
	movq $sMco_info,0(%rbp)
	testq $7,%rbx
	jne sMco_info
	jmp *(%rbx)
	.size sMcq_info, .-sMcq_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations1_srt-(EngineziObjectziPlayer_applyTransformations1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	133143986191
.globl EngineziObjectziPlayer_applyTransformations1_info
.type EngineziObjectziPlayer_applyTransformations1_info, @object
EngineziObjectziPlayer_applyTransformations1_info:
.LcMgX:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMgZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_applyTransformations1_ct
	je .LcMh0
.LcMh1:
	incq EngineziObjectziPlayer_applyTransformations1_ct+40
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPushAttrib_closure,%ebx
	movq $sMcq_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMcq_info
	jmp *(%rbx)
.LcMgZ:
	movl $EngineziObjectziPlayer_applyTransformations1_closure,%ebx
	jmp *-8(%r13)
.LcMh0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_applyTransformations1_ct+56
	movq $EngineziObjectziPlayer_applyTransformations1_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_applyTransformations1_ct
	jmp .LcMh1
	.size EngineziObjectziPlayer_applyTransformations1_info, .-EngineziObjectziPlayer_applyTransformations1_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_applyTransformations_srt:
	.quad	EngineziObjectziPlayer_applyTransformations1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_applyTransformations_closure
.type EngineziObjectziPlayer_applyTransformations_closure, @object
EngineziObjectziPlayer_applyTransformations_closure:
	.quad	EngineziObjectziPlayer_applyTransformations_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMhe_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	84
	.byte	114
	.byte	97
	.byte	110
	.byte	115
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	73
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMhh_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_applyTransformations_ct
.type EngineziObjectziPlayer_applyTransformations_ct, @object
EngineziObjectziPlayer_applyTransformations_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cMhe_str
	.quad	cMhh_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_applyTransformations_srt-(EngineziObjectziPlayer_applyTransformations_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_applyTransformations_info
.type EngineziObjectziPlayer_applyTransformations_info, @object
EngineziObjectziPlayer_applyTransformations_info:
.LcMhm:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_applyTransformations_ct
	je .LcMhp
.LcMhr:
	incq EngineziObjectziPlayer_applyTransformations_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziObjectziPlayer_applyTransformations1_info
.LcMhp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_applyTransformations_ct+56
	movq $EngineziObjectziPlayer_applyTransformations_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_applyTransformations_ct
	jmp .LcMhr
	.size EngineziObjectziPlayer_applyTransformations_info, .-EngineziObjectziPlayer_applyTransformations_info
.data
	.align 8
.align 1
rLu4_closure:
	.quad	rLu4_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMhD_str:
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	76
	.byte	111
	.byte	111
	.byte	107
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
rLu4_info:
.LcMhH:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMhJ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMhL
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
	je .LcMhM
.LcMhN:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMhD_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcMhL:
	movq $16,192(%r13)
.LcMhJ:
	jmp *-16(%r13)
.LcMhM:
	jmp *(%rbx)
	.size rLu4_info, .-rLu4_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_moveFromLook1_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rLu4_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_moveFromLook1_closure
.type EngineziObjectziPlayer_moveFromLook1_closure, @object
EngineziObjectziPlayer_moveFromLook1_closure:
	.quad	EngineziObjectziPlayer_moveFromLook1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLook1_srt-(EngineziObjectziPlayer_moveFromLook1_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziObjectziPlayer_moveFromLook1_info
.type EngineziObjectziPlayer_moveFromLook1_info, @object
EngineziObjectziPlayer_moveFromLook1_info:
.LcMi4:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMi6
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMi8
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
	je .LcMi9
.LcMia:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rLu4_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcMi8:
	movq $16,192(%r13)
.LcMi6:
	jmp *-16(%r13)
.LcMi9:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_moveFromLook1_info, .-EngineziObjectziPlayer_moveFromLook1_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_zdwmoveFromLook_srt:
	.quad	EngineziObjectziPlayer_moveFromLook1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwmoveFromLook_closure
.type EngineziObjectziPlayer_zdwmoveFromLook_closure, @object
EngineziObjectziPlayer_zdwmoveFromLook_closure:
	.quad	EngineziObjectziPlayer_zdwmoveFromLook_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMjO_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	76
	.byte	111
	.byte	111
	.byte	107
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMjR_str:
	.byte	77
	.byte	102
	.byte	102
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwmoveFromLook_ct
.type EngineziObjectziPlayer_zdwmoveFromLook_ct, @object
EngineziObjectziPlayer_zdwmoveFromLook_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cMjO_str
	.quad	cMjR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziPlayer_zdwmoveFromLook_slow
.type EngineziObjectziPlayer_zdwmoveFromLook_slow, @object
EngineziObjectziPlayer_zdwmoveFromLook_slow:
.LcMjV:
	movq 0(%rbp),%r14
	movss 8(%rbp),%xmm1
	movss 16(%rbp),%xmm2
	movss 24(%rbp),%xmm3
	addq $32,%rbp
	jmp EngineziObjectziPlayer_zdwmoveFromLook_info
	.size EngineziObjectziPlayer_zdwmoveFromLook_slow, .-EngineziObjectziPlayer_zdwmoveFromLook_slow
.text
	.align 8
	.quad	123083
	.quad	32
sMii_info:
.LcMkt:
	addq $136,%r12
	cmpq 144(%r13),%r12
	ja .LcMkz
	addq $17,EngineziObjectziPlayer_zdwmoveFromLook_ct+48
	incq ALLOC_HEAP_ctr
	addq $17,ALLOC_HEAP_tot
	movss 64(%rbp),%xmm0
	mulss .LnMkA(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss 80(%rbp),%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,72(%rsp)
	movss 64(%rbp),%xmm0
	subss .LnMkE(%rip),%xmm0
	mulss .LnMkD(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss %xmm0,%xmm1
	movss 88(%rbp),%xmm0
	mulss %xmm1,%xmm0
	movsd 72(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 7(%rbx),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-128(%r12)
	movss %xmm1,-120(%r12)
	movss 8(%rbp),%xmm0
	addss 72(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-112(%r12)
	movss %xmm0,-104(%r12)
	movss 64(%rbp),%xmm0
	mulss .LnMkM(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss 80(%rbp),%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,64(%rsp)
	movss 64(%rbp),%xmm0
	subss .LnMkQ(%rip),%xmm0
	mulss .LnMkP(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss %xmm0,%xmm1
	movss 88(%rbp),%xmm0
	mulss %xmm1,%xmm0
	movsd 64(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 16(%rbp),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-96(%r12)
	movss %xmm1,-88(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	leaq -95(%r12),%rax
	movq %rax,-72(%r12)
	leaq -111(%r12),%rax
	movq %rax,-64(%r12)
	leaq -127(%r12),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	leaq -79(%r12),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 56(%rbp),%rax
	movq %rax,-24(%r12)
	movq 48(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq 32(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $96,%rbp
	jmp *0(%rbp)
.LcMkz:
	movq $136,192(%r13)
.LcMkx:
	jmp *-16(%r13)
	.size sMii_info, .-sMii_info
.section .rodata
	.align 8
.align 4
.LnMkA:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMkD:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMkE:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.section .rodata
	.align 8
.align 4
.LnMkM:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMkP:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMkQ:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.quad	123019
	.quad	32
sMij_info:
.LcMlf:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sMii_info,0(%rbp)
	testq $7,%rbx
	jne sMii_info
	jmp *(%rbx)
	.size sMij_info, .-sMij_info
.text
	.align 8
	.quad	122891
	.quad	32
sMik_info:
.LcMlo:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sMij_info,0(%rbp)
	testq $7,%rbx
	jne sMij_info
	jmp *(%rbx)
	.size sMik_info, .-sMik_info
.text
	.align 8
	.quad	30729
	.quad	32
sMil_info:
.LcMlx:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMik_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMik_info
	jmp *(%rbx)
	.size sMil_info, .-sMil_info
.text
	.align 8
	.quad	28681
	.quad	32
sMim_info:
.LcMlF:
	movq 48(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,48(%rbp)
	movq %rax,%rbx
	movq $sMil_info,0(%rbp)
	testq $7,%rbx
	jne sMil_info
	jmp *(%rbx)
	.size sMim_info, .-sMim_info
.text
	.align 8
	.quad	14344
	.quad	32
sLzd_info:
.LcMlO:
	movq %rbx,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sMim_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMim_info
	jmp *(%rbx)
	.size sLzd_info, .-sLzd_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveFromLook_srt-(sMig_info)+0
	.long	0
	.quad	451
	.quad	4294967328
sMig_info:
.LcMlV:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMlW
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sLzd_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sLzd_info
	jmp *(%rbx)
.LcMlW:
	movl $EngineziObjectziPlayer_moveFromLook1_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMig_info, .-sMig_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveFromLook_slow-(EngineziObjectziPlayer_zdwmoveFromLook_info)+0
	.long	0
	.quad	900
	.long	EngineziObjectziPlayer_zdwmoveFromLook_srt-(EngineziObjectziPlayer_zdwmoveFromLook_info)+0
	.long	0
	.quad	17179869184
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_zdwmoveFromLook_info
.type EngineziObjectziPlayer_zdwmoveFromLook_info, @object
EngineziObjectziPlayer_zdwmoveFromLook_info:
.LcMma:
	leaq -96(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMmc
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_zdwmoveFromLook_ct
	je .LcMmd
.LcMme:
	incq EngineziObjectziPlayer_zdwmoveFromLook_ct+40
	movss %xmm2,-24(%rbp)
	movss %xmm3,-16(%rbp)
	movss %xmm1,-8(%rbp)
	movq %r14,%rbx
	movq $sMig_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sMig_info
	jmp *(%rbx)
.LcMmc:
	movl $EngineziObjectziPlayer_zdwmoveFromLook_closure,%ebx
	addq $-32,%rbp
	movq %r14,0(%rbp)
	movss %xmm1,8(%rbp)
	movss %xmm2,16(%rbp)
	movss %xmm3,24(%rbp)
	jmp *-8(%r13)
.LcMmd:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_zdwmoveFromLook_ct+56
	movq $EngineziObjectziPlayer_zdwmoveFromLook_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_zdwmoveFromLook_ct
	jmp .LcMme
	.size EngineziObjectziPlayer_zdwmoveFromLook_info, .-EngineziObjectziPlayer_zdwmoveFromLook_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_moveFromLook_srt:
	.quad	EngineziObjectziPlayer_moveFromLook1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_moveFromLook_closure
.type EngineziObjectziPlayer_moveFromLook_closure, @object
EngineziObjectziPlayer_moveFromLook_closure:
	.quad	EngineziObjectziPlayer_moveFromLook_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMmH_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	76
	.byte	111
	.byte	111
	.byte	107
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	73
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMmK_str:
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_moveFromLook_ct
.type EngineziObjectziPlayer_moveFromLook_ct, @object
EngineziObjectziPlayer_moveFromLook_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cMmH_str
	.quad	cMmK_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLook_srt-(sMml_info)+0
	.long	0
	.quad	195
	.quad	4294967328
sMml_info:
.LcMn6:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $32,%rbp
	jmp EngineziObjectziPlayer_zdwmoveFromLook_info
	.size sMml_info, .-sMml_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLook_srt-(sMmm_info)+0
	.long	0
	.quad	131
	.quad	4294967328
sMmm_info:
.LcMn9:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sMml_info,0(%rbp)
	testq $7,%rbx
	jne sMml_info
	jmp *(%rbx)
	.size sMmm_info, .-sMmm_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLook_srt-(sMmn_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sMmn_info:
.LcMni:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sMmm_info,0(%rbp)
	testq $7,%rbx
	jne sMmm_info
	jmp *(%rbx)
	.size sMmn_info, .-sMmn_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLook_srt-(sMmo_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sMmo_info:
.LcMnr:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMmn_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMmn_info
	jmp *(%rbx)
	.size sMmo_info, .-sMmo_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLook_srt-(EngineziObjectziPlayer_moveFromLook_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_moveFromLook_info
.type EngineziObjectziPlayer_moveFromLook_info, @object
EngineziObjectziPlayer_moveFromLook_info:
.LcMnz:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMnB
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_moveFromLook_ct
	je .LcMnC
.LcMnD:
	incq EngineziObjectziPlayer_moveFromLook_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sMmo_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMmo_info
	jmp *(%rbx)
.LcMnB:
	movl $EngineziObjectziPlayer_moveFromLook_closure,%ebx
	jmp *-8(%r13)
.LcMnC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_moveFromLook_ct+56
	movq $EngineziObjectziPlayer_moveFromLook_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_moveFromLook_ct
	jmp .LcMnD
	.size EngineziObjectziPlayer_moveFromLook_info, .-EngineziObjectziPlayer_moveFromLook_info
.data
	.align 8
.align 1
rLu5_closure:
	.quad	rLu5_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMnT_str:
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	76
	.byte	111
	.byte	111
	.byte	107
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
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
rLu5_info:
.LcMnX:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMnZ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMo1
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
	je .LcMo2
.LcMo3:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMnT_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcMo1:
	movq $16,192(%r13)
.LcMnZ:
	jmp *-16(%r13)
.LcMo2:
	jmp *(%rbx)
	.size rLu5_info, .-rLu5_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_moveFromLookSlide1_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rLu5_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_moveFromLookSlide1_closure
.type EngineziObjectziPlayer_moveFromLookSlide1_closure, @object
EngineziObjectziPlayer_moveFromLookSlide1_closure:
	.quad	EngineziObjectziPlayer_moveFromLookSlide1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLookSlide1_srt-(EngineziObjectziPlayer_moveFromLookSlide1_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziObjectziPlayer_moveFromLookSlide1_info
.type EngineziObjectziPlayer_moveFromLookSlide1_info, @object
EngineziObjectziPlayer_moveFromLookSlide1_info:
.LcMok:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMom
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMoo
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
	je .LcMop
.LcMoq:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rLu5_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcMoo:
	movq $16,192(%r13)
.LcMom:
	jmp *-16(%r13)
.LcMop:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_moveFromLookSlide1_info, .-EngineziObjectziPlayer_moveFromLookSlide1_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_zdwmoveFromLookSlide_srt:
	.quad	EngineziObjectziPlayer_zdwmoveWithStep_closure
	.quad	EngineziObjectziPlayer_moveFromLookSlide1_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwmoveFromLookSlide_closure
.type EngineziObjectziPlayer_zdwmoveFromLookSlide_closure, @object
EngineziObjectziPlayer_zdwmoveFromLookSlide_closure:
	.quad	EngineziObjectziPlayer_zdwmoveFromLookSlide_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMpN_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	76
	.byte	111
	.byte	111
	.byte	107
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMpQ_str:
	.byte	83
	.byte	77
	.byte	102
	.byte	102
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_zdwmoveFromLookSlide_ct
.type EngineziObjectziPlayer_zdwmoveFromLookSlide_ct, @object
EngineziObjectziPlayer_zdwmoveFromLookSlide_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cMpN_str
	.quad	cMpQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziPlayer_zdwmoveFromLookSlide_slow
.type EngineziObjectziPlayer_zdwmoveFromLookSlide_slow, @object
EngineziObjectziPlayer_zdwmoveFromLookSlide_slow:
.LcMpU:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movss 32(%rbp),%xmm3
	addq $40,%rbp
	jmp EngineziObjectziPlayer_zdwmoveFromLookSlide_info
	.size EngineziObjectziPlayer_zdwmoveFromLookSlide_slow, .-EngineziObjectziPlayer_zdwmoveFromLookSlide_slow
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveFromLookSlide_srt-(sMoC_info)+0
	.long	0
	.quad	901
	.quad	4294967328
sMoC_info:
.LcMqc:
	movss 7(%rbx),%xmm0
	mulss .LnMqd(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss %xmm0,%xmm1
	movss 24(%rbp),%xmm0
	mulss %xmm1,%xmm0
	movsd %xmm0,72(%rsp)
	movss 7(%rbx),%xmm0
	subss .LnMqh(%rip),%xmm0
	mulss .LnMqg(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss 32(%rbp),%xmm3
	mulss %xmm0,%xmm3
	movsd 72(%rsp),%xmm0
	addss %xmm0,%xmm3
	movsd %xmm3,80(%rsp)
	movss 7(%rbx),%xmm0
	mulss .LnMqm(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss %xmm0,%xmm1
	movss 24(%rbp),%xmm0
	mulss %xmm1,%xmm0
	movsd %xmm0,64(%rsp)
	movss 7(%rbx),%xmm0
	subss .LnMqq(%rip),%xmm0
	mulss .LnMqp(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss 32(%rbp),%xmm1
	mulss %xmm0,%xmm1
	movsd 64(%rsp),%xmm0
	addss %xmm0,%xmm1
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 8(%rbp),%rsi
	movss 16(%rbp),%xmm2
	movsd 80(%rsp),%xmm3
	addq $48,%rbp
	jmp EngineziObjectziPlayer_zdwmoveWithStep_info
	.size sMoC_info, .-sMoC_info
.section .rodata
	.align 8
.align 4
.LnMqd:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMqg:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMqh:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.section .rodata
	.align 8
.align 4
.LnMqm:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMqp:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnMqq:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveFromLookSlide_srt-(sMoE_info)+0
	.long	0
	.quad	901
	.quad	4294967328
sMoE_info:
.LcMqI:
	movq 15(%rbx),%rbx
	movq $sMoC_info,0(%rbp)
	testq $7,%rbx
	jne sMoC_info
	jmp *(%rbx)
	.size sMoE_info, .-sMoE_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveFromLookSlide_srt-(sLzY_info)+0
	.long	0
	.quad	452
	.quad	12884901920
sLzY_info:
.LcMqP:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMqQ
	movq %rbx,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sMoE_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMoE_info
	jmp *(%rbx)
.LcMqQ:
	movl $EngineziObjectziPlayer_moveFromLookSlide1_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sLzY_info, .-sLzY_info
.text
	.align 8
	.long	EngineziObjectziPlayer_zdwmoveFromLookSlide_slow-(EngineziObjectziPlayer_zdwmoveFromLookSlide_info)+0
	.long	0
	.quad	1797
	.long	EngineziObjectziPlayer_zdwmoveFromLookSlide_srt-(EngineziObjectziPlayer_zdwmoveFromLookSlide_info)+0
	.long	0
	.quad	21474836480
	.quad	0
	.quad	12884901903
.globl EngineziObjectziPlayer_zdwmoveFromLookSlide_info
.type EngineziObjectziPlayer_zdwmoveFromLookSlide_info, @object
EngineziObjectziPlayer_zdwmoveFromLookSlide_info:
.LcMqZ:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMr1
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_zdwmoveFromLookSlide_ct
	je .LcMr2
.LcMr3:
	incq EngineziObjectziPlayer_zdwmoveFromLookSlide_ct+40
	movss %xmm2,-32(%rbp)
	movss %xmm3,-24(%rbp)
	movss %xmm1,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sLzY_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sLzY_info
	jmp *(%rbx)
.LcMr1:
	movl $EngineziObjectziPlayer_zdwmoveFromLookSlide_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movss %xmm1,16(%rbp)
	movss %xmm2,24(%rbp)
	movss %xmm3,32(%rbp)
	jmp *-8(%r13)
.LcMr2:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_zdwmoveFromLookSlide_ct+56
	movq $EngineziObjectziPlayer_zdwmoveFromLookSlide_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_zdwmoveFromLookSlide_ct
	jmp .LcMr3
	.size EngineziObjectziPlayer_zdwmoveFromLookSlide_info, .-EngineziObjectziPlayer_zdwmoveFromLookSlide_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_moveFromLookSlide_srt:
	.quad	EngineziObjectziPlayer_zdwmoveFromLookSlide_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_moveFromLookSlide_closure
.type EngineziObjectziPlayer_moveFromLookSlide_closure, @object
EngineziObjectziPlayer_moveFromLookSlide_closure:
	.quad	EngineziObjectziPlayer_moveFromLookSlide_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMrw_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	70
	.byte	114
	.byte	111
	.byte	109
	.byte	76
	.byte	111
	.byte	111
	.byte	107
	.byte	83
	.byte	108
	.byte	105
	.byte	100
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	73
	.byte	99
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMrz_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_moveFromLookSlide_ct
.type EngineziObjectziPlayer_moveFromLookSlide_ct, @object
EngineziObjectziPlayer_moveFromLookSlide_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cMrw_str
	.quad	cMrz_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLookSlide_srt-(sMra_info)+0
	.long	0
	.quad	196
	.quad	4294967328
sMra_info:
.LcMrV:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $40,%rbp
	jmp EngineziObjectziPlayer_zdwmoveFromLookSlide_info
	.size sMra_info, .-sMra_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLookSlide_srt-(sMrb_info)+0
	.long	0
	.quad	132
	.quad	4294967328
sMrb_info:
.LcMrY:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sMra_info,0(%rbp)
	testq $7,%rbx
	jne sMra_info
	jmp *(%rbx)
	.size sMrb_info, .-sMrb_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLookSlide_srt-(sMrc_info)+0
	.long	0
	.quad	4
	.quad	4294967328
sMrc_info:
.LcMs7:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sMrb_info,0(%rbp)
	testq $7,%rbx
	jne sMrb_info
	jmp *(%rbx)
	.size sMrc_info, .-sMrc_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLookSlide_srt-(sMrd_info)+0
	.long	0
	.quad	2
	.quad	4294967328
sMrd_info:
.LcMsg:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMrc_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMrc_info
	jmp *(%rbx)
	.size sMrd_info, .-sMrd_info
.text
	.align 8
	.long	EngineziObjectziPlayer_moveFromLookSlide_srt-(EngineziObjectziPlayer_moveFromLookSlide_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_moveFromLookSlide_info
.type EngineziObjectziPlayer_moveFromLookSlide_info, @object
EngineziObjectziPlayer_moveFromLookSlide_info:
.LcMso:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMsq
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_moveFromLookSlide_ct
	je .LcMsr
.LcMss:
	incq EngineziObjectziPlayer_moveFromLookSlide_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rdi,%rbx
	movq $sMrd_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sMrd_info
	jmp *(%rbx)
.LcMsq:
	movl $EngineziObjectziPlayer_moveFromLookSlide_closure,%ebx
	jmp *-8(%r13)
.LcMsr:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_moveFromLookSlide_ct+56
	movq $EngineziObjectziPlayer_moveFromLookSlide_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_moveFromLookSlide_ct
	jmp .LcMss
	.size EngineziObjectziPlayer_moveFromLookSlide_info, .-EngineziObjectziPlayer_moveFromLookSlide_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer43_closure
.type EngineziObjectziPlayer_mkPlayer43_closure, @object
EngineziObjectziPlayer_mkPlayer43_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	10
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer44_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer43_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer44_closure
.type EngineziObjectziPlayer_mkPlayer44_closure, @object
EngineziObjectziPlayer_mkPlayer44_closure:
	.quad	EngineziObjectziPlayer_mkPlayer44_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer44_srt-(EngineziObjectziPlayer_mkPlayer44_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziObjectziPlayer_mkPlayer44_info
.type EngineziObjectziPlayer_mkPlayer44_info, @object
EngineziObjectziPlayer_mkPlayer44_info:
.LcMsN:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMsP
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMsR
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
	je .LcMsS
.LcMsT:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $EngineziObjectziPlayer_mkPlayer43_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcMsR:
	movq $16,192(%r13)
.LcMsP:
	jmp *-16(%r13)
.LcMsS:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer44_info, .-EngineziObjectziPlayer_mkPlayer44_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer42_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer43_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer42_closure
.type EngineziObjectziPlayer_mkPlayer42_closure, @object
EngineziObjectziPlayer_mkPlayer42_closure:
	.quad	EngineziObjectziPlayer_mkPlayer42_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer42_srt-(EngineziObjectziPlayer_mkPlayer42_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziObjectziPlayer_mkPlayer42_info
.type EngineziObjectziPlayer_mkPlayer42_info, @object
EngineziObjectziPlayer_mkPlayer42_info:
.LcMta:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMtc
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMte
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
	je .LcMtf
.LcMtg:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $EngineziObjectziPlayer_mkPlayer43_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcMte:
	movq $16,192(%r13)
.LcMtc:
	jmp *-16(%r13)
.LcMtf:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer42_info, .-EngineziObjectziPlayer_mkPlayer42_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer45_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer45_closure
.type EngineziObjectziPlayer_mkPlayer45_closure, @object
EngineziObjectziPlayer_mkPlayer45_closure:
	.quad	EngineziObjectziPlayer_mkPlayer45_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMtw_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	51
	.byte	51
	.byte	58
	.byte	56
	.byte	45
	.byte	54
	.byte	50
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
	.long	EngineziObjectziPlayer_mkPlayer45_srt-(EngineziObjectziPlayer_mkPlayer45_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziObjectziPlayer_mkPlayer45_info
.type EngineziObjectziPlayer_mkPlayer45_info, @object
EngineziObjectziPlayer_mkPlayer45_info:
.LcMtA:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMtC
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMtE
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
	je .LcMtF
.LcMtG:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMtw_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcMtE:
	movq $16,192(%r13)
.LcMtC:
	jmp *-16(%r13)
.LcMtF:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer45_info, .-EngineziObjectziPlayer_mkPlayer45_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_playerMouseUpdate_srt:
	.quad	EngineziObjectziPlayer_mkPlayer42_closure
	.quad	EngineziObjectziPlayer_mkPlayer44_closure
	.quad	EngineziObjectziPlayer_mkPlayer45_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_playerMouseUpdate_closure
.type EngineziObjectziPlayer_playerMouseUpdate_closure, @object
EngineziObjectziPlayer_playerMouseUpdate_closure:
	.quad	EngineziObjectziPlayer_playerMouseUpdate_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMye_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	77
	.byte	111
	.byte	117
	.byte	115
	.byte	101
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	122
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMyg_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_playerMouseUpdate_ct
.type EngineziObjectziPlayer_playerMouseUpdate_ct, @object
EngineziObjectziPlayer_playerMouseUpdate_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cMye_str
	.quad	cMyg_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMyj_str:
	.byte	36
	.byte	119
	.byte	36
	.byte	106
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	76
	.byte	66
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
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	46
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cMyl_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sLBN_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cMyj_str
	.quad	cMyl_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967299
	.quad	8589934592
	.quad	14
sLBN_info:
.LcMyp:
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sLBN_ct
	je .LcMyq
.LcMyr:
	incq sLBN_ct+40
	leaq 7(%rbx),%rax
	movss 15(%rbx),%xmm0
	subss (%rax),%xmm0
	ucomiss .LnMyB(%rip),%xmm0
	jp .LnMyC
	jb .LcMyt
.LnMyC:
	leaq 7(%rbx),%rax
	movss 15(%rbx),%xmm0
	subss (%rax),%xmm0
	ucomiss .LnMyG(%rip),%xmm0
	ja .LcMyw
	movss 15(%rbx),%xmm1
	jmp *0(%rbp)
.LcMyq:
	movq ticky_entry_ctrs,%rax
	movq %rax,sLBN_ct+56
	movq $sLBN_ct,ticky_entry_ctrs
	movq $1,sLBN_ct
	jmp .LcMyr
.LcMyt:
	movss .LnMyI(%rip),%xmm1
	jmp *0(%rbp)
.LcMyw:
	movss .LnMyJ(%rip),%xmm1
	jmp *0(%rbp)
	.size sLBN_info, .-sLBN_info
.section .rodata
	.align 8
.align 4
.LnMyB:
	.byte	0
	.byte	0
	.byte	180
	.byte	194
.section .rodata
	.align 8
.align 4
.LnMyG:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.section .rodata
	.align 8
.align 4
.LnMyI:
	.byte	0
	.byte	0
	.byte	180
	.byte	194
.section .rodata
	.align 8
.align 4
.LnMyJ:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.quad	21198
	.quad	32
sLCl_info:
.LcMyN:
	addq $184,%r12
	cmpq 144(%r13),%r12
	ja .LcMyT
	addq $23,EngineziObjectziPlayer_playerMouseUpdate_ct+48
	incq ALLOC_HEAP_ctr
	addq $23,ALLOC_HEAP_tot
	movss 8(%rbp),%xmm0
	addss 72(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-176(%r12)
	movss %xmm0,-168(%r12)
	movss 16(%rbp),%xmm0
	addss 56(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-160(%r12)
	movss %xmm0,-152(%r12)
	movq $EngineziCoreziVec_Vec2_con_info,-144(%r12)
	leaq -159(%r12),%rax
	movq %rax,-136(%r12)
	leaq -175(%r12),%rax
	movq %rax,-128(%r12)
	movq $EngineziCoreziWorld_Input_con_info,-120(%r12)
	movq 48(%rbp),%rax
	movq %rax,-112(%r12)
	movq 24(%rbp),%rax
	movq %rax,-104(%r12)
	leaq -143(%r12),%rax
	movq %rax,-96(%r12)
	movq 40(%rbp),%rax
	movq %rax,-88(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 112(%rbp),%rax
	movq %rax,-72(%r12)
	movq %rbx,-64(%r12)
	movq 64(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 104(%rbp),%rax
	movq %rax,-40(%r12)
	leaq -79(%r12),%rax
	movq %rax,-32(%r12)
	movq 96(%rbp),%rax
	movq %rax,-24(%r12)
	movq 88(%rbp),%rax
	movq %rax,-16(%r12)
	movq 80(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -119(%r12),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $120,%rbp
	jmp *0(%rbp)
.LcMyT:
	movq $184,192(%r13)
.LcMyR:
	jmp *-16(%r13)
	.size sLCl_info, .-sLCl_info
.text
	.align 8
	.quad	21198
	.quad	32
sMuf_info:
.LcMzc:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMzg
	addq $2,EngineziObjectziPlayer_playerMouseUpdate_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 56(%rbp),%xmm2
	mulss (%rax),%xmm2
	movss .LnMzo(%rip),%xmm0
	xorps %xmm0,%xmm2
	movss 32(%rbp),%xmm0
	addss %xmm2,%xmm0
	ucomiss .LnMzs(%rip),%xmm0
	jae .LcMzi
	movss %xmm2,%xmm0
	addss 32(%rbp),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnMzx
	jb .LcMzl
.LnMzx:
	movss 32(%rbp),%xmm0
	addss %xmm2,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	movq $sLCl_info,0(%rbp)
	jmp sLCl_info
.LcMzg:
	movq $16,192(%r13)
.LcMze:
	jmp *-16(%r13)
.LcMzi:
	movss 32(%rbp),%xmm0
	addss %xmm2,%xmm0
	subss .LnMzz(%rip),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	movq $sLCl_info,0(%rbp)
	jmp sLCl_info
.LcMzl:
	movss .LnMzC(%rip),%xmm0
	subss 32(%rbp),%xmm0
	addss %xmm2,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	movq $sLCl_info,0(%rbp)
	jmp sLCl_info
	.size sMuf_info, .-sMuf_info
.section .rodata
	.align 8
.align 4
.LnMzo:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.LnMzs:
	.byte	0
	.byte	0
	.byte	180
	.byte	67
.section .rodata
	.align 8
.align 4
.LnMzz:
	.byte	0
	.byte	0
	.byte	180
	.byte	67
.section .rodata
	.align 8
.align 4
.LnMzC:
	.byte	0
	.byte	0
	.byte	180
	.byte	67
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sLCk_info)+0
	.long	0
	.quad	545486
	.quad	4294967328
sLCk_info:
.LcMzH:
	movq %rbx,112(%rbp)
	movl $EngineziObjectziPlayer_mkPlayer42_closure,%ebx
	movq $sMuf_info,0(%rbp)
	testq $7,%rbx
	jne sMuf_info
	jmp *(%rbx)
	.size sLCk_info, .-sLCk_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sLBR_info)+0
	.long	0
	.quad	545486
	.quad	4294967328
sLBR_info:
.LcMzP:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMzW
	addq $2,EngineziObjectziPlayer_playerMouseUpdate_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	movq $sLCk_info,0(%rbp)
	jmp sLCk_info
.LcMzW:
	movq $16,192(%r13)
	jmp stg_gc_f1
	.size sLBR_info, .-sLBR_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sLBV_info)+0
	.long	0
	.quad	545486
	.quad	4294967328
sLBV_info:
.LcMA3:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMAa
	addq $2,EngineziObjectziPlayer_playerMouseUpdate_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	movq $sLCk_info,0(%rbp)
	jmp sLCk_info
.LcMAa:
	movq $16,192(%r13)
	jmp stg_gc_f1
	.size sLBV_info, .-sLBV_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMu5_info)+0
	.long	0
	.quad	545486
	.quad	4294967328
sMu5_info:
.LcMAd:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMAh
	addq $5,EngineziObjectziPlayer_playerMouseUpdate_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 72(%rbp),%xmm1
	mulss (%rax),%xmm1
	movq $sLBN_info,-32(%r12)
	movss %xmm1,-24(%r12)
	movss 112(%rbp),%xmm0
	movss %xmm0,-16(%r12)
	movss 112(%rbp),%xmm0
	subss %xmm1,%xmm0
	ucomiss .LnMAr(%rip),%xmm0
	jae .LcMAj
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	movq $sLBR_info,0(%rbp)
	addq $-16,%r12
	addq $-2,EngineziObjectziPlayer_playerMouseUpdate_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp sLBN_info
.LcMAh:
	movq $40,192(%r13)
.LcMAf:
	jmp *-16(%r13)
.LcMAj:
	movss 112(%rbp),%xmm0
	subss %xmm1,%xmm0
	ucomiss .LnMAv(%rip),%xmm0
	jp .LnMAw
	jbe .LcMAl
.LnMAw:
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	movq $sLBV_info,0(%rbp)
	addq $-16,%r12
	addq $-2,EngineziObjectziPlayer_playerMouseUpdate_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp sLBN_info
.LcMAl:
	movss 112(%rbp),%xmm0
	subss %xmm1,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	movq $sLCk_info,0(%rbp)
	jmp sLCk_info
	.size sMu5_info, .-sMu5_info
.section .rodata
	.align 8
.align 4
.LnMAr:
	.byte	0
	.byte	0
	.byte	180
	.byte	194
.section .rodata
	.align 8
.align 4
.LnMAv:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMu6_info)+0
	.long	0
	.quad	272717
	.quad	12884901920
sMu6_info:
.LcMAA:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $EngineziObjectziPlayer_mkPlayer44_closure,%ebx
	movq $sMu5_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMu5_info
	jmp *(%rbx)
	.size sMu6_info, .-sMu6_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMu7_info)+0
	.long	0
	.quad	272653
	.quad	12884901920
sMu7_info:
.LcMAH:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sMu6_info,0(%rbp)
	testq $7,%rbx
	jne sMu6_info
	jmp *(%rbx)
	.size sMu7_info, .-sMu7_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMu8_info)+0
	.long	0
	.quad	136332
	.quad	12884901920
sMu8_info:
.LcMAQ:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMu7_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMu7_info
	jmp *(%rbx)
	.size sMu8_info, .-sMu8_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMu9_info)+0
	.long	0
	.quad	135308
	.quad	12884901920
sMu9_info:
.LcMAX:
	movq 40(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $sMu8_info,0(%rbp)
	testq $7,%rbx
	jne sMu8_info
	jmp *(%rbx)
	.size sMu9_info, .-sMu9_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMua_info)+0
	.long	0
	.quad	135180
	.quad	12884901920
sMua_info:
.LcMB6:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sMu9_info,0(%rbp)
	testq $7,%rbx
	jne sMu9_info
	jmp *(%rbx)
	.size sMua_info, .-sMua_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMub_info)+0
	.long	0
	.quad	131084
	.quad	12884901920
sMub_info:
.LcMBf:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sMua_info,0(%rbp)
	testq $7,%rbx
	jne sMua_info
	jmp *(%rbx)
	.size sMub_info, .-sMub_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sLCs_info)+0
	.long	0
	.quad	32778
	.quad	12884901920
sLCs_info:
.LcMBo:
	movq %rbx,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sMub_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMub_info
	jmp *(%rbx)
	.size sLCs_info, .-sLCs_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMuc_info)+0
	.long	0
	.quad	4103
	.quad	12884901920
sMuc_info:
.LcMBv:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sLCs_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sLCs_info
	jmp *(%rbx)
	.size sMuc_info, .-sMuc_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMud_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMud_info:
.LcMBE:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sMuc_info,0(%rbp)
	testq $7,%rbx
	jne sMuc_info
	jmp *(%rbx)
	.size sMud_info, .-sMud_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMue_info)+0
	.long	0
	.quad	5
	.quad	12884901920
sMue_info:
.LcMBN:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMud_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMud_info
	jmp *(%rbx)
	.size sMue_info, .-sMue_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(sMtM_info)+0
	.long	0
	.quad	0
	.quad	30064771104
sMtM_info:
.LcMBW:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMBX
	movq 39(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 47(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sMue_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sMue_info
	jmp *(%rbx)
.LcMBX:
	movl $EngineziObjectziPlayer_mkPlayer45_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMtM_info, .-sMtM_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerMouseUpdate_srt-(EngineziObjectziPlayer_playerMouseUpdate_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
.globl EngineziObjectziPlayer_playerMouseUpdate_info
.type EngineziObjectziPlayer_playerMouseUpdate_info, @object
EngineziObjectziPlayer_playerMouseUpdate_info:
.LcMCb:
	leaq -120(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMCd
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_playerMouseUpdate_ct
	je .LcMCe
.LcMCf:
	incq EngineziObjectziPlayer_playerMouseUpdate_ct+40
	movq %r14,%rbx
	movq $sMtM_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMtM_info
	jmp *(%rbx)
.LcMCd:
	movl $EngineziObjectziPlayer_playerMouseUpdate_closure,%ebx
	jmp *-8(%r13)
.LcMCe:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_playerMouseUpdate_ct+56
	movq $EngineziObjectziPlayer_playerMouseUpdate_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_playerMouseUpdate_ct
	jmp .LcMCf
	.size EngineziObjectziPlayer_playerMouseUpdate_info, .-EngineziObjectziPlayer_playerMouseUpdate_info
.section .data
	.align 8
.align 1
rLu6_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
rLu6_closure:
	.quad	rLu6_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMCw_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	54
	.byte	52
	.byte	58
	.byte	49
	.byte	54
	.byte	45
	.byte	54
	.byte	48
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
	.long	rLu6_srt-(rLu6_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rLu6_info:
.LcMCA:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMCC
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMCE
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
	je .LcMCF
.LcMCG:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMCw_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcMCE:
	movq $16,192(%r13)
.LcMCC:
	jmp *-16(%r13)
.LcMCF:
	jmp *(%rbx)
	.size rLu6_info, .-rLu6_info
.data
	.align 8
.align 1
rLu7_closure:
	.quad	rLu7_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMCV_str:
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	75
	.byte	101
	.byte	121
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	84
	.byte	97
	.byte	105
	.byte	108
	.byte	83
	.byte	97
	.byte	102
	.byte	101
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	109
	.byte	101
	.byte	97
	.byte	110
	.byte	116
	.byte	32
	.byte	116
	.byte	111
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
	.byte	108
	.byte	121
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
rLu7_info:
.LcMCZ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMD1
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMD3
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
	je .LcMD4
.LcMD5:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMCV_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcMD3:
	movq $16,192(%r13)
.LcMD1:
	jmp *-16(%r13)
.LcMD4:
	jmp *(%rbx)
	.size rLu7_info, .-rLu7_info
.section .data
	.align 8
.align 1
rLu8_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rLu7_closure
.data
	.align 8
.align 1
rLu8_closure:
	.quad	rLu8_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rLu8_srt-(rLu8_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rLu8_info:
.LcMDm:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMDo
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMDq
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
	je .LcMDr
.LcMDs:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rLu7_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcMDq:
	movq $16,192(%r13)
.LcMDo:
	jmp *-16(%r13)
.LcMDr:
	jmp *(%rbx)
	.size rLu8_info, .-rLu8_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt:
	.quad	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_closure
	.quad	rLu6_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_closure
.type EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_closure, @object
EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_closure:
	.quad	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMFH_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	95
	.byte	36
	.byte	115
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	75
	.byte	101
	.byte	121
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	84
	.byte	97
	.byte	105
	.byte	108
	.byte	83
	.byte	97
	.byte	102
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	57
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMFJ_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	77
	.byte	83
	.byte	76
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	77
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct
.type EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct, @object
EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct:
	.quad	0
	.quad	18
	.quad	13
	.quad	cMFH_str
	.quad	cMFJ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_slow
.type EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_slow, @object
EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_slow:
.LcMFM:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
	.size EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_slow, .-EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_slow
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sLDM_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLDM_info:
.LcMG2:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMG8
	addq $5,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 72(%rbp),%rax
	movq %rax,-16(%r12)
	movq 80(%rbp),%rax
	movq %rax,-8(%r12)
	movq 88(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 64(%rbp),%rax
	movq %rax,0(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 40(%rbp),%rax
	movq 24(%rbp),%rbx
	movq %rbx,40(%rbp)
	movq %rax,24(%rbp)
	movq 16(%rbp),%r8
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq %rbx,16(%rbp)
	movq 8(%rbp),%r9
	movq 56(%rbp),%rbx
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMG8:
	movq $40,192(%r13)
.LcMG6:
	jmp *-16(%r13)
	.size sLDM_info, .-sLDM_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDI_info)+0
	.long	0
	.quad	393
	.quad	12884901920
sMDI_info:
.LcMGr:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMGs
	movq 39(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq 23(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sLDM_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLDM_info
	jmp *(%rbx)
.LcMGs:
	movl $rLu6_closure,%ebx
	addq $80,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMDI_info, .-sMDI_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDJ_info)+0
	.long	0
	.quad	3977
	.quad	12884901920
sMDJ_info:
.LcMGI:
	movq 31(%rbx),%rax
	movq %rax,32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,40(%rbp)
	movq 15(%rbx),%rax
	movq %rax,48(%rbp)
	movq 7(%rbx),%rbx
	movq $sMDI_info,0(%rbp)
	testq $7,%rbx
	jne sMDI_info
	jmp *(%rbx)
	.size sMDJ_info, .-sMDJ_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sLDV_info)+0
	.long	0
	.quad	524
	.quad	4294967328
sLDV_info:
.LcMGV:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMH1
	addq $5,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 96(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 72(%rbp),%rax
	movq %rax,32(%rbp)
	leaq -31(%r12),%rax
	movq %rax,0(%rbp)
	movq 72(%rbp),%r14
	movq %rbx,72(%rbp)
	movq 64(%rbp),%rsi
	movq 56(%rbp),%rdi
	movq 48(%rbp),%r8
	movq 56(%rbp),%rbx
	movq 48(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,48(%rbp)
	movq 40(%rbp),%r9
	movq 64(%rbp),%rbx
	movq 40(%rbp),%rax
	movq %rax,64(%rbp)
	movq %rbx,40(%rbp)
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMH1:
	movq $40,192(%r13)
.LcMGZ:
	jmp *-16(%r13)
	.size sLDV_info, .-sLDV_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sLDY_info)+0
	.long	0
	.quad	524
	.quad	4294967328
sLDY_info:
.LcMHk:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMHq
	addq $5,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 96(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 72(%rbp),%rax
	movq %rax,32(%rbp)
	leaq -31(%r12),%rax
	movq %rax,0(%rbp)
	movq 72(%rbp),%r14
	movq %rbx,72(%rbp)
	movq 64(%rbp),%rsi
	movq 56(%rbp),%rdi
	movq 48(%rbp),%r8
	movq 56(%rbp),%rbx
	movq 48(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,48(%rbp)
	movq 40(%rbp),%r9
	movq 64(%rbp),%rbx
	movq 40(%rbp),%rax
	movq %rax,64(%rbp)
	movq %rbx,40(%rbp)
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMHq:
	movq $40,192(%r13)
.LcMHo:
	jmp *-16(%r13)
	.size sLDY_info, .-sLDY_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDE_info)+0
	.long	0
	.quad	143
	.quad	12884901920
sMDE_info:
.LcMHH:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcMHM
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcMHT
	addq $12,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 96(%rbp),%rax
	movq %rax,-80(%r12)
	movq 88(%rbp),%rax
	movq %rax,-72(%r12)
	movq 80(%rbp),%rax
	movq %rax,-64(%r12)
	movq 72(%rbp),%rax
	movq %rax,-56(%r12)
	movq 64(%rbp),%rax
	movq %rax,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq 48(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	leaq -31(%r12),%r14
	movq $sMDJ_info,48(%rbp)
	addq $48,%rbp
	jmp stg_ap_p_fast
.LcMHI:
	movq 56(%rbp),%rbx
	movq $sLDY_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sLDY_info
	jmp *(%rbx)
.LcMHM:
	cmpq $3,%rax
	jae .LcMHI
	movq 56(%rbp),%rbx
	movq $sLDV_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sLDV_info
	jmp *(%rbx)
.LcMHT:
	movq $96,192(%r13)
.LcMHR:
	jmp *-16(%r13)
	.size sMDE_info, .-sMDE_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sLE2_info)+0
	.long	0
	.quad	524
	.quad	4294967328
sLE2_info:
.LcMIf:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMIl
	addq $5,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 96(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 72(%rbp),%rax
	movq %rax,32(%rbp)
	leaq -31(%r12),%rax
	movq %rax,0(%rbp)
	movq 72(%rbp),%r14
	movq %rbx,72(%rbp)
	movq 64(%rbp),%rsi
	movq 56(%rbp),%rdi
	movq 48(%rbp),%r8
	movq 56(%rbp),%rbx
	movq 48(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,48(%rbp)
	movq 40(%rbp),%r9
	movq 64(%rbp),%rbx
	movq 40(%rbp),%rax
	movq %rax,64(%rbp)
	movq %rbx,40(%rbp)
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMIl:
	movq $40,192(%r13)
.LcMIj:
	jmp *-16(%r13)
	.size sLE2_info, .-sLE2_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sLEr_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLEr_info:
.LcMIN:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMIT
	addq $5,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 72(%rbp),%rax
	movq %rax,-16(%r12)
	movq 80(%rbp),%rax
	movq %rax,-8(%r12)
	movq 88(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 64(%rbp),%rax
	movq %rax,0(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 40(%rbp),%rax
	movq 24(%rbp),%rbx
	movq %rbx,40(%rbp)
	movq %rax,24(%rbp)
	movq 16(%rbp),%r8
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq %rbx,16(%rbp)
	movq 8(%rbp),%r9
	movq 56(%rbp),%rbx
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMIT:
	movq $40,192(%r13)
.LcMIR:
	jmp *-16(%r13)
	.size sLEr_info, .-sLEr_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDR_info)+0
	.long	0
	.quad	393
	.quad	12884901920
sMDR_info:
.LcMJc:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMJd
	movq 39(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq 23(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sLEr_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLEr_info
	jmp *(%rbx)
.LcMJd:
	movl $rLu6_closure,%ebx
	addq $80,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMDR_info, .-sMDR_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDS_info)+0
	.long	0
	.quad	3977
	.quad	12884901920
sMDS_info:
.LcMJt:
	movq 31(%rbx),%rax
	movq %rax,32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,40(%rbp)
	movq 15(%rbx),%rax
	movq %rax,48(%rbp)
	movq 7(%rbx),%rbx
	movq $sMDR_info,0(%rbp)
	testq $7,%rbx
	jne sMDR_info
	jmp *(%rbx)
	.size sMDS_info, .-sMDS_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDN_info)+0
	.long	0
	.quad	143
	.quad	12884901920
sMDN_info:
.LcMJD:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcMJE
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcMJL
	addq $12,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 96(%rbp),%rax
	movq %rax,-80(%r12)
	movq 88(%rbp),%rax
	movq %rax,-72(%r12)
	movq 80(%rbp),%rax
	movq %rax,-64(%r12)
	movq 72(%rbp),%rax
	movq %rax,-56(%r12)
	movq 64(%rbp),%rax
	movq %rax,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq 48(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	leaq -31(%r12),%r14
	movq $sMDS_info,48(%rbp)
	addq $48,%rbp
	jmp stg_ap_p_fast
.LcMJE:
	movq 56(%rbp),%rbx
	movq $sLE2_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sLE2_info
	jmp *(%rbx)
.LcMJL:
	movq $96,192(%r13)
.LcMJJ:
	jmp *-16(%r13)
	.size sMDN_info, .-sMDN_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sLEU_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLEU_info:
.LcMKh:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMKn
	addq $5,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 72(%rbp),%rax
	movq %rax,-16(%r12)
	movq 80(%rbp),%rax
	movq %rax,-8(%r12)
	movq 88(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 64(%rbp),%rax
	movq %rax,0(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 40(%rbp),%rax
	movq 24(%rbp),%rbx
	movq %rbx,40(%rbp)
	movq %rax,24(%rbp)
	movq 16(%rbp),%r8
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq %rbx,16(%rbp)
	movq 8(%rbp),%r9
	movq 56(%rbp),%rbx
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMKn:
	movq $40,192(%r13)
.LcMKl:
	jmp *-16(%r13)
	.size sLEU_info, .-sLEU_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDX_info)+0
	.long	0
	.quad	393
	.quad	12884901920
sMDX_info:
.LcMKG:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMKH
	movq 39(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq 23(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sLEU_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLEU_info
	jmp *(%rbx)
.LcMKH:
	movl $rLu6_closure,%ebx
	addq $80,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMDX_info, .-sMDX_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDY_info)+0
	.long	0
	.quad	3977
	.quad	12884901920
sMDY_info:
.LcMKX:
	movq 31(%rbx),%rax
	movq %rax,32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,40(%rbp)
	movq 15(%rbx),%rax
	movq %rax,48(%rbp)
	movq 7(%rbx),%rbx
	movq $sMDX_info,0(%rbp)
	testq $7,%rbx
	jne sMDX_info
	jmp *(%rbx)
	.size sMDY_info, .-sMDY_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sLF0_info)+0
	.long	0
	.quad	524
	.quad	4294967328
sLF0_info:
.LcMLa:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMLg
	addq $5,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 96(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 72(%rbp),%rax
	movq %rax,32(%rbp)
	leaq -31(%r12),%rax
	movq %rax,0(%rbp)
	movq 72(%rbp),%r14
	movq %rbx,72(%rbp)
	movq 64(%rbp),%rsi
	movq 56(%rbp),%rdi
	movq 48(%rbp),%r8
	movq 56(%rbp),%rbx
	movq 48(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,48(%rbp)
	movq 40(%rbp),%r9
	movq 64(%rbp),%rbx
	movq 40(%rbp),%rax
	movq %rax,64(%rbp)
	movq %rbx,40(%rbp)
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMLg:
	movq $40,192(%r13)
.LcMLe:
	jmp *-16(%r13)
	.size sLF0_info, .-sLF0_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDW_info)+0
	.long	0
	.quad	143
	.quad	12884901920
sMDW_info:
.LcMLw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcMLx
	movq 56(%rbp),%rbx
	movq $sLF0_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sLF0_info
	jmp *(%rbx)
.LcMLx:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcMLB
	addq $12,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 96(%rbp),%rax
	movq %rax,-80(%r12)
	movq 88(%rbp),%rax
	movq %rax,-72(%r12)
	movq 80(%rbp),%rax
	movq %rax,-64(%r12)
	movq 72(%rbp),%rax
	movq %rax,-56(%r12)
	movq 64(%rbp),%rax
	movq %rax,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq 48(%rbp),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	leaq -31(%r12),%r14
	movq $sMDY_info,48(%rbp)
	addq $48,%rbp
	jmp stg_ap_p_fast
.LcMLB:
	movq $96,192(%r13)
.LcMLz:
	jmp *-16(%r13)
	.size sMDW_info, .-sMDW_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDF_info)+0
	.long	0
	.quad	15
	.quad	12884901920
sMDF_info:
.LcMLV:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcMM0
	movq 16(%rbp),%rbx
	movq $sMDE_info,0(%rbp)
	testq $7,%rbx
	jne sMDE_info
	jmp *(%rbx)
.LcMLW:
	movq 16(%rbp),%rbx
	movq $sMDW_info,0(%rbp)
	testq $7,%rbx
	jne sMDW_info
	jmp *(%rbx)
.LcMM0:
	cmpq $3,%rbx
	jae .LcMLW
	movq 16(%rbp),%rbx
	movq $sMDN_info,0(%rbp)
	testq $7,%rbx
	jne sMDN_info
	jmp *(%rbx)
	.size sMDF_info, .-sMDF_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDH_info)+0
	.long	0
	.quad	13
	.quad	12884901920
sMDH_info:
.LcMMa:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sMDF_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMDF_info
	jmp *(%rbx)
	.size sMDH_info, .-sMDH_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(sMDA_info)+0
	.long	0
	.quad	1037
	.quad	12884901920
sMDA_info:
.LcMMk:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcMMl
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcMMt
	addq $12,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
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
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq 32(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
.LcMMl:
	movq 14(%rbx),%rax
	movq %rax,40(%rbp)
	movq 6(%rbx),%rbx
	movq $sMDH_info,0(%rbp)
	testq $7,%rbx
	jne sMDH_info
	jmp *(%rbx)
.LcMMt:
	movq $96,192(%r13)
.LcMMr:
	jmp *-16(%r13)
	.size sMDA_info, .-sMDA_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_slow-(EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info)+0
	.long	0
	.quad	18
	.long	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_srt-(EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info)+0
	.long	0
	.quad	77309411328
	.quad	0
	.quad	12884901903
.globl EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.type EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info, @object
EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info:
.LcMMK:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMMM
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct
	je .LcMMN
.LcMMO:
	incq EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+40
	movq %r9,40(%rbp)
	movq %r8,48(%rbp)
	movq %rdi,56(%rbp)
	movq %rsi,64(%rbp)
	movq 72(%rbp),%rbx
	movq %r14,72(%rbp)
	movq $sMDA_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMDA_info
	jmp *(%rbx)
.LcMMM:
	movl $EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcMMN:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct+56
	movq $EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_ct
	jmp .LcMMO
	.size EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info, .-EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt:
	.quad	EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_closure
	.quad	rLu6_closure
	.quad	rLu8_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_playerKeyUpdateTailSafe_closure
.type EngineziObjectziPlayer_playerKeyUpdateTailSafe_closure, @object
EngineziObjectziPlayer_playerKeyUpdateTailSafe_closure:
	.quad	EngineziObjectziPlayer_playerKeyUpdateTailSafe_info
	.quad	0
.section .rodata
	.align 8
.align 1
cMPS_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	75
	.byte	101
	.byte	121
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	84
	.byte	97
	.byte	105
	.byte	108
	.byte	83
	.byte	97
	.byte	102
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	121
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cMPU_str:
	.byte	83
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct
.type EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct, @object
EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cMPS_str
	.quad	cMPU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sLFY_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLFY_info:
.LcMQb:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMQh
	addq $5,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 80(%rbp),%rax
	movq 72(%rbp),%rcx
	movq %rcx,80(%rbp)
	movq %rax,72(%rbp)
	movq 88(%rbp),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 56(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq 40(%rbp),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 56(%rbp),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMQh:
	movq $40,192(%r13)
.LcMQf:
	jmp *-16(%r13)
	.size sLFY_info, .-sLFY_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMN3_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMN3_info:
.LcMQC:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMQD
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sLFY_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLFY_info
	jmp *(%rbx)
.LcMQD:
	movl $rLu6_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMN3_info, .-sMN3_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMN4_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sMN4_info:
.LcMQT:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rbx
	movq $sMN3_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMN3_info
	jmp *(%rbx)
	.size sMN4_info, .-sMN4_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sLGq_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLGq_info:
.LcMRf:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMRl
	addq $5,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 80(%rbp),%rax
	movq 72(%rbp),%rcx
	movq %rcx,80(%rbp)
	movq %rax,72(%rbp)
	movq 88(%rbp),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 56(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq 40(%rbp),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 56(%rbp),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMRl:
	movq $40,192(%r13)
.LcMRj:
	jmp *-16(%r13)
	.size sLGq_info, .-sLGq_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNb_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMNb_info:
.LcMRG:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMRH
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sLGq_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLGq_info
	jmp *(%rbx)
.LcMRH:
	movl $rLu6_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMNb_info, .-sMNb_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNc_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sMNc_info:
.LcMRX:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rbx
	movq $sMNb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMNb_info
	jmp *(%rbx)
	.size sMNc_info, .-sMNc_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sLGP_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLGP_info:
.LcMSj:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMSp
	addq $5,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 80(%rbp),%rax
	movq 72(%rbp),%rcx
	movq %rcx,80(%rbp)
	movq %rax,72(%rbp)
	movq 88(%rbp),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 56(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq 40(%rbp),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 56(%rbp),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMSp:
	movq $40,192(%r13)
.LcMSn:
	jmp *-16(%r13)
	.size sLGP_info, .-sLGP_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNf_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMNf_info:
.LcMSK:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMSL
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sLGP_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLGP_info
	jmp *(%rbx)
.LcMSL:
	movl $rLu6_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMNf_info, .-sMNf_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNg_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sMNg_info:
.LcMT1:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rbx
	movq $sMNf_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMNf_info
	jmp *(%rbx)
	.size sMNg_info, .-sMNg_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMN5_info)+0
	.long	0
	.quad	135
	.quad	12884901920
sMN5_info:
.LcMTc:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcMTh
	incq UNKNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	movq 56(%rbp),%r14
	movq $sMN4_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_p_fast
.LcMTd:
	movq 56(%rbp),%rbx
	movq $sMNg_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne sMNg_info
	jmp *(%rbx)
.LcMTh:
	cmpq $3,%rbx
	jae .LcMTd
	movq 56(%rbp),%rbx
	movq $sMNc_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne sMNc_info
	jmp *(%rbx)
	.size sMN5_info, .-sMN5_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sLHf_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLHf_info:
.LcMTF:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMTL
	addq $5,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 80(%rbp),%rax
	movq 72(%rbp),%rcx
	movq %rcx,80(%rbp)
	movq %rax,72(%rbp)
	movq 88(%rbp),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 56(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq 40(%rbp),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 56(%rbp),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMTL:
	movq $40,192(%r13)
.LcMTJ:
	jmp *-16(%r13)
	.size sLHf_info, .-sLHf_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNj_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMNj_info:
.LcMU6:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMU7
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sLHf_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLHf_info
	jmp *(%rbx)
.LcMU7:
	movl $rLu6_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMNj_info, .-sMNj_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNk_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sMNk_info:
.LcMUn:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rbx
	movq $sMNj_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMNj_info
	jmp *(%rbx)
	.size sMNk_info, .-sMNk_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sLHE_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLHE_info:
.LcMUJ:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMUP
	addq $5,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 80(%rbp),%rax
	movq 72(%rbp),%rcx
	movq %rcx,80(%rbp)
	movq %rax,72(%rbp)
	movq 88(%rbp),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 56(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq 40(%rbp),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 56(%rbp),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMUP:
	movq $40,192(%r13)
.LcMUN:
	jmp *-16(%r13)
	.size sLHE_info, .-sLHE_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNo_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMNo_info:
.LcMVa:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMVb
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sLHE_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLHE_info
	jmp *(%rbx)
.LcMVb:
	movl $rLu6_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMNo_info, .-sMNo_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNp_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sMNp_info:
.LcMVr:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rbx
	movq $sMNo_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMNo_info
	jmp *(%rbx)
	.size sMNp_info, .-sMNp_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNl_info)+0
	.long	0
	.quad	135
	.quad	12884901920
sMNl_info:
.LcMVB:
	andq $7,%rbx
	cmpq $2,%rbx
	jne .LcMVC
	incq UNKNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	movq 56(%rbp),%r14
	movq $sMNp_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_p_fast
.LcMVC:
	movq 56(%rbp),%rbx
	movq $sMNk_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne sMNk_info
	jmp *(%rbx)
	.size sMNl_info, .-sMNl_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sLI4_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLI4_info:
.LcMW1:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMW7
	addq $5,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 80(%rbp),%rax
	movq 72(%rbp),%rcx
	movq %rcx,80(%rbp)
	movq %rax,72(%rbp)
	movq 88(%rbp),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 56(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq 40(%rbp),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 56(%rbp),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMW7:
	movq $40,192(%r13)
.LcMW5:
	jmp *-16(%r13)
	.size sLI4_info, .-sLI4_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNs_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMNs_info:
.LcMWs:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMWt
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sLI4_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLI4_info
	jmp *(%rbx)
.LcMWt:
	movl $rLu6_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMNs_info, .-sMNs_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNt_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sMNt_info:
.LcMWJ:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rbx
	movq $sMNs_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMNs_info
	jmp *(%rbx)
	.size sMNt_info, .-sMNt_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sLIt_info)+0
	.long	0
	.quad	11
	.quad	4294967328
sLIt_info:
.LcMX5:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcMXb
	addq $5,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 80(%rbp),%rax
	movq 72(%rbp),%rcx
	movq %rcx,80(%rbp)
	movq %rax,72(%rbp)
	movq 88(%rbp),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq %rbx,64(%rbp)
	leaq -31(%r12),%rax
	movq %rax,-8(%rbp)
	movq 56(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq 48(%rbp),%rbx
	movq 16(%rbp),%rax
	movq %rax,48(%rbp)
	movq 40(%rbp),%rax
	movq %rax,16(%rbp)
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 56(%rbp),%rax
	movq %rax,24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,56(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziPlayer_mkPlayerzuzdsplayerKeyUpdateTailSafe_info
.LcMXb:
	movq $40,192(%r13)
.LcMX9:
	jmp *-16(%r13)
	.size sLIt_info, .-sLIt_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNx_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMNx_info:
.LcMXw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMXx
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sLIt_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLIt_info
	jmp *(%rbx)
.LcMXx:
	movl $rLu6_closure,%ebx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMNx_info, .-sMNx_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNy_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sMNy_info:
.LcMXN:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 7(%rbx),%rbx
	movq $sMNx_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMNx_info
	jmp *(%rbx)
	.size sMNy_info, .-sMNy_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMNu_info)+0
	.long	0
	.quad	135
	.quad	12884901920
sMNu_info:
.LcMXX:
	andq $7,%rbx
	cmpq $2,%rbx
	jne .LcMXY
	movq 56(%rbp),%rbx
	movq $sMNy_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne sMNy_info
	jmp *(%rbx)
.LcMXY:
	incq UNKNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	movq 56(%rbp),%r14
	movq $sMNt_info,16(%rbp)
	addq $16,%rbp
	jmp stg_ap_p_fast
	.size sMNu_info, .-sMNu_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMN6_info)+0
	.long	0
	.quad	7
	.quad	12884901920
sMN6_info:
.LcMY8:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcMYd
	movq 16(%rbp),%rbx
	movq $sMN5_info,0(%rbp)
	testq $7,%rbx
	jne sMN5_info
	jmp *(%rbx)
.LcMY9:
	movq 16(%rbp),%rbx
	movq $sMNu_info,0(%rbp)
	testq $7,%rbx
	jne sMNu_info
	jmp *(%rbx)
.LcMYd:
	cmpq $3,%rbx
	jae .LcMY9
	movq 16(%rbp),%rbx
	movq $sMNl_info,0(%rbp)
	testq $7,%rbx
	jne sMNl_info
	jmp *(%rbx)
	.size sMN6_info, .-sMN6_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMN8_info)+0
	.long	0
	.quad	5
	.quad	12884901920
sMN8_info:
.LcMYn:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sMN6_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMN6_info
	jmp *(%rbx)
	.size sMN8_info, .-sMN8_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMMW_info)+0
	.long	0
	.quad	4
	.quad	12884901920
sMMW_info:
.LcMYx:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcMYy
	movq 32(%rbp),%rbx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcMYy:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sMN8_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sMN8_info
	jmp *(%rbx)
	.size sMMW_info, .-sMMW_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMMX_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sMMX_info:
.LcMYJ:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sMMW_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sMMW_info
	jmp *(%rbx)
	.size sMMX_info, .-sMMX_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(sMMV_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sMMV_info:
.LcMYT:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcMYU
	movq 47(%rbx),%rbx
	movq $sMMX_info,0(%rbp)
	testq $7,%rbx
	jne sMMX_info
	jmp *(%rbx)
.LcMYU:
	movl $rLu8_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sMMV_info, .-sMMV_info
.text
	.align 8
	.long	EngineziObjectziPlayer_playerKeyUpdateTailSafe_srt-(EngineziObjectziPlayer_playerKeyUpdateTailSafe_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	30064771087
.globl EngineziObjectziPlayer_playerKeyUpdateTailSafe_info
.type EngineziObjectziPlayer_playerKeyUpdateTailSafe_info, @object
EngineziObjectziPlayer_playerKeyUpdateTailSafe_info:
.LcMZ3:
	leaq -104(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMZ5
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct
	je .LcMZ6
.LcMZ7:
	incq EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sMMV_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sMMV_info
	jmp *(%rbx)
.LcMZ5:
	movl $EngineziObjectziPlayer_playerKeyUpdateTailSafe_closure,%ebx
	jmp *-8(%r13)
.LcMZ6:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct+56
	movq $EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_playerKeyUpdateTailSafe_ct
	jmp .LcMZ7
	.size EngineziObjectziPlayer_playerKeyUpdateTailSafe_info, .-EngineziObjectziPlayer_playerKeyUpdateTailSafe_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer41_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer41_closure
.type EngineziObjectziPlayer_mkPlayer41_closure, @object
EngineziObjectziPlayer_mkPlayer41_closure:
	.quad	EngineziObjectziPlayer_mkPlayer41_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMZo_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	50
	.byte	52
	.byte	48
	.byte	58
	.byte	49
	.byte	54
	.byte	45
	.byte	55
	.byte	50
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
	.long	EngineziObjectziPlayer_mkPlayer41_srt-(EngineziObjectziPlayer_mkPlayer41_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziObjectziPlayer_mkPlayer41_info
.type EngineziObjectziPlayer_mkPlayer41_info, @object
EngineziObjectziPlayer_mkPlayer41_info:
.LcMZs:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMZu
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMZw
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
	je .LcMZx
.LcMZy:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMZo_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcMZw:
	movq $16,192(%r13)
.LcMZu:
	jmp *-16(%r13)
.LcMZx:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer41_info, .-EngineziObjectziPlayer_mkPlayer41_info
.data
	.align 8
.align 1
rLu9_closure:
	.quad	rLu9_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cMZN_str:
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
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
	.byte	86
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
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
rLu9_info:
.LcMZR:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcMZT
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcMZV
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
	je .LcMZW
.LcMZX:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cMZN_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcMZV:
	movq $16,192(%r13)
.LcMZT:
	jmp *-16(%r13)
.LcMZW:
	jmp *(%rbx)
	.size rLu9_info, .-rLu9_info
.section .data
	.align 8
.align 1
rLua_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rLu9_closure
.data
	.align 8
.align 1
rLua_closure:
	.quad	rLua_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rLua_srt-(rLua_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rLua_info:
.LcN0e:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcN0g
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcN0i
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
	je .LcN0j
.LcN0k:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rLu9_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcN0i:
	movq $16,192(%r13)
.LcN0g:
	jmp *-16(%r13)
.LcN0j:
	jmp *(%rbx)
	.size rLua_info, .-rLua_info
.section .data
	.align 8
.align 1
rLub_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer19_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
.data
	.align 8
.align 1
rLub_closure:
	.quad	rLub_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rLub_srt-(rLub_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rLub_info:
.LcN0B:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcN0D
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcN0F
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
	je .LcN0G
.LcN0H:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $EngineziObjectziPlayer_mkPlayer19_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcN0F:
	movq $16,192(%r13)
.LcN0D:
	jmp *-16(%r13)
.LcN0G:
	jmp *(%rbx)
	.size rLub_info, .-rLub_info
.data
	.align 8
.align 1
rLuc_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	191
	.long	0
.data
	.align 8
.align 1
rLud_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	20
.section .data
	.align 8
.align 1
rLue_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
	.quad	rLud_closure
.data
	.align 8
.align 1
rLue_closure:
	.quad	rLue_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sN0S_info:
.LcN1d:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcN1j
	addq $6,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LnN1k(%rip),%xmm0
	xorps %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm1,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcN1j:
	movq $48,192(%r13)
.LcN1h:
	jmp *-16(%r13)
	.size sN0S_info, .-sN0S_info
.section .rodata
	.align 8
.align 4
.LnN1k:
	.long	-2147483648
.text
	.align 8
	.long	rLue_srt-(rLue_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rLue_info:
.LcN1q:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcN1s
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcN1u
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
	je .LcN1v
.LcN1w:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $rLud_closure+1,%esi
	movq $sN0S_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcN1u:
	movq $16,192(%r13)
.LcN1s:
	jmp *-16(%r13)
.LcN1v:
	jmp *(%rbx)
	.size rLue_info, .-rLue_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_applyGravityVelocity_srt:
	.quad	EngineziObjectziGameObject_zdwmoveObjectSafe_closure
	.quad	rLua_closure
	.quad	rLub_closure
	.quad	rLue_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_applyGravityVelocity_closure
.type EngineziObjectziPlayer_applyGravityVelocity_closure, @object
EngineziObjectziPlayer_applyGravityVelocity_closure:
	.quad	EngineziObjectziPlayer_applyGravityVelocity_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNas_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
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
	.byte	86
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	119
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNau_str:
	.byte	83
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_applyGravityVelocity_ct
.type EngineziObjectziPlayer_applyGravityVelocity_ct, @object
EngineziObjectziPlayer_applyGravityVelocity_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cNas_str
	.quad	cNau_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	398221
	.quad	32
sLJn_info:
.LcNaz:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNaF
	addq $11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq %rbx,-64(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 88(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
.LcNaF:
	movq $88,192(%r13)
.LcNaD:
	jmp *-16(%r13)
	.size sLJn_info, .-sLJn_info
.text
	.align 8
	.quad	398221
	.quad	32
sN27_info:
.LcNaQ:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcNaU
	addq $2,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 96(%rbp),%xmm0
	subss (%rax),%xmm0
	ucomiss .LnNb0(%rip),%xmm0
	jp .LnNb1
	jbe .LcNaX
.LnNb1:
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	movq $sLJn_info,0(%rbp)
	jmp sLJn_info
.LcNaU:
	movq $16,192(%r13)
.LcNaS:
	jmp *-16(%r13)
.LcNaX:
	movl $rLuc_closure+1,%ebx
	movq $sLJn_info,0(%rbp)
	addq $-16,%r12
	addq $-2,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-2,ALLOC_HEAP_tot
	jmp sLJn_info
	.size sN27_info, .-sN27_info
.section .rodata
	.align 8
.align 4
.LnNb0:
	.byte	0
	.byte	0
	.byte	128
	.byte	191
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sLJt_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sLJt_info:
.LcNb4:
	movl $rLub_closure,%ebx
	movq $sN27_info,0(%rbp)
	testq $7,%rbx
	jne sN27_info
	jmp *(%rbx)
	.size sLJt_info, .-sLJt_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2g_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2g_info:
.LcNba:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNbe
	addq $11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	jp .LnNbn
	je .LcNbg
.LnNbn:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNbe:
	movq $88,192(%r13)
.LcNbc:
	jmp *-16(%r13)
.LcNbg:
	movss 32(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnNbp
	je .LcNbi
.LnNbp:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNbi:
	movss 7(%rbx),%xmm0
	ucomiss 104(%rbp),%xmm0
	jp .LnNbr
	je .LcNbl
.LnNbr:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNbl:
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 88(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
	.size sN2g_info, .-sN2g_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2h_info)+16
	.long	0
	.quad	397709
	.quad	4294967328
sN2h_info:
.LcNbC:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sN2g_info,0(%rbp)
	testq $7,%rbx
	jne sN2g_info
	jmp *(%rbx)
	.size sN2h_info, .-sN2h_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2i_info)+16
	.long	0
	.quad	393613
	.quad	4294967328
sN2i_info:
.LcNbL:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sN2h_info,0(%rbp)
	testq $7,%rbx
	jne sN2h_info
	jmp *(%rbx)
	.size sN2i_info, .-sN2i_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2j_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2j_info:
.LcNbU:
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 15(%rbx),%rax
	movq %rax,56(%rbp)
	movq 7(%rbx),%rbx
	movq $sN2i_info,0(%rbp)
	testq $7,%rbx
	jne sN2i_info
	jmp *(%rbx)
	.size sN2j_info, .-sN2j_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2p_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2p_info:
.LcNc2:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNc6
	addq $11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	jp .LnNcf
	je .LcNc8
.LnNcf:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNc6:
	movq $88,192(%r13)
.LcNc4:
	jmp *-16(%r13)
.LcNc8:
	movss 32(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnNch
	je .LcNca
.LnNch:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNca:
	movss 7(%rbx),%xmm0
	ucomiss 104(%rbp),%xmm0
	jp .LnNcj
	je .LcNcd
.LnNcj:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNcd:
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 88(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
	.size sN2p_info, .-sN2p_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2q_info)+16
	.long	0
	.quad	397709
	.quad	4294967328
sN2q_info:
.LcNcu:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sN2p_info,0(%rbp)
	testq $7,%rbx
	jne sN2p_info
	jmp *(%rbx)
	.size sN2q_info, .-sN2q_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2r_info)+16
	.long	0
	.quad	393613
	.quad	4294967328
sN2r_info:
.LcNcD:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sN2q_info,0(%rbp)
	testq $7,%rbx
	jne sN2q_info
	jmp *(%rbx)
	.size sN2r_info, .-sN2r_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2s_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2s_info:
.LcNcM:
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 15(%rbx),%rax
	movq %rax,56(%rbp)
	movq 7(%rbx),%rbx
	movq $sN2r_info,0(%rbp)
	testq $7,%rbx
	jne sN2r_info
	jmp *(%rbx)
	.size sN2s_info, .-sN2s_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2w_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2w_info:
.LcNcU:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNcY
	addq $11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	jp .LnNd7
	je .LcNd0
.LnNd7:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNcY:
	movq $88,192(%r13)
.LcNcW:
	jmp *-16(%r13)
.LcNd0:
	movss 32(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnNd9
	je .LcNd2
.LnNd9:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNd2:
	movss 7(%rbx),%xmm0
	ucomiss 104(%rbp),%xmm0
	jp .LnNdb
	je .LcNd5
.LnNdb:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNd5:
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 88(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
	.size sN2w_info, .-sN2w_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2x_info)+16
	.long	0
	.quad	397709
	.quad	4294967328
sN2x_info:
.LcNdm:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sN2w_info,0(%rbp)
	testq $7,%rbx
	jne sN2w_info
	jmp *(%rbx)
	.size sN2x_info, .-sN2x_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2y_info)+16
	.long	0
	.quad	393613
	.quad	4294967328
sN2y_info:
.LcNdv:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sN2x_info,0(%rbp)
	testq $7,%rbx
	jne sN2x_info
	jmp *(%rbx)
	.size sN2y_info, .-sN2y_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2z_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2z_info:
.LcNdE:
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 15(%rbx),%rax
	movq %rax,56(%rbp)
	movq 7(%rbx),%rbx
	movq $sN2y_info,0(%rbp)
	testq $7,%rbx
	jne sN2y_info
	jmp *(%rbx)
	.size sN2z_info, .-sN2z_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2k_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2k_info:
.LcNdO:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcNdT
	movq 7(%rbx),%rbx
	movq $sN2j_info,0(%rbp)
	testq $7,%rbx
	jne sN2j_info
	jmp *(%rbx)
.LcNdP:
	movq 5(%rbx),%rbx
	movq $sN2z_info,0(%rbp)
	testq $7,%rbx
	jne sN2z_info
	jmp *(%rbx)
.LcNdT:
	cmpq $3,%rax
	jae .LcNdP
	movq 6(%rbx),%rbx
	movq $sN2s_info,0(%rbp)
	testq $7,%rbx
	jne sN2s_info
	jmp *(%rbx)
	.size sN2k_info, .-sN2k_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2l_info)+0
	.long	0
	.quad	394125
	.quad	55834574880
sN2l_info:
.LcNe3:
	incq KNOWN_CALL_ctr
	movq $rLue_closure,-8(%rbp)
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	movq 56(%rbp),%r9
	movq $sN2k_info,0(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSafe_info
	.size sN2l_info, .-sN2l_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2E_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2E_info:
.LcNe6:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNea
	addq $11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	jp .LnNej
	je .LcNec
.LnNej:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNea:
	movq $88,192(%r13)
.LcNe8:
	jmp *-16(%r13)
.LcNec:
	movss 32(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnNel
	je .LcNee
.LnNel:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNee:
	movss 7(%rbx),%xmm0
	ucomiss 104(%rbp),%xmm0
	jp .LnNen
	je .LcNeh
.LnNen:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNeh:
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 88(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
	.size sN2E_info, .-sN2E_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2F_info)+16
	.long	0
	.quad	397709
	.quad	4294967328
sN2F_info:
.LcNey:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sN2E_info,0(%rbp)
	testq $7,%rbx
	jne sN2E_info
	jmp *(%rbx)
	.size sN2F_info, .-sN2F_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2G_info)+16
	.long	0
	.quad	393613
	.quad	4294967328
sN2G_info:
.LcNeH:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sN2F_info,0(%rbp)
	testq $7,%rbx
	jne sN2F_info
	jmp *(%rbx)
	.size sN2G_info, .-sN2G_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2H_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2H_info:
.LcNeQ:
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 15(%rbx),%rax
	movq %rax,56(%rbp)
	movq 7(%rbx),%rbx
	movq $sN2G_info,0(%rbp)
	testq $7,%rbx
	jne sN2G_info
	jmp *(%rbx)
	.size sN2H_info, .-sN2H_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2M_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2M_info:
.LcNeY:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNf2
	addq $11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	jp .LnNfb
	je .LcNf4
.LnNfb:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNf2:
	movq $88,192(%r13)
.LcNf0:
	jmp *-16(%r13)
.LcNf4:
	movss 32(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnNfd
	je .LcNf6
.LnNfd:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNf6:
	movss 7(%rbx),%xmm0
	ucomiss 104(%rbp),%xmm0
	jp .LnNff
	je .LcNf9
.LnNff:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNf9:
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 88(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
	.size sN2M_info, .-sN2M_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2N_info)+16
	.long	0
	.quad	397709
	.quad	4294967328
sN2N_info:
.LcNfq:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sN2M_info,0(%rbp)
	testq $7,%rbx
	jne sN2M_info
	jmp *(%rbx)
	.size sN2N_info, .-sN2N_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2O_info)+16
	.long	0
	.quad	393613
	.quad	4294967328
sN2O_info:
.LcNfz:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sN2N_info,0(%rbp)
	testq $7,%rbx
	jne sN2N_info
	jmp *(%rbx)
	.size sN2O_info, .-sN2O_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2P_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2P_info:
.LcNfI:
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 15(%rbx),%rax
	movq %rax,56(%rbp)
	movq 7(%rbx),%rbx
	movq $sN2O_info,0(%rbp)
	testq $7,%rbx
	jne sN2O_info
	jmp *(%rbx)
	.size sN2P_info, .-sN2P_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2T_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2T_info:
.LcNfQ:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNfU
	addq $11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movss 56(%rbp),%xmm0
	ucomiss 24(%rbp),%xmm0
	jp .LnNg3
	je .LcNfW
.LnNg3:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNfU:
	movq $88,192(%r13)
.LcNfS:
	jmp *-16(%r13)
.LcNfW:
	movss 32(%rbp),%xmm0
	ucomiss 16(%rbp),%xmm0
	jp .LnNg5
	je .LcNfY
.LnNg5:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNfY:
	movss 7(%rbx),%xmm0
	ucomiss 104(%rbp),%xmm0
	jp .LnNg7
	je .LcNg1
.LnNg7:
	addq $-88,%r12
	addq $-11,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $-11,ALLOC_HEAP_tot
	jmp sLJt_info
.LcNg1:
	movq $EngineziCoreziVec_Vec3_con_info,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-64(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 88(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -79(%r12),%rax
	movq %rax,-24(%r12)
	movq 80(%rbp),%rax
	movq %rax,-16(%r12)
	movq 72(%rbp),%rax
	movq %rax,-8(%r12)
	movq 64(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
	.size sN2T_info, .-sN2T_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2U_info)+16
	.long	0
	.quad	397709
	.quad	4294967328
sN2U_info:
.LcNgi:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sN2T_info,0(%rbp)
	testq $7,%rbx
	jne sN2T_info
	jmp *(%rbx)
	.size sN2U_info, .-sN2U_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2V_info)+16
	.long	0
	.quad	393613
	.quad	4294967328
sN2V_info:
.LcNgr:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sN2U_info,0(%rbp)
	testq $7,%rbx
	jne sN2U_info
	jmp *(%rbx)
	.size sN2V_info, .-sN2V_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2W_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2W_info:
.LcNgA:
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 15(%rbx),%rax
	movq %rax,56(%rbp)
	movq 7(%rbx),%rbx
	movq $sN2V_info,0(%rbp)
	testq $7,%rbx
	jne sN2V_info
	jmp *(%rbx)
	.size sN2W_info, .-sN2W_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2I_info)+16
	.long	0
	.quad	398221
	.quad	4294967328
sN2I_info:
.LcNgK:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcNgP
	movq 7(%rbx),%rbx
	movq $sN2H_info,0(%rbp)
	testq $7,%rbx
	jne sN2H_info
	jmp *(%rbx)
.LcNgL:
	movq 5(%rbx),%rbx
	movq $sN2W_info,0(%rbp)
	testq $7,%rbx
	jne sN2W_info
	jmp *(%rbx)
.LcNgP:
	cmpq $3,%rax
	jae .LcNgL
	movq 6(%rbx),%rbx
	movq $sN2P_info,0(%rbp)
	testq $7,%rbx
	jne sN2P_info
	jmp *(%rbx)
	.size sN2I_info, .-sN2I_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2C_info)+0
	.long	0
	.quad	393613
	.quad	21474836512
sN2C_info:
.LcNgZ:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcNh3
	addq $4,EngineziObjectziPlayer_applyGravityVelocity_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -23(%r12),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	movq 56(%rbp),%r9
	movq $sN2I_info,0(%rbp)
	addq $-8,%rbp
	jmp EngineziObjectziGameObject_zdwmoveObjectSafe_info
.LcNh3:
	movq $32,192(%r13)
.LcNh1:
	jmp *-16(%r13)
	.size sN2C_info, .-sN2C_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN28_info)+0
	.long	0
	.quad	131469
	.quad	55834574880
sN28_info:
.LcNh8:
	movss 96(%rbp),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .LnNhp
	jb .LcNha
.LnNhp:
	movss 96(%rbp),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp sLJt_info
	je .LcNhf
	jmp sLJt_info
.LcNha:
	movq 104(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,104(%rbp)
	movq %rax,%rbx
	movq $sN2C_info,0(%rbp)
	testq $7,%rbx
	jne sN2C_info
	jmp *(%rbx)
.LcNhf:
	movq 104(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,104(%rbp)
	movq %rax,%rbx
	movq $sN2l_info,0(%rbp)
	testq $7,%rbx
	jne sN2l_info
	jmp *(%rbx)
	.size sN28_info, .-sN28_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN29_info)+0
	.long	0
	.quad	131341
	.quad	55834574880
sN29_info:
.LcNhx:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sN28_info,0(%rbp)
	testq $7,%rbx
	jne sN28_info
	jmp *(%rbx)
	.size sN29_info, .-sN29_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2a_info)+0
	.long	0
	.quad	131085
	.quad	55834574880
sN2a_info:
.LcNhG:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sN29_info,0(%rbp)
	testq $7,%rbx
	jne sN29_info
	jmp *(%rbx)
	.size sN2a_info, .-sN2a_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sLJk_info)+0
	.long	0
	.quad	16394
	.quad	55834574880
sLJk_info:
.LcNhP:
	movq %rbx,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sN2a_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sN2a_info
	jmp *(%rbx)
	.size sLJk_info, .-sLJk_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sLL9_info)+0
	.long	0
	.quad	9
	.quad	55834574880
sLL9_info:
.LcNhX:
	movq %rbx,0(%rbp)
	movq 64(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,64(%rbp)
	movq %rax,%rbx
	movq $sLJk_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sLJk_info
	jmp *(%rbx)
	.size sLL9_info, .-sLL9_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sN2b_info)+0
	.long	0
	.quad	7
	.quad	55834574880
sN2b_info:
.LcNi6:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sLL9_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLL9_info
	jmp *(%rbx)
	.size sN2b_info, .-sN2b_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(sLJG_info)+0
	.long	0
	.quad	1
	.quad	64424509472
sLJG_info:
.LcNif:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNig
	movq %rbx,-40(%rbp)
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sN2b_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne sN2b_info
	jmp *(%rbx)
.LcNig:
	movl $rLua_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sLJG_info, .-sLJG_info
.text
	.align 8
	.long	EngineziObjectziPlayer_applyGravityVelocity_srt-(EngineziObjectziPlayer_applyGravityVelocity_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	64424509455
.globl EngineziObjectziPlayer_applyGravityVelocity_info
.type EngineziObjectziPlayer_applyGravityVelocity_info, @object
EngineziObjectziPlayer_applyGravityVelocity_info:
.LcNiu:
	leaq -120(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNiw
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_applyGravityVelocity_ct
	je .LcNix
.LcNiy:
	incq EngineziObjectziPlayer_applyGravityVelocity_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $sLJG_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLJG_info
	jmp *(%rbx)
.LcNiw:
	movl $EngineziObjectziPlayer_applyGravityVelocity_closure,%ebx
	jmp *-8(%r13)
.LcNix:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_applyGravityVelocity_ct+56
	movq $EngineziObjectziPlayer_applyGravityVelocity_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_applyGravityVelocity_ct
	jmp .LcNiy
	.size EngineziObjectziPlayer_applyGravityVelocity_info, .-EngineziObjectziPlayer_applyGravityVelocity_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer22_srt:
	.quad	base_ControlziExceptionziBase_patError_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer22_closure
.type EngineziObjectziPlayer_mkPlayer22_closure, @object
EngineziObjectziPlayer_mkPlayer22_closure:
	.quad	EngineziObjectziPlayer_mkPlayer22_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cNiP_str:
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	40
	.byte	57
	.byte	52
	.byte	44
	.byte	57
	.byte	41
	.byte	45
	.byte	40
	.byte	57
	.byte	53
	.byte	44
	.byte	53
	.byte	57
	.byte	41
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
	.long	EngineziObjectziPlayer_mkPlayer22_srt-(EngineziObjectziPlayer_mkPlayer22_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziObjectziPlayer_mkPlayer22_info
.type EngineziObjectziPlayer_mkPlayer22_info, @object
EngineziObjectziPlayer_mkPlayer22_info:
.LcNiT:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNiV
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcNiX
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
	je .LcNiY
.LcNiZ:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cNiP_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_patError_info
.LcNiX:
	movq $16,192(%r13)
.LcNiV:
	jmp *-16(%r13)
.LcNiY:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer22_info, .-EngineziObjectziPlayer_mkPlayer22_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer16_closure
.type EngineziObjectziPlayer_mkPlayer16_closure, @object
EngineziObjectziPlayer_mkPlayer16_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	5
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer15_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer16_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer15_closure
.type EngineziObjectziPlayer_mkPlayer15_closure, @object
EngineziObjectziPlayer_mkPlayer15_closure:
	.quad	EngineziObjectziPlayer_mkPlayer15_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sLMt_info:
.LcNjo:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcNju
	addq $4,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-16(%r12)
	movq %rbx,-8(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,0(%r12)
	leaq -23(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcNju:
	movq $32,192(%r13)
.LcNjs:
	jmp *-16(%r13)
	.size sLMt_info, .-sLMt_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer15_srt-(EngineziObjectziPlayer_mkPlayer15_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziObjectziPlayer_mkPlayer15_info
.type EngineziObjectziPlayer_mkPlayer15_info, @object
EngineziObjectziPlayer_mkPlayer15_info:
.LcNjy:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNjA
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcNjC
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
	je .LcNjD
.LcNjE:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $EngineziObjectziPlayer_mkPlayer16_closure+1,%esi
	movq $sLMt_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcNjC:
	movq $16,192(%r13)
.LcNjA:
	jmp *-16(%r13)
.LcNjD:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer15_info, .-EngineziObjectziPlayer_mkPlayer15_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer18_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer19_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer18_closure
.type EngineziObjectziPlayer_mkPlayer18_closure, @object
EngineziObjectziPlayer_mkPlayer18_closure:
	.quad	EngineziObjectziPlayer_mkPlayer18_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer18_srt-(EngineziObjectziPlayer_mkPlayer18_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziObjectziPlayer_mkPlayer18_info
.type EngineziObjectziPlayer_mkPlayer18_info, @object
EngineziObjectziPlayer_mkPlayer18_info:
.LcNjV:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNjX
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcNjZ
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
	je .LcNk0
.LcNk1:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $EngineziObjectziPlayer_mkPlayer19_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcNjZ:
	movq $16,192(%r13)
.LcNjX:
	jmp *-16(%r13)
.LcNk0:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer18_info, .-EngineziObjectziPlayer_mkPlayer18_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer50_closure
.type EngineziObjectziPlayer_mkPlayer50_closure, @object
EngineziObjectziPlayer_mkPlayer50_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	160
	.byte	65
	.long	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer49_closure
.type EngineziObjectziPlayer_mkPlayer49_closure, @object
EngineziObjectziPlayer_mkPlayer49_closure:
	.quad	EngineziCoreziVec_Vec3_static_info
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer50_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer48_closure
.type EngineziObjectziPlayer_mkPlayer48_closure, @object
EngineziObjectziPlayer_mkPlayer48_closure:
	.quad	EngineziCoreziVec_Vec3_static_info
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer47_closure
.type EngineziObjectziPlayer_mkPlayer47_closure, @object
EngineziObjectziPlayer_mkPlayer47_closure:
	.quad	EngineziCoreziVec_Vec3_static_info
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer46_closure
.type EngineziObjectziPlayer_mkPlayer46_closure, @object
EngineziObjectziPlayer_mkPlayer46_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	160
	.byte	64
	.long	0
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer32_srt:
	.quad	EngineziCoreziWorld_playerSpeed1_closure
	.quad	EngineziCoreziWorld_playerInput1_closure
	.quad	EngineziObjectziPlayer_mkPlayer33_closure
	.quad	EngineziObjectziPlayer_mkPlayer40_closure
	.quad	EngineziObjectziPlayer_applyGravityVelocity_closure
	.quad	EngineziObjectziPlayer_mkPlayer41_closure
	.quad	EngineziObjectziPlayer_playerKeyUpdateTailSafe_closure
	.quad	EngineziObjectziPlayer_playerMouseUpdate_closure
	.quad	EngineziObjectziPlayer_zdwmoveWithStep_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer32_closure
.type EngineziObjectziPlayer_mkPlayer32_closure, @object
EngineziObjectziPlayer_mkPlayer32_closure:
	.quad	EngineziObjectziPlayer_mkPlayer32_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNn8_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	51
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNnb_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer32_ct
.type EngineziObjectziPlayer_mkPlayer32_ct, @object
EngineziObjectziPlayer_mkPlayer32_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNn8_str
	.quad	cNnb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkI_info)+16
	.long	0
	.quad	10633
	.quad	4294967328
sNkI_info:
.LcNoq:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNor
	addq $128,%r12
	cmpq 144(%r13),%r12
	ja .LcNoy
	addq $16,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $16,ALLOC_HEAP_tot
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-112(%r12)
	movq 8(%rbp),%rax
	movq %rax,-104(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 7(%rbx),%rax
	movq %rax,-80(%r12)
	movq 15(%rbx),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 72(%rbp),%rax
	movq %rax,-56(%r12)
	movq 39(%rbx),%rax
	movq %rax,-48(%r12)
	movq 47(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 56(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq 32(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $80,%rbp
	jmp *0(%rbp)
.LcNor:
	movl $EngineziObjectziPlayer_mkPlayer33_closure,%ebx
	addq $80,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcNoy:
	movq $128,192(%r13)
.LcNow:
	jmp *-16(%r13)
	.size sNkI_info, .-sNkI_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkJ_info)+16
	.long	0
	.quad	393
	.quad	279172874272
sNkJ_info:
.LcNoP:
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq 64(%rbp),%rsi
	movss 24(%rbp),%xmm1
	movss 16(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	movq $sNkI_info,0(%rbp)
	jmp EngineziObjectziPlayer_zdwmoveWithStep_info
	.size sNkJ_info, .-sNkJ_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLOk_info)+16
	.long	0
	.quad	136
	.quad	279172874272
sLOk_info:
.LcNoS:
	movq %rbx,0(%rbp)
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sNkJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNkJ_info
	jmp *(%rbx)
	.size sLOk_info, .-sLOk_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkK_info)+16
	.long	0
	.quad	8
	.quad	279172874272
sNkK_info:
.LcNp1:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sLOk_info,0(%rbp)
	testq $7,%rbx
	jne sLOk_info
	jmp *(%rbx)
	.size sNkK_info, .-sNkK_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkL_info)+16
	.long	0
	.quad	6
	.quad	279172874272
sNkL_info:
.LcNpa:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNkK_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sNkK_info
	jmp *(%rbx)
	.size sNkL_info, .-sNkL_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLO6_info)+16
	.long	0
	.quad	1030
	.quad	287762808864
sLO6_info:
.LcNpj:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNpk
	movq %rbx,40(%rbp)
	movq 23(%rbx),%rbx
	movq $sNkL_info,0(%rbp)
	testq $7,%rbx
	jne sNkL_info
	jmp *(%rbx)
.LcNpk:
	movl $EngineziObjectziPlayer_mkPlayer40_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sLO6_info, .-sLO6_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkH_info)+8
	.long	0
	.quad	10
	.quad	614180323360
sNkH_info:
.LcNpu:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNpv
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcNpz
	addq $7,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 72(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 47(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 56(%rbp),%r14
	leaq -47(%r12),%rsi
	movq $sLO6_info,32(%rbp)
	addq $32,%rbp
	jmp EngineziObjectziPlayer_applyGravityVelocity_info
.LcNpv:
	movl $EngineziCoreziWorld_playerInput1_closure,%ebx
	addq $88,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcNpz:
	movq $56,192(%r13)
.LcNpx:
	jmp *-16(%r13)
	.size sNkH_info, .-sNkH_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkF_info)+8
	.long	0
	.quad	6
	.quad	682899800096
sNkF_info:
.LcNpM:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNpN
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 40(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $sNkH_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sNkH_info
	jmp *(%rbx)
.LcNpN:
	movl $EngineziObjectziPlayer_mkPlayer41_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNkF_info, .-sNkF_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkG_info)+8
	.long	0
	.quad	132
	.quad	682899800096
sNkG_info:
.LcNq3:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rbx
	movq $sNkF_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sNkF_info
	jmp *(%rbx)
	.size sNkG_info, .-sNkG_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLNb_info)+8
	.long	0
	.quad	134
	.quad	820338753568
sLNb_info:
.LcNqc:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcNqg
	addq $5,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 40(%rbp),%rax
	movq %rax,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,40(%rbp)
	leaq -31(%r12),%r14
	movq %rbx,%rsi
	movq $sNkG_info,16(%rbp)
	addq $16,%rbp
	jmp EngineziObjectziPlayer_playerKeyUpdateTailSafe_info
.LcNqg:
	movq $40,192(%r13)
.LcNqe:
	jmp *-16(%r13)
	.size sLNb_info, .-sLNb_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLOm_info)+8
	.long	0
	.quad	2058
	.quad	1095216660512
sLOm_info:
.LcNqm:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcNqq
	addq $9,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	mulss 48(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-64(%r12)
	movss %xmm0,-56(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 80(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	leaq -63(%r12),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,80(%rbp)
	leaq -47(%r12),%r14
	movq $sLNb_info,32(%rbp)
	addq $32,%rbp
	jmp EngineziObjectziPlayer_playerMouseUpdate_info
.LcNqq:
	movq $72,192(%r13)
.LcNqo:
	jmp *-16(%r13)
	.size sLOm_info, .-sLOm_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkh_info)+0
	.long	0
	.quad	2182
	.quad	2194728288288
sNkh_info:
.LcNqB:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNqC
	movq 47(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rax
	movq %rax,48(%rbp)
	movq 31(%rbx),%rbx
	movq $sLOm_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLOm_info
	jmp *(%rbx)
.LcNqC:
	movl $EngineziCoreziWorld_playerSpeed1_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNkh_info, .-sNkh_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNl8_info)+16
	.long	0
	.quad	10633
	.quad	4294967328
sNl8_info:
.LcNrJ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNrK
	addq $128,%r12
	cmpq 144(%r13),%r12
	ja .LcNrR
	addq $16,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $16,ALLOC_HEAP_tot
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-112(%r12)
	movq 8(%rbp),%rax
	movq %rax,-104(%r12)
	movq $EngineziObjectziPlayer_mkPlayer2_closure+1,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 7(%rbx),%rax
	movq %rax,-80(%r12)
	movq 15(%rbx),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 72(%rbp),%rax
	movq %rax,-56(%r12)
	movq 39(%rbx),%rax
	movq %rax,-48(%r12)
	movq 47(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 56(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq 32(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $80,%rbp
	jmp *0(%rbp)
.LcNrK:
	movl $EngineziObjectziPlayer_mkPlayer33_closure,%ebx
	addq $80,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcNrR:
	movq $128,192(%r13)
.LcNrP:
	jmp *-16(%r13)
	.size sNl8_info, .-sNl8_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNl9_info)+16
	.long	0
	.quad	393
	.quad	279172874272
sNl9_info:
.LcNs8:
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq 64(%rbp),%rsi
	movss 24(%rbp),%xmm1
	movss 16(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	movq $sNl8_info,0(%rbp)
	jmp EngineziObjectziPlayer_zdwmoveWithStep_info
	.size sNl9_info, .-sNl9_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLPV_info)+16
	.long	0
	.quad	136
	.quad	279172874272
sLPV_info:
.LcNsb:
	movq %rbx,0(%rbp)
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sNl9_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNl9_info
	jmp *(%rbx)
	.size sLPV_info, .-sLPV_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNla_info)+16
	.long	0
	.quad	8
	.quad	279172874272
sNla_info:
.LcNsk:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sLPV_info,0(%rbp)
	testq $7,%rbx
	jne sLPV_info
	jmp *(%rbx)
	.size sNla_info, .-sNla_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNlb_info)+16
	.long	0
	.quad	6
	.quad	279172874272
sNlb_info:
.LcNst:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNla_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sNla_info
	jmp *(%rbx)
	.size sNlb_info, .-sNlb_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLPH_info)+16
	.long	0
	.quad	1030
	.quad	287762808864
sLPH_info:
.LcNsC:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNsD
	movq %rbx,40(%rbp)
	movq 23(%rbx),%rbx
	movq $sNlb_info,0(%rbp)
	testq $7,%rbx
	jne sNlb_info
	jmp *(%rbx)
.LcNsD:
	movl $EngineziObjectziPlayer_mkPlayer40_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sLPH_info, .-sLPH_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNl7_info)+8
	.long	0
	.quad	10
	.quad	614180323360
sNl7_info:
.LcNsN:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNsO
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcNsS
	addq $7,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 72(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 47(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 56(%rbp),%r14
	leaq -47(%r12),%rsi
	movq $sLPH_info,32(%rbp)
	addq $32,%rbp
	jmp EngineziObjectziPlayer_applyGravityVelocity_info
.LcNsO:
	movl $EngineziCoreziWorld_playerInput1_closure,%ebx
	addq $88,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcNsS:
	movq $56,192(%r13)
.LcNsQ:
	jmp *-16(%r13)
	.size sNl7_info, .-sNl7_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNl5_info)+8
	.long	0
	.quad	6
	.quad	682899800096
sNl5_info:
.LcNt5:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNt6
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 40(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $sNl7_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sNl7_info
	jmp *(%rbx)
.LcNt6:
	movl $EngineziObjectziPlayer_mkPlayer41_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNl5_info, .-sNl5_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNl6_info)+8
	.long	0
	.quad	132
	.quad	682899800096
sNl6_info:
.LcNtm:
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rbx
	movq $sNl5_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sNl5_info
	jmp *(%rbx)
	.size sNl6_info, .-sNl6_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLOQ_info)+8
	.long	0
	.quad	134
	.quad	820338753568
sLOQ_info:
.LcNtv:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcNtz
	addq $5,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq 40(%rbp),%rax
	movq %rax,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,40(%rbp)
	leaq -31(%r12),%r14
	movq %rbx,%rsi
	movq $sNl6_info,16(%rbp)
	addq $16,%rbp
	jmp EngineziObjectziPlayer_playerKeyUpdateTailSafe_info
.LcNtz:
	movq $40,192(%r13)
.LcNtx:
	jmp *-16(%r13)
	.size sLOQ_info, .-sLOQ_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLPX_info)+8
	.long	0
	.quad	2058
	.quad	1095216660512
sLPX_info:
.LcNtF:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcNtJ
	addq $9,EngineziObjectziPlayer_mkPlayer32_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	mulss 48(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-64(%r12)
	movss %xmm0,-56(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq 80(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	leaq -63(%r12),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rbx,80(%rbp)
	leaq -47(%r12),%r14
	movq $sLOQ_info,32(%rbp)
	addq $32,%rbp
	jmp EngineziObjectziPlayer_playerMouseUpdate_info
.LcNtJ:
	movq $72,192(%r13)
.LcNtH:
	jmp *-16(%r13)
	.size sLPX_info, .-sLPX_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkM_info)+0
	.long	0
	.quad	2182
	.quad	2194728288288
sNkM_info:
.LcNtU:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNtV
	movq 47(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rax
	movq %rax,48(%rbp)
	movq 31(%rbx),%rbx
	movq $sLPX_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLPX_info
	jmp *(%rbx)
.LcNtV:
	movl $EngineziCoreziWorld_playerSpeed1_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNkM_info, .-sNkM_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNki_info)+0
	.long	0
	.quad	134
	.quad	2194728288288
sNki_info:
.LcNub:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcNuc
	movq 48(%rbp),%rbx
	movq $sNkh_info,0(%rbp)
	testq $7,%rbx
	jne sNkh_info
	jmp *(%rbx)
.LcNuc:
	movq 48(%rbp),%rbx
	movq $sNkM_info,0(%rbp)
	testq $7,%rbx
	jne sNkM_info
	jmp *(%rbx)
	.size sNki_info, .-sNki_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sNkj_info)+0
	.long	0
	.quad	6
	.quad	2194728288288
sNkj_info:
.LcNuo:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sNki_info,0(%rbp)
	testq $7,%rbx
	jne sNki_info
	jmp *(%rbx)
	.size sNkj_info, .-sNkj_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLNe_info)+0
	.long	0
	.quad	4
	.quad	2194728288288
sLNe_info:
.LcNux:
	movq %rbx,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sNkj_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sNkj_info
	jmp *(%rbx)
	.size sLNe_info, .-sLNe_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(sLNC_info)+0
	.long	0
	.quad	0
	.quad	2194728288288
sLNC_info:
.LcNuE:
	movq %rbx,-24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 31(%rbx),%rbx
	movq $sLNe_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sLNe_info
	jmp *(%rbx)
	.size sLNC_info, .-sLNC_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer32_srt-(EngineziObjectziPlayer_mkPlayer32_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	2194728288271
.globl EngineziObjectziPlayer_mkPlayer32_info
.type EngineziObjectziPlayer_mkPlayer32_info, @object
EngineziObjectziPlayer_mkPlayer32_info:
.LcNuN:
	leaq -88(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNuP
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer32_ct
	je .LcNuQ
.LcNuR:
	incq EngineziObjectziPlayer_mkPlayer32_ct+40
	movq %r14,%rbx
	movq $sLNC_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sLNC_info
	jmp *(%rbx)
.LcNuP:
	movl $EngineziObjectziPlayer_mkPlayer32_closure,%ebx
	jmp *-8(%r13)
.LcNuQ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer32_ct+56
	movq $EngineziObjectziPlayer_mkPlayer32_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer32_ct
	jmp .LcNuR
	.size EngineziObjectziPlayer_mkPlayer32_info, .-EngineziObjectziPlayer_mkPlayer32_info
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer31_srt:
	.quad	EngineziObjectziPlayer_mkPlayer25_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer31_closure
.type EngineziObjectziPlayer_mkPlayer31_closure, @object
EngineziObjectziPlayer_mkPlayer31_closure:
	.quad	EngineziObjectziPlayer_mkPlayer31_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNwA_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	51
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	65
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNwD_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer31_ct
.type EngineziObjectziPlayer_mkPlayer31_ct, @object
EngineziObjectziPlayer_mkPlayer31_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNwA_str
	.quad	cNwD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	25356
	.quad	32
sNv1_info:
.LcNxk:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcNxq
	addq $22,EngineziObjectziPlayer_mkPlayer31_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	movss 72(%rbp),%xmm0
	mulss .LnNxr(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	xorps %xmm1,%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,72(%rsp)
	movss 72(%rbp),%xmm0
	subss .LnNxv(%rip),%xmm0
	mulss .LnNxu(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss %xmm0,%xmm1
	movss 64(%rbp),%xmm0
	mulss %xmm1,%xmm0
	movsd 72(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 7(%rbx),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-168(%r12)
	movss %xmm1,-160(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	movss 24(%rbp),%xmm0
	movss %xmm0,-144(%r12)
	movss 72(%rbp),%xmm0
	mulss .LnNxD(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	xorps %xmm1,%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,64(%rsp)
	movss 72(%rbp),%xmm0
	subss .LnNxH(%rip),%xmm0
	mulss .LnNxG(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss %xmm0,%xmm1
	movss 64(%rbp),%xmm0
	mulss %xmm1,%xmm0
	movsd 64(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 32(%rbp),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-136(%r12)
	movss %xmm1,-128(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	leaq -135(%r12),%rax
	movq %rax,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	leaq -167(%r12),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 56(%rbp),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 96(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $104,%rbp
	jmp *0(%rbp)
.LcNxq:
	movq $176,192(%r13)
.LcNxo:
	jmp *-16(%r13)
	.size sNv1_info, .-sNv1_info
.section .rodata
	.align 8
.align 4
.LnNxr:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNxu:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNxv:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.section .rodata
	.align 8
.align 4
.LnNxD:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNxG:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNxH:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.quad	25100
	.quad	32
sNv2_info:
.LcNya:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sNv1_info,0(%rbp)
	testq $7,%rbx
	jne sNv1_info
	jmp *(%rbx)
	.size sNv2_info, .-sNv2_info
.text
	.align 8
	.quad	24588
	.quad	32
sNv3_info:
.LcNyj:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sNv2_info,0(%rbp)
	testq $7,%rbx
	jne sNv2_info
	jmp *(%rbx)
	.size sNv3_info, .-sNv3_info
.text
	.align 8
	.quad	8204
	.quad	32
sNv4_info:
.LcNys:
	movq 72(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,72(%rbp)
	movq %rax,%rbx
	movq $sNv3_info,0(%rbp)
	testq $7,%rbx
	jne sNv3_info
	jmp *(%rbx)
	.size sNv4_info, .-sNv4_info
.text
	.align 8
	.quad	4107
	.quad	32
sLQL_info:
.LcNyB:
	movq %rbx,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sNv4_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNv4_info
	jmp *(%rbx)
	.size sLQL_info, .-sLQL_info
.text
	.align 8
	.quad	10
	.quad	32
sLRy_info:
.LcNyH:
	movq %rbx,0(%rbp)
	movq 48(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,48(%rbp)
	movq %rax,%rbx
	movq $sLQL_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sLQL_info
	jmp *(%rbx)
	.size sLRy_info, .-sLRy_info
.text
	.align 8
	.quad	8
	.quad	32
sNv6_info:
.LcNyQ:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 40(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $sLRy_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLRy_info
	jmp *(%rbx)
	.size sNv6_info, .-sNv6_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer31_srt-(sNuY_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sNuY_info:
.LcNz2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNz3
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sNv6_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sNv6_info
	jmp *(%rbx)
.LcNz3:
	movl $EngineziObjectziPlayer_mkPlayer25_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNuY_info, .-sNuY_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer31_srt-(sNuZ_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sNuZ_info:
.LcNzh:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNuY_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sNuY_info
	jmp *(%rbx)
	.size sNuZ_info, .-sNuZ_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer31_srt-(EngineziObjectziPlayer_mkPlayer31_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_mkPlayer31_info
.type EngineziObjectziPlayer_mkPlayer31_info, @object
EngineziObjectziPlayer_mkPlayer31_info:
.LcNzq:
	leaq -104(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNzs
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer31_ct
	je .LcNzt
.LcNzu:
	incq EngineziObjectziPlayer_mkPlayer31_ct+40
	movq %r14,%rbx
	movq $sNuZ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNuZ_info
	jmp *(%rbx)
.LcNzs:
	movl $EngineziObjectziPlayer_mkPlayer31_closure,%ebx
	jmp *-8(%r13)
.LcNzt:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer31_ct+56
	movq $EngineziObjectziPlayer_mkPlayer31_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer31_ct
	jmp .LcNzu
	.size EngineziObjectziPlayer_mkPlayer31_info, .-EngineziObjectziPlayer_mkPlayer31_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer30_closure
.type EngineziObjectziPlayer_mkPlayer30_closure, @object
EngineziObjectziPlayer_mkPlayer30_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyzqA_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqRepeating_closure+3
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2
	.quad	EngineziObjectziPlayer_mkPlayer31_closure+1
	.quad	0
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer29_srt:
	.quad	EngineziObjectziPlayer_mkPlayer25_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer29_closure
.type EngineziObjectziPlayer_mkPlayer29_closure, @object
EngineziObjectziPlayer_mkPlayer29_closure:
	.quad	EngineziObjectziPlayer_mkPlayer29_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNBj_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	50
	.byte	57
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	66
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNBm_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer29_ct
.type EngineziObjectziPlayer_mkPlayer29_ct, @object
EngineziObjectziPlayer_mkPlayer29_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNBj_str
	.quad	cNBm_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	25356
	.quad	32
sNzG_info:
.LcNC3:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcNC9
	addq $22,EngineziObjectziPlayer_mkPlayer29_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	movss 64(%rbp),%xmm1
	movss .LnNCa(%rip),%xmm0
	xorps %xmm0,%xmm1
	movsd %xmm1,64(%rsp)
	movss 72(%rbp),%xmm0
	mulss .LnNCc(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss %xmm0,%xmm1
	xorps %xmm0,%xmm0
	mulss %xmm1,%xmm0
	movsd %xmm0,80(%rsp)
	movss 72(%rbp),%xmm0
	subss .LnNCg(%rip),%xmm0
	mulss .LnNCf(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movsd 64(%rsp),%xmm1
	mulss %xmm0,%xmm1
	movsd 80(%rsp),%xmm0
	addss %xmm0,%xmm1
	movss 7(%rbx),%xmm0
	addss %xmm1,%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-168(%r12)
	movss %xmm0,-160(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	movss 24(%rbp),%xmm0
	movss %xmm0,-144(%r12)
	movss 72(%rbp),%xmm0
	mulss .LnNCo(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss %xmm0,%xmm1
	xorps %xmm0,%xmm0
	mulss %xmm1,%xmm0
	movsd %xmm0,72(%rsp)
	movss 72(%rbp),%xmm0
	subss .LnNCs(%rip),%xmm0
	mulss .LnNCr(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movsd 64(%rsp),%xmm1
	mulss %xmm0,%xmm1
	movsd 72(%rsp),%xmm0
	addss %xmm0,%xmm1
	movsd %xmm1,64(%rsp)
	movss 32(%rbp),%xmm0
	addss %xmm1,%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-136(%r12)
	movss %xmm0,-128(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	leaq -135(%r12),%rax
	movq %rax,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	leaq -167(%r12),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 56(%rbp),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 96(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $104,%rbp
	jmp *0(%rbp)
.LcNC9:
	movq $176,192(%r13)
.LcNC7:
	jmp *-16(%r13)
	.size sNzG_info, .-sNzG_info
.section .rodata
	.align 8
.align 4
.LnNCa:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.LnNCc:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNCf:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNCg:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.section .rodata
	.align 8
.align 4
.LnNCo:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNCr:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNCs:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.quad	25100
	.quad	32
sNzH_info:
.LcND1:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sNzG_info,0(%rbp)
	testq $7,%rbx
	jne sNzG_info
	jmp *(%rbx)
	.size sNzH_info, .-sNzH_info
.text
	.align 8
	.quad	24588
	.quad	32
sNzI_info:
.LcNDa:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sNzH_info,0(%rbp)
	testq $7,%rbx
	jne sNzH_info
	jmp *(%rbx)
	.size sNzI_info, .-sNzI_info
.text
	.align 8
	.quad	8204
	.quad	32
sNzJ_info:
.LcNDj:
	movq 72(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,72(%rbp)
	movq %rax,%rbx
	movq $sNzI_info,0(%rbp)
	testq $7,%rbx
	jne sNzI_info
	jmp *(%rbx)
	.size sNzJ_info, .-sNzJ_info
.text
	.align 8
	.quad	4107
	.quad	32
sLSp_info:
.LcNDs:
	movq %rbx,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sNzJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNzJ_info
	jmp *(%rbx)
	.size sLSp_info, .-sLSp_info
.text
	.align 8
	.quad	10
	.quad	32
sLTb_info:
.LcNDy:
	movq %rbx,0(%rbp)
	movq 48(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,48(%rbp)
	movq %rax,%rbx
	movq $sLSp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sLSp_info
	jmp *(%rbx)
	.size sLTb_info, .-sLTb_info
.text
	.align 8
	.quad	8
	.quad	32
sNzL_info:
.LcNDH:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 40(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $sLTb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLTb_info
	jmp *(%rbx)
	.size sNzL_info, .-sNzL_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer29_srt-(sNzD_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sNzD_info:
.LcNDT:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNDU
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sNzL_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sNzL_info
	jmp *(%rbx)
.LcNDU:
	movl $EngineziObjectziPlayer_mkPlayer25_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNzD_info, .-sNzD_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer29_srt-(sNzE_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sNzE_info:
.LcNE8:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNzD_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sNzD_info
	jmp *(%rbx)
	.size sNzE_info, .-sNzE_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer29_srt-(EngineziObjectziPlayer_mkPlayer29_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_mkPlayer29_info
.type EngineziObjectziPlayer_mkPlayer29_info, @object
EngineziObjectziPlayer_mkPlayer29_info:
.LcNEh:
	leaq -104(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNEj
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer29_ct
	je .LcNEk
.LcNEl:
	incq EngineziObjectziPlayer_mkPlayer29_ct+40
	movq %r14,%rbx
	movq $sNzE_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNzE_info
	jmp *(%rbx)
.LcNEj:
	movl $EngineziObjectziPlayer_mkPlayer29_closure,%ebx
	jmp *-8(%r13)
.LcNEk:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer29_ct+56
	movq $EngineziObjectziPlayer_mkPlayer29_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer29_ct
	jmp .LcNEl
	.size EngineziObjectziPlayer_mkPlayer29_info, .-EngineziObjectziPlayer_mkPlayer29_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer28_closure
.type EngineziObjectziPlayer_mkPlayer28_closure, @object
EngineziObjectziPlayer_mkPlayer28_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyzqD_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqRepeating_closure+3
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2
	.quad	EngineziObjectziPlayer_mkPlayer29_closure+1
	.quad	0
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer27_srt:
	.quad	EngineziObjectziPlayer_mkPlayer25_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer27_closure
.type EngineziObjectziPlayer_mkPlayer27_closure, @object
EngineziObjectziPlayer_mkPlayer27_closure:
	.quad	EngineziObjectziPlayer_mkPlayer27_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNGa_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	50
	.byte	55
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	67
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNGd_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer27_ct
.type EngineziObjectziPlayer_mkPlayer27_ct, @object
EngineziObjectziPlayer_mkPlayer27_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNGa_str
	.quad	cNGd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	25356
	.quad	32
sNEx_info:
.LcNGU:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcNH0
	addq $22,EngineziObjectziPlayer_mkPlayer27_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	movss 64(%rbp),%xmm1
	movss .LnNH1(%rip),%xmm0
	xorps %xmm0,%xmm1
	movsd %xmm1,64(%rsp)
	movss 72(%rbp),%xmm0
	mulss .LnNH3(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movsd 64(%rsp),%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,72(%rsp)
	movss 72(%rbp),%xmm0
	subss .LnNH7(%rip),%xmm0
	mulss .LnNH6(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss %xmm0,%xmm1
	xorps %xmm0,%xmm0
	mulss %xmm1,%xmm0
	movsd 72(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 7(%rbx),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-168(%r12)
	movss %xmm1,-160(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	movss 24(%rbp),%xmm0
	movss %xmm0,-144(%r12)
	movss 72(%rbp),%xmm0
	mulss .LnNHf(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movsd 64(%rsp),%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,64(%rsp)
	movss 72(%rbp),%xmm0
	subss .LnNHj(%rip),%xmm0
	mulss .LnNHi(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss %xmm0,%xmm1
	xorps %xmm0,%xmm0
	mulss %xmm1,%xmm0
	movsd 64(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 32(%rbp),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-136(%r12)
	movss %xmm1,-128(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	leaq -135(%r12),%rax
	movq %rax,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	leaq -167(%r12),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 56(%rbp),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 96(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $104,%rbp
	jmp *0(%rbp)
.LcNH0:
	movq $176,192(%r13)
.LcNGY:
	jmp *-16(%r13)
	.size sNEx_info, .-sNEx_info
.section .rodata
	.align 8
.align 4
.LnNH1:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.LnNH3:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNH6:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNH7:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.section .rodata
	.align 8
.align 4
.LnNHf:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNHi:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNHj:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.quad	25100
	.quad	32
sNEy_info:
.LcNHO:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sNEx_info,0(%rbp)
	testq $7,%rbx
	jne sNEx_info
	jmp *(%rbx)
	.size sNEy_info, .-sNEy_info
.text
	.align 8
	.quad	24588
	.quad	32
sNEz_info:
.LcNHX:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sNEy_info,0(%rbp)
	testq $7,%rbx
	jne sNEy_info
	jmp *(%rbx)
	.size sNEz_info, .-sNEz_info
.text
	.align 8
	.quad	8204
	.quad	32
sNEA_info:
.LcNI6:
	movq 72(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,72(%rbp)
	movq %rax,%rbx
	movq $sNEz_info,0(%rbp)
	testq $7,%rbx
	jne sNEz_info
	jmp *(%rbx)
	.size sNEA_info, .-sNEA_info
.text
	.align 8
	.quad	4107
	.quad	32
sLU2_info:
.LcNIf:
	movq %rbx,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sNEA_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNEA_info
	jmp *(%rbx)
	.size sLU2_info, .-sLU2_info
.text
	.align 8
	.quad	10
	.quad	32
sLUO_info:
.LcNIl:
	movq %rbx,0(%rbp)
	movq 48(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,48(%rbp)
	movq %rax,%rbx
	movq $sLU2_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sLU2_info
	jmp *(%rbx)
	.size sLUO_info, .-sLUO_info
.text
	.align 8
	.quad	8
	.quad	32
sNEC_info:
.LcNIu:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 40(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $sLUO_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLUO_info
	jmp *(%rbx)
	.size sNEC_info, .-sNEC_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer27_srt-(sNEu_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sNEu_info:
.LcNIG:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNIH
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sNEC_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sNEC_info
	jmp *(%rbx)
.LcNIH:
	movl $EngineziObjectziPlayer_mkPlayer25_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNEu_info, .-sNEu_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer27_srt-(sNEv_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sNEv_info:
.LcNIV:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNEu_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sNEu_info
	jmp *(%rbx)
	.size sNEv_info, .-sNEv_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer27_srt-(EngineziObjectziPlayer_mkPlayer27_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_mkPlayer27_info
.type EngineziObjectziPlayer_mkPlayer27_info, @object
EngineziObjectziPlayer_mkPlayer27_info:
.LcNJ4:
	leaq -104(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNJ6
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer27_ct
	je .LcNJ7
.LcNJ8:
	incq EngineziObjectziPlayer_mkPlayer27_ct+40
	movq %r14,%rbx
	movq $sNEv_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNEv_info
	jmp *(%rbx)
.LcNJ6:
	movl $EngineziObjectziPlayer_mkPlayer27_closure,%ebx
	jmp *-8(%r13)
.LcNJ7:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer27_ct+56
	movq $EngineziObjectziPlayer_mkPlayer27_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer27_ct
	jmp .LcNJ8
	.size EngineziObjectziPlayer_mkPlayer27_info, .-EngineziObjectziPlayer_mkPlayer27_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer26_closure
.type EngineziObjectziPlayer_mkPlayer26_closure, @object
EngineziObjectziPlayer_mkPlayer26_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyzqW_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqRepeating_closure+3
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2
	.quad	EngineziObjectziPlayer_mkPlayer27_closure+1
	.quad	0
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer24_srt:
	.quad	EngineziObjectziPlayer_mkPlayer25_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer24_closure
.type EngineziObjectziPlayer_mkPlayer24_closure, @object
EngineziObjectziPlayer_mkPlayer24_closure:
	.quad	EngineziObjectziPlayer_mkPlayer24_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNKU_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	50
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	69
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNKX_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer24_ct
.type EngineziObjectziPlayer_mkPlayer24_ct, @object
EngineziObjectziPlayer_mkPlayer24_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNKU_str
	.quad	cNKX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	25356
	.quad	32
sNJk_info:
.LcNLE:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcNLK
	addq $22,EngineziObjectziPlayer_mkPlayer24_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	movss 64(%rbp),%xmm0
	mulss .LnNLL(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss 72(%rbp),%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,72(%rsp)
	movss 64(%rbp),%xmm0
	subss .LnNLP(%rip),%xmm0
	mulss .LnNLO(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call cosf
	addq $8,%rsp
	movss %xmm0,%xmm1
	xorps %xmm0,%xmm0
	mulss %xmm1,%xmm0
	movsd 72(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 7(%rbx),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-168(%r12)
	movss %xmm1,-160(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	movss 24(%rbp),%xmm0
	movss %xmm0,-144(%r12)
	movss 64(%rbp),%xmm0
	mulss .LnNLX(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss 72(%rbp),%xmm1
	mulss %xmm0,%xmm1
	movsd %xmm1,64(%rsp)
	movss 64(%rbp),%xmm0
	subss .LnNM1(%rip),%xmm0
	mulss .LnNM0(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	call sinf
	addq $8,%rsp
	movss %xmm0,%xmm1
	xorps %xmm0,%xmm0
	mulss %xmm1,%xmm0
	movsd 64(%rsp),%xmm1
	addss %xmm1,%xmm0
	movss 32(%rbp),%xmm1
	addss %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-136(%r12)
	movss %xmm1,-128(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	leaq -135(%r12),%rax
	movq %rax,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	leaq -167(%r12),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 56(%rbp),%rax
	movq %rax,-80(%r12)
	movq 16(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 96(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $104,%rbp
	jmp *0(%rbp)
.LcNLK:
	movq $176,192(%r13)
.LcNLI:
	jmp *-16(%r13)
	.size sNJk_info, .-sNJk_info
.section .rodata
	.align 8
.align 4
.LnNLL:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNLO:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNLP:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.section .rodata
	.align 8
.align 4
.LnNLX:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNM0:
	.byte	53
	.byte	250
	.byte	142
	.byte	60
.section .rodata
	.align 8
.align 4
.LnNM1:
	.byte	0
	.byte	0
	.byte	180
	.byte	66
.text
	.align 8
	.quad	25100
	.quad	32
sNJl_info:
.LcNMu:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $sNJk_info,0(%rbp)
	testq $7,%rbx
	jne sNJk_info
	jmp *(%rbx)
	.size sNJl_info, .-sNJl_info
.text
	.align 8
	.quad	24588
	.quad	32
sNJm_info:
.LcNMD:
	movq 32(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $sNJl_info,0(%rbp)
	testq $7,%rbx
	jne sNJl_info
	jmp *(%rbx)
	.size sNJm_info, .-sNJm_info
.text
	.align 8
	.quad	4107
	.quad	32
sLWp_info:
.LcNMM:
	movq %rbx,0(%rbp)
	movq 64(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,64(%rbp)
	movq %rax,%rbx
	movq $sNJm_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNJm_info
	jmp *(%rbx)
	.size sLWp_info, .-sLWp_info
.text
	.align 8
	.quad	11
	.quad	32
sNJn_info:
.LcNMV:
	movq 56(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,56(%rbp)
	movq %rax,%rbx
	movq $sLWp_info,0(%rbp)
	testq $7,%rbx
	jne sLWp_info
	jmp *(%rbx)
	.size sNJn_info, .-sNJn_info
.text
	.align 8
	.quad	10
	.quad	32
sLVC_info:
.LcNN4:
	movq %rbx,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sNJn_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNJn_info
	jmp *(%rbx)
	.size sLVC_info, .-sLVC_info
.text
	.align 8
	.quad	8
	.quad	32
sNJp_info:
.LcNNa:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 40(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $sLVC_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sLVC_info
	jmp *(%rbx)
	.size sNJp_info, .-sNJp_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer24_srt-(sNJh_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sNJh_info:
.LcNNm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNNn
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sNJp_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sNJp_info
	jmp *(%rbx)
.LcNNn:
	movl $EngineziObjectziPlayer_mkPlayer25_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNJh_info, .-sNJh_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer24_srt-(sNJi_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sNJi_info:
.LcNNB:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNJh_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sNJh_info
	jmp *(%rbx)
	.size sNJi_info, .-sNJi_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer24_srt-(EngineziObjectziPlayer_mkPlayer24_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_mkPlayer24_info
.type EngineziObjectziPlayer_mkPlayer24_info, @object
EngineziObjectziPlayer_mkPlayer24_info:
.LcNNK:
	leaq -104(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNNM
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer24_ct
	je .LcNNN
.LcNNO:
	incq EngineziObjectziPlayer_mkPlayer24_ct+40
	movq %r14,%rbx
	movq $sNJi_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNJi_info
	jmp *(%rbx)
.LcNNM:
	movl $EngineziObjectziPlayer_mkPlayer24_closure,%ebx
	jmp *-8(%r13)
.LcNNN:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer24_ct+56
	movq $EngineziObjectziPlayer_mkPlayer24_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer24_ct
	jmp .LcNNO
	.size EngineziObjectziPlayer_mkPlayer24_info, .-EngineziObjectziPlayer_mkPlayer24_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer23_closure
.type EngineziObjectziPlayer_mkPlayer23_closure, @object
EngineziObjectziPlayer_mkPlayer23_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyzqS_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqRepeating_closure+3
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2
	.quad	EngineziObjectziPlayer_mkPlayer24_closure+1
	.quad	0
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer21_srt:
	.quad	EngineziObjectziPlayer_mkPlayer22_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer21_closure
.type EngineziObjectziPlayer_mkPlayer21_closure, @object
EngineziObjectziPlayer_mkPlayer21_closure:
	.quad	EngineziObjectziPlayer_mkPlayer21_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNOE_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	50
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	71
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNOH_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer21_ct
.type EngineziObjectziPlayer_mkPlayer21_ct, @object
EngineziObjectziPlayer_mkPlayer21_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNOE_str
	.quad	cNOH_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8395
	.quad	32
sNO0_info:
.LcNPg:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcNPm
	addq $22,EngineziObjectziPlayer_mkPlayer21_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-168(%r12)
	movss 7(%rbx),%xmm0
	movss %xmm0,-160(%r12)
	movss 64(%rbp),%xmm1
	movss .LnNPo(%rip),%xmm0
	xorps %xmm0,%xmm1
	movss 8(%rbp),%xmm0
	addss %xmm1,%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	movss %xmm0,-144(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-136(%r12)
	movss 16(%rbp),%xmm0
	movss %xmm0,-128(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	leaq -135(%r12),%rax
	movq %rax,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	leaq -167(%r12),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 56(%rbp),%rax
	movq %rax,-80(%r12)
	movq 48(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 24(%rbp),%rax
	movq %rax,-56(%r12)
	movq 40(%rbp),%rax
	movq %rax,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 88(%rbp),%rax
	movq %rax,-16(%r12)
	movq 80(%rbp),%rax
	movq %rax,-8(%r12)
	movq 72(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $96,%rbp
	jmp *0(%rbp)
.LcNPm:
	movq $176,192(%r13)
.LcNPk:
	jmp *-16(%r13)
	.size sNO0_info, .-sNO0_info
.section .rodata
	.align 8
.align 4
.LnNPo:
	.long	-2147483648
.text
	.align 8
	.quad	8331
	.quad	32
sNO1_info:
.LcNPI:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sNO0_info,0(%rbp)
	testq $7,%rbx
	jne sNO0_info
	jmp *(%rbx)
	.size sNO1_info, .-sNO1_info
.text
	.align 8
	.quad	8203
	.quad	32
sNO2_info:
.LcNPR:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sNO1_info,0(%rbp)
	testq $7,%rbx
	jne sNO1_info
	jmp *(%rbx)
	.size sNO2_info, .-sNO2_info
.text
	.align 8
	.quad	2057
	.quad	32
sNO3_info:
.LcNQ0:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNO2_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sNO2_info
	jmp *(%rbx)
	.size sNO3_info, .-sNO3_info
.text
	.align 8
	.quad	8
	.quad	32
sLXl_info:
.LcNQ8:
	movq %rbx,0(%rbp)
	movq 40(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $sNO3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNO3_info
	jmp *(%rbx)
	.size sLXl_info, .-sLXl_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer21_srt-(sNNX_info)+0
	.long	0
	.quad	3
	.quad	4294967328
sNNX_info:
.LcNQi:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNQj
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 31(%rbx),%rbx
	movq $sLXl_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sLXl_info
	jmp *(%rbx)
.LcNQj:
	movl $EngineziObjectziPlayer_mkPlayer22_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNNX_info, .-sNNX_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer21_srt-(sNNY_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sNNY_info:
.LcNQx:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNNX_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sNNX_info
	jmp *(%rbx)
	.size sNNY_info, .-sNNY_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer21_srt-(EngineziObjectziPlayer_mkPlayer21_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziObjectziPlayer_mkPlayer21_info
.type EngineziObjectziPlayer_mkPlayer21_info, @object
EngineziObjectziPlayer_mkPlayer21_info:
.LcNQG:
	leaq -96(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNQI
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer21_ct
	je .LcNQJ
.LcNQK:
	incq EngineziObjectziPlayer_mkPlayer21_ct+40
	movq %r14,%rbx
	movq $sNNY_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNNY_info
	jmp *(%rbx)
.LcNQI:
	movl $EngineziObjectziPlayer_mkPlayer21_closure,%ebx
	jmp *-8(%r13)
.LcNQJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer21_ct+56
	movq $EngineziObjectziPlayer_mkPlayer21_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer21_ct
	jmp .LcNQK
	.size EngineziObjectziPlayer_mkPlayer21_info, .-EngineziObjectziPlayer_mkPlayer21_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer20_closure
.type EngineziObjectziPlayer_mkPlayer20_closure, @object
EngineziObjectziPlayer_mkPlayer20_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyzqLeftShift_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqRepeating_closure+3
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2
	.quad	EngineziObjectziPlayer_mkPlayer21_closure+1
	.quad	0
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer14_srt:
	.quad	EngineziCoreziWorld_playerVelocity1_closure
	.quad	EngineziObjectziPlayer_mkPlayer15_closure
	.quad	EngineziObjectziPlayer_mkPlayer18_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer14_closure
.type EngineziObjectziPlayer_mkPlayer14_closure, @object
EngineziObjectziPlayer_mkPlayer14_closure:
	.quad	EngineziObjectziPlayer_mkPlayer14_info
	.quad	0
.section .rodata
	.align 8
.align 1
cNTw_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	49
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	76
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNTy_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer14_ct
.type EngineziObjectziPlayer_mkPlayer14_ct, @object
EngineziObjectziPlayer_mkPlayer14_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNTw_str
	.quad	cNTy_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	263117
	.quad	32
sNR3_info:
.LcNTT:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcNTZ
	addq $22,EngineziObjectziPlayer_mkPlayer14_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 16(%rbp),%xmm0
	addss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-168(%r12)
	movss %xmm0,-160(%r12)
	movss 32(%rbp),%xmm0
	addss 8(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	movss %xmm0,-144(%r12)
	movss 24(%rbp),%xmm0
	addss 104(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-136(%r12)
	movss %xmm0,-128(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	leaq -135(%r12),%rax
	movq %rax,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	leaq -167(%r12),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 72(%rbp),%rax
	movq %rax,-80(%r12)
	movq 64(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 56(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 96(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
.LcNTZ:
	movq $176,192(%r13)
.LcNTX:
	jmp *-16(%r13)
	.size sNR3_info, .-sNR3_info
.text
	.align 8
	.quad	263053
	.quad	32
sNR4_info:
.LcNUj:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sNR3_info,0(%rbp)
	testq $7,%rbx
	jne sNR3_info
	jmp *(%rbx)
	.size sNR4_info, .-sNR4_info
.text
	.align 8
	.quad	909
	.quad	32
sNR5_info:
.LcNUs:
	movq 104(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,104(%rbp)
	movq %rax,%rbx
	movq $sNR4_info,0(%rbp)
	testq $7,%rbx
	jne sNR4_info
	jmp *(%rbx)
	.size sNR5_info, .-sNR5_info
.text
	.align 8
	.quad	131532
	.quad	32
sNR6_info:
.LcNUB:
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,96(%rbp)
	movq 7(%rbx),%rbx
	movq $sNR5_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNR5_info
	jmp *(%rbx)
	.size sNR6_info, .-sNR6_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sNQW_info)+8
	.long	0
	.quad	460
	.quad	4294967328
sNQW_info:
.LcNUJ:
	movss 24(%rbp),%xmm1
	movss .LnNUP(%rip),%xmm0
	xorps %xmm0,%xmm1
	ucomiss 7(%rbx),%xmm1
	jp .LnNUS
	jb .LcNUL
.LnNUS:
	movq 96(%rbp),%rbx
	addq $104,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcNUL:
	movl $EngineziObjectziPlayer_mkPlayer15_closure,%ebx
	movq $sNR6_info,0(%rbp)
	testq $7,%rbx
	jne sNR6_info
	jmp *(%rbx)
	.size sNQW_info, .-sNQW_info
.section .rodata
	.align 8
.align 4
.LnNUP:
	.long	-2147483648
.text
	.align 8
	.quad	263117
	.quad	32
sNRa_info:
.LcNVd:
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .LcNVj
	addq $22,EngineziObjectziPlayer_mkPlayer14_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 16(%rbp),%xmm0
	addss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-168(%r12)
	movss %xmm0,-160(%r12)
	movss 32(%rbp),%xmm0
	addss 8(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	movss %xmm0,-144(%r12)
	movss 24(%rbp),%xmm0
	addss 104(%rbp),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-136(%r12)
	movss %xmm0,-128(%r12)
	movq $EngineziCoreziVec_Vec3_con_info,-120(%r12)
	leaq -135(%r12),%rax
	movq %rax,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	leaq -167(%r12),%rax
	movq %rax,-96(%r12)
	movq $EngineziCoreziWorld_Player_con_info,-88(%r12)
	movq 72(%rbp),%rax
	movq %rax,-80(%r12)
	movq 64(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -119(%r12),%rax
	movq %rax,-64(%r12)
	movq 56(%rbp),%rax
	movq %rax,-56(%r12)
	movq 48(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	leaq -87(%r12),%rax
	movq %rax,-24(%r12)
	movq 96(%rbp),%rax
	movq %rax,-16(%r12)
	movq 88(%rbp),%rax
	movq %rax,-8(%r12)
	movq 80(%rbp),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $112,%rbp
	jmp *0(%rbp)
.LcNVj:
	movq $176,192(%r13)
.LcNVh:
	jmp *-16(%r13)
	.size sNRa_info, .-sNRa_info
.text
	.align 8
	.quad	263053
	.quad	32
sNRb_info:
.LcNVD:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sNRa_info,0(%rbp)
	testq $7,%rbx
	jne sNRa_info
	jmp *(%rbx)
	.size sNRb_info, .-sNRb_info
.text
	.align 8
	.quad	909
	.quad	32
sNRc_info:
.LcNVM:
	movq 104(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,104(%rbp)
	movq %rax,%rbx
	movq $sNRb_info,0(%rbp)
	testq $7,%rbx
	jne sNRb_info
	jmp *(%rbx)
	.size sNRc_info, .-sNRc_info
.text
	.align 8
	.quad	131532
	.quad	32
sNRd_info:
.LcNVV:
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,96(%rbp)
	movq 7(%rbx),%rbx
	movq $sNRc_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNRc_info
	jmp *(%rbx)
	.size sNRd_info, .-sNRd_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sNR8_info)+8
	.long	0
	.quad	460
	.quad	4294967328
sNR8_info:
.LcNW3:
	movss 24(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnNWa
	jb .LcNW5
.LnNWa:
	movq 96(%rbp),%rbx
	addq $104,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcNW5:
	movl $EngineziObjectziPlayer_mkPlayer15_closure,%ebx
	movq $sNRd_info,0(%rbp)
	testq $7,%rbx
	jne sNRd_info
	jmp *(%rbx)
	.size sNR8_info, .-sNR8_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sNQY_info)+8
	.long	0
	.quad	203
	.quad	12884901920
sNQY_info:
.LcNWe:
	movss 16(%rbp),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jae .LcNWg
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $EngineziObjectziPlayer_mkPlayer18_closure,%ebx
	movq $sNQW_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNQW_info
	jmp *(%rbx)
.LcNWg:
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $EngineziObjectziPlayer_mkPlayer18_closure,%ebx
	movq $sNR8_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNR8_info
	jmp *(%rbx)
	.size sNQY_info, .-sNQY_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sNQZ_info)+8
	.long	0
	.quad	139
	.quad	12884901920
sNQZ_info:
.LcNWu:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sNQY_info,0(%rbp)
	testq $7,%rbx
	jne sNQY_info
	jmp *(%rbx)
	.size sNQZ_info, .-sNQZ_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sNR0_info)+8
	.long	0
	.quad	11
	.quad	12884901920
sNR0_info:
.LcNWD:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sNQZ_info,0(%rbp)
	testq $7,%rbx
	jne sNQZ_info
	jmp *(%rbx)
	.size sNR0_info, .-sNR0_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sNR1_info)+8
	.long	0
	.quad	9
	.quad	12884901920
sNR1_info:
.LcNWM:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sNR0_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sNR0_info
	jmp *(%rbx)
	.size sNR1_info, .-sNR1_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sNQT_info)+0
	.long	0
	.quad	4
	.quad	30064771104
sNQT_info:
.LcNWV:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcNWW
	movq 47(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rbx
	movq $sNR1_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sNR1_info
	jmp *(%rbx)
.LcNWW:
	movl $EngineziCoreziWorld_playerVelocity1_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sNQT_info, .-sNQT_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(sLY4_info)+0
	.long	0
	.quad	0
	.quad	30064771104
sLY4_info:
.LcNXa:
	movq 31(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %rbx,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sNQT_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sNQT_info
	jmp *(%rbx)
	.size sLY4_info, .-sLY4_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer14_srt-(EngineziObjectziPlayer_mkPlayer14_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
.globl EngineziObjectziPlayer_mkPlayer14_info
.type EngineziObjectziPlayer_mkPlayer14_info, @object
EngineziObjectziPlayer_mkPlayer14_info:
.LcNXj:
	leaq -112(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNXl
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer14_ct
	je .LcNXm
.LcNXn:
	incq EngineziObjectziPlayer_mkPlayer14_ct+40
	movq %r14,%rbx
	movq $sLY4_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sLY4_info
	jmp *(%rbx)
.LcNXl:
	movl $EngineziObjectziPlayer_mkPlayer14_closure,%ebx
	jmp *-8(%r13)
.LcNXm:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer14_ct+56
	movq $EngineziObjectziPlayer_mkPlayer14_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer14_ct
	jmp .LcNXn
	.size EngineziObjectziPlayer_mkPlayer14_info, .-EngineziObjectziPlayer_mkPlayer14_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer13_closure
.type EngineziObjectziPlayer_mkPlayer13_closure, @object
EngineziObjectziPlayer_mkPlayer13_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyzqSpace_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqPressed_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2
	.quad	EngineziObjectziPlayer_mkPlayer14_closure+1
	.quad	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer12_closure
.type EngineziObjectziPlayer_mkPlayer12_closure, @object
EngineziObjectziPlayer_mkPlayer12_closure:
	.quad	EngineziObjectziPlayer_mkPlayer12_info
.section .rodata
	.align 8
.align 1
cNXT_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	46
	.byte	109
	.byte	107
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	49
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	73
	.byte	72
	.byte	77
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cNXW_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer12_ct
.type EngineziObjectziPlayer_mkPlayer12_ct, @object
EngineziObjectziPlayer_mkPlayer12_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cNXT_str
	.quad	cNXW_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	7
	.quad	32
sLZG_info:
.LcNYe:
	addq $88,%r12
	cmpq 144(%r13),%r12
	ja .LcNYk
	addq $11,EngineziObjectziPlayer_mkPlayer12_ct+48
	incq ALLOC_HEAP_ctr
	addq $11,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_WorldState_con_info,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq %rbx,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq 56(%rbp),%rax
	movq %rax,-24(%r12)
	movq 48(%rbp),%rax
	movq %rax,-16(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -79(%r12),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
.LcNYk:
	movq $88,192(%r13)
.LcNYi:
	jmp *-16(%r13)
	.size sLZG_info, .-sLZG_info
.text
	.align 8
	.quad	7
	.quad	32
sNXz_info:
.LcNYz:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcNYA
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $sLZG_info,0(%rbp)
	jmp sLZG_info
.LcNYA:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $sLZG_info,0(%rbp)
	jmp sLZG_info
	.size sNXz_info, .-sNXz_info
.text
	.align 8
	.quad	3
	.quad	32
sNXx_info:
.LcNYG:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 31(%rbx),%rbx
	movq $sNXz_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sNXz_info
	jmp *(%rbx)
	.size sNXx_info, .-sNXx_info
.text
	.align 8
	.quad	0
	.quad	32
sNXy_info:
.LcNYQ:
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 31(%rbx),%rbx
	movq $sNXx_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sNXx_info
	jmp *(%rbx)
	.size sNXy_info, .-sNXy_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziObjectziPlayer_mkPlayer12_info
.type EngineziObjectziPlayer_mkPlayer12_info, @object
EngineziObjectziPlayer_mkPlayer12_info:
.LcNYZ:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcNZ1
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziObjectziPlayer_mkPlayer12_ct
	je .LcNZ2
.LcNZ3:
	incq EngineziObjectziPlayer_mkPlayer12_ct+40
	movq %r14,%rbx
	movq $sNXy_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sNXy_info
	jmp *(%rbx)
.LcNZ1:
	movl $EngineziObjectziPlayer_mkPlayer12_closure,%ebx
	jmp *-8(%r13)
.LcNZ2:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziObjectziPlayer_mkPlayer12_ct+56
	movq $EngineziObjectziPlayer_mkPlayer12_ct,ticky_entry_ctrs
	movq $1,EngineziObjectziPlayer_mkPlayer12_ct
	jmp .LcNZ3
	.size EngineziObjectziPlayer_mkPlayer12_info, .-EngineziObjectziPlayer_mkPlayer12_info
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer11_closure
.type EngineziObjectziPlayer_mkPlayer11_closure, @object
EngineziObjectziPlayer_mkPlayer11_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyzqEscape_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqPressed_closure+1
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_KeyStatezqReleased_closure+2
	.quad	EngineziObjectziPlayer_mkPlayer12_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer10_closure
.type EngineziObjectziPlayer_mkPlayer10_closure, @object
EngineziObjectziPlayer_mkPlayer10_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziObjectziPlayer_mkPlayer11_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer9_closure
.type EngineziObjectziPlayer_mkPlayer9_closure, @object
EngineziObjectziPlayer_mkPlayer9_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziObjectziPlayer_mkPlayer13_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer10_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer8_closure
.type EngineziObjectziPlayer_mkPlayer8_closure, @object
EngineziObjectziPlayer_mkPlayer8_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziObjectziPlayer_mkPlayer20_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer9_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer7_closure
.type EngineziObjectziPlayer_mkPlayer7_closure, @object
EngineziObjectziPlayer_mkPlayer7_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziObjectziPlayer_mkPlayer23_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer8_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer6_closure
.type EngineziObjectziPlayer_mkPlayer6_closure, @object
EngineziObjectziPlayer_mkPlayer6_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziObjectziPlayer_mkPlayer26_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer7_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer5_closure
.type EngineziObjectziPlayer_mkPlayer5_closure, @object
EngineziObjectziPlayer_mkPlayer5_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziObjectziPlayer_mkPlayer28_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer6_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer4_closure
.type EngineziObjectziPlayer_mkPlayer4_closure, @object
EngineziObjectziPlayer_mkPlayer4_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziObjectziPlayer_mkPlayer30_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer5_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer3_closure
.type EngineziObjectziPlayer_mkPlayer3_closure, @object
EngineziObjectziPlayer_mkPlayer3_closure:
	.quad	EngineziCoreziVec_Vec2_static_info
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer1_closure
.type EngineziObjectziPlayer_mkPlayer1_closure, @object
EngineziObjectziPlayer_mkPlayer1_closure:
	.quad	EngineziCoreziVec_Vec2_static_info
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	EngineziObjectziPlayer_mkPlayer2_closure+1
	.quad	1
.section .data
	.align 8
.align 1
EngineziObjectziPlayer_mkPlayer_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziObjectziPlayer_mkPlayer4_closure
	.quad	EngineziObjectziPlayer_mkPlayer32_closure
	.quad	EngineziObjectziPlayer_mkPlayer43_closure
	.quad	EngineziObjectziPlayer_mkPlayer17_closure
.data
	.align 8
.align 1
.globl EngineziObjectziPlayer_mkPlayer_closure
.type EngineziObjectziPlayer_mkPlayer_closure, @object
EngineziObjectziPlayer_mkPlayer_closure:
	.quad	EngineziObjectziPlayer_mkPlayer_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer_srt-(sLZL_info)+8
	.long	0
	.quad	0
	.quad	12884901920
sLZL_info:
.LcNZV:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcO01
	addq $12,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $EngineziCoreziWorld_Input_con_info,-88(%r12)
	movq $EngineziObjectziPlayer_mkPlayer4_closure+2,-80(%r12)
	movq $EngineziObjectziPlayer_mkPlayer3_closure+1,-72(%r12)
	movq $EngineziObjectziPlayer_mkPlayer1_closure+1,-64(%r12)
	movq %rbx,-56(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
	movq $EngineziObjectziPlayer_mkPlayer49_closure+1,-40(%r12)
	movq $EngineziObjectziPlayer_mkPlayer48_closure+1,-32(%r12)
	movq $EngineziObjectziPlayer_mkPlayer47_closure+1,-24(%r12)
	movq $EngineziObjectziPlayer_mkPlayer46_closure+1,-16(%r12)
	movq $EngineziObjectziPlayer_mkPlayer32_closure+1,-8(%r12)
	leaq -87(%r12),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcO01:
	movq $96,192(%r13)
.LcNZZ:
	jmp *-16(%r13)
	.size sLZL_info, .-sLZL_info
.text
	.align 8
	.long	EngineziObjectziPlayer_mkPlayer_srt-(EngineziObjectziPlayer_mkPlayer_info)+0
	.long	0
	.quad	0
	.quad	133143986198
.globl EngineziObjectziPlayer_mkPlayer_info
.type EngineziObjectziPlayer_mkPlayer_info, @object
EngineziObjectziPlayer_mkPlayer_info:
.LcO06:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcO08
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcO0a
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
	je .LcO0b
.LcO0c:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziObjectziPlayer_mkPlayer17_closure+1,%r14d
	movl $EngineziObjectziPlayer_mkPlayer43_closure+1,%esi
	movq $sLZL_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcO0a:
	movq $16,192(%r13)
.LcO08:
	jmp *-16(%r13)
.LcO0b:
	jmp *(%rbx)
	.size EngineziObjectziPlayer_mkPlayer_info, .-EngineziObjectziPlayer_mkPlayer_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
