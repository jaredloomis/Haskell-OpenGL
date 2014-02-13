.data
	.align 8
.align 1
.globl __stginit_EngineziCoreziWorld
.type __stginit_EngineziCoreziWorld, @object
__stginit_EngineziCoreziWorld:
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWWorldState_closure
.type EngineziCoreziWorld_zdWWorldState_closure, @object
EngineziCoreziWorld_zdWWorldState_closure:
	.quad	EngineziCoreziWorld_zdWWorldState_info
.section .rodata
	.align 8
.align 1
csv8_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	36
	.byte	87
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	83
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	57
	.byte	70
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csvb_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	69
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWWorldState_ct
.type EngineziCoreziWorld_zdWWorldState_ct, @object
EngineziCoreziWorld_zdWWorldState_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	csv8_str
	.quad	csvb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4
	.quad	32
ssnV_info:
.Lcsyk:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .Lcsyq
	addq $6,EngineziCoreziWorld_zdWWorldState_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_WorldState_con_info,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq %rbx,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	leaq -39(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.Lcsyq:
	movq $48,192(%r13)
.Lcsyo:
	jmp *-16(%r13)
	.size ssnV_info, .-ssnV_info
.text
	.align 8
	.quad	4
	.quad	32
ssnU_info:
.Lcsyx:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $ssnV_info,0(%rbp)
	testq $7,%rbx
	jne ssnV_info
	jmp *(%rbx)
	.size ssnU_info, .-ssnU_info
.text
	.align 8
	.quad	4
	.quad	32
ssnT_info:
.LcsyF:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $ssnU_info,0(%rbp)
	testq $7,%rbx
	jne ssnU_info
	jmp *(%rbx)
	.size ssnT_info, .-ssnT_info
.text
	.align 8
	.quad	4
	.quad	32
ssnS_info:
.LcsyN:
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $ssnT_info,0(%rbp)
	testq $7,%rbx
	jne ssnT_info
	jmp *(%rbx)
	.size ssnS_info, .-ssnS_info
.text
	.align 8
	.quad	21474836502
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_zdWWorldState_info
.type EngineziCoreziWorld_zdWWorldState_info, @object
EngineziCoreziWorld_zdWWorldState_info:
.LcsyV:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsyX
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_zdWWorldState_ct
	je .LcsyY
.LcsyZ:
	incq EngineziCoreziWorld_zdWWorldState_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $ssnS_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne ssnS_info
	jmp *(%rbx)
.LcsyX:
	movl $EngineziCoreziWorld_zdWWorldState_closure,%ebx
	jmp *-8(%r13)
.LcsyY:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_zdWWorldState_ct+56
	movq $EngineziCoreziWorld_zdWWorldState_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_zdWWorldState_ct
	jmp .LcsyZ
	.size EngineziCoreziWorld_zdWWorldState_info, .-EngineziCoreziWorld_zdWWorldState_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWWorld_closure
.type EngineziCoreziWorld_zdWWorld_closure, @object
EngineziCoreziWorld_zdWWorld_closure:
	.quad	EngineziCoreziWorld_zdWWorld_info
.section .rodata
	.align 8
.align 1
cszn_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	36
	.byte	87
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cszq_str:
	.byte	77
	.byte	76
	.byte	76
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWWorld_ct
.type EngineziCoreziWorld_zdWWorld_ct, @object
EngineziCoreziWorld_zdWWorld_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cszn_str
	.quad	cszq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
ssoc_info:
.LcszM:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcszS
	addq $5,EngineziCoreziWorld_zdWWorld_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
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
.LcszS:
	movq $40,192(%r13)
.LcszQ:
	jmp *-16(%r13)
	.size ssoc_info, .-ssoc_info
.text
	.align 8
	.quad	3
	.quad	32
ssob_info:
.LcszY:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $ssoc_info,0(%rbp)
	testq $7,%rbx
	jne ssoc_info
	jmp *(%rbx)
	.size ssob_info, .-ssob_info
.text
	.align 8
	.quad	3
	.quad	32
ssoa_info:
.LcsA6:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $ssob_info,0(%rbp)
	testq $7,%rbx
	jne ssob_info
	jmp *(%rbx)
	.size ssoa_info, .-ssoa_info
.text
	.align 8
	.quad	3
	.quad	32
sso9_info:
.LcsAe:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $ssoa_info,0(%rbp)
	testq $7,%rbx
	jne ssoa_info
	jmp *(%rbx)
	.size sso9_info, .-sso9_info
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_zdWWorld_info
.type EngineziCoreziWorld_zdWWorld_info, @object
EngineziCoreziWorld_zdWWorld_info:
.LcsAm:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsAo
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_zdWWorld_ct
	je .LcsAp
.LcsAq:
	incq EngineziCoreziWorld_zdWWorld_ct+40
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sso9_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sso9_info
	jmp *(%rbx)
.LcsAo:
	movl $EngineziCoreziWorld_zdWWorld_closure,%ebx
	jmp *-8(%r13)
.LcsAp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_zdWWorld_ct+56
	movq $EngineziCoreziWorld_zdWWorld_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_zdWWorld_ct
	jmp .LcsAq
	.size EngineziCoreziWorld_zdWWorld_info, .-EngineziCoreziWorld_zdWWorld_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWInput_closure
.type EngineziCoreziWorld_zdWInput_closure, @object
EngineziCoreziWorld_zdWInput_closure:
	.quad	EngineziCoreziWorld_zdWInput_info
.section .rodata
	.align 8
.align 1
csAO_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	36
	.byte	87
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	88
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csAR_str:
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWInput_ct
.type EngineziCoreziWorld_zdWInput_ct, @object
EngineziCoreziWorld_zdWInput_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	csAO_str
	.quad	csAR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
ssos_info:
.LcsBd:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcsBj
	addq $5,EngineziCoreziWorld_zdWInput_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
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
.LcsBj:
	movq $40,192(%r13)
.LcsBh:
	jmp *-16(%r13)
	.size ssos_info, .-ssos_info
.text
	.align 8
	.quad	3
	.quad	32
ssor_info:
.LcsBp:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $ssos_info,0(%rbp)
	testq $7,%rbx
	jne ssos_info
	jmp *(%rbx)
	.size ssor_info, .-ssor_info
.text
	.align 8
	.quad	3
	.quad	32
ssoq_info:
.LcsBx:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $ssor_info,0(%rbp)
	testq $7,%rbx
	jne ssor_info
	jmp *(%rbx)
	.size ssoq_info, .-ssoq_info
.text
	.align 8
	.quad	3
	.quad	32
ssop_info:
.LcsBF:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $ssoq_info,0(%rbp)
	testq $7,%rbx
	jne ssoq_info
	jmp *(%rbx)
	.size ssop_info, .-ssop_info
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_zdWInput_info
.type EngineziCoreziWorld_zdWInput_info, @object
EngineziCoreziWorld_zdWInput_info:
.LcsBN:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsBP
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_zdWInput_ct
	je .LcsBQ
.LcsBR:
	incq EngineziCoreziWorld_zdWInput_ct+40
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $ssop_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne ssop_info
	jmp *(%rbx)
.LcsBP:
	movl $EngineziCoreziWorld_zdWInput_closure,%ebx
	jmp *-8(%r13)
.LcsBQ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_zdWInput_ct+56
	movq $EngineziCoreziWorld_zdWInput_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_zdWInput_ct
	jmp .LcsBR
	.size EngineziCoreziWorld_zdWInput_info, .-EngineziCoreziWorld_zdWInput_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWPlayer_closure
.type EngineziCoreziWorld_zdWPlayer_closure, @object
EngineziCoreziWorld_zdWPlayer_closure:
	.quad	EngineziCoreziWorld_zdWPlayer_info
.section .rodata
	.align 8
.align 1
csCl_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	36
	.byte	87
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csCo_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWPlayer_ct
.type EngineziCoreziWorld_zdWPlayer_ct, @object
EngineziCoreziWorld_zdWPlayer_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	csCl_str
	.quad	csCo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	5
	.quad	32
ssoQ_info:
.LcsCS:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcsCY
	addq $7,EngineziCoreziWorld_zdWPlayer_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
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
.LcsCY:
	movq $56,192(%r13)
.LcsCW:
	jmp *-16(%r13)
	.size ssoQ_info, .-ssoQ_info
.text
	.align 8
	.quad	5
	.quad	32
ssoP_info:
.LcsD6:
	movq 40(%rbp),%rax
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $ssoQ_info,0(%rbp)
	testq $7,%rbx
	jne ssoQ_info
	jmp *(%rbx)
	.size ssoP_info, .-ssoP_info
.text
	.align 8
	.quad	5
	.quad	32
ssoO_info:
.LcsDe:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $ssoP_info,0(%rbp)
	jmp stg_ap_0_fast
	.size ssoO_info, .-ssoO_info
.text
	.align 8
	.quad	5
	.quad	32
ssoN_info:
.LcsDk:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $ssoO_info,0(%rbp)
	testq $7,%rbx
	jne ssoO_info
	jmp *(%rbx)
	.size ssoN_info, .-ssoN_info
.text
	.align 8
	.quad	5
	.quad	32
ssoM_info:
.LcsDs:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $ssoN_info,0(%rbp)
	testq $7,%rbx
	jne ssoN_info
	jmp *(%rbx)
	.size ssoM_info, .-ssoM_info
.text
	.align 8
	.quad	5
	.quad	32
ssoL_info:
.LcsDA:
	movq 32(%rbp),%rax
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $ssoM_info,0(%rbp)
	testq $7,%rbx
	jne ssoM_info
	jmp *(%rbx)
	.size ssoL_info, .-ssoL_info
.text
	.align 8
	.quad	25769803799
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_zdWPlayer_info
.type EngineziCoreziWorld_zdWPlayer_info, @object
EngineziCoreziWorld_zdWPlayer_info:
.LcsDI:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsDK
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_zdWPlayer_ct
	je .LcsDL
.LcsDM:
	incq EngineziCoreziWorld_zdWPlayer_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $ssoL_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne ssoL_info
	jmp *(%rbx)
.LcsDK:
	movl $EngineziCoreziWorld_zdWPlayer_closure,%ebx
	jmp *-8(%r13)
.LcsDL:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_zdWPlayer_ct+56
	movq $EngineziCoreziWorld_zdWPlayer_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_zdWPlayer_ct
	jmp .LcsDM
	.size EngineziCoreziWorld_zdWPlayer_info, .-EngineziCoreziWorld_zdWPlayer_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWPureEntity_closure
.type EngineziCoreziWorld_zdWPureEntity_closure, @object
EngineziCoreziWorld_zdWPureEntity_closure:
	.quad	EngineziCoreziWorld_zdWPureEntity_info
.section .rodata
	.align 8
.align 1
csEa_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	36
	.byte	87
	.byte	80
	.byte	117
	.byte	114
	.byte	101
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	84
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csEd_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWPureEntity_ct
.type EngineziCoreziWorld_zdWPureEntity_ct, @object
EngineziCoreziWorld_zdWPureEntity_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	csEa_str
	.quad	csEd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
ssp6_info:
.LcsEz:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcsEF
	addq $5,EngineziCoreziWorld_zdWPureEntity_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_PureEntity_con_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -30(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcsEF:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size ssp6_info, .-ssp6_info
.text
	.align 8
	.quad	3
	.quad	32
ssp5_info:
.LcsEL:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $ssp6_info,0(%rbp)
	jmp stg_ap_0_fast
	.size ssp5_info, .-ssp5_info
.text
	.align 8
	.quad	3
	.quad	32
ssp4_info:
.LcsER:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $ssp5_info,0(%rbp)
	testq $7,%rbx
	jne ssp5_info
	jmp *(%rbx)
	.size ssp4_info, .-ssp4_info
.text
	.align 8
	.quad	3
	.quad	32
ssp3_info:
.LcsEZ:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $ssp4_info,0(%rbp)
	jmp stg_ap_0_fast
	.size ssp3_info, .-ssp3_info
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_zdWPureEntity_info
.type EngineziCoreziWorld_zdWPureEntity_info, @object
EngineziCoreziWorld_zdWPureEntity_info:
.LcsF5:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsF7
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_zdWPureEntity_ct
	je .LcsF8
.LcsF9:
	incq EngineziCoreziWorld_zdWPureEntity_ct+40
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $ssp3_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne ssp3_info
	jmp *(%rbx)
.LcsF7:
	movl $EngineziCoreziWorld_zdWPureEntity_closure,%ebx
	jmp *-8(%r13)
.LcsF8:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_zdWPureEntity_ct+56
	movq $EngineziCoreziWorld_zdWPureEntity_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_zdWPureEntity_ct
	jmp .LcsF9
	.size EngineziCoreziWorld_zdWPureEntity_info, .-EngineziCoreziWorld_zdWPureEntity_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWEffectfulEntity_closure
.type EngineziCoreziWorld_zdWEffectfulEntity_closure, @object
EngineziCoreziWorld_zdWEffectfulEntity_closure:
	.quad	EngineziCoreziWorld_zdWEffectfulEntity_info
.section .rodata
	.align 8
.align 1
csFx_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	36
	.byte	87
	.byte	69
	.byte	102
	.byte	102
	.byte	101
	.byte	99
	.byte	116
	.byte	102
	.byte	117
	.byte	108
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	86
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csFA_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_zdWEffectfulEntity_ct
.type EngineziCoreziWorld_zdWEffectfulEntity_ct, @object
EngineziCoreziWorld_zdWEffectfulEntity_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	csFx_str
	.quad	csFA_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	3
	.quad	32
sspm_info:
.LcsFW:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcsG2
	addq $5,EngineziCoreziWorld_zdWEffectfulEntity_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_EffectfulEntity_con_info,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq %rbx,0(%r12)
	leaq -29(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcsG2:
	movq $40,192(%r13)
	jmp stg_gc_unpt_r1
	.size sspm_info, .-sspm_info
.text
	.align 8
	.quad	3
	.quad	32
sspl_info:
.LcsG8:
	movq 8(%rbp),%rax
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sspm_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sspl_info, .-sspl_info
.text
	.align 8
	.quad	3
	.quad	32
sspk_info:
.LcsGe:
	movq 16(%rbp),%rax
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sspl_info,0(%rbp)
	testq $7,%rbx
	jne sspl_info
	jmp *(%rbx)
	.size sspk_info, .-sspk_info
.text
	.align 8
	.quad	3
	.quad	32
sspj_info:
.LcsGm:
	movq 24(%rbp),%rax
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sspk_info,0(%rbp)
	jmp stg_ap_0_fast
	.size sspj_info, .-sspj_info
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_zdWEffectfulEntity_info
.type EngineziCoreziWorld_zdWEffectfulEntity_info, @object
EngineziCoreziWorld_zdWEffectfulEntity_info:
.LcsGs:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsGu
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_zdWEffectfulEntity_ct
	je .LcsGv
.LcsGw:
	incq EngineziCoreziWorld_zdWEffectfulEntity_ct+40
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sspj_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne sspj_info
	jmp *(%rbx)
.LcsGu:
	movl $EngineziCoreziWorld_zdWEffectfulEntity_closure,%ebx
	jmp *-8(%r13)
.LcsGv:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_zdWEffectfulEntity_ct+56
	movq $EngineziCoreziWorld_zdWEffectfulEntity_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_zdWEffectfulEntity_ct
	jmp .LcsGw
	.size EngineziCoreziWorld_zdWEffectfulEntity_info, .-EngineziCoreziWorld_zdWEffectfulEntity_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_getWorldTime_srt:
	.quad	timezm1zi4zi0zi1_DataziTimeziClock_getCurrentTime1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_getWorldTime_closure
.type EngineziCoreziWorld_getWorldTime_closure, @object
EngineziCoreziWorld_getWorldTime_closure:
	.quad	EngineziCoreziWorld_getWorldTime_info
	.quad	0
.section .rodata
	.align 8
.align 1
csGJ_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	103
	.byte	101
	.byte	116
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	89
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csGM_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_getWorldTime_ct
.type EngineziCoreziWorld_getWorldTime_ct, @object
EngineziCoreziWorld_getWorldTime_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csGJ_str
	.quad	csGM_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_getWorldTime_srt-(EngineziCoreziWorld_getWorldTime_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_getWorldTime_info
.type EngineziCoreziWorld_getWorldTime_info, @object
EngineziCoreziWorld_getWorldTime_info:
.LcsGR:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_getWorldTime_ct
	je .LcsGU
.LcsGW:
	incq EngineziCoreziWorld_getWorldTime_ct+40
	incq KNOWN_CALL_ctr
	jmp timezm1zi4zi0zi1_DataziTimeziClock_getCurrentTime1_info
.LcsGU:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_getWorldTime_ct+56
	movq $EngineziCoreziWorld_getWorldTime_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_getWorldTime_ct
	jmp .LcsGW
	.size EngineziCoreziWorld_getWorldTime_info, .-EngineziCoreziWorld_getWorldTime_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityAttribute1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityAttribute1_closure
.type EngineziCoreziWorld_eentityAttribute1_closure, @object
EngineziCoreziWorld_eentityAttribute1_closure:
	.quad	EngineziCoreziWorld_eentityAttribute1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csH9_str:
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	117
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_eentityAttribute1_srt-(EngineziCoreziWorld_eentityAttribute1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_eentityAttribute1_info
.type EngineziCoreziWorld_eentityAttribute1_info, @object
EngineziCoreziWorld_eentityAttribute1_info:
.LcsHd:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsHf
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsHh
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
	je .LcsHi
.LcsHj:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csH9_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsHh:
	movq $16,192(%r13)
.LcsHf:
	jmp *-16(%r13)
.LcsHi:
	jmp *(%rbx)
	.size EngineziCoreziWorld_eentityAttribute1_info, .-EngineziCoreziWorld_eentityAttribute1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityAttribute_srt:
	.quad	EngineziCoreziWorld_eentityAttribute1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityAttribute_closure
.type EngineziCoreziWorld_eentityAttribute_closure, @object
EngineziCoreziWorld_eentityAttribute_closure:
	.quad	EngineziCoreziWorld_eentityAttribute_info
	.quad	0
.section .rodata
	.align 8
.align 1
csHD_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	117
	.byte	116
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csHG_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityAttribute_ct
.type EngineziCoreziWorld_eentityAttribute_ct, @object
EngineziCoreziWorld_eentityAttribute_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csHD_str
	.quad	csHG_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_eentityAttribute_srt-(ssHp_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssHp_info:
.LcsHR:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $3,%rax
	jne .LcsHS
	movq 29(%rbx),%rbx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcsHS:
	movl $EngineziCoreziWorld_eentityAttribute1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size ssHp_info, .-ssHp_info
.text
	.align 8
	.long	EngineziCoreziWorld_eentityAttribute_srt-(EngineziCoreziWorld_eentityAttribute_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_eentityAttribute_info
.type EngineziCoreziWorld_eentityAttribute_info, @object
EngineziCoreziWorld_eentityAttribute_info:
.LcsHX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsHZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_eentityAttribute_ct
	je .LcsI0
.LcsI1:
	incq EngineziCoreziWorld_eentityAttribute_ct+40
	movq %r14,%rbx
	movq $ssHp_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssHp_info
	jmp *(%rbx)
.LcsHZ:
	movl $EngineziCoreziWorld_eentityAttribute_closure,%ebx
	jmp *-8(%r13)
.LcsI0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_eentityAttribute_ct+56
	movq $EngineziCoreziWorld_eentityAttribute_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_eentityAttribute_ct
	jmp .LcsI1
	.size EngineziCoreziWorld_eentityAttribute_info, .-EngineziCoreziWorld_eentityAttribute_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityModel1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityModel1_closure
.type EngineziCoreziWorld_eentityModel1_closure, @object
EngineziCoreziWorld_eentityModel1_closure:
	.quad	EngineziCoreziWorld_eentityModel1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csIi_str:
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_eentityModel1_srt-(EngineziCoreziWorld_eentityModel1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_eentityModel1_info
.type EngineziCoreziWorld_eentityModel1_info, @object
EngineziCoreziWorld_eentityModel1_info:
.LcsIm:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsIo
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsIq
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
	je .LcsIr
.LcsIs:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csIi_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsIq:
	movq $16,192(%r13)
.LcsIo:
	jmp *-16(%r13)
.LcsIr:
	jmp *(%rbx)
	.size EngineziCoreziWorld_eentityModel1_info, .-EngineziCoreziWorld_eentityModel1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityModel_srt:
	.quad	EngineziCoreziWorld_eentityModel1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityModel_closure
.type EngineziCoreziWorld_eentityModel_closure, @object
EngineziCoreziWorld_eentityModel_closure:
	.quad	EngineziCoreziWorld_eentityModel_info
	.quad	0
.section .rodata
	.align 8
.align 1
csIM_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csIP_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityModel_ct
.type EngineziCoreziWorld_eentityModel_ct, @object
EngineziCoreziWorld_eentityModel_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csIM_str
	.quad	csIP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_eentityModel_srt-(ssIy_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssIy_info:
.LcsJ0:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $3,%rax
	jne .LcsJ1
	movq 21(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsJ1:
	movl $EngineziCoreziWorld_eentityModel1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssIy_info, .-ssIy_info
.text
	.align 8
	.long	EngineziCoreziWorld_eentityModel_srt-(EngineziCoreziWorld_eentityModel_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_eentityModel_info
.type EngineziCoreziWorld_eentityModel_info, @object
EngineziCoreziWorld_eentityModel_info:
.LcsJ8:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsJa
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_eentityModel_ct
	je .LcsJb
.LcsJc:
	incq EngineziCoreziWorld_eentityModel_ct+40
	movq %r14,%rbx
	movq $ssIy_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssIy_info
	jmp *(%rbx)
.LcsJa:
	movl $EngineziCoreziWorld_eentityModel_closure,%ebx
	jmp *-8(%r13)
.LcsJb:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_eentityModel_ct+56
	movq $EngineziCoreziWorld_eentityModel_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_eentityModel_ct
	jmp .LcsJc
	.size EngineziCoreziWorld_eentityModel_info, .-EngineziCoreziWorld_eentityModel_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityPosition1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityPosition1_closure
.type EngineziCoreziWorld_eentityPosition1_closure, @object
EngineziCoreziWorld_eentityPosition1_closure:
	.quad	EngineziCoreziWorld_eentityPosition1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csJt_str:
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	80
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
	.long	EngineziCoreziWorld_eentityPosition1_srt-(EngineziCoreziWorld_eentityPosition1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_eentityPosition1_info
.type EngineziCoreziWorld_eentityPosition1_info, @object
EngineziCoreziWorld_eentityPosition1_info:
.LcsJx:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsJz
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsJB
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
	je .LcsJC
.LcsJD:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csJt_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsJB:
	movq $16,192(%r13)
.LcsJz:
	jmp *-16(%r13)
.LcsJC:
	jmp *(%rbx)
	.size EngineziCoreziWorld_eentityPosition1_info, .-EngineziCoreziWorld_eentityPosition1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityPosition_srt:
	.quad	EngineziCoreziWorld_eentityPosition1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityPosition_closure
.type EngineziCoreziWorld_eentityPosition_closure, @object
EngineziCoreziWorld_eentityPosition_closure:
	.quad	EngineziCoreziWorld_eentityPosition_info
	.quad	0
.section .rodata
	.align 8
.align 1
csJX_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	80
	.byte	111
	.byte	115
	.byte	105
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	79
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csK0_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityPosition_ct
.type EngineziCoreziWorld_eentityPosition_ct, @object
EngineziCoreziWorld_eentityPosition_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csJX_str
	.quad	csK0_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_eentityPosition_srt-(ssJJ_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssJJ_info:
.LcsKb:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $3,%rax
	jne .LcsKc
	movq 5(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsKc:
	movl $EngineziCoreziWorld_eentityPosition1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssJJ_info, .-ssJJ_info
.text
	.align 8
	.long	EngineziCoreziWorld_eentityPosition_srt-(EngineziCoreziWorld_eentityPosition_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_eentityPosition_info
.type EngineziCoreziWorld_eentityPosition_info, @object
EngineziCoreziWorld_eentityPosition_info:
.LcsKj:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsKl
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_eentityPosition_ct
	je .LcsKm
.LcsKn:
	incq EngineziCoreziWorld_eentityPosition_ct+40
	movq %r14,%rbx
	movq $ssJJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssJJ_info
	jmp *(%rbx)
.LcsKl:
	movl $EngineziCoreziWorld_eentityPosition_closure,%ebx
	jmp *-8(%r13)
.LcsKm:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_eentityPosition_ct+56
	movq $EngineziCoreziWorld_eentityPosition_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_eentityPosition_ct
	jmp .LcsKn
	.size EngineziCoreziWorld_eentityPosition_info, .-EngineziCoreziWorld_eentityPosition_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityUpdate1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityUpdate1_closure
.type EngineziCoreziWorld_eentityUpdate1_closure, @object
EngineziCoreziWorld_eentityUpdate1_closure:
	.quad	EngineziCoreziWorld_eentityUpdate1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csKE_str:
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_eentityUpdate1_srt-(EngineziCoreziWorld_eentityUpdate1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_eentityUpdate1_info
.type EngineziCoreziWorld_eentityUpdate1_info, @object
EngineziCoreziWorld_eentityUpdate1_info:
.LcsKI:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsKK
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsKM
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
	je .LcsKN
.LcsKO:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csKE_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsKM:
	movq $16,192(%r13)
.LcsKK:
	jmp *-16(%r13)
.LcsKN:
	jmp *(%rbx)
	.size EngineziCoreziWorld_eentityUpdate1_info, .-EngineziCoreziWorld_eentityUpdate1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_eentityUpdate_srt:
	.quad	EngineziCoreziWorld_eentityUpdate1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityUpdate_closure
.type EngineziCoreziWorld_eentityUpdate_closure, @object
EngineziCoreziWorld_eentityUpdate_closure:
	.quad	EngineziCoreziWorld_eentityUpdate_info
	.quad	0
.section .rodata
	.align 8
.align 1
csL8_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	101
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
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
	.byte	113
	.byte	82
	.byte	78
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csLb_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_eentityUpdate_ct
.type EngineziCoreziWorld_eentityUpdate_ct, @object
EngineziCoreziWorld_eentityUpdate_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csL8_str
	.quad	csLb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_eentityUpdate_srt-(ssKU_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssKU_info:
.LcsLm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $3,%rax
	jne .LcsLn
	movq 13(%rbx),%rbx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcsLn:
	movl $EngineziCoreziWorld_eentityUpdate1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size ssKU_info, .-ssKU_info
.text
	.align 8
	.long	EngineziCoreziWorld_eentityUpdate_srt-(EngineziCoreziWorld_eentityUpdate_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_eentityUpdate_info
.type EngineziCoreziWorld_eentityUpdate_info, @object
EngineziCoreziWorld_eentityUpdate_info:
.LcsLs:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsLu
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_eentityUpdate_ct
	je .LcsLv
.LcsLw:
	incq EngineziCoreziWorld_eentityUpdate_ct+40
	movq %r14,%rbx
	movq $ssKU_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssKU_info
	jmp *(%rbx)
.LcsLu:
	movl $EngineziCoreziWorld_eentityUpdate_closure,%ebx
	jmp *-8(%r13)
.LcsLv:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_eentityUpdate_ct+56
	movq $EngineziCoreziWorld_eentityUpdate_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_eentityUpdate_ct
	jmp .LcsLw
	.size EngineziCoreziWorld_eentityUpdate_info, .-EngineziCoreziWorld_eentityUpdate_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityAttribute1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityAttribute1_closure
.type EngineziCoreziWorld_pentityAttribute1_closure, @object
EngineziCoreziWorld_pentityAttribute1_closure:
	.quad	EngineziCoreziWorld_pentityAttribute1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csLN_str:
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	117
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_pentityAttribute1_srt-(EngineziCoreziWorld_pentityAttribute1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_pentityAttribute1_info
.type EngineziCoreziWorld_pentityAttribute1_info, @object
EngineziCoreziWorld_pentityAttribute1_info:
.LcsLR:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsLT
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsLV
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
	je .LcsLW
.LcsLX:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csLN_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsLV:
	movq $16,192(%r13)
.LcsLT:
	jmp *-16(%r13)
.LcsLW:
	jmp *(%rbx)
	.size EngineziCoreziWorld_pentityAttribute1_info, .-EngineziCoreziWorld_pentityAttribute1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityAttribute_srt:
	.quad	EngineziCoreziWorld_pentityAttribute1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityAttribute_closure
.type EngineziCoreziWorld_pentityAttribute_closure, @object
EngineziCoreziWorld_pentityAttribute_closure:
	.quad	EngineziCoreziWorld_pentityAttribute_info
	.quad	0
.section .rodata
	.align 8
.align 1
csMh_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	65
	.byte	116
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	117
	.byte	116
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	77
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csMk_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityAttribute_ct
.type EngineziCoreziWorld_pentityAttribute_ct, @object
EngineziCoreziWorld_pentityAttribute_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csMh_str
	.quad	csMk_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_pentityAttribute_srt-(ssM3_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssM3_info:
.LcsMv:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcsMw
	movq 30(%rbx),%rbx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcsMw:
	movl $EngineziCoreziWorld_pentityAttribute1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size ssM3_info, .-ssM3_info
.text
	.align 8
	.long	EngineziCoreziWorld_pentityAttribute_srt-(EngineziCoreziWorld_pentityAttribute_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_pentityAttribute_info
.type EngineziCoreziWorld_pentityAttribute_info, @object
EngineziCoreziWorld_pentityAttribute_info:
.LcsMB:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsMD
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_pentityAttribute_ct
	je .LcsME
.LcsMF:
	incq EngineziCoreziWorld_pentityAttribute_ct+40
	movq %r14,%rbx
	movq $ssM3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssM3_info
	jmp *(%rbx)
.LcsMD:
	movl $EngineziCoreziWorld_pentityAttribute_closure,%ebx
	jmp *-8(%r13)
.LcsME:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_pentityAttribute_ct+56
	movq $EngineziCoreziWorld_pentityAttribute_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_pentityAttribute_ct
	jmp .LcsMF
	.size EngineziCoreziWorld_pentityAttribute_info, .-EngineziCoreziWorld_pentityAttribute_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityModel1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityModel1_closure
.type EngineziCoreziWorld_pentityModel1_closure, @object
EngineziCoreziWorld_pentityModel1_closure:
	.quad	EngineziCoreziWorld_pentityModel1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csMW_str:
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_pentityModel1_srt-(EngineziCoreziWorld_pentityModel1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_pentityModel1_info
.type EngineziCoreziWorld_pentityModel1_info, @object
EngineziCoreziWorld_pentityModel1_info:
.LcsN0:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsN2
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsN4
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
	je .LcsN5
.LcsN6:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csMW_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsN4:
	movq $16,192(%r13)
.LcsN2:
	jmp *-16(%r13)
.LcsN5:
	jmp *(%rbx)
	.size EngineziCoreziWorld_pentityModel1_info, .-EngineziCoreziWorld_pentityModel1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityModel_srt:
	.quad	EngineziCoreziWorld_pentityModel1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityModel_closure
.type EngineziCoreziWorld_pentityModel_closure, @object
EngineziCoreziWorld_pentityModel_closure:
	.quad	EngineziCoreziWorld_pentityModel_info
	.quad	0
.section .rodata
	.align 8
.align 1
csNq_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	76
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csNt_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityModel_ct
.type EngineziCoreziWorld_pentityModel_ct, @object
EngineziCoreziWorld_pentityModel_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csNq_str
	.quad	csNt_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_pentityModel_srt-(ssNc_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssNc_info:
.LcsNE:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcsNF
	movq 22(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsNF:
	movl $EngineziCoreziWorld_pentityModel1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssNc_info, .-ssNc_info
.text
	.align 8
	.long	EngineziCoreziWorld_pentityModel_srt-(EngineziCoreziWorld_pentityModel_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_pentityModel_info
.type EngineziCoreziWorld_pentityModel_info, @object
EngineziCoreziWorld_pentityModel_info:
.LcsNM:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsNO
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_pentityModel_ct
	je .LcsNP
.LcsNQ:
	incq EngineziCoreziWorld_pentityModel_ct+40
	movq %r14,%rbx
	movq $ssNc_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssNc_info
	jmp *(%rbx)
.LcsNO:
	movl $EngineziCoreziWorld_pentityModel_closure,%ebx
	jmp *-8(%r13)
.LcsNP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_pentityModel_ct+56
	movq $EngineziCoreziWorld_pentityModel_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_pentityModel_ct
	jmp .LcsNQ
	.size EngineziCoreziWorld_pentityModel_info, .-EngineziCoreziWorld_pentityModel_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityPosition1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityPosition1_closure
.type EngineziCoreziWorld_pentityPosition1_closure, @object
EngineziCoreziWorld_pentityPosition1_closure:
	.quad	EngineziCoreziWorld_pentityPosition1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csO7_str:
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	80
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
	.long	EngineziCoreziWorld_pentityPosition1_srt-(EngineziCoreziWorld_pentityPosition1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_pentityPosition1_info
.type EngineziCoreziWorld_pentityPosition1_info, @object
EngineziCoreziWorld_pentityPosition1_info:
.LcsOb:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsOd
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsOf
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
	je .LcsOg
.LcsOh:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csO7_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsOf:
	movq $16,192(%r13)
.LcsOd:
	jmp *-16(%r13)
.LcsOg:
	jmp *(%rbx)
	.size EngineziCoreziWorld_pentityPosition1_info, .-EngineziCoreziWorld_pentityPosition1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityPosition_srt:
	.quad	EngineziCoreziWorld_pentityPosition1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityPosition_closure
.type EngineziCoreziWorld_pentityPosition_closure, @object
EngineziCoreziWorld_pentityPosition_closure:
	.quad	EngineziCoreziWorld_pentityPosition_info
	.quad	0
.section .rodata
	.align 8
.align 1
csOB_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	80
	.byte	111
	.byte	115
	.byte	105
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	75
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csOE_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityPosition_ct
.type EngineziCoreziWorld_pentityPosition_ct, @object
EngineziCoreziWorld_pentityPosition_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csOB_str
	.quad	csOE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_pentityPosition_srt-(ssOn_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssOn_info:
.LcsOP:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcsOQ
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsOQ:
	movl $EngineziCoreziWorld_pentityPosition1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssOn_info, .-ssOn_info
.text
	.align 8
	.long	EngineziCoreziWorld_pentityPosition_srt-(EngineziCoreziWorld_pentityPosition_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_pentityPosition_info
.type EngineziCoreziWorld_pentityPosition_info, @object
EngineziCoreziWorld_pentityPosition_info:
.LcsOX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsOZ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_pentityPosition_ct
	je .LcsP0
.LcsP1:
	incq EngineziCoreziWorld_pentityPosition_ct+40
	movq %r14,%rbx
	movq $ssOn_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssOn_info
	jmp *(%rbx)
.LcsOZ:
	movl $EngineziCoreziWorld_pentityPosition_closure,%ebx
	jmp *-8(%r13)
.LcsP0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_pentityPosition_ct+56
	movq $EngineziCoreziWorld_pentityPosition_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_pentityPosition_ct
	jmp .LcsP1
	.size EngineziCoreziWorld_pentityPosition_info, .-EngineziCoreziWorld_pentityPosition_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityUpdate1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityUpdate1_closure
.type EngineziCoreziWorld_pentityUpdate1_closure, @object
EngineziCoreziWorld_pentityUpdate1_closure:
	.quad	EngineziCoreziWorld_pentityUpdate1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csPi_str:
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_pentityUpdate1_srt-(EngineziCoreziWorld_pentityUpdate1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_pentityUpdate1_info
.type EngineziCoreziWorld_pentityUpdate1_info, @object
EngineziCoreziWorld_pentityUpdate1_info:
.LcsPm:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsPo
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsPq
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
	je .LcsPr
.LcsPs:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csPi_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsPq:
	movq $16,192(%r13)
.LcsPo:
	jmp *-16(%r13)
.LcsPr:
	jmp *(%rbx)
	.size EngineziCoreziWorld_pentityUpdate1_info, .-EngineziCoreziWorld_pentityUpdate1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_pentityUpdate_srt:
	.quad	EngineziCoreziWorld_pentityUpdate1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityUpdate_closure
.type EngineziCoreziWorld_pentityUpdate_closure, @object
EngineziCoreziWorld_pentityUpdate_closure:
	.quad	EngineziCoreziWorld_pentityUpdate_info
	.quad	0
.section .rodata
	.align 8
.align 1
csPM_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
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
	.byte	113
	.byte	82
	.byte	74
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csPP_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_pentityUpdate_ct
.type EngineziCoreziWorld_pentityUpdate_ct, @object
EngineziCoreziWorld_pentityUpdate_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csPM_str
	.quad	csPP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_pentityUpdate_srt-(ssPy_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssPy_info:
.LcsQ0:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcsQ1
	movq 14(%rbx),%rbx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcsQ1:
	movl $EngineziCoreziWorld_pentityUpdate1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size ssPy_info, .-ssPy_info
.text
	.align 8
	.long	EngineziCoreziWorld_pentityUpdate_srt-(EngineziCoreziWorld_pentityUpdate_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_pentityUpdate_info
.type EngineziCoreziWorld_pentityUpdate_info, @object
EngineziCoreziWorld_pentityUpdate_info:
.LcsQ6:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsQ8
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_pentityUpdate_ct
	je .LcsQ9
.LcsQa:
	incq EngineziCoreziWorld_pentityUpdate_ct+40
	movq %r14,%rbx
	movq $ssPy_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssPy_info
	jmp *(%rbx)
.LcsQ8:
	movl $EngineziCoreziWorld_pentityUpdate_closure,%ebx
	jmp *-8(%r13)
.LcsQ9:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_pentityUpdate_ct+56
	movq $EngineziCoreziWorld_pentityUpdate_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_pentityUpdate_ct
	jmp .LcsQa
	.size EngineziCoreziWorld_pentityUpdate_info, .-EngineziCoreziWorld_pentityUpdate_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerInput1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerInput1_closure
.type EngineziCoreziWorld_playerInput1_closure, @object
EngineziCoreziWorld_playerInput1_closure:
	.quad	EngineziCoreziWorld_playerInput1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csQr_str:
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerInput1_srt-(EngineziCoreziWorld_playerInput1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_playerInput1_info
.type EngineziCoreziWorld_playerInput1_info, @object
EngineziCoreziWorld_playerInput1_info:
.LcsQv:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsQx
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsQz
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
	je .LcsQA
.LcsQB:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csQr_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsQz:
	movq $16,192(%r13)
.LcsQx:
	jmp *-16(%r13)
.LcsQA:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerInput1_info, .-EngineziCoreziWorld_playerInput1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerInput_srt:
	.quad	EngineziCoreziWorld_playerInput1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerInput_closure
.type EngineziCoreziWorld_playerInput_closure, @object
EngineziCoreziWorld_playerInput_closure:
	.quad	EngineziCoreziWorld_playerInput_info
	.quad	0
.section .rodata
	.align 8
.align 1
csQX_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	73
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csR0_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerInput_ct
.type EngineziCoreziWorld_playerInput_ct, @object
EngineziCoreziWorld_playerInput_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csQX_str
	.quad	csR0_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerInput_srt-(ssQH_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssQH_info:
.LcsRb:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcsRc
	movq 47(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsRc:
	movl $EngineziCoreziWorld_playerInput1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssQH_info, .-ssQH_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerInput_srt-(EngineziCoreziWorld_playerInput_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_playerInput_info
.type EngineziCoreziWorld_playerInput_info, @object
EngineziCoreziWorld_playerInput_info:
.LcsRj:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsRl
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_playerInput_ct
	je .LcsRm
.LcsRn:
	incq EngineziCoreziWorld_playerInput_ct+40
	movq %r14,%rbx
	movq $ssQH_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssQH_info
	jmp *(%rbx)
.LcsRl:
	movl $EngineziCoreziWorld_playerInput_closure,%ebx
	jmp *-8(%r13)
.LcsRm:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_playerInput_ct+56
	movq $EngineziCoreziWorld_playerInput_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_playerInput_ct
	jmp .LcsRn
	.size EngineziCoreziWorld_playerInput_info, .-EngineziCoreziWorld_playerInput_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerPosition1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerPosition1_closure
.type EngineziCoreziWorld_playerPosition1_closure, @object
EngineziCoreziWorld_playerPosition1_closure:
	.quad	EngineziCoreziWorld_playerPosition1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csRE_str:
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	80
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
	.long	EngineziCoreziWorld_playerPosition1_srt-(EngineziCoreziWorld_playerPosition1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_playerPosition1_info
.type EngineziCoreziWorld_playerPosition1_info, @object
EngineziCoreziWorld_playerPosition1_info:
.LcsRI:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsRK
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsRM
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
	je .LcsRN
.LcsRO:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csRE_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsRM:
	movq $16,192(%r13)
.LcsRK:
	jmp *-16(%r13)
.LcsRN:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerPosition1_info, .-EngineziCoreziWorld_playerPosition1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerPosition_srt:
	.quad	EngineziCoreziWorld_playerPosition1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerPosition_closure
.type EngineziCoreziWorld_playerPosition_closure, @object
EngineziCoreziWorld_playerPosition_closure:
	.quad	EngineziCoreziWorld_playerPosition_info
	.quad	0
.section .rodata
	.align 8
.align 1
csSa_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	80
	.byte	111
	.byte	115
	.byte	105
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	72
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csSd_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerPosition_ct
.type EngineziCoreziWorld_playerPosition_ct, @object
EngineziCoreziWorld_playerPosition_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csSa_str
	.quad	csSd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerPosition_srt-(ssRU_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssRU_info:
.LcsSo:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcsSp
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsSp:
	movl $EngineziCoreziWorld_playerPosition1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssRU_info, .-ssRU_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerPosition_srt-(EngineziCoreziWorld_playerPosition_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_playerPosition_info
.type EngineziCoreziWorld_playerPosition_info, @object
EngineziCoreziWorld_playerPosition_info:
.LcsSw:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsSy
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_playerPosition_ct
	je .LcsSz
.LcsSA:
	incq EngineziCoreziWorld_playerPosition_ct+40
	movq %r14,%rbx
	movq $ssRU_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssRU_info
	jmp *(%rbx)
.LcsSy:
	movl $EngineziCoreziWorld_playerPosition_closure,%ebx
	jmp *-8(%r13)
.LcsSz:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_playerPosition_ct+56
	movq $EngineziCoreziWorld_playerPosition_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_playerPosition_ct
	jmp .LcsSA
	.size EngineziCoreziWorld_playerPosition_info, .-EngineziCoreziWorld_playerPosition_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerRotation1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerRotation1_closure
.type EngineziCoreziWorld_playerRotation1_closure, @object
EngineziCoreziWorld_playerRotation1_closure:
	.quad	EngineziCoreziWorld_playerRotation1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csSR_str:
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	82
	.byte	111
	.byte	116
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerRotation1_srt-(EngineziCoreziWorld_playerRotation1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_playerRotation1_info
.type EngineziCoreziWorld_playerRotation1_info, @object
EngineziCoreziWorld_playerRotation1_info:
.LcsSV:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsSX
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsSZ
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
	je .LcsT0
.LcsT1:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csSR_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsSZ:
	movq $16,192(%r13)
.LcsSX:
	jmp *-16(%r13)
.LcsT0:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerRotation1_info, .-EngineziCoreziWorld_playerRotation1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerRotation_srt:
	.quad	EngineziCoreziWorld_playerRotation1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerRotation_closure
.type EngineziCoreziWorld_playerRotation_closure, @object
EngineziCoreziWorld_playerRotation_closure:
	.quad	EngineziCoreziWorld_playerRotation_info
	.quad	0
.section .rodata
	.align 8
.align 1
csTn_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	82
	.byte	111
	.byte	116
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	71
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csTq_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerRotation_ct
.type EngineziCoreziWorld_playerRotation_ct, @object
EngineziCoreziWorld_playerRotation_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csTn_str
	.quad	csTq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerRotation_srt-(ssT7_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssT7_info:
.LcsTB:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcsTC
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsTC:
	movl $EngineziCoreziWorld_playerRotation1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssT7_info, .-ssT7_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerRotation_srt-(EngineziCoreziWorld_playerRotation_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_playerRotation_info
.type EngineziCoreziWorld_playerRotation_info, @object
EngineziCoreziWorld_playerRotation_info:
.LcsTJ:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsTL
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_playerRotation_ct
	je .LcsTM
.LcsTN:
	incq EngineziCoreziWorld_playerRotation_ct+40
	movq %r14,%rbx
	movq $ssT7_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssT7_info
	jmp *(%rbx)
.LcsTL:
	movl $EngineziCoreziWorld_playerRotation_closure,%ebx
	jmp *-8(%r13)
.LcsTM:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_playerRotation_ct+56
	movq $EngineziCoreziWorld_playerRotation_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_playerRotation_ct
	jmp .LcsTN
	.size EngineziCoreziWorld_playerRotation_info, .-EngineziCoreziWorld_playerRotation_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerSpeed1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerSpeed1_closure
.type EngineziCoreziWorld_playerSpeed1_closure, @object
EngineziCoreziWorld_playerSpeed1_closure:
	.quad	EngineziCoreziWorld_playerSpeed1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csU4_str:
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	83
	.byte	112
	.byte	101
	.byte	101
	.byte	100
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerSpeed1_srt-(EngineziCoreziWorld_playerSpeed1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_playerSpeed1_info
.type EngineziCoreziWorld_playerSpeed1_info, @object
EngineziCoreziWorld_playerSpeed1_info:
.LcsU8:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsUa
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsUc
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
	je .LcsUd
.LcsUe:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csU4_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsUc:
	movq $16,192(%r13)
.LcsUa:
	jmp *-16(%r13)
.LcsUd:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerSpeed1_info, .-EngineziCoreziWorld_playerSpeed1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerSpeed_srt:
	.quad	EngineziCoreziWorld_playerSpeed1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerSpeed_closure
.type EngineziCoreziWorld_playerSpeed_closure, @object
EngineziCoreziWorld_playerSpeed_closure:
	.quad	EngineziCoreziWorld_playerSpeed_info
	.quad	0
.section .rodata
	.align 8
.align 1
csUA_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	83
	.byte	112
	.byte	101
	.byte	101
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	70
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csUD_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerSpeed_ct
.type EngineziCoreziWorld_playerSpeed_ct, @object
EngineziCoreziWorld_playerSpeed_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csUA_str
	.quad	csUD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerSpeed_srt-(ssUk_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssUk_info:
.LcsUO:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcsUP
	movq 31(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsUP:
	movl $EngineziCoreziWorld_playerSpeed1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssUk_info, .-ssUk_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerSpeed_srt-(EngineziCoreziWorld_playerSpeed_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_playerSpeed_info
.type EngineziCoreziWorld_playerSpeed_info, @object
EngineziCoreziWorld_playerSpeed_info:
.LcsUW:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsUY
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_playerSpeed_ct
	je .LcsUZ
.LcsV0:
	incq EngineziCoreziWorld_playerSpeed_ct+40
	movq %r14,%rbx
	movq $ssUk_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssUk_info
	jmp *(%rbx)
.LcsUY:
	movl $EngineziCoreziWorld_playerSpeed_closure,%ebx
	jmp *-8(%r13)
.LcsUZ:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_playerSpeed_ct+56
	movq $EngineziCoreziWorld_playerSpeed_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_playerSpeed_ct
	jmp .LcsV0
	.size EngineziCoreziWorld_playerSpeed_info, .-EngineziCoreziWorld_playerSpeed_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerUpdate1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerUpdate1_closure
.type EngineziCoreziWorld_playerUpdate1_closure, @object
EngineziCoreziWorld_playerUpdate1_closure:
	.quad	EngineziCoreziWorld_playerUpdate1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csVh_str:
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerUpdate1_srt-(EngineziCoreziWorld_playerUpdate1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_playerUpdate1_info
.type EngineziCoreziWorld_playerUpdate1_info, @object
EngineziCoreziWorld_playerUpdate1_info:
.LcsVl:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsVn
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsVp
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
	je .LcsVq
.LcsVr:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csVh_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsVp:
	movq $16,192(%r13)
.LcsVn:
	jmp *-16(%r13)
.LcsVq:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerUpdate1_info, .-EngineziCoreziWorld_playerUpdate1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerUpdate_srt:
	.quad	EngineziCoreziWorld_playerUpdate1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerUpdate_closure
.type EngineziCoreziWorld_playerUpdate_closure, @object
EngineziCoreziWorld_playerUpdate_closure:
	.quad	EngineziCoreziWorld_playerUpdate_info
	.quad	0
.section .rodata
	.align 8
.align 1
csVN_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
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
	.byte	113
	.byte	82
	.byte	69
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csVQ_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerUpdate_ct
.type EngineziCoreziWorld_playerUpdate_ct, @object
EngineziCoreziWorld_playerUpdate_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csVN_str
	.quad	csVQ_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerUpdate_srt-(ssVx_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssVx_info:
.LcsW1:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcsW2
	movq 39(%rbx),%rbx
	addq $8,%rbp
	jmp stg_ap_0_fast
.LcsW2:
	movl $EngineziCoreziWorld_playerUpdate1_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
	.size ssVx_info, .-ssVx_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerUpdate_srt-(EngineziCoreziWorld_playerUpdate_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_playerUpdate_info
.type EngineziCoreziWorld_playerUpdate_info, @object
EngineziCoreziWorld_playerUpdate_info:
.LcsW7:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsW9
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_playerUpdate_ct
	je .LcsWa
.LcsWb:
	incq EngineziCoreziWorld_playerUpdate_ct+40
	movq %r14,%rbx
	movq $ssVx_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssVx_info
	jmp *(%rbx)
.LcsW9:
	movl $EngineziCoreziWorld_playerUpdate_closure,%ebx
	jmp *-8(%r13)
.LcsWa:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_playerUpdate_ct+56
	movq $EngineziCoreziWorld_playerUpdate_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_playerUpdate_ct
	jmp .LcsWb
	.size EngineziCoreziWorld_playerUpdate_info, .-EngineziCoreziWorld_playerUpdate_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerVelocity1_srt:
	.quad	base_ControlziExceptionziBase_recSelError_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerVelocity1_closure
.type EngineziCoreziWorld_playerVelocity1_closure, @object
EngineziCoreziWorld_playerVelocity1_closure:
	.quad	EngineziCoreziWorld_playerVelocity1_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
csWs_str:
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	86
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
	.byte	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerVelocity1_srt-(EngineziCoreziWorld_playerVelocity1_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_playerVelocity1_info
.type EngineziCoreziWorld_playerVelocity1_info, @object
EngineziCoreziWorld_playerVelocity1_info:
.LcsWw:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsWy
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcsWA
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
	je .LcsWB
.LcsWC:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $csWs_str,%r14d
	addq $-16,%rbp
	jmp base_ControlziExceptionziBase_recSelError_info
.LcsWA:
	movq $16,192(%r13)
.LcsWy:
	jmp *-16(%r13)
.LcsWB:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerVelocity1_info, .-EngineziCoreziWorld_playerVelocity1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerVelocity_srt:
	.quad	EngineziCoreziWorld_playerVelocity1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerVelocity_closure
.type EngineziCoreziWorld_playerVelocity_closure, @object
EngineziCoreziWorld_playerVelocity_closure:
	.quad	EngineziCoreziWorld_playerVelocity_info
	.quad	0
.section .rodata
	.align 8
.align 1
csWY_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
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
	.byte	113
	.byte	82
	.byte	68
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csX1_str:
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerVelocity_ct
.type EngineziCoreziWorld_playerVelocity_ct, @object
EngineziCoreziWorld_playerVelocity_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csWY_str
	.quad	csX1_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_playerVelocity_srt-(ssWI_info)+0
	.long	0
	.quad	0
	.quad	4294967328
ssWI_info:
.LcsXc:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $1,%rax
	jne .LcsXd
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcsXd:
	movl $EngineziCoreziWorld_playerVelocity1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssWI_info, .-ssWI_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerVelocity_srt-(EngineziCoreziWorld_playerVelocity_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_playerVelocity_info
.type EngineziCoreziWorld_playerVelocity_info, @object
EngineziCoreziWorld_playerVelocity_info:
.LcsXk:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsXm
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_playerVelocity_ct
	je .LcsXn
.LcsXo:
	incq EngineziCoreziWorld_playerVelocity_ct+40
	movq %r14,%rbx
	movq $ssWI_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssWI_info
	jmp *(%rbx)
.LcsXm:
	movl $EngineziCoreziWorld_playerVelocity_closure,%ebx
	jmp *-8(%r13)
.LcsXn:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_playerVelocity_ct+56
	movq $EngineziCoreziWorld_playerVelocity_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_playerVelocity_ct
	jmp .LcsXo
	.size EngineziCoreziWorld_playerVelocity_info, .-EngineziCoreziWorld_playerVelocity_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputKeys_closure
.type EngineziCoreziWorld_inputKeys_closure, @object
EngineziCoreziWorld_inputKeys_closure:
	.quad	EngineziCoreziWorld_inputKeys_info
.section .rodata
	.align 8
.align 1
csXH_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	105
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	75
	.byte	101
	.byte	121
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	65
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csXK_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputKeys_ct
.type EngineziCoreziWorld_inputKeys_ct, @object
EngineziCoreziWorld_inputKeys_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csXH_str
	.quad	csXK_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
ssXv_info:
.LcsXU:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssXv_info, .-ssXv_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_inputKeys_info
.type EngineziCoreziWorld_inputKeys_info, @object
EngineziCoreziWorld_inputKeys_info:
.LcsXY:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsY0
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_inputKeys_ct
	je .LcsY1
.LcsY2:
	incq EngineziCoreziWorld_inputKeys_ct+40
	movq %r14,%rbx
	movq $ssXv_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssXv_info
	jmp *(%rbx)
.LcsY0:
	movl $EngineziCoreziWorld_inputKeys_closure,%ebx
	jmp *-8(%r13)
.LcsY1:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_inputKeys_ct+56
	movq $EngineziCoreziWorld_inputKeys_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_inputKeys_ct
	jmp .LcsY2
	.size EngineziCoreziWorld_inputKeys_info, .-EngineziCoreziWorld_inputKeys_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputLastMousePos_closure
.type EngineziCoreziWorld_inputLastMousePos_closure, @object
EngineziCoreziWorld_inputLastMousePos_closure:
	.quad	EngineziCoreziWorld_inputLastMousePos_info
.section .rodata
	.align 8
.align 1
csYl_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	105
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	76
	.byte	97
	.byte	115
	.byte	116
	.byte	77
	.byte	111
	.byte	117
	.byte	115
	.byte	101
	.byte	80
	.byte	111
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	122
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csYo_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputLastMousePos_ct
.type EngineziCoreziWorld_inputLastMousePos_ct, @object
EngineziCoreziWorld_inputLastMousePos_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csYl_str
	.quad	csYo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
ssYa_info:
.LcsYy:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssYa_info, .-ssYa_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_inputLastMousePos_info
.type EngineziCoreziWorld_inputLastMousePos_info, @object
EngineziCoreziWorld_inputLastMousePos_info:
.LcsYC:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsYE
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_inputLastMousePos_ct
	je .LcsYF
.LcsYG:
	incq EngineziCoreziWorld_inputLastMousePos_ct+40
	movq %r14,%rbx
	movq $ssYa_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssYa_info
	jmp *(%rbx)
.LcsYE:
	movl $EngineziCoreziWorld_inputLastMousePos_closure,%ebx
	jmp *-8(%r13)
.LcsYF:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_inputLastMousePos_ct+56
	movq $EngineziCoreziWorld_inputLastMousePos_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_inputLastMousePos_ct
	jmp .LcsYG
	.size EngineziCoreziWorld_inputLastMousePos_info, .-EngineziCoreziWorld_inputLastMousePos_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputMouseDelta_closure
.type EngineziCoreziWorld_inputMouseDelta_closure, @object
EngineziCoreziWorld_inputMouseDelta_closure:
	.quad	EngineziCoreziWorld_inputMouseDelta_info
.section .rodata
	.align 8
.align 1
csYZ_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	105
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	77
	.byte	111
	.byte	117
	.byte	115
	.byte	101
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	121
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csZ2_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputMouseDelta_ct
.type EngineziCoreziWorld_inputMouseDelta_ct, @object
EngineziCoreziWorld_inputMouseDelta_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csYZ_str
	.quad	csZ2_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
ssYO_info:
.LcsZc:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssYO_info, .-ssYO_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_inputMouseDelta_info
.type EngineziCoreziWorld_inputMouseDelta_info, @object
EngineziCoreziWorld_inputMouseDelta_info:
.LcsZg:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsZi
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_inputMouseDelta_ct
	je .LcsZj
.LcsZk:
	incq EngineziCoreziWorld_inputMouseDelta_ct+40
	movq %r14,%rbx
	movq $ssYO_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssYO_info
	jmp *(%rbx)
.LcsZi:
	movl $EngineziCoreziWorld_inputMouseDelta_closure,%ebx
	jmp *-8(%r13)
.LcsZj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_inputMouseDelta_ct+56
	movq $EngineziCoreziWorld_inputMouseDelta_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_inputMouseDelta_ct
	jmp .LcsZk
	.size EngineziCoreziWorld_inputMouseDelta_info, .-EngineziCoreziWorld_inputMouseDelta_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputMouseSpeed_closure
.type EngineziCoreziWorld_inputMouseSpeed_closure, @object
EngineziCoreziWorld_inputMouseSpeed_closure:
	.quad	EngineziCoreziWorld_inputMouseSpeed_info
.section .rodata
	.align 8
.align 1
csZD_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	105
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	77
	.byte	111
	.byte	117
	.byte	115
	.byte	101
	.byte	83
	.byte	112
	.byte	101
	.byte	101
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	120
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
csZG_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_inputMouseSpeed_ct
.type EngineziCoreziWorld_inputMouseSpeed_ct, @object
EngineziCoreziWorld_inputMouseSpeed_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	csZD_str
	.quad	csZG_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
ssZs_info:
.LcsZQ:
	movq 31(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size ssZs_info, .-ssZs_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_inputMouseSpeed_info
.type EngineziCoreziWorld_inputMouseSpeed_info, @object
EngineziCoreziWorld_inputMouseSpeed_info:
.LcsZU:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcsZW
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_inputMouseSpeed_ct
	je .LcsZX
.LcsZY:
	incq EngineziCoreziWorld_inputMouseSpeed_ct+40
	movq %r14,%rbx
	movq $ssZs_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne ssZs_info
	jmp *(%rbx)
.LcsZW:
	movl $EngineziCoreziWorld_inputMouseSpeed_closure,%ebx
	jmp *-8(%r13)
.LcsZX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_inputMouseSpeed_ct+56
	movq $EngineziCoreziWorld_inputMouseSpeed_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_inputMouseSpeed_ct
	jmp .LcsZY
	.size EngineziCoreziWorld_inputMouseSpeed_info, .-EngineziCoreziWorld_inputMouseSpeed_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldEntities_closure
.type EngineziCoreziWorld_worldEntities_closure, @object
EngineziCoreziWorld_worldEntities_closure:
	.quad	EngineziCoreziWorld_worldEntities_info
.section .rodata
	.align 8
.align 1
ct0h_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	119
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	105
	.byte	101
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	117
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct0k_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldEntities_ct
.type EngineziCoreziWorld_worldEntities_ct, @object
EngineziCoreziWorld_worldEntities_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct0h_str
	.quad	ct0k_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st06_info:
.Lct0u:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st06_info, .-st06_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_worldEntities_info
.type EngineziCoreziWorld_worldEntities_info, @object
EngineziCoreziWorld_worldEntities_info:
.Lct0y:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct0A
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_worldEntities_ct
	je .Lct0B
.Lct0C:
	incq EngineziCoreziWorld_worldEntities_ct+40
	movq %r14,%rbx
	movq $st06_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st06_info
	jmp *(%rbx)
.Lct0A:
	movl $EngineziCoreziWorld_worldEntities_closure,%ebx
	jmp *-8(%r13)
.Lct0B:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_worldEntities_ct+56
	movq $EngineziCoreziWorld_worldEntities_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_worldEntities_ct
	jmp .Lct0C
	.size EngineziCoreziWorld_worldEntities_info, .-EngineziCoreziWorld_worldEntities_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldPlayer_closure
.type EngineziCoreziWorld_worldPlayer_closure, @object
EngineziCoreziWorld_worldPlayer_closure:
	.quad	EngineziCoreziWorld_worldPlayer_info
.section .rodata
	.align 8
.align 1
ct0V_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	119
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	116
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct0Y_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldPlayer_ct
.type EngineziCoreziWorld_worldPlayer_ct, @object
EngineziCoreziWorld_worldPlayer_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct0V_str
	.quad	ct0Y_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st0J_info:
.Lct18:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st0J_info, .-st0J_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_worldPlayer_info
.type EngineziCoreziWorld_worldPlayer_info, @object
EngineziCoreziWorld_worldPlayer_info:
.Lct1c:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct1e
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_worldPlayer_ct
	je .Lct1f
.Lct1g:
	incq EngineziCoreziWorld_worldPlayer_ct+40
	movq %r14,%rbx
	movq $st0J_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st0J_info
	jmp *(%rbx)
.Lct1e:
	movl $EngineziCoreziWorld_worldPlayer_closure,%ebx
	jmp *-8(%r13)
.Lct1f:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_worldPlayer_ct+56
	movq $EngineziCoreziWorld_worldPlayer_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_worldPlayer_ct
	jmp .Lct1g
	.size EngineziCoreziWorld_worldPlayer_info, .-EngineziCoreziWorld_worldPlayer_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldState_closure
.type EngineziCoreziWorld_worldState_closure, @object
EngineziCoreziWorld_worldState_closure:
	.quad	EngineziCoreziWorld_worldState_info
.section .rodata
	.align 8
.align 1
ct1z_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	119
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	83
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	115
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct1C_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldState_ct
.type EngineziCoreziWorld_worldState_ct, @object
EngineziCoreziWorld_worldState_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct1z_str
	.quad	ct1C_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st1o_info:
.Lct1M:
	movq 31(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st1o_info, .-st1o_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_worldState_info
.type EngineziCoreziWorld_worldState_info, @object
EngineziCoreziWorld_worldState_info:
.Lct1Q:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct1S
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_worldState_ct
	je .Lct1T
.Lct1U:
	incq EngineziCoreziWorld_worldState_ct+40
	movq %r14,%rbx
	movq $st1o_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st1o_info
	jmp *(%rbx)
.Lct1S:
	movl $EngineziCoreziWorld_worldState_closure,%ebx
	jmp *-8(%r13)
.Lct1T:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_worldState_ct+56
	movq $EngineziCoreziWorld_worldState_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_worldState_ct
	jmp .Lct1U
	.size EngineziCoreziWorld_worldState_info, .-EngineziCoreziWorld_worldState_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldUniforms_closure
.type EngineziCoreziWorld_worldUniforms_closure, @object
EngineziCoreziWorld_worldUniforms_closure:
	.quad	EngineziCoreziWorld_worldUniforms_info
.section .rodata
	.align 8
.align 1
ct2d_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	119
	.byte	111
	.byte	114
	.byte	108
	.byte	100
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
	.byte	113
	.byte	82
	.byte	114
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct2g_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_worldUniforms_ct
.type EngineziCoreziWorld_worldUniforms_ct, @object
EngineziCoreziWorld_worldUniforms_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct2d_str
	.quad	ct2g_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st22_info:
.Lct2q:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st22_info, .-st22_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_worldUniforms_info
.type EngineziCoreziWorld_worldUniforms_info, @object
EngineziCoreziWorld_worldUniforms_info:
.Lct2u:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct2w
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_worldUniforms_ct
	je .Lct2x
.Lct2y:
	incq EngineziCoreziWorld_worldUniforms_ct+40
	movq %r14,%rbx
	movq $st22_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st22_info
	jmp *(%rbx)
.Lct2w:
	movl $EngineziCoreziWorld_worldUniforms_closure,%ebx
	jmp *-8(%r13)
.Lct2x:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_worldUniforms_ct+56
	movq $EngineziCoreziWorld_worldUniforms_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_worldUniforms_ct
	jmp .Lct2y
	.size EngineziCoreziWorld_worldUniforms_info, .-EngineziCoreziWorld_worldUniforms_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_setWorldUniforms1_srt:
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_setWorldUniforms1_closure
.type EngineziCoreziWorld_setWorldUniforms1_closure, @object
EngineziCoreziWorld_setWorldUniforms1_closure:
	.quad	EngineziCoreziWorld_setWorldUniforms1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ct2S_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	115
	.byte	101
	.byte	116
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
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
	.byte	113
	.byte	81
	.byte	72
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct2V_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_setWorldUniforms1_ct
.type EngineziCoreziWorld_setWorldUniforms1_ct, @object
EngineziCoreziWorld_setWorldUniforms1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ct2S_str
	.quad	ct2V_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_setWorldUniforms1_srt-(st2G_info)+0
	.long	0
	.quad	1
	.quad	4294967328
st2G_info:
.Lct35:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 23(%rbx),%rsi
	addq $16,%rbp
	jmp EngineziGraphicsziShaders_setUniforms1_info
	.size st2G_info, .-st2G_info
.text
	.align 8
	.long	EngineziCoreziWorld_setWorldUniforms1_srt-(EngineziCoreziWorld_setWorldUniforms1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_setWorldUniforms1_info
.type EngineziCoreziWorld_setWorldUniforms1_info, @object
EngineziCoreziWorld_setWorldUniforms1_info:
.Lct38:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct3a
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_setWorldUniforms1_ct
	je .Lct3b
.Lct3c:
	incq EngineziCoreziWorld_setWorldUniforms1_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $st2G_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne st2G_info
	jmp *(%rbx)
.Lct3a:
	movl $EngineziCoreziWorld_setWorldUniforms1_closure,%ebx
	jmp *-8(%r13)
.Lct3b:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_setWorldUniforms1_ct+56
	movq $EngineziCoreziWorld_setWorldUniforms1_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_setWorldUniforms1_ct
	jmp .Lct3c
	.size EngineziCoreziWorld_setWorldUniforms1_info, .-EngineziCoreziWorld_setWorldUniforms1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_setWorldUniforms_srt:
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_setWorldUniforms_closure
.type EngineziCoreziWorld_setWorldUniforms_closure, @object
EngineziCoreziWorld_setWorldUniforms_closure:
	.quad	EngineziCoreziWorld_setWorldUniforms_info
	.quad	0
.section .rodata
	.align 8
.align 1
ct3p_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	115
	.byte	101
	.byte	116
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
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
	.byte	113
	.byte	82
	.byte	86
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct3s_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_setWorldUniforms_ct
.type EngineziCoreziWorld_setWorldUniforms_ct, @object
EngineziCoreziWorld_setWorldUniforms_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ct3p_str
	.quad	ct3s_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_setWorldUniforms_srt-(EngineziCoreziWorld_setWorldUniforms_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_setWorldUniforms_info
.type EngineziCoreziWorld_setWorldUniforms_info, @object
EngineziCoreziWorld_setWorldUniforms_info:
.Lct3x:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_setWorldUniforms_ct
	je .Lct3A
.Lct3C:
	incq EngineziCoreziWorld_setWorldUniforms_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziCoreziWorld_setWorldUniforms1_info
.Lct3A:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_setWorldUniforms_ct+56
	movq $EngineziCoreziWorld_setWorldUniforms_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_setWorldUniforms_ct
	jmp .Lct3C
	.size EngineziCoreziWorld_setWorldUniforms_info, .-EngineziCoreziWorld_setWorldUniforms_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateDelta_closure
.type EngineziCoreziWorld_stateDelta_closure, @object
EngineziCoreziWorld_stateDelta_closure:
	.quad	EngineziCoreziWorld_stateDelta_info
.section .rodata
	.align 8
.align 1
ct3S_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct3V_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateDelta_ct
.type EngineziCoreziWorld_stateDelta_ct, @object
EngineziCoreziWorld_stateDelta_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct3S_str
	.quad	ct3V_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st3G_info:
.Lct45:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st3G_info, .-st3G_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_stateDelta_info
.type EngineziCoreziWorld_stateDelta_info, @object
EngineziCoreziWorld_stateDelta_info:
.Lct49:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct4b
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_stateDelta_ct
	je .Lct4c
.Lct4d:
	incq EngineziCoreziWorld_stateDelta_ct+40
	movq %r14,%rbx
	movq $st3G_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st3G_info
	jmp *(%rbx)
.Lct4b:
	movl $EngineziCoreziWorld_stateDelta_closure,%ebx
	jmp *-8(%r13)
.Lct4c:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_stateDelta_ct+56
	movq $EngineziCoreziWorld_stateDelta_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_stateDelta_ct
	jmp .Lct4d
	.size EngineziCoreziWorld_stateDelta_info, .-EngineziCoreziWorld_stateDelta_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_statePaused_closure
.type EngineziCoreziWorld_statePaused_closure, @object
EngineziCoreziWorld_statePaused_closure:
	.quad	EngineziCoreziWorld_statePaused_info
.section .rodata
	.align 8
.align 1
ct4x_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	80
	.byte	97
	.byte	117
	.byte	115
	.byte	101
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	110
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct4A_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_statePaused_ct
.type EngineziCoreziWorld_statePaused_ct, @object
EngineziCoreziWorld_statePaused_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct4x_str
	.quad	ct4A_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st4l_info:
.Lct4K:
	movq 31(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st4l_info, .-st4l_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_statePaused_info
.type EngineziCoreziWorld_statePaused_info, @object
EngineziCoreziWorld_statePaused_info:
.Lct4O:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct4Q
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_statePaused_ct
	je .Lct4R
.Lct4S:
	incq EngineziCoreziWorld_statePaused_ct+40
	movq %r14,%rbx
	movq $st4l_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st4l_info
	jmp *(%rbx)
.Lct4Q:
	movl $EngineziCoreziWorld_statePaused_closure,%ebx
	jmp *-8(%r13)
.Lct4R:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_statePaused_ct+56
	movq $EngineziCoreziWorld_statePaused_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_statePaused_ct
	jmp .Lct4S
	.size EngineziCoreziWorld_statePaused_info, .-EngineziCoreziWorld_statePaused_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateTextureCount_closure
.type EngineziCoreziWorld_stateTextureCount_closure, @object
EngineziCoreziWorld_stateTextureCount_closure:
	.quad	EngineziCoreziWorld_stateTextureCount_info
.section .rodata
	.align 8
.align 1
ct5c_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	67
	.byte	111
	.byte	117
	.byte	110
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	109
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct5f_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateTextureCount_ct
.type EngineziCoreziWorld_stateTextureCount_ct, @object
EngineziCoreziWorld_stateTextureCount_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct5c_str
	.quad	ct5f_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st4Z_info:
.Lct5p:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st4Z_info, .-st4Z_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_stateTextureCount_info
.type EngineziCoreziWorld_stateTextureCount_info, @object
EngineziCoreziWorld_stateTextureCount_info:
.Lct5t:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct5v
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_stateTextureCount_ct
	je .Lct5w
.Lct5x:
	incq EngineziCoreziWorld_stateTextureCount_ct+40
	movq %r14,%rbx
	movq $st4Z_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st4Z_info
	jmp *(%rbx)
.Lct5v:
	movl $EngineziCoreziWorld_stateTextureCount_closure,%ebx
	jmp *-8(%r13)
.Lct5w:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_stateTextureCount_ct+56
	movq $EngineziCoreziWorld_stateTextureCount_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_stateTextureCount_ct
	jmp .Lct5x
	.size EngineziCoreziWorld_stateTextureCount_info, .-EngineziCoreziWorld_stateTextureCount_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateTime_closure
.type EngineziCoreziWorld_stateTime_closure, @object
EngineziCoreziWorld_stateTime_closure:
	.quad	EngineziCoreziWorld_stateTime_info
.section .rodata
	.align 8
.align 1
ct5R_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct5U_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateTime_ct
.type EngineziCoreziWorld_stateTime_ct, @object
EngineziCoreziWorld_stateTime_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct5R_str
	.quad	ct5U_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st5F_info:
.Lct64:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st5F_info, .-st5F_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_stateTime_info
.type EngineziCoreziWorld_stateTime_info, @object
EngineziCoreziWorld_stateTime_info:
.Lct68:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct6a
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_stateTime_ct
	je .Lct6b
.Lct6c:
	incq EngineziCoreziWorld_stateTime_ct+40
	movq %r14,%rbx
	movq $st5F_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st5F_info
	jmp *(%rbx)
.Lct6a:
	movl $EngineziCoreziWorld_stateTime_closure,%ebx
	jmp *-8(%r13)
.Lct6b:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_stateTime_ct+56
	movq $EngineziCoreziWorld_stateTime_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_stateTime_ct
	jmp .Lct6c
	.size EngineziCoreziWorld_stateTime_info, .-EngineziCoreziWorld_stateTime_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateWindow_closure
.type EngineziCoreziWorld_stateWindow_closure, @object
EngineziCoreziWorld_stateWindow_closure:
	.quad	EngineziCoreziWorld_stateWindow_info
.section .rodata
	.align 8
.align 1
ct6w_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ct6z_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_stateWindow_ct
.type EngineziCoreziWorld_stateWindow_ct, @object
EngineziCoreziWorld_stateWindow_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	ct6w_str
	.quad	ct6z_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st6k_info:
.Lct6J:
	movq 39(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size st6k_info, .-st6k_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziCoreziWorld_stateWindow_info
.type EngineziCoreziWorld_stateWindow_info, @object
EngineziCoreziWorld_stateWindow_info:
.Lct6N:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct6P
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_stateWindow_ct
	je .Lct6Q
.Lct6R:
	incq EngineziCoreziWorld_stateWindow_ct+40
	movq %r14,%rbx
	movq $st6k_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne st6k_info
	jmp *(%rbx)
.Lct6P:
	movl $EngineziCoreziWorld_stateWindow_closure,%ebx
	jmp *-8(%r13)
.Lct6Q:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_stateWindow_ct+56
	movq $EngineziCoreziWorld_stateWindow_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_stateWindow_ct
	jmp .Lct6R
	.size EngineziCoreziWorld_stateWindow_info, .-EngineziCoreziWorld_stateWindow_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerAABB4_closure
.type EngineziCoreziWorld_playerAABB4_closure, @object
EngineziCoreziWorld_playerAABB4_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	1
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerAABB3_closure
.type EngineziCoreziWorld_playerAABB3_closure, @object
EngineziCoreziWorld_playerAABB3_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	2
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerAABB6_closure
.type EngineziCoreziWorld_playerAABB6_closure, @object
EngineziCoreziWorld_playerAABB6_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	192
	.long	0
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerAABB5_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziCoreziWorld_playerAABB3_closure
	.quad	EngineziCoreziWorld_playerAABB4_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerAABB5_closure
.type EngineziCoreziWorld_playerAABB5_closure, @object
EngineziCoreziWorld_playerAABB5_closure:
	.quad	EngineziCoreziWorld_playerAABB5_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	65
	.quad	32
st76_info:
.Lct7E:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .Lct7K
	addq $8,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm1
	movss .Lnt7L(%rip),%xmm0
	xorps %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-56(%r12)
	movss %xmm1,-48(%r12)
	movss 8(%rbp),%xmm1
	movss .Lnt7N(%rip),%xmm0
	xorps %xmm0,%xmm1
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-40(%r12)
	movss %xmm1,-32(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	leaq -39(%r12),%rax
	movq %rax,-16(%r12)
	movq $EngineziCoreziWorld_playerAABB6_closure+1,-8(%r12)
	leaq -55(%r12),%rax
	movq %rax,0(%r12)
	leaq -23(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lct7K:
	movq $64,192(%r13)
.Lct7I:
	jmp *-16(%r13)
	.size st76_info, .-st76_info
.section .rodata
	.align 8
.align 4
.Lnt7L:
	.long	-2147483648
.section .rodata
	.align 8
.align 4
.Lnt7N:
	.long	-2147483648
.text
	.align 8
	.long	EngineziCoreziWorld_playerAABB5_srt-(st77_info)+0
	.long	0
	.quad	0
	.quad	30064771104
st77_info:
.Lct7T:
	incq KNOWN_CALL_ctr
	movss 7(%rbx),%xmm0
	movss %xmm0,0(%rbp)
	movl $EngineziCoreziWorld_playerAABB4_closure+1,%r14d
	movl $EngineziCoreziWorld_playerAABB3_closure+1,%esi
	movq $st76_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size st77_info, .-st77_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerAABB5_srt-(EngineziCoreziWorld_playerAABB5_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziCoreziWorld_playerAABB5_info
.type EngineziCoreziWorld_playerAABB5_info, @object
EngineziCoreziWorld_playerAABB5_info:
.Lct7Y:
	incq ENT_STATIC_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct80
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lct82
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
	je .Lct83
.Lct84:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziCoreziWorld_playerAABB4_closure+1,%r14d
	movl $EngineziCoreziWorld_playerAABB3_closure+1,%esi
	movq $st77_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.Lct82:
	movq $16,192(%r13)
.Lct80:
	jmp *-16(%r13)
.Lct83:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerAABB5_info, .-EngineziCoreziWorld_playerAABB5_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerAABB2_closure
.type EngineziCoreziWorld_playerAABB2_closure, @object
EngineziCoreziWorld_playerAABB2_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	63
	.long	0
.section .data
	.align 8
.align 1
EngineziCoreziWorld_playerAABB1_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	EngineziCoreziWorld_playerAABB3_closure
	.quad	EngineziCoreziWorld_playerAABB4_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerAABB1_closure
.type EngineziCoreziWorld_playerAABB1_closure, @object
EngineziCoreziWorld_playerAABB1_closure:
	.quad	EngineziCoreziWorld_playerAABB1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sstB_info:
.Lct8B:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lct8H
	addq $4,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziVec_Vec3_con_info,-24(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq $EngineziCoreziWorld_playerAABB2_closure+1,-8(%r12)
	movq %rbx,0(%r12)
	leaq -23(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lct8H:
	movq $32,192(%r13)
.Lct8F:
	jmp *-16(%r13)
	.size sstB_info, .-sstB_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerAABB1_srt-(sstA_info)+0
	.long	0
	.quad	0
	.quad	30064771104
sstA_info:
.Lct8L:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movl $EngineziCoreziWorld_playerAABB4_closure+1,%r14d
	movl $EngineziCoreziWorld_playerAABB3_closure+1,%esi
	movq $sstB_info,-8(%rbp)
	addq $-8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sstA_info, .-sstA_info
.text
	.align 8
	.long	EngineziCoreziWorld_playerAABB1_srt-(EngineziCoreziWorld_playerAABB1_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl EngineziCoreziWorld_playerAABB1_info
.type EngineziCoreziWorld_playerAABB1_info, @object
EngineziCoreziWorld_playerAABB1_info:
.Lct8P:
	incq ENT_STATIC_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct8R
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lct8T
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
	je .Lct8U
.Lct8V:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziCoreziWorld_playerAABB4_closure+1,%r14d
	movl $EngineziCoreziWorld_playerAABB3_closure+1,%esi
	movq $sstA_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.Lct8T:
	movq $16,192(%r13)
.Lct8R:
	jmp *-16(%r13)
.Lct8U:
	jmp *(%rbx)
	.size EngineziCoreziWorld_playerAABB1_info, .-EngineziCoreziWorld_playerAABB1_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_playerAABB_closure
.type EngineziCoreziWorld_playerAABB_closure, @object
EngineziCoreziWorld_playerAABB_closure:
	.quad	EngineziModelziAABB_AABB_static_info
	.quad	EngineziCoreziWorld_playerAABB5_closure
	.quad	EngineziCoreziWorld_playerAABB1_closure
	.quad	0
.section .data
	.align 8
.align 1
EngineziCoreziWorld_loadWorldTexture5_srt:
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziObjects_zdwtextureBinding_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture5_closure
.type EngineziCoreziWorld_loadWorldTexture5_closure, @object
EngineziCoreziWorld_loadWorldTexture5_closure:
	.quad	EngineziCoreziWorld_loadWorldTexture5_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st93_info:
.Lct9h:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lct9m
	addq $3,top_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziStateVar_StateVar_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lct9m:
	movq $24,192(%r13)
.Lct9k:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size st93_info, .-st93_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture5_srt-(EngineziCoreziWorld_loadWorldTexture5_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_loadWorldTexture5_info
.type EngineziCoreziWorld_loadWorldTexture5_info, @object
EngineziCoreziWorld_loadWorldTexture5_info:
.Lct9q:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lct9s
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lct9u
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
	je .Lct9v
.Lct9w:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureTarget_zdfBindableTextureTargetTextureTarget2D_closure,%r14d
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureTarget_Texture2D_closure+1,%esi
	movq $st93_info,-24(%rbp)
	addq $-24,%rbp
	jmp OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziObjects_zdwtextureBinding_info
.Lct9u:
	movq $16,192(%r13)
.Lct9s:
	jmp *-16(%r13)
.Lct9v:
	jmp *(%rbx)
	.size EngineziCoreziWorld_loadWorldTexture5_info, .-EngineziCoreziWorld_loadWorldTexture5_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture4_closure
.type EngineziCoreziWorld_loadWorldTexture4_closure, @object
EngineziCoreziWorld_loadWorldTexture4_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_static_info
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziFilter_Nearest_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture3_closure
.type EngineziCoreziWorld_loadWorldTexture3_closure, @object
EngineziCoreziWorld_loadWorldTexture3_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_static_info
	.quad	EngineziCoreziWorld_loadWorldTexture4_closure+1
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziFilter_Nearest_closure+1
	.quad	1
.section .data
	.align 8
.align 1
EngineziCoreziWorld_loadWorldTexture2_srt:
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziParameters_zdwtextureFilter_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture2_closure
.type EngineziCoreziWorld_loadWorldTexture2_closure, @object
EngineziCoreziWorld_loadWorldTexture2_closure:
	.quad	EngineziCoreziWorld_loadWorldTexture2_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
st9H_info:
.Lct9W:
	incq UNKNOWN_CALL_ctr
	movq %r14,%rbx
	movl $EngineziCoreziWorld_loadWorldTexture3_closure+1,%r14d
	addq $8,%rbp
	jmp stg_ap_p_fast
	.size st9H_info, .-st9H_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture2_srt-(EngineziCoreziWorld_loadWorldTexture2_info)+0
	.long	0
	.quad	0
	.quad	4294967318
.globl EngineziCoreziWorld_loadWorldTexture2_info
.type EngineziCoreziWorld_loadWorldTexture2_info, @object
EngineziCoreziWorld_loadWorldTexture2_info:
.Lcta0:
	incq ENT_STATIC_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lcta2
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lcta4
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
	je .Lcta5
.Lcta6:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureTarget_zdfParameterizzedTextureTargetTextureTarget2D_closure,%r14d
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureTarget_Texture2D_closure+1,%esi
	movq $st9H_info,-24(%rbp)
	addq $-24,%rbp
	jmp OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziParameters_zdwtextureFilter_info
.Lcta4:
	movq $16,192(%r13)
.Lcta2:
	jmp *-16(%r13)
.Lcta5:
	jmp *(%rbx)
	.size EngineziCoreziWorld_loadWorldTexture2_info, .-EngineziCoreziWorld_loadWorldTexture2_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture6_closure
.type EngineziCoreziWorld_loadWorldTexture6_closure, @object
EngineziCoreziWorld_loadWorldTexture6_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	1
.section .data
	.align 8
.align 1
EngineziCoreziWorld_loadWorldTexture1_srt:
	.quad	base_GHCziList_badHead_closure
	.quad	EngineziGraphicsziTextures_juicyLoadImage1_closure
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureObject_zdfGeneratableObjectNameTextureObjectzuzdcgenObjectNames_closure
	.quad	OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziSpecification_zdwa13_closure
	.quad	EngineziCoreziWorld_loadWorldTexture2_closure
	.quad	EngineziCoreziWorld_loadWorldTexture5_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture1_closure
.type EngineziCoreziWorld_loadWorldTexture1_closure, @object
EngineziCoreziWorld_loadWorldTexture1_closure:
	.quad	EngineziCoreziWorld_loadWorldTexture1_info
	.quad	0
.section .rodata
	.align 8
.align 1
ctbk_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	84
	.byte	101
	.byte	120
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	82
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ctbn_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture1_ct
.type EngineziCoreziWorld_loadWorldTexture1_ct, @object
EngineziCoreziWorld_loadWorldTexture1_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	ctbk_str
	.quad	ctbn_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(stan_info)+0
	.long	0
	.quad	0
	.quad	4294967328
stan_info:
.Lctc1:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lctc2
	movl $base_GHCziList_badHead_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_0_fast
.Lctc2:
	movq 6(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size stan_info, .-stan_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(ssuk_info)+0
	.long	0
	.quad	1
	.quad	4294967313
ssuk_info:
.Lctcb:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lctcd
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $stan_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne stan_info
	jmp *(%rbx)
.Lctcd:
	jmp *-16(%r13)
	.size ssuk_info, .-ssuk_info
.text
	.align 8
	.quad	1925
	.quad	32
stax_info:
.LctcC:
	incq RET_UNBOXED_TUP_ctr
	movq 8(%rbp),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
	.size stax_info, .-stax_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(stay_info)+24
	.long	0
	.quad	1413
	.quad	4294967328
stay_info:
.LctcF:
	movq 7(%rbx),%rax
	movslq %eax,%r8
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%rax
	movq %rax,-8(%rbp)
	movq $0,-16(%rbp)
	movq 16(%rbp),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbp),%rax
	movq %rax,-32(%rbp)
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureTarget_zdfTwoDimensionalTextureTargetTextureTarget2DzuzdcmarshalTwoDimensionalTextureTarget_closure+2,%r14d
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureTarget_Texture2D_closure+1,%esi
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziPixelRectanglesziColorTable_NoProxy_closure+1,%edi
	movl $OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziPixelInternalFormat_RGBzq_closure+1,%r9d
	movq $stax_info,0(%rbp)
	addq $-32,%rbp
	jmp OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziSpecification_zdwa13_info
	.size stay_info, .-stay_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(staz_info)+24
	.long	0
	.quad	1413
	.quad	4294967328
staz_info:
.LctcM:
	movq 7(%rbx),%rbx
	movq $stay_info,0(%rbp)
	testq $7,%rbx
	jne stay_info
	jmp *(%rbx)
	.size staz_info, .-staz_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(staA_info)+24
	.long	0
	.quad	389
	.quad	4294967328
staA_info:
.LctcS:
	movq 40(%rbp),%rbx
	movq $staz_info,0(%rbp)
	testq $7,%rbx
	jne staz_info
	jmp *(%rbx)
	.size staA_info, .-staA_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(staB_info)+24
	.long	0
	.quad	389
	.quad	12884901920
staB_info:
.LctcY:
	incq UNKNOWN_CALL_ctr
	movl $EngineziCoreziWorld_loadWorldTexture2_closure,%ebx
	movq $staA_info,0(%rbp)
	jmp stg_ap_v_fast
	.size staB_info, .-staB_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(stap_info)+0
	.long	0
	.quad	389
	.quad	107374182432
stap_info:
.Lctd1:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lctd5
	addq $5,EngineziCoreziWorld_loadWorldTexture1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	movq $ssuk_info,-32(%r12)
	movq 8(%rbp),%rax
	movq %rax,-16(%r12)
	movq $base_DataziMaybe_Just_con_info,-8(%r12)
	leaq -32(%r12),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	leaq -32(%r12),%rax
	movq %rax,8(%rbp)
	movq 15(%rbx),%rbx
	leaq -6(%r12),%r14
	movq $staB_info,0(%rbp)
	jmp stg_ap_pv_fast
.Lctd5:
	movq $40,192(%r13)
.Lctd3:
	jmp *-16(%r13)
	.size stap_info, .-stap_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(staq_info)+0
	.long	0
	.quad	196
	.quad	244813135904
staq_info:
.Lctdb:
	movq %rbx,0(%rbp)
	movl $EngineziCoreziWorld_loadWorldTexture5_closure,%ebx
	movq $stap_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne stap_info
	jmp *(%rbx)
	.size staq_info, .-staq_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(star_info)+0
	.long	0
	.quad	67
	.quad	261993005088
star_info:
.Lctdh:
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq $stg_ap_v_info,-16(%rbp)
	movl $EngineziCoreziWorld_loadWorldTexture6_closure+1,%r14d
	movq $staq_info,-8(%rbp)
	addq $-16,%rbp
	jmp OpenGLzm2zi9zi1zi0_GraphicsziRenderingziOpenGLziGLziTexturingziTextureObject_zdfGeneratableObjectNameTextureObjectzuzdcgenObjectNames_info
	.size star_info, .-star_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(stas_info)+0
	.long	0
	.quad	3
	.quad	261993005088
stas_info:
.Lctdl:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $star_info,0(%rbp)
	testq $7,%rbx
	jne star_info
	jmp *(%rbx)
	.size stas_info, .-stas_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(stat_info)+0
	.long	0
	.quad	2
	.quad	261993005088
stat_info:
.Lctdu:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $stas_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne stas_info
	jmp *(%rbx)
	.size stat_info, .-stat_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(stau_info)+0
	.long	0
	.quad	1
	.quad	261993005088
stau_info:
.LctdB:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $stat_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne stat_info
	jmp *(%rbx)
	.size stau_info, .-stau_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(stav_info)+0
	.long	0
	.quad	1
	.quad	261993005088
stav_info:
.LctdI:
	movq $stau_info,0(%rbp)
	testq $7,%rbx
	jne stau_info
	jmp *(%rbx)
	.size stav_info, .-stav_info
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture1_srt-(EngineziCoreziWorld_loadWorldTexture1_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	270582939663
.globl EngineziCoreziWorld_loadWorldTexture1_info
.type EngineziCoreziWorld_loadWorldTexture1_info, @object
EngineziCoreziWorld_loadWorldTexture1_info:
.LctdO:
	leaq -80(%rbp),%rax
	cmpq %r15,%rax
	jb .LctdQ
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_loadWorldTexture1_ct
	je .LctdR
.LctdS:
	incq EngineziCoreziWorld_loadWorldTexture1_ct+40
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	movq %rsi,%r14
	movq $stav_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziGraphicsziTextures_juicyLoadImage1_info
.LctdQ:
	movl $EngineziCoreziWorld_loadWorldTexture1_closure,%ebx
	jmp *-8(%r13)
.LctdR:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_loadWorldTexture1_ct+56
	movq $EngineziCoreziWorld_loadWorldTexture1_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_loadWorldTexture1_ct
	jmp .LctdS
	.size EngineziCoreziWorld_loadWorldTexture1_info, .-EngineziCoreziWorld_loadWorldTexture1_info
.section .data
	.align 8
.align 1
EngineziCoreziWorld_loadWorldTexture_srt:
	.quad	EngineziCoreziWorld_loadWorldTexture1_closure
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture_closure
.type EngineziCoreziWorld_loadWorldTexture_closure, @object
EngineziCoreziWorld_loadWorldTexture_closure:
	.quad	EngineziCoreziWorld_loadWorldTexture_info
	.quad	0
.section .rodata
	.align 8
.align 1
cte2_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
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
	.byte	113
	.byte	82
	.byte	88
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cte5_str:
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_loadWorldTexture_ct
.type EngineziCoreziWorld_loadWorldTexture_ct, @object
EngineziCoreziWorld_loadWorldTexture_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cte2_str
	.quad	cte5_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziCoreziWorld_loadWorldTexture_srt-(EngineziCoreziWorld_loadWorldTexture_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
.globl EngineziCoreziWorld_loadWorldTexture_info
.type EngineziCoreziWorld_loadWorldTexture_info, @object
EngineziCoreziWorld_loadWorldTexture_info:
.Lctea:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_loadWorldTexture_ct
	je .Lcted
.Lctef:
	incq EngineziCoreziWorld_loadWorldTexture_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziCoreziWorld_loadWorldTexture1_info
.Lcted:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_loadWorldTexture_ct+56
	movq $EngineziCoreziWorld_loadWorldTexture_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_loadWorldTexture_ct
	jmp .Lctef
	.size EngineziCoreziWorld_loadWorldTexture_info, .-EngineziCoreziWorld_loadWorldTexture_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_WorldState_closure
.type EngineziCoreziWorld_WorldState_closure, @object
EngineziCoreziWorld_WorldState_closure:
	.quad	EngineziCoreziWorld_WorldState_info
.section .rodata
	.align 8
.align 1
cten_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	83
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	57
	.byte	71
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cteq_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	69
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_WorldState_ct
.type EngineziCoreziWorld_WorldState_ct, @object
EngineziCoreziWorld_WorldState_ct:
	.quad	0
	.quad	5
	.quad	0
	.quad	cten_str
	.quad	cteq_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	21474836502
	.quad	0
	.quad	15
EngineziCoreziWorld_WorldState_info:
.Lctev:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcteA
	addq $6,EngineziCoreziWorld_WorldState_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_WorldState_ct
	je .LcteC
.LcteE:
	incq EngineziCoreziWorld_WorldState_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_WorldState_con_info,-40(%r12)
	movq %r14,-32(%r12)
	movq %rsi,-24(%r12)
	movq %rdi,-16(%r12)
	movq %r8,-8(%r12)
	movq %r9,0(%r12)
	leaq -39(%r12),%rbx
	jmp *0(%rbp)
.LcteA:
	movq $48,192(%r13)
.Lctey:
	movl $EngineziCoreziWorld_WorldState_closure,%ebx
	jmp *-8(%r13)
.LcteC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_WorldState_ct+56
	movq $EngineziCoreziWorld_WorldState_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_WorldState_ct
	jmp .LcteE
	.size EngineziCoreziWorld_WorldState_info, .-EngineziCoreziWorld_WorldState_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_World_closure
.type EngineziCoreziWorld_World_closure, @object
EngineziCoreziWorld_World_closure:
	.quad	EngineziCoreziWorld_World_info
.section .rodata
	.align 8
.align 1
cteM_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cteP_str:
	.byte	77
	.byte	76
	.byte	76
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_World_ct
.type EngineziCoreziWorld_World_ct, @object
EngineziCoreziWorld_World_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cteM_str
	.quad	cteP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
EngineziCoreziWorld_World_info:
.LcteU:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcteZ
	addq $5,EngineziCoreziWorld_World_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_World_ct
	je .Lctf1
.Lctf3:
	incq EngineziCoreziWorld_World_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq %r14,-24(%r12)
	movq %rsi,-16(%r12)
	movq %rdi,-8(%r12)
	movq %r8,0(%r12)
	leaq -31(%r12),%rbx
	jmp *0(%rbp)
.LcteZ:
	movq $40,192(%r13)
.LcteX:
	movl $EngineziCoreziWorld_World_closure,%ebx
	jmp *-8(%r13)
.Lctf1:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_World_ct+56
	movq $EngineziCoreziWorld_World_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_World_ct
	jmp .Lctf3
	.size EngineziCoreziWorld_World_info, .-EngineziCoreziWorld_World_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_Input_closure
.type EngineziCoreziWorld_Input_closure, @object
EngineziCoreziWorld_Input_closure:
	.quad	EngineziCoreziWorld_Input_info
.section .rodata
	.align 8
.align 1
ctfb_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	89
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ctfe_str:
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_Input_ct
.type EngineziCoreziWorld_Input_ct, @object
EngineziCoreziWorld_Input_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	ctfb_str
	.quad	ctfe_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
EngineziCoreziWorld_Input_info:
.Lctfj:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lctfo
	addq $5,EngineziCoreziWorld_Input_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_Input_ct
	je .Lctfq
.Lctfs:
	incq EngineziCoreziWorld_Input_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Input_con_info,-32(%r12)
	movq %r14,-24(%r12)
	movq %rsi,-16(%r12)
	movq %rdi,-8(%r12)
	movq %r8,0(%r12)
	leaq -31(%r12),%rbx
	jmp *0(%rbp)
.Lctfo:
	movq $40,192(%r13)
.Lctfm:
	movl $EngineziCoreziWorld_Input_closure,%ebx
	jmp *-8(%r13)
.Lctfq:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_Input_ct+56
	movq $EngineziCoreziWorld_Input_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_Input_ct
	jmp .Lctfs
	.size EngineziCoreziWorld_Input_info, .-EngineziCoreziWorld_Input_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_Player_closure
.type EngineziCoreziWorld_Player_closure, @object
EngineziCoreziWorld_Player_closure:
	.quad	EngineziCoreziWorld_Player_info
.section .rodata
	.align 8
.align 1
ctfA_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ctfD_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	77
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_Player_ct
.type EngineziCoreziWorld_Player_ct, @object
EngineziCoreziWorld_Player_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	ctfA_str
	.quad	ctfD_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	25769803799
	.quad	0
	.quad	15
EngineziCoreziWorld_Player_info:
.LctfI:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LctfN
	addq $7,EngineziCoreziWorld_Player_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_Player_ct
	je .LctfP
.LctfR:
	incq EngineziCoreziWorld_Player_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_Player_con_info,-48(%r12)
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
.LctfN:
	movq $56,192(%r13)
.LctfL:
	movl $EngineziCoreziWorld_Player_closure,%ebx
	jmp *-8(%r13)
.LctfP:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_Player_ct+56
	movq $EngineziCoreziWorld_Player_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_Player_ct
	jmp .LctfR
	.size EngineziCoreziWorld_Player_info, .-EngineziCoreziWorld_Player_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_PureEntity_closure
.type EngineziCoreziWorld_PureEntity_closure, @object
EngineziCoreziWorld_PureEntity_closure:
	.quad	EngineziCoreziWorld_PureEntity_info
.section .rodata
	.align 8
.align 1
ctg0_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	80
	.byte	117
	.byte	114
	.byte	101
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	85
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ctg3_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_PureEntity_ct
.type EngineziCoreziWorld_PureEntity_ct, @object
EngineziCoreziWorld_PureEntity_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	ctg0_str
	.quad	ctg3_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
EngineziCoreziWorld_PureEntity_info:
.Lctg8:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .Lctgd
	addq $5,EngineziCoreziWorld_PureEntity_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_PureEntity_ct
	je .Lctgf
.Lctgh:
	incq EngineziCoreziWorld_PureEntity_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_PureEntity_con_info,-32(%r12)
	movq %r14,-24(%r12)
	movq %rsi,-16(%r12)
	movq %rdi,-8(%r12)
	movq %r8,0(%r12)
	leaq -30(%r12),%rbx
	jmp *0(%rbp)
.Lctgd:
	movq $40,192(%r13)
.Lctgb:
	movl $EngineziCoreziWorld_PureEntity_closure,%ebx
	jmp *-8(%r13)
.Lctgf:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_PureEntity_ct+56
	movq $EngineziCoreziWorld_PureEntity_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_PureEntity_ct
	jmp .Lctgh
	.size EngineziCoreziWorld_PureEntity_info, .-EngineziCoreziWorld_PureEntity_info
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_EffectfulEntity_closure
.type EngineziCoreziWorld_EffectfulEntity_closure, @object
EngineziCoreziWorld_EffectfulEntity_closure:
	.quad	EngineziCoreziWorld_EffectfulEntity_info
.section .rodata
	.align 8
.align 1
ctgp_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	69
	.byte	102
	.byte	102
	.byte	101
	.byte	99
	.byte	116
	.byte	102
	.byte	117
	.byte	108
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	87
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
ctgs_str:
	.byte	83
	.byte	77
	.byte	83
	.byte	46
	.byte	0
.data
	.align 8
.align 1
.globl EngineziCoreziWorld_EffectfulEntity_ct
.type EngineziCoreziWorld_EffectfulEntity_ct, @object
EngineziCoreziWorld_EffectfulEntity_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	ctgp_str
	.quad	ctgs_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
EngineziCoreziWorld_EffectfulEntity_info:
.Lctgx:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LctgC
	addq $5,EngineziCoreziWorld_EffectfulEntity_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziCoreziWorld_EffectfulEntity_ct
	je .LctgE
.LctgG:
	incq EngineziCoreziWorld_EffectfulEntity_ct+40
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_EffectfulEntity_con_info,-32(%r12)
	movq %r14,-24(%r12)
	movq %rsi,-16(%r12)
	movq %rdi,-8(%r12)
	movq %r8,0(%r12)
	leaq -29(%r12),%rbx
	jmp *0(%rbp)
.LctgC:
	movq $40,192(%r13)
.LctgA:
	movl $EngineziCoreziWorld_EffectfulEntity_closure,%ebx
	jmp *-8(%r13)
.LctgE:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziCoreziWorld_EffectfulEntity_ct+56
	movq $EngineziCoreziWorld_EffectfulEntity_ct,ticky_entry_ctrs
	movq $1,EngineziCoreziWorld_EffectfulEntity_ct
	jmp .LctgG
	.size EngineziCoreziWorld_EffectfulEntity_info, .-EngineziCoreziWorld_EffectfulEntity_info
.section .rodata
	.align 8
.align 1
itgM_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	83
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	itgM_str-(EngineziCoreziWorld_WorldState_con_info)+0
	.long	0
	.quad	5
	.quad	1
.globl EngineziCoreziWorld_WorldState_con_info
.type EngineziCoreziWorld_WorldState_con_info, @object
EngineziCoreziWorld_WorldState_con_info:
.LctgP:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_WorldState_con_info, .-EngineziCoreziWorld_WorldState_con_info
.section .rodata
	.align 8
.align 1
itgR_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	83
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	0
.text
	.align 8
	.long	itgR_str-(EngineziCoreziWorld_WorldState_static_info)+0
	.long	0
	.quad	5
	.quad	7
.globl EngineziCoreziWorld_WorldState_static_info
.type EngineziCoreziWorld_WorldState_static_info, @object
EngineziCoreziWorld_WorldState_static_info:
.LctgU:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_WorldState_static_info, .-EngineziCoreziWorld_WorldState_static_info
.section .rodata
	.align 8
.align 1
itgY_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	0
.text
	.align 8
	.long	itgY_str-(EngineziCoreziWorld_World_con_info)+0
	.long	0
	.quad	4
	.quad	1
.globl EngineziCoreziWorld_World_con_info
.type EngineziCoreziWorld_World_con_info, @object
EngineziCoreziWorld_World_con_info:
.Lcth1:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_World_con_info, .-EngineziCoreziWorld_World_con_info
.section .rodata
	.align 8
.align 1
ith3_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	0
.text
	.align 8
	.long	ith3_str-(EngineziCoreziWorld_World_static_info)+0
	.long	0
	.quad	4
	.quad	7
.globl EngineziCoreziWorld_World_static_info
.type EngineziCoreziWorld_World_static_info, @object
EngineziCoreziWorld_World_static_info:
.Lcth6:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_World_static_info, .-EngineziCoreziWorld_World_static_info
.section .rodata
	.align 8
.align 1
itha_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	0
.text
	.align 8
	.long	itha_str-(EngineziCoreziWorld_Input_con_info)+0
	.long	0
	.quad	4
	.quad	1
.globl EngineziCoreziWorld_Input_con_info
.type EngineziCoreziWorld_Input_con_info, @object
EngineziCoreziWorld_Input_con_info:
.Lcthd:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_Input_con_info, .-EngineziCoreziWorld_Input_con_info
.section .rodata
	.align 8
.align 1
ithf_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	73
	.byte	110
	.byte	112
	.byte	117
	.byte	116
	.byte	0
.text
	.align 8
	.long	ithf_str-(EngineziCoreziWorld_Input_static_info)+0
	.long	0
	.quad	4
	.quad	7
.globl EngineziCoreziWorld_Input_static_info
.type EngineziCoreziWorld_Input_static_info, @object
EngineziCoreziWorld_Input_static_info:
.Lcthi:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_Input_static_info, .-EngineziCoreziWorld_Input_static_info
.section .rodata
	.align 8
.align 1
ithq_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	0
.text
	.align 8
	.long	ithq_str-(EngineziCoreziWorld_Player_con_info)+0
	.long	0
	.quad	6
	.quad	1
.globl EngineziCoreziWorld_Player_con_info
.type EngineziCoreziWorld_Player_con_info, @object
EngineziCoreziWorld_Player_con_info:
.Lctht:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_Player_con_info, .-EngineziCoreziWorld_Player_con_info
.section .rodata
	.align 8
.align 1
ithv_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	80
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	0
.text
	.align 8
	.long	ithv_str-(EngineziCoreziWorld_Player_static_info)+0
	.long	0
	.quad	6
	.quad	7
.globl EngineziCoreziWorld_Player_static_info
.type EngineziCoreziWorld_Player_static_info, @object
EngineziCoreziWorld_Player_static_info:
.Lcthy:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_Player_static_info, .-EngineziCoreziWorld_Player_static_info
.section .rodata
	.align 8
.align 1
ithA_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	80
	.byte	117
	.byte	114
	.byte	101
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	0
.text
	.align 8
	.long	ithA_str-(EngineziCoreziWorld_PureEntity_con_info)+0
	.long	0
	.quad	4
	.quad	4294967297
.globl EngineziCoreziWorld_PureEntity_con_info
.type EngineziCoreziWorld_PureEntity_con_info, @object
EngineziCoreziWorld_PureEntity_con_info:
.LcthD:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	addq $2,%rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_PureEntity_con_info, .-EngineziCoreziWorld_PureEntity_con_info
.section .rodata
	.align 8
.align 1
ithF_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	80
	.byte	117
	.byte	114
	.byte	101
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	0
.text
	.align 8
	.long	ithF_str-(EngineziCoreziWorld_PureEntity_static_info)+0
	.long	0
	.quad	4
	.quad	4294967303
.globl EngineziCoreziWorld_PureEntity_static_info
.type EngineziCoreziWorld_PureEntity_static_info, @object
EngineziCoreziWorld_PureEntity_static_info:
.LcthI:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	addq $2,%rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_PureEntity_static_info, .-EngineziCoreziWorld_PureEntity_static_info
.section .rodata
	.align 8
.align 1
ithK_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	69
	.byte	102
	.byte	102
	.byte	101
	.byte	99
	.byte	116
	.byte	102
	.byte	117
	.byte	108
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	0
.text
	.align 8
	.long	ithK_str-(EngineziCoreziWorld_EffectfulEntity_con_info)+0
	.long	0
	.quad	4
	.quad	8589934593
.globl EngineziCoreziWorld_EffectfulEntity_con_info
.type EngineziCoreziWorld_EffectfulEntity_con_info, @object
EngineziCoreziWorld_EffectfulEntity_con_info:
.LcthN:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	addq $3,%rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_EffectfulEntity_con_info, .-EngineziCoreziWorld_EffectfulEntity_con_info
.section .rodata
	.align 8
.align 1
ithP_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	46
	.byte	69
	.byte	102
	.byte	102
	.byte	101
	.byte	99
	.byte	116
	.byte	102
	.byte	117
	.byte	108
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	0
.text
	.align 8
	.long	ithP_str-(EngineziCoreziWorld_EffectfulEntity_static_info)+0
	.long	0
	.quad	4
	.quad	8589934599
.globl EngineziCoreziWorld_EffectfulEntity_static_info
.type EngineziCoreziWorld_EffectfulEntity_static_info, @object
EngineziCoreziWorld_EffectfulEntity_static_info:
.LcthS:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	addq $3,%rbx
	jmp *0(%rbp)
	.size EngineziCoreziWorld_EffectfulEntity_static_info, .-EngineziCoreziWorld_EffectfulEntity_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
