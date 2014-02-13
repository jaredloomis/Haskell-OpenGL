.data
	.align 8
.align 1
.globl __stginit_EngineziModelziModelLoader
.type __stginit_EngineziModelziModelLoader, @object
__stginit_EngineziModelziModelLoader:
.data
	.align 8
.align 1
rztM_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	191
	.long	0
.data
	.align 8
.align 1
rztN_closure:
	.quad	rztN_info
.section .rodata
	.align 8
.align 1
czZf_str:
	.byte	36
	.byte	115
	.byte	36
	.byte	115
	.byte	110
	.byte	101
	.byte	103
	.byte	97
	.byte	116
	.byte	101
	.byte	78
	.byte	111
	.byte	116
	.byte	104
	.byte	105
	.byte	110
	.byte	103
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	116
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
czZh_str:
	.byte	76
	.byte	105
	.byte	0
.data
	.align 8
.align 1
rztN_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	czZf_str
	.quad	czZh_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967297
	.quad	20
szvd_info:
.LczZn:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LczZp
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp rztN_info
.LczZp:
	jmp *-16(%r13)
	.size szvd_info, .-szvd_info
.section .rodata
	.align 8
.align 1
czZs_str:
	.byte	120
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	118
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
czZu_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
szvl_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	czZs_str
	.quad	czZu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967297
	.quad	20
szYc_info:
.LczZD:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LczZF
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp szvl_info
.LczZF:
	jmp *-16(%r13)
	.size szYc_info, .-szYc_info
.text
	.align 8
	.quad	4294967300
	.quad	1
	.quad	10
szvl_info:
.LczZK:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LczZO
	addq $7,szvl_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szvl_ct
	je .LczZP
.LczZQ:
	incq szvl_ct+40
	cmpq $1,%r14
	jle .LczZS
	movq $szYc_info,-48(%r12)
	movq %rbx,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $rztM_closure+1,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LczZO:
	movq $56,192(%r13)
.LczZM:
	jmp *-8(%r13)
.LczZP:
	movq ticky_entry_ctrs,%rax
	movq %rax,szvl_ct+56
	movq $szvl_ct,ticky_entry_ctrs
	movq $1,szvl_ct
	jmp .LczZQ
.LczZS:
	movq 7(%rbx),%rbx
	addq $-56,%r12
	addq $-7,szvl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-7,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size szvl_info, .-szvl_info
.text
	.align 8
	.quad	4294967297
	.quad	20
szYg_info:
.LcA02:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA04
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp rztN_info
.LcA04:
	jmp *-16(%r13)
	.size szYg_info, .-szYg_info
.text
	.align 8
	.quad	130
	.quad	32
