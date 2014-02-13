.data
	.align 8
.align 1
.globl __stginit_EngineziTerrainziGenerator
.type __stginit_EngineziTerrainziGenerator, @object
__stginit_EngineziTerrainziGenerator:
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_repeatList1_closure
.type EngineziTerrainziGenerator_repeatList1_closure, @object
EngineziTerrainziGenerator_repeatList1_closure:
	.quad	EngineziTerrainziGenerator_repeatList1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziTerrainziGenerator_repeatList1_info
.type EngineziTerrainziGenerator_repeatList1_info, @object
EngineziTerrainziGenerator_repeatList1_info:
.Lco5G:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lco5I
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lco5K
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
	je .Lco5L
.Lco5M:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r14d
	addq $-16,%rbp
	jmp base_GHCziList_concatzugo_info
.Lco5K:
	movq $16,192(%r13)
.Lco5I:
	jmp *-16(%r13)
.Lco5L:
	jmp *(%rbx)
	.size EngineziTerrainziGenerator_repeatList1_info, .-EngineziTerrainziGenerator_repeatList1_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_zdwrepeatList_srt:
	.quad	EngineziTerrainziGenerator_repeatList1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwrepeatList_closure
.type EngineziTerrainziGenerator_zdwrepeatList_closure, @object
EngineziTerrainziGenerator_zdwrepeatList_closure:
	.quad	EngineziTerrainziGenerator_zdwrepeatList_info
	.quad	0
.section .rodata
	.align 8
.align 1
co6D_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	114
	.byte	101
	.byte	112
	.byte	101
	.byte	97
	.byte	116
	.byte	76
	.byte	105
	.byte	115
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	83
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
co6F_str:
	.byte	105
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwrepeatList_ct
.type EngineziTerrainziGenerator_zdwrepeatList_ct, @object
EngineziTerrainziGenerator_zdwrepeatList_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	co6D_str
	.quad	co6F_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
co6I_str:
	.byte	120
	.byte	115
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	110
	.byte	84
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
co6K_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
snT3_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	co6I_str
	.quad	co6K_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967297
	.quad	20
so5S_info:
.Lco6T:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lco6V
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp snT3_info
.Lco6V:
	jmp *-16(%r13)
	.size so5S_info, .-so5S_info
.text
	.align 8
	.quad	4294967300
	.quad	2
	.quad	12
snT3_info:
.Lco70:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lco74
	addq $7,snT3_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,snT3_ct
	je .Lco75
.Lco76:
	incq snT3_ct+40
	cmpq $1,%r14
	jle .Lco78
	movq $so5S_info,-48(%r12)
	movq %rbx,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.Lco74:
	movq $56,192(%r13)
.Lco72:
	jmp *-8(%r13)
.Lco75:
	movq ticky_entry_ctrs,%rax
	movq %rax,snT3_ct+56
	movq $snT3_ct,ticky_entry_ctrs
	movq $1,snT3_ct
	jmp .Lco76
.Lco78:
	movq 15(%rbx),%rbx
	addq $-56,%r12
	addq $-7,snT3_ct+48
	incq ALLOC_HEAP_ctr
	addq $-7,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size snT3_info, .-snT3_info
.text
	.align 8
	.quad	0
	.quad	32
so5T_info:
.Lco7g:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size so5T_info, .-so5T_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_zdwrepeatList_srt-(EngineziTerrainziGenerator_zdwrepeatList_info)+0
	.long	0
	.quad	8589934602
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziGenerator_zdwrepeatList_info
.type EngineziTerrainziGenerator_zdwrepeatList_info, @object
EngineziTerrainziGenerator_zdwrepeatList_info:
.Lco7j:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lco7l
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .Lco7n
	addq $6,EngineziTerrainziGenerator_zdwrepeatList_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_zdwrepeatList_ct
	je .Lco7o
