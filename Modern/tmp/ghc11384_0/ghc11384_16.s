.data
	.align 8
.align 1
.globl __stginit_TestVals
.type __stginit_TestVals, @object
__stginit_TestVals:
.data
	.align 8
.align 1
.globl TestVals_mkWorld33_closure
.type TestVals_mkWorld33_closure, @object
TestVals_mkWorld33_closure:
	.quad	TestVals_mkWorld33_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOj0_str:
	.byte	115
	.byte	104
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	115
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld33_info
.type TestVals_mkWorld33_info, @object
TestVals_mkWorld33_info:
.LcOj4:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOj6
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOj8
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
	je .LcOj9
.LcOja:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOj0_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOj8:
	movq $16,192(%r13)
.LcOj6:
	jmp *-16(%r13)
.LcOj9:
	jmp *(%rbx)
	.size TestVals_mkWorld33_info, .-TestVals_mkWorld33_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld32_closure
.type TestVals_mkWorld32_closure, @object
TestVals_mkWorld32_closure:
	.quad	TestVals_mkWorld32_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOjp_str:
	.byte	116
	.byte	111
	.byte	111
	.byte	110
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld32_info
.type TestVals_mkWorld32_info, @object
TestVals_mkWorld32_info:
.LcOjt:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOjv
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOjx
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
	je .LcOjy
.LcOjz:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOjp_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOjx:
	movq $16,192(%r13)
.LcOjv:
	jmp *-16(%r13)
.LcOjy:
	jmp *(%rbx)
	.size TestVals_mkWorld32_info, .-TestVals_mkWorld32_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld35_closure
.type TestVals_mkWorld35_closure, @object
TestVals_mkWorld35_closure:
	.quad	TestVals_mkWorld35_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOjO_str:
	.byte	116
	.byte	111
	.byte	111
	.byte	110
	.byte	46
	.byte	118
	.byte	101
	.byte	114
	.byte	116
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld35_info
.type TestVals_mkWorld35_info, @object
TestVals_mkWorld35_info:
.LcOjS:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOjU
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOjW
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
	je .LcOjX
.LcOjY:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOjO_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOjW:
	movq $16,192(%r13)
.LcOjU:
	jmp *-16(%r13)
.LcOjX:
	jmp *(%rbx)
	.size TestVals_mkWorld35_info, .-TestVals_mkWorld35_info
.section .data
	.align 8
.align 1
TestVals_mkWorld34_srt:
	.quad	TestVals_mkWorld35_closure
	.quad	TestVals_mkWorld32_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld34_closure