szYd_info:
.LcA0a:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcA0b
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcA0j
	addq $9,rztN_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $szvd_info,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	cmpq $0,16(%rbp)
	jle .LcA0l
	movq $ghczmprim_GHCziTypes_ZC_con_info,-32(%r12)
	movq $rztM_closure+1,-24(%r12)
	leaq -64(%r12),%rax
	movq %rax,-16(%r12)
	movq $szvl_info,-8(%r12)
	leaq -30(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%rbx
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp szvl_info
.LcA0b:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcA0f
	addq $7,rztN_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $szYg_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 6(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcA0f:
	movq $56,192(%r13)
.LcA0d:
	jmp *-16(%r13)
.LcA0j:
	movq $72,192(%r13)
.LcA0h:
	jmp *-16(%r13)
.LcA0l:
	leaq -64(%r12),%rbx
	addq $24,%rbp
	addq $-40,%r12
	addq $-5,rztN_ct+48
	incq ALLOC_HEAP_ctr
	addq $-5,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
	.size szYd_info, .-szYd_info
.text
	.align 8
	.quad	65
	.quad	32
szYb_info:
.LcA0C:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcA0D
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcA0D:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $szYd_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne szYd_info
	jmp *(%rbx)
	.size szYb_info, .-szYb_info
.text
	.align 8
	.quad	8589934603
	.quad	0
	.quad	15
rztN_info:
.LcA0N:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA0P
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rztN_ct
	je .LcA0Q
.LcA0R:
	incq rztN_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $szYb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne szYb_info
	jmp *(%rbx)
.LcA0P:
	movl $rztN_closure,%ebx
	jmp *-8(%r13)
.LcA0Q:
	movq ticky_entry_ctrs,%rax
	movq %rax,rztN_ct+56
	movq $rztN_ct,ticky_entry_ctrs
	movq $1,rztN_ct
	jmp .LcA0R
	.size rztN_info, .-rztN_info
.section .data
	.align 8
.align 1
rztO_srt:
	.quad	base_GHCziErr_error_closure
	.quad	base_ForeignziCziTypes_zdfReadCFloat2_closure
	.quad	base_TextziRead_zdwreadEither_closure
.data
	.align 8
.align 1
rztO_closure:
	.quad	rztO_info
	.quad	0
.section .rodata
	.align 8
.align 1
cA19_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	116
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cA1c_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rztO_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA19_str
	.quad	cA1c_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rztO_srt-(sA0Y_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sA0Y_info:
.LcA1o:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcA1p
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziErr_error_info
.LcA1p:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sA0Y_info, .-sA0Y_info
.text
	.align 8
	.long	rztO_srt-(rztO_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
rztO_info:
.LcA1w:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA1y
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rztO_ct
	je .LcA1z
.LcA1A:
	incq rztO_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $base_ForeignziCziTypes_zdfReadCFloat2_closure+1,%r14d
	movq $sA0Y_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_TextziRead_zdwreadEither_info
.LcA1y:
	movl $rztO_closure,%ebx
	jmp *-8(%r13)
.LcA1z:
	movq ticky_entry_ctrs,%rax
	movq %rax,rztO_ct+56
	movq $rztO_ct,ticky_entry_ctrs
	movq $1,rztO_ct
	jmp .LcA1A
	.size rztO_info, .-rztO_info
.data
	.align 8
.align 1
rztP_closure:
	.quad	rztP_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cA1N_str:
	.byte	102
	.byte	114
	.byte	111
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	77
	.byte	58
	.byte	32
	.byte	97
	.byte	114
	.byte	103
	.byte	117
	.byte	109
	.byte	101
	.byte	110
	.byte	116
	.byte	32
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	97
	.byte	105
	.byte	110
	.byte	101
	.byte	100
	.byte	32
	.byte	78
	.byte	111
	.byte	116
	.byte	104
	.byte	105
	.byte	110
	.byte	103
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rztP_info:
.LcA1R:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA1T
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcA1V
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
	je .LcA1W
.LcA1X:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cA1N_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcA1V:
	movq $16,192(%r13)
.LcA1T:
	jmp *-16(%r13)
.LcA1W:
	jmp *(%rbx)
	.size rztP_info, .-rztP_info
.section .data
	.align 8
.align 1
rztQ_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rztP_closure
.data
	.align 8
.align 1
rztQ_closure:
	.quad	rztQ_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rztQ_srt-(rztQ_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rztQ_info:
.LcA2e:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA2g
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcA2i
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
	je .LcA2j
.LcA2k:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rztP_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcA2i:
	movq $16,192(%r13)
.LcA2g:
	jmp *-16(%r13)
.LcA2j:
	jmp *(%rbx)
	.size rztQ_info, .-rztQ_info
.section .data
	.align 8
.align 1
rx8N_srt:
	.quad	rx8N_closure
	.quad	rztQ_closure
.data
	.align 8
.align 1
rx8N_closure:
	.quad	rx8N_info
	.quad	0
.section .rodata
	.align 8
.align 1
cA2N_str:
	.byte	102
	.byte	114
	.byte	111
	.byte	109
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	77
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	120
	.byte	56
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cA2Q_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rx8N_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA2N_str
	.quad	cA2Q_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rx8N_srt-(szvR_info)+0
	.long	0
	.quad	1
	.quad	4294967313
szvR_info:
.LcA3f:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA3h
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp rx8N_info
.LcA3h:
	jmp *-16(%r13)
	.size szvR_info, .-szvR_info
.text
	.align 8
	.long	rx8N_srt-(sA2u_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sA2u_info:
.LcA3l:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcA3p
	addq $12,rx8N_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $szvR_info,-88(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	movq 23(%rbx),%rax
	movq %rax,-56(%r12)
	leaq -88(%r12),%rax
	movq %rax,-48(%r12)
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
	addq $16,%rbp
	jmp *0(%rbp)
.LcA3p:
	movq $96,192(%r13)
.LcA3n:
	jmp *-16(%r13)
	.size sA2u_info, .-sA2u_info
.text
	.align 8
	.long	rx8N_srt-(sA2s_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sA2s_info:
.LcA3B:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcA3C
	movl $rztQ_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcA3C:
	movq 6(%rbx),%rbx
	movq $sA2u_info,0(%rbp)
	testq $7,%rbx
	jne sA2u_info
	jmp *(%rbx)
	.size sA2s_info, .-sA2s_info
.text
	.align 8
	.long	rx8N_srt-(sA2r_info)+0
	.long	0
	.quad	0
	.quad	12884901920
sA2r_info:
.LcA3O:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcA3P
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcA3P:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sA2s_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sA2s_info
	jmp *(%rbx)
	.size sA2r_info, .-sA2r_info
.text
	.align 8
	.long	rx8N_srt-(rx8N_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	12884901903
rx8N_info:
.LcA3Z:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA41
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rx8N_ct
	je .LcA42
.LcA43:
	incq rx8N_ct+40
	movq %r14,%rbx
	movq $sA2r_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sA2r_info
	jmp *(%rbx)
.LcA41:
	movl $rx8N_closure,%ebx
	jmp *-8(%r13)
.LcA42:
	movq ticky_entry_ctrs,%rax
	movq %rax,rx8N_ct+56
	movq $rx8N_ct,ticky_entry_ctrs
	movq $1,rx8N_ct
	jmp .LcA43
	.size rx8N_info, .-rx8N_info
.data
	.align 8
.align 1
rztR_closure:
	.quad	rztR_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cA4j_str:
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	116
	.byte	111
	.byte	86
	.byte	101
	.byte	99
	.byte	50
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
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	97
	.byte	105
	.byte	110
	.byte	115
	.byte	108
	.byte	101
	.byte	115
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	97
	.byte	110
	.byte	32
	.byte	50
	.byte	32
	.byte	101
	.byte	108
	.byte	101
	.byte	109
	.byte	101
	.byte	110
	.byte	116
	.byte	115
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rztR_info:
.LcA4n:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA4p
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcA4r
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
	je .LcA4s
.LcA4t:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cA4j_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcA4r:
	movq $16,192(%r13)
.LcA4p:
	jmp *-16(%r13)
.LcA4s:
	jmp *(%rbx)
	.size rztR_info, .-rztR_info
.section .data
	.align 8
.align 1
rztS_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rztR_closure
.data
	.align 8
.align 1
rztS_closure:
	.quad	rztS_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rztS_srt-(rztS_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rztS_info:
.LcA4K:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA4M
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcA4O
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
	je .LcA4P
.LcA4Q:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rztR_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcA4O:
	movq $16,192(%r13)
.LcA4M:
	jmp *-16(%r13)
.LcA4P:
	jmp *(%rbx)
	.size rztS_info, .-rztS_info
.data
	.align 8
.align 1
rztT_closure:
	.quad	rztT_info
.section .rodata
	.align 8
.align 1
cA57_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	53
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	116
	.byte	84
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cA5a_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rztT_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA57_str
	.quad	cA5a_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sA4W_info:
.LcA5k:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sA4W_info, .-sA4W_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rztT_info:
.LcA5o:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA5q
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rztT_ct
	je .LcA5r
.LcA5s:
	incq rztT_ct+40
	movq %r14,%rbx
	movq $sA4W_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sA4W_info
	jmp *(%rbx)
.LcA5q:
	movl $rztT_closure,%ebx
	jmp *-8(%r13)
.LcA5r:
	movq ticky_entry_ctrs,%rax
	movq %rax,rztT_ct+56
	movq $rztT_ct,ticky_entry_ctrs
	movq $1,rztT_ct
	jmp .LcA5s
	.size rztT_info, .-rztT_info
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_faceVertIndices_closure
.type EngineziModelziModelLoader_faceVertIndices_closure, @object
EngineziModelziModelLoader_faceVertIndices_closure:
	.quad	EngineziModelziModelLoader_faceVertIndices_info
.section .rodata
	.align 8
.align 1
cA5E_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	102
	.byte	97
	.byte	99
	.byte	101
	.byte	86
	.byte	101
	.byte	114
	.byte	116
	.byte	73
	.byte	110
	.byte	100
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cA5H_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_faceVertIndices_ct
.type EngineziModelziModelLoader_faceVertIndices_ct, @object
EngineziModelziModelLoader_faceVertIndices_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA5E_str
	.quad	cA5H_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModelLoader_faceVertIndices_info
.type EngineziModelziModelLoader_faceVertIndices_info, @object
EngineziModelziModelLoader_faceVertIndices_info:
.LcA5M:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_faceVertIndices_ct
	je .LcA5P
.LcA5R:
	incq EngineziModelziModelLoader_faceVertIndices_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $rztT_closure+1,%r14d
	jmp base_GHCziBase_map_info
.LcA5P:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_faceVertIndices_ct+56
	movq $EngineziModelziModelLoader_faceVertIndices_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_faceVertIndices_ct
	jmp .LcA5R
	.size EngineziModelziModelLoader_faceVertIndices_info, .-EngineziModelziModelLoader_faceVertIndices_info
.data
	.align 8
.align 1
rztU_closure:
	.quad	rztU_info
.section .rodata
	.align 8
.align 1
cA65_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	54
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	116
	.byte	85
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cA68_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rztU_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA65_str
	.quad	cA68_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sA5V_info:
.LcA6i:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sA5V_info, .-sA5V_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rztU_info:
.LcA6m:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA6o
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rztU_ct
	je .LcA6p
.LcA6q:
	incq rztU_ct+40
	movq %r14,%rbx
	movq $sA5V_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sA5V_info
	jmp *(%rbx)
.LcA6o:
	movl $rztU_closure,%ebx
	jmp *-8(%r13)
.LcA6p:
	movq ticky_entry_ctrs,%rax
	movq %rax,rztU_ct+56
	movq $rztU_ct,ticky_entry_ctrs
	movq $1,rztU_ct
	jmp .LcA6q
	.size rztU_info, .-rztU_info
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_faceTexIndices_closure
.type EngineziModelziModelLoader_faceTexIndices_closure, @object
EngineziModelziModelLoader_faceTexIndices_closure:
	.quad	EngineziModelziModelLoader_faceTexIndices_info
.section .rodata
	.align 8
.align 1
cA6C_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	102
	.byte	97
	.byte	99
	.byte	101
	.byte	84
	.byte	101
	.byte	120
	.byte	73
	.byte	110
	.byte	100
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cA6F_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_faceTexIndices_ct
.type EngineziModelziModelLoader_faceTexIndices_ct, @object
EngineziModelziModelLoader_faceTexIndices_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA6C_str
	.quad	cA6F_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModelLoader_faceTexIndices_info
.type EngineziModelziModelLoader_faceTexIndices_info, @object
EngineziModelziModelLoader_faceTexIndices_info:
.LcA6K:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_faceTexIndices_ct
	je .LcA6N
.LcA6P:
	incq EngineziModelziModelLoader_faceTexIndices_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $rztU_closure+1,%r14d
	jmp base_GHCziBase_map_info
.LcA6N:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_faceTexIndices_ct+56
	movq $EngineziModelziModelLoader_faceTexIndices_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_faceTexIndices_ct
	jmp .LcA6P
	.size EngineziModelziModelLoader_faceTexIndices_info, .-EngineziModelziModelLoader_faceTexIndices_info
.data
	.align 8
.align 1
rztV_closure:
	.quad	rztV_info
.section .rodata
	.align 8
.align 1
cA73_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	55
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	116
	.byte	86
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cA76_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rztV_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA73_str
	.quad	cA76_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sA6T_info:
.LcA7g:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sA6T_info, .-sA6T_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rztV_info:
.LcA7k:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA7m
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rztV_ct
	je .LcA7n
.LcA7o:
	incq rztV_ct+40
	movq %r14,%rbx
	movq $sA6T_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sA6T_info
	jmp *(%rbx)
.LcA7m:
	movl $rztV_closure,%ebx
	jmp *-8(%r13)
.LcA7n:
	movq ticky_entry_ctrs,%rax
	movq %rax,rztV_ct+56
	movq $rztV_ct,ticky_entry_ctrs
	movq $1,rztV_ct
	jmp .LcA7o
	.size rztV_info, .-rztV_info
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_faceNormIndices_closure
.type EngineziModelziModelLoader_faceNormIndices_closure, @object
EngineziModelziModelLoader_faceNormIndices_closure:
	.quad	EngineziModelziModelLoader_faceNormIndices_info
.section .rodata
	.align 8
.align 1
cA7A_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	102
	.byte	97
	.byte	99
	.byte	101
	.byte	78
	.byte	111
	.byte	114
	.byte	109
	.byte	73
	.byte	110
	.byte	100
	.byte	105
	.byte	99
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cA7D_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_faceNormIndices_ct
.type EngineziModelziModelLoader_faceNormIndices_ct, @object
EngineziModelziModelLoader_faceNormIndices_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA7A_str
	.quad	cA7D_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziModelziModelLoader_faceNormIndices_info
.type EngineziModelziModelLoader_faceNormIndices_info, @object
EngineziModelziModelLoader_faceNormIndices_info:
.LcA7I:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_faceNormIndices_ct
	je .LcA7L
.LcA7N:
	incq EngineziModelziModelLoader_faceNormIndices_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movl $rztV_closure+1,%r14d
	jmp base_GHCziBase_map_info
.LcA7L:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_faceNormIndices_ct+56
	movq $EngineziModelziModelLoader_faceNormIndices_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_faceNormIndices_ct
	jmp .LcA7N
	.size EngineziModelziModelLoader_faceNormIndices_info, .-EngineziModelziModelLoader_faceNormIndices_info
.data
	.align 8
.align 1
rztW_closure:
	.quad	rztW_info
.section .rodata
	.align 8
.align 1
cA82_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	56
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	116
	.byte	87
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cA85_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rztW_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA82_str
	.quad	cA85_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sA7Q_info:
.LcA8h:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcA8i
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcA8i:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sA7Q_info, .-sA7Q_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rztW_info:
.LcA8o:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA8q
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rztW_ct
	je .LcA8r
.LcA8s:
	incq rztW_ct+40
	movq %r14,%rbx
	movq $sA7Q_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sA7Q_info
	jmp *(%rbx)
.LcA8q:
	movl $rztW_closure,%ebx
	jmp *-8(%r13)
.LcA8r:
	movq ticky_entry_ctrs,%rax
	movq %rax,rztW_ct+56
	movq $rztW_ct,ticky_entry_ctrs
	movq $1,rztW_ct
	jmp .LcA8s
	.size rztW_info, .-rztW_info
.data
	.align 8
.align 1
rztX_closure:
	.quad	ghczmprim_GHCziTypes_Czh_static_info
	.quad	32
.data
	.align 8
.align 1
rztY_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rztX_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rztZ_closure:
	.quad	rztZ_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
rztZ_info:
.LcA8P:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcA8R
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcA8T
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
	je .LcA8U
.LcA8V:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rztY_closure+2,%esi
	addq $-16,%rbp
	jmp splitzm0zi2zi2_DataziListziSplitziInternals_splitOn_info
.LcA8T:
	movq $16,192(%r13)
.LcA8R:
	jmp *-16(%r13)
.LcA8U:
	jmp *(%rbx)
	.size rztZ_info, .-rztZ_info
.section .data
	.align 8
.align 1
rzu0_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziList_tail1_closure
	.quad	rztO_closure
	.quad	rztS_closure
	.quad	rztZ_closure
.data
	.align 8
.align 1
rzu0_closure:
	.quad	rzu0_info
	.quad	0
.section .rodata
	.align 8
.align 1
cA9J_str:
	.byte	36
	.byte	119
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	84
	.byte	101
	.byte	120
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cA9M_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzu0_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cA9J_str
	.quad	cA9M_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sA99_info:
.LcAap:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAav
	addq $2,rzu0_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movss .LnAax(%rip),%xmm0
	subss (%rax),%xmm0
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	movq 8(%rbp),%rbx
	leaq -7(%r12),%r14
	addq $16,%rbp
	jmp *0(%rbp)
.LcAav:
	movq $16,192(%r13)
.LcAat:
	jmp *-16(%r13)
	.size sA99_info, .-sA99_info
.section .rodata
	.align 8
.align 4
.LnAax:
	.byte	0
	.byte	0
	.byte	128
	.byte	63
.text
	.align 8
	.long	rzu0_srt-(sA96_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sA96_info:
.LcAaD:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAaE
	movl $base_GHCziList_badHead_closure,%ebx
	addq $16,%rbp
	jmp stg_ap_0_fast
.LcAaE:
	movq 6(%rbx),%rbx
	movq $sA99_info,0(%rbp)
	testq $7,%rbx
	jne sA99_info
	jmp *(%rbx)
	.size sA96_info, .-sA96_info
.text
	.align 8
	.long	rzu0_srt-(szwP_info)+0
	.long	0
	.quad	1
	.quad	4294967328
szwP_info:
.LcAaN:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sA96_info,0(%rbp)
	testq $7,%rbx
	jne sA96_info
	jmp *(%rbx)
	.size szwP_info, .-szwP_info
.text
	.align 8
	.long	rzu0_srt-(sA95_info)+0
	.long	0
	.quad	0
	.quad	38654705696
sA95_info:
.LcAaX:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAaY
	movl $rztS_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAaY:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $szwP_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne szwP_info
	jmp *(%rbx)
	.size sA95_info, .-sA95_info
.text
	.align 8
	.long	rzu0_srt-(sA93_info)+0
	.long	0
	.quad	1
	.quad	55834574880
sA93_info:
.LcAb9:
	cmpq $2,%rbx
	jne .LcAbb
	incq KNOWN_CALL_ctr
	movl $rztO_closure+1,%r14d
	movq 8(%rbp),%rsi
	movq $sA95_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziBase_map_info
.LcAbb:
	incq RET_UNBOXED_TUP_ctr
	movl $rztM_closure+1,%ebx
	movl $rztM_closure+1,%r14d
	addq $16,%rbp
	jmp *0(%rbp)
	.size sA93_info, .-sA93_info
.text
	.align 8
	.long	rzu0_srt-(sA92_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sA92_info:
.LcAbg:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAbh
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAbh:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%r14
	xorl %esi,%esi
	movq $sA93_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_zdwlen_info
	.size sA92_info, .-sA92_info
.text
	.align 8
	.long	rzu0_srt-(sA91_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sA91_info:
.LcAbp:
	incq KNOWN_CALL_ctr
	movl $rztW_closure+1,%r14d
	movq %rbx,%rsi
	movq $sA92_info,0(%rbp)
	jmp base_GHCziList_filter_info
	.size sA91_info, .-sA91_info
.text
	.align 8
	.long	rzu0_srt-(rzu0_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	133143986191
rzu0_info:
.LcAbs:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAbu
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzu0_ct
	je .LcAbv
.LcAbw:
	incq rzu0_ct+40
	incq UNKNOWN_CALL_ctr
	movl $rztZ_closure,%ebx
	movq $sA91_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
.LcAbu:
	movl $rzu0_closure,%ebx
	jmp *-8(%r13)
.LcAbv:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzu0_ct+56
	movq $rzu0_ct,ticky_entry_ctrs
	movq $1,rzu0_ct
	jmp .LcAbw
	.size rzu0_info, .-rzu0_info
.section .data
	.align 8
.align 1
rx8H_srt:
	.quad	rzu0_closure
.data
	.align 8
.align 1
rx8H_closure:
	.quad	rx8H_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAbH_str:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	84
	.byte	101
	.byte	120
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	120
	.byte	56
	.byte	72
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAbK_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rx8H_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAbH_str
	.quad	cAbK_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sAbA_info:
.LcAbU:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcAbZ
	addq $3,rx8H_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAbZ:
	movq $24,192(%r13)
.LcAbX:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sAbA_info, .-sAbA_info
.text
	.align 8
	.long	rx8H_srt-(rx8H_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
rx8H_info:
.LcAc2:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAc4
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rx8H_ct
	je .LcAc5
.LcAc6:
	incq rx8H_ct+40
	incq KNOWN_CALL_ctr
	movq $sAbA_info,-8(%rbp)
	addq $-8,%rbp
	jmp rzu0_info
.LcAc4:
	movl $rx8H_closure,%ebx
	jmp *-8(%r13)
.LcAc5:
	movq ticky_entry_ctrs,%rax
	movq %rax,rx8H_ct+56
	movq $rx8H_ct,ticky_entry_ctrs
	movq $1,rx8H_ct
	jmp .LcAc6
	.size rx8H_info, .-rx8H_info
.section .data
	.align 8
.align 1
rzu1_srt:
	.quad	base_GHCziErr_undefined_closure
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziList_znznzusub_closure
.data
	.align 8
.align 1
rzu1_closure:
	.quad	rzu1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAcz_str:
	.byte	36
	.byte	119
	.byte	116
	.byte	111
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	49
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAcC_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzu1_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAcz_str
	.quad	cAcC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
szxg_info:
.LcAd5:
	incq RET_UNBOXED_TUP_ctr
	movq 16(%rbp),%r14
	movq %rbx,%rsi
	movq 8(%rbp),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
	.size szxg_info, .-szxg_info
.text
	.align 8
	.long	rzu1_srt-(szxf_info)+16
	.long	0
	.quad	2
	.quad	4294967328
szxf_info:
.LcAd8:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movl $2,%esi
	movq $szxg_info,0(%rbp)
	jmp base_GHCziList_znznzusub_info
	.size szxf_info, .-szxf_info
.text
	.align 8
	.long	rzu1_srt-(szxe_info)+16
	.long	0
	.quad	1
	.quad	4294967328
szxe_info:
.LcAdb:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%r14
	movl $1,%esi
	movq $szxf_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_znznzusub_info
	.size szxe_info, .-szxe_info
.text
	.align 8
	.long	rzu1_srt-(szxb_info)+8
	.long	0
	.quad	0
	.quad	12884901920
szxb_info:
.LcAdg:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAdh
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcAdh:
	movq %rbx,0(%rbp)
	movq 6(%rbx),%rbx
	movq $szxe_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size szxb_info, .-szxb_info
.text
	.align 8
	.long	rzu1_srt-(sAca_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sAca_info:
.LcAdn:
	cmpq $3,%rbx
	jne .LcAdp
	movq 8(%rbp),%rbx
	movq $szxb_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne szxb_info
	jmp *(%rbx)
.LcAdp:
	movl $base_GHCziErr_undefined_closure,%ebx
	addq $16,%rbp
	jmp stg_ap_0_fast
	.size sAca_info, .-sAca_info
.text
	.align 8
	.long	rzu1_srt-(rzu1_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
rzu1_info:
.LcAdv:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAdx
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzu1_ct
	je .LcAdy
.LcAdz:
	incq rzu1_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	xorl %esi,%esi
	movq $sAca_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_GHCziList_zdwlen_info
.LcAdx:
	movl $rzu1_closure,%ebx
	jmp *-8(%r13)
.LcAdy:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzu1_ct+56
	movq $rzu1_ct,ticky_entry_ctrs
	movq $1,rzu1_ct
	jmp .LcAdz
	.size rzu1_info, .-rzu1_info
.data
	.align 8
.align 1
rzu2_closure:
	.quad	rzu2_info
.section .rodata
	.align 8
.align 1
cAe5_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	49
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	50
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAe7_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rzu2_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAe5_str
	.quad	cAe7_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sAdF_info:
.LcAeb:
	cmpq $0,31(%rbx)
	jle .LcAee
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAee:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sAdF_info, .-sAdF_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rzu2_info:
.LcAeh:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAej
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzu2_ct
	je .LcAek
.LcAel:
	incq rzu2_ct+40
	movq %r14,%rbx
	movq $sAdF_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAdF_info
	jmp *(%rbx)
.LcAej:
	movl $rzu2_closure,%ebx
	jmp *-8(%r13)
.LcAek:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzu2_ct+56
	movq $rzu2_ct,ticky_entry_ctrs
	movq $1,rzu2_ct
	jmp .LcAel
	.size rzu2_info, .-rzu2_info
.section .data
	.align 8
.align 1
rzu3_srt:
	.quad	rztO_closure
.data
	.align 8
.align 1
rzu3_closure:
	.quad	rzu3_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAez_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	49
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAeC_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rzu3_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAez_str
	.quad	cAeC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	17
sAes_info:
.LcAeN:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAeP
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_unpackChars_info
.LcAeP:
	jmp *-16(%r13)
	.size sAes_info, .-sAes_info
.text
	.align 8
	.long	rzu3_srt-(rzu3_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
rzu3_info:
.LcAeT:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcAeX
	addq $3,rzu3_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzu3_ct
	je .LcAeY
.LcAeZ:
	incq rzu3_ct+40
	movq $sAes_info,-16(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%r14
	jmp rztO_info
.LcAeX:
	movq $24,192(%r13)
.LcAeV:
	movl $rzu3_closure,%ebx
	jmp *-8(%r13)
.LcAeY:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzu3_ct+56
	movq $rzu3_ct,ticky_entry_ctrs
	movq $1,rzu3_ct
	jmp .LcAeZ
	.size rzu3_info, .-rzu3_info
.section .data
	.align 8
.align 1
rzu4_srt:
	.quad	base_GHCziErr_undefined_closure
	.quad	base_GHCziList_tail1_closure
	.quad	rzu1_closure
	.quad	rztO_closure
.data
	.align 8
.align 1
rzu4_closure:
	.quad	rzu4_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAh1_str:
	.byte	36
	.byte	119
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	86
	.byte	101
	.byte	99
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	66
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAh3_str:
	.byte	105
	.byte	77
	.byte	105
	.byte	105
	.byte	0
.data
	.align 8
.align 1
rzu4_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cAh1_str
	.quad	cAh3_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
rzu4_slow:
.LcAh6:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	addq $32,%rbp
	jmp rzu4_info
	.size rzu4_slow, .-rzu4_slow
.section .rodata
	.align 8
.align 1
cAh8_str:
	.byte	36
	.byte	119
	.byte	108
	.byte	111
	.byte	111
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	121
	.byte	97
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAha_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
szya_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAh8_str
	.quad	cAha_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901889
	.quad	16
szy0_info:
.LcAhj:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAhl
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAhn
	addq $2,szya_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq 32(%rbx),%rax
	movq 24(%rbx),%rcx
	addq (%rax),%rcx
	movq 40(%rbx),%rax
	subq %rcx,%rax
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $-16,%rbp
	jmp *0(%rbp)
.LcAhn:
	movq $16,192(%r13)
.LcAhl:
	jmp *-16(%r13)
	.size szy0_info, .-szy0_info
.text
	.align 8
	.quad	1
	.quad	32
sAfi_info:
.LcAhz:
	movq 7(%rbx),%rax
	leaq 1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	addq $16,%rbp
	jmp szya_info
	.size sAfi_info, .-sAfi_info
.text
	.align 8
	.quad	2
	.quad	19
sAf6_info:
.LcAhF:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAhH
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sAfi_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sAfi_info
	jmp *(%rbx)
.LcAhH:
	jmp *-16(%r13)
	.size sAf6_info, .-sAf6_info
.text
	.align 8
	.quad	900
	.quad	32
sAfj_info:
.LcAhR:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcAhX
	addq $5,szya_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq 7(%rbx),%rbx
	subq 16(%rbp),%rbx
	movq 24(%rbp),%rcx
	addq 16(%rbp),%rcx
	incq RET_NEW_ctr
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq %rcx,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcAhX:
	movq $40,192(%r13)
.LcAhV:
	jmp *-16(%r13)
	.size sAfj_info, .-sAfj_info
.text
	.align 8
	.quad	12884901890
	.quad	16
sAf7_info:
.LcAi6:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAi8
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sAfj_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sAfj_info
	jmp *(%rbx)
.LcAi8:
	jmp *-16(%r13)
	.size sAf7_info, .-sAf7_info
.text
	.align 8
	.quad	4294967300
	.quad	12884901889
	.quad	9
szya_info:
.LcAih:
	addq $160,%r12
	cmpq 144(%r13),%r12
	ja .LcAil
	addq $20,szya_ct+48
	incq ALLOC_HEAP_ctr
	addq $20,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szya_ct
	je .LcAim
.LcAin:
	incq szya_ct+40
	movq 31(%rbx),%rdx
	subq %r14,%rdx
	movq 23(%rbx),%rax
	addq %r14,%rax
	movq 15(%rbx),%rdi
	addq %rax,%rdi
	movl $32,%esi
	subq $8,%rsp
	movl $0,%eax
	call memchr
	addq $8,%rsp
	testq %rax,%rax
	je .LcAip
	movq $szy0_info,-152(%r12)
	movq 7(%rbx),%rcx
	movq %rcx,-136(%r12)
	movq 15(%rbx),%rcx
	movq %rcx,-128(%r12)
	movq 23(%rbx),%rcx
	movq %rcx,-120(%r12)
	movq %rax,-112(%r12)
	movq $sAf6_info,-104(%r12)
	leaq -152(%r12),%rax
	movq %rax,-88(%r12)
	movq %rbx,-80(%r12)
	movq $sAf7_info,-72(%r12)
	movq 7(%rbx),%rax
	movq %rax,-56(%r12)
	leaq -152(%r12),%rax
	movq %rax,-48(%r12)
	movq 15(%rbx),%rax
	movq %rax,-40(%r12)
	movq 23(%rbx),%rax
	movq %rax,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -72(%r12),%rax
	movq %rax,-8(%r12)
	leaq -104(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcAil:
	movq $160,192(%r13)
.LcAij:
	jmp *-8(%r13)
.LcAim:
	movq ticky_entry_ctrs,%rax
	movq %rax,szya_ct+56
	movq $szya_ct,ticky_entry_ctrs
	movq $1,szya_ct
	jmp .LcAin
.LcAip:
	movq 31(%rbx),%rax
	subq %r14,%rax
	movq 23(%rbx),%rcx
	addq %r14,%rcx
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-152(%r12)
	movq 7(%rbx),%rdx
	movq %rdx,-144(%r12)
	movq 15(%rbx),%rbx
	movq %rbx,-136(%r12)
	movq %rcx,-128(%r12)
	movq %rax,-120(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-96(%r12)
	leaq -110(%r12),%rbx
	addq $-96,%r12
	addq $-12,szya_ct+48
	incq ALLOC_HEAP_ctr
	addq $-12,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size szya_info, .-szya_info
.text
	.align 8
	.long	rzu4_srt-(sAfd_info)+16
	.long	0
	.quad	0
	.quad	4294967328
sAfd_info:
.LcAj3:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	addq $8,%rbp
	jmp rzu1_info
	.size sAfd_info, .-sAfd_info
.text
	.align 8
	.long	rzu4_srt-(sAfl_info)+0
	.long	0
	.quad	1
	.quad	55834574880
sAfl_info:
.LcAj6:
	cmpq $3,%rbx
	jne .LcAj8
	incq KNOWN_CALL_ctr
	movl $rzu3_closure+1,%r14d
	movq 8(%rbp),%rsi
	movq $sAfd_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziBase_map_info
.LcAj8:
	movl $base_GHCziErr_undefined_closure,%ebx
	addq $16,%rbp
	jmp stg_ap_0_fast
	.size sAfl_info, .-sAfl_info
.text
	.align 8
	.long	rzu4_srt-(sAfk_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sAfk_info:
.LcAjd:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAje
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAje:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%r14
	xorl %esi,%esi
	movq $sAfl_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_zdwlen_info
	.size sAfk_info, .-sAfk_info
.text
	.align 8
	.long	rzu4_srt-(sAfa_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sAfa_info:
.LcAjm:
	incq KNOWN_CALL_ctr
	movl $rzu2_closure+1,%r14d
	movq %rbx,%rsi
	movq $sAfk_info,0(%rbp)
	jmp base_GHCziList_filter_info
	.size sAfa_info, .-sAfa_info
.text
	.align 8
	.long	rzu4_slow-(rzu4_info)+0
	.long	0
	.quad	836
	.long	rzu4_srt-(rzu4_info)+0
	.long	0
	.quad	17179869184
	.quad	0
	.quad	64424509455
rzu4_info:
.LcAjp:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAjr
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcAjt
	addq $5,rzu4_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzu4_ct
	je .LcAju
.LcAjv:
	incq rzu4_ct+40
	movq %r8,%rax
	testq %r8,%r8
	jne .LcAjx
	movl $base_GHCziList_tail1_closure,%ebx
	addq $-40,%r12
	addq $-5,rzu4_ct+48
	incq ALLOC_HEAP_ctr
	addq $-5,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
.LcAjt:
	movq $40,192(%r13)
.LcAjr:
	movl $rzu4_closure,%ebx
	addq $-32,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	jmp *-8(%r13)
.LcAju:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzu4_ct+56
	movq $rzu4_ct,ticky_entry_ctrs
	movq $1,rzu4_ct
	jmp .LcAjv
.LcAjx:
	movq $szya_info,-32(%r12)
	movq %rsi,-24(%r12)
	movq %r14,-16(%r12)
	movq %rdi,-8(%r12)
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	xorl %r14d,%r14d
	movq $sAfa_info,-8(%rbp)
	addq $-8,%rbp
	jmp szya_info
	.size rzu4_info, .-rzu4_info
.data
	.align 8
.align 1
rzu5_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rztX_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rzu6_closure:
	.quad	rzu6_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
rzu6_info:
.LcAjP:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAjR
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAjT
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
	je .LcAjU
.LcAjV:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzu5_closure+2,%esi
	addq $-16,%rbp
	jmp splitzm0zi2zi2_DataziListziSplitziInternals_splitOn_info
.LcAjT:
	movq $16,192(%r13)
.LcAjR:
	jmp *-16(%r13)
.LcAjU:
	jmp *(%rbx)
	.size rzu6_info, .-rzu6_info
.section .data
	.align 8
.align 1
rzu7_srt:
	.quad	base_GHCziErr_undefined_closure
	.quad	base_GHCziList_tail1_closure
	.quad	rztO_closure
	.quad	rzu1_closure
	.quad	rzu6_closure
.data
	.align 8
.align 1
rzu7_closure:
	.quad	rzu7_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAkq_str:
	.byte	36
	.byte	119
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	86
	.byte	101
	.byte	99
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	55
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAkt_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzu7_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAkq_str
	.quad	cAkt_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzu7_srt-(sAk5_info)+24
	.long	0
	.quad	0
	.quad	4294967328
sAk5_info:
.LcAkS:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	addq $8,%rbp
	jmp rzu1_info
	.size sAk5_info, .-sAk5_info
.text
	.align 8
	.long	rzu7_srt-(sAk3_info)+0
	.long	0
	.quad	1
	.quad	55834574880
sAk3_info:
.LcAkV:
	cmpq $3,%rbx
	jne .LcAkX
	incq KNOWN_CALL_ctr
	movl $rztO_closure+1,%r14d
	movq 8(%rbp),%rsi
	movq $sAk5_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziBase_map_info
.LcAkX:
	movl $base_GHCziErr_undefined_closure,%ebx
	addq $16,%rbp
	jmp stg_ap_0_fast
	.size sAk3_info, .-sAk3_info
.text
	.align 8
	.long	rzu7_srt-(sAk2_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sAk2_info:
.LcAl2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAl3
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAl3:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%r14
	xorl %esi,%esi
	movq $sAk3_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziList_zdwlen_info
	.size sAk2_info, .-sAk2_info
.text
	.align 8
	.long	rzu7_srt-(sAk1_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sAk1_info:
.LcAlb:
	incq KNOWN_CALL_ctr
	movl $rztW_closure+1,%r14d
	movq %rbx,%rsi
	movq $sAk2_info,0(%rbp)
	jmp base_GHCziList_filter_info
	.size sAk1_info, .-sAk1_info
.text
	.align 8
	.long	rzu7_srt-(rzu7_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	133143986191
rzu7_info:
.LcAle:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAlg
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzu7_ct
	je .LcAlh
.LcAli:
	incq rzu7_ct+40
	incq UNKNOWN_CALL_ctr
	movl $rzu6_closure,%ebx
	movq $sAk1_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
.LcAlg:
	movl $rzu7_closure,%ebx
	jmp *-8(%r13)
.LcAlh:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzu7_ct+56
	movq $rzu7_ct,ticky_entry_ctrs
	movq $1,rzu7_ct
	jmp .LcAli
	.size rzu7_info, .-rzu7_info
.section .data
	.align 8
.align 1
rx8G_srt:
	.quad	rzu7_closure
.data
	.align 8
.align 1
rx8G_closure:
	.quad	rx8G_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAlt_str:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	86
	.byte	101
	.byte	99
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	120
	.byte	56
	.byte	71
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAlw_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rx8G_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAlt_str
	.quad	cAlw_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sAlm_info:
.LcAlG:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcAlL
	addq $4,rx8G_ct+48
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
.LcAlL:
	movq $32,192(%r13)
.LcAlJ:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sAlm_info, .-sAlm_info
.text
	.align 8
	.long	rx8G_srt-(rx8G_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
rx8G_info:
.LcAlO:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAlQ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rx8G_ct
	je .LcAlR
.LcAlS:
	incq rx8G_ct+40
	incq KNOWN_CALL_ctr
	movq $sAlm_info,-8(%rbp)
	addq $-8,%rbp
	jmp rzu7_info
.LcAlQ:
	movl $rx8G_closure,%ebx
	jmp *-8(%r13)
.LcAlR:
	movq ticky_entry_ctrs,%rax
	movq %rax,rx8G_ct+56
	movq $rx8G_ct,ticky_entry_ctrs
	movq $1,rx8G_ct
	jmp .LcAlS
	.size rx8G_info, .-rx8G_info
.data
	.align 8
.align 1
rzu8_closure:
	.quad	rzu8_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAm5_str:
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	116
	.byte	111
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	85
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	66
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
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	97
	.byte	105
	.byte	110
	.byte	115
	.byte	32
	.byte	108
	.byte	101
	.byte	115
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	97
	.byte	110
	.byte	32
	.byte	51
	.byte	32
	.byte	66
	.byte	121
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	114
	.byte	105
	.byte	110
	.byte	103
	.byte	115
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzu8_info:
.LcAm9:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAmb
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAmd
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
	je .LcAme
.LcAmf:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAm5_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAmd:
	movq $16,192(%r13)
.LcAmb:
	jmp *-16(%r13)
.LcAme:
	jmp *(%rbx)
	.size rzu8_info, .-rzu8_info
.section .data
	.align 8
.align 1
rzu9_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rzu8_closure
.data
	.align 8
.align 1
rzu9_closure:
	.quad	rzu9_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzu9_srt-(rzu9_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rzu9_info:
.LcAmw:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAmy
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAmA
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
	je .LcAmB
.LcAmC:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzu8_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcAmA:
	movq $16,192(%r13)
.LcAmy:
	jmp *-16(%r13)
.LcAmB:
	jmp *(%rbx)
	.size rzu9_info, .-rzu9_info
.section .data
	.align 8
.align 1
rzua_srt:
	.quad	base_GHCziErr_error_closure
	.quad	base_ForeignziCziTypes_zdfReadCUInt2_closure
	.quad	base_TextziRead_zdwreadEither_closure
.data
	.align 8
.align 1
rzua_closure:
	.quad	rzua_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAna_str:
	.byte	36
	.byte	119
	.byte	36
	.byte	115
	.byte	103
	.byte	101
	.byte	116
	.byte	77
	.byte	97
	.byte	121
	.byte	98
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	97
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAnc_str:
	.byte	105
	.byte	77
	.byte	105
	.byte	105
	.byte	0
.data
	.align 8
.align 1
rzua_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cAna_str
	.quad	cAnc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
rzua_slow:
.LcAnf:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	addq $32,%rbp
	jmp rzua_info
	.size rzua_slow, .-rzua_slow
.text
	.align 8
	.quad	12884901889
	.quad	16
sAmI_info:
.LcAnp:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAnr
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r9d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_zdwunpackAppendCharsLazzy_info
.LcAnr:
	jmp *-16(%r13)
	.size sAmI_info, .-sAmI_info
.text
	.align 8
	.long	rzua_srt-(sAmL_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sAmL_info:
.LcAnz:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAnA
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziErr_error_info
.LcAnA:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sAmL_info, .-sAmL_info
.text
	.align 8
	.long	rzua_srt-(sAmJ_info)+0
	.long	0
	.quad	12884901889
	.quad	30064771088
sAmJ_info:
.LcAnI:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAnK
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcAnM
	addq $6,rzua_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sAmI_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfReadCUInt2_closure+2,%r14d
	leaq -40(%r12),%rsi
	movq $sAmL_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_TextziRead_zdwreadEither_info
.LcAnM:
	movq $48,192(%r13)
.LcAnK:
	jmp *-16(%r13)
	.size sAmJ_info, .-sAmJ_info
.text
	.align 8
	.long	rzua_slow-(rzua_info)+0
	.long	0
	.quad	836
	.long	rzua_srt-(rzua_info)+0
	.long	0
	.quad	17179869184
	.quad	0
	.quad	30064771087
rzua_info:
.LcAnU:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcAnY
	addq $8,rzua_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzua_ct
	je .LcAnZ
.LcAo0:
	incq rzua_ct+40
	testq %r8,%r8
	jle .LcAo2
	movq $sAmJ_info,-56(%r12)
	movq %rsi,-40(%r12)
	movq %r8,-32(%r12)
	movq %r14,-24(%r12)
	movq %rdi,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -56(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	jmp *0(%rbp)
.LcAnY:
	movq $64,192(%r13)
.LcAnW:
	movl $rzua_closure,%ebx
	addq $-32,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	jmp *-8(%r13)
.LcAnZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzua_ct+56
	movq $rzua_ct,ticky_entry_ctrs
	movq $1,rzua_ct
	jmp .LcAo0
.LcAo2:
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $-64,%r12
	addq $-8,rzua_ct+48
	incq ALLOC_HEAP_ctr
	addq $-8,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size rzua_info, .-rzua_info
.section .data
	.align 8
.align 1
rzub_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	rzu9_closure
	.quad	rzua_closure
	.quad	rzub_closure
.data
	.align 8
.align 1
rzub_closure:
	.quad	rzub_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAqr_str:
	.byte	103
	.byte	111
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	98
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAqt_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzub_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAqr_str
	.quad	cAqt_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzub_srt-(sAog_info)+24
	.long	0
	.quad	1
	.quad	4294967313
sAog_info:
.LcAqz:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAqB
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp rzub_info
.LcAqB:
	jmp *-16(%r13)
	.size sAog_info, .-sAog_info
.section .rodata
	.align 8
.align 1
cAqE_str:
	.byte	36
	.byte	115
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	122
	.byte	65
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAqG_str:
	.byte	105
	.byte	105
	.byte	65
	.byte	105
	.byte	105
	.byte	105
	.byte	77
	.byte	0
.data
	.align 8
.align 1
szzA_ct:
	.quad	0
	.quad	7
	.quad	1
	.quad	cAqE_str
	.quad	cAqG_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
szzA_slow:
.LcAqJ:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp szzA_info
	.size szzA_slow, .-szzA_slow
.text
	.align 8
	.quad	1
	.quad	32
sAon_info:
.LcAr7:
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sAon_info, .-sAon_info
.text
	.align 8
	.quad	21474836483
	.quad	16
szzV_info:
.LcArb:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcArd
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 40(%rbx),%rax
	incq %rax
	movq 56(%rbx),%r8
	addq %rax,%r8
	leaq 40(%rbx),%rax
	movq 48(%rbx),%rcx
	subq (%rax),%rcx
	leaq -1(%rcx),%rsi
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-40(%rbp)
	xorl %r14d,%r14d
	movq 72(%rbx),%rdi
	movq 64(%rbx),%r9
	movq 16(%rbx),%rbx
	movq $sAon_info,-32(%rbp)
	addq $-40,%rbp
	jmp szzA_info
.LcArd:
	jmp *-16(%r13)
	.size szzV_info, .-szzV_info
.text
	.align 8
	.long	szzA_slow-(szzA_info)+0
	.long	0
	.quad	1990
	.quad	0
	.quad	30064771072
	.quad	4294967297
	.quad	13
szzA_info:
.LcArp:
	addq $144,%r12
	cmpq 144(%r13),%r12
	ja .LcArt
	addq $18,szzA_ct+48
	incq ALLOC_HEAP_ctr
	addq $18,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szzA_ct
	je .LcAru
.LcArv:
	incq szzA_ct+40
	cmpq %rsi,%r14
	jge .LcArx
	movq %r8,%rax
	addq %r14,%rax
	movzbl (%rdi,%rax,1),%eax
	cmpq $47,%rax
	jne .LcArz
	movq $szzV_info,-136(%r12)
	movq %rbx,-120(%r12)
	movq 0(%rbp),%rax
	movq %rax,-112(%r12)
	movq 1(%rbx),%rax
	movq %rax,-104(%r12)
	movq %r14,-96(%r12)
	movq %rsi,-88(%r12)
	movq %r8,-80(%r12)
	movq %r9,-72(%r12)
	movq 9(%rbx),%rax
	movq %rax,-64(%r12)
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-56(%r12)
	movq 0(%rbp),%rax
	movq %rax,-48(%r12)
	movq %r9,-40(%r12)
	movq %r8,-32(%r12)
	movq %r14,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -136(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcArt:
	movq $144,192(%r13)
.LcArr:
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcAru:
	movq ticky_entry_ctrs,%rax
	movq %rax,szzA_ct+56
	movq $szzA_ct,ticky_entry_ctrs
	movq $1,szzA_ct
	jmp .LcArv
.LcArx:
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-136(%r12)
	movq 0(%rbp),%rax
	movq %rax,-128(%r12)
	movq %r9,-120(%r12)
	movq %r8,-112(%r12)
	movq %r14,-104(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-96(%r12)
	leaq -135(%r12),%rax
	movq %rax,-88(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-80(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -94(%r12),%rbx
	addq $8,%rbp
	addq $-80,%r12
	addq $-10,szzA_ct+48
	incq ALLOC_HEAP_ctr
	addq $-10,ALLOC_HEAP_tot
	jmp *0(%rbp)
.LcArz:
	incq KNOWN_CALL_ctr
	incq %r14
	addq $-144,%r12
	addq $-18,szzA_ct+48
	incq ALLOC_HEAP_ctr
	addq $-18,ALLOC_HEAP_tot
	jmp szzA_info
	.size szzA_info, .-szzA_info
.text
	.align 8
	.quad	2
	.quad	32
szAU_info:
.LcAss:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcAsy
	addq $4,rzub_ct+48
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
.LcAsy:
	movq $32,192(%r13)
.LcAsw:
	jmp *-16(%r13)
	.size szAU_info, .-szAU_info
.text
	.align 8
	.long	rzub_srt-(sAov_info)+16
	.long	0
	.quad	2
	.quad	4294967328
sAov_info:
.LcAsD:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%r14
	movq 7(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	movq $szAU_info,0(%rbp)
	jmp rzua_info
	.size sAov_info, .-sAov_info
.text
	.align 8
	.long	rzub_srt-(sAos_info)+0
	.long	0
	.quad	2
	.quad	21474836512
sAos_info:
.LcAsI:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAsJ
	movl $base_GHCziList_badHead_closure,%ebx
	addq $24,%rbp
	jmp stg_ap_0_fast
.LcAsJ:
	movq 6(%rbx),%rbx
	movq $sAov_info,0(%rbp)
	testq $7,%rbx
	jne sAov_info
	jmp *(%rbx)
	.size sAos_info, .-sAos_info
.text
	.align 8
	.long	rzub_srt-(szAT_info)+0
	.long	0
	.quad	2
	.quad	21474836512
szAT_info:
.LcAsS:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sAos_info,0(%rbp)
	testq $7,%rbx
	jne sAos_info
	jmp *(%rbx)
	.size szAT_info, .-szAT_info
.text
	.align 8
	.long	rzub_srt-(sAot_info)+0
	.long	0
	.quad	2
	.quad	21474836512
sAot_info:
.LcAt0:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%r14
	movq 7(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	movq $szAT_info,0(%rbp)
	jmp rzua_info
	.size sAot_info, .-sAot_info
.text
	.align 8
	.long	rzub_srt-(szAS_info)+0
	.long	0
	.quad	2
	.quad	21474836512
szAS_info:
.LcAt3:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sAot_info,0(%rbp)
	testq $7,%rbx
	jne sAot_info
	jmp *(%rbx)
	.size szAS_info, .-szAS_info
.text
	.align 8
	.long	rzub_srt-(sAou_info)+0
	.long	0
	.quad	2
	.quad	21474836512
sAou_info:
.LcAtb:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%r14
	movq 7(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	movq $szAS_info,0(%rbp)
	jmp rzua_info
	.size sAou_info, .-sAou_info
.text
	.align 8
	.long	rzub_srt-(sAor_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sAor_info:
.LcAtg:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAth
	movl $rzu9_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAth:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sAou_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAou_info
	jmp *(%rbx)
	.size sAor_info, .-sAor_info
.text
	.align 8
	.long	rzub_srt-(sAoo_info)+0
	.long	0
	.quad	0
	.quad	30064771104
sAoo_info:
.LcAtx:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAty
	movl $rzu9_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAty:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sAor_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAor_info
	jmp *(%rbx)
	.size sAoo_info, .-sAoo_info
.text
	.align 8
	.long	rzub_srt-(sAoq_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sAoq_info:
.LcAtJ:
	movq $sAoo_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sAoo_info
	jmp *(%rbx)
	.size sAoq_info, .-sAoq_info
.text
	.align 8
	.long	rzub_srt-(sAol_info)+0
	.long	0
	.quad	0
	.quad	30064771104
sAol_info:
.LcAtP:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcAtT
	addq $3,rzub_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq 31(%rbx),%rsi
	testq %rsi,%rsi
	jne .LcAtV
	movl $rzu9_closure,%ebx
	addq $8,%rbp
	addq $-24,%r12
	addq $-3,rzub_ct+48
	incq ALLOC_HEAP_ctr
	addq $-3,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
.LcAtT:
	movq $24,192(%r13)
.LcAtR:
	jmp *-16(%r13)
.LcAtV:
	movq $szzA_info,-16(%r12)
	movq 7(%rbx),%rax
	movq %rax,-8(%r12)
	movq 15(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	xorl %r14d,%r14d
	movq 15(%rbx),%rdi
	movq 23(%rbx),%r8
	movq 15(%rbx),%r9
	leaq -9(%r12),%rbx
	movq $sAoq_info,-8(%rbp)
	addq $-16,%rbp
	jmp szzA_info
	.size sAol_info, .-sAol_info
.text
	.align 8
	.long	rzub_srt-(sAoh_info)+0
	.long	0
	.quad	1
	.quad	30064771089
sAoh_info:
.LcAu5:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAu7
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sAol_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sAol_info
	jmp *(%rbx)
.LcAu7:
	jmp *-16(%r13)
	.size sAoh_info, .-sAoh_info
.text
	.align 8
	.long	rzub_srt-(sAo7_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sAo7_info:
.LcAue:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAuf
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAuf:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcAuj
	addq $9,rzub_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $sAog_info,-64(%r12)
	movq 14(%rbx),%rax
	movq %rax,-48(%r12)
	movq $sAoh_info,-40(%r12)
	movq 6(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	leaq -64(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAuj:
	movq $72,192(%r13)
.LcAuh:
	jmp *-16(%r13)
	.size sAo7_info, .-sAo7_info
.text
	.align 8
	.long	rzub_srt-(rzub_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	64424509455
rzub_info:
.LcAut:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAuv
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzub_ct
	je .LcAuw
.LcAux:
	incq rzub_ct+40
	movq %r14,%rbx
	movq $sAo7_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAo7_info
	jmp *(%rbx)
.LcAuv:
	movl $rzub_closure,%ebx
	jmp *-8(%r13)
.LcAuw:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzub_ct+56
	movq $rzub_ct,ticky_entry_ctrs
	movq $1,rzub_ct
	jmp .LcAux
	.size rzub_info, .-rzub_info
.data
	.align 8
.align 1
rzuc_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	1
.data
	.align 8
.align 1
rzud_closure:
	.quad	rzud_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAuQ_str:
	.byte	102
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzud_info:
.LcAuU:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAuW
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAuY
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
	je .LcAuZ
.LcAv0:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAuQ_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAuY:
	movq $16,192(%r13)
.LcAuW:
	jmp *-16(%r13)
.LcAuZ:
	jmp *(%rbx)
	.size rzud_info, .-rzud_info
.section .data
	.align 8
.align 1
rzue_srt:
	.quad	bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_closure
	.quad	rzud_closure
.data
	.align 8
.align 1
rzue_closure:
	.quad	rzue_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzue_srt-(rzue_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rzue_info:
.LcAvh:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAvj
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAvl
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
	je .LcAvm
.LcAvn:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzud_closure,%r14d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_info
.LcAvl:
	movq $16,192(%r13)
.LcAvj:
	jmp *-16(%r13)
.LcAvm:
	jmp *(%rbx)
	.size rzue_info, .-rzue_info
.data
	.align 8
.align 1
rzuf_closure:
	.quad	rzuf_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAvC_str:
	.byte	118
	.byte	116
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzuf_info:
.LcAvG:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAvI
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAvK
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
	je .LcAvL
.LcAvM:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAvC_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAvK:
	movq $16,192(%r13)
.LcAvI:
	jmp *-16(%r13)
.LcAvL:
	jmp *(%rbx)
	.size rzuf_info, .-rzuf_info
.section .data
	.align 8
.align 1
rzug_srt:
	.quad	bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_closure
	.quad	rzuf_closure
.data
	.align 8
.align 1
rzug_closure:
	.quad	rzug_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzug_srt-(rzug_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rzug_info:
.LcAw3:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAw5
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAw7
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
	je .LcAw8
.LcAw9:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzuf_closure,%r14d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_info
.LcAw7:
	movq $16,192(%r13)
.LcAw5:
	jmp *-16(%r13)
.LcAw8:
	jmp *(%rbx)
	.size rzug_info, .-rzug_info
.data
	.align 8
.align 1
rzuh_closure:
	.quad	rzuh_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAwo_str:
	.byte	118
	.byte	110
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzuh_info:
.LcAws:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAwu
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAww
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
	je .LcAwx
.LcAwy:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAwo_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAww:
	movq $16,192(%r13)
.LcAwu:
	jmp *-16(%r13)
.LcAwx:
	jmp *(%rbx)
	.size rzuh_info, .-rzuh_info
.section .data
	.align 8
.align 1
rzui_srt:
	.quad	bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_closure
	.quad	rzuh_closure
.data
	.align 8
.align 1
rzui_closure:
	.quad	rzui_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzui_srt-(rzui_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rzui_info:
.LcAwP:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAwR
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAwT
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
	je .LcAwU
.LcAwV:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzuh_closure,%r14d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_info
.LcAwT:
	movq $16,192(%r13)
.LcAwR:
	jmp *-16(%r13)
.LcAwU:
	jmp *(%rbx)
	.size rzui_info, .-rzui_info
.data
	.align 8
.align 1
rzuj_closure:
	.quad	rzuj_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAxa_str:
	.byte	118
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzuj_info:
.LcAxe:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAxg
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAxi
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
	je .LcAxj
.LcAxk:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAxa_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAxi:
	movq $16,192(%r13)
.LcAxg:
	jmp *-16(%r13)
.LcAxj:
	jmp *(%rbx)
	.size rzuj_info, .-rzuj_info
.section .data
	.align 8
.align 1
rzuk_srt:
	.quad	bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_closure
	.quad	rzuj_closure
.data
	.align 8
.align 1
rzuk_closure:
	.quad	rzuk_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzuk_srt-(rzuk_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rzuk_info:
.LcAxB:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAxD
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAxF
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
	je .LcAxG
.LcAxH:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzuj_closure,%r14d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_packChars_info
.LcAxF:
	movq $16,192(%r13)
.LcAxD:
	jmp *-16(%r13)
.LcAxG:
	jmp *(%rbx)
	.size rzuk_info, .-rzuk_info
.data
	.align 8
.align 1
rzul_closure:
	.quad	ghczmprim_GHCziTuple_Z4T_static_info
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rzum_closure:
	.quad	rzum_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAxZ_str:
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	116
	.byte	111
	.byte	86
	.byte	101
	.byte	99
	.byte	51
	.byte	85
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
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
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	97
	.byte	105
	.byte	110
	.byte	115
	.byte	32
	.byte	108
	.byte	101
	.byte	115
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	97
	.byte	110
	.byte	32
	.byte	51
	.byte	32
	.byte	83
	.byte	116
	.byte	114
	.byte	105
	.byte	110
	.byte	103
	.byte	115
	.byte	46
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzum_info:
.LcAy3:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAy5
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAy7
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
	je .LcAy8
.LcAy9:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAxZ_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAy7:
	movq $16,192(%r13)
.LcAy5:
	jmp *-16(%r13)
.LcAy8:
	jmp *(%rbx)
	.size rzum_info, .-rzum_info
.section .data
	.align 8
.align 1
rzun_srt:
	.quad	base_GHCziErr_error_closure
	.quad	rzum_closure
.data
	.align 8
.align 1
rzun_closure:
	.quad	rzun_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzun_srt-(rzun_info)+0
	.long	0
	.quad	0
	.quad	12884901910
rzun_info:
.LcAyq:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAys
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAyu
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
	je .LcAyv
.LcAyw:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzum_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.LcAyu:
	movq $16,192(%r13)
.LcAys:
	jmp *-16(%r13)
.LcAyv:
	jmp *(%rbx)
	.size rzun_info, .-rzun_info
.section .data
	.align 8
.align 1
rzuo_srt:
	.quad	base_GHCziErr_error_closure
	.quad	base_ForeignziCziTypes_zdfReadCUInt2_closure
	.quad	base_TextziRead_zdwreadEither_closure
.data
	.align 8
.align 1
rzuo_closure:
	.quad	rzuo_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAyV_str:
	.byte	36
	.byte	115
	.byte	103
	.byte	101
	.byte	116
	.byte	77
	.byte	97
	.byte	121
	.byte	98
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	111
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAyY_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzuo_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAyV_str
	.quad	cAyY_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzuo_srt-(sAyD_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sAyD_info:
.LcAzh:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAzi
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziErr_error_info
.LcAzi:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sAyD_info, .-sAyD_info
.text
	.align 8
	.long	rzuo_srt-(sAyC_info)+0
	.long	0
	.quad	1
	.quad	30064771089
sAyC_info:
.LcAzq:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAzs
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfReadCUInt2_closure+2,%r14d
	movq 16(%rbx),%rsi
	movq $sAyD_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_TextziRead_zdwreadEither_info
.LcAzs:
	jmp *-16(%r13)
	.size sAyC_info, .-sAyC_info
.text
	.align 8
	.long	rzuo_srt-(szB3_info)+0
	.long	0
	.quad	0
	.quad	30064771104
szB3_info:
.LcAzy:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAzz
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAzz:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcAzD
	addq $5,rzuo_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sAyC_info,-32(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAzD:
	movq $40,192(%r13)
.LcAzB:
	jmp *-16(%r13)
	.size szB3_info, .-szB3_info
.text
	.align 8
	.long	rzuo_srt-(rzuo_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	30064771087
rzuo_info:
.LcAzK:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAzM
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuo_ct
	je .LcAzN
.LcAzO:
	incq rzuo_ct+40
	movq %r14,%rbx
	movq $szB3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne szB3_info
	jmp *(%rbx)
.LcAzM:
	movl $rzuo_closure,%ebx
	jmp *-8(%r13)
.LcAzN:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuo_ct+56
	movq $rzuo_ct,ticky_entry_ctrs
	movq $1,rzuo_ct
	jmp .LcAzO
	.size rzuo_info, .-rzuo_info
.data
	.align 8
.align 1
rzup_closure:
	.quad	ghczmprim_GHCziTypes_Czh_static_info
	.quad	47
.data
	.align 8
.align 1
rzuq_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzup_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObj5_srt:
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	EngineziModelziModelLoader_loadObj5_closure
	.quad	rzu7_closure
	.quad	rzuj_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj5_closure
.type EngineziModelziModelLoader_loadObj5_closure, @object
EngineziModelziModelLoader_loadObj5_closure:
	.quad	EngineziModelziModelLoader_loadObj5_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAAr_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	53
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	99
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cAAu_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj5_ct
.type EngineziModelziModelLoader_loadObj5_ct, @object
EngineziModelziModelLoader_loadObj5_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cAAr_str
	.quad	cAAu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj5_srt-(szBw_info)+32
	.long	0
	.quad	1
	.quad	4294967313
szBw_info:
.LcAAX:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAAZ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp rx8G_info
.LcAAZ:
	jmp *-16(%r13)
	.size szBw_info, .-szBw_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj5_srt-(sAA5_info)+32
	.long	0
	.quad	130
	.quad	4294967328
sAA5_info:
.LcAB3:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcAB7
	addq $6,EngineziModelziModelLoader_loadObj5_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $szBw_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcAB7:
	movq $48,192(%r13)
.LcAB5:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sAA5_info, .-sAA5_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj5_srt-(sAA0_info)+24
	.long	0
	.quad	2
	.quad	12884901920
sAA0_info:
.LcABe:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcABf
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp EngineziModelziModelLoader_loadObj5_info
.LcABf:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sAA5_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj5_info
	.size sAA0_info, .-sAA0_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj5_srt-(sAA1_info)+24
	.long	0
	.quad	1
	.quad	30064771104
sAA1_info:
.LcABl:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzuj_closure,%esi
	movq %rbx,%rdi
	movq $sAA0_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sAA1_info, .-sAA1_info
.text
	.align 8
	.quad	0
	.quad	32
sAA6_info:
.LcABs:
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sAA6_info, .-sAA6_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj5_srt-(sAA2_info)+0
	.long	0
	.quad	1
	.quad	253403070496
sAA2_info:
.LcABx:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcABy
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sAA1_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.LcABy:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sAA6_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziIOziHandle_hClose1_info
	.size sAA2_info, .-sAA2_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj5_srt-(sAA3_info)+0
	.long	0
	.quad	1
	.quad	253403070496
sAA3_info:
.LcABE:
	movq $sAA2_info,0(%rbp)
	testq $7,%rbx
	jne sAA2_info
	jmp *(%rbx)
	.size sAA3_info, .-sAA3_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj5_srt-(EngineziModelziModelLoader_loadObj5_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	270582939663
.globl EngineziModelziModelLoader_loadObj5_info
.type EngineziModelziModelLoader_loadObj5_info, @object
EngineziModelziModelLoader_loadObj5_info:
.LcABK:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcABM
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObj5_ct
	je .LcABN
.LcABO:
	incq EngineziModelziModelLoader_loadObj5_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq $sAA3_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.LcABM:
	movl $EngineziModelziModelLoader_loadObj5_closure,%ebx
	jmp *-8(%r13)
.LcABN:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObj5_ct+56
	movq $EngineziModelziModelLoader_loadObj5_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObj5_ct
	jmp .LcABO
	.size EngineziModelziModelLoader_loadObj5_info, .-EngineziModelziModelLoader_loadObj5_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObj3_srt:
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	EngineziModelziModelLoader_loadObj3_closure
	.quad	rzu0_closure
	.quad	rzuf_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj3_closure
.type EngineziModelziModelLoader_loadObj3_closure, @object
EngineziModelziModelLoader_loadObj3_closure:
	.quad	EngineziModelziModelLoader_loadObj3_info
	.quad	0
.section .rodata
	.align 8
.align 1
cACi_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	97
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cACl_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj3_ct
.type EngineziModelziModelLoader_loadObj3_ct, @object
EngineziModelziModelLoader_loadObj3_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cACi_str
	.quad	cACl_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj3_srt-(szBY_info)+32
	.long	0
	.quad	1
	.quad	4294967313
szBY_info:
.LcACO:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcACQ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp rx8H_info
.LcACQ:
	jmp *-16(%r13)
	.size szBY_info, .-szBY_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj3_srt-(sABY_info)+32
	.long	0
	.quad	130
	.quad	4294967328
sABY_info:
.LcACU:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcACY
	addq $6,EngineziModelziModelLoader_loadObj3_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $szBY_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcACY:
	movq $48,192(%r13)
.LcACW:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sABY_info, .-sABY_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj3_srt-(sABT_info)+24
	.long	0
	.quad	2
	.quad	12884901920
sABT_info:
.LcAD5:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcAD6
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp EngineziModelziModelLoader_loadObj3_info
.LcAD6:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sABY_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj3_info
	.size sABT_info, .-sABT_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj3_srt-(sABU_info)+24
	.long	0
	.quad	1
	.quad	30064771104
sABU_info:
.LcADc:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzuf_closure,%esi
	movq %rbx,%rdi
	movq $sABT_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sABU_info, .-sABU_info
.text
	.align 8
	.quad	0
	.quad	32
sABZ_info:
.LcADj:
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sABZ_info, .-sABZ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj3_srt-(sABV_info)+0
	.long	0
	.quad	1
	.quad	253403070496
sABV_info:
.LcADo:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcADp
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sABU_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.LcADp:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sABZ_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziIOziHandle_hClose1_info
	.size sABV_info, .-sABV_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj3_srt-(sABW_info)+0
	.long	0
	.quad	1
	.quad	253403070496
sABW_info:
.LcADv:
	movq $sABV_info,0(%rbp)
	testq $7,%rbx
	jne sABV_info
	jmp *(%rbx)
	.size sABW_info, .-sABW_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj3_srt-(EngineziModelziModelLoader_loadObj3_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	270582939663
.globl EngineziModelziModelLoader_loadObj3_info
.type EngineziModelziModelLoader_loadObj3_info, @object
EngineziModelziModelLoader_loadObj3_info:
.LcADB:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcADD
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObj3_ct
	je .LcADE
.LcADF:
	incq EngineziModelziModelLoader_loadObj3_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq $sABW_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.LcADD:
	movl $EngineziModelziModelLoader_loadObj3_closure,%ebx
	jmp *-8(%r13)
.LcADE:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObj3_ct+56
	movq $EngineziModelziModelLoader_loadObj3_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObj3_ct
	jmp .LcADF
	.size EngineziModelziModelLoader_loadObj3_info, .-EngineziModelziModelLoader_loadObj3_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObj4_srt:
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	EngineziModelziModelLoader_loadObj4_closure
	.quad	rzu7_closure
	.quad	rzuh_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj4_closure
.type EngineziModelziModelLoader_loadObj4_closure, @object
EngineziModelziModelLoader_loadObj4_closure:
	.quad	EngineziModelziModelLoader_loadObj4_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAE9_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	98
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cAEc_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj4_ct
.type EngineziModelziModelLoader_loadObj4_ct, @object
EngineziModelziModelLoader_loadObj4_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cAE9_str
	.quad	cAEc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj4_srt-(szCq_info)+32
	.long	0
	.quad	1
	.quad	4294967313
szCq_info:
.LcAEF:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAEH
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp rx8G_info
.LcAEH:
	jmp *-16(%r13)
	.size szCq_info, .-szCq_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj4_srt-(sADP_info)+32
	.long	0
	.quad	130
	.quad	4294967328
sADP_info:
.LcAEL:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcAEP
	addq $6,EngineziModelziModelLoader_loadObj4_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $szCq_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcAEP:
	movq $48,192(%r13)
.LcAEN:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sADP_info, .-sADP_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj4_srt-(sADK_info)+24
	.long	0
	.quad	2
	.quad	12884901920
sADK_info:
.LcAEW:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcAEX
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp EngineziModelziModelLoader_loadObj4_info
.LcAEX:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sADP_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj4_info
	.size sADK_info, .-sADK_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj4_srt-(sADL_info)+24
	.long	0
	.quad	1
	.quad	30064771104
sADL_info:
.LcAF3:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzuh_closure,%esi
	movq %rbx,%rdi
	movq $sADK_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sADL_info, .-sADL_info
.text
	.align 8
	.quad	0
	.quad	32
sADQ_info:
.LcAFa:
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sADQ_info, .-sADQ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj4_srt-(sADM_info)+0
	.long	0
	.quad	1
	.quad	253403070496
sADM_info:
.LcAFf:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcAFg
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sADL_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.LcAFg:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sADQ_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziIOziHandle_hClose1_info
	.size sADM_info, .-sADM_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj4_srt-(sADN_info)+0
	.long	0
	.quad	1
	.quad	253403070496
sADN_info:
.LcAFm:
	movq $sADM_info,0(%rbp)
	testq $7,%rbx
	jne sADM_info
	jmp *(%rbx)
	.size sADN_info, .-sADN_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj4_srt-(EngineziModelziModelLoader_loadObj4_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	270582939663
.globl EngineziModelziModelLoader_loadObj4_info
.type EngineziModelziModelLoader_loadObj4_info, @object
EngineziModelziModelLoader_loadObj4_info:
.LcAFs:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAFu
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObj4_ct
	je .LcAFv
.LcAFw:
	incq EngineziModelziModelLoader_loadObj4_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq $sADN_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.LcAFu:
	movl $EngineziModelziModelLoader_loadObj4_closure,%ebx
	jmp *-8(%r13)
.LcAFv:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObj4_ct+56
	movq $EngineziModelziModelLoader_loadObj4_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObj4_ct
	jmp .LcAFw
	.size EngineziModelziModelLoader_loadObj4_info, .-EngineziModelziModelLoader_loadObj4_info
.data
	.align 8
.align 1
rzur_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rztX_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rzus_closure:
	.quad	rzus_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
rzus_info:
.LcAFN:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAFP
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAFR
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
	je .LcAFS
.LcAFT:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzur_closure+2,%esi
	addq $-16,%rbp
	jmp splitzm0zi2zi2_DataziListziSplitziInternals_splitOn_info
.LcAFR:
	movq $16,192(%r13)
.LcAFP:
	jmp *-16(%r13)
.LcAFS:
	jmp *(%rbx)
	.size rzus_info, .-rzus_info
.data
	.align 8
.align 1
rzut_closure:
	.quad	rzut_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
rzut_info:
.LcAG9:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAGb
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAGd
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
	je .LcAGe
.LcAGf:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzuq_closure+2,%esi
	addq $-16,%rbp
	jmp splitzm0zi2zi2_DataziListziSplitziInternals_splitOn_info
.LcAGd:
	movq $16,192(%r13)
.LcAGb:
	jmp *-16(%r13)
.LcAGe:
	jmp *(%rbx)
	.size rzut_info, .-rzut_info
.section .data
	.align 8
.align 1
rzuu_srt:
	.quad	base_GHCziErr_error_closure
	.quad	base_GHCziList_badHead_closure
	.quad	base_ForeignziCziTypes_zdfReadCUInt2_closure
	.quad	base_TextziRead_zdwreadEither_closure
	.quad	rzun_closure
	.quad	rzuo_closure
	.quad	rzut_closure
	.quad	rzuu_closure
.data
	.align 8
.align 1
rzuu_closure:
	.quad	rzuu_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAHe_str:
	.byte	103
	.byte	111
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	117
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAHh_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzuu_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAHe_str
	.quad	cAHh_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzuu_srt-(sAGn_info)+56
	.long	0
	.quad	1
	.quad	4294967313
sAGn_info:
.LcAHx:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAHz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp rzuu_info
.LcAHz:
	jmp *-16(%r13)
	.size sAGn_info, .-sAGn_info
.text
	.align 8
	.quad	2
	.quad	32
szD6_info:
.LcAI4:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcAIa
	addq $4,rzuu_ct+48
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
.LcAIa:
	movq $32,192(%r13)
.LcAI8:
	jmp *-16(%r13)
	.size szD6_info, .-szD6_info
.text
	.align 8
	.long	rzuu_srt-(sAGw_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sAGw_info:
.LcAIq:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAIr
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp base_GHCziErr_error_info
.LcAIr:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sAGw_info, .-sAGw_info
.text
	.align 8
	.long	rzuu_srt-(sAGp_info)+0
	.long	0
	.quad	1
	.quad	55834574865
sAGp_info:
.LcAIz:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAIB
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $base_ForeignziCziTypes_zdfReadCUInt2_closure+2,%r14d
	movq 16(%rbx),%rsi
	movq $sAGw_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_TextziRead_zdwreadEither_info
.LcAIB:
	jmp *-16(%r13)
	.size sAGp_info, .-sAGp_info
.text
	.align 8
	.long	rzuu_srt-(szCW_info)+0
	.long	0
	.quad	2
	.quad	55834574880
szCW_info:
.LcAIH:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAII
	incq RET_NEW_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	movq $szD6_info,0(%rbp)
	jmp szD6_info
.LcAII:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcAIM
	addq $5,rzuu_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $sAGp_info,-32(%r12)
	movq %rbx,-16(%r12)
	incq RET_NEW_ctr
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	leaq -6(%r12),%rbx
	movq $szD6_info,0(%rbp)
	jmp szD6_info
.LcAIM:
	movq $40,192(%r13)
.LcAIK:
	jmp *-16(%r13)
	.size szCW_info, .-szCW_info
.text
	.align 8
	.long	rzuu_srt-(sAGv_info)+0
	.long	0
	.quad	2
	.quad	64424509472
sAGv_info:
.LcAIV:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAIW
	movl $base_GHCziList_badHead_closure,%ebx
	addq $24,%rbp
	jmp stg_ap_0_fast
.LcAIW:
	movq 6(%rbx),%rbx
	movq $szCW_info,0(%rbp)
	testq $7,%rbx
	jne szCW_info
	jmp *(%rbx)
	.size sAGv_info, .-sAGv_info
.text
	.align 8
	.long	rzuu_srt-(szD5_info)+0
	.long	0
	.quad	2
	.quad	64424509472
szD5_info:
.LcAJ5:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sAGv_info,0(%rbp)
	testq $7,%rbx
	jne sAGv_info
	jmp *(%rbx)
	.size szD5_info, .-szD5_info
.text
	.align 8
	.long	rzuu_srt-(szD4_info)+0
	.long	0
	.quad	2
	.quad	201863462944
szD4_info:
.LcAJd:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movq $szD5_info,0(%rbp)
	jmp rzuo_info
	.size szD4_info, .-szD4_info
.text
	.align 8
	.long	rzuu_srt-(sAGu_info)+0
	.long	0
	.quad	1
	.quad	270582939680
sAGu_info:
.LcAJi:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAJj
	movl $rzun_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAJj:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%r14
	movq 6(%rbx),%rax
	movq %rax,8(%rbp)
	movq $szD4_info,-8(%rbp)
	addq $-8,%rbp
	jmp rzuo_info
	.size sAGu_info, .-sAGu_info
.text
	.align 8
	.long	rzuu_srt-(sAGt_info)+0
	.long	0
	.quad	0
	.quad	270582939680
sAGt_info:
.LcAJu:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAJv
	movl $rzun_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcAJv:
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rbx
	movq $sAGu_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAGu_info
	jmp *(%rbx)
	.size sAGt_info, .-sAGt_info
.text
	.align 8
	.long	rzuu_srt-(sAGo_info)+0
	.long	0
	.quad	1
	.quad	545460846609
sAGo_info:
.LcAJH:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAJJ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq UNKNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movl $rzut_closure,%ebx
	movq $sAGt_info,-24(%rbp)
	addq $-24,%rbp
	jmp stg_ap_p_fast
.LcAJJ:
	jmp *-16(%r13)
	.size sAGo_info, .-sAGo_info
.text
	.align 8
	.long	rzuu_srt-(sAGm_info)+0
	.long	0
	.quad	0
	.quad	1095216660512
sAGm_info:
.LcAJP:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAJQ
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAJQ:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcAJU
	addq $9,rzuu_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $sAGn_info,-64(%r12)
	movq 14(%rbx),%rax
	movq %rax,-48(%r12)
	movq $sAGo_info,-40(%r12)
	movq 6(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	leaq -64(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcAJU:
	movq $72,192(%r13)
.LcAJS:
	jmp *-16(%r13)
	.size sAGm_info, .-sAGm_info
.text
	.align 8
	.long	rzuu_srt-(rzuu_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	1095216660495
rzuu_info:
.LcAK4:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAK6
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuu_ct
	je .LcAK7
.LcAK8:
	incq rzuu_ct+40
	movq %r14,%rbx
	movq $sAGm_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAGm_info
	jmp *(%rbx)
.LcAK6:
	movl $rzuu_closure,%ebx
	jmp *-8(%r13)
.LcAK7:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuu_ct+56
	movq $rzuu_ct,ticky_entry_ctrs
	movq $1,rzuu_ct
	jmp .LcAK8
	.size rzuu_info, .-rzuu_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObj2_srt:
	.quad	base_GHCziList_tail1_closure
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	EngineziModelziModelLoader_loadObj2_closure
	.quad	rzud_closure
	.quad	rzus_closure
	.quad	rzuu_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj2_closure
.type EngineziModelziModelLoader_loadObj2_closure, @object
EngineziModelziModelLoader_loadObj2_closure:
	.quad	EngineziModelziModelLoader_loadObj2_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAKV_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	57
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cAKY_str:
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj2_ct
.type EngineziModelziModelLoader_loadObj2_ct, @object
EngineziModelziModelLoader_loadObj2_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cAKV_str
	.quad	cAKY_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sAKo_info:
.LcALB:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp base_GHCziBase_zpzp_info
	.size sAKo_info, .-sAKo_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKm_info)+0
	.long	0
	.quad	1
	.quad	554050781216
sAKm_info:
.LcALG:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcALH
	movl $base_GHCziList_tail1_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcALH:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%r14
	movq $sAKo_info,0(%rbp)
	jmp rzuu_info
	.size sAKm_info, .-sAKm_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKk_info)+0
	.long	0
	.quad	1
	.quad	554050781216
sAKk_info:
.LcALO:
	incq KNOWN_CALL_ctr
	movl $rztW_closure+1,%r14d
	movq %rbx,%rsi
	movq $sAKm_info,0(%rbp)
	jmp base_GHCziList_filter_info
	.size sAKk_info, .-sAKk_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKl_info)+0
	.long	0
	.quad	2
	.quad	828928688147
sAKl_info:
.LcALS:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcALU
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq UNKNOWN_CALL_ctr
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%r14
	movl $rzus_closure,%ebx
	movq $sAKk_info,-32(%rbp)
	addq $-32,%rbp
	jmp stg_ap_p_fast
.LcALU:
	jmp *-16(%r13)
	.size sAKl_info, .-sAKl_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKn_info)+0
	.long	0
	.quad	130
	.quad	828928688160
sAKn_info:
.LcALZ:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcAM3
	addq $4,EngineziModelziModelLoader_loadObj2_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sAKl_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -24(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcAM3:
	movq $32,192(%r13)
.LcAM1:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sAKn_info, .-sAKn_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKg_info)+0
	.long	0
	.quad	2
	.quad	897648164896
sAKg_info:
.LcAM9:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcAMa
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	addq $24,%rbp
	jmp EngineziModelziModelLoader_loadObj2_info
.LcAMa:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sAKn_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj2_info
	.size sAKg_info, .-sAKg_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKh_info)+0
	.long	0
	.quad	1
	.quad	1035087118368
sAKh_info:
.LcAMg:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzud_closure,%esi
	movq %rbx,%rdi
	movq $sAKg_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sAKh_info, .-sAKh_info
.text
	.align 8
	.quad	0
	.quad	32
sAKq_info:
.LcAMn:
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sAKq_info, .-sAKq_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKi_info)+0
	.long	0
	.quad	1
	.quad	1060856922144
sAKi_info:
.LcAMs:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcAMt
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sAKh_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.LcAMt:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sAKq_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziIOziHandle_hClose1_info
	.size sAKi_info, .-sAKi_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(sAKj_info)+0
	.long	0
	.quad	1
	.quad	1060856922144
sAKj_info:
.LcAMz:
	movq $sAKi_info,0(%rbp)
	testq $7,%rbx
	jne sAKi_info
	jmp *(%rbx)
	.size sAKj_info, .-sAKj_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj2_srt-(EngineziModelziModelLoader_loadObj2_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	1095216660495
.globl EngineziModelziModelLoader_loadObj2_info
.type EngineziModelziModelLoader_loadObj2_info, @object
EngineziModelziModelLoader_loadObj2_info:
.LcAMF:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAMH
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObj2_ct
	je .LcAMI
.LcAMJ:
	incq EngineziModelziModelLoader_loadObj2_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq $sAKj_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.LcAMH:
	movl $EngineziModelziModelLoader_loadObj2_closure,%ebx
	jmp *-8(%r13)
.LcAMI:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObj2_ct+56
	movq $EngineziModelziModelLoader_loadObj2_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObj2_ct
	jmp .LcAMJ
	.size EngineziModelziModelLoader_loadObj2_info, .-EngineziModelziModelLoader_loadObj2_info
.data
	.align 8
.align 1
rzuv_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rztX_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rzuw_closure:
	.quad	rzuw_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
rzuw_info:
.LcAN0:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAN2
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAN4
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
	je .LcAN5
.LcAN6:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzuv_closure+2,%esi
	addq $-16,%rbp
	jmp splitzm0zi2zi2_DataziListziSplitziInternals_splitOn_info
.LcAN4:
	movq $16,192(%r13)
.LcAN2:
	jmp *-16(%r13)
.LcAN5:
	jmp *(%rbx)
	.size rzuw_info, .-rzuw_info
.section .data
	.align 8
.align 1
rx8O_srt:
	.quad	base_GHCziList_tail1_closure
	.quad	rzuw_closure
.data
	.align 8
.align 1
rx8O_closure:
	.quad	rx8O_info
	.quad	0
.section .rodata
	.align 8
.align 1
cANs_str:
	.byte	114
	.byte	97
	.byte	119
	.byte	79
	.byte	98
	.byte	106
	.byte	76
	.byte	105
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	120
	.byte	56
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cANv_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rx8O_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cANs_str
	.quad	cANv_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rx8O_srt-(sANd_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sANd_info:
.LcANL:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcANM
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcANM:
	movq 14(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sANd_info, .-sANd_info
.text
	.align 8
	.long	rx8O_srt-(sANc_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sANc_info:
.LcANU:
	incq KNOWN_CALL_ctr
	movl $rztW_closure+1,%r14d
	movq %rbx,%rsi
	movq $sANd_info,0(%rbp)
	jmp base_GHCziList_filter_info
	.size sANc_info, .-sANc_info
.text
	.align 8
	.long	rx8O_srt-(rx8O_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	12884901903
rx8O_info:
.LcANX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcANZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rx8O_ct
	je .LcAO0
.LcAO1:
	incq rx8O_ct+40
	incq UNKNOWN_CALL_ctr
	movl $rzuw_closure,%ebx
	movq $sANc_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_p_fast
.LcANZ:
	movl $rx8O_closure,%ebx
	jmp *-8(%r13)
.LcAO0:
	movq ticky_entry_ctrs,%rax
	movq %rax,rx8O_ct+56
	movq $rx8O_ct,ticky_entry_ctrs
	movq $1,rx8O_ct
	jmp .LcAO1
	.size rx8O_info, .-rx8O_info
.data
	.align 8
.align 1
rzux_closure:
	.quad	rzux_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAOe_str:
	.byte	109
	.byte	116
	.byte	108
	.byte	108
	.byte	105
	.byte	98
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzux_info:
.LcAOi:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAOk
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAOm
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
	je .LcAOn
.LcAOo:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAOe_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAOm:
	movq $16,192(%r13)
.LcAOk:
	jmp *-16(%r13)
.LcAOn:
	jmp *(%rbx)
	.size rzux_info, .-rzux_info
.section .data
	.align 8
.align 1
rzuy_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	EngineziModelziMaterial_loadMtlFile1_closure
	.quad	rx8O_closure
	.quad	rzux_closure
	.quad	rzuy_closure
.data
	.align 8
.align 1
rzuy_closure:
	.quad	rzuy_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAP0_str:
	.byte	97
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	121
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAP3_str:
	.byte	83
	.byte	77
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rzuy_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cAP0_str
	.quad	cAP3_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzuy_srt-(sAOA_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sAOA_info:
.LcAPw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAPx
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcAPx:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sAOA_info, .-sAOA_info
.text
	.align 8
	.long	rzuy_srt-(sAOz_info)+0
	.long	0
	.quad	1
	.quad	141733920785
sAOz_info:
.LcAPF:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAPH
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sAOA_info,-24(%rbp)
	addq $-24,%rbp
	jmp rx8O_info
.LcAPH:
	jmp *-16(%r13)
	.size sAOz_info, .-sAOz_info
.text
	.align 8
	.long	rzuy_srt-(sAOv_info)+0
	.long	0
	.quad	3
	.quad	760209211424
sAOv_info:
.LcAPN:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAPO
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 24(%rbp),%rsi
	addq $32,%rbp
	jmp rzuy_info
.LcAPO:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcAPS
	addq $3,rzuy_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sAOz_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	leaq -16(%r12),%rsi
	addq $32,%rbp
	jmp EngineziModelziMaterial_loadMtlFile1_info
.LcAPS:
	movq $24,192(%r13)
.LcAPQ:
	jmp *-16(%r13)
	.size sAOv_info, .-sAOv_info
.text
	.align 8
	.long	rzuy_srt-(sAOw_info)+0
	.long	0
	.quad	2
	.quad	1035087118368
sAOw_info:
.LcAPZ:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzux_closure,%esi
	movq %rbx,%rdi
	movq $sAOv_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sAOw_info, .-sAOw_info
.text
	.align 8
	.quad	0
	.quad	32
sAOC_info:
.LcAQ6:
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sAOC_info, .-sAOC_info
.text
	.align 8
	.long	rzuy_srt-(sAOx_info)+0
	.long	0
	.quad	2
	.quad	1060856922144
sAOx_info:
.LcAQb:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcAQc
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sAOw_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.LcAQc:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sAOC_info,16(%rbp)
	addq $16,%rbp
	jmp base_GHCziIOziHandle_hClose1_info
	.size sAOx_info, .-sAOx_info
.text
	.align 8
	.long	rzuy_srt-(sAOy_info)+0
	.long	0
	.quad	2
	.quad	1060856922144
sAOy_info:
.LcAQi:
	movq $sAOx_info,0(%rbp)
	testq $7,%rbx
	jne sAOx_info
	jmp *(%rbx)
	.size sAOy_info, .-sAOy_info
.text
	.align 8
	.long	rzuy_srt-(rzuy_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	1095216660495
rzuy_info:
.LcAQo:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAQq
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuy_ct
	je .LcAQr
.LcAQs:
	incq rzuy_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %rsi,%r14
	movq $sAOy_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.LcAQq:
	movl $rzuy_closure,%ebx
	jmp *-8(%r13)
.LcAQr:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuy_ct+56
	movq $rzuy_ct,ticky_entry_ctrs
	movq $1,rzuy_ct
	jmp .LcAQs
	.size rzuy_info, .-rzuy_info
.data
	.align 8
.align 1
rzuz_closure:
	.quad	rzuz_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cAQF_str:
	.byte	117
	.byte	115
	.byte	101
	.byte	109
	.byte	116
	.byte	108
	.byte	32
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rzuz_info:
.LcAQJ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAQL
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcAQN
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
	je .LcAQO
.LcAQP:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cAQF_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcAQN:
	movq $16,192(%r13)
.LcAQL:
	jmp *-16(%r13)
.LcAQO:
	jmp *(%rbx)
	.size rzuz_info, .-rzuz_info
.section .data
	.align 8
.align 1
rzuA_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziIOziHandleziText_hGetLine1_closure
	.quad	base_GHCziIOziHandle_hClose1_closure
	.quad	base_GHCziIOziHandle_hIsEOF1_closure
	.quad	rx8O_closure
	.quad	rzud_closure
	.quad	rzuz_closure
	.quad	rzuA_closure
.data
	.align 8
.align 1
rzuA_closure:
	.quad	rzuA_info
	.quad	0
.section .rodata
	.align 8
.align 1
cASI_str:
	.byte	97
	.byte	52
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	65
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cASK_str:
	.byte	77
	.byte	76
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rzuA_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cASI_str
	.quad	cASK_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cASN_str:
	.byte	120
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	69
	.byte	76
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cASP_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
szEL_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cASN_str
	.quad	cASP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967297
	.quad	20
sAR1_info:
.LcASY:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAT0
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp szEL_info
.LcAT0:
	jmp *-16(%r13)
	.size sAR1_info, .-sAR1_info
.text
	.align 8
	.quad	4294967300
	.quad	2
	.quad	12
szEL_info:
.LcAT5:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcAT9
	addq $7,szEL_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szEL_ct
	je .LcATa
.LcATb:
	incq szEL_ct+40
	cmpq $1,%r14
	jle .LcATd
	movq $sAR1_info,-48(%r12)
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
.LcAT9:
	movq $56,192(%r13)
.LcAT7:
	jmp *-8(%r13)
.LcATa:
	movq ticky_entry_ctrs,%rax
	movq %rax,szEL_ct+56
	movq $szEL_ct,ticky_entry_ctrs
	movq $1,szEL_ct
	jmp .LcATb
.LcATd:
	movq 15(%rbx),%rbx
	addq $-56,%r12
	addq $-7,szEL_ct+48
	incq ALLOC_HEAP_ctr
	addq $-7,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size szEL_info, .-szEL_info
.text
	.align 8
	.quad	2
	.quad	19
sAR2_info:
.LcATk:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcATm
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcATo
	addq $6,rzuA_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-32(%r12)
	movq 24(%rbx),%rax
	movq %rax,-24(%r12)
	movq $szEL_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -15(%r12),%rbx
	movl $3,%r14d
	addq $-16,%rbp
	jmp szEL_info
.LcATo:
	movq $48,192(%r13)
.LcATm:
	jmp *-16(%r13)
	.size sAR2_info, .-sAR2_info
.text
	.align 8
	.quad	387
	.quad	32
sAR3_info:
.LcATw:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcATA
	addq $4,rzuA_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sAR2_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -24(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcATA:
	movq $32,192(%r13)
.LcATy:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sAR3_info, .-sAR3_info
.text
	.align 8
	.long	rzuA_srt-(sAQW_info)+56
	.long	0
	.quad	3
	.quad	4294967328
sAQW_info:
.LcATG:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcATH
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 8(%rbp),%rdi
	addq $32,%rbp
	jmp rzuA_info
.LcATH:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq 16(%rbp),%rsi
	movq 8(%rbp),%rdi
	movq $sAR3_info,0(%rbp)
	jmp rzuA_info
	.size sAQW_info, .-sAQW_info
.text
	.align 8
	.long	rzuA_srt-(sARd_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sARd_info:
.LcATX:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcATY
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcATY:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sARd_info, .-sARd_info
.text
	.align 8
	.long	rzuA_srt-(szEV_info)+0
	.long	0
	.quad	1
	.quad	73014444049
szEV_info:
.LcAU6:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAU8
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sARd_info,-24(%rbp)
	addq $-24,%rbp
	jmp rx8O_info
.LcAU8:
	jmp *-16(%r13)
	.size szEV_info, .-szEV_info
.section .rodata
	.align 8
.align 1
cAUd_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	65
	.byte	82
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cAUg_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
sAR5_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cAUd_str
	.quad	cAUg_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sARf_info:
.LcAUq:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp base_GHCziBase_eqString_info
	.size sARf_info, .-sARf_info
.text
	.align 8
	.quad	4294967301
	.quad	1
	.quad	10
sAR5_info:
.LcAUt:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAUv
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sAR5_ct
	je .LcAUw
.LcAUx:
	incq sAR5_ct+40
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $sARf_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sARf_info
	jmp *(%rbx)
.LcAUv:
	jmp *-8(%r13)
.LcAUw:
	movq ticky_entry_ctrs,%rax
	movq %rax,sAR5_ct+56
	movq $sAR5_ct,ticky_entry_ctrs
	movq $1,sAR5_ct
	jmp .LcAUx
	.size sAR5_info, .-sAR5_info
.text
	.align 8
	.long	rzuA_srt-(sARg_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sARg_info:
.LcAUK:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAUL
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcAUL:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sARg_info, .-sARg_info
.text
	.align 8
	.long	rzuA_srt-(sARc_info)+0
	.long	0
	.quad	2
	.quad	73014444051
sARc_info:
.LcAUT:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAUV
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcAUX
	addq $5,rzuA_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $szEV_info,-32(%r12)
	movq 16(%rbx),%rax
	movq %rax,-16(%r12)
	movq $sAR5_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	movq 24(%rbx),%rsi
	movq $sARg_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziList_filter_info
.LcAUX:
	movq $40,192(%r13)
.LcAUV:
	jmp *-16(%r13)
	.size sARc_info, .-sARc_info
.text
	.align 8
	.long	rzuA_srt-(sAQX_info)+0
	.long	0
	.quad	4
	.quad	760209211424
sAQX_info:
.LcAV5:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAV6
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzud_closure,%esi
	movq 8(%rbp),%rdi
	movq $sAQW_info,8(%rbp)
	addq $8,%rbp
	jmp base_DataziList_isPrefixOf_info
.LcAV6:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcAVa
	addq $4,rzuA_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sARc_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 24(%rbp),%rsi
	leaq -24(%r12),%rdi
	addq $40,%rbp
	jmp rzuA_info
.LcAVa:
	movq $32,192(%r13)
.LcAV8:
	jmp *-16(%r13)
	.size sAQX_info, .-sAQX_info
.text
	.align 8
	.long	rzuA_srt-(sAQY_info)+0
	.long	0
	.quad	3
	.quad	1035087118368
sAQY_info:
.LcAVi:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $ghczmprim_GHCziClasses_zdfEqChar_closure,%r14d
	movl $rzuz_closure,%esi
	movq %rbx,%rdi
	movq $sAQX_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_DataziList_isPrefixOf_info
	.size sAQY_info, .-sAQY_info
.text
	.align 8
	.quad	0
	.quad	32
sARh_info:
.LcAVp:
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sARh_info, .-sARh_info
.text
	.align 8
	.long	rzuA_srt-(sAQZ_info)+0
	.long	0
	.quad	3
	.quad	1060856922144
sAQZ_info:
.LcAVu:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcAVv
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq $sAQY_info,0(%rbp)
	jmp base_GHCziIOziHandleziText_hGetLine1_info
.LcAVv:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq $sARh_info,24(%rbp)
	addq $24,%rbp
	jmp base_GHCziIOziHandle_hClose1_info
	.size sAQZ_info, .-sAQZ_info
.text
	.align 8
	.long	rzuA_srt-(sAR0_info)+0
	.long	0
	.quad	3
	.quad	1060856922144
sAR0_info:
.LcAVB:
	movq $sAQZ_info,0(%rbp)
	testq $7,%rbx
	jne sAQZ_info
	jmp *(%rbx)
	.size sAR0_info, .-sAR0_info
.text
	.align 8
	.long	rzuA_srt-(rzuA_info)+0
	.long	0
	.quad	17179869204
	.quad	0
	.quad	1095216660495
rzuA_info:
.LcAVH:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAVJ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuA_ct
	je .LcAVK
.LcAVL:
	incq rzuA_ct+40
	incq KNOWN_CALL_ctr
	movq %rdi,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq $sAR0_info,-32(%rbp)
	addq $-32,%rbp
	jmp base_GHCziIOziHandle_hIsEOF1_info
.LcAVJ:
	movl $rzuA_closure,%ebx
	jmp *-8(%r13)
.LcAVK:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuA_ct+56
	movq $rzuA_ct,ticky_entry_ctrs
	movq $1,rzuA_ct
	jmp .LcAVL
	.size rzuA_info, .-rzuA_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_getThem3_srt:
	.quad	base_GHCziList_znzn1_closure
	.quad	base_GHCziList_znznzusub_closure
	.quad	EngineziModelziModelLoader_getThem3_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_getThem3_closure
.type EngineziModelziModelLoader_getThem3_closure, @object
EngineziModelziModelLoader_getThem3_closure:
	.quad	EngineziModelziModelLoader_getThem3_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAWX_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	84
	.byte	104
	.byte	101
	.byte	109
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	56
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cAWZ_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_getThem3_ct
.type EngineziModelziModelLoader_getThem3_ct, @object
EngineziModelziModelLoader_getThem3_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cAWX_str
	.quad	cAWZ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem3_srt-(sAVR_info)+16
	.long	0
	.quad	2
	.quad	4294967315
sAVR_info:
.LcAX7:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAX9
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp EngineziModelziModelLoader_getThem3_info
.LcAX9:
	jmp *-16(%r13)
	.size sAVR_info, .-sAVR_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem3_srt-(szFO_info)+16
	.long	0
	.quad	2
	.quad	4294967315
szFO_info:
.LcAXm:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAXo
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp EngineziModelziModelLoader_getThem3_info
.LcAXo:
	jmp *-16(%r13)
	.size szFO_info, .-szFO_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem3_srt-(sAVV_info)+16
	.long	0
	.quad	2
	.quad	4294967328
sAVV_info:
.LcAXs:
	addq $152,%r12
	cmpq 144(%r13),%r12
	ja .LcAXw
	addq $19,EngineziModelziModelLoader_getThem3_ct+48
	incq ALLOC_HEAP_ctr
	addq $19,ALLOC_HEAP_tot
	movq $szFO_info,-144(%r12)
	movq 8(%rbp),%rax
	movq %rax,-128(%r12)
	movq 16(%rbp),%rax
	movq %rax,-120(%r12)
	movq $base_DataziMaybe_Just_con_info,-112(%r12)
	movq 23(%rbx),%rax
	movq %rax,-104(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-96(%r12)
	leaq -110(%r12),%rax
	movq %rax,-88(%r12)
	leaq -144(%r12),%rax
	movq %rax,-80(%r12)
	movq $base_DataziMaybe_Just_con_info,-72(%r12)
	movq 15(%rbx),%rax
	movq %rax,-64(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	leaq -70(%r12),%rax
	movq %rax,-48(%r12)
	leaq -94(%r12),%rax
	movq %rax,-40(%r12)
	movq $base_DataziMaybe_Just_con_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -30(%r12),%rax
	movq %rax,-8(%r12)
	leaq -54(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcAXw:
	movq $152,192(%r13)
.LcAXu:
	jmp *-16(%r13)
	.size sAVV_info, .-sAVV_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem3_srt-(sAVX_info)+0
	.long	0
	.quad	2
	.quad	30064771104
sAVX_info:
.LcAXK:
	movq 7(%rbx),%rax
	decq %rax
	movl %eax,%esi
	testq %rsi,%rsi
	jl .LcAXM
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sAVV_info,0(%rbp)
	jmp base_GHCziList_znznzusub_info
.LcAXM:
	movl $base_GHCziList_znzn1_closure,%ebx
	addq $24,%rbp
	jmp stg_ap_0_fast
	.size sAVX_info, .-sAVX_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem3_srt-(sAVS_info)+0
	.long	0
	.quad	2
	.quad	30064771104
sAVS_info:
.LcAXT:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAXU
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcAY1
	addq $7,EngineziModelziModelLoader_getThem3_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sAVR_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcAXU:
	movq 6(%rbx),%rbx
	movq $sAVX_info,0(%rbp)
	testq $7,%rbx
	jne sAVX_info
	jmp *(%rbx)
.LcAY1:
	movq $56,192(%r13)
.LcAXZ:
	jmp *-16(%r13)
	.size sAVS_info, .-sAVS_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem3_srt-(sAVQ_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sAVQ_info:
.LcAYc:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcAYd
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcAYd:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sAVS_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAVS_info
	jmp *(%rbx)
	.size sAVQ_info, .-sAVQ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem3_srt-(EngineziModelziModelLoader_getThem3_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	30064771087
.globl EngineziModelziModelLoader_getThem3_info
.type EngineziModelziModelLoader_getThem3_info, @object
EngineziModelziModelLoader_getThem3_info:
.LcAYn:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAYp
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_getThem3_ct
	je .LcAYq
.LcAYr:
	incq EngineziModelziModelLoader_getThem3_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sAVQ_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sAVQ_info
	jmp *(%rbx)
.LcAYp:
	movl $EngineziModelziModelLoader_getThem3_closure,%ebx
	jmp *-8(%r13)
.LcAYq:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_getThem3_ct+56
	movq $EngineziModelziModelLoader_getThem3_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_getThem3_ct
	jmp .LcAYr
	.size EngineziModelziModelLoader_getThem3_info, .-EngineziModelziModelLoader_getThem3_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_getThem2_srt:
	.quad	base_GHCziList_znzn1_closure
	.quad	base_GHCziList_znznzusub_closure
	.quad	EngineziModelziModelLoader_getThem2_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_getThem2_closure
.type EngineziModelziModelLoader_getThem2_closure, @object
EngineziModelziModelLoader_getThem2_closure:
	.quad	EngineziModelziModelLoader_getThem2_info
	.quad	0
.section .rodata
	.align 8
.align 1
cAZG_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	84
	.byte	104
	.byte	101
	.byte	109
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	54
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cAZI_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_getThem2_ct
.type EngineziModelziModelLoader_getThem2_ct, @object
EngineziModelziModelLoader_getThem2_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cAZG_str
	.quad	cAZI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem2_srt-(sAYA_info)+16
	.long	0
	.quad	2
	.quad	4294967315
sAYA_info:
.LcAZQ:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcAZS
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp EngineziModelziModelLoader_getThem2_info
.LcAZS:
	jmp *-16(%r13)
	.size sAYA_info, .-sAYA_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem2_srt-(szGq_info)+16
	.long	0
	.quad	2
	.quad	4294967315
szGq_info:
.LcB05:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB07
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp EngineziModelziModelLoader_getThem2_info
.LcB07:
	jmp *-16(%r13)
	.size szGq_info, .-szGq_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem2_srt-(sAYE_info)+16
	.long	0
	.quad	2
	.quad	4294967328
sAYE_info:
.LcB0b:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .LcB0f
	addq $14,EngineziModelziModelLoader_getThem2_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	movq $szGq_info,-104(%r12)
	movq 8(%rbp),%rax
	movq %rax,-88(%r12)
	movq 16(%rbp),%rax
	movq %rax,-80(%r12)
	movq $base_DataziMaybe_Just_con_info,-72(%r12)
	movq 15(%rbx),%rax
	movq %rax,-64(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	leaq -70(%r12),%rax
	movq %rax,-48(%r12)
	leaq -104(%r12),%rax
	movq %rax,-40(%r12)
	movq $base_DataziMaybe_Just_con_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -30(%r12),%rax
	movq %rax,-8(%r12)
	leaq -54(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcB0f:
	movq $112,192(%r13)
.LcB0d:
	jmp *-16(%r13)
	.size sAYE_info, .-sAYE_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem2_srt-(sAYG_info)+0
	.long	0
	.quad	2
	.quad	30064771104
sAYG_info:
.LcB0q:
	movq 7(%rbx),%rax
	decq %rax
	movl %eax,%esi
	testq %rsi,%rsi
	jl .LcB0s
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq $sAYE_info,0(%rbp)
	jmp base_GHCziList_znznzusub_info
.LcB0s:
	movl $base_GHCziList_znzn1_closure,%ebx
	addq $24,%rbp
	jmp stg_ap_0_fast
	.size sAYG_info, .-sAYG_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem2_srt-(sAYB_info)+0
	.long	0
	.quad	2
	.quad	30064771104
sAYB_info:
.LcB0z:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcB0A
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcB0H
	addq $7,EngineziModelziModelLoader_getThem2_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $sAYA_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcB0A:
	movq 6(%rbx),%rbx
	movq $sAYG_info,0(%rbp)
	testq $7,%rbx
	jne sAYG_info
	jmp *(%rbx)
.LcB0H:
	movq $56,192(%r13)
.LcB0F:
	jmp *-16(%r13)
	.size sAYB_info, .-sAYB_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem2_srt-(sAYz_info)+0
	.long	0
	.quad	1
	.quad	30064771104
sAYz_info:
.LcB0S:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcB0T
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcB0T:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sAYB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sAYB_info
	jmp *(%rbx)
	.size sAYz_info, .-sAYz_info
.text
	.align 8
	.long	EngineziModelziModelLoader_getThem2_srt-(EngineziModelziModelLoader_getThem2_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	30064771087
.globl EngineziModelziModelLoader_getThem2_info
.type EngineziModelziModelLoader_getThem2_info, @object
EngineziModelziModelLoader_getThem2_info:
.LcB13:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB15
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_getThem2_ct
	je .LcB16
.LcB17:
	incq EngineziModelziModelLoader_getThem2_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sAYz_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sAYz_info
	jmp *(%rbx)
.LcB15:
	movl $EngineziModelziModelLoader_getThem2_closure,%ebx
	jmp *-8(%r13)
.LcB16:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_getThem2_ct+56
	movq $EngineziModelziModelLoader_getThem2_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_getThem2_ct
	jmp .LcB17
	.size EngineziModelziModelLoader_getThem2_info, .-EngineziModelziModelLoader_getThem2_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_zdwpackObj_srt:
	.quad	EngineziModelziModelLoader_getThem2_closure
	.quad	EngineziModelziModelLoader_getThem3_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_zdwpackObj_closure
.type EngineziModelziModelLoader_zdwpackObj_closure, @object
EngineziModelziModelLoader_zdwpackObj_closure:
	.quad	EngineziModelziModelLoader_zdwpackObj_info
	.quad	0
.section .rodata
	.align 8
.align 1
cB1F_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	36
	.byte	119
	.byte	112
	.byte	97
	.byte	99
	.byte	107
	.byte	79
	.byte	98
	.byte	106
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	116
	.byte	76
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cB1I_str:
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_zdwpackObj_ct
.type EngineziModelziModelLoader_zdwpackObj_ct, @object
EngineziModelziModelLoader_zdwpackObj_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cB1F_str
	.quad	cB1I_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
szGK_info:
.LcB2c:
	incq RET_UNBOXED_TUP_ctr
	movq 16(%rbp),%r14
	movq %rbx,%rsi
	movq 8(%rbp),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
	.size szGK_info, .-szGK_info
.text
	.align 8
	.long	EngineziModelziModelLoader_zdwpackObj_srt-(sB1e_info)+8
	.long	0
	.quad	132
	.quad	4294967328
sB1e_info:
.LcB2f:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	movq $szGK_info,16(%rbp)
	addq $16,%rbp
	jmp EngineziModelziModelLoader_getThem3_info
	.size sB1e_info, .-sB1e_info
.text
	.align 8
	.long	EngineziModelziModelLoader_zdwpackObj_srt-(szGJ_info)+8
	.long	0
	.quad	132
	.quad	4294967328
szGJ_info:
.LcB2i:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,32(%rbp)
	movq $sB1e_info,0(%rbp)
	jmp EngineziModelziModelLoader_faceNormIndices_info
	.size szGJ_info, .-szGJ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_zdwpackObj_srt-(sB1f_info)+0
	.long	0
	.quad	4
	.quad	12884901920
sB1f_info:
.LcB2l:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 16(%rbp),%rsi
	movq $szGJ_info,0(%rbp)
	jmp EngineziModelziModelLoader_getThem2_info
	.size sB1f_info, .-sB1f_info
.text
	.align 8
	.long	EngineziModelziModelLoader_zdwpackObj_srt-(szGI_info)+0
	.long	0
	.quad	260
	.quad	12884901920
szGI_info:
.LcB2o:
	incq KNOWN_CALL_ctr
	movq %rbx,24(%rbp)
	movq 32(%rbp),%r14
	movq $sB1f_info,0(%rbp)
	jmp EngineziModelziModelLoader_faceTexIndices_info
	.size szGI_info, .-szGI_info
.text
	.align 8
	.long	EngineziModelziModelLoader_zdwpackObj_srt-(sB1g_info)+0
	.long	0
	.quad	4
	.quad	12884901920
sB1g_info:
.LcB2r:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 24(%rbp),%rsi
	movq $szGI_info,0(%rbp)
	jmp EngineziModelziModelLoader_getThem3_info
	.size sB1g_info, .-sB1g_info
.text
	.align 8
	.long	EngineziModelziModelLoader_zdwpackObj_srt-(EngineziModelziModelLoader_zdwpackObj_info)+0
	.long	0
	.quad	17179869205
	.quad	0
	.quad	12884901903
.globl EngineziModelziModelLoader_zdwpackObj_info
.type EngineziModelziModelLoader_zdwpackObj_info, @object
EngineziModelziModelLoader_zdwpackObj_info:
.LcB2u:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB2w
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_zdwpackObj_ct
	je .LcB2x
.LcB2y:
	incq EngineziModelziModelLoader_zdwpackObj_ct+40
	incq KNOWN_CALL_ctr
	movq %r8,-32(%rbp)
	movq %rdi,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq $sB1g_info,-40(%rbp)
	addq $-40,%rbp
	jmp EngineziModelziModelLoader_faceVertIndices_info
.LcB2w:
	movl $EngineziModelziModelLoader_zdwpackObj_closure,%ebx
	jmp *-8(%r13)
.LcB2x:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_zdwpackObj_ct+56
	movq $EngineziModelziModelLoader_zdwpackObj_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_zdwpackObj_ct
	jmp .LcB2y
	.size EngineziModelziModelLoader_zdwpackObj_info, .-EngineziModelziModelLoader_zdwpackObj_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_packObj_srt:
	.quad	EngineziModelziModelLoader_zdwpackObj_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_packObj_closure
.type EngineziModelziModelLoader_packObj_closure, @object
EngineziModelziModelLoader_packObj_closure:
	.quad	EngineziModelziModelLoader_packObj_info
	.quad	0
.section .rodata
	.align 8
.align 1
cB2J_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	112
	.byte	97
	.byte	99
	.byte	107
	.byte	79
	.byte	98
	.byte	106
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	120
	.byte	56
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cB2M_str:
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_packObj_ct
.type EngineziModelziModelLoader_packObj_ct, @object
EngineziModelziModelLoader_packObj_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cB2J_str
	.quad	cB2M_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sB2C_info:
.LcB2W:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcB31
	addq $4,EngineziModelziModelLoader_packObj_ct+48
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
.LcB31:
	movq $32,192(%r13)
.LcB2Z:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sB2C_info, .-sB2C_info
.text
	.align 8
	.long	EngineziModelziModelLoader_packObj_srt-(EngineziModelziModelLoader_packObj_info)+0
	.long	0
	.quad	17179869205
	.quad	0
	.quad	4294967311
.globl EngineziModelziModelLoader_packObj_info
.type EngineziModelziModelLoader_packObj_info, @object
EngineziModelziModelLoader_packObj_info:
.LcB34:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB36
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_packObj_ct
	je .LcB37
.LcB38:
	incq EngineziModelziModelLoader_packObj_ct+40
	incq KNOWN_CALL_ctr
	movq $sB2C_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziModelziModelLoader_zdwpackObj_info
.LcB36:
	movl $EngineziModelziModelLoader_packObj_closure,%ebx
	jmp *-8(%r13)
.LcB37:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_packObj_ct+56
	movq $EngineziModelziModelLoader_packObj_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_packObj_ct
	jmp .LcB38
	.size EngineziModelziModelLoader_packObj_info, .-EngineziModelziModelLoader_packObj_info
.data
	.align 8
.align 1
rzuB_closure:
	.quad	rzuB_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cB3l_str:
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
rzuB_info:
.LcB3p:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB3r
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcB3t
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
	je .LcB3u
.LcB3v:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cB3l_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcB3t:
	movq $16,192(%r13)
.LcB3r:
	jmp *-16(%r13)
.LcB3u:
	jmp *(%rbx)
	.size rzuB_info, .-rzuB_info
.data
	.align 8
.align 1
rzuC_closure:
	.quad	rzuC_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cB3K_str:
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
rzuC_info:
.LcB3O:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB3Q
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcB3S
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
	je .LcB3T
.LcB3U:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cB3K_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcB3S:
	movq $16,192(%r13)
.LcB3Q:
	jmp *-16(%r13)
.LcB3T:
	jmp *(%rbx)
	.size rzuC_info, .-rzuC_info
.data
	.align 8
.align 1
rzuD_closure:
	.quad	rzuD_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cB49_str:
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
rzuD_info:
.LcB4d:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB4f
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcB4h
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
	je .LcB4i
.LcB4j:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cB49_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcB4h:
	movq $16,192(%r13)
.LcB4f:
	jmp *-16(%r13)
.LcB4i:
	jmp *(%rbx)
	.size rzuD_info, .-rzuD_info
.data
	.align 8
.align 1
rzuE_closure:
	.quad	rzuE_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cB4y_str:
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
rzuE_info:
.LcB4C:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB4E
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcB4G
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
	je .LcB4H
.LcB4I:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cB4y_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcB4G:
	movq $16,192(%r13)
.LcB4E:
	jmp *-16(%r13)
.LcB4H:
	jmp *(%rbx)
	.size rzuE_info, .-rzuE_info
.data
	.align 8
.align 1
rzuF_closure:
	.quad	rzuF_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cB4X_str:
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
rzuF_info:
.LcB51:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB53
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcB55
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
	je .LcB56
.LcB57:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cB4X_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcB55:
	movq $16,192(%r13)
.LcB53:
	jmp *-16(%r13)
.LcB56:
	jmp *(%rbx)
	.size rzuF_info, .-rzuF_info
.data
	.align 8
.align 1
rzuG_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuF_closure
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.data
	.align 8
.align 1
rzuH_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuE_closure
	.quad	rzuG_closure+2
	.quad	0
.data
	.align 8
.align 1
rzuI_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuD_closure
	.quad	rzuH_closure+2
	.quad	0
.data
	.align 8
.align 1
rzuJ_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuC_closure
	.quad	rzuI_closure+2
	.quad	0
.data
	.align 8
.align 1
rzuK_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuB_closure
	.quad	rzuJ_closure+2
	.quad	0
.data
	.align 8
.align 1
rzuL_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.data
	.align 8
.align 1
rzuM_closure:
	.quad	rzuM_info
.section .rodata
	.align 8
.align 1
cB5W_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	51
	.byte	54
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
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
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cB5Z_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rzuM_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cB5W_str
	.quad	cB5Z_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sB5x_info:
.LcB6i:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcB6o
	addq $2,rzuM_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	cvtsi2ssq 7(%rbx),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcB6o:
	movq $16,192(%r13)
.LcB6m:
	jmp *-16(%r13)
	.size sB5x_info, .-sB5x_info
.text
	.align 8
	.quad	0
	.quad	32
sB5p_info:
.LcB6t:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcB6u
	movl $rzuL_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcB6u:
	movq 6(%rbx),%rbx
	movq $sB5x_info,0(%rbp)
	testq $7,%rbx
	jne sB5x_info
	jmp *(%rbx)
	.size sB5p_info, .-sB5p_info
.text
	.align 8
	.quad	0
	.quad	32
sB5r_info:
.LcB6D:
	movq 47(%rbx),%rbx
	movq $sB5p_info,0(%rbp)
	testq $7,%rbx
	jne sB5p_info
	jmp *(%rbx)
	.size sB5r_info, .-sB5r_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rzuM_info:
.LcB6J:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB6L
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuM_ct
	je .LcB6M
.LcB6N:
	incq rzuM_ct+40
	movq %r14,%rbx
	movq $sB5r_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sB5r_info
	jmp *(%rbx)
.LcB6L:
	movl $rzuM_closure,%ebx
	jmp *-8(%r13)
.LcB6M:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuM_ct+56
	movq $rzuM_ct,ticky_entry_ctrs
	movq $1,rzuM_ct
	jmp .LcB6N
	.size rzuM_info, .-rzuM_info
.data
	.align 8
.align 1
rzuN_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	3
.data
	.align 8
.align 1
rzuO_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	2
.data
	.align 8
.align 1
rzuP_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	1
.data
	.align 8
.align 1
rzuQ_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuP_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
rzuR_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuN_closure+1
	.quad	rzuQ_closure+2
	.quad	1
.data
	.align 8
.align 1
rzuS_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuN_closure+1
	.quad	rzuR_closure+2
	.quad	1
.data
	.align 8
.align 1
rzuT_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuO_closure+1
	.quad	rzuS_closure+2
	.quad	1
.data
	.align 8
.align 1
rzuU_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	rzuN_closure+1
	.quad	rzuT_closure+2
	.quad	1
.section .data
	.align 8
.align 1
rzuV_srt:
	.quad	base_DataziMaybe_fromJust1_closure
.data
	.align 8
.align 1
rzuV_closure:
	.quad	rzuV_info
	.quad	0
.section .rodata
	.align 8
.align 1
cB7C_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	51
	.byte	56
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	86
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cB7F_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rzuV_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cB7C_str
	.quad	cB7F_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzuV_srt-(sB7a_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sB7a_info:
.LcB7V:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcB7W
	movl $base_DataziMaybe_fromJust1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcB7W:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sB7a_info, .-sB7a_info
.text
	.align 8
	.long	rzuV_srt-(sB7c_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sB7c_info:
.LcB83:
	movq 47(%rbx),%rbx
	movq $sB7a_info,0(%rbp)
	testq $7,%rbx
	jne sB7a_info
	jmp *(%rbx)
	.size sB7c_info, .-sB7c_info
.text
	.align 8
	.long	rzuV_srt-(rzuV_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
rzuV_info:
.LcB89:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcB8b
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuV_ct
	je .LcB8c
.LcB8d:
	incq rzuV_ct+40
	movq %r14,%rbx
	movq $sB7c_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sB7c_info
	jmp *(%rbx)
.LcB8b:
	movl $rzuV_closure,%ebx
	jmp *-8(%r13)
.LcB8c:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuV_ct+56
	movq $rzuV_ct,ticky_entry_ctrs
	movq $1,rzuV_ct
	jmp .LcB8d
	.size rzuV_info, .-rzuV_info
.section .data
	.align 8
.align 1
rzuW_srt:
	.quad	EngineziModelziModelLoader_getThem2_closure
	.quad	EngineziModelziModelLoader_getThem3_closure
.data
	.align 8
.align 1
rzuW_closure:
	.quad	rzuW_info
	.quad	0
.section .rodata
	.align 8
.align 1
cB8V_str:
	.byte	36
	.byte	106
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	87
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cB8Y_str:
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzuW_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cB8V_str
	.quad	cB8Y_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	32
szHQ_info:
.LcB9E:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcB9K
	addq $9,rzuW_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	movq %rbx,-56(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -38(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcB9K:
	movq $72,192(%r13)
.LcB9I:
	jmp *-16(%r13)
	.size szHQ_info, .-szHQ_info
.text
	.align 8
	.quad	2
	.quad	32
szHP_info:
.LcB9R:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,8(%rbp)
	movl $3,%esi
	movq $szHQ_info,0(%rbp)
	jmp rztN_info
	.size szHP_info, .-szHP_info
.text
	.align 8
	.quad	2
	.quad	32
szHO_info:
.LcB9U:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq %rbx,16(%rbp)
	movl $2,%esi
	movq $szHP_info,0(%rbp)
	jmp rztN_info
	.size szHO_info, .-szHO_info
.text
	.align 8
	.quad	2
	.quad	32
szHM_info:
.LcB9X:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq %rbx,8(%rbp)
	movl $3,%esi
	movq $szHO_info,0(%rbp)
	jmp rztN_info
	.size szHM_info, .-szHM_info
.text
	.align 8
	.long	rzuW_srt-(sB8l_info)+8
	.long	0
	.quad	132
	.quad	4294967328
sB8l_info:
.LcBa0:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	movq $szHM_info,16(%rbp)
	addq $16,%rbp
	jmp EngineziModelziModelLoader_getThem3_info
	.size sB8l_info, .-sB8l_info
.text
	.align 8
	.long	rzuW_srt-(szHK_info)+8
	.long	0
	.quad	132
	.quad	4294967328
szHK_info:
.LcBa3:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,32(%rbp)
	movq $sB8l_info,0(%rbp)
	jmp EngineziModelziModelLoader_faceNormIndices_info
	.size szHK_info, .-szHK_info
.text
	.align 8
	.long	rzuW_srt-(sB8m_info)+0
	.long	0
	.quad	4
	.quad	12884901920
sB8m_info:
.LcBa6:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 16(%rbp),%rsi
	movq $szHK_info,0(%rbp)
	jmp EngineziModelziModelLoader_getThem2_info
	.size sB8m_info, .-sB8m_info
.text
	.align 8
	.long	rzuW_srt-(szHI_info)+0
	.long	0
	.quad	260
	.quad	12884901920
szHI_info:
.LcBa9:
	incq KNOWN_CALL_ctr
	movq %rbx,24(%rbp)
	movq 32(%rbp),%r14
	movq $sB8m_info,0(%rbp)
	jmp EngineziModelziModelLoader_faceTexIndices_info
	.size szHI_info, .-szHI_info
.text
	.align 8
	.long	rzuW_srt-(sB8n_info)+0
	.long	0
	.quad	4
	.quad	12884901920
sB8n_info:
.LcBac:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 24(%rbp),%rsi
	movq $szHI_info,0(%rbp)
	jmp EngineziModelziModelLoader_getThem3_info
	.size sB8n_info, .-sB8n_info
.text
	.align 8
	.long	rzuW_srt-(rzuW_info)+0
	.long	0
	.quad	17179869205
	.quad	0
	.quad	12884901903
rzuW_info:
.LcBaf:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBah
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuW_ct
	je .LcBai
.LcBaj:
	incq rzuW_ct+40
	incq KNOWN_CALL_ctr
	movq %rsi,-32(%rbp)
	movq %rdi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %r8,-8(%rbp)
	movq %r8,%r14
	movq $sB8n_info,-40(%rbp)
	addq $-40,%rbp
	jmp EngineziModelziModelLoader_faceVertIndices_info
.LcBah:
	movl $rzuW_closure,%ebx
	jmp *-8(%r13)
.LcBai:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuW_ct+56
	movq $rzuW_ct,ticky_entry_ctrs
	movq $1,rzuW_ct
	jmp .LcBaj
	.size rzuW_info, .-rzuW_info
.section .data
	.align 8
.align 1
rzuX_srt:
	.quad	rzuW_closure
.data
	.align 8
.align 1
rzuX_closure:
	.quad	rzuX_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzuX_srt-(rzuX_info)+0
	.long	0
	.quad	0
	.quad	4294967318
rzuX_info:
.LcBay:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBaA
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcBaC
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
	je .LcBaD
.LcBaE:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r14d
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%esi
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%edi
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r8d
	addq $-16,%rbp
	jmp rzuW_info
.LcBaC:
	movq $16,192(%r13)
.LcBaA:
	jmp *-16(%r13)
.LcBaD:
	jmp *(%rbx)
	.size rzuX_info, .-rzuX_info
.section .data
	.align 8
.align 1
rzuY_srt:
	.quad	base_DataziMaybe_fromJust1_closure
	.quad	rzuY_closure
.data
	.align 8
.align 1
rzuY_closure:
	.quad	rzuY_info
	.quad	0
.section .rodata
	.align 8
.align 1
cBbk_str:
	.byte	103
	.byte	111
	.byte	50
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	122
	.byte	117
	.byte	89
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cBbn_str:
	.byte	76
	.byte	76
	.byte	0
.data
	.align 8
.align 1
rzuY_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cBbk_str
	.quad	cBbn_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rzuY_srt-(sBaN_info)+8
	.long	0
	.quad	2
	.quad	4294967315
sBaN_info:
.LcBbI:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBbK
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp rzuY_info
.LcBbK:
	jmp *-16(%r13)
	.size sBaN_info, .-sBaN_info
.text
	.align 8
	.long	rzuY_srt-(sBaU_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sBaU_info:
.LcBbY:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBbZ
	movl $base_DataziMaybe_fromJust1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcBbZ:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sBaU_info, .-sBaU_info
.text
	.align 8
	.long	rzuY_srt-(sBaV_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sBaV_info:
.LcBc6:
	movq 39(%rbx),%rbx
	movq $sBaU_info,0(%rbp)
	testq $7,%rbx
	jne sBaU_info
	jmp *(%rbx)
	.size sBaV_info, .-sBaV_info
.text
	.align 8
	.long	rzuY_srt-(szIi_info)+0
	.long	0
	.quad	1
	.quad	4294967313
szIi_info:
.LcBce:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBcg
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sBaV_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sBaV_info
	jmp *(%rbx)
.LcBcg:
	jmp *-16(%r13)
	.size szIi_info, .-szIi_info
.text
	.align 8
	.long	rzuY_srt-(sBaM_info)+0
	.long	0
	.quad	2
	.quad	12884901920
sBaM_info:
.LcBcn:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBco
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
.LcBco:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBcs
	addq $13,rzuY_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $sBaN_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 14(%rbx),%rax
	movq %rax,-72(%r12)
	movq $szIi_info,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-40(%r12)
	leaq -64(%r12),%rax
	movq %rax,-32(%r12)
	movq 6(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	leaq -96(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.LcBcs:
	movq $104,192(%r13)
.LcBcq:
	jmp *-16(%r13)
	.size sBaM_info, .-sBaM_info
.text
	.align 8
	.long	rzuY_srt-(sBaL_info)+0
	.long	0
	.quad	1
	.quad	12884901920
sBaL_info:
.LcBcH:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBcI
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcBcI:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sBaM_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sBaM_info
	jmp *(%rbx)
	.size sBaL_info, .-sBaL_info
.text
	.align 8
	.long	rzuY_srt-(rzuY_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	12884901903
rzuY_info:
.LcBcV:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBcX
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rzuY_ct
	je .LcBcY
.LcBcZ:
	incq rzuY_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sBaL_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sBaL_info
	jmp *(%rbx)
.LcBcX:
	movl $rzuY_closure,%ebx
	jmp *-8(%r13)
.LcBcY:
	movq ticky_entry_ctrs,%rax
	movq %rax,rzuY_ct+56
	movq $rzuY_ct,ticky_entry_ctrs
	movq $1,rzuY_ct
	jmp .LcBcZ
	.size rzuY_info, .-rzuY_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObjModel1_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	base_GHCziList_tail1_closure
	.quad	base_GHCziIOziHandleziFD_openFile1_closure
	.quad	bytestringzm0zi10zi0zi2_DataziByteString_getContents2_closure
	.quad	EngineziModelziModel_createModel1_closure
	.quad	base_GHCziIOziHandle_hSetBinaryMode1_closure
	.quad	rx8N_closure
	.quad	rzu0_closure
	.quad	rzu4_closure
	.quad	rzub_closure
	.quad	rzue_closure
	.quad	rzug_closure
	.quad	rzui_closure
	.quad	rzuk_closure
	.quad	rzuy_closure
	.quad	rzuA_closure
	.quad	rzuK_closure
	.quad	base_DataziMaybe_fromJust1_closure
	.quad	rzuW_closure
	.quad	rzuX_closure
	.quad	rzuY_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObjModel1_closure
.type EngineziModelziModelLoader_loadObjModel1_closure, @object
EngineziModelziModelLoader_loadObjModel1_closure:
	.quad	EngineziModelziModelLoader_loadObjModel1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cBuN_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
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
	.byte	118
	.byte	114
	.byte	51
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cBuP_str:
	.byte	83
	.byte	76
	.byte	76
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObjModel1_ct
.type EngineziModelziModelLoader_loadObjModel1_ct, @object
EngineziModelziModelLoader_loadObjModel1_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cBuN_str
	.quad	cBuP_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cBuS_str:
	.byte	36
	.byte	119
	.byte	108
	.byte	111
	.byte	111
	.byte	112
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	74
	.byte	75
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cBuU_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
szJK_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cBuS_str
	.quad	cBuU_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901889
	.quad	16
szJA_info:
.LcBv3:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBv5
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcBv7
	addq $2,szJK_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq 32(%rbx),%rax
	movq 24(%rbx),%rcx
	addq (%rax),%rcx
	movq 40(%rbx),%rax
	subq %rcx,%rax
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $-16,%rbp
	jmp *0(%rbp)
.LcBv7:
	movq $16,192(%r13)
.LcBv5:
	jmp *-16(%r13)
	.size szJA_info, .-szJA_info
.text
	.align 8
	.quad	1
	.quad	32
sBeN_info:
.LcBvj:
	movq 7(%rbx),%rax
	leaq 1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	addq $16,%rbp
	jmp szJK_info
	.size sBeN_info, .-sBeN_info
.text
	.align 8
	.quad	2
	.quad	19
sBda_info:
.LcBvp:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBvr
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sBeN_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sBeN_info
	jmp *(%rbx)
.LcBvr:
	jmp *-16(%r13)
	.size sBda_info, .-sBda_info
.text
	.align 8
	.quad	900
	.quad	32
sBeO_info:
.LcBvB:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBvH
	addq $5,szJK_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq 7(%rbx),%rbx
	subq 16(%rbp),%rbx
	movq 24(%rbp),%rcx
	addq 16(%rbp),%rcx
	incq RET_NEW_ctr
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq %rcx,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBvH:
	movq $40,192(%r13)
.LcBvF:
	jmp *-16(%r13)
	.size sBeO_info, .-sBeO_info
.text
	.align 8
	.quad	12884901890
	.quad	16
sBdb_info:
.LcBvQ:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBvS
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sBeO_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sBeO_info
	jmp *(%rbx)
.LcBvS:
	jmp *-16(%r13)
	.size sBdb_info, .-sBdb_info
.text
	.align 8
	.quad	4294967300
	.quad	12884901889
	.quad	9
szJK_info:
.LcBw1:
	addq $160,%r12
	cmpq 144(%r13),%r12
	ja .LcBw5
	addq $20,szJK_ct+48
	incq ALLOC_HEAP_ctr
	addq $20,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szJK_ct
	je .LcBw6
.LcBw7:
	incq szJK_ct+40
	movq 31(%rbx),%rdx
	subq %r14,%rdx
	movq 23(%rbx),%rax
	addq %r14,%rax
	movq 15(%rbx),%rdi
	addq %rax,%rdi
	movl $10,%esi
	subq $8,%rsp
	movl $0,%eax
	call memchr
	addq $8,%rsp
	testq %rax,%rax
	je .LcBw9
	movq $szJA_info,-152(%r12)
	movq 7(%rbx),%rcx
	movq %rcx,-136(%r12)
	movq 15(%rbx),%rcx
	movq %rcx,-128(%r12)
	movq 23(%rbx),%rcx
	movq %rcx,-120(%r12)
	movq %rax,-112(%r12)
	movq $sBda_info,-104(%r12)
	leaq -152(%r12),%rax
	movq %rax,-88(%r12)
	movq %rbx,-80(%r12)
	movq $sBdb_info,-72(%r12)
	movq 7(%rbx),%rax
	movq %rax,-56(%r12)
	leaq -152(%r12),%rax
	movq %rax,-48(%r12)
	movq 15(%rbx),%rax
	movq %rax,-40(%r12)
	movq 23(%rbx),%rax
	movq %rax,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -72(%r12),%rax
	movq %rax,-8(%r12)
	leaq -104(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcBw5:
	movq $160,192(%r13)
.LcBw3:
	jmp *-8(%r13)
.LcBw6:
	movq ticky_entry_ctrs,%rax
	movq %rax,szJK_ct+56
	movq $szJK_ct,ticky_entry_ctrs
	movq $1,szJK_ct
	jmp .LcBw7
.LcBw9:
	movq 31(%rbx),%rax
	subq %r14,%rax
	movq 23(%rbx),%rcx
	addq %r14,%rcx
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-152(%r12)
	movq 7(%rbx),%rdx
	movq %rdx,-144(%r12)
	movq 15(%rbx),%rbx
	movq %rbx,-136(%r12)
	movq %rcx,-128(%r12)
	movq %rax,-120(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-96(%r12)
	leaq -110(%r12),%rbx
	addq $-96,%r12
	addq $-12,szJK_ct+48
	incq ALLOC_HEAP_ctr
	addq $-12,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size szJK_info, .-szJK_info
.section .rodata
	.align 8
.align 1
cBwv_str:
	.byte	103
	.byte	111
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	75
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cBwx_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
szKl_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cBwv_str
	.quad	cBwx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	2
	.quad	19
sBdN_info:
.LcBx1:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBx3
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcBx3:
	jmp *-16(%r13)
	.size sBdN_info, .-sBdN_info
.text
	.align 8
	.quad	1
	.quad	32
sBeY_info:
.LcBx7:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcBxb
	addq $9,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $sBdN_info,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 31(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 23(%rbx),%rax
	movq %rax,-8(%r12)
	leaq -64(%r12),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcBxb:
	movq $72,192(%r13)
.LcBx9:
	jmp *-16(%r13)
	.size sBeY_info, .-sBeY_info
.text
	.align 8
	.quad	1
	.quad	32
sBeU_info:
.LcBxm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBxn
	movq 8(%rbp),%rbx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcBxn:
	movq 8(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sBeY_info,0(%rbp)
	testq $7,%rbx
	jne sBeY_info
	jmp *(%rbx)
	.size sBeU_info, .-sBeU_info
.text
	.align 8
	.quad	1
	.quad	32
sBeZ_info:
.LcBxE:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcBxK
	addq $8,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 23(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	leaq -54(%r12),%rax
	movq %rax,-8(%r12)
	movq 31(%rbx),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcBxK:
	movq $64,192(%r13)
.LcBxI:
	jmp *-16(%r13)
	.size sBeZ_info, .-sBeZ_info
.text
	.align 8
	.quad	388
	.quad	32
sBeV_info:
.LcBxV:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBxW
	movq 8(%rbp),%rbx
	movq $sBeU_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBeU_info
	jmp *(%rbx)
.LcBxW:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBeZ_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBeZ_info
	jmp *(%rbx)
	.size sBeV_info, .-sBeV_info
.text
	.align 8
	.quad	1
	.quad	32
sBf0_info:
.LcByf:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcByl
	addq $8,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 15(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	leaq -54(%r12),%rax
	movq %rax,-16(%r12)
	movq 23(%rbx),%rax
	movq %rax,-8(%r12)
	movq 31(%rbx),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcByl:
	movq $64,192(%r13)
.LcByj:
	jmp *-16(%r13)
	.size sBf0_info, .-sBf0_info
.text
	.align 8
	.quad	260
	.quad	32
sBeW_info:
.LcByw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcByx
	movq 16(%rbp),%rbx
	movq $sBeV_info,0(%rbp)
	testq $7,%rbx
	jne sBeV_info
	jmp *(%rbx)
.LcByx:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBf0_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBf0_info
	jmp *(%rbx)
	.size sBeW_info, .-sBeW_info
.text
	.align 8
	.quad	1
	.quad	32
sBf1_info:
.LcByQ:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcByW
	addq $8,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	leaq -54(%r12),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 23(%rbx),%rax
	movq %rax,-8(%r12)
	movq 31(%rbx),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcByW:
	movq $64,192(%r13)
.LcByU:
	jmp *-16(%r13)
	.size sBf1_info, .-sBf1_info
.text
	.align 8
	.quad	4
	.quad	32
sBeX_info:
.LcBz7:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBz8
	movq 24(%rbp),%rbx
	movq $sBeW_info,0(%rbp)
	testq $7,%rbx
	jne sBeW_info
	jmp *(%rbx)
.LcBz8:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBf1_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBf1_info
	jmp *(%rbx)
	.size sBeX_info, .-sBeX_info
.text
	.align 8
	.quad	965
	.quad	32
szLo_info:
.LcBzn:
	movq %rdi,16(%rbp)
	movq %rsi,24(%rbp)
	movq %r14,32(%rbp)
	movq $sBeX_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBeX_info
	jmp *(%rbx)
	.size szLo_info, .-szLo_info
.section .rodata
	.align 8
.align 1
cBzs_str:
	.byte	36
	.byte	119
	.byte	36
	.byte	106
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	77
	.byte	73
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cBzu_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
szMI_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cBzs_str
	.quad	cBzu_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cBzx_str:
	.byte	36
	.byte	119
	.byte	108
	.byte	111
	.byte	111
	.byte	112
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	77
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cBzz_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
szMq_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cBzx_str
	.quad	cBzz_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901889
	.quad	16
szMg_info:
.LcBzI:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBzK
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcBzM
	addq $2,szMq_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq 32(%rbx),%rax
	movq 24(%rbx),%rcx
	addq (%rax),%rcx
	movq 40(%rbx),%rax
	subq %rcx,%rax
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $-16,%rbp
	jmp *0(%rbp)
.LcBzM:
	movq $16,192(%r13)
.LcBzK:
	jmp *-16(%r13)
	.size szMg_info, .-szMg_info
.text
	.align 8
	.quad	1
	.quad	32
sBf9_info:
.LcBzY:
	movq 7(%rbx),%rax
	leaq 1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	addq $16,%rbp
	jmp szMq_info
	.size sBf9_info, .-sBf9_info
.text
	.align 8
	.quad	2
	.quad	19
sBdj_info:
.LcBA4:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBA6
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sBf9_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sBf9_info
	jmp *(%rbx)
.LcBA6:
	jmp *-16(%r13)
	.size sBdj_info, .-sBdj_info
.text
	.align 8
	.quad	900
	.quad	32
sBfa_info:
.LcBAg:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBAm
	addq $5,szMq_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq 7(%rbx),%rbx
	subq 16(%rbp),%rbx
	movq 24(%rbp),%rcx
	addq 16(%rbp),%rcx
	incq RET_NEW_ctr
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq %rcx,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBAm:
	movq $40,192(%r13)
.LcBAk:
	jmp *-16(%r13)
	.size sBfa_info, .-sBfa_info
.text
	.align 8
	.quad	12884901890
	.quad	16
sBdk_info:
.LcBAv:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBAx
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sBfa_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sBfa_info
	jmp *(%rbx)
.LcBAx:
	jmp *-16(%r13)
	.size sBdk_info, .-sBdk_info
.text
	.align 8
	.quad	4294967300
	.quad	12884901889
	.quad	9
szMq_info:
.LcBAG:
	addq $160,%r12
	cmpq 144(%r13),%r12
	ja .LcBAK
	addq $20,szMq_ct+48
	incq ALLOC_HEAP_ctr
	addq $20,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szMq_ct
	je .LcBAL
.LcBAM:
	incq szMq_ct+40
	movq 31(%rbx),%rdx
	subq %r14,%rdx
	movq 23(%rbx),%rax
	addq %r14,%rax
	movq 15(%rbx),%rdi
	addq %rax,%rdi
	movl $32,%esi
	subq $8,%rsp
	movl $0,%eax
	call memchr
	addq $8,%rsp
	testq %rax,%rax
	je .LcBAO
	movq $szMg_info,-152(%r12)
	movq 7(%rbx),%rcx
	movq %rcx,-136(%r12)
	movq 15(%rbx),%rcx
	movq %rcx,-128(%r12)
	movq 23(%rbx),%rcx
	movq %rcx,-120(%r12)
	movq %rax,-112(%r12)
	movq $sBdj_info,-104(%r12)
	leaq -152(%r12),%rax
	movq %rax,-88(%r12)
	movq %rbx,-80(%r12)
	movq $sBdk_info,-72(%r12)
	movq 7(%rbx),%rax
	movq %rax,-56(%r12)
	leaq -152(%r12),%rax
	movq %rax,-48(%r12)
	movq 15(%rbx),%rax
	movq %rax,-40(%r12)
	movq 23(%rbx),%rax
	movq %rax,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -72(%r12),%rax
	movq %rax,-8(%r12)
	leaq -104(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcBAK:
	movq $160,192(%r13)
.LcBAI:
	jmp *-8(%r13)
.LcBAL:
	movq ticky_entry_ctrs,%rax
	movq %rax,szMq_ct+56
	movq $szMq_ct,ticky_entry_ctrs
	movq $1,szMq_ct
	jmp .LcBAM
.LcBAO:
	movq 31(%rbx),%rax
	subq %r14,%rax
	movq 23(%rbx),%rcx
	addq %r14,%rcx
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-152(%r12)
	movq 7(%rbx),%rdx
	movq %rdx,-144(%r12)
	movq 15(%rbx),%rbx
	movq %rbx,-136(%r12)
	movq %rcx,-128(%r12)
	movq %rax,-120(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-96(%r12)
	leaq -110(%r12),%rbx
	addq $-96,%r12
	addq $-12,szMq_ct+48
	incq ALLOC_HEAP_ctr
	addq $-12,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size szMq_info, .-szMq_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfb_info)+8
	.long	0
	.quad	0
	.quad	1103806595104
sBfb_info:
.LcBBf:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBBg
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcBBg:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%r14
	addq $8,%rbp
	jmp rzub_info
	.size sBfb_info, .-sBfb_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szMF_info)+8
	.long	0
	.quad	12884901889
	.quad	1103806595088
szMF_info:
.LcBBo:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBBq
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBBs
	addq $5,szMI_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rcx
	testq %rcx,%rcx
	jne .LcBBt
	movl $base_GHCziList_tail1_closure,%ebx
	addq $-16,%rbp
	addq $-40,%r12
	addq $-5,szMI_ct+48
	incq ALLOC_HEAP_ctr
	addq $-5,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
.LcBBs:
	movq $40,192(%r13)
.LcBBq:
	jmp *-16(%r13)
.LcBBt:
	movq $szMq_info,-32(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 32(%rbx),%rax
	movq %rax,-16(%r12)
	movq 40(%rbx),%rax
	movq %rax,-8(%r12)
	movq %rcx,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	xorl %r14d,%r14d
	movq $sBfb_info,-24(%rbp)
	addq $-24,%rbp
	jmp szMq_info
	.size szMF_info, .-szMF_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szMI_info)+8
	.long	0
	.quad	4294967299
	.quad	12884901889
	.quad	1103806595081
szMI_info:
.LcBBB:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcBBF
	addq $8,szMI_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szMI_ct
	je .LcBBG
.LcBBH:
	incq szMI_ct+40
	movq $szMF_info,-56(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	movq 15(%rbx),%rax
	movq %rax,-32(%r12)
	movq 23(%rbx),%rax
	movq %rax,-24(%r12)
	movq 31(%rbx),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -56(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	movl $base_DataziMaybe_Nothing_closure+1,%r14d
	movl $base_DataziMaybe_Nothing_closure+1,%esi
	leaq -6(%r12),%rdi
	jmp *0(%rbp)
.LcBBF:
	movq $64,192(%r13)
.LcBBD:
	jmp *-8(%r13)
.LcBBG:
	movq ticky_entry_ctrs,%rax
	movq %rax,szMI_ct+56
	movq $szMI_ct,ticky_entry_ctrs
	movq $1,szMI_ct
	jmp .LcBBH
	.size szMI_info, .-szMI_info
.text
	.align 8
	.quad	0
	.quad	32
sBfg_info:
.LcBC9:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBCe
	addq $5,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq %r14,-16(%r12)
	movq %rsi,-8(%r12)
	movq %rdi,0(%r12)
	leaq -31(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBCe:
	movq $40,192(%r13)
.LcBCc:
	movq $240,64(%r13)
	jmp stg_gc_ut
	.size sBfg_info, .-sBfg_info
.text
	.align 8
	.quad	1
	.quad	32
sBfc_info:
.LcBCj:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcBCk
	movl $rzuc_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcBCk:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	movq $sBfg_info,8(%rbp)
	addq $8,%rbp
	jmp szMI_info
	.size sBfc_info, .-sBfc_info
.text
	.align 8
	.quad	132
	.quad	32
szN5_info:
.LcBCq:
	movq $sBfc_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBfc_info
	jmp *(%rbx)
	.size szN5_info, .-szN5_info
.text
	.align 8
	.quad	0
	.quad	32
sBfi_info:
.LcBCz:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBCE
	addq $5,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq %r14,-16(%r12)
	movq %rsi,-8(%r12)
	movq %rdi,0(%r12)
	leaq -31(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBCE:
	movq $40,192(%r13)
.LcBCC:
	movq $240,64(%r13)
	jmp stg_gc_ut
	.size sBfi_info, .-sBfi_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBf6_info)+8
	.long	0
	.quad	900
	.quad	1103806595104
sBf6_info:
.LcBCH:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBCL
	addq $5,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $szMI_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	movq 31(%rbx),%rdx
	testq %rdx,%rdx
	jne .LcBCN
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	movq $sBfi_info,32(%rbp)
	addq $32,%rbp
	jmp szMI_info
.LcBCL:
	movq $40,192(%r13)
.LcBCJ:
	jmp *-16(%r13)
.LcBCN:
	cmpq %rdx,32(%rbp)
	jl .LcBCP
	movq 24(%rbp),%rsi
	addq 16(%rbp),%rsi
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rdi
	addq (%rax),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	movq %rax,%rcx
	leaq -31(%r12),%rax
	movq %rax,32(%rbp)
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movslq %ecx,%rax
	testq %rax,%rax
	jne .LcBCS
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szN5_info,0(%rbp)
	jmp szN5_info
.LcBCP:
	movl $rzuc_closure+1,%ebx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBCS:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szN5_info,0(%rbp)
	jmp szN5_info
	.size sBf6_info, .-sBf6_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szNp_info)+8
	.long	0
	.quad	900
	.quad	3302829850656
szNp_info:
.LcBD5:
	movl $rzue_closure,%ebx
	movq $sBf6_info,0(%rbp)
	testq $7,%rbx
	jne sBf6_info
	jmp *(%rbx)
	.size szNp_info, .-szNp_info
.text
	.align 8
	.quad	12884901889
	.quad	16
sBdw_info:
.LcBDx:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBDz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r9d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_zdwunpackAppendCharsLazzy_info
.LcBDz:
	jmp *-16(%r13)
	.size sBdw_info, .-sBdw_info
.text
	.align 8
	.quad	0
	.quad	32
sBfn_info:
.LcBDF:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBDK
	addq $3,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBDK:
	movq $24,192(%r13)
.LcBDI:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sBfn_info, .-sBfn_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szNT_info)+56
	.long	0
	.quad	12884901889
	.quad	4294967312
szNT_info:
.LcBDO:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBDQ
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcBDS
	addq $6,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sBdw_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -40(%r12),%r14
	movq $sBfn_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu0_info
.LcBDS:
	movq $48,192(%r13)
.LcBDQ:
	jmp *-16(%r13)
	.size szNT_info, .-szNT_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfj_info)+8
	.long	0
	.quad	900
	.quad	3577707757600
sBfj_info:
.LcBE2:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBE3
	jmp szNp_info
.LcBE3:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBE7
	addq $13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $szNT_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-16(%r12)
	leaq -46(%r12),%rax
	movq %rax,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBE7:
	movq $104,192(%r13)
.LcBE5:
	jmp *-16(%r13)
	.size sBfj_info, .-sBfj_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szNK_info)+8
	.long	0
	.quad	1797
	.quad	3577707757600
szNK_info:
.LcBEj:
	movq $sBfj_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBfj_info
	jmp *(%rbx)
	.size szNK_info, .-szNK_info
.text
	.align 8
	.quad	12884901889
	.quad	16
sBdH_info:
.LcBEv:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBEx
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r9d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_zdwunpackAppendCharsLazzy_info
.LcBEx:
	jmp *-16(%r13)
	.size sBdH_info, .-sBdH_info
.text
	.align 8
	.quad	0
	.quad	32
sBfp_info:
.LcBED:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBEI
	addq $3,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBEI:
	movq $24,192(%r13)
.LcBEG:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sBfp_info, .-sBfp_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szO2_info)+56
	.long	0
	.quad	12884901889
	.quad	4294967312
szO2_info:
.LcBEM:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBEO
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcBEQ
	addq $6,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sBdH_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -40(%r12),%r14
	movq $sBfp_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu0_info
.LcBEQ:
	movq $48,192(%r13)
.LcBEO:
	jmp *-16(%r13)
	.size szO2_info, .-szO2_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBf7_info)+8
	.long	0
	.quad	900
	.quad	3577707757600
sBf7_info:
.LcBEY:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBF2
	addq $13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq 31(%rbx),%rdx
	testq %rdx,%rdx
	jne .LcBF4
	movq $szO2_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-16(%r12)
	leaq -46(%r12),%rax
	movq %rax,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBF2:
	movq $104,192(%r13)
.LcBF0:
	jmp *-16(%r13)
.LcBF4:
	cmpq %rdx,32(%rbp)
	jl .LcBF6
	movq 24(%rbp),%rsi
	addq 16(%rbp),%rsi
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rdi
	addq (%rax),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	movq %rax,%rcx
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movslq %ecx,%rax
	testq %rax,%rax
	jne .LcBF9
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szNK_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szNK_info
.LcBF6:
	addq $-104,%r12
	addq $-13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szNp_info
.LcBF9:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szNK_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szNK_info
	.size sBf7_info, .-sBf7_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szO4_info)+8
	.long	0
	.quad	900
	.quad	7975754268704
szO4_info:
.LcBFn:
	movl $rzug_closure,%ebx
	movq $sBf7_info,0(%rbp)
	testq $7,%rbx
	jne sBf7_info
	jmp *(%rbx)
	.size szO4_info, .-szO4_info
.text
	.align 8
	.quad	0
	.quad	32
sBfu_info:
.LcBFO:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBFT
	addq $4,szKl_ct+48
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
.LcBFT:
	movq $32,192(%r13)
.LcBFR:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBfu_info, .-sBfu_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szOz_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szOz_info:
.LcBFX:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBFZ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBfu_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBFZ:
	jmp *-16(%r13)
	.size szOz_info, .-szOz_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfq_info)+8
	.long	0
	.quad	900
	.quad	8525510082592
sBfq_info:
.LcBG5:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBG6
	jmp szO4_info
.LcBG6:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBGa
	addq $13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $szOz_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	leaq -46(%r12),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBGa:
	movq $104,192(%r13)
.LcBG8:
	jmp *-16(%r13)
	.size sBfq_info, .-sBfq_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szOp_info)+8
	.long	0
	.quad	1797
	.quad	8525510082592
szOp_info:
.LcBGm:
	movq $sBfq_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBfq_info
	jmp *(%rbx)
	.size szOp_info, .-szOp_info
.text
	.align 8
	.quad	0
	.quad	32
sBfw_info:
.LcBGx:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBGC
	addq $4,szKl_ct+48
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
.LcBGC:
	movq $32,192(%r13)
.LcBGA:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBfw_info, .-sBfw_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szOJ_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szOJ_info:
.LcBGG:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBGI
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBfw_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBGI:
	jmp *-16(%r13)
	.size szOJ_info, .-szOJ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBf8_info)+8
	.long	0
	.quad	900
	.quad	8525510082592
sBf8_info:
.LcBGM:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBGQ
	addq $13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq 31(%rbx),%rdx
	testq %rdx,%rdx
	jne .LcBGS
	movq $szOJ_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	leaq -46(%r12),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBGQ:
	movq $104,192(%r13)
.LcBGO:
	jmp *-16(%r13)
.LcBGS:
	cmpq %rdx,32(%rbp)
	jl .LcBGU
	movq 24(%rbp),%rsi
	addq 16(%rbp),%rsi
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rdi
	addq (%rax),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	movq %rax,%rcx
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movslq %ecx,%rax
	testq %rax,%rax
	jne .LcBGX
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szOp_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szOp_info
.LcBGU:
	addq $-104,%r12
	addq $-13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szO4_info
.LcBGX:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szOp_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szOp_info
	.size sBf8_info, .-sBf8_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szOL_info)+8
	.long	0
	.quad	12884901889
	.quad	17321603104784
szOL_info:
.LcBHd:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBHf
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movl $rzui_closure,%ebx
	movq $sBf8_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sBf8_info
	jmp *(%rbx)
.LcBHf:
	jmp *-16(%r13)
	.size szOL_info, .-szOL_info
.text
	.align 8
	.quad	1
	.quad	32
sBfx_info:
.LcBHG:
	movq 15(%rbx),%r14
	movq 23(%rbx),%rsi
	movq 31(%rbx),%rdi
	movq 7(%rbx),%rbx
	addq $-32,%rbp
	jmp szLo_info
	.size sBfx_info, .-sBfx_info
.text
	.align 8
	.quad	0
	.quad	32
sBfC_info:
.LcBHT:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBHY
	addq $4,szKl_ct+48
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
.LcBHY:
	movq $32,192(%r13)
.LcBHW:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBfC_info, .-sBfC_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szPv_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szPv_info:
.LcBI2:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBI4
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBfC_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBI4:
	jmp *-16(%r13)
	.size szPv_info, .-szPv_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfD_info)+64
	.long	0
	.quad	3974
	.quad	4294967328
sBfD_info:
.LcBI8:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .LcBIc
	addq $14,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	movq $szPv_info,-104(%r12)
	movq 8(%rbp),%rax
	movq %rax,-88(%r12)
	movq 40(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	leaq -104(%r12),%rax
	movq %rax,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	leaq -54(%r12),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 23(%rbx),%rax
	movq %rax,-8(%r12)
	movq 31(%rbx),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $56,%rbp
	jmp *0(%rbp)
.LcBIc:
	movq $112,192(%r13)
.LcBIa:
	jmp *-16(%r13)
	.size sBfD_info, .-sBfD_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfy_info)+64
	.long	0
	.quad	3847
	.quad	4294967328
sBfy_info:
.LcBIr:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcBIs
	movq 8(%rbp),%rbx
	movq $sBfx_info,48(%rbp)
	addq $48,%rbp
	testq $7,%rbx
	jne sBfx_info
	jmp *(%rbx)
.LcBIs:
	movq 56(%rbp),%rbx
	movq $sBfD_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBfD_info
	jmp *(%rbx)
	.size sBfy_info, .-sBfy_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szP6_info)+64
	.long	0
	.quad	3591
	.quad	4294967328
szP6_info:
.LcBIE:
	movq $sBfy_info,0(%rbp)
	testq $7,%rbx
	jne sBfy_info
	jmp *(%rbx)
	.size szP6_info, .-szP6_info
.text
	.align 8
	.quad	1
	.quad	32
sBfF_info:
.LcBIN:
	movq 15(%rbx),%r14
	movq 23(%rbx),%rsi
	movq 31(%rbx),%rdi
	movq 7(%rbx),%rbx
	addq $-32,%rbp
	jmp szLo_info
	.size sBfF_info, .-sBfF_info
.text
	.align 8
	.quad	0
	.quad	32
sBfG_info:
.LcBIZ:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBJ4
	addq $4,szKl_ct+48
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
.LcBJ4:
	movq $32,192(%r13)
.LcBJ2:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBfG_info, .-sBfG_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szPX_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szPX_info:
.LcBJ8:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBJa
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBfG_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBJa:
	jmp *-16(%r13)
	.size szPX_info, .-szPX_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfH_info)+64
	.long	0
	.quad	900
	.quad	4294967328
sBfH_info:
.LcBJe:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .LcBJi
	addq $14,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	movq $szPX_info,-104(%r12)
	movq 8(%rbp),%rax
	movq %rax,-88(%r12)
	movq 32(%rbp),%rax
	movq %rax,-80(%r12)
	movq 24(%rbp),%rax
	movq %rax,-72(%r12)
	movq 16(%rbp),%rax
	movq %rax,-64(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	leaq -104(%r12),%rax
	movq %rax,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	leaq -54(%r12),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 23(%rbx),%rax
	movq %rax,-8(%r12)
	movq 31(%rbx),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBJi:
	movq $112,192(%r13)
.LcBJg:
	jmp *-16(%r13)
	.size sBfH_info, .-sBfH_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeT_info)+8
	.long	0
	.quad	1798
	.quad	17321603104800
sBeT_info:
.LcBJv:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcBJz
	addq $10,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $stg_ap_2_upd_info,-72(%r12)
	movq 48(%rbp),%rax
	movq %rax,-56(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rdx
	testq %rdx,%rdx
	jne .LcBJB
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 15(%rbx),%rax
	movq %rax,40(%rbp)
	movq 31(%rbx),%rax
	movq %rax,48(%rbp)
	leaq -72(%r12),%rbx
	movq $sBfH_info,16(%rbp)
	addq $16,%rbp
	addq $-48,%r12
	addq $-6,szKl_ct+48
	incq ALLOC_HEAP_ctr
	addq $-6,ALLOC_HEAP_tot
	testq $7,%rbx
	jne sBfH_info
	jmp *(%rbx)
.LcBJz:
	movq $80,192(%r13)
.LcBJx:
	jmp *-16(%r13)
.LcBJB:
	leaq -72(%r12),%rax
	movq %rax,48(%rbp)
	movq $szOL_info,-40(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq 31(%rbx),%rax
	movq %rax,-16(%r12)
	movq 15(%rbx),%rax
	movq %rax,-8(%r12)
	movq 23(%rbx),%rax
	movq %rax,0(%r12)
	cmpq %rdx,31(%rbx)
	jl .LcBJD
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rsi
	addq (%rax),%rsi
	movq 32(%rbp),%rdi
	addq 24(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	movq 31(%rbx),%rcx
	movq %rcx,40(%rbp)
	movq 15(%rbx),%rcx
	movq %rcx,32(%rbp)
	movq 23(%rbx),%rcx
	movq %rcx,24(%rbp)
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	leaq -40(%r12),%rbx
	movq %rbx,0(%rbp)
	movslq %eax,%rax
	testq %rax,%rax
	jne .LcBJJ
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szP6_info,-8(%rbp)
	addq $-8,%rbp
	jmp szP6_info
.LcBJD:
	leaq -40(%r12),%rbx
	movq $sBfF_info,40(%rbp)
	addq $40,%rbp
	testq $7,%rbx
	jne sBfF_info
	jmp *(%rbx)
.LcBJJ:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szP6_info,-8(%rbp)
	addq $-8,%rbp
	jmp szP6_info
	.size sBeT_info, .-sBeT_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeQ_info)+8
	.long	0
	.quad	901
	.quad	17321603104800
sBeQ_info:
.LcBKb:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBKc
	movl $rzul_closure+1,%ebx
	addq $48,%rbp
	jmp *0(%rbp)
.LcBKc:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $sBeT_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sBeT_info
	jmp *(%rbx)
	.size sBeQ_info, .-sBeQ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szKl_info)+8
	.long	0
	.quad	4294967301
	.quad	12884901889
	.quad	17321603104777
szKl_info:
.LcBKm:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBKo
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szKl_ct
	je .LcBKp
.LcBKq:
	incq szKl_ct+40
	movq 7(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq %r14,%rbx
	movq $sBeQ_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne sBeQ_info
	jmp *(%rbx)
.LcBKo:
	jmp *-8(%r13)
.LcBKp:
	movq ticky_entry_ctrs,%rax
	movq %rax,szKl_ct+56
	movq $szKl_ct,ticky_entry_ctrs
	movq $1,szKl_ct
	jmp .LcBKq
	.size szKl_info, .-szKl_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szQ3_info)+8
	.long	0
	.quad	12884901890
	.quad	17321603104784
szQ3_info:
.LcBKD:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBKF
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBKH
	addq $5,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $szKl_info,-32(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 32(%rbx),%rax
	movq %rax,-16(%r12)
	movq 40(%rbx),%rax
	movq %rax,-8(%r12)
	movq 48(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 24(%rbx),%r14
	leaq -31(%r12),%rbx
	addq $-16,%rbp
	jmp szKl_info
.LcBKH:
	movq $40,192(%r13)
.LcBKF:
	jmp *-16(%r13)
	.size szQ3_info, .-szQ3_info
.section .rodata
	.align 8
.align 1
cBKO_str:
	.byte	36
	.byte	119
	.byte	36
	.byte	106
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	82
	.byte	111
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cBKQ_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
szRo_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cBKO_str
	.quad	cBKQ_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cBKT_str:
	.byte	36
	.byte	119
	.byte	108
	.byte	111
	.byte	111
	.byte	112
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	122
	.byte	82
	.byte	54
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
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cBKV_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
szR6_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cBKT_str
	.quad	cBKV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	12884901889
	.quad	16
szQW_info:
.LcBL4:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBL6
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcBL8
	addq $2,szR6_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq 32(%rbx),%rax
	movq 24(%rbx),%rcx
	addq (%rax),%rcx
	movq 40(%rbx),%rax
	subq %rcx,%rax
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $-16,%rbp
	jmp *0(%rbp)
.LcBL8:
	movq $16,192(%r13)
.LcBL6:
	jmp *-16(%r13)
	.size szQW_info, .-szQW_info
.text
	.align 8
	.quad	1
	.quad	32
sBfP_info:
.LcBLk:
	movq 7(%rbx),%rax
	leaq 1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	addq $16,%rbp
	jmp szR6_info
	.size sBfP_info, .-sBfP_info
.text
	.align 8
	.quad	2
	.quad	19
sBdS_info:
.LcBLq:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBLs
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $sBfP_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sBfP_info
	jmp *(%rbx)
.LcBLs:
	jmp *-16(%r13)
	.size sBdS_info, .-sBdS_info
.text
	.align 8
	.quad	900
	.quad	32
sBfQ_info:
.LcBLC:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBLI
	addq $5,szR6_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq 7(%rbx),%rbx
	subq 16(%rbp),%rbx
	movq 24(%rbp),%rcx
	addq 16(%rbp),%rcx
	incq RET_NEW_ctr
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq %rcx,-8(%r12)
	movq %rbx,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBLI:
	movq $40,192(%r13)
.LcBLG:
	jmp *-16(%r13)
	.size sBfQ_info, .-sBfQ_info
.text
	.align 8
	.quad	12884901890
	.quad	16
sBdT_info:
.LcBLR:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBLT
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sBfQ_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sBfQ_info
	jmp *(%rbx)
.LcBLT:
	jmp *-16(%r13)
	.size sBdT_info, .-sBdT_info
.text
	.align 8
	.quad	4294967300
	.quad	12884901889
	.quad	9
szR6_info:
.LcBM2:
	addq $160,%r12
	cmpq 144(%r13),%r12
	ja .LcBM6
	addq $20,szR6_ct+48
	incq ALLOC_HEAP_ctr
	addq $20,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szR6_ct
	je .LcBM7
.LcBM8:
	incq szR6_ct+40
	movq 31(%rbx),%rdx
	subq %r14,%rdx
	movq 23(%rbx),%rax
	addq %r14,%rax
	movq 15(%rbx),%rdi
	addq %rax,%rdi
	movl $32,%esi
	subq $8,%rsp
	movl $0,%eax
	call memchr
	addq $8,%rsp
	testq %rax,%rax
	je .LcBMa
	movq $szQW_info,-152(%r12)
	movq 7(%rbx),%rcx
	movq %rcx,-136(%r12)
	movq 15(%rbx),%rcx
	movq %rcx,-128(%r12)
	movq 23(%rbx),%rcx
	movq %rcx,-120(%r12)
	movq %rax,-112(%r12)
	movq $sBdS_info,-104(%r12)
	leaq -152(%r12),%rax
	movq %rax,-88(%r12)
	movq %rbx,-80(%r12)
	movq $sBdT_info,-72(%r12)
	movq 7(%rbx),%rax
	movq %rax,-56(%r12)
	leaq -152(%r12),%rax
	movq %rax,-48(%r12)
	movq 15(%rbx),%rax
	movq %rax,-40(%r12)
	movq 23(%rbx),%rax
	movq %rax,-32(%r12)
	movq %r14,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -72(%r12),%rax
	movq %rax,-8(%r12)
	leaq -104(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcBM6:
	movq $160,192(%r13)
.LcBM4:
	jmp *-8(%r13)
.LcBM7:
	movq ticky_entry_ctrs,%rax
	movq %rax,szR6_ct+56
	movq $szR6_ct,ticky_entry_ctrs
	movq $1,szR6_ct
	jmp .LcBM8
.LcBMa:
	movq 31(%rbx),%rax
	subq %r14,%rax
	movq 23(%rbx),%rcx
	addq %r14,%rcx
	movq $bytestringzm0zi10zi0zi2_DataziByteStringziInternal_PS_con_info,-152(%r12)
	movq 7(%rbx),%rdx
	movq %rdx,-144(%r12)
	movq 15(%rbx),%rbx
	movq %rbx,-136(%r12)
	movq %rcx,-128(%r12)
	movq %rax,-120(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-112(%r12)
	leaq -151(%r12),%rax
	movq %rax,-104(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-96(%r12)
	leaq -110(%r12),%rbx
	addq $-96,%r12
	addq $-12,szR6_ct+48
	incq ALLOC_HEAP_ctr
	addq $-12,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size szR6_info, .-szR6_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfR_info)+8
	.long	0
	.quad	0
	.quad	1103806595104
sBfR_info:
.LcBMB:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBMC
	movl $base_GHCziList_tail1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcBMC:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%r14
	addq $8,%rbp
	jmp rzub_info
	.size sBfR_info, .-sBfR_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szRl_info)+8
	.long	0
	.quad	12884901889
	.quad	1103806595088
szRl_info:
.LcBMK:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBMM
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBMO
	addq $5,szRo_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rcx
	testq %rcx,%rcx
	jne .LcBMP
	movl $base_GHCziList_tail1_closure,%ebx
	addq $-16,%rbp
	addq $-40,%r12
	addq $-5,szRo_ct+48
	incq ALLOC_HEAP_ctr
	addq $-5,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
.LcBMO:
	movq $40,192(%r13)
.LcBMM:
	jmp *-16(%r13)
.LcBMP:
	movq $szR6_info,-32(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 32(%rbx),%rax
	movq %rax,-16(%r12)
	movq 40(%rbx),%rax
	movq %rax,-8(%r12)
	movq %rcx,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	xorl %r14d,%r14d
	movq $sBfR_info,-24(%rbp)
	addq $-24,%rbp
	jmp szR6_info
	.size szRl_info, .-szRl_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szRo_info)+8
	.long	0
	.quad	4294967299
	.quad	12884901889
	.quad	1103806595081
szRo_info:
.LcBMX:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcBN1
	addq $8,szRo_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,szRo_ct
	je .LcBN2
.LcBN3:
	incq szRo_ct+40
	movq $szRl_info,-56(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	movq 15(%rbx),%rax
	movq %rax,-32(%r12)
	movq 23(%rbx),%rax
	movq %rax,-24(%r12)
	movq 31(%rbx),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -56(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	movl $base_DataziMaybe_Nothing_closure+1,%ebx
	movl $base_DataziMaybe_Nothing_closure+1,%r14d
	movl $base_DataziMaybe_Nothing_closure+1,%esi
	leaq -6(%r12),%rdi
	jmp *0(%rbp)
.LcBN1:
	movq $64,192(%r13)
.LcBMZ:
	jmp *-8(%r13)
.LcBN2:
	movq ticky_entry_ctrs,%rax
	movq %rax,szRo_ct+56
	movq $szRo_ct,ticky_entry_ctrs
	movq $1,szRo_ct
	jmp .LcBN3
	.size szRo_info, .-szRo_info
.text
	.align 8
	.quad	0
	.quad	32
sBfW_info:
.LcBNv:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBNA
	addq $5,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq %r14,-16(%r12)
	movq %rsi,-8(%r12)
	movq %rdi,0(%r12)
	leaq -31(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBNA:
	movq $40,192(%r13)
.LcBNy:
	movq $240,64(%r13)
	jmp stg_gc_ut
	.size sBfW_info, .-sBfW_info
.text
	.align 8
	.quad	1
	.quad	32
sBfS_info:
.LcBNF:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcBNG
	movl $rzuc_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.LcBNG:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%rbx
	movq $sBfW_info,8(%rbp)
	addq $8,%rbp
	jmp szRo_info
	.size sBfS_info, .-sBfS_info
.text
	.align 8
	.quad	132
	.quad	32
szRL_info:
.LcBNM:
	movq $sBfS_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBfS_info
	jmp *(%rbx)
	.size szRL_info, .-szRL_info
.text
	.align 8
	.quad	0
	.quad	32
sBfY_info:
.LcBNV:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBO0
	addq $5,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq %rbx,-24(%r12)
	movq %r14,-16(%r12)
	movq %rsi,-8(%r12)
	movq %rdi,0(%r12)
	leaq -31(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBO0:
	movq $40,192(%r13)
.LcBNY:
	movq $240,64(%r13)
	jmp stg_gc_ut
	.size sBfY_info, .-sBfY_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfM_info)+8
	.long	0
	.quad	900
	.quad	1103806595104
sBfM_info:
.LcBO3:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcBO7
	addq $5,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $szRo_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	movq 32(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	movq 31(%rbx),%rdx
	testq %rdx,%rdx
	jne .LcBO9
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	movq $sBfY_info,32(%rbp)
	addq $32,%rbp
	jmp szRo_info
.LcBO7:
	movq $40,192(%r13)
.LcBO5:
	jmp *-16(%r13)
.LcBO9:
	cmpq %rdx,32(%rbp)
	jl .LcBOb
	movq 24(%rbp),%rsi
	addq 16(%rbp),%rsi
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rdi
	addq (%rax),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	movq %rax,%rcx
	leaq -31(%r12),%rax
	movq %rax,32(%rbp)
	movq 7(%rbx),%rax
	movq %rax,24(%rbp)
	movslq %ecx,%rax
	testq %rax,%rax
	jne .LcBOe
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szRL_info,0(%rbp)
	jmp szRL_info
.LcBOb:
	movl $rzuc_closure+1,%ebx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBOe:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szRL_info,0(%rbp)
	jmp szRL_info
	.size sBfM_info, .-sBfM_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szS5_info)+8
	.long	0
	.quad	900
	.quad	3302829850656
szS5_info:
.LcBOr:
	movl $rzue_closure,%ebx
	movq $sBfM_info,0(%rbp)
	testq $7,%rbx
	jne sBfM_info
	jmp *(%rbx)
	.size szS5_info, .-szS5_info
.text
	.align 8
	.quad	12884901889
	.quad	16
sBe5_info:
.LcBOT:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBOV
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r9d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_zdwunpackAppendCharsLazzy_info
.LcBOV:
	jmp *-16(%r13)
	.size sBe5_info, .-sBe5_info
.text
	.align 8
	.quad	0
	.quad	32
sBg3_info:
.LcBP1:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBP6
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBP6:
	movq $24,192(%r13)
.LcBP4:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sBg3_info, .-sBg3_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szSz_info)+56
	.long	0
	.quad	12884901889
	.quad	4294967312
szSz_info:
.LcBPa:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBPc
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcBPe
	addq $6,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sBe5_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -40(%r12),%r14
	movq $sBg3_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu0_info
.LcBPe:
	movq $48,192(%r13)
.LcBPc:
	jmp *-16(%r13)
	.size szSz_info, .-szSz_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfZ_info)+8
	.long	0
	.quad	900
	.quad	3577707757600
sBfZ_info:
.LcBPo:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBPp
	jmp szS5_info
.LcBPp:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBPt
	addq $13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $szSz_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-16(%r12)
	leaq -46(%r12),%rax
	movq %rax,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBPt:
	movq $104,192(%r13)
.LcBPr:
	jmp *-16(%r13)
	.size sBfZ_info, .-sBfZ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szSq_info)+8
	.long	0
	.quad	1797
	.quad	3577707757600
szSq_info:
.LcBPF:
	movq $sBfZ_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBfZ_info
	jmp *(%rbx)
	.size szSq_info, .-szSq_info
.text
	.align 8
	.quad	12884901889
	.quad	16
sBep_info:
.LcBPR:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBPT
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r9d
	addq $-16,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteStringziInternal_zdwunpackAppendCharsLazzy_info
.LcBPT:
	jmp *-16(%r13)
	.size sBep_info, .-sBep_info
.text
	.align 8
	.quad	0
	.quad	32
sBg5_info:
.LcBPZ:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBQ4
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec2_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcBQ4:
	movq $24,192(%r13)
.LcBQ2:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sBg5_info, .-sBg5_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szSI_info)+56
	.long	0
	.quad	12884901889
	.quad	4294967312
szSI_info:
.LcBQ8:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBQa
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcBQc
	addq $6,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $sBep_info,-40(%r12)
	movq 16(%rbx),%rax
	movq %rax,-24(%r12)
	movq 24(%rbx),%rax
	movq %rax,-16(%r12)
	movq 32(%rbx),%rax
	movq %rax,-8(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -40(%r12),%r14
	movq $sBg5_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu0_info
.LcBQc:
	movq $48,192(%r13)
.LcBQa:
	jmp *-16(%r13)
	.size szSI_info, .-szSI_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfN_info)+8
	.long	0
	.quad	900
	.quad	3577707757600
sBfN_info:
.LcBQk:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBQo
	addq $13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq 31(%rbx),%rdx
	testq %rdx,%rdx
	jne .LcBQq
	movq $szSI_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-16(%r12)
	leaq -46(%r12),%rax
	movq %rax,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBQo:
	movq $104,192(%r13)
.LcBQm:
	jmp *-16(%r13)
.LcBQq:
	cmpq %rdx,32(%rbp)
	jl .LcBQs
	movq 24(%rbp),%rsi
	addq 16(%rbp),%rsi
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rdi
	addq (%rax),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	movq %rax,%rcx
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movslq %ecx,%rax
	testq %rax,%rax
	jne .LcBQv
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szSq_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szSq_info
.LcBQs:
	addq $-104,%r12
	addq $-13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szS5_info
.LcBQv:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szSq_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szSq_info
	.size sBfN_info, .-sBfN_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szSK_info)+8
	.long	0
	.quad	900
	.quad	7975754268704
szSK_info:
.LcBQJ:
	movl $rzug_closure,%ebx
	movq $sBfN_info,0(%rbp)
	testq $7,%rbx
	jne sBfN_info
	jmp *(%rbx)
	.size szSK_info, .-szSK_info
.text
	.align 8
	.quad	0
	.quad	32
sBga_info:
.LcBRa:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBRf
	addq $4,EngineziModelziModelLoader_loadObjModel1_ct+48
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
.LcBRf:
	movq $32,192(%r13)
.LcBRd:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBga_info, .-sBga_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szTf_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szTf_info:
.LcBRj:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBRl
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBga_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBRl:
	jmp *-16(%r13)
	.size szTf_info, .-szTf_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBg6_info)+8
	.long	0
	.quad	900
	.quad	8525510082592
sBg6_info:
.LcBRr:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBRs
	jmp szSK_info
.LcBRs:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBRw
	addq $13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $szTf_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	leaq -46(%r12),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBRw:
	movq $104,192(%r13)
.LcBRu:
	jmp *-16(%r13)
	.size sBg6_info, .-sBg6_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szT5_info)+8
	.long	0
	.quad	1797
	.quad	8525510082592
szT5_info:
.LcBRI:
	movq $sBg6_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBg6_info
	jmp *(%rbx)
	.size szT5_info, .-szT5_info
.text
	.align 8
	.quad	0
	.quad	32
sBgc_info:
.LcBRT:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBRY
	addq $4,EngineziModelziModelLoader_loadObjModel1_ct+48
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
.LcBRY:
	movq $32,192(%r13)
.LcBRW:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBgc_info, .-sBgc_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szTp_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szTp_info:
.LcBS2:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBS4
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBgc_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBS4:
	jmp *-16(%r13)
	.size szTp_info, .-szTp_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBfO_info)+8
	.long	0
	.quad	900
	.quad	8525510082592
sBfO_info:
.LcBS8:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcBSc
	addq $13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq 31(%rbx),%rdx
	testq %rdx,%rdx
	jne .LcBSe
	movq $szTp_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq 16(%rbp),%rax
	movq %rax,-56(%r12)
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z4T_con_info,-32(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-24(%r12)
	leaq -46(%r12),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,-8(%r12)
	movq $base_DataziMaybe_Nothing_closure+1,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcBSc:
	movq $104,192(%r13)
.LcBSa:
	jmp *-16(%r13)
.LcBSe:
	cmpq %rdx,32(%rbp)
	jl .LcBSg
	movq 24(%rbp),%rsi
	addq 16(%rbp),%rsi
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rdi
	addq (%rax),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	movq %rax,%rcx
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movslq %ecx,%rax
	testq %rax,%rax
	jne .LcBSj
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szT5_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szT5_info
.LcBSg:
	addq $-104,%r12
	addq $-13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szSK_info
.LcBSj:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szT5_info,-8(%rbp)
	addq $-8,%rbp
	addq $-104,%r12
	addq $-13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-13,ALLOC_HEAP_tot
	jmp szT5_info
	.size sBfO_info, .-sBfO_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szTr_info)+8
	.long	0
	.quad	12884901889
	.quad	17321603104784
szTr_info:
.LcBSz:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBSB
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movl $rzui_closure,%ebx
	movq $sBfO_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sBfO_info
	jmp *(%rbx)
.LcBSB:
	jmp *-16(%r13)
	.size szTr_info, .-szTr_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgd_info)+144
	.long	0
	.quad	0
	.quad	4294967328
sBgd_info:
.LcBTm:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $8,%rbp
	jmp rzuW_info
	.size sBgd_info, .-sBgd_info
.text
	.align 8
	.quad	2
	.quad	19
sBem_info:
.LcBTy:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBTA
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcBTA:
	jmp *-16(%r13)
	.size sBem_info, .-sBem_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgn_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgn_info:
.LcBTE:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBTI
	addq $4,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sBem_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 31(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	leaq -24(%r12),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBTI:
	movq $32,192(%r13)
.LcBTG:
	jmp *-16(%r13)
	.size sBgn_info, .-sBgn_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBge_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBge_info:
.LcBTP:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBTQ
	movq 8(%rbp),%rbx
	movq $sBgd_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBgd_info
	jmp *(%rbx)
.LcBTQ:
	movq 8(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sBgn_info,0(%rbp)
	testq $7,%rbx
	jne sBgn_info
	jmp *(%rbx)
	.size sBge_info, .-sBge_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgo_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgo_info:
.LcBU9:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBUf
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 23(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	leaq -14(%r12),%rdi
	movq 31(%rbx),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBUf:
	movq $24,192(%r13)
.LcBUd:
	jmp *-16(%r13)
	.size sBgo_info, .-sBgo_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgf_info)+144
	.long	0
	.quad	388
	.quad	4294967328
sBgf_info:
.LcBUm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBUn
	movq 8(%rbp),%rbx
	movq $sBge_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBge_info
	jmp *(%rbx)
.LcBUn:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBgo_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBgo_info
	jmp *(%rbx)
	.size sBgf_info, .-sBgf_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgp_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgp_info:
.LcBUG:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBUM
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 15(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	leaq -14(%r12),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBUM:
	movq $24,192(%r13)
.LcBUK:
	jmp *-16(%r13)
	.size sBgp_info, .-sBgp_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgg_info)+144
	.long	0
	.quad	260
	.quad	4294967328
sBgg_info:
.LcBUT:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBUU
	movq 16(%rbp),%rbx
	movq $sBgf_info,0(%rbp)
	testq $7,%rbx
	jne sBgf_info
	jmp *(%rbx)
.LcBUU:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBgp_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBgp_info
	jmp *(%rbx)
	.size sBgg_info, .-sBgg_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgq_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgq_info:
.LcBVd:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBVj
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 7(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -14(%r12),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBVj:
	movq $24,192(%r13)
.LcBVh:
	jmp *-16(%r13)
	.size sBgq_info, .-sBgq_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgh_info)+144
	.long	0
	.quad	4
	.quad	4294967328
sBgh_info:
.LcBVq:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBVr
	movq 24(%rbp),%rbx
	movq $sBgg_info,0(%rbp)
	testq $7,%rbx
	jne sBgg_info
	jmp *(%rbx)
.LcBVr:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBgq_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBgq_info
	jmp *(%rbx)
	.size sBgh_info, .-sBgh_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgi_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgi_info:
.LcBVG:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sBgh_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sBgh_info
	jmp *(%rbx)
	.size sBgi_info, .-sBgi_info
.text
	.align 8
	.quad	0
	.quad	32
sBgr_info:
.LcBVZ:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBW4
	addq $4,EngineziModelziModelLoader_loadObjModel1_ct+48
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
.LcBW4:
	movq $32,192(%r13)
.LcBW2:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBgr_info, .-sBgr_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szV7_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szV7_info:
.LcBW8:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBWa
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBgr_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBWa:
	jmp *-16(%r13)
	.size szV7_info, .-szV7_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgs_info)+64
	.long	0
	.quad	3974
	.quad	4402341478432
sBgs_info:
.LcBWe:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcBWi
	addq $9,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $szV7_info,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -64(%r12),%rax
	movq %rax,-8(%r12)
	movq 7(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -14(%r12),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $56,%rbp
	jmp rzuW_info
.LcBWi:
	movq $72,192(%r13)
.LcBWg:
	jmp *-16(%r13)
	.size sBgs_info, .-sBgs_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgj_info)+64
	.long	0
	.quad	3847
	.quad	4402341478432
sBgj_info:
.LcBWt:
	andq $7,%rbx
	cmpq $2,%rbx
	jae .LcBWu
	movq 8(%rbp),%rbx
	movq $sBgi_info,48(%rbp)
	addq $48,%rbp
	testq $7,%rbx
	jne sBgi_info
	jmp *(%rbx)
.LcBWu:
	movq 56(%rbp),%rbx
	movq $sBgs_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBgs_info
	jmp *(%rbx)
	.size sBgj_info, .-sBgj_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szTJ_info)+64
	.long	0
	.quad	3591
	.quad	4402341478432
szTJ_info:
.LcBWG:
	movq $sBgj_info,0(%rbp)
	testq $7,%rbx
	jne sBgj_info
	jmp *(%rbx)
	.size szTJ_info, .-szTJ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgu_info)+144
	.long	0
	.quad	0
	.quad	4294967328
sBgu_info:
.LcBX9:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $8,%rbp
	jmp rzuW_info
	.size sBgu_info, .-sBgu_info
.text
	.align 8
	.quad	2
	.quad	19
sBeh_info:
.LcBXl:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBXn
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcBXn:
	jmp *-16(%r13)
	.size sBeh_info, .-sBeh_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgA_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgA_info:
.LcBXr:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBXv
	addq $4,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sBeh_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 31(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	leaq -24(%r12),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBXv:
	movq $32,192(%r13)
.LcBXt:
	jmp *-16(%r13)
	.size sBgA_info, .-sBgA_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgv_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgv_info:
.LcBXC:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBXD
	movq 8(%rbp),%rbx
	movq $sBgu_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sBgu_info
	jmp *(%rbx)
.LcBXD:
	movq 8(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sBgA_info,0(%rbp)
	testq $7,%rbx
	jne sBgA_info
	jmp *(%rbx)
	.size sBgv_info, .-sBgv_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgB_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgB_info:
.LcBXW:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBY2
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 23(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 15(%rbx),%rsi
	leaq -14(%r12),%rdi
	movq 31(%rbx),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBY2:
	movq $24,192(%r13)
.LcBY0:
	jmp *-16(%r13)
	.size sBgB_info, .-sBgB_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgw_info)+144
	.long	0
	.quad	388
	.quad	4294967328
sBgw_info:
.LcBY9:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBYa
	movq 8(%rbp),%rbx
	movq $sBgv_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBgv_info
	jmp *(%rbx)
.LcBYa:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBgB_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBgB_info
	jmp *(%rbx)
	.size sBgw_info, .-sBgw_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgC_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgC_info:
.LcBYt:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBYz
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 15(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	leaq -14(%r12),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBYz:
	movq $24,192(%r13)
.LcBYx:
	jmp *-16(%r13)
	.size sBgC_info, .-sBgC_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgx_info)+144
	.long	0
	.quad	260
	.quad	4294967328
sBgx_info:
.LcBYG:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBYH
	movq 16(%rbp),%rbx
	movq $sBgw_info,0(%rbp)
	testq $7,%rbx
	jne sBgw_info
	jmp *(%rbx)
.LcBYH:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBgC_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBgC_info
	jmp *(%rbx)
	.size sBgx_info, .-sBgx_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgD_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgD_info:
.LcBZ0:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcBZ6
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 7(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -14(%r12),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $16,%rbp
	jmp rzuW_info
.LcBZ6:
	movq $24,192(%r13)
.LcBZ4:
	jmp *-16(%r13)
	.size sBgD_info, .-sBgD_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgy_info)+144
	.long	0
	.quad	4
	.quad	4294967328
sBgy_info:
.LcBZd:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcBZe
	movq 24(%rbp),%rbx
	movq $sBgx_info,0(%rbp)
	testq $7,%rbx
	jne sBgx_info
	jmp *(%rbx)
.LcBZe:
	movq 32(%rbp),%rax
	movq 6(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $sBgD_info,24(%rbp)
	addq $24,%rbp
	testq $7,%rbx
	jne sBgD_info
	jmp *(%rbx)
	.size sBgy_info, .-sBgy_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgz_info)+144
	.long	0
	.quad	1
	.quad	4294967328
sBgz_info:
.LcBZt:
	movq 31(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sBgy_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sBgy_info
	jmp *(%rbx)
	.size sBgz_info, .-sBgz_info
.text
	.align 8
	.quad	0
	.quad	32
sBgE_info:
.LcBZL:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcBZQ
	addq $4,EngineziModelziModelLoader_loadObjModel1_ct+48
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
.LcBZQ:
	movq $32,192(%r13)
.LcBZO:
	movq $248,64(%r13)
	jmp stg_gc_ut
	.size sBgE_info, .-sBgE_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szWy_info)+64
	.long	0
	.quad	12884901889
	.quad	4294967312
szWy_info:
.LcBZU:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcBZW
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 32(%rbx),%r14
	movq 16(%rbx),%rsi
	movq 40(%rbx),%rdi
	movq 24(%rbx),%r8
	movq $sBgE_info,-24(%rbp)
	addq $-24,%rbp
	jmp rzu4_info
.LcBZW:
	jmp *-16(%r13)
	.size szWy_info, .-szWy_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgF_info)+64
	.long	0
	.quad	900
	.quad	4402341478432
sBgF_info:
.LcC00:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcC04
	addq $9,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $szWy_info,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-48(%r12)
	movq 32(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -64(%r12),%rax
	movq %rax,-8(%r12)
	movq 7(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -14(%r12),%r14
	movq 15(%rbx),%rsi
	movq 23(%rbx),%rdi
	movq 31(%rbx),%r8
	addq $40,%rbp
	jmp rzuW_info
.LcC04:
	movq $72,192(%r13)
.LcC02:
	jmp *-16(%r13)
	.size sBgF_info, .-sBgF_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeR_info)+8
	.long	0
	.quad	1413
	.quad	580271556526112
sBeR_info:
.LcC0d:
	addq $104,%r12
	cmpq 144(%r13),%r12
	ja .LcC0h
	addq $13,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $13,ALLOC_HEAP_tot
	movq $szQ3_info,-96(%r12)
	movq 8(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 40(%rbp),%rax
	movq %rax,-64(%r12)
	movq 24(%rbp),%rax
	movq %rax,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-48(%r12)
	movq 40(%rbp),%rdx
	testq %rdx,%rdx
	jne .LcC0j
	movq 7(%rbx),%rax
	movq %rax,16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,24(%rbp)
	movq 15(%rbx),%rax
	movq %rax,32(%rbp)
	movq 31(%rbx),%rax
	movq %rax,40(%rbp)
	leaq -96(%r12),%rbx
	movq $sBgF_info,8(%rbp)
	addq $8,%rbp
	addq $-48,%r12
	addq $-6,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-6,ALLOC_HEAP_tot
	testq $7,%rbx
	jne sBgF_info
	jmp *(%rbx)
.LcC0h:
	movq $104,192(%r13)
.LcC0f:
	jmp *-16(%r13)
.LcC0j:
	movq $szTr_info,-40(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq 31(%rbx),%rax
	movq %rax,-16(%r12)
	movq 15(%rbx),%rax
	movq %rax,-8(%r12)
	movq 23(%rbx),%rax
	movq %rax,0(%r12)
	cmpq %rdx,31(%rbx)
	jl .LcC0l
	leaq 23(%rbx),%rax
	movq 15(%rbx),%rsi
	addq (%rax),%rsi
	movq 24(%rbp),%rdi
	addq 16(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcmp
	addq $8,%rsp
	leaq -96(%r12),%rcx
	movq %rcx,40(%rbp)
	movq 31(%rbx),%rcx
	movq %rcx,32(%rbp)
	movq 15(%rbx),%rcx
	movq %rcx,24(%rbp)
	movq 23(%rbx),%rcx
	movq %rcx,16(%rbp)
	movq 7(%rbx),%rbx
	movq %rbx,0(%rbp)
	leaq -40(%r12),%rbx
	movq %rbx,-8(%rbp)
	movslq %eax,%rax
	testq %rax,%rax
	jne .LcC0r
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_True_closure+2,%ebx
	movq $szTJ_info,-16(%rbp)
	addq $-16,%rbp
	jmp szTJ_info
.LcC0l:
	leaq -96(%r12),%rax
	movq %rax,40(%rbp)
	leaq -40(%r12),%rbx
	movq $sBgz_info,32(%rbp)
	addq $32,%rbp
	testq $7,%rbx
	jne sBgz_info
	jmp *(%rbx)
.LcC0r:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_False_closure+1,%ebx
	movq $szTJ_info,-16(%rbp)
	addq $-16,%rbp
	jmp szTJ_info
	.size sBeR_info, .-sBeR_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeS_info)+8
	.long	0
	.quad	2
	.quad	580271556526112
sBeS_info:
.LcC0V:
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 31(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sBeR_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sBeR_info
	jmp *(%rbx)
	.size sBeS_info, .-sBeS_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeP_info)+8
	.long	0
	.quad	0
	.quad	597863742570528
sBeP_info:
.LcC19:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcC1a
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r14d
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%esi
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%edi
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r8d
	addq $8,%rbp
	jmp rzuW_info
.LcC1a:
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $rzuk_closure,%ebx
	movq $sBeS_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sBeS_info
	jmp *(%rbx)
	.size sBeP_info, .-sBeP_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeE_info)+8
	.long	0
	.quad	0
	.quad	1723763649413152
sBeE_info:
.LcC1l:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcC1p
	addq $5,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq 31(%rbx),%rcx
	testq %rcx,%rcx
	jne .LcC1r
	movl $rzuX_closure,%ebx
	addq $8,%rbp
	addq $-40,%r12
	addq $-5,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $-5,ALLOC_HEAP_tot
	andq $-8,%rbx
	jmp *(%rbx)
.LcC1p:
	movq $40,192(%r13)
.LcC1n:
	jmp *-16(%r13)
.LcC1r:
	movq $szJK_info,-32(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq 15(%rbx),%rax
	movq %rax,-16(%r12)
	movq 23(%rbx),%rax
	movq %rax,-8(%r12)
	movq %rcx,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -31(%r12),%rbx
	xorl %r14d,%r14d
	movq $sBeP_info,0(%rbp)
	jmp szJK_info
	.size sBeE_info, .-sBeE_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szWD_info)+8
	.long	0
	.quad	1
	.quad	1723763649413137
szWD_info:
.LcC1A:
	incq ENT_DYN_THK_ctr
	leaq -80(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC1C
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sBeE_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sBeE_info
	jmp *(%rbx)
.LcC1C:
	jmp *-16(%r13)
	.size szWD_info, .-szWD_info
.text
	.align 8
	.quad	0
	.quad	32
szX0_info:
.LcC1X:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcC24
	addq $2,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $base_GHCziInt_I32zh_con_info,-8(%r12)
	movslq %ebx,%rax
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcC24:
	movq $16,192(%r13)
	jmp stg_gc_unbx_r1
	.size szX0_info, .-szX0_info
.text
	.align 8
	.quad	0
	.quad	32
szWX_info:
.LcC28:
	incq KNOWN_CALL_ctr
	movslq %ebx,%r14
	movl $3,%esi
	movq $szX0_info,0(%rbp)
	jmp ghczmprim_GHCziClasses_divIntzh_info
	.size szWX_info, .-szWX_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgG_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sBgG_info:
.LcC2d:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcC2e
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcC2e:
	incq KNOWN_CALL_ctr
	movq 6(%rbx),%r14
	xorl %esi,%esi
	movq $szWX_info,0(%rbp)
	jmp base_GHCziList_zdwlen_info
	.size sBgG_info, .-sBgG_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeu_info)+0
	.long	0
	.quad	1
	.quad	4294967313
sBeu_info:
.LcC2m:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC2o
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sBgG_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sBgG_info
	jmp *(%rbx)
.LcC2o:
	jmp *-16(%r13)
	.size sBeu_info, .-sBeu_info
.text
	.align 8
	.quad	1
	.quad	17
szWK_info:
.LcC2y:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC2A
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzuM_closure+1,%r14d
	movq 16(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcC2A:
	jmp *-16(%r13)
	.size szWK_info, .-szWK_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBer_info)+48
	.long	0
	.quad	0
	.quad	4294967328
sBer_info:
.LcC2I:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	addq $8,%rbp
	jmp rx8N_info
	.size sBer_info, .-sBer_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(szWN_info)+48
	.long	0
	.quad	1
	.quad	4294967313
szWN_info:
.LcC2M:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC2O
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziModelziMaterial_matDiffuseColor_closure+1,%r14d
	movq 16(%rbx),%rsi
	movq $sBer_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziBase_map_info
.LcC2O:
	jmp *-16(%r13)
	.size szWN_info, .-szWN_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBev_info)+48
	.long	0
	.quad	2
	.quad	4294967315
sBev_info:
.LcC2T:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC2V
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .LcC2X
	addq $12,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $szWK_info,-88(%r12)
	movq 24(%rbx),%rax
	movq %rax,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	leaq -88(%r12),%rax
	movq %rax,-56(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-48(%r12)
	movq $szWN_info,-40(%r12)
	movq 24(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	leaq -62(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	leaq -14(%r12),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_zpzp_info
.LcC2X:
	movq $96,192(%r13)
.LcC2V:
	jmp *-16(%r13)
	.size sBev_info, .-sBev_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBes_info)+136
	.long	0
	.quad	1
	.quad	4294967313
sBes_info:
.LcC3i:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC3k
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $rzuV_closure+1,%r14d
	movq 16(%rbx),%rsi
	addq $-16,%rbp
	jmp base_GHCziBase_map_info
.LcC3k:
	jmp *-16(%r13)
	.size sBes_info, .-sBes_info
.text
	.align 8
	.quad	5
	.quad	32
szXk_info:
.LcC3q:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcC3w
	addq $7,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziModelziModel_Model_con_info,-48(%r12)
	movq 40(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq %rbx,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	leaq -47(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcC3w:
	movq $56,192(%r13)
.LcC3u:
	jmp *-16(%r13)
	.size szXk_info, .-szXk_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgH_info)+136
	.long	0
	.quad	1
	.quad	38654705696
sBgH_info:
.LcC3E:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcC3I
	addq $3,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sBes_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 47(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%r14
	movq 7(%rbx),%rax
	movq %rax,8(%rbp)
	leaq -16(%r12),%rsi
	movq $szXk_info,-32(%rbp)
	addq $-32,%rbp
	jmp rzuY_info
.LcC3I:
	movq $24,192(%r13)
.LcC3G:
	jmp *-16(%r13)
	.size sBgH_info, .-sBgH_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBet_info)+136
	.long	0
	.quad	2
	.quad	38654705683
sBet_info:
.LcC3T:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC3V
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $sBgH_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sBgH_info
	jmp *(%rbx)
.LcC3V:
	jmp *-16(%r13)
	.size sBet_info, .-sBet_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBgI_info)+136
	.long	0
	.quad	1
	.quad	38654705696
sBgI_info:
.LcC41:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .LcC45
	addq $4,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq $sBet_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -24(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.LcC45:
	movq $32,192(%r13)
.LcC43:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sBgI_info, .-sBgI_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeF_info)+0
	.long	0
	.quad	517
	.quad	8795899748679712
sBeF_info:
.LcC49:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .LcC4d
	addq $10,EngineziModelziModelLoader_loadObjModel1_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $szWD_info,-72(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq $sBeu_info,-48(%r12)
	leaq -72(%r12),%rax
	movq %rax,-32(%r12)
	movq $sBev_info,-24(%r12)
	leaq -72(%r12),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	leaq -48(%r12),%rax
	movq %rax,24(%rbp)
	movq 16(%rbp),%rsi
	movl $rzuK_closure+2,%edi
	leaq -24(%r12),%r8
	movl $rzuU_closure+2,%r9d
	movq $sBgI_info,32(%rbp)
	addq $24,%rbp
	jmp EngineziModelziModel_createModel1_info
.LcC4d:
	movq $80,192(%r13)
.LcC4b:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sBeF_info, .-sBeF_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeG_info)+0
	.long	0
	.quad	517
	.quad	8936637237035040
sBeG_info:
.LcC4k:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 40(%rbp),%rsi
	movl $EngineziModelziMaterial_emptyMaterial_closure,%edi
	movq $sBeF_info,0(%rbp)
	jmp rzuA_info
	.size sBeG_info, .-sBeG_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeH_info)+0
	.long	0
	.quad	517
	.quad	8936654416904224
sBeH_info:
.LcC4n:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq %rbx,40(%rbp)
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $sBeG_info,0(%rbp)
	jmp base_GHCziIOziHandleziFD_openFile1_info
	.size sBeH_info, .-sBeH_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeI_info)+0
	.long	0
	.quad	5
	.quad	9007023161081888
sBeI_info:
.LcC4q:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,%rsi
	movq $sBeH_info,0(%rbp)
	jmp rzuy_info
	.size sBeI_info, .-sBeI_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeJ_info)+0
	.long	0
	.quad	4
	.quad	9007023161081888
sBeJ_info:
.LcC4t:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 32(%rbp),%r14
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $sBeI_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziIOziHandleziFD_openFile1_info
	.size sBeJ_info, .-sBeJ_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeK_info)+0
	.long	0
	.quad	5
	.quad	9007057520820256
sBeK_info:
.LcC4w:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sBeJ_info,8(%rbp)
	addq $8,%rbp
	jmp bytestringzm0zi10zi0zi2_DataziByteString_getContents2_info
	.size sBeK_info, .-sBeK_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(sBeL_info)+0
	.long	0
	.quad	4
	.quad	9007194959773728
sBeL_info:
.LcC4z:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq %rbx,%r14
	movl $ghczmprim_GHCziTypes_True_closure+2,%esi
	movq $sBeK_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziIOziHandle_hSetBinaryMode1_info
	.size sBeL_info, .-sBeL_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel1_srt-(EngineziModelziModelLoader_loadObjModel1_info)+0
	.long	0
	.quad	21474836501
	.quad	0
	.quad	9007194959773711
.globl EngineziModelziModelLoader_loadObjModel1_info
.type EngineziModelziModelLoader_loadObjModel1_info, @object
EngineziModelziModelLoader_loadObjModel1_info:
.LcC4C:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC4E
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObjModel1_ct
	je .LcC4F
.LcC4G:
	incq EngineziModelziModelLoader_loadObjModel1_ct+40
	incq KNOWN_CALL_ctr
	movq %r8,-32(%rbp)
	movq %rdi,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %rsi,%r14
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $sBeL_info,-40(%rbp)
	addq $-40,%rbp
	jmp base_GHCziIOziHandleziFD_openFile1_info
.LcC4E:
	movl $EngineziModelziModelLoader_loadObjModel1_closure,%ebx
	jmp *-8(%r13)
.LcC4F:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObjModel1_ct+56
	movq $EngineziModelziModelLoader_loadObjModel1_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObjModel1_ct
	jmp .LcC4G
	.size EngineziModelziModelLoader_loadObjModel1_info, .-EngineziModelziModelLoader_loadObjModel1_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObjModel_srt:
	.quad	EngineziModelziModelLoader_loadObjModel1_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObjModel_closure
.type EngineziModelziModelLoader_loadObjModel_closure, @object
EngineziModelziModelLoader_loadObjModel_closure:
	.quad	EngineziModelziModelLoader_loadObjModel_info
	.quad	0
.section .rodata
	.align 8
.align 1
cC4Q_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cC4T_str:
	.byte	83
	.byte	76
	.byte	76
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObjModel_ct
.type EngineziModelziModelLoader_loadObjModel_ct, @object
EngineziModelziModelLoader_loadObjModel_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cC4Q_str
	.quad	cC4T_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObjModel_srt-(EngineziModelziModelLoader_loadObjModel_info)+0
	.long	0
	.quad	21474836501
	.quad	0
	.quad	4294967311
.globl EngineziModelziModelLoader_loadObjModel_info
.type EngineziModelziModelLoader_loadObjModel_info, @object
EngineziModelziModelLoader_loadObjModel_info:
.LcC4Y:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObjModel_ct
	je .LcC51
.LcC53:
	incq EngineziModelziModelLoader_loadObjModel_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziModelziModelLoader_loadObjModel1_info
.LcC51:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObjModel_ct+56
	movq $EngineziModelziModelLoader_loadObjModel_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObjModel_ct
	jmp .LcC53
	.size EngineziModelziModelLoader_loadObjModel_info, .-EngineziModelziModelLoader_loadObjModel_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObj1_srt:
	.quad	base_GHCziIOziHandleziFD_openFile1_closure
	.quad	EngineziModelziModelLoader_loadObj2_closure
	.quad	EngineziModelziModelLoader_loadObj3_closure
	.quad	EngineziModelziModelLoader_loadObj4_closure
	.quad	EngineziModelziModelLoader_loadObj5_closure
	.quad	EngineziModelziModelLoader_zdwpackObj_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj1_closure
.type EngineziModelziModelLoader_loadObj1_closure, @object
EngineziModelziModelLoader_loadObj1_closure:
	.quad	EngineziModelziModelLoader_loadObj1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cC5l_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cC5o_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj1_ct
.type EngineziModelziModelLoader_loadObj1_ct, @object
EngineziModelziModelLoader_loadObj1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cC5l_str
	.quad	cC5o_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC56_info)+40
	.long	0
	.quad	4
	.quad	4294967312
sC56_info:
.LcC5X:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC5Z
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq 24(%rbx),%rsi
	movq 32(%rbx),%rdi
	movq 40(%rbx),%r8
	addq $-16,%rbp
	jmp EngineziModelziModelLoader_packObj_info
.LcC5Z:
	jmp *-16(%r13)
	.size sC56_info, .-sC56_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC57_info)+40
	.long	0
	.quad	3
	.quad	4294967328
sC57_info:
.LcC63:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcC67
	addq $6,EngineziModelziModelLoader_loadObj1_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $sC56_info,-40(%r12)
	movq %rbx,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -40(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcC67:
	movq $48,192(%r13)
.LcC65:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sC57_info, .-sC57_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC58_info)+8
	.long	0
	.quad	3
	.quad	73014444064
sC58_info:
.LcC6d:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq $sC57_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj2_info
	.size sC58_info, .-sC58_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC59_info)+0
	.long	0
	.quad	3
	.quad	150323855392
sC59_info:
.LcC6g:
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%r14
	movq %rbx,24(%rbp)
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $sC58_info,0(%rbp)
	jmp base_GHCziIOziHandleziFD_openFile1_info
	.size sC59_info, .-sC59_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC5a_info)+0
	.long	0
	.quad	3
	.quad	167503724576
sC5a_info:
.LcC6j:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq $sC59_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj3_info
	.size sC5a_info, .-sC5a_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC5b_info)+0
	.long	0
	.quad	2
	.quad	167503724576
sC5b_info:
.LcC6m:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 16(%rbp),%r14
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $sC5a_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziIOziHandleziFD_openFile1_info
	.size sC5b_info, .-sC5b_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC5c_info)+0
	.long	0
	.quad	2
	.quad	201863462944
sC5c_info:
.LcC6p:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq $sC5b_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj4_info
	.size sC5c_info, .-sC5c_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC5d_info)+0
	.long	0
	.quad	1
	.quad	201863462944
sC5d_info:
.LcC6s:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq 8(%rbp),%r14
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $sC5c_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziIOziHandleziFD_openFile1_info
	.size sC5d_info, .-sC5d_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(sC5e_info)+0
	.long	0
	.quad	1
	.quad	270582939680
sC5e_info:
.LcC6v:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq $sC5d_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObj5_info
	.size sC5e_info, .-sC5e_info
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj1_srt-(EngineziModelziModelLoader_loadObj1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	270582939663
.globl EngineziModelziModelLoader_loadObj1_info
.type EngineziModelziModelLoader_loadObj1_info, @object
EngineziModelziModelLoader_loadObj1_info:
.LcC6y:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcC6A
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObj1_ct
	je .LcC6B
.LcC6C:
	incq EngineziModelziModelLoader_loadObj1_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movl $base_GHCziIOziIOMode_ReadMode_closure+1,%esi
	movq $sC5e_info,-16(%rbp)
	addq $-16,%rbp
	jmp base_GHCziIOziHandleziFD_openFile1_info
.LcC6A:
	movl $EngineziModelziModelLoader_loadObj1_closure,%ebx
	jmp *-8(%r13)
.LcC6B:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObj1_ct+56
	movq $EngineziModelziModelLoader_loadObj1_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObj1_ct
	jmp .LcC6C
	.size EngineziModelziModelLoader_loadObj1_info, .-EngineziModelziModelLoader_loadObj1_info
.section .data
	.align 8
.align 1
EngineziModelziModelLoader_loadObj_srt:
	.quad	EngineziModelziModelLoader_loadObj1_closure
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj_closure
.type EngineziModelziModelLoader_loadObj_closure, @object
EngineziModelziModelLoader_loadObj_closure:
	.quad	EngineziModelziModelLoader_loadObj_info
	.quad	0
.section .rodata
	.align 8
.align 1
cC6M_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	79
	.byte	98
	.byte	106
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	118
	.byte	114
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cC6P_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziModelziModelLoader_loadObj_ct
.type EngineziModelziModelLoader_loadObj_ct, @object
EngineziModelziModelLoader_loadObj_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cC6M_str
	.quad	cC6P_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziModelziModelLoader_loadObj_srt-(EngineziModelziModelLoader_loadObj_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziModelziModelLoader_loadObj_info
.type EngineziModelziModelLoader_loadObj_info, @object
EngineziModelziModelLoader_loadObj_info:
.LcC6U:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziModelziModelLoader_loadObj_ct
	je .LcC6X
.LcC6Z:
	incq EngineziModelziModelLoader_loadObj_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziModelziModelLoader_loadObj1_info
.LcC6X:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziModelziModelLoader_loadObj_ct+56
	movq $EngineziModelziModelLoader_loadObj_ct,ticky_entry_ctrs
	movq $1,EngineziModelziModelLoader_loadObj_ct
	jmp .LcC6Z
	.size EngineziModelziModelLoader_loadObj_info, .-EngineziModelziModelLoader_loadObj_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