.Lco7p:
	incq EngineziTerrainziGenerator_zdwrepeatList_ct+40
	testq %r14,%r14
	jle .Lco7r
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq %rsi,-32(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-24(%r12)
	movq $snT3_info,-16(%r12)
	movq %rsi,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -15(%r12),%rbx
	movq $so5T_info,-8(%rbp)
	addq $-8,%rbp
	jmp snT3_info
.Lco7n:
	movq $48,192(%r13)
.Lco7l:
	movl $EngineziTerrainziGenerator_zdwrepeatList_closure,%ebx
	jmp *-8(%r13)
.Lco7o:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_zdwrepeatList_ct+56
	movq $EngineziTerrainziGenerator_zdwrepeatList_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_zdwrepeatList_ct
	jmp .Lco7p
.Lco7r:
	movl $EngineziTerrainziGenerator_repeatList1_closure,%ebx
	addq $-48,%r12
	addq $-6,EngineziTerrainziGenerator_zdwrepeatList_ct+48
	incq ALLOC_HEAP_ctr
	addq $-6,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
	.size EngineziTerrainziGenerator_zdwrepeatList_info, .-EngineziTerrainziGenerator_zdwrepeatList_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_repeatList_srt:
	.quad	EngineziTerrainziGenerator_repeatList1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_repeatList_closure
.type EngineziTerrainziGenerator_repeatList_closure, @object
EngineziTerrainziGenerator_repeatList_closure:
	.quad	EngineziTerrainziGenerator_repeatList_info
	.quad	0
.section .rodata
	.align 8
.align 1
co7H_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	114
	.byte	101
	.byte	112
	.byte	101
	.byte	97
	.byte	116
	.byte	76
	.byte	105
	.byte	115
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	122
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
co7K_str:
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_repeatList_ct
.type EngineziTerrainziGenerator_repeatList_ct, @object
EngineziTerrainziGenerator_repeatList_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	co7H_str
	.quad	co7K_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziGenerator_repeatList_srt-(so7x_info)+0
	.long	0
	.quad	1
	.quad	4294967328
so7x_info:
.Lco7U:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp EngineziTerrainziGenerator_zdwrepeatList_info
	.size so7x_info, .-so7x_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_repeatList_srt-(EngineziTerrainziGenerator_repeatList_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziGenerator_repeatList_info
.type EngineziTerrainziGenerator_repeatList_info, @object
EngineziTerrainziGenerator_repeatList_info:
.Lco7X:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lco7Z
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_repeatList_ct
	je .Lco80
.Lco81:
	incq EngineziTerrainziGenerator_repeatList_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $so7x_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne so7x_info
	jmp *(%rbx)
.Lco7Z:
	movl $EngineziTerrainziGenerator_repeatList_closure,%ebx
	jmp *-8(%r13)
.Lco80:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_repeatList_ct+56
	movq $EngineziTerrainziGenerator_repeatList_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_repeatList_ct
	jmp .Lco81
	.size EngineziTerrainziGenerator_repeatList_info, .-EngineziTerrainziGenerator_repeatList_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_zdwa_srt:
	.quad	EngineziTerrainziNoise_zdwa_closure
	.quad	EngineziTerrainziGenerator_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwa_closure
.type EngineziTerrainziGenerator_zdwa_closure, @object
EngineziTerrainziGenerator_zdwa_closure:
	.quad	EngineziTerrainziGenerator_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
co8W_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
co8Y_str:
	.byte	105
	.byte	83
	.byte	105
	.byte	105
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwa_ct
.type EngineziTerrainziGenerator_zdwa_ct, @object
EngineziTerrainziGenerator_zdwa_ct:
	.quad	0
	.quad	8
	.quad	2
	.quad	co8W_str
	.quad	co8Y_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_zdwa_slow
.type EngineziTerrainziGenerator_zdwa_slow, @object
EngineziTerrainziGenerator_zdwa_slow:
.Lco91:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziGenerator_zdwa_info
	.size EngineziTerrainziGenerator_zdwa_slow, .-EngineziTerrainziGenerator_zdwa_slow
.text
	.align 8
	.quad	1
	.quad	32
so8g_info:
.Lco9g:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lco9l
	addq $3,EngineziTerrainziGenerator_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lco9l:
	movq $24,192(%r13)
.Lco9j:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size so8g_info, .-so8g_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_zdwa_srt-(so8h_info)+8
	.long	0
	.quad	1415
	.quad	4294967328
so8h_info:
.Lco9p:
	movq 16(%rbp),%r8
	addq 40(%rbp),%r8
	movq 24(%rbp),%rdi
	addq 40(%rbp),%rdi
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 56(%rbp),%rax
	movq %rax,40(%rbp)
	movq %rbx,56(%rbp)
	movq 32(%rbp),%rsi
	movq 48(%rbp),%rax
	movq %rax,32(%rbp)
	movq 8(%rbp),%r9
	movq $so8g_info,48(%rbp)
	addq $32,%rbp
	jmp EngineziTerrainziGenerator_zdwa_info
	.size so8h_info, .-so8h_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_zdwa_srt-(snTP_info)+0
	.long	0
	.quad	1415
	.quad	12884901920
snTP_info:
.Lco9w:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .Lco9A
	addq $6,EngineziTerrainziGenerator_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	cmpq 40(%rbp),%rbx
	jl .Lco9C
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $64,%rbp
	addq $-48,%r12
	addq $-6,EngineziTerrainziGenerator_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $-6,ALLOC_HEAP_tot
	jmp *0(%rbp)
.Lco9A:
	movq $48,192(%r13)
.Lco9y:
	movq $snTP_info,0(%rbp)
	movq $255,64(%r13)
	jmp stg_gc_ut
.Lco9C:
	movq $ghczmprim_GHCziTypes_Izh_con_info,-40(%r12)
	movq 16(%rbp),%rax
	movq %rax,-32(%r12)
	movq $ghczmprim_GHCziTypes_Izh_con_info,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq 40(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 56(%rbp),%rax
	movq %rax,-8(%rbp)
	movq 48(%rbp),%rax
	movq %rax,-16(%rbp)
	leaq -7(%r12),%r14
	movq 32(%rbp),%rsi
	leaq -23(%r12),%rdi
	leaq -39(%r12),%r8
	movq 8(%rbp),%r9
	movq $so8h_info,0(%rbp)
	addq $-16,%rbp
	jmp EngineziTerrainziNoise_zdwa_info
	.size snTP_info, .-snTP_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_zdwa_slow-(EngineziTerrainziGenerator_zdwa_info)+0
	.long	0
	.quad	839
	.long	EngineziTerrainziGenerator_zdwa_srt-(EngineziTerrainziGenerator_zdwa_info)+0
	.long	0
	.quad	34359738368
	.quad	0
	.quad	12884901903
.globl EngineziTerrainziGenerator_zdwa_info
.type EngineziTerrainziGenerator_zdwa_info, @object
EngineziTerrainziGenerator_zdwa_info:
.Lco9K:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lco9M
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_zdwa_ct
	je .Lco9N
.Lco9O:
	incq EngineziTerrainziGenerator_zdwa_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,-16(%rbp)
	movq %rdi,-24(%rbp)
	movq %r8,-32(%rbp)
	movq %r9,-40(%rbp)
	cmpq %r8,%rdi
	jle .Lco9R
	movq %rdi,%rbx
	addq $-48,%rbp
	jmp snTP_info
.Lco9M:
	movl $EngineziTerrainziGenerator_zdwa_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lco9N:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_zdwa_ct+56
	movq $EngineziTerrainziGenerator_zdwa_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_zdwa_ct
	jmp .Lco9O
.Lco9R:
	movq %r8,%rbx
	addq $-48,%rbp
	jmp snTP_info
	.size EngineziTerrainziGenerator_zdwa_info, .-EngineziTerrainziGenerator_zdwa_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_genHeightsSplit1_srt:
	.quad	EngineziTerrainziGenerator_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genHeightsSplit1_closure
.type EngineziTerrainziGenerator_genHeightsSplit1_closure, @object
EngineziTerrainziGenerator_genHeightsSplit1_closure:
	.quad	EngineziTerrainziGenerator_genHeightsSplit1_info
	.quad	0
.section .rodata
	.align 8
.align 1
coal_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	103
	.byte	101
	.byte	110
	.byte	72
	.byte	101
	.byte	105
	.byte	103
	.byte	104
	.byte	116
	.byte	115
	.byte	83
	.byte	112
	.byte	108
	.byte	105
	.byte	116
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	112
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coao_str:
	.byte	84
	.byte	84
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genHeightsSplit1_ct
.type EngineziTerrainziGenerator_genHeightsSplit1_ct, @object
EngineziTerrainziGenerator_genHeightsSplit1_ct:
	.quad	0
	.quad	7
	.quad	1
	.quad	coal_str
	.quad	coao_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziGenerator_genHeightsSplit1_srt-(so9V_info)+0
	.long	0
	.quad	1094
	.quad	4294967328
so9V_info:
.LcoaO:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 24(%rbp),%rax
	movq %rax,40(%rbp)
	movq 16(%rbp),%rsi
	movq 8(%rbp),%rdi
	movq 7(%rbx),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziGenerator_zdwa_info
	.size so9V_info, .-so9V_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genHeightsSplit1_srt-(so9W_info)+0
	.long	0
	.quad	1030
	.quad	4294967328
so9W_info:
.LcoaS:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $so9V_info,0(%rbp)
	testq $7,%rbx
	jne so9V_info
	jmp *(%rbx)
	.size so9W_info, .-so9W_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genHeightsSplit1_srt-(so9X_info)+0
	.long	0
	.quad	517
	.quad	4294967328
so9X_info:
.Lcob1:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $so9W_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne so9W_info
	jmp *(%rbx)
	.size so9X_info, .-so9X_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genHeightsSplit1_srt-(so9Y_info)+0
	.long	0
	.quad	5
	.quad	4294967328
so9Y_info:
.Lcob8:
	movq 32(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $so9X_info,0(%rbp)
	testq $7,%rbx
	jne so9X_info
	jmp *(%rbx)
	.size so9Y_info, .-so9Y_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genHeightsSplit1_srt-(so9Z_info)+0
	.long	0
	.quad	4
	.quad	4294967328
so9Z_info:
.Lcobh:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $so9Y_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne so9Y_info
	jmp *(%rbx)
	.size so9Z_info, .-so9Z_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genHeightsSplit1_srt-(EngineziTerrainziGenerator_genHeightsSplit1_info)+0
	.long	0
	.quad	30064771095
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziGenerator_genHeightsSplit1_info
.type EngineziTerrainziGenerator_genHeightsSplit1_info, @object
EngineziTerrainziGenerator_genHeightsSplit1_info:
.Lcobo:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcobq
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_genHeightsSplit1_ct
	je .Lcobr
.Lcobs:
	incq EngineziTerrainziGenerator_genHeightsSplit1_ct+40
	movq %r9,-24(%rbp)
	movq %r8,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $so9Z_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne so9Z_info
	jmp *(%rbx)
.Lcobq:
	movl $EngineziTerrainziGenerator_genHeightsSplit1_closure,%ebx
	jmp *-8(%r13)
.Lcobr:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_genHeightsSplit1_ct+56
	movq $EngineziTerrainziGenerator_genHeightsSplit1_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_genHeightsSplit1_ct
	jmp .Lcobs
	.size EngineziTerrainziGenerator_genHeightsSplit1_info, .-EngineziTerrainziGenerator_genHeightsSplit1_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_genHeightsSplit_srt:
	.quad	EngineziTerrainziGenerator_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genHeightsSplit_closure
.type EngineziTerrainziGenerator_genHeightsSplit_closure, @object
EngineziTerrainziGenerator_genHeightsSplit_closure:
	.quad	EngineziTerrainziGenerator_genHeightsSplit_info
	.quad	0
.section .rodata
	.align 8
.align 1
cobF_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	103
	.byte	101
	.byte	110
	.byte	72
	.byte	101
	.byte	105
	.byte	103
	.byte	104
	.byte	116
	.byte	115
	.byte	83
	.byte	112
	.byte	108
	.byte	105
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	67
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cobI_str:
	.byte	84
	.byte	84
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genHeightsSplit_ct
.type EngineziTerrainziGenerator_genHeightsSplit_ct, @object
EngineziTerrainziGenerator_genHeightsSplit_ct:
	.quad	0
	.quad	7
	.quad	1
	.quad	cobF_str
	.quad	cobI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziGenerator_genHeightsSplit_srt-(EngineziTerrainziGenerator_genHeightsSplit_info)+0
	.long	0
	.quad	30064771095
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziGenerator_genHeightsSplit_info
.type EngineziTerrainziGenerator_genHeightsSplit_info, @object
EngineziTerrainziGenerator_genHeightsSplit_info:
.LcobN:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_genHeightsSplit_ct
	je .LcobQ
.LcobS:
	incq EngineziTerrainziGenerator_genHeightsSplit_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziTerrainziGenerator_genHeightsSplit1_info
.LcobQ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_genHeightsSplit_ct+56
	movq $EngineziTerrainziGenerator_genHeightsSplit_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_genHeightsSplit_ct
	jmp .LcobS
	.size EngineziTerrainziGenerator_genHeightsSplit_info, .-EngineziTerrainziGenerator_genHeightsSplit_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_calculateNormals_closure
.type EngineziTerrainziGenerator_calculateNormals_closure, @object
EngineziTerrainziGenerator_calculateNormals_closure:
	.quad	EngineziTerrainziGenerator_calculateNormals_info
.section .rodata
	.align 8
.align 1
cohp_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
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
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	108
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	71
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cohr_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_calculateNormals_ct
.type EngineziTerrainziGenerator_calculateNormals_ct, @object
EngineziTerrainziGenerator_calculateNormals_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cohp_str
	.quad	cohr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	65
	.quad	32
socj_info:
.LcohC:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcohI
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcohI:
	movq $16,192(%r13)
.LcohG:
	jmp *-16(%r13)
	.size socj_info, .-socj_info
.text
	.align 8
	.quad	1
	.quad	32
sock_info:
.LcohN:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socj_info,0(%rbp)
	testq $7,%rbx
	jne socj_info
	jmp *(%rbx)
	.size sock_info, .-sock_info
.text
	.align 8
	.quad	2
	.quad	19
snV9_info:
.LcohY:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcoi0
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sock_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sock_info
	jmp *(%rbx)
.Lcoi0:
	jmp *-16(%r13)
	.size snV9_info, .-snV9_info
.text
	.align 8
	.quad	65
	.quad	32
socl_info:
.Lcoid:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcoij
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lcoij:
	movq $16,192(%r13)
.Lcoih:
	jmp *-16(%r13)
	.size socl_info, .-socl_info
.text
	.align 8
	.quad	1
	.quad	32
socm_info:
.Lcoio:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socl_info,0(%rbp)
	testq $7,%rbx
	jne socl_info
	jmp *(%rbx)
	.size socm_info, .-socm_info
.text
	.align 8
	.quad	2
	.quad	19
snVj_info:
.Lcoiz:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoiB
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $socm_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne socm_info
	jmp *(%rbx)
.LcoiB:
	jmp *-16(%r13)
	.size snVj_info, .-snVj_info
.text
	.align 8
	.quad	65
	.quad	32
socn_info:
.LcoiO:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoiU
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoiU:
	movq $16,192(%r13)
.LcoiS:
	jmp *-16(%r13)
	.size socn_info, .-socn_info
.text
	.align 8
	.quad	1
	.quad	32
soco_info:
.LcoiZ:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socn_info,0(%rbp)
	testq $7,%rbx
	jne socn_info
	jmp *(%rbx)
	.size soco_info, .-soco_info
.text
	.align 8
	.quad	2
	.quad	19
snVu_info:
.Lcoja:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcojc
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soco_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soco_info
	jmp *(%rbx)
.Lcojc:
	jmp *-16(%r13)
	.size snVu_info, .-snVu_info
.text
	.align 8
	.quad	65
	.quad	32
socp_info:
.Lcojp:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcojv
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lcojv:
	movq $16,192(%r13)
.Lcojt:
	jmp *-16(%r13)
	.size socp_info, .-socp_info
.text
	.align 8
	.quad	1
	.quad	32
socq_info:
.LcojA:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socp_info,0(%rbp)
	testq $7,%rbx
	jne socp_info
	jmp *(%rbx)
	.size socq_info, .-socq_info
.text
	.align 8
	.quad	2
	.quad	19
snVE_info:
.LcojL:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcojN
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $socq_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne socq_info
	jmp *(%rbx)
.LcojN:
	jmp *-16(%r13)
	.size snVE_info, .-snVE_info
.text
	.align 8
	.quad	451
	.quad	32
socr_info:
.Lcok8:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcoke
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 24(%rbp),%xmm1
	mulss 16(%rbp),%xmm1
	subss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcoke:
	movq $16,192(%r13)
.Lcokc:
	jmp *-16(%r13)
	.size socr_info, .-socr_info
.text
	.align 8
	.quad	387
	.quad	32
socs_info:
.Lcokm:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socr_info,0(%rbp)
	testq $7,%rbx
	jne socr_info
	jmp *(%rbx)
	.size socs_info, .-socs_info
.text
	.align 8
	.quad	259
	.quad	32
soct_info:
.Lcokv:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $socs_info,0(%rbp)
	testq $7,%rbx
	jne socs_info
	jmp *(%rbx)
	.size soct_info, .-soct_info
.text
	.align 8
	.quad	3
	.quad	32
socu_info:
.LcokE:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $soct_info,0(%rbp)
	testq $7,%rbx
	jne soct_info
	jmp *(%rbx)
	.size socu_info, .-socu_info
.text
	.align 8
	.quad	4
	.quad	16
snVW_info:
.LcokP:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcokR
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $socu_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne socu_info
	jmp *(%rbx)
.LcokR:
	jmp *-16(%r13)
	.size snVW_info, .-snVW_info
.text
	.align 8
	.quad	65
	.quad	32
socv_info:
.Lcol6:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcolc
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lcolc:
	movq $16,192(%r13)
.Lcola:
	jmp *-16(%r13)
	.size socv_info, .-socv_info
.text
	.align 8
	.quad	1
	.quad	32
socw_info:
.Lcolh:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socv_info,0(%rbp)
	testq $7,%rbx
	jne socv_info
	jmp *(%rbx)
	.size socw_info, .-socw_info
.text
	.align 8
	.quad	2
	.quad	19
snW7_info:
.Lcols:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcolu
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $socw_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne socw_info
	jmp *(%rbx)
.Lcolu:
	jmp *-16(%r13)
	.size snW7_info, .-snW7_info
.text
	.align 8
	.quad	65
	.quad	32
socx_info:
.LcolH:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcolN
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	subss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcolN:
	movq $16,192(%r13)
.LcolL:
	jmp *-16(%r13)
	.size socx_info, .-socx_info
.text
	.align 8
	.quad	1
	.quad	32
socy_info:
.LcolS:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socx_info,0(%rbp)
	testq $7,%rbx
	jne socx_info
	jmp *(%rbx)
	.size socy_info, .-socy_info
.text
	.align 8
	.quad	2
	.quad	19
snWh_info:
.Lcom3:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcom5
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $socy_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne socy_info
	jmp *(%rbx)
.Lcom5:
	jmp *-16(%r13)
	.size snWh_info, .-snWh_info
.text
	.align 8
	.quad	451
	.quad	32
socA_info:
.Lcomb:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcomf
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 24(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 16(%rbp),%xmm1
	mulss 8(%rbp),%xmm1
	subss %xmm0,%xmm1
	xorps %xmm0,%xmm0
	ucomiss %xmm0,%xmm1
	ja .Lcomi
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss .Lnomq(%rip),%xmm0
	xorps %xmm0,%xmm1
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcomf:
	movq $16,192(%r13)
.Lcomd:
	jmp *-16(%r13)
.Lcomi:
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
	.size socA_info, .-socA_info
.section .rodata
	.align 8
.align 4
.Lnomq:
	.long	-2147483648
.text
	.align 8
	.quad	195
	.quad	32
socB_info:
.Lcomv:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $socA_info,0(%rbp)
	testq $7,%rbx
	jne socA_info
	jmp *(%rbx)
	.size socB_info, .-socB_info
.text
	.align 8
	.quad	131
	.quad	32
socC_info:
.LcomE:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socB_info,0(%rbp)
	testq $7,%rbx
	jne socB_info
	jmp *(%rbx)
	.size socC_info, .-socC_info
.text
	.align 8
	.quad	3
	.quad	32
socD_info:
.LcomN:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $socC_info,0(%rbp)
	testq $7,%rbx
	jne socC_info
	jmp *(%rbx)
	.size socD_info, .-socD_info
.text
	.align 8
	.quad	4
	.quad	16
snWD_info:
.LcomY:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcon0
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $socD_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne socD_info
	jmp *(%rbx)
.Lcon0:
	jmp *-16(%r13)
	.size snWD_info, .-snWD_info
.text
	.align 8
	.quad	451
	.quad	32
socE_info:
.Lconn:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcont
	addq $2,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	mulss (%rax),%xmm0
	movss 24(%rbp),%xmm1
	mulss 16(%rbp),%xmm1
	subss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.Lcont:
	movq $16,192(%r13)
.Lconr:
	jmp *-16(%r13)
	.size socE_info, .-socE_info
.text
	.align 8
	.quad	387
	.quad	32
socF_info:
.LconB:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $socE_info,0(%rbp)
	testq $7,%rbx
	jne socE_info
	jmp *(%rbx)
	.size socF_info, .-socF_info
.text
	.align 8
	.quad	259
	.quad	32
socG_info:
.LconK:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $socF_info,0(%rbp)
	testq $7,%rbx
	jne socF_info
	jmp *(%rbx)
	.size socG_info, .-socG_info
.text
	.align 8
	.quad	3
	.quad	32
socH_info:
.LconT:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $socG_info,0(%rbp)
	testq $7,%rbx
	jne socG_info
	jmp *(%rbx)
	.size socH_info, .-socH_info
.text
	.align 8
	.quad	4
	.quad	16
snWV_info:
.Lcoo4:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcoo6
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $socH_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne socH_info
	jmp *(%rbx)
.Lcoo6:
	jmp *-16(%r13)
	.size snWV_info, .-snWV_info
.section .rodata
	.align 8
.align 1
cood_str:
	.byte	120
	.byte	115
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	110
	.byte	88
	.byte	56
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
coof_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
snX8_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cood_str
	.quad	coof_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967297
	.quad	20
socg_info:
.Lcooo:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcooq
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp snX8_info
.Lcooq:
	jmp *-16(%r13)
	.size socg_info, .-socg_info
.text
	.align 8
	.quad	4294967300
	.quad	2
	.quad	12
snX8_info:
.Lcoov:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lcooz
	addq $7,snX8_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,snX8_ct
	je .LcooA
.LcooB:
	incq snX8_ct+40
	cmpq $1,%r14
	jle .LcooD
	movq $socg_info,-48(%r12)
	movq %rbx,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.Lcooz:
	movq $56,192(%r13)
.Lcoox:
	jmp *-8(%r13)
.LcooA:
	movq ticky_entry_ctrs,%rax
	movq %rax,snX8_ct+56
	movq $snX8_ct,ticky_entry_ctrs
	movq $1,snX8_ct
	jmp .LcooB
.LcooD:
	movq 15(%rbx),%rbx
	addq $-56,%r12
	addq $-7,snX8_ct+48
	incq ALLOC_HEAP_ctr
	addq $-7,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size snX8_info, .-snX8_info
.text
	.align 8
	.quad	1
	.quad	17
soch_info:
.LcooM:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcooO
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_calculateNormals_info
.LcooO:
	jmp *-16(%r13)
	.size soch_info, .-soch_info
.text
	.align 8
	.quad	1
	.quad	32
soci_info:
.LcooY:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp base_GHCziBase_zpzp_info
	.size soci_info, .-soci_info
.text
	.align 8
	.quad	1
	.quad	32
snXd_info:
.Lcop1:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq $soci_info,0(%rbp)
	jmp base_GHCziList_concatzugo_info
	.size snXd_info, .-snXd_info
.text
	.align 8
	.quad	8
	.quad	32
soc4_info:
.Lcop6:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcop7
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $72,%rbp
	jmp *0(%rbp)
.Lcop7:
	addq $480,%r12
	cmpq 144(%r13),%r12
	ja .Lcopb
	addq $60,EngineziTerrainziGenerator_calculateNormals_ct+48
	incq ALLOC_HEAP_ctr
	addq $60,ALLOC_HEAP_tot
	movq $snV9_info,-472(%r12)
	movq 6(%rbx),%rax
	movq %rax,-456(%r12)
	movq 48(%rbp),%rax
	movq %rax,-448(%r12)
	movq $snVj_info,-440(%r12)
	movq 48(%rbp),%rax
	movq %rax,-424(%r12)
	movq 24(%rbp),%rax
	movq %rax,-416(%r12)
	movq $snVu_info,-408(%r12)
	movq 8(%rbp),%rax
	movq %rax,-392(%r12)
	movq 56(%rbp),%rax
	movq %rax,-384(%r12)
	movq $snVE_info,-376(%r12)
	movq 56(%rbp),%rax
	movq %rax,-360(%r12)
	movq 32(%rbp),%rax
	movq %rax,-352(%r12)
	movq $snVW_info,-344(%r12)
	leaq -472(%r12),%rax
	movq %rax,-328(%r12)
	leaq -440(%r12),%rax
	movq %rax,-320(%r12)
	leaq -408(%r12),%rax
	movq %rax,-312(%r12)
	leaq -376(%r12),%rax
	movq %rax,-304(%r12)
	movq $snW7_info,-296(%r12)
	movq 16(%rbp),%rax
	movq %rax,-280(%r12)
	movq 64(%rbp),%rax
	movq %rax,-272(%r12)
	movq $snWh_info,-264(%r12)
	movq 64(%rbp),%rax
	movq %rax,-248(%r12)
	movq 40(%rbp),%rax
	movq %rax,-240(%r12)
	movq $snWD_info,-232(%r12)
	leaq -472(%r12),%rax
	movq %rax,-216(%r12)
	leaq -440(%r12),%rax
	movq %rax,-208(%r12)
	leaq -296(%r12),%rax
	movq %rax,-200(%r12)
	leaq -264(%r12),%rax
	movq %rax,-192(%r12)
	movq $snWV_info,-184(%r12)
	leaq -408(%r12),%rax
	movq %rax,-168(%r12)
	leaq -376(%r12),%rax
	movq %rax,-160(%r12)
	leaq -296(%r12),%rax
	movq %rax,-152(%r12)
	leaq -264(%r12),%rax
	movq %rax,-144(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-136(%r12)
	leaq -184(%r12),%rax
	movq %rax,-128(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-120(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	leaq -232(%r12),%rax
	movq %rax,-104(%r12)
	leaq -134(%r12),%rax
	movq %rax,-96(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-88(%r12)
	leaq -344(%r12),%rax
	movq %rax,-80(%r12)
	leaq -110(%r12),%rax
	movq %rax,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	leaq -86(%r12),%rax
	movq %rax,-56(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-48(%r12)
	movq $snX8_info,-40(%r12)
	leaq -86(%r12),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	movq $soch_info,-16(%r12)
	movq 14(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%rax
	movq %rax,64(%rbp)
	leaq -39(%r12),%rbx
	movl $3,%r14d
	movq $snXd_info,56(%rbp)
	addq $56,%rbp
	jmp snX8_info
.Lcopb:
	movq $480,192(%r13)
.Lcop9:
	jmp *-16(%r13)
	.size soc4_info, .-soc4_info
.text
	.align 8
	.quad	7
	.quad	32
soc3_info:
.LcopR:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcopS
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $64,%rbp
	jmp *0(%rbp)
.LcopS:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soc4_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soc4_info
	jmp *(%rbx)
	.size soc3_info, .-soc3_info
.text
	.align 8
	.quad	6
	.quad	32
soc2_info:
.Lcoq4:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcoq5
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $56,%rbp
	jmp *0(%rbp)
.Lcoq5:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soc3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soc3_info
	jmp *(%rbx)
	.size soc2_info, .-soc2_info
.text
	.align 8
	.quad	5
	.quad	32
soc1_info:
.Lcoqh:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcoqi
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $48,%rbp
	jmp *0(%rbp)
.Lcoqi:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soc2_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soc2_info
	jmp *(%rbx)
	.size soc1_info, .-soc1_info
.text
	.align 8
	.quad	4
	.quad	32
soc0_info:
.Lcoqu:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcoqv
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $40,%rbp
	jmp *0(%rbp)
.Lcoqv:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soc1_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soc1_info
	jmp *(%rbx)
	.size soc0_info, .-soc0_info
.text
	.align 8
	.quad	3
	.quad	32
sobZ_info:
.LcoqH:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoqI
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcoqI:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soc0_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soc0_info
	jmp *(%rbx)
	.size sobZ_info, .-sobZ_info
.text
	.align 8
	.quad	2
	.quad	32
sobY_info:
.LcoqU:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoqV
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LcoqV:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sobZ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sobZ_info
	jmp *(%rbx)
	.size sobY_info, .-sobY_info
.text
	.align 8
	.quad	1
	.quad	32
sobX_info:
.Lcor7:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcor8
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.Lcor8:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sobY_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sobY_info
	jmp *(%rbx)
	.size sobX_info, .-sobX_info
.text
	.align 8
	.quad	0
	.quad	32
sobW_info:
.Lcork:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcorl
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcorl:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sobX_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sobX_info
	jmp *(%rbx)
	.size sobW_info, .-sobW_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziTerrainziGenerator_calculateNormals_info
.type EngineziTerrainziGenerator_calculateNormals_info, @object
EngineziTerrainziGenerator_calculateNormals_info:
.Lcorv:
	leaq -72(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcorx
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_calculateNormals_ct
	je .Lcory
.Lcorz:
	incq EngineziTerrainziGenerator_calculateNormals_ct+40
	movq %r14,%rbx
	movq $sobW_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sobW_info
	jmp *(%rbx)
.Lcorx:
	movl $EngineziTerrainziGenerator_calculateNormals_closure,%ebx
	jmp *-8(%r13)
.Lcory:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_calculateNormals_ct+56
	movq $EngineziTerrainziGenerator_calculateNormals_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_calculateNormals_ct
	jmp .Lcorz
	.size EngineziTerrainziGenerator_calculateNormals_info, .-EngineziTerrainziGenerator_calculateNormals_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findY2_closure
.type EngineziTerrainziGenerator_findY2_closure, @object
EngineziTerrainziGenerator_findY2_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	2000
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findY3_closure
.type EngineziTerrainziGenerator_findY3_closure, @object
EngineziTerrainziGenerator_findY3_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	6283
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_findY1_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziTerrainziGenerator_findY2_closure
	.quad	EngineziTerrainziGenerator_findY3_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findY1_closure
.type EngineziTerrainziGenerator_findY1_closure, @object
EngineziTerrainziGenerator_findY1_closure:
	.quad	EngineziTerrainziGenerator_findY1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sorL_info:
.Lcos6:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcosc
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .Lnosd(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcosc:
	movq $16,192(%r13)
.Lcosa:
	jmp *-16(%r13)
	.size sorL_info, .-sorL_info
.section .rodata
	.align 8
.align 4
.Lnosd:
	.long	-2147483648
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY1_srt-(EngineziTerrainziGenerator_findY1_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziTerrainziGenerator_findY1_info
.type EngineziTerrainziGenerator_findY1_info, @object
EngineziTerrainziGenerator_findY1_info:
.Lcosi:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcosk
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcosm
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
	je .Lcosn
.Lcoso:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziTerrainziGenerator_findY3_closure+1,%r14d
	movl $EngineziTerrainziGenerator_findY2_closure+1,%esi
	movq $sorL_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.Lcosm:
	movq $16,192(%r13)
.Lcosk:
	jmp *-16(%r13)
.Lcosn:
	jmp *(%rbx)
	.size EngineziTerrainziGenerator_findY1_info, .-EngineziTerrainziGenerator_findY1_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_findYzuzdsfindY_srt:
	.quad	EngineziTerrainziGenerator_findYzuzdsfindY_closure
	.quad	EngineziTerrainziGenerator_findY1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findYzuzdsfindY_closure
.type EngineziTerrainziGenerator_findYzuzdsfindY_closure, @object
EngineziTerrainziGenerator_findYzuzdsfindY_closure:
	.quad	EngineziTerrainziGenerator_findYzuzdsfindY_info
	.quad	0
.section .rodata
	.align 8
.align 1
cotJ_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	102
	.byte	105
	.byte	110
	.byte	100
	.byte	89
	.byte	95
	.byte	36
	.byte	115
	.byte	102
	.byte	105
	.byte	110
	.byte	100
	.byte	89
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	115
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cotL_str:
	.byte	102
	.byte	65
	.byte	102
	.byte	65
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findYzuzdsfindY_ct
.type EngineziTerrainziGenerator_findYzuzdsfindY_ct, @object
EngineziTerrainziGenerator_findYzuzdsfindY_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cotJ_str
	.quad	cotL_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_findYzuzdsfindY_slow
.type EngineziTerrainziGenerator_findYzuzdsfindY_slow, @object
EngineziTerrainziGenerator_findYzuzdsfindY_slow:
.LcotO:
	movss 0(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY_info
	.size EngineziTerrainziGenerator_findYzuzdsfindY_slow, .-EngineziTerrainziGenerator_findYzuzdsfindY_slow
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY_srt-(sosB_info)+0
	.long	0
	.quad	772
	.quad	4294967328
sosB_info:
.LcotR:
	movss 24(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnotW
	je .LcotU
.LnotW:
	incq KNOWN_CALL_ctr
	movss 32(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movq 16(%rbp),%r14
	addq $40,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY_info
.LcotU:
	movq 8(%rbp),%rbx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sosB_info, .-sosB_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY_srt-(sosz_info)+0
	.long	0
	.quad	1541
	.quad	4294967328
sosz_info:
.Lcou0:
	movss 40(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnou7
	je .Lcou2
.Lnou7:
	incq KNOWN_CALL_ctr
	movss 40(%rbp),%xmm1
	movss 32(%rbp),%xmm2
	movq 24(%rbp),%r14
	addq $48,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY_info
.Lcou2:
	movq 8(%rbp),%rbx
	movq $sosB_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sosB_info
	jmp *(%rbx)
	.size sosz_info, .-sosz_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY_srt-(sosx_info)+0
	.long	0
	.quad	772
	.quad	12884901920
sosx_info:
.Lcouc:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcoud
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcoud:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 14(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sosz_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sosz_info
	jmp *(%rbx)
	.size sosx_info, .-sosx_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY_srt-(sosw_info)+0
	.long	0
	.quad	387
	.quad	12884901920
sosw_info:
.Lcout:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcouu
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcouu:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sosx_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sosx_info
	jmp *(%rbx)
	.size sosw_info, .-sosw_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY_srt-(sosv_info)+0
	.long	0
	.quad	194
	.quad	12884901920
sosv_info:
.LcouH:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcouI
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcouI:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sosw_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sosw_info
	jmp *(%rbx)
	.size sosv_info, .-sosv_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY_slow-(EngineziTerrainziGenerator_findYzuzdsfindY_info)+0
	.long	0
	.quad	195
	.long	EngineziTerrainziGenerator_findYzuzdsfindY_srt-(EngineziTerrainziGenerator_findYzuzdsfindY_info)+0
	.long	0
	.quad	21474836480
	.quad	0
	.quad	12884901903
.globl EngineziTerrainziGenerator_findYzuzdsfindY_info
.type EngineziTerrainziGenerator_findYzuzdsfindY_info, @object
EngineziTerrainziGenerator_findYzuzdsfindY_info:
.LcouT:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcouV
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_findYzuzdsfindY_ct
	je .LcouW
.LcouX:
	incq EngineziTerrainziGenerator_findYzuzdsfindY_ct+40
	movss %xmm2,-16(%rbp)
	movss %xmm1,-8(%rbp)
	movq %r14,%rbx
	movq $sosv_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sosv_info
	jmp *(%rbx)
.LcouV:
	movl $EngineziTerrainziGenerator_findYzuzdsfindY_closure,%ebx
	addq $-24,%rbp
	movss %xmm1,0(%rbp)
	movss %xmm2,8(%rbp)
	movq %r14,16(%rbp)
	jmp *-8(%r13)
.LcouW:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_findYzuzdsfindY_ct+56
	movq $EngineziTerrainziGenerator_findYzuzdsfindY_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_findYzuzdsfindY_ct
	jmp .LcouX
	.size EngineziTerrainziGenerator_findYzuzdsfindY_info, .-EngineziTerrainziGenerator_findYzuzdsfindY_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_findYzuzdsfindY1_srt:
	.quad	EngineziTerrainziGenerator_findYzuzdsfindY_closure
	.quad	EngineziTerrainziGenerator_findYzuzdsfindY1_closure
	.quad	EngineziTerrainziGenerator_findY1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findYzuzdsfindY1_closure
.type EngineziTerrainziGenerator_findYzuzdsfindY1_closure, @object
EngineziTerrainziGenerator_findYzuzdsfindY1_closure:
	.quad	EngineziTerrainziGenerator_findYzuzdsfindY1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cowr_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	102
	.byte	105
	.byte	110
	.byte	100
	.byte	89
	.byte	95
	.byte	36
	.byte	115
	.byte	102
	.byte	105
	.byte	110
	.byte	100
	.byte	89
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	116
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cowt_str:
	.byte	102
	.byte	65
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findYzuzdsfindY1_ct
.type EngineziTerrainziGenerator_findYzuzdsfindY1_ct, @object
EngineziTerrainziGenerator_findYzuzdsfindY1_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cowr_str
	.quad	cowt_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_findYzuzdsfindY1_slow
.type EngineziTerrainziGenerator_findYzuzdsfindY1_slow, @object
EngineziTerrainziGenerator_findYzuzdsfindY1_slow:
.Lcoww:
	movss 0(%rbp),%xmm1
	movq 8(%rbp),%r14
	movq 16(%rbp),%rsi
	addq $24,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY1_info
	.size EngineziTerrainziGenerator_findYzuzdsfindY1_slow, .-EngineziTerrainziGenerator_findYzuzdsfindY1_slow
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_srt-(sovb_info)+0
	.long	0
	.quad	772
	.quad	4294967328
sovb_info:
.Lcowz:
	movss 24(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnowE
	je .LcowC
.LnowE:
	incq KNOWN_CALL_ctr
	movss 32(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movq 16(%rbp),%r14
	addq $40,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY_info
.LcowC:
	movq 8(%rbp),%rbx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sovb_info, .-sovb_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_srt-(sovc_info)+0
	.long	0
	.quad	1541
	.quad	4294967328
sovc_info:
.LcowI:
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq 8(%rbp),%rbx
	movq $sovb_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sovb_info
	jmp *(%rbx)
	.size sovc_info, .-sovc_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_srt-(sov9_info)+0
	.long	0
	.quad	1029
	.quad	12884901920
sov9_info:
.LcowP:
	movss 40(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnowW
	je .LcowR
.LnowW:
	incq KNOWN_CALL_ctr
	movss 40(%rbp),%xmm1
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	addq $48,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY1_info
.LcowR:
	movq 32(%rbp),%rbx
	movq $sovc_info,0(%rbp)
	testq $7,%rbx
	jne sovc_info
	jmp *(%rbx)
	.size sov9_info, .-sov9_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_srt-(sov7_info)+0
	.long	0
	.quad	516
	.quad	30064771104
sov7_info:
.Lcox1:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcox2
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcox2:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 14(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sov9_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sov9_info
	jmp *(%rbx)
	.size sov7_info, .-sov7_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_srt-(sov6_info)+0
	.long	0
	.quad	259
	.quad	30064771104
sov6_info:
.Lcoxi:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcoxj
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcoxj:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sov7_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sov7_info
	jmp *(%rbx)
	.size sov6_info, .-sov6_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_srt-(sov5_info)+0
	.long	0
	.quad	130
	.quad	30064771104
sov5_info:
.Lcoxw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lcoxx
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcoxx:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sov6_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sov6_info
	jmp *(%rbx)
	.size sov5_info, .-sov5_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_slow-(EngineziTerrainziGenerator_findYzuzdsfindY1_info)+0
	.long	0
	.quad	67
	.long	EngineziTerrainziGenerator_findYzuzdsfindY1_srt-(EngineziTerrainziGenerator_findYzuzdsfindY1_info)+0
	.long	0
	.quad	17179869184
	.quad	0
	.quad	30064771087
.globl EngineziTerrainziGenerator_findYzuzdsfindY1_info
.type EngineziTerrainziGenerator_findYzuzdsfindY1_info, @object
EngineziTerrainziGenerator_findYzuzdsfindY1_info:
.LcoxI:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoxK
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_findYzuzdsfindY1_ct
	je .LcoxL
.LcoxM:
	incq EngineziTerrainziGenerator_findYzuzdsfindY1_ct+40
	movq %r14,-16(%rbp)
	movss %xmm1,-8(%rbp)
	movq %rsi,%rbx
	movq $sov5_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sov5_info
	jmp *(%rbx)
.LcoxK:
	movl $EngineziTerrainziGenerator_findYzuzdsfindY1_closure,%ebx
	addq $-24,%rbp
	movss %xmm1,0(%rbp)
	movq %r14,8(%rbp)
	movq %rsi,16(%rbp)
	jmp *-8(%r13)
.LcoxL:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_findYzuzdsfindY1_ct+56
	movq $EngineziTerrainziGenerator_findYzuzdsfindY1_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_findYzuzdsfindY1_ct
	jmp .LcoxM
	.size EngineziTerrainziGenerator_findYzuzdsfindY1_info, .-EngineziTerrainziGenerator_findYzuzdsfindY1_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_findY_srt:
	.quad	EngineziTerrainziGenerator_findYzuzdsfindY_closure
	.quad	EngineziTerrainziGenerator_findYzuzdsfindY1_closure
	.quad	EngineziTerrainziGenerator_findY1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findY_closure
.type EngineziTerrainziGenerator_findY_closure, @object
EngineziTerrainziGenerator_findY_closure:
	.quad	EngineziTerrainziGenerator_findY_info
	.quad	0
.section .rodata
	.align 8
.align 1
cozl_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	102
	.byte	105
	.byte	110
	.byte	100
	.byte	89
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	68
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cozn_str:
	.byte	83
	.byte	83
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_findY_ct
.type EngineziTerrainziGenerator_findY_ct, @object
EngineziTerrainziGenerator_findY_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cozl_str
	.quad	cozn_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(soy0_info)+0
	.long	0
	.quad	388
	.quad	4294967328
soy0_info:
.Lcozr:
	movss 24(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .Lnozw
	je .Lcozu
.Lnozw:
	incq KNOWN_CALL_ctr
	movss 16(%rbp),%xmm1
	movss 24(%rbp),%xmm2
	movq 32(%rbp),%r14
	addq $40,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY_info
.Lcozu:
	movq 8(%rbp),%rbx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size soy0_info, .-soy0_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(soy1_info)+0
	.long	0
	.quad	773
	.quad	4294967328
soy1_info:
.LcozA:
	movss 7(%rbx),%xmm0
	movss %xmm0,32(%rbp)
	movq 8(%rbp),%rbx
	movq $soy0_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne soy0_info
	jmp *(%rbx)
	.size soy1_info, .-soy1_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(soxX_info)+0
	.long	0
	.quad	261
	.quad	12884901920
soxX_info:
.LcozH:
	movss 24(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnozO
	je .LcozJ
.LnozO:
	incq KNOWN_CALL_ctr
	movss 24(%rbp),%xmm1
	movq 32(%rbp),%r14
	movq 40(%rbp),%rsi
	addq $48,%rbp
	jmp EngineziTerrainziGenerator_findYzuzdsfindY1_info
.LcozJ:
	movq 32(%rbp),%rbx
	movq $soy1_info,0(%rbp)
	testq $7,%rbx
	jne soy1_info
	jmp *(%rbx)
	.size soxX_info, .-soxX_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(soxY_info)+0
	.long	0
	.quad	5
	.quad	12884901920
soxY_info:
.LcozR:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $soxX_info,0(%rbp)
	testq $7,%rbx
	jne soxX_info
	jmp *(%rbx)
	.size soxY_info, .-soxY_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(soxV_info)+0
	.long	0
	.quad	4
	.quad	30064771104
soxV_info:
.LcoA2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoA3
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $40,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcoA3:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%rax
	movq 14(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $soxY_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soxY_info
	jmp *(%rbx)
	.size soxV_info, .-soxV_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(soxU_info)+0
	.long	0
	.quad	3
	.quad	30064771104
soxU_info:
.LcoAj:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoAk
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcoAk:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soxV_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soxV_info
	jmp *(%rbx)
	.size soxU_info, .-soxU_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(soxT_info)+0
	.long	0
	.quad	2
	.quad	30064771104
soxT_info:
.LcoAx:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoAy
	movl $EngineziTerrainziGenerator_findY1_closure,%ebx
	addq $24,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcoAy:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soxU_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soxU_info
	jmp *(%rbx)
	.size soxT_info, .-soxT_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_findY_srt-(EngineziTerrainziGenerator_findY_info)+0
	.long	0
	.quad	12884901908
	.quad	0
	.quad	30064771087
.globl EngineziTerrainziGenerator_findY_info
.type EngineziTerrainziGenerator_findY_info, @object
EngineziTerrainziGenerator_findY_info:
.LcoAJ:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoAL
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_findY_ct
	je .LcoAM
.LcoAN:
	incq EngineziTerrainziGenerator_findY_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rdi,%rbx
	movq $soxT_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne soxT_info
	jmp *(%rbx)
.LcoAL:
	movl $EngineziTerrainziGenerator_findY_closure,%ebx
	jmp *-8(%r13)
.LcoAM:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_findY_ct+56
	movq $EngineziTerrainziGenerator_findY_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_findY_ct
	jmp .LcoAN
	.size EngineziTerrainziGenerator_findY_info, .-EngineziTerrainziGenerator_findY_info
.section .data
	.align 8
.align 1
rnSm_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziTerrainziGenerator_findY2_closure
	.quad	EngineziTerrainziGenerator_findY3_closure
.data
	.align 8
.align 1
rnSm_closure:
	.quad	rnSm_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
soAV_info:
.LcoBe:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoBk
	addq $2,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .LnoBl(%rip),%xmm0
	xorps %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcoBk:
	movq $16,192(%r13)
.LcoBi:
	jmp *-16(%r13)
	.size soAV_info, .-soAV_info
.section .rodata
	.align 8
.align 4
.LnoBl:
	.long	-2147483648
.text
	.align 8
	.long	rnSm_srt-(rnSm_info)+0
	.long	0
	.quad	0
	.quad	30064771094
rnSm_info:
.LcoBq:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoBs
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoBu
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
	je .LcoBv
.LcoBw:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziTerrainziGenerator_findY3_closure+1,%r14d
	movl $EngineziTerrainziGenerator_findY2_closure+1,%esi
	movq $soAV_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcoBu:
	movq $16,192(%r13)
.LcoBs:
	jmp *-16(%r13)
.LcoBv:
	jmp *(%rbx)
	.size rnSm_info, .-rnSm_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_applyHeights_srt:
	.quad	EngineziTerrainziGenerator_findY_closure
	.quad	EngineziTerrainziGenerator_applyHeights_closure
	.quad	rnSm_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_applyHeights_closure
.type EngineziTerrainziGenerator_applyHeights_closure, @object
EngineziTerrainziGenerator_applyHeights_closure:
	.quad	EngineziTerrainziGenerator_applyHeights_info
	.quad	0
.section .rodata
	.align 8
.align 1
coCM_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	72
	.byte	101
	.byte	105
	.byte	103
	.byte	104
	.byte	116
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	72
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coCO_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_applyHeights_ct
.type EngineziTerrainziGenerator_applyHeights_ct, @object
EngineziTerrainziGenerator_applyHeights_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	coCM_str
	.quad	coCO_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziGenerator_applyHeights_srt-(snZq_info)+8
	.long	0
	.quad	2
	.quad	4294967315
snZq_info:
.LcoCU:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoCW
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movq 16(%rbx),%rsi
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_applyHeights_info
.LcoCW:
	jmp *-16(%r13)
	.size snZq_info, .-snZq_info
.text
	.align 8
	.quad	131
	.quad	32
soBI_info:
.LcoD0:
	movss 16(%rbp),%xmm0
	ucomiss 7(%rbx),%xmm0
	jp .LnoD5
	je .LcoD3
.LnoD5:
	movq 8(%rbp),%rbx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcoD3:
	movq 24(%rbp),%rbx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size soBI_info, .-soBI_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_applyHeights_srt-(snZl_info)+16
	.long	0
	.quad	1
	.quad	4294967328
snZl_info:
.LcoDa:
	movq %rbx,-8(%rbp)
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $rnSm_closure,%ebx
	movq $soBI_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne soBI_info
	jmp *(%rbx)
	.size snZl_info, .-snZl_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_applyHeights_srt-(snZt_info)+0
	.long	0
	.quad	4
	.quad	21474836496
snZt_info:
.LcoDi:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoDk
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 40(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	movq $snZl_info,-32(%rbp)
	addq $-32,%rbp
	jmp EngineziTerrainziGenerator_findY_info
.LcoDk:
	jmp *-16(%r13)
	.size snZt_info, .-snZt_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_applyHeights_srt-(soBF_info)+0
	.long	0
	.quad	3
	.quad	30064771104
soBF_info:
.LcoDr:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoDs
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcoDs:
	addq $152,%r12
	cmpq 144(%r13),%r12
	ja .LcoDw
	addq $19,EngineziTerrainziGenerator_applyHeights_ct+48
	incq ALLOC_HEAP_ctr
	addq $19,ALLOC_HEAP_tot
	movq $snZq_info,-144(%r12)
	movq 24(%rbp),%rax
	movq %rax,-128(%r12)
	movq 14(%rbx),%rax
	movq %rax,-120(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	movq 6(%rbx),%rax
	movq %rax,-104(%r12)
	leaq -144(%r12),%rax
	movq %rax,-96(%r12)
	movq $snZt_info,-88(%r12)
	movq 16(%rbp),%rax
	movq %rax,-72(%r12)
	movq 6(%rbx),%rax
	movq %rax,-64(%r12)
	movq 24(%rbp),%rax
	movq %rax,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	leaq -88(%r12),%rax
	movq %rax,-32(%r12)
	leaq -110(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcoDw:
	movq $152,192(%r13)
.LcoDu:
	jmp *-16(%r13)
	.size soBF_info, .-soBF_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_applyHeights_srt-(soBE_info)+0
	.long	0
	.quad	2
	.quad	30064771104
soBE_info:
.LcoDQ:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoDR
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LcoDR:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soBF_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soBF_info
	jmp *(%rbx)
	.size soBE_info, .-soBE_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_applyHeights_srt-(soBD_info)+0
	.long	0
	.quad	1
	.quad	30064771104
soBD_info:
.LcoE3:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoE4
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoE4:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $soBE_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne soBE_info
	jmp *(%rbx)
	.size soBD_info, .-soBD_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_applyHeights_srt-(EngineziTerrainziGenerator_applyHeights_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	30064771087
.globl EngineziTerrainziGenerator_applyHeights_info
.type EngineziTerrainziGenerator_applyHeights_info, @object
EngineziTerrainziGenerator_applyHeights_info:
.LcoEe:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoEg
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_applyHeights_ct
	je .LcoEh
.LcoEi:
	incq EngineziTerrainziGenerator_applyHeights_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $soBD_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne soBD_info
	jmp *(%rbx)
.LcoEg:
	movl $EngineziTerrainziGenerator_applyHeights_closure,%ebx
	jmp *-8(%r13)
.LcoEh:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_applyHeights_ct+56
	movq $EngineziTerrainziGenerator_applyHeights_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_applyHeights_ct
	jmp .LcoEi
	.size EngineziTerrainziGenerator_applyHeights_info, .-EngineziTerrainziGenerator_applyHeights_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_createFlat1_closure
.type EngineziTerrainziGenerator_createFlat1_closure, @object
EngineziTerrainziGenerator_createFlat1_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_closure
.type EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_closure, @object
EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_closure:
	.quad	EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info
.section .rodata
	.align 8
.align 1
coFG_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	70
	.byte	108
	.byte	97
	.byte	116
	.byte	95
	.byte	36
	.byte	115
	.byte	36
	.byte	119
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	114
	.byte	105
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	119
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coFI_str:
	.byte	102
	.byte	83
	.byte	102
	.byte	102
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct
.type EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct, @object
EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	coFG_str
	.quad	coFI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_slow
.type EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_slow, @object
EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_slow:
.LcoFL:
	movss 0(%rbp),%xmm1
	movq 8(%rbp),%r14
	movss 16(%rbp),%xmm2
	movss 24(%rbp),%xmm3
	addq $32,%rbp
	jmp EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info
	.size EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_slow, .-EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_slow
.text
	.align 8
	.quad	12884901889
	.quad	16
so07_info:
.LcoFW:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoFY
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movss 24(%rbx),%xmm1
	movq 16(%rbx),%r14
	movss 40(%rbx),%xmm2
	movss 32(%rbx),%xmm3
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info
.LcoFY:
	jmp *-16(%r13)
	.size so07_info, .-so07_info
.text
	.align 8
	.quad	65
	.quad	32
soEx_info:
.LcoG8:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoGe
	addq $2,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	addss 8(%rbp),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoGe:
	movq $16,192(%r13)
.LcoGc:
	jmp *-16(%r13)
	.size soEx_info, .-soEx_info
.text
	.align 8
	.quad	4294967297
	.quad	20
so0d_info:
.LcoGk:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoGm
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soEx_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soEx_info
	jmp *(%rbx)
.LcoGm:
	jmp *-16(%r13)
	.size so0d_info, .-so0d_info
.text
	.align 8
	.quad	65
	.quad	32
soEy_info:
.LcoGy:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoGE
	addq $2,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	addss 8(%rbp),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoGE:
	movq $16,192(%r13)
.LcoGC:
	jmp *-16(%r13)
	.size soEy_info, .-soEy_info
.text
	.align 8
	.quad	4294967297
	.quad	20
so0r_info:
.LcoGK:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoGM
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soEy_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soEy_info
	jmp *(%rbx)
.LcoGM:
	jmp *-16(%r13)
	.size so0r_info, .-so0r_info
.text
	.align 8
	.quad	65
	.quad	32
soEz_info:
.LcoGW:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoH2
	addq $2,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	addss 8(%rbp),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoH2:
	movq $16,192(%r13)
.LcoH0:
	jmp *-16(%r13)
	.size soEz_info, .-soEz_info
.text
	.align 8
	.quad	4294967297
	.quad	20
so0y_info:
.LcoH8:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoHa
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soEz_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soEz_info
	jmp *(%rbx)
.LcoHa:
	jmp *-16(%r13)
	.size so0y_info, .-so0y_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_slow-(EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info)+0
	.long	0
	.quad	836
	.quad	0
	.quad	21474836480
	.quad	0
	.quad	15
.globl EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info
.type EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info, @object
EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info:
.LcoHg:
	addq $640,%r12
	cmpq 144(%r13),%r12
	ja .LcoHk
	addq $80,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $80,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct
	je .LcoHl
.LcoHm:
	incq EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct+40
	ucomiss %xmm1,%xmm2
	jp .LnoHq
	jb .LcoHo
.LnoHq:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $-640,%r12
	addq $-80,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $-80,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LcoHk:
	movq $640,192(%r13)
.LcoHi:
	movl $EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_closure,%ebx
	addq $-32,%rbp
	movss %xmm1,0(%rbp)
	movq %r14,8(%rbp)
	movss %xmm2,16(%rbp)
	movss %xmm3,24(%rbp)
	jmp *-8(%r13)
.LcoHl:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct+56
	movq $EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_ct
	jmp .LcoHm
.LcoHo:
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-632(%r12)
	movss %xmm2,-624(%r12)
	movq $so07_info,-616(%r12)
	movq %r14,-600(%r12)
	movss %xmm1,-592(%r12)
	movss %xmm3,-584(%r12)
	movss %xmm2,%xmm0
	addss %xmm3,%xmm0
	movss %xmm0,-576(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-568(%r12)
	movss %xmm2,%xmm0
	addss %xmm3,%xmm0
	movss %xmm0,-560(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-552(%r12)
	leaq -567(%r12),%rax
	movq %rax,-544(%r12)
	leaq -616(%r12),%rax
	movq %rax,-536(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-528(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-520(%r12)
	leaq -550(%r12),%rax
	movq %rax,-512(%r12)
	movq $so0d_info,-504(%r12)
	movq %r14,-488(%r12)
	movss %xmm3,-480(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-472(%r12)
	leaq -504(%r12),%rax
	movq %rax,-464(%r12)
	leaq -526(%r12),%rax
	movq %rax,-456(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-448(%r12)
	movss %xmm2,%xmm0
	addss %xmm3,%xmm0
	movss %xmm0,-440(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-432(%r12)
	leaq -447(%r12),%rax
	movq %rax,-424(%r12)
	leaq -470(%r12),%rax
	movq %rax,-416(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-408(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-400(%r12)
	leaq -430(%r12),%rax
	movq %rax,-392(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-384(%r12)
	movq %r14,-376(%r12)
	leaq -406(%r12),%rax
	movq %rax,-368(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-360(%r12)
	leaq -631(%r12),%rax
	movq %rax,-352(%r12)
	leaq -382(%r12),%rax
	movq %rax,-344(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-336(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-328(%r12)
	leaq -358(%r12),%rax
	movq %rax,-320(%r12)
	movq $so0r_info,-312(%r12)
	movq %r14,-296(%r12)
	movss %xmm3,-288(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-280(%r12)
	leaq -312(%r12),%rax
	movq %rax,-272(%r12)
	leaq -334(%r12),%rax
	movq %rax,-264(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-256(%r12)
	leaq -631(%r12),%rax
	movq %rax,-248(%r12)
	leaq -278(%r12),%rax
	movq %rax,-240(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-232(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-224(%r12)
	leaq -254(%r12),%rax
	movq %rax,-216(%r12)
	movq $so0y_info,-208(%r12)
	movq %r14,-192(%r12)
	movss %xmm3,-184(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-176(%r12)
	leaq -208(%r12),%rax
	movq %rax,-168(%r12)
	leaq -230(%r12),%rax
	movq %rax,-160(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-152(%r12)
	addss %xmm3,%xmm2
	movss %xmm2,-144(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-136(%r12)
	leaq -151(%r12),%rax
	movq %rax,-128(%r12)
	leaq -174(%r12),%rax
	movq %rax,-120(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-104(%r12)
	leaq -134(%r12),%rax
	movq %rax,-96(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-88(%r12)
	movq %r14,-80(%r12)
	leaq -110(%r12),%rax
	movq %rax,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	leaq -631(%r12),%rax
	movq %rax,-56(%r12)
	leaq -86(%r12),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %r14,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
	.size EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info, .-EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwcreateStrip_closure
.type EngineziTerrainziGenerator_zdwcreateStrip_closure, @object
EngineziTerrainziGenerator_zdwcreateStrip_closure:
	.quad	EngineziTerrainziGenerator_zdwcreateStrip_info
.section .rodata
	.align 8
.align 1
coJa_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	114
	.byte	105
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	121
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coJc_str:
	.byte	83
	.byte	102
	.byte	83
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwcreateStrip_ct
.type EngineziTerrainziGenerator_zdwcreateStrip_ct, @object
EngineziTerrainziGenerator_zdwcreateStrip_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	coJa_str
	.quad	coJc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_zdwcreateStrip_slow
.type EngineziTerrainziGenerator_zdwcreateStrip_slow, @object
EngineziTerrainziGenerator_zdwcreateStrip_slow:
.LcoJf:
	movq 0(%rbp),%r14
	movss 8(%rbp),%xmm1
	movq 16(%rbp),%rsi
	movss 24(%rbp),%xmm2
	addq $32,%rbp
	jmp EngineziTerrainziGenerator_zdwcreateStrip_info
	.size EngineziTerrainziGenerator_zdwcreateStrip_slow, .-EngineziTerrainziGenerator_zdwcreateStrip_slow
.text
	.align 8
	.quad	387
	.quad	32
soI7_info:
.LcoJp:
	leaq 7(%rbx),%rax
	movss 24(%rbp),%xmm2
	addss (%rax),%xmm2
	incq KNOWN_CALL_ctr
	movss 16(%rbp),%xmm1
	movq 8(%rbp),%r14
	movss 7(%rbx),%xmm3
	addq $32,%rbp
	jmp EngineziTerrainziGenerator_createFlatzuzdszdwcreateStrip_info
	.size soI7_info, .-soI7_info
.text
	.align 8
	.quad	8589934594
	.quad	16
so1j_info:
.LcoJw:
	incq ENT_DYN_THK_ctr
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoJy
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-40(%rbp)
	movss 40(%rbx),%xmm0
	movss %xmm0,-32(%rbp)
	movss 32(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $soI7_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne soI7_info
	jmp *(%rbx)
.LcoJy:
	jmp *-16(%r13)
	.size so1j_info, .-so1j_info
.text
	.align 8
	.quad	65
	.quad	32
soI8_info:
.LcoJK:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoJQ
	addq $2,EngineziTerrainziGenerator_zdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoJQ:
	movq $16,192(%r13)
.LcoJO:
	jmp *-16(%r13)
	.size soI8_info, .-soI8_info
.text
	.align 8
	.quad	4294967297
	.quad	20
so1k_info:
.LcoJX:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoJZ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soI8_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soI8_info
	jmp *(%rbx)
.LcoJZ:
	jmp *-16(%r13)
	.size so1k_info, .-so1k_info
.text
	.align 8
	.quad	2
	.quad	19
so1p_info:
.LcoK8:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoKa
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziFloat_plusFloat_info
.LcoKa:
	jmp *-16(%r13)
	.size so1p_info, .-so1p_info
.text
	.align 8
	.quad	65
	.quad	32
soI9_info:
.LcoKi:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoKo
	addq $2,EngineziTerrainziGenerator_zdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoKo:
	movq $16,192(%r13)
.LcoKm:
	jmp *-16(%r13)
	.size soI9_info, .-soI9_info
.text
	.align 8
	.quad	4294967297
	.quad	20
so1s_info:
.LcoKv:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoKx
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soI9_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soI9_info
	jmp *(%rbx)
.LcoKx:
	jmp *-16(%r13)
	.size so1s_info, .-so1s_info
.text
	.align 8
	.quad	2
	.quad	19
so1D_info:
.LcoKG:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoKI
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziFloat_plusFloat_info
.LcoKI:
	jmp *-16(%r13)
	.size so1D_info, .-so1D_info
.text
	.align 8
	.quad	2
	.quad	19
so1K_info:
.LcoKP:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoKR
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziFloat_plusFloat_info
.LcoKR:
	jmp *-16(%r13)
	.size so1K_info, .-so1K_info
.text
	.align 8
	.quad	65
	.quad	32
soIa_info:
.LcoKZ:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoL5
	addq $2,EngineziTerrainziGenerator_zdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoL5:
	movq $16,192(%r13)
.LcoL3:
	jmp *-16(%r13)
	.size soIa_info, .-soIa_info
.text
	.align 8
	.quad	4294967297
	.quad	20
so1N_info:
.LcoLc:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoLe
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soIa_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soIa_info
	jmp *(%rbx)
.LcoLe:
	jmp *-16(%r13)
	.size so1N_info, .-so1N_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_zdwcreateStrip_slow-(EngineziTerrainziGenerator_zdwcreateStrip_info)+0
	.long	0
	.quad	644
	.quad	0
	.quad	17179869184
	.quad	0
	.quad	15
.globl EngineziTerrainziGenerator_zdwcreateStrip_info
.type EngineziTerrainziGenerator_zdwcreateStrip_info, @object
EngineziTerrainziGenerator_zdwcreateStrip_info:
.LcoLk:
	addq $688,%r12
	cmpq 144(%r13),%r12
	ja .LcoLo
	addq $86,EngineziTerrainziGenerator_zdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $86,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_zdwcreateStrip_ct
	je .LcoLp
.LcoLq:
	incq EngineziTerrainziGenerator_zdwcreateStrip_ct+40
	ucomiss %xmm1,%xmm2
	jp .LnoLu
	jb .LcoLs
.LnoLu:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $-688,%r12
	addq $-86,EngineziTerrainziGenerator_zdwcreateStrip_ct+48
	incq ALLOC_HEAP_ctr
	addq $-86,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LcoLo:
	movq $688,192(%r13)
.LcoLm:
	movl $EngineziTerrainziGenerator_zdwcreateStrip_closure,%ebx
	addq $-32,%rbp
	movq %r14,0(%rbp)
	movss %xmm1,8(%rbp)
	movq %rsi,16(%rbp)
	movss %xmm2,24(%rbp)
	jmp *-8(%r13)
.LcoLp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_zdwcreateStrip_ct+56
	movq $EngineziTerrainziGenerator_zdwcreateStrip_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_zdwcreateStrip_ct
	jmp .LcoLq
.LcoLs:
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-680(%r12)
	movss %xmm2,-672(%r12)
	movq $so1j_info,-664(%r12)
	movq %rsi,-648(%r12)
	movq %r14,-640(%r12)
	movss %xmm2,-632(%r12)
	movss %xmm1,-624(%r12)
	movq $so1k_info,-616(%r12)
	movq %r14,-600(%r12)
	movss %xmm2,-592(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-584(%r12)
	leaq -616(%r12),%rax
	movq %rax,-576(%r12)
	leaq -664(%r12),%rax
	movq %rax,-568(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-560(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-552(%r12)
	leaq -582(%r12),%rax
	movq %rax,-544(%r12)
	movq $so1p_info,-536(%r12)
	movq %rsi,-520(%r12)
	movq %r14,-512(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-504(%r12)
	leaq -536(%r12),%rax
	movq %rax,-496(%r12)
	leaq -558(%r12),%rax
	movq %rax,-488(%r12)
	movq $so1s_info,-480(%r12)
	movq %r14,-464(%r12)
	movss %xmm2,-456(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-448(%r12)
	leaq -480(%r12),%rax
	movq %rax,-440(%r12)
	leaq -502(%r12),%rax
	movq %rax,-432(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-424(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-416(%r12)
	leaq -446(%r12),%rax
	movq %rax,-408(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-400(%r12)
	movq %rsi,-392(%r12)
	leaq -422(%r12),%rax
	movq %rax,-384(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-376(%r12)
	leaq -679(%r12),%rax
	movq %rax,-368(%r12)
	leaq -398(%r12),%rax
	movq %rax,-360(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-352(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-344(%r12)
	leaq -374(%r12),%rax
	movq %rax,-336(%r12)
	movq $so1D_info,-328(%r12)
	movq %rsi,-312(%r12)
	movq %r14,-304(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-296(%r12)
	leaq -328(%r12),%rax
	movq %rax,-288(%r12)
	leaq -350(%r12),%rax
	movq %rax,-280(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-272(%r12)
	leaq -679(%r12),%rax
	movq %rax,-264(%r12)
	leaq -294(%r12),%rax
	movq %rax,-256(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-248(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-240(%r12)
	leaq -270(%r12),%rax
	movq %rax,-232(%r12)
	movq $so1K_info,-224(%r12)
	movq %rsi,-208(%r12)
	movq %r14,-200(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-192(%r12)
	leaq -224(%r12),%rax
	movq %rax,-184(%r12)
	leaq -246(%r12),%rax
	movq %rax,-176(%r12)
	movq $so1N_info,-168(%r12)
	movq %r14,-152(%r12)
	movss %xmm2,-144(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-136(%r12)
	leaq -168(%r12),%rax
	movq %rax,-128(%r12)
	leaq -190(%r12),%rax
	movq %rax,-120(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-104(%r12)
	leaq -134(%r12),%rax
	movq %rax,-96(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-88(%r12)
	movq %rsi,-80(%r12)
	leaq -110(%r12),%rax
	movq %rax,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	leaq -679(%r12),%rax
	movq %rax,-56(%r12)
	leaq -86(%r12),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq $EngineziTerrainziGenerator_createFlat1_closure+1,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %rsi,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
	.size EngineziTerrainziGenerator_zdwcreateStrip_info, .-EngineziTerrainziGenerator_zdwcreateStrip_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_createStrip_closure
.type EngineziTerrainziGenerator_createStrip_closure, @object
EngineziTerrainziGenerator_createStrip_closure:
	.quad	EngineziTerrainziGenerator_createStrip_info
.section .rodata
	.align 8
.align 1
coMa_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	114
	.byte	105
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	69
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coMd_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_createStrip_ct
.type EngineziTerrainziGenerator_createStrip_ct, @object
EngineziTerrainziGenerator_createStrip_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	coMa_str
	.quad	coMd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	259
	.quad	32
soLX_info:
.LcoMr:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movss 24(%rbp),%xmm1
	movq 8(%rbp),%rsi
	movss 7(%rbx),%xmm2
	addq $32,%rbp
	jmp EngineziTerrainziGenerator_zdwcreateStrip_info
	.size soLX_info, .-soLX_info
.text
	.align 8
	.quad	3
	.quad	32
soLY_info:
.LcoMu:
	movq 24(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $soLX_info,0(%rbp)
	testq $7,%rbx
	jne soLX_info
	jmp *(%rbx)
	.size soLY_info, .-soLY_info
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
.globl EngineziTerrainziGenerator_createStrip_info
.type EngineziTerrainziGenerator_createStrip_info, @object
EngineziTerrainziGenerator_createStrip_info:
.LcoMD:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoMF
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_createStrip_ct
	je .LcoMG
.LcoMH:
	incq EngineziTerrainziGenerator_createStrip_ct+40
	movq %rdi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %r8,-8(%rbp)
	movq %rsi,%rbx
	movq $soLY_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soLY_info
	jmp *(%rbx)
.LcoMF:
	movl $EngineziTerrainziGenerator_createStrip_closure,%ebx
	jmp *-8(%r13)
.LcoMG:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_createStrip_ct+56
	movq $EngineziTerrainziGenerator_createStrip_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_createStrip_ct
	jmp .LcoMH
	.size EngineziTerrainziGenerator_createStrip_info, .-EngineziTerrainziGenerator_createStrip_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwcreateFlat_closure
.type EngineziTerrainziGenerator_zdwcreateFlat_closure, @object
EngineziTerrainziGenerator_zdwcreateFlat_closure:
	.quad	EngineziTerrainziGenerator_zdwcreateFlat_info
.section .rodata
	.align 8
.align 1
coOh_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	70
	.byte	108
	.byte	97
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	118
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coOj_str:
	.byte	83
	.byte	102
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_zdwcreateFlat_ct
.type EngineziTerrainziGenerator_zdwcreateFlat_ct, @object
EngineziTerrainziGenerator_zdwcreateFlat_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	coOh_str
	.quad	coOj_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_zdwcreateFlat_slow
.type EngineziTerrainziGenerator_zdwcreateFlat_slow, @object
EngineziTerrainziGenerator_zdwcreateFlat_slow:
.LcoOm:
	movq 0(%rbp),%r14
	movss 8(%rbp),%xmm1
	addq $16,%rbp
	jmp EngineziTerrainziGenerator_zdwcreateFlat_info
	.size EngineziTerrainziGenerator_zdwcreateFlat_slow, .-EngineziTerrainziGenerator_zdwcreateFlat_slow
.section .rodata
	.align 8
.align 1
coOo_str:
	.byte	36
	.byte	115
	.byte	36
	.byte	119
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	70
	.byte	108
	.byte	97
	.byte	116
	.byte	82
	.byte	97
	.byte	119
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	111
	.byte	50
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
coOq_str:
	.byte	83
	.byte	102
	.byte	102
	.byte	65
	.byte	0
.data
	.align 8
.align 1
so2w_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	coOo_str
	.quad	coOq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
so2w_slow:
.LcoOt:
	movq 0(%rbp),%r14
	movss 8(%rbp),%xmm1
	movss 16(%rbp),%xmm2
	addq $24,%rbp
	jmp so2w_info
	.size so2w_slow, .-so2w_slow
.text
	.align 8
	.quad	65
	.quad	32
soMY_info:
.LcoOD:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoOJ
	addq $2,so2w_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoOJ:
	movq $16,192(%r13)
.LcoOH:
	jmp *-16(%r13)
	.size soMY_info, .-soMY_info
.text
	.align 8
	.quad	4294967297
	.quad	20
soMW_info:
.LcoOQ:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoOS
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soMY_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soMY_info
	jmp *(%rbx)
.LcoOS:
	jmp *-16(%r13)
	.size soMW_info, .-soMW_info
.text
	.align 8
	.quad	8589934595
	.quad	16
soMP_info:
.LcoOZ:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoP1
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcoP3
	addq $4,so2w_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 48(%rbx),%xmm0
	ucomiss 40(%rbx),%xmm0
	jp .LnoP7
	jb .LcoP4
.LnoP7:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $-16,%rbp
	addq $-32,%r12
	addq $-4,so2w_ct+48
	incq ALLOC_HEAP_ctr
	addq $-4,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LcoP3:
	movq $32,192(%r13)
.LcoP1:
	jmp *-16(%r13)
.LcoP4:
	movq $soMW_info,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movss 48(%rbx),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movss 40(%rbx),%xmm1
	movq 32(%rbx),%rbx
	leaq -24(%r12),%rsi
	addq $-16,%rbp
	jmp so2t_info
	.size soMP_info, .-soMP_info
.text
	.align 8
	.quad	1
	.quad	32
soMQ_info:
.LcoPe:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp base_GHCziBase_zpzp_info
	.size soMQ_info, .-soMQ_info
.text
	.align 8
	.long	so2w_slow-(so2w_info)+0
	.long	0
	.quad	387
	.quad	0
	.quad	17179869184
	.quad	2
	.quad	12
so2w_info:
.LcoPh:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoPj
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcoPl
	addq $9,so2w_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,so2w_ct
	je .LcoPm
.LcoPn:
	incq so2w_ct+40
	movq $soMP_info,-64(%r12)
	movq %r14,-48(%r12)
	movq 4(%rbx),%rax
	movq %rax,-40(%r12)
	movq 12(%rbx),%rax
	movq %rax,-32(%r12)
	movss %xmm1,-24(%r12)
	movss %xmm2,-16(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm2,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -64(%r12),%rax
	movq %rax,-8(%rbp)
	leaq -7(%r12),%rsi
	xorps %xmm2,%xmm2
	movq $soMQ_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_zdwcreateStrip_info
.LcoPl:
	movq $72,192(%r13)
.LcoPj:
	addq $-24,%rbp
	movq %r14,0(%rbp)
	movss %xmm1,8(%rbp)
	movss %xmm2,16(%rbp)
	jmp *-8(%r13)
.LcoPm:
	movq ticky_entry_ctrs,%rax
	movq %rax,so2w_ct+56
	movq $so2w_ct,ticky_entry_ctrs
	movq $1,so2w_ct
	jmp .LcoPn
	.size so2w_info, .-so2w_info
.section .rodata
	.align 8
.align 1
coPu_str:
	.byte	36
	.byte	119
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	70
	.byte	108
	.byte	97
	.byte	116
	.byte	82
	.byte	97
	.byte	119
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	111
	.byte	50
	.byte	116
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
coPw_str:
	.byte	83
	.byte	102
	.byte	83
	.byte	0
.data
	.align 8
.align 1
so2t_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	coPu_str
	.quad	coPw_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
so2t_slow:
.LcoPz:
	movq 0(%rbp),%r14
	movss 8(%rbp),%xmm1
	movq 16(%rbp),%rsi
	addq $24,%rbp
	jmp so2t_info
	.size so2t_slow, .-so2t_slow
.text
	.align 8
	.quad	65
	.quad	32
soN1_info:
.LcoPJ:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoPP
	addq $2,so2t_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoPP:
	movq $16,192(%r13)
.LcoPN:
	jmp *-16(%r13)
	.size soN1_info, .-soN1_info
.text
	.align 8
	.quad	4294967297
	.quad	20
soMU_info:
.LcoPW:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoPY
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soN1_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soN1_info
	jmp *(%rbx)
.LcoPY:
	jmp *-16(%r13)
	.size soMU_info, .-soMU_info
.text
	.align 8
	.quad	68
	.quad	32
soN0_info:
.LcoQ4:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcoQ8
	addq $4,so2t_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	ucomiss 8(%rbp),%xmm0
	jp .LnoQc
	jb .LcoQa
.LnoQc:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $40,%rbp
	addq $-32,%r12
	addq $-4,so2t_ct+48
	incq ALLOC_HEAP_ctr
	addq $-4,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LcoQ8:
	movq $32,192(%r13)
.LcoQ6:
	jmp *-16(%r13)
.LcoQa:
	movq $soMU_info,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%rbx
	movq 16(%rbp),%r14
	movss 8(%rbp),%xmm1
	leaq -24(%r12),%rsi
	addq $40,%rbp
	jmp so2t_info
	.size soN0_info, .-soN0_info
.text
	.align 8
	.quad	4294967300
	.quad	16
soMR_info:
.LcoQj:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoQl
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 48(%rbx),%xmm0
	movss %xmm0,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $soN0_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne soN0_info
	jmp *(%rbx)
.LcoQl:
	jmp *-16(%r13)
	.size soMR_info, .-soMR_info
.text
	.align 8
	.quad	1
	.quad	32
soMS_info:
.LcoQw:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp base_GHCziBase_zpzp_info
	.size soMS_info, .-soMS_info
.text
	.align 8
	.long	so2t_slow-(so2t_info)+0
	.long	0
	.quad	131
	.quad	0
	.quad	12884901888
	.quad	1
	.quad	10
so2t_info:
.LcoQz:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoQB
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcoQD
	addq $7,so2t_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,so2t_ct
	je .LcoQE
.LcoQF:
	incq so2t_ct+40
	movq $soMR_info,-48(%r12)
	movq 5(%rbx),%rax
	movq %rax,-32(%r12)
	movq %rbx,-24(%r12)
	movq %r14,-16(%r12)
	movq %rsi,-8(%r12)
	movss %xmm1,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -48(%r12),%rax
	movq %rax,-8(%rbp)
	xorps %xmm2,%xmm2
	movq $soMS_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_zdwcreateStrip_info
.LcoQD:
	movq $56,192(%r13)
.LcoQB:
	addq $-24,%rbp
	movq %r14,0(%rbp)
	movss %xmm1,8(%rbp)
	movq %rsi,16(%rbp)
	jmp *-8(%r13)
.LcoQE:
	movq ticky_entry_ctrs,%rax
	movq %rax,so2t_ct+56
	movq $so2t_ct,ticky_entry_ctrs
	movq $1,so2t_ct
	jmp .LcoQF
	.size so2t_info, .-so2t_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_zdwcreateFlat_slow-(EngineziTerrainziGenerator_zdwcreateFlat_info)+0
	.long	0
	.quad	130
	.quad	0
	.quad	8589934592
	.quad	0
	.quad	15
.globl EngineziTerrainziGenerator_zdwcreateFlat_info
.type EngineziTerrainziGenerator_zdwcreateFlat_info, @object
EngineziTerrainziGenerator_zdwcreateFlat_info:
.LcoQM:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcoQQ
	addq $5,EngineziTerrainziGenerator_zdwcreateFlat_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_zdwcreateFlat_ct
	je .LcoQR
.LcoQS:
	incq EngineziTerrainziGenerator_zdwcreateFlat_ct+40
	movq $so2w_info,-32(%r12)
	movq %r14,-24(%r12)
	leaq -5(%r12),%rax
	movq %rax,-16(%r12)
	movq $so2t_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -28(%r12),%rbx
	xorps %xmm2,%xmm2
	jmp so2w_info
.LcoQQ:
	movq $40,192(%r13)
.LcoQO:
	movl $EngineziTerrainziGenerator_zdwcreateFlat_closure,%ebx
	addq $-16,%rbp
	movq %r14,0(%rbp)
	movss %xmm1,8(%rbp)
	jmp *-8(%r13)
.LcoQR:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_zdwcreateFlat_ct+56
	movq $EngineziTerrainziGenerator_zdwcreateFlat_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_zdwcreateFlat_ct
	jmp .LcoQS
	.size EngineziTerrainziGenerator_zdwcreateFlat_info, .-EngineziTerrainziGenerator_zdwcreateFlat_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_createFlat_closure
.type EngineziTerrainziGenerator_createFlat_closure, @object
EngineziTerrainziGenerator_createFlat_closure:
	.quad	EngineziTerrainziGenerator_createFlat_info
.section .rodata
	.align 8
.align 1
coR5_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	70
	.byte	108
	.byte	97
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	70
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coR8_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_createFlat_ct
.type EngineziTerrainziGenerator_createFlat_ct, @object
EngineziTerrainziGenerator_createFlat_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	coR5_str
	.quad	coR8_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
soQW_info:
.LcoRi:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movss 7(%rbx),%xmm1
	addq $16,%rbp
	jmp EngineziTerrainziGenerator_zdwcreateFlat_info
	.size soQW_info, .-soQW_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziTerrainziGenerator_createFlat_info
.type EngineziTerrainziGenerator_createFlat_info, @object
EngineziTerrainziGenerator_createFlat_info:
.LcoRl:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoRn
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_createFlat_ct
	je .LcoRo
.LcoRp:
	incq EngineziTerrainziGenerator_createFlat_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $soQW_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne soQW_info
	jmp *(%rbx)
.LcoRn:
	movl $EngineziTerrainziGenerator_createFlat_closure,%ebx
	jmp *-8(%r13)
.LcoRo:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_createFlat_ct+56
	movq $EngineziTerrainziGenerator_createFlat_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_createFlat_ct
	jmp .LcoRp
	.size EngineziTerrainziGenerator_createFlat_info, .-EngineziTerrainziGenerator_createFlat_info
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_heightsToCoords_closure
.type EngineziTerrainziGenerator_heightsToCoords_closure, @object
EngineziTerrainziGenerator_heightsToCoords_closure:
	.quad	EngineziTerrainziGenerator_heightsToCoords_info
.section .rodata
	.align 8
.align 1
coSD_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	104
	.byte	101
	.byte	105
	.byte	103
	.byte	104
	.byte	116
	.byte	115
	.byte	84
	.byte	111
	.byte	67
	.byte	111
	.byte	111
	.byte	114
	.byte	100
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	65
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
coSG_str:
	.byte	76
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_heightsToCoords_ct
.type EngineziTerrainziGenerator_heightsToCoords_ct, @object
EngineziTerrainziGenerator_heightsToCoords_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	coSD_str
	.quad	coSG_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
coSU_str:
	.byte	36
	.byte	115
	.byte	99
	.byte	111
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	116
	.byte	101
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	111
	.byte	51
	.byte	116
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
coSX_str:
	.byte	76
	.byte	102
	.byte	65
	.byte	0
.data
	.align 8
.align 1
so3t_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	coSU_str
	.quad	coSX_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
so3t_slow:
.LcoT1:
	movq 0(%rbp),%r14
	movss 8(%rbp),%xmm1
	addq $16,%rbp
	jmp so3t_info
	.size so3t_slow, .-so3t_slow
.text
	.align 8
	.quad	65
	.quad	32
soRH_info:
.LcoTj:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoTp
	addq $2,so3t_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoTp:
	movq $16,192(%r13)
.LcoTn:
	jmp *-16(%r13)
	.size soRH_info, .-soRH_info
.text
	.align 8
	.quad	4294967297
	.quad	20
so3n_info:
.LcoTw:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoTy
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movss 24(%rbx),%xmm0
	movss %xmm0,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soRH_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soRH_info
	jmp *(%rbx)
.LcoTy:
	jmp *-16(%r13)
	.size so3n_info, .-so3n_info
.text
	.align 8
	.quad	4294967299
	.quad	16
so3p_info:
.LcoTF:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoTH
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcoTJ
	addq $4,so3t_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $so3n_info,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movss 40(%rbx),%xmm0
	movss %xmm0,0(%r12)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 32(%rbx),%rbx
	leaq -24(%r12),%rsi
	addq $-16,%rbp
	jmp so3l_info
.LcoTJ:
	movq $32,192(%r13)
.LcoTH:
	jmp *-16(%r13)
	.size so3p_info, .-so3p_info
.text
	.align 8
	.quad	516
	.quad	32
soRG_info:
.LcoTR:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoTS
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $40,%rbp
	jmp *0(%rbp)
.LcoTS:
	addq $136,%r12
	cmpq 144(%r13),%r12
	ja .LcoTW
	addq $17,so3t_ct+48
	incq ALLOC_HEAP_ctr
	addq $17,ALLOC_HEAP_tot
	movq $so3p_info,-128(%r12)
	movq 14(%rbx),%rax
	movq %rax,-112(%r12)
	movq 16(%rbp),%rax
	movq %rax,-104(%r12)
	movq 8(%rbp),%rax
	movq %rax,-96(%r12)
	movss 32(%rbp),%xmm0
	movss %xmm0,-88(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-80(%r12)
	movq 24(%rbp),%rax
	movq %rax,-72(%r12)
	leaq -128(%r12),%rax
	movq %rax,-64(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	movq 6(%rbx),%rax
	movq %rax,-48(%r12)
	leaq -78(%r12),%rax
	movq %rax,-40(%r12)
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-32(%r12)
	movss 32(%rbp),%xmm0
	movss %xmm0,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -31(%r12),%rax
	movq %rax,-8(%r12)
	leaq -54(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcoTW:
	movq $136,192(%r13)
.LcoTU:
	jmp *-16(%r13)
	.size soRG_info, .-soRG_info
.text
	.align 8
	.long	so3t_slow-(so3t_info)+0
	.long	0
	.quad	130
	.quad	0
	.quad	12884901888
	.quad	3
	.quad	9
so3t_info:
.LcoUd:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoUf
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,so3t_ct
	je .LcoUg
.LcoUh:
	incq so3t_ct+40
	movq 21(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 13(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 5(%rbx),%rax
	movq %rax,-16(%rbp)
	movss %xmm1,-8(%rbp)
	movq %r14,%rbx
	movq $soRG_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne soRG_info
	jmp *(%rbx)
.LcoUf:
	addq $-16,%rbp
	movq %r14,0(%rbp)
	movss %xmm1,8(%rbp)
	jmp *-8(%r13)
.LcoUg:
	movq ticky_entry_ctrs,%rax
	movq %rax,so3t_ct+56
	movq $so3t_ct,ticky_entry_ctrs
	movq $1,so3t_ct
	jmp .LcoUh
	.size so3t_info, .-so3t_info
.section .rodata
	.align 8
.align 1
coUt_str:
	.byte	99
	.byte	111
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	116
	.byte	101
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	111
	.byte	51
	.byte	108
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
coUw_str:
	.byte	76
	.byte	83
	.byte	0
.data
	.align 8
.align 1
so3l_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	coUt_str
	.quad	coUw_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	65
	.quad	32
soRJ_info:
.LcoUT:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoUZ
	addq $2,so3l_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoUZ:
	movq $16,192(%r13)
.LcoUX:
	jmp *-16(%r13)
	.size soRJ_info, .-soRJ_info
.text
	.align 8
	.quad	1
	.quad	32
soRK_info:
.LcoV4:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $soRJ_info,0(%rbp)
	testq $7,%rbx
	jne soRJ_info
	jmp *(%rbx)
	.size soRK_info, .-soRK_info
.text
	.align 8
	.quad	2
	.quad	19
so3L_info:
.LcoVf:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoVh
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $soRK_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soRK_info
	jmp *(%rbx)
.LcoVh:
	jmp *-16(%r13)
	.size so3L_info, .-so3L_info
.text
	.align 8
	.quad	4
	.quad	16
so3N_info:
.LcoVo:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoVq
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcoVs
	addq $4,so3l_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $so3L_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movq 32(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 40(%rbx),%r14
	movq 24(%rbx),%rbx
	leaq -24(%r12),%rsi
	addq $-16,%rbp
	jmp so3l_info
.LcoVs:
	movq $32,192(%r13)
.LcoVq:
	jmp *-16(%r13)
	.size so3N_info, .-so3N_info
.text
	.align 8
	.quad	4
	.quad	32
soRI_info:
.LcoVA:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoVB
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $40,%rbp
	jmp *0(%rbp)
.LcoVB:
	addq $120,%r12
	cmpq 144(%r13),%r12
	ja .LcoVF
	addq $15,so3l_ct+48
	incq ALLOC_HEAP_ctr
	addq $15,ALLOC_HEAP_tot
	movq $so3N_info,-112(%r12)
	movq 24(%rbp),%rax
	movq %rax,-96(%r12)
	movq 16(%rbp),%rax
	movq %rax,-88(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 14(%rbx),%rax
	movq %rax,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	movq 32(%rbp),%rax
	movq %rax,-56(%r12)
	leaq -112(%r12),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 6(%rbx),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcoVF:
	movq $120,192(%r13)
.LcoVD:
	jmp *-16(%r13)
	.size soRI_info, .-soRI_info
.text
	.align 8
	.quad	8589934604
	.quad	2
	.quad	12
so3l_info:
.LcoVV:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoVX
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,so3l_ct
	je .LcoVY
.LcoVZ:
	incq so3l_ct+40
	movq %rsi,-32(%rbp)
	movq %rbx,-24(%rbp)
	movq 14(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 6(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $soRI_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne soRI_info
	jmp *(%rbx)
.LcoVX:
	jmp *-8(%r13)
.LcoVY:
	movq ticky_entry_ctrs,%rax
	movq %rax,so3l_ct+56
	movq $so3l_ct,ticky_entry_ctrs
	movq $1,so3l_ct
	jmp .LcoVZ
	.size so3l_info, .-so3l_info
.text
	.align 8
	.quad	65
	.quad	32
soRL_info:
.LcoWj:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoWp
	addq $2,EngineziTerrainziGenerator_heightsToCoords_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss 8(%rbp),%xmm0
	addss (%rax),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcoWp:
	movq $16,192(%r13)
.LcoWn:
	jmp *-16(%r13)
	.size soRL_info, .-soRL_info
.text
	.align 8
	.quad	1
	.quad	32
soRM_info:
.LcoWu:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $soRL_info,0(%rbp)
	testq $7,%rbx
	jne soRL_info
	jmp *(%rbx)
	.size soRM_info, .-soRM_info
.text
	.align 8
	.quad	2
	.quad	19
so42_info:
.LcoWF:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoWH
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $soRM_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne soRM_info
	jmp *(%rbx)
.LcoWH:
	jmp *-16(%r13)
	.size so42_info, .-so42_info
.text
	.align 8
	.quad	3
	.quad	16
soRz_info:
.LcoWO:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoWQ
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcoWS
	addq $4,EngineziTerrainziGenerator_heightsToCoords_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $so42_info,-24(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	leaq -24(%r12),%rsi
	movq 24(%rbx),%rdi
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_heightsToCoords_info
.LcoWS:
	movq $32,192(%r13)
.LcoWQ:
	jmp *-16(%r13)
	.size soRz_info, .-soRz_info
.text
	.align 8
	.quad	2
	.quad	19
soRA_info:
.LcoX1:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoX3
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movq 16(%rbx),%rbx
	xorps %xmm1,%xmm1
	addq $-16,%rbp
	jmp so3t_info
.LcoX3:
	jmp *-16(%r13)
	.size soRA_info, .-soRA_info
.text
	.align 8
	.quad	2
	.quad	32
soRx_info:
.LcoX9:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcoXa
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LcoXa:
	addq $128,%r12
	cmpq 144(%r13),%r12
	ja .LcoXe
	addq $16,EngineziTerrainziGenerator_heightsToCoords_ct+48
	incq ALLOC_HEAP_ctr
	addq $16,ALLOC_HEAP_tot
	movq $so3t_info,-120(%r12)
	movq 16(%rbp),%rax
	movq %rax,-112(%r12)
	movq 8(%rbp),%rax
	movq %rax,-104(%r12)
	leaq -86(%r12),%rax
	movq %rax,-96(%r12)
	movq $so3l_info,-88(%r12)
	movq 16(%rbp),%rax
	movq %rax,-80(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq $soRz_info,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq 14(%rbx),%rax
	movq %rax,-32(%r12)
	movq $soRA_info,-24(%r12)
	leaq -117(%r12),%rax
	movq %rax,-8(%r12)
	movq 6(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%r14
	leaq -64(%r12),%rsi
	addq $24,%rbp
	jmp base_GHCziBase_zpzp_info
.LcoXe:
	movq $128,192(%r13)
.LcoXc:
	jmp *-16(%r13)
	.size soRx_info, .-soRx_info
.text
	.align 8
	.quad	12884901908
	.quad	0
	.quad	15
.globl EngineziTerrainziGenerator_heightsToCoords_info
.type EngineziTerrainziGenerator_heightsToCoords_info, @object
EngineziTerrainziGenerator_heightsToCoords_info:
.LcoXu:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoXw
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_heightsToCoords_ct
	je .LcoXx
.LcoXy:
	incq EngineziTerrainziGenerator_heightsToCoords_ct+40
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $soRx_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne soRx_info
	jmp *(%rbx)
.LcoXw:
	movl $EngineziTerrainziGenerator_heightsToCoords_closure,%ebx
	jmp *-8(%r13)
.LcoXx:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_heightsToCoords_ct+56
	movq $EngineziTerrainziGenerator_heightsToCoords_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_heightsToCoords_ct
	jmp .LcoXy
	.size EngineziTerrainziGenerator_heightsToCoords_info, .-EngineziTerrainziGenerator_heightsToCoords_info
.data
	.align 8
.align 1
rnSn_closure:
	.quad	rnSn_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
coXO_str:
	.byte	112
	.byte	111
	.byte	115
	.byte	105
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rnSn_info:
.LcoXS:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoXU
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoXW
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
	je .LcoXX
.LcoXY:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $coXO_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcoXW:
	movq $16,192(%r13)
.LcoXU:
	jmp *-16(%r13)
.LcoXX:
	jmp *(%rbx)
	.size rnSn_info, .-rnSn_info
.data
	.align 8
.align 1
rnSo_closure:
	.quad	rnSo_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
coYd_str:
	.byte	110
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	108
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rnSo_info:
.LcoYh:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoYj
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoYl
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
	je .LcoYm
.LcoYn:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $coYd_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcoYl:
	movq $16,192(%r13)
.LcoYj:
	jmp *-16(%r13)
.LcoYm:
	jmp *(%rbx)
	.size rnSo_info, .-rnSo_info
.data
	.align 8
.align 1
rnSp_closure:
	.quad	rnSp_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
coYC_str:
	.byte	99
	.byte	111
	.byte	108
	.byte	111
	.byte	114
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rnSp_info:
.LcoYG:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoYI
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoYK
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
	je .LcoYL
.LcoYM:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $coYC_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcoYK:
	movq $16,192(%r13)
.LcoYI:
	jmp *-16(%r13)
.LcoYL:
	jmp *(%rbx)
	.size rnSp_info, .-rnSp_info
.data
	.align 8
.align 1
rnSq_closure:
	.quad	rnSq_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
coZ1_str:
	.byte	116
	.byte	101
	.byte	120
	.byte	67
	.byte	111
	.byte	111
	.byte	114
	.byte	100
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rnSq_info:
.LcoZ5:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoZ7
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoZ9
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
	je .LcoZa
.LcoZb:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $coZ1_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcoZ9:
	movq $16,192(%r13)
.LcoZ7:
	jmp *-16(%r13)
.LcoZa:
	jmp *(%rbx)
	.size rnSq_info, .-rnSq_info
.data
	.align 8
.align 1
rnSr_closure:
	.quad	rnSr_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
coZq_str:
	.byte	116
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	73
	.byte	100
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rnSr_info:
.LcoZu:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcoZw
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcoZy
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
	je .LcoZz
.LcoZA:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $coZq_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcoZy:
	movq $16,192(%r13)
.LcoZw:
	jmp *-16(%r13)
.LcoZz:
	jmp *(%rbx)
	.size rnSr_info, .-rnSr_info
.data
	.align 8
.align 1
rnSs_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSr_closure
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.data
	.align 8
.align 1
rnSt_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSq_closure
	.quad	rnSs_closure+2
	.quad	0
.data
	.align 8
.align 1
rnSu_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSp_closure
	.quad	rnSt_closure+2
	.quad	0
.data
	.align 8
.align 1
rnSv_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSo_closure
	.quad	rnSu_closure+2
	.quad	0
.data
	.align 8
.align 1
rnSw_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSn_closure
	.quad	rnSv_closure+2
	.quad	0
.data
	.align 8
.align 1
rnSx_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziGenerator_createFlat1_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rnSy_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	63
	.long	0
.data
	.align 8
.align 1
rnSz_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSy_closure+1
	.quad	rnSx_closure+2
	.quad	1
.data
	.align 8
.align 1
rnSA_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziGenerator_createFlat1_closure+1
	.quad	rnSz_closure+2
	.quad	1
.section .data
	.align 8
.align 1
rnSB_srt:
	.quad	rnSB_closure
.data
	.align 8
.align 1
rnSB_closure:
	.quad	rnSB_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rnSB_srt-(rnSB_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rnSB_info:
.Lcp0k:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp0m
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcp0o
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
	je .Lcp0p
.Lcp0q:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rnSA_closure+2,%r14d
	movl $rnSB_closure,%esi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.Lcp0o:
	movq $16,192(%r13)
.Lcp0m:
	jmp *-16(%r13)
.Lcp0p:
	jmp *(%rbx)
	.size rnSB_info, .-rnSB_info
.data
	.align 8
.align 1
rnSC_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	191
	.long	0
.data
	.align 8
.align 1
rnSD_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	3
.data
	.align 8
.align 1
rnSE_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	2
.data
	.align 8
.align 1
rnSF_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	1
.data
	.align 8
.align 1
rnSG_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSF_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rnSH_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSE_closure+1
	.quad	rnSG_closure+2
	.quad	1
.data
	.align 8
.align 1
rnSI_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSD_closure+1
	.quad	rnSH_closure+2
	.quad	1
.data
	.align 8
.align 1
rnSJ_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSD_closure+1
	.quad	rnSI_closure+2
	.quad	1
.data
	.align 8
.align 1
rnSK_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSD_closure+1
	.quad	rnSJ_closure+2
	.quad	1
.data
	.align 8
.align 1
rnSL_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSC_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rnSM_closure:
	.quad	rnSM_info
.section .rodata
	.align 8
.align 1
cp1o_str:
	.byte	120
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	83
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cp1q_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
rnSM_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cp1o_str
	.quad	cp1q_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967296
	.quad	18
sp0R_info:
.Lcp1z:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp1B
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	addq $-16,%rbp
	jmp rnSM_info
.Lcp1B:
	jmp *-16(%r13)
	.size sp0R_info, .-sp0R_info
.text
	.align 8
	.quad	4294967300
	.quad	0
	.quad	15
rnSM_info:
.Lcp1G:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .Lcp1K
	addq $6,rnSM_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rnSM_ct
	je .Lcp1L
.Lcp1M:
	incq rnSM_ct+40
	cmpq $1,%r14
	jle .Lcp1O
	movq $sp0R_info,-40(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $rnSC_closure+1,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.Lcp1K:
	movq $48,192(%r13)
.Lcp1I:
	movl $rnSM_closure,%ebx
	jmp *-8(%r13)
.Lcp1L:
	movq ticky_entry_ctrs,%rax
	movq %rax,rnSM_ct+56
	movq $rnSM_ct,ticky_entry_ctrs
	movq $1,rnSM_ct
	jmp .Lcp1M
.Lcp1O:
	movl $rnSL_closure+2,%ebx
	addq $-48,%r12
	addq $-6,rnSM_ct+48
	incq ALLOC_HEAP_ctr
	addq $-6,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size rnSM_info, .-rnSM_info
.data
	.align 8
.align 1
rnSN_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rnSC_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rnSO_closure:
	.quad	rnSO_info
.section .rodata
	.align 8
.align 1
cp2j_str:
	.byte	120
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	83
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cp2l_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
rnSO_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cp2j_str
	.quad	cp2l_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967296
	.quad	18
sp1V_info:
.Lcp2u:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp2w
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	addq $-16,%rbp
	jmp rnSO_info
.Lcp2w:
	jmp *-16(%r13)
	.size sp1V_info, .-sp1V_info
.text
	.align 8
	.quad	4294967300
	.quad	0
	.quad	15
rnSO_info:
.Lcp2B:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .Lcp2F
	addq $6,rnSO_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rnSO_ct
	je .Lcp2G
.Lcp2H:
	incq rnSO_ct+40
	cmpq $1,%r14
	jle .Lcp2J
	movq $sp1V_info,-40(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $rnSC_closure+1,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.Lcp2F:
	movq $48,192(%r13)
.Lcp2D:
	movl $rnSO_closure,%ebx
	jmp *-8(%r13)
.Lcp2G:
	movq ticky_entry_ctrs,%rax
	movq %rax,rnSO_ct+56
	movq $rnSO_ct,ticky_entry_ctrs
	movq $1,rnSO_ct
	jmp .Lcp2H
.Lcp2J:
	movl $rnSN_closure+2,%ebx
	addq $-48,%r12
	addq $-6,rnSO_ct+48
	incq ALLOC_HEAP_ctr
	addq $-6,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size rnSO_info, .-rnSO_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_genSimplexModel1_srt:
	.quad	base_GHCziReal_zdfIntegralInt_closure
	.quad	base_GHCziFloat_zdwzdcproperFraction1_closure
	.quad	EngineziTerrainziNoise_simplexNoise1_closure
	.quad	EngineziModelziModel_createModel1_closure
	.quad	EngineziTerrainziGenerator_applyHeights_closure
	.quad	rnSw_closure
	.quad	rnSB_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genSimplexModel1_closure
.type EngineziTerrainziGenerator_genSimplexModel1_closure, @object
EngineziTerrainziGenerator_genSimplexModel1_closure:
	.quad	EngineziTerrainziGenerator_genSimplexModel1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cp58_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	103
	.byte	101
	.byte	110
	.byte	83
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
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
	.byte	110
	.byte	53
	.byte	110
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cp5a_str:
	.byte	76
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genSimplexModel1_ct
.type EngineziTerrainziGenerator_genSimplexModel1_ct, @object
EngineziTerrainziGenerator_genSimplexModel1_ct:
	.quad	0
	.quad	8
	.quad	2
	.quad	cp58_str
	.quad	cp5a_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_genSimplexModel1_slow
.type EngineziTerrainziGenerator_genSimplexModel1_slow, @object
EngineziTerrainziGenerator_genSimplexModel1_slow:
.Lcp5d:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziGenerator_genSimplexModel1_info
	.size EngineziTerrainziGenerator_genSimplexModel1_slow, .-EngineziTerrainziGenerator_genSimplexModel1_slow
.text
	.align 8
	.quad	0
	.quad	32
sp2Y_info:
.Lcp5l:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcp5r
	addq $2,EngineziTerrainziGenerator_genSimplexModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	decq %rax
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcp5r:
	movq $16,192(%r13)
.Lcp5p:
	jmp *-16(%r13)
	.size sp2Y_info, .-sp2Y_info
.text
	.align 8
	.quad	1
	.quad	32
sp2U_info:
.Lcp5v:
	movss 7(%rbx),%xmm0
	xorps %xmm1,%xmm1
	ucomiss %xmm1,%xmm0
	jp .Lnp5D
	jb .Lcp5x
.Lnp5D:
	movq 8(%rbp),%rbx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lcp5x:
	movq 8(%rbp),%rbx
	movq $sp2Y_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sp2Y_info
	jmp *(%rbx)
	.size sp2U_info, .-sp2U_info
.text
	.align 8
	.quad	0
	.quad	32
sp2V_info:
.Lcp5H:
	movq %rbx,0(%rbp)
	movq %r14,%rbx
	movq $sp2U_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sp2U_info
	jmp *(%rbx)
	.size sp2V_info, .-sp2V_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(sp2W_info)+0
	.long	0
	.quad	0
	.quad	12884901920
sp2W_info:
.Lcp5N:
	incq KNOWN_CALL_ctr
	movl $base_GHCziReal_zdfIntegralInt_closure,%r14d
	movss 7(%rbx),%xmm1
	movq $sp2V_info,0(%rbp)
	jmp base_GHCziFloat_zdwzdcproperFraction1_info
	.size sp2W_info, .-sp2W_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(sp2S_info)+0
	.long	0
	.quad	1
	.quad	12884901905
sp2S_info:
.Lcp5S:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp5U
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sp2W_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sp2W_info
	jmp *(%rbx)
.Lcp5U:
	jmp *-16(%r13)
	.size sp2S_info, .-sp2S_info
.text
	.align 8
	.quad	2
	.quad	19
sp2N_info:
.Lcp63:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp65
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	movl $EngineziTerrainziGenerator_createFlat1_closure+1,%esi
	movq 16(%rbx),%rdi
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_heightsToCoords_info
.Lcp65:
	jmp *-16(%r13)
	.size sp2N_info, .-sp2N_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(sp2O_info)+32
	.long	0
	.quad	1
	.quad	4294967328
sp2O_info:
.Lcp6b:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp EngineziTerrainziGenerator_applyHeights_info
	.size sp2O_info, .-sp2O_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(so4S_info)+32
	.long	0
	.quad	3
	.quad	4294967312
so4S_info:
.Lcp6f:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp6h
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lcp6j
	addq $4,EngineziTerrainziGenerator_genSimplexModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sp2N_info,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-8(%r12)
	movq 32(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -24(%r12),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%r14
	movq 16(%rbx),%rsi
	movq $sp2O_info,-32(%rbp)
	addq $-32,%rbp
	jmp EngineziTerrainziGenerator_createFlat_info
.Lcp6j:
	movq $32,192(%r13)
.Lcp6h:
	jmp *-16(%r13)
	.size so4S_info, .-so4S_info
.text
	.align 8
	.quad	0
	.quad	32
so5s_info:
.Lcp6y:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcp6F
	addq $2,EngineziTerrainziGenerator_genSimplexModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $base_GHCziInt_I32zh_con_info,-8(%r12)
	movslq %ebx,%rax
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lcp6F:
	movq $16,192(%r13)
	jmp stg_gc_unbx_r1
	.size so5s_info, .-so5s_info
.text
	.align 8
	.quad	0
	.quad	32
so5q_info:
.Lcp6J:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movl $3,%esi
	movq $so5s_info,0(%rbp)
	jmp ghczmprim_GHCziClasses_divIntzh_info
	.size so5q_info, .-so5q_info
.text
	.align 8
	.quad	1
	.quad	17
sp2Q_info:
.Lcp6N:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp6P
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorl %esi,%esi
	movq $so5q_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziList_zdwlen_info
.Lcp6P:
	jmp *-16(%r13)
	.size sp2Q_info, .-sp2Q_info
.text
	.align 8
	.quad	0
	.quad	32
so59_info:
.Lcp6T:
	testq %rbx,%rbx
	jle .Lcp6W
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	addq $8,%rbp
	jmp rnSO_info
.Lcp6W:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size so59_info, .-so59_info
.text
	.align 8
	.quad	1
	.quad	17
so5c_info:
.Lcp70:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp72
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorl %esi,%esi
	movq $so59_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziList_zdwlen_info
.Lcp72:
	jmp *-16(%r13)
	.size so5c_info, .-so5c_info
.text
	.align 8
	.quad	0
	.quad	32
so54_info:
.Lcp76:
	movq %rbx,%r14
	shlq $1,%r14
	testq %r14,%r14
	jle .Lcp79
	incq KNOWN_CALL_ctr
	addq $8,%rbp
	jmp rnSM_info
.Lcp79:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size so54_info, .-so54_info
.text
	.align 8
	.quad	1
	.quad	17
so5f_info:
.Lcp7d:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp7f
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorl %esi,%esi
	movq $so54_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziList_zdwlen_info
.Lcp7f:
	jmp *-16(%r13)
	.size so5f_info, .-so5f_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(so4Y_info)+48
	.long	0
	.quad	0
	.quad	4294967328
so4Y_info:
.Lcp7j:
	movq %rbx,%r14
	imulq $3,%r14
	testq %r14,%r14
	jle .Lcp7m
	incq KNOWN_CALL_ctr
	movl $rnSB_closure,%esi
	addq $8,%rbp
	jmp base_GHCziList_takeUInt_info
.Lcp7m:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size so4Y_info, .-so4Y_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(so5i_info)+48
	.long	0
	.quad	1
	.quad	4294967313
so5i_info:
.Lcp7r:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp7t
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	xorl %esi,%esi
	movq $so4Y_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziList_zdwlen_info
.Lcp7t:
	jmp *-16(%r13)
	.size so5i_info, .-so5i_info
.text
	.align 8
	.quad	1
	.quad	17
so5l_info:
.Lcp7A:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp7C
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp EngineziTerrainziGenerator_calculateNormals_info
.Lcp7C:
	jmp *-16(%r13)
	.size so5l_info, .-so5l_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(sp2Z_info)+24
	.long	0
	.quad	4
	.quad	64424509472
sp2Z_info:
.Lcp7G:
	addq $280,%r12
	cmpq 144(%r13),%r12
	ja .Lcp7K
	addq $35,EngineziTerrainziGenerator_genSimplexModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $35,ALLOC_HEAP_tot
	movq $so4S_info,-272(%r12)
	movq 32(%rbp),%rax
	movq %rax,-256(%r12)
	movq 24(%rbp),%rax
	movq %rax,-248(%r12)
	movq %rbx,-240(%r12)
	movq $sp2Q_info,-232(%r12)
	leaq -272(%r12),%rax
	movq %rax,-216(%r12)
	movq $so5c_info,-208(%r12)
	leaq -272(%r12),%rax
	movq %rax,-192(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-184(%r12)
	leaq -208(%r12),%rax
	movq %rax,-176(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-168(%r12)
	movq $so5f_info,-160(%r12)
	leaq -272(%r12),%rax
	movq %rax,-144(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-136(%r12)
	leaq -160(%r12),%rax
	movq %rax,-128(%r12)
	leaq -182(%r12),%rax
	movq %rax,-120(%r12)
	movq $so5i_info,-112(%r12)
	leaq -272(%r12),%rax
	movq %rax,-96(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-88(%r12)
	leaq -112(%r12),%rax
	movq %rax,-80(%r12)
	leaq -134(%r12),%rax
	movq %rax,-72(%r12)
	movq $so5l_info,-64(%r12)
	leaq -272(%r12),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	leaq -64(%r12),%rax
	movq %rax,-32(%r12)
	leaq -86(%r12),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -272(%r12),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -232(%r12),%rax
	movq %rax,32(%rbp)
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movl $rnSw_closure+2,%edi
	leaq -14(%r12),%r8
	movl $rnSK_closure+2,%r9d
	addq $32,%rbp
	jmp EngineziModelziModel_createModel1_info
.Lcp7K:
	movq $280,192(%r13)
.Lcp7I:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sp2Z_info, .-sp2Z_info
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel1_slow-(EngineziTerrainziGenerator_genSimplexModel1_info)+0
	.long	0
	.quad	7
	.long	EngineziTerrainziGenerator_genSimplexModel1_srt-(EngineziTerrainziGenerator_genSimplexModel1_info)+0
	.long	0
	.quad	34359738368
	.quad	0
	.quad	545460846607
.globl EngineziTerrainziGenerator_genSimplexModel1_info
.type EngineziTerrainziGenerator_genSimplexModel1_info, @object
EngineziTerrainziGenerator_genSimplexModel1_info:
.Lcp84:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcp86
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lcp88
	addq $3,EngineziTerrainziGenerator_genSimplexModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_genSimplexModel1_ct
	je .Lcp89
.Lcp8a:
	incq EngineziTerrainziGenerator_genSimplexModel1_ct+40
	movq $sp2S_info,-16(%r12)
	movq %rdi,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	leaq -16(%r12),%r14
	movq %r8,%rsi
	movq 0(%rbp),%rax
	movq %r8,0(%rbp)
	movq %rax,%r8
	movq 8(%rbp),%rax
	movq %rdi,8(%rbp)
	movq %r9,%rdi
	movq %rax,%r9
	movq $sp2Z_info,-24(%rbp)
	addq $-24,%rbp
	jmp EngineziTerrainziNoise_simplexNoise1_info
.Lcp88:
	movq $24,192(%r13)
.Lcp86:
	movl $EngineziTerrainziGenerator_genSimplexModel1_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lcp89:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_genSimplexModel1_ct+56
	movq $EngineziTerrainziGenerator_genSimplexModel1_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_genSimplexModel1_ct
	jmp .Lcp8a
	.size EngineziTerrainziGenerator_genSimplexModel1_info, .-EngineziTerrainziGenerator_genSimplexModel1_info
.section .data
	.align 8
.align 1
EngineziTerrainziGenerator_genSimplexModel_srt:
	.quad	EngineziTerrainziGenerator_genSimplexModel1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genSimplexModel_closure
.type EngineziTerrainziGenerator_genSimplexModel_closure, @object
EngineziTerrainziGenerator_genSimplexModel_closure:
	.quad	EngineziTerrainziGenerator_genSimplexModel_info
	.quad	0
.section .rodata
	.align 8
.align 1
cp8p_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	103
	.byte	101
	.byte	110
	.byte	83
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	110
	.byte	53
	.byte	66
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cp8s_str:
	.byte	76
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziGenerator_genSimplexModel_ct
.type EngineziTerrainziGenerator_genSimplexModel_ct, @object
EngineziTerrainziGenerator_genSimplexModel_ct:
	.quad	0
	.quad	8
	.quad	2
	.quad	cp8p_str
	.quad	cp8s_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziGenerator_genSimplexModel_slow
.type EngineziTerrainziGenerator_genSimplexModel_slow, @object
EngineziTerrainziGenerator_genSimplexModel_slow:
.Lcp8w:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziGenerator_genSimplexModel_info
	.size EngineziTerrainziGenerator_genSimplexModel_slow, .-EngineziTerrainziGenerator_genSimplexModel_slow
.text
	.align 8
	.long	EngineziTerrainziGenerator_genSimplexModel_slow-(EngineziTerrainziGenerator_genSimplexModel_info)+0
	.long	0
	.quad	7
	.long	EngineziTerrainziGenerator_genSimplexModel_srt-(EngineziTerrainziGenerator_genSimplexModel_info)+0
	.long	0
	.quad	34359738368
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziGenerator_genSimplexModel_info
.type EngineziTerrainziGenerator_genSimplexModel_info, @object
EngineziTerrainziGenerator_genSimplexModel_info:
.Lcp8A:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziGenerator_genSimplexModel_ct
	je .Lcp8D
.Lcp8F:
	incq EngineziTerrainziGenerator_genSimplexModel_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziTerrainziGenerator_genSimplexModel1_info
.Lcp8D:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziGenerator_genSimplexModel_ct+56
	movq $EngineziTerrainziGenerator_genSimplexModel_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziGenerator_genSimplexModel_ct
	jmp .Lcp8F
	.size EngineziTerrainziGenerator_genSimplexModel_info, .-EngineziTerrainziGenerator_genSimplexModel_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