.type TestVals_mkWorld34_closure, @object
TestVals_mkWorld34_closure:
	.quad	TestVals_mkWorld34_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld34_srt-(TestVals_mkWorld34_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl TestVals_mkWorld34_info
.type TestVals_mkWorld34_info, @object
TestVals_mkWorld34_info:
.LcOkf:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOkh
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOkj
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
	je .LcOkk
.LcOkl:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld32_closure,%r14d
	movl $TestVals_mkWorld35_closure,%esi
	addq $-16,%rbp
	jmp filepathzm1zi3zi0zi1_SystemziFilePathziPosix_combine_info
.LcOkj:
	movq $16,192(%r13)
.LcOkh:
	jmp *-16(%r13)
.LcOkk:
	jmp *(%rbx)
	.size TestVals_mkWorld34_info, .-TestVals_mkWorld34_info
.section .data
	.align 8
.align 1
TestVals_mainVertShader_srt:
	.quad	TestVals_mkWorld34_closure
	.quad	TestVals_mkWorld33_closure
.data
	.align 8
.align 1
.globl TestVals_mainVertShader_closure
.type TestVals_mainVertShader_closure, @object
TestVals_mainVertShader_closure:
	.quad	TestVals_mainVertShader_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mainVertShader_srt-(TestVals_mainVertShader_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl TestVals_mainVertShader_info
.type TestVals_mainVertShader_info, @object
TestVals_mainVertShader_info:
.LcOkC:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOkE
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOkG
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
	je .LcOkH
.LcOkI:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld33_closure,%r14d
	movl $TestVals_mkWorld34_closure,%esi
	addq $-16,%rbp
	jmp filepathzm1zi3zi0zi1_SystemziFilePathziPosix_combine_info
.LcOkG:
	movq $16,192(%r13)
.LcOkE:
	jmp *-16(%r13)
.LcOkH:
	jmp *(%rbx)
	.size TestVals_mainVertShader_info, .-TestVals_mainVertShader_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld31_closure
.type TestVals_mkWorld31_closure, @object
TestVals_mkWorld31_closure:
	.quad	TestVals_mkWorld31_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOkX_str:
	.byte	116
	.byte	111
	.byte	111
	.byte	110
	.byte	46
	.byte	102
	.byte	114
	.byte	97
	.byte	103
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld31_info
.type TestVals_mkWorld31_info, @object
TestVals_mkWorld31_info:
.LcOl1:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOl3
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOl5
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
	je .LcOl6
.LcOl7:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOkX_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOl5:
	movq $16,192(%r13)
.LcOl3:
	jmp *-16(%r13)
.LcOl6:
	jmp *(%rbx)
	.size TestVals_mkWorld31_info, .-TestVals_mkWorld31_info
.section .data
	.align 8
.align 1
TestVals_mkWorld30_srt:
	.quad	TestVals_mkWorld31_closure
	.quad	TestVals_mkWorld32_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld30_closure
.type TestVals_mkWorld30_closure, @object
TestVals_mkWorld30_closure:
	.quad	TestVals_mkWorld30_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld30_srt-(TestVals_mkWorld30_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl TestVals_mkWorld30_info
.type TestVals_mkWorld30_info, @object
TestVals_mkWorld30_info:
.LcOlo:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOlq
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOls
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
	je .LcOlt
.LcOlu:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld32_closure,%r14d
	movl $TestVals_mkWorld31_closure,%esi
	addq $-16,%rbp
	jmp filepathzm1zi3zi0zi1_SystemziFilePathziPosix_combine_info
.LcOls:
	movq $16,192(%r13)
.LcOlq:
	jmp *-16(%r13)
.LcOlt:
	jmp *(%rbx)
	.size TestVals_mkWorld30_info, .-TestVals_mkWorld30_info
.section .data
	.align 8
.align 1
TestVals_mainFragShader_srt:
	.quad	TestVals_mkWorld30_closure
	.quad	TestVals_mkWorld33_closure
.data
	.align 8
.align 1
.globl TestVals_mainFragShader_closure
.type TestVals_mainFragShader_closure, @object
TestVals_mainFragShader_closure:
	.quad	TestVals_mainFragShader_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mainFragShader_srt-(TestVals_mainFragShader_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl TestVals_mainFragShader_info
.type TestVals_mainFragShader_info, @object
TestVals_mainFragShader_info:
.LcOlL:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOlN
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOlP
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
	je .LcOlQ
.LcOlR:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld33_closure,%r14d
	movl $TestVals_mkWorld30_closure,%esi
	addq $-16,%rbp
	jmp filepathzm1zi3zi0zi1_SystemziFilePathziPosix_combine_info
.LcOlP:
	movq $16,192(%r13)
.LcOlN:
	jmp *-16(%r13)
.LcOlQ:
	jmp *(%rbx)
	.size TestVals_mainFragShader_info, .-TestVals_mainFragShader_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld3_closure
.type TestVals_mkWorld3_closure, @object
TestVals_mkWorld3_closure:
	.quad	base_GHCziWord_W32zh_static_info
	.quad	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld2_closure
.type TestVals_mkWorld2_closure, @object
TestVals_mkWorld2_closure:
    .quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.section .data
	.align 8
.align 1
TestVals_mkWorld38_srt:
	.quad	timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_zdwposixSecondsToUTCTime_closure
	.quad	timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_getPOSIXTime1_closure
	.quad	EngineziGraphicsziWindow_defaultWindow_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld38_closure
.type TestVals_mkWorld38_closure, @object
TestVals_mkWorld38_closure:
	.quad	TestVals_mkWorld38_info
	.quad	0
.section .rodata
	.align 8
.align 1
cOmf_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	84
	.byte	101
	.byte	115
	.byte	116
	.byte	86
	.byte	97
	.byte	108
	.byte	115
	.byte	46
	.byte	109
	.byte	107
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	51
	.byte	56
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	104
	.byte	98
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cOmi_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld38_ct
.type TestVals_mkWorld38_ct, @object
TestVals_mkWorld38_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cOmf_str
	.quad	cOmi_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld38_srt-(sOm4_info)+16
	.long	0
	.quad	0
	.quad	4294967328
sOm4_info:
.LcOmx:
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .LcOmC
	addq $9,TestVals_mkWorld38_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $timezm1zi4zi0zi1_DataziTimeziClockziUTC_UTCTime_con_info,-64(%r12)
	movq %rbx,-56(%r12)
	movq %r14,-48(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_WorldState_con_info,-40(%r12)
	movq $TestVals_mkWorld3_closure+1,-32(%r12)
	leaq -63(%r12),%rax
	movq %rax,-24(%r12)
	movq $TestVals_mkWorld2_closure+1,-16(%r12)
	movq $ghczmprim_GHCziTypes_False_closure+1,-8(%r12)
	movq $EngineziGraphicsziWindow_defaultWindow_closure,0(%r12)
	leaq -39(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcOmC:
	movq $72,192(%r13)
.LcOmA:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sOm4_info, .-sOm4_info
.text
	.align 8
	.long	TestVals_mkWorld38_srt-(sOm3_info)+0
	.long	0
	.quad	1
	.quad	21474836497
sOm3_info:
.LcOmH:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOmJ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movq $sOm4_info,-24(%rbp)
	addq $-24,%rbp
	jmp timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_zdwposixSecondsToUTCTime_info
.LcOmJ:
	jmp *-16(%r13)
	.size sOm3_info, .-sOm3_info
.text
	.align 8
	.quad	0
	.quad	32
sOm6_info:
.LcOmP:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOmU
	addq $2,TestVals_mkWorld38_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $base_GHCziSTRef_STRef_con_info,-8(%r12)
	movq %rbx,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcOmU:
	movq $16,192(%r13)
.LcOmS:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sOm6_info, .-sOm6_info
.text
	.align 8
	.long	TestVals_mkWorld38_srt-(sOm5_info)+0
	.long	0
	.quad	0
	.quad	21474836512
sOm5_info:
.LcOmX:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcOn1
	addq $3,TestVals_mkWorld38_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $sOm3_info,-16(%r12)
	movq %rbx,0(%r12)
	leaq -16(%r12),%rbx
	movq $sOm6_info,0(%rbp)
	jmp stg_newMutVarzh
.LcOn1:
	movq $24,192(%r13)
.LcOmZ:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sOm5_info, .-sOm5_info
.text
	.align 8
	.long	TestVals_mkWorld38_srt-(TestVals_mkWorld38_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	30064771087
.globl TestVals_mkWorld38_info
.type TestVals_mkWorld38_info, @object
TestVals_mkWorld38_info:
.LcOn4:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOn6
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,TestVals_mkWorld38_ct
	je .LcOn7
.LcOn8:
	incq TestVals_mkWorld38_ct+40
	incq KNOWN_CALL_ctr
	movq $sOm5_info,-8(%rbp)
	addq $-8,%rbp
	jmp timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_getPOSIXTime1_info
.LcOn6:
	movl $TestVals_mkWorld38_closure,%ebx
	jmp *-8(%r13)
.LcOn7:
	movq ticky_entry_ctrs,%rax
	movq %rax,TestVals_mkWorld38_ct+56
	movq $TestVals_mkWorld38_ct,ticky_entry_ctrs
	movq $1,TestVals_mkWorld38_ct
	jmp .LcOn8
	.size TestVals_mkWorld38_info, .-TestVals_mkWorld38_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld22_closure
.type TestVals_mkWorld22_closure, @object
TestVals_mkWorld22_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	32
	.byte	65
	.long	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld21_closure
.type TestVals_mkWorld21_closure, @object
TestVals_mkWorld21_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	64
	.byte	64
	.long	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld20_closure
.type TestVals_mkWorld20_closure, @object
TestVals_mkWorld20_closure:
	.quad	EngineziCoreziVec_Vec3_static_info
	.quad	TestVals_mkWorld22_closure+1
	.quad	TestVals_mkWorld21_closure+1
	.quad	TestVals_mkWorld22_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl TestVals_mkWorld19_closure
.type TestVals_mkWorld19_closure, @object
TestVals_mkWorld19_closure:
	.quad	EngineziCoreziVec_Vec3_static_info
	.quad	TestVals_mkWorld2_closure+1
	.quad	TestVals_mkWorld2_closure+1
	.quad	TestVals_mkWorld2_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl TestVals_mkWorld18_closure
.type TestVals_mkWorld18_closure, @object
TestVals_mkWorld18_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	160
	.byte	193
	.long	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld17_closure
.type TestVals_mkWorld17_closure, @object
TestVals_mkWorld17_closure:
	.quad	EngineziCoreziVec_Vec3_static_info
	.quad	TestVals_mkWorld2_closure+1
	.quad	TestVals_mkWorld18_closure+1
	.quad	TestVals_mkWorld18_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl TestVals_mkWorld16_closure
.type TestVals_mkWorld16_closure, @object
TestVals_mkWorld16_closure:
	.quad	TestVals_mkWorld16_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOnD_str:
	.byte	108
	.byte	105
	.byte	103
	.byte	104
	.byte	116
	.byte	80
	.byte	111
	.byte	115
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld16_info
.type TestVals_mkWorld16_info, @object
TestVals_mkWorld16_info:
.LcOnH:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOnJ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOnL
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
	je .LcOnM
.LcOnN:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOnD_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOnL:
	movq $16,192(%r13)
.LcOnJ:
	jmp *-16(%r13)
.LcOnM:
	jmp *(%rbx)
	.size TestVals_mkWorld16_info, .-TestVals_mkWorld16_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld12_closure
.type TestVals_mkWorld12_closure, @object
TestVals_mkWorld12_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld11_closure
.type TestVals_mkWorld11_closure, @object
TestVals_mkWorld11_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	1
.section .data
	.align 8
.align 1
TestVals_mkWorld15_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	TestVals_mkWorld11_closure
	.quad	TestVals_mkWorld12_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld15_closure
.type TestVals_mkWorld15_closure, @object
TestVals_mkWorld15_closure:
	.quad	TestVals_mkWorld15_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld15_srt-(TestVals_mkWorld15_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl TestVals_mkWorld15_info
.type TestVals_mkWorld15_info, @object
TestVals_mkWorld15_info:
.LcOoa:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOoc
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOoe
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
	je .LcOof
.LcOog:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld12_closure+1,%r14d
	movl $TestVals_mkWorld11_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcOoe:
	movq $16,192(%r13)
.LcOoc:
	jmp *-16(%r13)
.LcOof:
	jmp *(%rbx)
	.size TestVals_mkWorld15_info, .-TestVals_mkWorld15_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld14_closure
.type TestVals_mkWorld14_closure, @object
TestVals_mkWorld14_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_static_info
	.quad	40
.section .data
	.align 8
.align 1
TestVals_mkWorld13_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	TestVals_mkWorld11_closure
	.quad	TestVals_mkWorld14_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld13_closure
.type TestVals_mkWorld13_closure, @object
TestVals_mkWorld13_closure:
	.quad	TestVals_mkWorld13_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld13_srt-(TestVals_mkWorld13_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl TestVals_mkWorld13_info
.type TestVals_mkWorld13_info, @object
TestVals_mkWorld13_info:
.LcOoA:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOoC
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOoE
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
	je .LcOoF
.LcOoG:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld14_closure+1,%r14d
	movl $TestVals_mkWorld11_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcOoE:
	movq $16,192(%r13)
.LcOoC:
	jmp *-16(%r13)
.LcOoF:
	jmp *(%rbx)
	.size TestVals_mkWorld13_info, .-TestVals_mkWorld13_info
.section .data
	.align 8
.align 1
TestVals_mkWorld10_srt:
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	TestVals_mkWorld11_closure
	.quad	TestVals_mkWorld12_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld10_closure
.type TestVals_mkWorld10_closure, @object
TestVals_mkWorld10_closure:
	.quad	TestVals_mkWorld10_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld10_srt-(TestVals_mkWorld10_info)+0
	.long	0
	.quad	0
	.quad	30064771094
.globl TestVals_mkWorld10_info
.type TestVals_mkWorld10_info, @object
TestVals_mkWorld10_info:
.LcOoX:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOoZ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOp1
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
	je .LcOp2
.LcOp3:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld12_closure+1,%r14d
	movl $TestVals_mkWorld11_closure+1,%esi
	addq $-16,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
.LcOp1:
	movq $16,192(%r13)
.LcOoZ:
	jmp *-16(%r13)
.LcOp2:
	jmp *(%rbx)
	.size TestVals_mkWorld10_info, .-TestVals_mkWorld10_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld9_closure
.type TestVals_mkWorld9_closure, @object
TestVals_mkWorld9_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	TestVals_mkWorld10_closure
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld8_closure
.type TestVals_mkWorld8_closure, @object
TestVals_mkWorld8_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	TestVals_mkWorld13_closure
	.quad	TestVals_mkWorld9_closure+2
	.quad	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld7_closure
.type TestVals_mkWorld7_closure, @object
TestVals_mkWorld7_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	TestVals_mkWorld15_closure
	.quad	TestVals_mkWorld8_closure+2
	.quad	0
.section .data
	.align 8
.align 1
TestVals_mkWorld6_srt:
	.quad	TestVals_mkWorld7_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld6_closure
.type TestVals_mkWorld6_closure, @object
TestVals_mkWorld6_closure:
	.quad	TestVals_mkWorld6_info
	.quad	0
.section .rodata
	.align 8
.align 1
cOpo_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	84
	.byte	101
	.byte	115
	.byte	116
	.byte	86
	.byte	97
	.byte	108
	.byte	115
	.byte	46
	.byte	109
	.byte	107
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	54
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	48
	.byte	108
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cOpr_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld6_ct
.type TestVals_mkWorld6_ct, @object
TestVals_mkWorld6_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cOpo_str
	.quad	cOpr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld6_srt-(TestVals_mkWorld6_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	4294967311
.globl TestVals_mkWorld6_info
.type TestVals_mkWorld6_info, @object
TestVals_mkWorld6_info:
.LcOpw:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,TestVals_mkWorld6_ct
	je .LcOpz
.LcOpB:
	incq TestVals_mkWorld6_ct+40
	incq RET_UNBOXED_TUP_ctr
	movl $TestVals_mkWorld7_closure+2,%ebx
	jmp *0(%rbp)
.LcOpz:
	movq ticky_entry_ctrs,%rax
	movq %rax,TestVals_mkWorld6_ct+56
	movq $TestVals_mkWorld6_ct,ticky_entry_ctrs
	movq $1,TestVals_mkWorld6_ct
	jmp .LcOpB
	.size TestVals_mkWorld6_info, .-TestVals_mkWorld6_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld5_closure
.type TestVals_mkWorld5_closure, @object
TestVals_mkWorld5_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_static_info
	.quad	TestVals_mkWorld16_closure
	.quad	TestVals_mkWorld6_closure+1
	.quad	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld4_closure
.type TestVals_mkWorld4_closure, @object
TestVals_mkWorld4_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	TestVals_mkWorld5_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld25_closure
.type TestVals_mkWorld25_closure, @object
TestVals_mkWorld25_closure:
	.quad	TestVals_mkWorld25_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOpT_str:
	.byte	114
	.byte	101
	.byte	115
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld25_info
.type TestVals_mkWorld25_info, @object
TestVals_mkWorld25_info:
.LcOpX:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOpZ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOq1
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
	je .LcOq2
.LcOq3:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOpT_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOq1:
	movq $16,192(%r13)
.LcOpZ:
	jmp *-16(%r13)
.LcOq2:
	jmp *(%rbx)
	.size TestVals_mkWorld25_info, .-TestVals_mkWorld25_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld24_closure
.type TestVals_mkWorld24_closure, @object
TestVals_mkWorld24_closure:
	.quad	TestVals_mkWorld24_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOqi_str:
	.byte	111
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	115
	.byte	47
	.byte	105
	.byte	98
	.byte	97
	.byte	110
	.byte	101
	.byte	122
	.byte	47
	.byte	105
	.byte	98
	.byte	97
	.byte	110
	.byte	101
	.byte	122
	.byte	46
	.byte	111
	.byte	98
	.byte	106
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld24_info
.type TestVals_mkWorld24_info, @object
TestVals_mkWorld24_info:
.LcOqm:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOqo
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOqq
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
	je .LcOqr
.LcOqs:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOqi_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOqq:
	movq $16,192(%r13)
.LcOqo:
	jmp *-16(%r13)
.LcOqr:
	jmp *(%rbx)
	.size TestVals_mkWorld24_info, .-TestVals_mkWorld24_info
.section .data
	.align 8
.align 1
TestVals_mkWorld23_srt:
	.quad	TestVals_mkWorld24_closure
	.quad	TestVals_mkWorld25_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld23_closure
.type TestVals_mkWorld23_closure, @object
TestVals_mkWorld23_closure:
	.quad	TestVals_mkWorld23_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld23_srt-(TestVals_mkWorld23_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl TestVals_mkWorld23_info
.type TestVals_mkWorld23_info, @object
TestVals_mkWorld23_info:
.LcOqJ:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOqL
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOqN
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
	je .LcOqO
.LcOqP:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld25_closure,%r14d
	movl $TestVals_mkWorld24_closure,%esi
	addq $-16,%rbp
	jmp filepathzm1zi3zi0zi1_SystemziFilePathziPosix_combine_info
.LcOqN:
	movq $16,192(%r13)
.LcOqL:
	jmp *-16(%r13)
.LcOqO:
	jmp *(%rbx)
	.size TestVals_mkWorld23_info, .-TestVals_mkWorld23_info
.data
	.align 8
.align 1
.globl TestVals_mkWorld29_closure
.type TestVals_mkWorld29_closure, @object
TestVals_mkWorld29_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	72
	.byte	66
	.long	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld28_closure
.type TestVals_mkWorld28_closure, @object
TestVals_mkWorld28_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	128
	.byte	63
	.long	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld27_closure
.type TestVals_mkWorld27_closure, @object
TestVals_mkWorld27_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	1
.data
	.align 8
.align 1
.globl TestVals_mkWorld26_closure
.type TestVals_mkWorld26_closure, @object
TestVals_mkWorld26_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	160
	.byte	65
	.long	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld37_closure
.type TestVals_mkWorld37_closure, @object
TestVals_mkWorld37_closure:
	.quad	TestVals_mkWorld37_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cOrg_str:
	.byte	111
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	115
	.byte	47
	.byte	119
	.byte	111
	.byte	119
	.byte	47
	.byte	119
	.byte	111
	.byte	119
	.byte	46
	.byte	111
	.byte	98
	.byte	106
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
.globl TestVals_mkWorld37_info
.type TestVals_mkWorld37_info, @object
TestVals_mkWorld37_info:
.LcOrk:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOrm
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOro
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
	je .LcOrp
.LcOrq:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cOrg_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcOro:
	movq $16,192(%r13)
.LcOrm:
	jmp *-16(%r13)
.LcOrp:
	jmp *(%rbx)
	.size TestVals_mkWorld37_info, .-TestVals_mkWorld37_info
.section .data
	.align 8
.align 1
TestVals_mkWorld36_srt:
	.quad	TestVals_mkWorld25_closure
	.quad	TestVals_mkWorld37_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld36_closure
.type TestVals_mkWorld36_closure, @object
TestVals_mkWorld36_closure:
	.quad	TestVals_mkWorld36_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld36_srt-(TestVals_mkWorld36_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl TestVals_mkWorld36_info
.type TestVals_mkWorld36_info, @object
TestVals_mkWorld36_info:
.LcOrH:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOrJ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcOrL
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
	je .LcOrM
.LcOrN:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $TestVals_mkWorld25_closure,%r14d
	movl $TestVals_mkWorld37_closure,%esi
	addq $-16,%rbp
	jmp filepathzm1zi3zi0zi1_SystemziFilePathziPosix_combine_info
.LcOrL:
	movq $16,192(%r13)
.LcOrJ:
	jmp *-16(%r13)
.LcOrM:
	jmp *(%rbx)
	.size TestVals_mkWorld36_info, .-TestVals_mkWorld36_info
.section .data
	.align 8
.align 1
TestVals_mkWorld1_srt:
	.quad	timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_zdwposixSecondsToUTCTime_closure
	.quad	timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_getPOSIXTime1_closure
	.quad	EngineziTerrainziGenerator_genSimplexModel1_closure
	.quad	EngineziGraphicsziWindow_defaultWindow_closure
	.quad	EngineziModelziModelLoader_loadObjModel1_closure
	.quad	EngineziObjectziPlayer_mkPlayer_closure
	.quad	TestVals_mkWorld36_closure
	.quad	TestVals_mkWorld4_closure
	.quad	TestVals_mkWorld23_closure
	.quad	TestVals_mainFragShader_closure
	.quad	TestVals_mainVertShader_closure
	.quad	TestVals_mkWorld38_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld1_closure
.type TestVals_mkWorld1_closure, @object
TestVals_mkWorld1_closure:
	.quad	TestVals_mkWorld1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cOsS_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	84
	.byte	101
	.byte	115
	.byte	116
	.byte	86
	.byte	97
	.byte	108
	.byte	115
	.byte	46
	.byte	109
	.byte	107
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	48
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cOsV_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld1_ct
.type TestVals_mkWorld1_ct, @object
TestVals_mkWorld1_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cOsS_str
	.quad	cOsV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sOiB_info:
.LcOty:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcOtE
	addq $5,TestVals_mkWorld1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_PureEntity_con_info,-32(%r12)
	movq $TestVals_mkWorld17_closure+1,-24(%r12)
	movq $base_GHCziBase_id_closure+1,-16(%r12)
	movq %rbx,-8(%r12)
	movq $ghczmprim_GHCziTuple_Z0T_closure+1,0(%r12)
	leaq -30(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcOtE:
	movq $40,192(%r13)
.LcOtC:
	jmp *-16(%r13)
	.size sOiB_info, .-sOiB_info
.text
	.align 8
	.quad	1
	.quad	17
sOiD_info:
.LcOtJ:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOtL
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sOiB_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sOiB_info
	jmp *(%rbx)
.LcOtL:
	jmp *-16(%r13)
	.size sOiD_info, .-sOiD_info
.text
	.align 8
	.quad	0
	.quad	32
sOir_info:
.LcOtU:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcOu0
	addq $5,TestVals_mkWorld1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_PureEntity_con_info,-32(%r12)
	movq $TestVals_mkWorld19_closure+1,-24(%r12)
	movq $base_GHCziBase_id_closure+1,-16(%r12)
	movq %rbx,-8(%r12)
	movq $ghczmprim_GHCziTuple_Z0T_closure+1,0(%r12)
	leaq -30(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcOu0:
	movq $40,192(%r13)
.LcOtY:
	jmp *-16(%r13)
	.size sOir_info, .-sOir_info
.text
	.align 8
	.quad	1
	.quad	17
sOiG_info:
.LcOu5:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOu7
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sOir_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sOir_info
	jmp *(%rbx)
.LcOu7:
	jmp *-16(%r13)
	.size sOiG_info, .-sOiG_info
.text
	.align 8
	.quad	0
	.quad	32
sOih_info:
.LcOug:
	addq $40,%r12
	cmpq 144(%r13),%r12
	ja .LcOum
	addq $5,TestVals_mkWorld1_ct+48
	incq ALLOC_HEAP_ctr
	addq $5,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_PureEntity_con_info,-32(%r12)
	movq $TestVals_mkWorld20_closure+1,-24(%r12)
	movq $base_GHCziBase_id_closure+1,-16(%r12)
	movq %rbx,-8(%r12)
	movq $ghczmprim_GHCziTuple_Z0T_closure+1,0(%r12)
	leaq -30(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.LcOum:
	movq $40,192(%r13)
.LcOuk:
	jmp *-16(%r13)
	.size sOih_info, .-sOih_info
.text
	.align 8
	.quad	1
	.quad	17
sOiJ_info:
.LcOur:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOut
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sOih_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sOih_info
	jmp *(%rbx)
.LcOut:
	jmp *-16(%r13)
	.size sOiJ_info, .-sOiJ_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOse_info)+24
	.long	0
	.quad	4
	.quad	73014444064
sOse_info:
.LcOuy:
	addq $256,%r12
	cmpq 144(%r13),%r12
	ja .LcOuC
	addq $32,TestVals_mkWorld1_ct+48
	incq ALLOC_HEAP_ctr
	addq $32,ALLOC_HEAP_tot
	movq $timezm1zi4zi0zi1_DataziTimeziClockziUTC_UTCTime_con_info,-248(%r12)
	movq %rbx,-240(%r12)
	movq %r14,-232(%r12)
	movq $EngineziCoreziWorld_WorldState_con_info,-224(%r12)
	movq $TestVals_mkWorld3_closure+1,-216(%r12)
	leaq -247(%r12),%rax
	movq %rax,-208(%r12)
	movq $TestVals_mkWorld2_closure+1,-200(%r12)
	movq $ghczmprim_GHCziTypes_False_closure+1,-192(%r12)
	movq $EngineziGraphicsziWindow_defaultWindow_closure,-184(%r12)
	movq $sOiD_info,-176(%r12)
	movq 8(%rbp),%rax
	movq %rax,-160(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-152(%r12)
	leaq -176(%r12),%rax
	movq %rax,-144(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-136(%r12)
	movq $sOiG_info,-128(%r12)
	movq 16(%rbp),%rax
	movq %rax,-112(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-104(%r12)
	leaq -128(%r12),%rax
	movq %rax,-96(%r12)
	leaq -150(%r12),%rax
	movq %rax,-88(%r12)
	movq $sOiJ_info,-80(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	leaq -80(%r12),%rax
	movq %rax,-48(%r12)
	leaq -102(%r12),%rax
	movq %rax,-40(%r12)
	incq RET_NEW_ctr
	movq $EngineziCoreziWorld_World_con_info,-32(%r12)
	movq 32(%rbp),%rax
	movq %rax,-24(%r12)
	leaq -54(%r12),%rax
	movq %rax,-16(%r12)
	movq $TestVals_mkWorld4_closure+2,-8(%r12)
	leaq -223(%r12),%rax
	movq %rax,0(%r12)
	leaq -31(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.LcOuC:
	movq $256,192(%r13)
.LcOuA:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size sOse_info, .-sOse_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOi8_info)+0
	.long	0
	.quad	4
	.quad	588410519584
sOi8_info:
.LcOuR:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq %rbx,32(%rbp)
	movq $sOse_info,0(%rbp)
	jmp timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_zdwposixSecondsToUTCTime_info
	.size sOi8_info, .-sOi8_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOsd_info)+0
	.long	0
	.quad	4
	.quad	725849473040
sOsd_info:
.LcOuW:
	incq ENT_DYN_THK_ctr
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOuY
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movl $EngineziObjectziPlayer_mkPlayer_closure,%ebx
	movq $sOi8_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne sOi8_info
	jmp *(%rbx)
.LcOuY:
	jmp *-16(%r13)
	.size sOsd_info, .-sOsd_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOsf_info)+0
	.long	0
	.quad	3
	.quad	725849473056
sOsf_info:
.LcOv7:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcOvb
	addq $6,TestVals_mkWorld1_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	movq $sOsd_info,-40(%r12)
	movq %rbx,-24(%r12)
	movq 24(%rbp),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -40(%r12),%rbx
	addq $32,%rbp
	jmp *0(%rbp)
.LcOvb:
	movq $48,192(%r13)
.LcOv9:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sOsf_info, .-sOsf_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOsg_info)+0
	.long	0
	.quad	2
	.quad	734439407648
sOsg_info:
.LcOvh:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq $sOsf_info,-8(%rbp)
	addq $-8,%rbp
	jmp timezm1zi4zi0zi1_DataziTimeziClockziPOSIX_getPOSIXTime1_info
	.size sOsg_info, .-sOsg_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOsh_info)+0
	.long	0
	.quad	2
	.quad	8499740278816
sOsh_info:
.LcOvk:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movl $TestVals_mkWorld23_closure,%esi
	movl $TestVals_mainVertShader_closure,%edi
	movl $TestVals_mainFragShader_closure,%r8d
	movq $sOsg_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObjModel1_info
	.size sOsh_info, .-sOsh_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOsi_info)+0
	.long	0
	.quad	1
	.quad	17295833301024
sOsi_info:
.LcOvn:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq $sOsh_info,-8(%rbp)
	addq $-8,%rbp
	jmp TestVals_mkWorld38_info
	.size sOsi_info, .-sOsi_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOsj_info)+0
	.long	0
	.quad	0
	.quad	17313013170208
sOsj_info:
.LcOvq:
	incq KNOWN_CALL_ctr
	movq %rbx,0(%rbp)
	movq $TestVals_mkWorld22_closure+1,-16(%rbp)
	movq $TestVals_mkWorld26_closure+1,-24(%rbp)
	movl $TestVals_mainVertShader_closure,%r14d
	movl $TestVals_mainFragShader_closure,%esi
	movl $TestVals_mkWorld29_closure+1,%edi
	movl $TestVals_mkWorld28_closure+1,%r8d
	movl $TestVals_mkWorld27_closure+1,%r9d
	movq $sOsi_info,-8(%rbp)
	addq $-24,%rbp
	jmp EngineziTerrainziGenerator_genSimplexModel1_info
	.size sOsj_info, .-sOsj_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(sOsk_info)+0
	.long	0
	.quad	0
	.quad	17587891077152
sOsk_info:
.LcOvt:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movl $TestVals_mkWorld36_closure,%esi
	movl $TestVals_mainVertShader_closure,%edi
	movl $TestVals_mainFragShader_closure,%r8d
	movq $sOsj_info,0(%rbp)
	jmp EngineziModelziModelLoader_loadObjModel1_info
	.size sOsk_info, .-sOsk_info
.text
	.align 8
	.long	TestVals_mkWorld1_srt-(TestVals_mkWorld1_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	17587891077135
.globl TestVals_mkWorld1_info
.type TestVals_mkWorld1_info, @object
TestVals_mkWorld1_info:
.LcOvw:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcOvy
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,TestVals_mkWorld1_ct
	je .LcOvz
.LcOvA:
	incq TestVals_mkWorld1_ct+40
	incq KNOWN_CALL_ctr
	movq $sOsk_info,-8(%rbp)
	addq $-8,%rbp
	jmp TestVals_mkWorld38_info
.LcOvy:
	movl $TestVals_mkWorld1_closure,%ebx
	jmp *-8(%r13)
.LcOvz:
	movq ticky_entry_ctrs,%rax
	movq %rax,TestVals_mkWorld1_ct+56
	movq $TestVals_mkWorld1_ct,ticky_entry_ctrs
	movq $1,TestVals_mkWorld1_ct
	jmp .LcOvA
	.size TestVals_mkWorld1_info, .-TestVals_mkWorld1_info
.section .data
	.align 8
.align 1
TestVals_mkWorld_srt:
	.quad	TestVals_mkWorld1_closure
.data
	.align 8
.align 1
.globl TestVals_mkWorld_closure
.type TestVals_mkWorld_closure, @object
TestVals_mkWorld_closure:
	.quad	TestVals_mkWorld_info
	.quad	0
.section .rodata
	.align 8
.align 1
cOvK_str:
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	58
	.byte	84
	.byte	101
	.byte	115
	.byte	116
	.byte	86
	.byte	97
	.byte	108
	.byte	115
	.byte	46
	.byte	109
	.byte	107
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	48
	.byte	86
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cOvN_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl TestVals_mkWorld_ct
.type TestVals_mkWorld_ct, @object
TestVals_mkWorld_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cOvK_str
	.quad	cOvN_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	TestVals_mkWorld_srt-(TestVals_mkWorld_info)+0
	.long	0
	.quad	4294967299
	.quad	0
	.quad	4294967311
.globl TestVals_mkWorld_info
.type TestVals_mkWorld_info, @object
TestVals_mkWorld_info:
.LcOvS:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,TestVals_mkWorld_ct
	je .LcOvV
.LcOvX:
	incq TestVals_mkWorld_ct+40
	incq KNOWN_CALL_ctr
	jmp TestVals_mkWorld1_info
.LcOvV:
	movq ticky_entry_ctrs,%rax
	movq %rax,TestVals_mkWorld_ct+56
	movq $TestVals_mkWorld_ct,ticky_entry_ctrs
	movq $1,TestVals_mkWorld_ct
	jmp .LcOvX
	.size TestVals_mkWorld_info, .-TestVals_mkWorld_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
