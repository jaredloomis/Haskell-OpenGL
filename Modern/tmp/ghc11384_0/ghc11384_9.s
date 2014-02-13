.data
	.align 8
.align 1
.globl __stginit_EngineziGraphicsziWindow
.type __stginit_EngineziGraphicsziWindow, @object
__stginit_EngineziGraphicsziWindow:
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow10_closure
.type EngineziGraphicsziWindow_defaultWindow10_closure, @object
EngineziGraphicsziWindow_defaultWindow10_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	60
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow9_closure
.type EngineziGraphicsziWindow_defaultWindow9_closure, @object
EngineziGraphicsziWindow_defaultWindow9_closure:
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_WindowHintzqRefreshRate_static_info
	.quad	EngineziGraphicsziWindow_defaultWindow10_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow8_closure
.type EngineziGraphicsziWindow_defaultWindow8_closure, @object
EngineziGraphicsziWindow_defaultWindow8_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	4
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow7_closure
.type EngineziGraphicsziWindow_defaultWindow7_closure, @object
EngineziGraphicsziWindow_defaultWindow7_closure:
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFWziTypes_WindowHintzqSamples_static_info
	.quad	EngineziGraphicsziWindow_defaultWindow8_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow6_closure
.type EngineziGraphicsziWindow_defaultWindow6_closure, @object
EngineziGraphicsziWindow_defaultWindow6_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziGraphicsziWindow_defaultWindow7_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow5_closure
.type EngineziGraphicsziWindow_defaultWindow5_closure, @object
EngineziGraphicsziWindow_defaultWindow5_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziGraphicsziWindow_defaultWindow9_closure+1
	.quad	EngineziGraphicsziWindow_defaultWindow6_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow4_closure
.type EngineziGraphicsziWindow_defaultWindow4_closure, @object
EngineziGraphicsziWindow_defaultWindow4_closure:
	.quad	EngineziGraphicsziWindow_defaultWindow4_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cqFw_str:
	.byte	71
	.byte	76
	.byte	70
	.byte	87
	.byte	32
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziGraphicsziWindow_defaultWindow4_info
.type EngineziGraphicsziWindow_defaultWindow4_info, @object
EngineziGraphicsziWindow_defaultWindow4_info:
.LcqFA:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqFC
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcqFE
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
	je .LcqFF
.LcqFG:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cqFw_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcqFE:
	movq $16,192(%r13)
.LcqFC:
	jmp *-16(%r13)
.LcqFF:
	jmp *(%rbx)
	.size EngineziGraphicsziWindow_defaultWindow4_info, .-EngineziGraphicsziWindow_defaultWindow4_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow3_closure
.type EngineziGraphicsziWindow_defaultWindow3_closure, @object
EngineziGraphicsziWindow_defaultWindow3_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	800
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow2_closure
.type EngineziGraphicsziWindow_defaultWindow2_closure, @object
EngineziGraphicsziWindow_defaultWindow2_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	600
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow1_closure
.type EngineziGraphicsziWindow_defaultWindow1_closure, @object
EngineziGraphicsziWindow_defaultWindow1_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_static_info
	.quad	EngineziGraphicsziWindow_defaultWindow3_closure+1
	.quad	EngineziGraphicsziWindow_defaultWindow2_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_defaultWindow_closure
.type EngineziGraphicsziWindow_defaultWindow_closure, @object
EngineziGraphicsziWindow_defaultWindow_closure:
	.quad	EngineziGraphicsziWindow_Window_static_info
	.quad	EngineziGraphicsziWindow_defaultWindow5_closure+2
	.quad	EngineziGraphicsziWindow_defaultWindow4_closure
	.quad	EngineziGraphicsziWindow_defaultWindow1_closure+1
	.quad	base_DataziMaybe_Nothing_closure+1
	.quad	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowHints_closure
.type EngineziGraphicsziWindow_windowHints_closure, @object
EngineziGraphicsziWindow_windowHints_closure:
	.quad	EngineziGraphicsziWindow_windowHints_info
.section .rodata
	.align 8
.align 1
cqGa_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	119
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	72
	.byte	105
	.byte	110
	.byte	116
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	57
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqGd_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowHints_ct
.type EngineziGraphicsziWindow_windowHints_ct, @object
EngineziGraphicsziWindow_windowHints_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cqGa_str
	.quad	cqGd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sqFU_info:
.LcqGn:
	movq 7(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sqFU_info, .-sqFU_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziGraphicsziWindow_windowHints_info
.type EngineziGraphicsziWindow_windowHints_info, @object
EngineziGraphicsziWindow_windowHints_info:
.LcqGr:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqGt
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_windowHints_ct
	je .LcqGu
.LcqGv:
	incq EngineziGraphicsziWindow_windowHints_ct+40
	movq %r14,%rbx
	movq $sqFU_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sqFU_info
	jmp *(%rbx)
.LcqGt:
	movl $EngineziGraphicsziWindow_windowHints_closure,%ebx
	jmp *-8(%r13)
.LcqGu:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_windowHints_ct+56
	movq $EngineziGraphicsziWindow_windowHints_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_windowHints_ct
	jmp .LcqGv
	.size EngineziGraphicsziWindow_windowHints_info, .-EngineziGraphicsziWindow_windowHints_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowInner_closure
.type EngineziGraphicsziWindow_windowInner_closure, @object
EngineziGraphicsziWindow_windowInner_closure:
	.quad	EngineziGraphicsziWindow_windowInner_info
.section .rodata
	.align 8
.align 1
cqGO_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	119
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	73
	.byte	110
	.byte	110
	.byte	101
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	57
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqGR_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowInner_ct
.type EngineziGraphicsziWindow_windowInner_ct, @object
EngineziGraphicsziWindow_windowInner_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cqGO_str
	.quad	cqGR_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sqGD_info:
.LcqH1:
	movq 31(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sqGD_info, .-sqGD_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziGraphicsziWindow_windowInner_info
.type EngineziGraphicsziWindow_windowInner_info, @object
EngineziGraphicsziWindow_windowInner_info:
.LcqH5:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqH7
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_windowInner_ct
	je .LcqH8
.LcqH9:
	incq EngineziGraphicsziWindow_windowInner_ct+40
	movq %r14,%rbx
	movq $sqGD_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sqGD_info
	jmp *(%rbx)
.LcqH7:
	movl $EngineziGraphicsziWindow_windowInner_closure,%ebx
	jmp *-8(%r13)
.LcqH8:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_windowInner_ct+56
	movq $EngineziGraphicsziWindow_windowInner_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_windowInner_ct
	jmp .LcqH9
	.size EngineziGraphicsziWindow_windowInner_info, .-EngineziGraphicsziWindow_windowInner_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowSizze_closure
.type EngineziGraphicsziWindow_windowSizze_closure, @object
EngineziGraphicsziWindow_windowSizze_closure:
	.quad	EngineziGraphicsziWindow_windowSizze_info
.section .rodata
	.align 8
.align 1
cqHs_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	119
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	83
	.byte	105
	.byte	122
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	57
	.byte	99
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqHv_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowSizze_ct
.type EngineziGraphicsziWindow_windowSizze_ct, @object
EngineziGraphicsziWindow_windowSizze_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cqHs_str
	.quad	cqHv_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sqHh_info:
.LcqHF:
	movq 23(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sqHh_info, .-sqHh_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziGraphicsziWindow_windowSizze_info
.type EngineziGraphicsziWindow_windowSizze_info, @object
EngineziGraphicsziWindow_windowSizze_info:
.LcqHJ:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqHL
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_windowSizze_ct
	je .LcqHM
.LcqHN:
	incq EngineziGraphicsziWindow_windowSizze_ct+40
	movq %r14,%rbx
	movq $sqHh_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sqHh_info
	jmp *(%rbx)
.LcqHL:
	movl $EngineziGraphicsziWindow_windowSizze_closure,%ebx
	jmp *-8(%r13)
.LcqHM:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_windowSizze_ct+56
	movq $EngineziGraphicsziWindow_windowSizze_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_windowSizze_ct
	jmp .LcqHN
	.size EngineziGraphicsziWindow_windowSizze_info, .-EngineziGraphicsziWindow_windowSizze_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowTitle_closure
.type EngineziGraphicsziWindow_windowTitle_closure, @object
EngineziGraphicsziWindow_windowTitle_closure:
	.quad	EngineziGraphicsziWindow_windowTitle_info
.section .rodata
	.align 8
.align 1
cqI6_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	119
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	84
	.byte	105
	.byte	116
	.byte	108
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	57
	.byte	98
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqI9_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_windowTitle_ct
.type EngineziGraphicsziWindow_windowTitle_ct, @object
EngineziGraphicsziWindow_windowTitle_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cqI6_str
	.quad	cqI9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sqHV_info:
.LcqIj:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sqHV_info, .-sqHV_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziGraphicsziWindow_windowTitle_info
.type EngineziGraphicsziWindow_windowTitle_info, @object
EngineziGraphicsziWindow_windowTitle_info:
.LcqIn:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqIp
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_windowTitle_ct
	je .LcqIq
.LcqIr:
	incq EngineziGraphicsziWindow_windowTitle_ct+40
	movq %r14,%rbx
	movq $sqHV_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sqHV_info
	jmp *(%rbx)
.LcqIp:
	movl $EngineziGraphicsziWindow_windowTitle_closure,%ebx
	jmp *-8(%r13)
.LcqIq:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_windowTitle_ct+56
	movq $EngineziGraphicsziWindow_windowTitle_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_windowTitle_ct
	jmp .LcqIr
	.size EngineziGraphicsziWindow_windowTitle_info, .-EngineziGraphicsziWindow_windowTitle_info
.section .data
	.align 8
.align 1
EngineziGraphicsziWindow_zdwa_srt:
	.quad	base_SystemziExit_exitSuccess_closure
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_terminate1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_zdwa_closure
.type EngineziGraphicsziWindow_zdwa_closure, @object
EngineziGraphicsziWindow_zdwa_closure:
	.quad	EngineziGraphicsziWindow_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
cqIK_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	56
	.byte	73
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqIN_str:
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_zdwa_ct
.type EngineziGraphicsziWindow_zdwa_ct, @object
EngineziGraphicsziWindow_zdwa_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cqIK_str
	.quad	cqIN_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sqIy_info:
.LcqJ3:
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
	.size sqIy_info, .-sqIy_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_zdwa_srt-(sqIz_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sqIz_info:
.LcqJ6:
	incq KNOWN_CALL_ctr
	movq $sqIy_info,0(%rbp)
	jmp base_SystemziExit_exitSuccess_info
	.size sqIz_info, .-sqIz_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_zdwa_srt-(sqIA_info)+0
	.long	0
	.quad	0
	.quad	12884901920
sqIA_info:
.LcqJ9:
	incq KNOWN_CALL_ctr
	movq $sqIz_info,0(%rbp)
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_terminate1_info
	.size sqIA_info, .-sqIA_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_zdwa_srt-(EngineziGraphicsziWindow_zdwa_info)+0
	.long	0
	.quad	8589934596
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziWindow_zdwa_info
.type EngineziGraphicsziWindow_zdwa_info, @object
EngineziGraphicsziWindow_zdwa_info:
.LcqJc:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqJe
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_zdwa_ct
	je .LcqJf
.LcqJg:
	incq EngineziGraphicsziWindow_zdwa_ct+40
	incq KNOWN_CALL_ctr
	movq $sqIA_info,-8(%rbp)
	addq $-8,%rbp
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa_info
.LcqJe:
	movl $EngineziGraphicsziWindow_zdwa_closure,%ebx
	jmp *-8(%r13)
.LcqJf:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_zdwa_ct+56
	movq $EngineziGraphicsziWindow_zdwa_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_zdwa_ct
	jmp .LcqJg
	.size EngineziGraphicsziWindow_zdwa_info, .-EngineziGraphicsziWindow_zdwa_info
.section .data
	.align 8
.align 1
EngineziGraphicsziWindow_openWindow3_srt:
	.quad	EngineziGraphicsziWindow_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow3_closure
.type EngineziGraphicsziWindow_openWindow3_closure, @object
EngineziGraphicsziWindow_openWindow3_closure:
	.quad	EngineziGraphicsziWindow_openWindow3_info
	.quad	0
.section .rodata
	.align 8
.align 1
cqJu_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	111
	.byte	112
	.byte	101
	.byte	110
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	56
	.byte	74
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqJx_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow3_ct
.type EngineziGraphicsziWindow_openWindow3_ct, @object
EngineziGraphicsziWindow_openWindow3_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cqJu_str
	.quad	cqJx_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow3_srt-(sqJk_info)+0
	.long	0
	.quad	0
	.quad	4294967328
sqJk_info:
.LcqJH:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	addq $8,%rbp
	jmp EngineziGraphicsziWindow_zdwa_info
	.size sqJk_info, .-sqJk_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow3_srt-(EngineziGraphicsziWindow_openWindow3_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziWindow_openWindow3_info
.type EngineziGraphicsziWindow_openWindow3_info, @object
EngineziGraphicsziWindow_openWindow3_info:
.LcqJK:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqJM
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_openWindow3_ct
	je .LcqJN
.LcqJO:
	incq EngineziGraphicsziWindow_openWindow3_ct+40
	movq %r14,%rbx
	movq $sqJk_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sqJk_info
	jmp *(%rbx)
.LcqJM:
	movl $EngineziGraphicsziWindow_openWindow3_closure,%ebx
	jmp *-8(%r13)
.LcqJN:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_openWindow3_ct+56
	movq $EngineziGraphicsziWindow_openWindow3_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_openWindow3_ct
	jmp .LcqJO
	.size EngineziGraphicsziWindow_openWindow3_info, .-EngineziGraphicsziWindow_openWindow3_info
.section .data
	.align 8
.align 1
EngineziGraphicsziWindow_shutdown_srt:
	.quad	EngineziGraphicsziWindow_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_shutdown_closure
.type EngineziGraphicsziWindow_shutdown_closure, @object
EngineziGraphicsziWindow_shutdown_closure:
	.quad	EngineziGraphicsziWindow_shutdown_info
	.quad	0
.section .rodata
	.align 8
.align 1
cqK1_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	115
	.byte	104
	.byte	117
	.byte	116
	.byte	100
	.byte	111
	.byte	119
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	57
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqK4_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_shutdown_ct
.type EngineziGraphicsziWindow_shutdown_ct, @object
EngineziGraphicsziWindow_shutdown_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cqK1_str
	.quad	cqK4_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziWindow_shutdown_srt-(EngineziGraphicsziWindow_shutdown_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziWindow_shutdown_info
.type EngineziGraphicsziWindow_shutdown_info, @object
EngineziGraphicsziWindow_shutdown_info:
.LcqK9:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_shutdown_ct
	je .LcqKc
.LcqKe:
	incq EngineziGraphicsziWindow_shutdown_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziWindow_openWindow3_info
.LcqKc:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_shutdown_ct+56
	movq $EngineziGraphicsziWindow_shutdown_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_shutdown_ct
	jmp .LcqKe
	.size EngineziGraphicsziWindow_shutdown_info, .-EngineziGraphicsziWindow_shutdown_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow4_closure
.type EngineziGraphicsziWindow_openWindow4_closure, @object
EngineziGraphicsziWindow_openWindow4_closure:
	.quad	EngineziGraphicsziWindow_openWindow4_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cqKq_str:
	.byte	80
	.byte	97
	.byte	116
	.byte	116
	.byte	101
	.byte	114
	.byte	110
	.byte	32
	.byte	109
	.byte	97
	.byte	116
	.byte	99
	.byte	104
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	105
	.byte	110
	.byte	32
	.byte	100
	.byte	111
	.byte	32
	.byte	101
	.byte	120
	.byte	112
	.byte	114
	.byte	101
	.byte	115
	.byte	115
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	97
	.byte	116
	.byte	32
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	47
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	47
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	104
	.byte	115
	.byte	58
	.byte	51
	.byte	53
	.byte	58
	.byte	53
	.byte	45
	.byte	49
	.byte	50
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziGraphicsziWindow_openWindow4_info
.type EngineziGraphicsziWindow_openWindow4_info, @object
EngineziGraphicsziWindow_openWindow4_info:
.LcqKu:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqKw
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcqKy
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
	je .LcqKz
.LcqKA:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cqKq_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcqKy:
	movq $16,192(%r13)
.LcqKw:
	jmp *-16(%r13)
.LcqKz:
	jmp *(%rbx)
	.size EngineziGraphicsziWindow_openWindow4_info, .-EngineziGraphicsziWindow_openWindow4_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow2_closure
.type EngineziGraphicsziWindow_openWindow2_closure, @object
EngineziGraphicsziWindow_openWindow2_closure:
	.quad	base_DataziMaybe_Just_static_info
	.quad	EngineziGraphicsziWindow_openWindow3_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow5_closure
.type EngineziGraphicsziWindow_openWindow5_closure, @object
EngineziGraphicsziWindow_openWindow5_closure:
	.quad	EngineziGraphicsziWindow_openWindow5_info
.section .rodata
	.align 8
.align 1
cqKX_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	111
	.byte	112
	.byte	101
	.byte	110
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	53
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	56
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqL0_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow5_ct
.type EngineziGraphicsziWindow_openWindow5_ct, @object
EngineziGraphicsziWindow_openWindow5_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cqKX_str
	.quad	cqL0_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1
	.quad	32
sqKK_info:
.LcqLf:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp EngineziGraphicsziWindow_openWindow5_info
	.size sqKK_info, .-sqKK_info
.text
	.align 8
	.quad	0
	.quad	32
sqKJ_info:
.LcqLk:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcqLl
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcqLl:
	incq KNOWN_CALL_ctr
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%r14
	movq $sqKK_info,-8(%rbp)
	addq $-8,%rbp
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_windowHint1_info
	.size sqKJ_info, .-sqKJ_info
.text
	.align 8
	.quad	8589934597
	.quad	0
	.quad	15
.globl EngineziGraphicsziWindow_openWindow5_info
.type EngineziGraphicsziWindow_openWindow5_info, @object
EngineziGraphicsziWindow_openWindow5_info:
.LcqLs:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqLu
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_openWindow5_ct
	je .LcqLv
.LcqLw:
	incq EngineziGraphicsziWindow_openWindow5_ct+40
	movq %r14,%rbx
	movq $sqKJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sqKJ_info
	jmp *(%rbx)
.LcqLu:
	movl $EngineziGraphicsziWindow_openWindow5_closure,%ebx
	jmp *-8(%r13)
.LcqLv:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_openWindow5_ct+56
	movq $EngineziGraphicsziWindow_openWindow5_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_openWindow5_ct
	jmp .LcqLw
	.size EngineziGraphicsziWindow_openWindow5_info, .-EngineziGraphicsziWindow_openWindow5_info
.section .data
	.align 8
.align 1
EngineziGraphicsziWindow_openWindow1_srt:
	.quad	base_GHCziIO_failIO_closure
	.quad	EngineziGraphicsziWindow_openWindow2_closure
	.quad	EngineziGraphicsziWindow_openWindow4_closure
	.quad	GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_createWindow1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow1_closure
.type EngineziGraphicsziWindow_openWindow1_closure, @object
EngineziGraphicsziWindow_openWindow1_closure:
	.quad	EngineziGraphicsziWindow_openWindow1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cqMZ_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	111
	.byte	112
	.byte	101
	.byte	110
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	56
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqN1_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow1_ct
.type EngineziGraphicsziWindow_openWindow1_ct, @object
EngineziGraphicsziWindow_openWindow1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cqMZ_str
	.quad	cqN1_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	133
	.quad	32
sqLT_info:
.LcqNc:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .LcqNh
	addq $7,EngineziGraphicsziWindow_openWindow1_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	movq $base_DataziMaybe_Just_con_info,-48(%r12)
	movq 8(%rbp),%rax
	movq %rax,-40(%r12)
	movq $EngineziGraphicsziWindow_Window_con_info,-32(%r12)
	movq 40(%rbp),%rax
	movq %rax,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 32(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -46(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -31(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.LcqNh:
	movq $56,192(%r13)
.LcqNf:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sqLT_info, .-sqLT_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLU_info)+8
	.long	0
	.quad	133
	.quad	4294967328
sqLU_info:
.LcqNp:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movl $EngineziGraphicsziWindow_openWindow2_closure+2,%esi
	movq $sqLT_info,0(%rbp)
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_zdwa32_info
	.size sqLU_info, .-sqLU_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLV_info)+8
	.long	0
	.quad	133
	.quad	4294967328
sqLV_info:
.LcqNs:
	movq $sqLU_info,0(%rbp)
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	movl $1,%edi
	subq $8,%rsp
	movl $0,%eax
	call glfwSwapInterval
	addq $8,%rsp
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	jmp *0(%rbp)
	.size sqLV_info, .-sqLV_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLW_info)+8
	.long	0
	.quad	133
	.quad	4294967328
sqLW_info:
.LcqNQ:
	movq 16(%rbp),%r14
	movq $sqLV_info,0(%rbp)
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	movq %r14,%rdi
	subq $8,%rsp
	movl $0,%eax
	call glfwMakeContextCurrent
	addq $8,%rsp
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	jmp *0(%rbp)
	.size sqLW_info, .-sqLW_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqF1_info)+8
	.long	0
	.quad	3
	.quad	4294967328
sqF1_info:
.LcqOe:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq %rbx,-8(%rbp)
	movq 7(%rbx),%r14
	movq $sqLW_info,-16(%rbp)
	addq $-16,%rbp
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	movq %r14,%rdi
	movl $100,%esi
	movl $50,%edx
	subq $8,%rsp
	movl $0,%eax
	call glfwSetWindowPos
	addq $8,%rsp
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	jmp *0(%rbp)
	.size sqF1_info, .-sqF1_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLR_info)+0
	.long	0
	.quad	3
	.quad	30064771104
sqLR_info:
.LcqOF:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcqOG
	incq KNOWN_CALL_ctr
	movl $EngineziGraphicsziWindow_openWindow4_closure,%r14d
	addq $32,%rbp
	jmp base_GHCziIO_failIO_info
.LcqOG:
	movq 6(%rbx),%rbx
	movq $sqF1_info,0(%rbp)
	testq $7,%rbx
	jne sqF1_info
	jmp *(%rbx)
	.size sqLR_info, .-sqLR_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLS_info)+0
	.long	0
	.quad	3
	.quad	30064771104
sqLS_info:
.LcqOP:
	movq $sqLR_info,0(%rbp)
	testq $7,%rbx
	jne sqLR_info
	jmp *(%rbx)
	.size sqLS_info, .-sqLS_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLK_info)+0
	.long	0
	.quad	3
	.quad	64424509472
sqLK_info:
.LcqOV:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcqOZ
	addq $6,EngineziGraphicsziWindow_openWindow1_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $stg_sel_1_upd_info,-40(%r12)
	movq 16(%rbp),%rax
	movq %rax,-24(%r12)
	movq $stg_sel_0_upd_info,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%r14
	leaq -40(%r12),%rsi
	movq 8(%rbp),%rdi
	movl $base_DataziMaybe_Nothing_closure+1,%r8d
	movl $base_DataziMaybe_Nothing_closure+1,%r9d
	movq $sqLS_info,0(%rbp)
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_createWindow1_info
.LcqOZ:
	movq $48,192(%r13)
.LcqOX:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sqLK_info, .-sqLK_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLL_info)+0
	.long	0
	.quad	0
	.quad	64424509472
sqLL_info:
.LcqP4:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%r14
	movq $sqLK_info,-24(%rbp)
	addq $-24,%rbp
	jmp EngineziGraphicsziWindow_openWindow5_info
	.size sqLL_info, .-sqLL_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(sqLM_info)+0
	.long	0
	.quad	1
	.quad	64424509472
sqLM_info:
.LcqPa:
	movq 8(%rbp),%rbx
	movq $sqLL_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sqLL_info
	jmp *(%rbx)
	.size sqLM_info, .-sqLM_info
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow1_srt-(EngineziGraphicsziWindow_openWindow1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	64424509455
.globl EngineziGraphicsziWindow_openWindow1_info
.type EngineziGraphicsziWindow_openWindow1_info, @object
EngineziGraphicsziWindow_openWindow1_info:
.LcqPg:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .LcqPi
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_openWindow1_ct
	je .LcqPj
.LcqPk:
	incq EngineziGraphicsziWindow_openWindow1_ct+40
	movq %r14,-8(%rbp)
	movq $sqLM_info,-16(%rbp)
	addq $-16,%rbp
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq %rbp,16(%rax)
	leaq 8(%r12),%rbx
	movq 176(%r13),%rax
	movq %rbx,8(%rax)
	movq %r13,%rdi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	call suspendThread
	addq $8,%rsp
	movq %rax,%rbx
	subq $8,%rsp
	movl $0,%eax
	call glfwInit
	addq $8,%rsp
	movq %rax,%r14
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	call resumeThread
	addq $8,%rsp
	movq %rax,%r13
	movq 160(%r13),%rax
	movq 24(%rax),%rax
	movq 16(%rax),%rbp
	leaq 192(%rax),%r15
	movq $0,192(%r13)
	movq 176(%r13),%rax
	movq 8(%rax),%rax
	leaq -8(%rax),%r12
	movq 176(%r13),%rax
	movslq 48(%rax),%rax
	shlq $12,%rax
	decq %rax
	movq 176(%r13),%rbx
	movq (%rbx),%rbx
	addq %rax,%rbx
	movq %rbx,144(%r13)
	incq RET_UNBOXED_TUP_ctr
	movq %r14,%rbx
	jmp *0(%rbp)
.LcqPi:
	movl $EngineziGraphicsziWindow_openWindow1_closure,%ebx
	jmp *-8(%r13)
.LcqPj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_openWindow1_ct+56
	movq $EngineziGraphicsziWindow_openWindow1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_openWindow1_ct
	jmp .LcqPk
	.size EngineziGraphicsziWindow_openWindow1_info, .-EngineziGraphicsziWindow_openWindow1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziWindow_openWindow_srt:
	.quad	EngineziGraphicsziWindow_openWindow1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow_closure
.type EngineziGraphicsziWindow_openWindow_closure, @object
EngineziGraphicsziWindow_openWindow_closure:
	.quad	EngineziGraphicsziWindow_openWindow_info
	.quad	0
.section .rodata
	.align 8
.align 1
cqPP_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	111
	.byte	112
	.byte	101
	.byte	110
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
	.byte	112
	.byte	57
	.byte	105
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqPS_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_openWindow_ct
.type EngineziGraphicsziWindow_openWindow_ct, @object
EngineziGraphicsziWindow_openWindow_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cqPP_str
	.quad	cqPS_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziWindow_openWindow_srt-(EngineziGraphicsziWindow_openWindow_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziWindow_openWindow_info
.type EngineziGraphicsziWindow_openWindow_info, @object
EngineziGraphicsziWindow_openWindow_info:
.LcqPX:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_openWindow_ct
	je .LcqQ0
.LcqQ2:
	incq EngineziGraphicsziWindow_openWindow_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziWindow_openWindow1_info
.LcqQ0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_openWindow_ct+56
	movq $EngineziGraphicsziWindow_openWindow_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_openWindow_ct
	jmp .LcqQ2
	.size EngineziGraphicsziWindow_openWindow_info, .-EngineziGraphicsziWindow_openWindow_info
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_Window_closure
.type EngineziGraphicsziWindow_Window_closure, @object
EngineziGraphicsziWindow_Window_closure:
	.quad	EngineziGraphicsziWindow_Window_info
.section .rodata
	.align 8
.align 1
cqQa_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
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
	.byte	112
	.byte	57
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cqQd_str:
	.byte	76
	.byte	76
	.byte	84
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziWindow_Window_ct
.type EngineziGraphicsziWindow_Window_ct, @object
EngineziGraphicsziWindow_Window_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cqQa_str
	.quad	cqQd_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
EngineziGraphicsziWindow_Window_info:
.LcqQi:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcqQn
	addq $5,EngineziGraphicsziWindow_Window_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziWindow_Window_ct
	je .LcqQp
.LcqQr:
	incq EngineziGraphicsziWindow_Window_ct+40
	incq RET_NEW_ctr
	movq $EngineziGraphicsziWindow_Window_con_info,-32(%r12)
	movq %r14,-24(%r12)
	movq %rsi,-16(%r12)
	movq %rdi,-8(%r12)
	movq %r8,0(%r12)
	leaq -31(%r12),%rbx
	jmp *0(%rbp)
.LcqQn:
	movq $40,192(%r13)
.LcqQl:
	movl $EngineziGraphicsziWindow_Window_closure,%ebx
	jmp *-8(%r13)
.LcqQp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziWindow_Window_ct+56
	movq $EngineziGraphicsziWindow_Window_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziWindow_Window_ct
	jmp .LcqQr
	.size EngineziGraphicsziWindow_Window_info, .-EngineziGraphicsziWindow_Window_info
.section .rodata
	.align 8
.align 1
iqQx_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	0
.text
	.align 8
	.long	iqQx_str-(EngineziGraphicsziWindow_Window_con_info)+0
	.long	0
	.quad	4
	.quad	1
.globl EngineziGraphicsziWindow_Window_con_info
.type EngineziGraphicsziWindow_Window_con_info, @object
EngineziGraphicsziWindow_Window_con_info:
.LcqQA:
	incq ENT_DYN_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziGraphicsziWindow_Window_con_info, .-EngineziGraphicsziWindow_Window_con_info
.section .rodata
	.align 8
.align 1
iqQC_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	69
	.byte	110
	.byte	103
	.byte	105
	.byte	110
	.byte	101
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	46
	.byte	87
	.byte	105
	.byte	110
	.byte	100
	.byte	111
	.byte	119
	.byte	0
.text
	.align 8
	.long	iqQC_str-(EngineziGraphicsziWindow_Window_static_info)+0
	.long	0
	.quad	4
	.quad	7
.globl EngineziGraphicsziWindow_Window_static_info
.type EngineziGraphicsziWindow_Window_static_info, @object
EngineziGraphicsziWindow_Window_static_info:
.LcqQF:
	incq ENT_STATIC_CON_ctr
	incq RET_OLD_ctr
	incq %rbx
	jmp *0(%rbp)
	.size EngineziGraphicsziWindow_Window_static_info, .-EngineziGraphicsziWindow_Window_static_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
