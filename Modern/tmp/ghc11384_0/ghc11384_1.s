.data
	.align 8
.align 1
.globl __stginit_EngineziTerrainziNoise
.type __stginit_EngineziTerrainziNoise, @object
__stginit_EngineziTerrainziNoise:
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoise2_closure
.type EngineziTerrainziNoise_simplexNoise2_closure, @object
EngineziTerrainziNoise_simplexNoise2_closure:
	.quad	ghczmprim_GHCziTypes_Fzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad17_closure
.type EngineziTerrainziNoise_grad17_closure, @object
EngineziTerrainziNoise_grad17_closure:
	.quad	ghczmprim_GHCziTypes_Dzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoise4_closure
.type EngineziTerrainziNoise_simplexNoise4_closure, @object
EngineziTerrainziNoise_simplexNoise4_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	100
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoise5_closure
.type EngineziTerrainziNoise_simplexNoise5_closure, @object
EngineziTerrainziNoise_simplexNoise5_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoise3_closure
.type EngineziTerrainziNoise_simplexNoise3_closure, @object
EngineziTerrainziNoise_simplexNoise3_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_static_info
	.quad	EngineziTerrainziNoise_simplexNoise5_closure+1
	.quad	EngineziTerrainziNoise_simplexNoise4_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoiseSection2_closure
.type EngineziTerrainziNoise_simplexNoiseSection2_closure, @object
EngineziTerrainziNoise_simplexNoiseSection2_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_static_info
	.quad	EngineziTerrainziNoise_simplexNoise5_closure+1
	.quad	EngineziTerrainziNoise_simplexNoise4_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_perm3_closure
.type EngineziTerrainziNoise_perm3_closure, @object
EngineziTerrainziNoise_perm3_closure:
	.quad	EngineziTerrainziNoise_perm3_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziTerrainziNoise_perm3_info
.type EngineziTerrainziNoise_perm3_info, @object
EngineziTerrainziNoise_perm3_info:
.Lc6AW:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6AY
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6B0
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
	je .Lc6B1
.Lc6B2:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	movl $255,%esi
	addq $-16,%rbp
	jmp base_GHCziEnum_eftInt_info
.Lc6B0:
	movq $16,192(%r13)
.Lc6AY:
	jmp *-16(%r13)
.Lc6B1:
	jmp *(%rbx)
	.size EngineziTerrainziNoise_perm3_info, .-EngineziTerrainziNoise_perm3_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_perm2_closure
.type EngineziTerrainziNoise_perm2_closure, @object
EngineziTerrainziNoise_perm2_closure:
	.quad	ghczmprim_GHCziTypes_Izh_static_info
	.quad	256
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_perm1_srt:
	.quad	EngineziTerrainziNoise_perm3_closure
	.quad	randomzmshufflezm0zi0zi4_SystemziRandomziShuffle_shufflezq_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_perm1_closure
.type EngineziTerrainziNoise_perm1_closure, @object
EngineziTerrainziNoise_perm1_closure:
	.quad	EngineziTerrainziNoise_perm1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziNoise_perm1_srt-(EngineziTerrainziNoise_perm1_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziTerrainziNoise_perm1_info
.type EngineziTerrainziNoise_perm1_info, @object
EngineziTerrainziNoise_perm1_info:
.Lc6Bm:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Bo
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Bq
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
	je .Lc6Br
.Lc6Bs:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $randomzm1zi0zi1zi1_SystemziRandom_zdfRandomGenStdGen_closure,%r14d
	movl $EngineziTerrainziNoise_perm3_closure,%esi
	movl $EngineziTerrainziNoise_perm2_closure+1,%edi
	addq $-16,%rbp
	jmp randomzmshufflezm0zi0zi4_SystemziRandomziShuffle_shufflezq_info
.Lc6Bq:
	movq $16,192(%r13)
.Lc6Bo:
	jmp *-16(%r13)
.Lc6Br:
	jmp *(%rbx)
	.size EngineziTerrainziNoise_perm1_info, .-EngineziTerrainziNoise_perm1_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_harmonic1_closure
.type EngineziTerrainziNoise_harmonic1_closure, @object
EngineziTerrainziNoise_harmonic1_closure:
	.quad	ghczmprim_GHCziTypes_Dzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	64
.data
	.align 8
.align 1
r6fv_closure:
	.quad	r6fv_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
c6BK_str:
	.byte	78
	.byte	101
	.byte	103
	.byte	97
	.byte	116
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	101
	.byte	120
	.byte	112
	.byte	111
	.byte	110
	.byte	101
	.byte	110
	.byte	116
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
r6fv_info:
.Lc6BO:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6BQ
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6BS
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
	je .Lc6BT
.Lc6BU:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $c6BK_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.Lc6BS:
	movq $16,192(%r13)
.Lc6BQ:
	jmp *-16(%r13)
.Lc6BT:
	jmp *(%rbx)
	.size r6fv_info, .-r6fv_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdszc1_srt:
	.quad	base_GHCziErr_error_closure
	.quad	r6fv_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdszc1_closure
.type EngineziTerrainziNoise_zdszc1_closure, @object
EngineziTerrainziNoise_zdszc1_closure:
	.quad	EngineziTerrainziNoise_zdszc1_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziNoise_zdszc1_srt-(EngineziTerrainziNoise_zdszc1_info)+0
	.long	0
	.quad	0
	.quad	12884901910
.globl EngineziTerrainziNoise_zdszc1_info
.type EngineziTerrainziNoise_zdszc1_info, @object
EngineziTerrainziNoise_zdszc1_info:
.Lc6Cb:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Cd
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Cf
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
	je .Lc6Cg
.Lc6Ch:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $r6fv_closure,%r14d
	addq $-16,%rbp
	jmp base_GHCziErr_error_info
.Lc6Cf:
	movq $16,192(%r13)
.Lc6Cd:
	jmp *-16(%r13)
.Lc6Cg:
	jmp *(%rbx)
	.size EngineziTerrainziNoise_zdszc1_info, .-EngineziTerrainziNoise_zdszc1_info
.data
	.align 8
.align 1
r6fw_closure:
	.quad	r6fw_info
.section .rodata
	.align 8
.align 1
c6D1_str:
	.byte	36
	.byte	119
	.byte	103
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	54
	.byte	102
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c6D4_str:
	.byte	100
	.byte	105
	.byte	100
	.byte	0
.data
	.align 8
.align 1
r6fw_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	c6D1_str
	.quad	c6D4_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
r6fw_slow:
.Lc6D8:
	movsd 0(%rbp),%xmm5
	movq 8(%rbp),%r14
	movsd 16(%rbp),%xmm6
	addq $24,%rbp
	jmp r6fw_info
	.size r6fw_slow, .-r6fw_slow
.text
	.align 8
	.long	r6fw_slow-(r6fw_info)+0
	.long	0
	.quad	451
	.quad	0
	.quad	12884901888
	.quad	0
	.quad	15
r6fw_info:
.Lc6Dc:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,r6fw_ct
	je .Lc6Df
.Lc6Dh:
	incq r6fw_ct+40
	movl $2,%ebx
	movq %r14,%rax
	cqto
	idivq %rbx
	testq %rdx,%rdx
	jne .Lc6Dk
	incq KNOWN_CALL_ctr
	movsd %xmm5,%xmm0
	mulsd %xmm0,%xmm5
	movq %r14,%rax
	shrq $63,%rax
	addq %rax,%r14
	sarq $1,%r14
	jmp r6fw_info
.Lc6Df:
	movq ticky_entry_ctrs,%rax
	movq %rax,r6fw_ct+56
	movq $r6fw_ct,ticky_entry_ctrs
	movq $1,r6fw_ct
	jmp .Lc6Dh
.Lc6Dk:
	movq %r14,%rax
	cmpq $1,%r14
	jne .Lc6Do
	mulsd %xmm6,%xmm5
	jmp *0(%rbp)
.Lc6Do:
	movsd %xmm5,%xmm1
	mulsd %xmm6,%xmm1
	incq KNOWN_CALL_ctr
	movsd %xmm5,%xmm0
	mulsd %xmm0,%xmm5
	movl $2,%ebx
	decq %rax
	cqto
	idivq %rbx
	movq %rax,%r14
	movsd %xmm1,%xmm6
	jmp r6fw_info
	.size r6fw_info, .-r6fw_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwf_closure
.type EngineziTerrainziNoise_zdwf_closure, @object
EngineziTerrainziNoise_zdwf_closure:
	.quad	EngineziTerrainziNoise_zdwf_info
.section .rodata
	.align 8
.align 1
c6Ed_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	119
	.byte	102
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Eg_str:
	.byte	100
	.byte	105
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwf_ct
.type EngineziTerrainziNoise_zdwf_ct, @object
EngineziTerrainziNoise_zdwf_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6Ed_str
	.quad	c6Eg_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziNoise_zdwf_slow
.type EngineziTerrainziNoise_zdwf_slow, @object
EngineziTerrainziNoise_zdwf_slow:
.Lc6Ek:
	movsd 0(%rbp),%xmm5
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp EngineziTerrainziNoise_zdwf_info
	.size EngineziTerrainziNoise_zdwf_slow, .-EngineziTerrainziNoise_zdwf_slow
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwf_slow-(EngineziTerrainziNoise_zdwf_info)+0
	.long	0
	.quad	194
	.quad	0
	.quad	8589934592
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_zdwf_info
.type EngineziTerrainziNoise_zdwf_info, @object
EngineziTerrainziNoise_zdwf_info:
.Lc6Eo:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdwf_ct
	je .Lc6Er
.Lc6Et:
	incq EngineziTerrainziNoise_zdwf_ct+40
	movl $2,%ebx
	movq %r14,%rax
	cqto
	idivq %rbx
	testq %rdx,%rdx
	jne .Lc6Ew
	incq KNOWN_CALL_ctr
	movsd %xmm5,%xmm0
	mulsd %xmm0,%xmm5
	movq %r14,%rax
	shrq $63,%rax
	addq %rax,%r14
	sarq $1,%r14
	jmp EngineziTerrainziNoise_zdwf_info
.Lc6Er:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdwf_ct+56
	movq $EngineziTerrainziNoise_zdwf_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdwf_ct
	jmp .Lc6Et
.Lc6Ew:
	movq %r14,%rax
	cmpq $1,%r14
	jne .Lc6EA
	jmp *0(%rbp)
.Lc6EA:
	incq KNOWN_CALL_ctr
	movl $2,%ebx
	decq %rax
	cqto
	idivq %rbx
	movq %rax,%r14
	movsd %xmm5,%xmm6
	movsd %xmm5,%xmm0
	mulsd %xmm0,%xmm5
	jmp r6fw_info
	.size EngineziTerrainziNoise_zdwf_info, .-EngineziTerrainziNoise_zdwf_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdwzdszc_srt:
	.quad	EngineziTerrainziNoise_zdszc1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwzdszc_closure
.type EngineziTerrainziNoise_zdwzdszc_closure, @object
EngineziTerrainziNoise_zdwzdszc_closure:
	.quad	EngineziTerrainziNoise_zdwzdszc_info
	.quad	0
.section .rodata
	.align 8
.align 1
c6F9_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	115
	.byte	94
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	54
	.byte	102
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Fb_str:
	.byte	83
	.byte	105
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwzdszc_ct
.type EngineziTerrainziNoise_zdwzdszc_ct, @object
EngineziTerrainziNoise_zdwzdszc_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6F9_str
	.quad	c6Fb_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	65
	.quad	32
s6EJ_info:
.Lc6Fl:
	incq KNOWN_CALL_ctr
	movsd 7(%rbx),%xmm5
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp EngineziTerrainziNoise_zdwf_info
	.size s6EJ_info, .-s6EJ_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwzdszc_srt-(EngineziTerrainziNoise_zdwzdszc_info)+0
	.long	0
	.quad	8589934603
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_zdwzdszc_info
.type EngineziTerrainziNoise_zdwzdszc_info, @object
EngineziTerrainziNoise_zdwzdszc_info:
.Lc6Fo:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Fq
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdwzdszc_ct
	je .Lc6Fr
.Lc6Fs:
	incq EngineziTerrainziNoise_zdwzdszc_ct+40
	testq %rsi,%rsi
	jl .Lc6Fu
	movq %rsi,%rax
	testq %rsi,%rsi
	jne .Lc6Fw
	movsd .Ln6FC(%rip),%xmm5
	jmp *0(%rbp)
.Lc6Fq:
	movl $EngineziTerrainziNoise_zdwzdszc_closure,%ebx
	jmp *-8(%r13)
.Lc6Fr:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdwzdszc_ct+56
	movq $EngineziTerrainziNoise_zdwzdszc_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdwzdszc_ct
	jmp .Lc6Fs
.Lc6Fu:
	movl $EngineziTerrainziNoise_zdszc1_closure,%ebx
	andq $-8,%rbx
	jmp *(%rbx)
.Lc6Fw:
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $s6EJ_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s6EJ_info
	jmp *(%rbx)
	.size EngineziTerrainziNoise_zdwzdszc_info, .-EngineziTerrainziNoise_zdwzdszc_info
.section .rodata
	.align 8
.align 8
.Ln6FC:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdszc_srt:
	.quad	EngineziTerrainziNoise_zdszc1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdszc_closure
.type EngineziTerrainziNoise_zdszc_closure, @object
EngineziTerrainziNoise_zdszc_closure:
	.quad	EngineziTerrainziNoise_zdszc_info
	.quad	0
.section .rodata
	.align 8
.align 1
c6FS_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	115
	.byte	94
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	78
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6FV_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdszc_ct
.type EngineziTerrainziNoise_zdszc_ct, @object
EngineziTerrainziNoise_zdszc_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6FS_str
	.quad	c6FV_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6gk_info:
.Lc6G9:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Gg
	addq $2,EngineziTerrainziNoise_zdszc_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm5,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc6Gg:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6gk_info, .-s6gk_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdszc_srt-(s6FF_info)+0
	.long	0
	.quad	1
	.quad	4294967328
s6FF_info:
.Lc6Gj:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq $s6gk_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziTerrainziNoise_zdwzdszc_info
	.size s6FF_info, .-s6FF_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdszc_srt-(EngineziTerrainziNoise_zdszc_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_zdszc_info
.type EngineziTerrainziNoise_zdszc_info, @object
EngineziTerrainziNoise_zdszc_info:
.Lc6Gm:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Go
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdszc_ct
	je .Lc6Gp
.Lc6Gq:
	incq EngineziTerrainziNoise_zdszc_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $s6FF_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s6FF_info
	jmp *(%rbx)
.Lc6Go:
	movl $EngineziTerrainziNoise_zdszc_closure,%ebx
	jmp *-8(%r13)
.Lc6Gp:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdszc_ct+56
	movq $EngineziTerrainziNoise_zdszc_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdszc_ct
	jmp .Lc6Gq
	.size EngineziTerrainziNoise_zdszc_info, .-EngineziTerrainziNoise_zdszc_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdwzdszczc_srt:
	.quad	EngineziTerrainziNoise_zdszc1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwzdszczc_closure
.type EngineziTerrainziNoise_zdwzdszczc_closure, @object
EngineziTerrainziNoise_zdwzdszczc_closure:
	.quad	EngineziTerrainziNoise_zdwzdszczc_info
	.quad	0
.section .rodata
	.align 8
.align 1
c6GW_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	119
	.byte	36
	.byte	115
	.byte	94
	.byte	94
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	56
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6GY_str:
	.byte	83
	.byte	105
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwzdszczc_ct
.type EngineziTerrainziNoise_zdwzdszczc_ct, @object
EngineziTerrainziNoise_zdwzdszczc_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6GW_str
	.quad	c6GY_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6gs_info:
.Lc6H8:
	movsd %xmm5,%xmm0
	movsd .Ln6He(%rip),%xmm5
	divsd %xmm0,%xmm5
	addq $8,%rbp
	jmp *0(%rbp)
	.size s6gs_info, .-s6gs_info
.section .rodata
	.align 8
.align 8
.Ln6He:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwzdszczc_srt-(EngineziTerrainziNoise_zdwzdszczc_info)+0
	.long	0
	.quad	8589934603
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_zdwzdszczc_info
.type EngineziTerrainziNoise_zdwzdszczc_info, @object
EngineziTerrainziNoise_zdwzdszczc_info:
.Lc6Hi:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Hk
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdwzdszczc_ct
	je .Lc6Hl
.Lc6Hm:
	incq EngineziTerrainziNoise_zdwzdszczc_ct+40
	testq %rsi,%rsi
	jge .Lc6Ho
	incq KNOWN_CALL_ctr
	negq %rsi
	movq $s6gs_info,-8(%rbp)
	addq $-8,%rbp
	jmp EngineziTerrainziNoise_zdwzdszc_info
.Lc6Hk:
	movl $EngineziTerrainziNoise_zdwzdszczc_closure,%ebx
	jmp *-8(%r13)
.Lc6Hl:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdwzdszczc_ct+56
	movq $EngineziTerrainziNoise_zdwzdszczc_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdwzdszczc_ct
	jmp .Lc6Hm
.Lc6Ho:
	incq KNOWN_CALL_ctr
	jmp EngineziTerrainziNoise_zdwzdszc_info
	.size EngineziTerrainziNoise_zdwzdszczc_info, .-EngineziTerrainziNoise_zdwzdszczc_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdszczc_srt:
	.quad	EngineziTerrainziNoise_zdszc1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdszczc_closure
.type EngineziTerrainziNoise_zdszczc_closure, @object
EngineziTerrainziNoise_zdszczc_closure:
	.quad	EngineziTerrainziNoise_zdszczc_info
	.quad	0
.section .rodata
	.align 8
.align 1
c6HF_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	115
	.byte	94
	.byte	94
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	77
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6HI_str:
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdszczc_ct
.type EngineziTerrainziNoise_zdszczc_ct, @object
EngineziTerrainziNoise_zdszczc_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6HF_str
	.quad	c6HI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6gB_info:
.Lc6HW:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6I3
	addq $2,EngineziTerrainziNoise_zdszczc_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm5,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc6I3:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6gB_info, .-s6gB_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdszczc_srt-(s6Hs_info)+0
	.long	0
	.quad	1
	.quad	4294967328
s6Hs_info:
.Lc6I6:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq $s6gB_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziTerrainziNoise_zdwzdszczc_info
	.size s6Hs_info, .-s6Hs_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdszczc_srt-(EngineziTerrainziNoise_zdszczc_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_zdszczc_info
.type EngineziTerrainziNoise_zdszczc_info, @object
EngineziTerrainziNoise_zdszczc_info:
.Lc6I9:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Ib
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdszczc_ct
	je .Lc6Ic
.Lc6Id:
	incq EngineziTerrainziNoise_zdszczc_ct+40
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $s6Hs_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s6Hs_info
	jmp *(%rbx)
.Lc6Ib:
	movl $EngineziTerrainziNoise_zdszczc_closure,%ebx
	jmp *-8(%r13)
.Lc6Ic:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdszczc_ct+56
	movq $EngineziTerrainziNoise_zdszczc_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdszczc_ct
	jmp .Lc6Id
	.size EngineziTerrainziNoise_zdszczc_info, .-EngineziTerrainziNoise_zdszczc_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_dot3_closure
.type EngineziTerrainziNoise_dot3_closure, @object
EngineziTerrainziNoise_dot3_closure:
	.quad	EngineziTerrainziNoise_dot3_info
.section .rodata
	.align 8
.align 1
c6J9_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	100
	.byte	111
	.byte	116
	.byte	51
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	111
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Jc_str:
	.byte	84
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_dot3_ct
.type EngineziTerrainziNoise_dot3_ct, @object
EngineziTerrainziNoise_dot3_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	c6J9_str
	.quad	c6Jc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	1989
	.quad	32
s6In_info:
.Lc6JK:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6JQ
	addq $2,EngineziTerrainziNoise_dot3_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	leaq 7(%rbx),%rax
	movsd 24(%rbp),%xmm0
	mulsd (%rax),%xmm0
	movsd 32(%rbp),%xmm1
	mulsd 8(%rbp),%xmm1
	movsd 40(%rbp),%xmm2
	mulsd 16(%rbp),%xmm2
	addsd %xmm1,%xmm2
	addsd %xmm0,%xmm2
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm2,0(%r12)
	leaq -7(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.Lc6JQ:
	movq $16,192(%r13)
.Lc6JO:
	jmp *-16(%r13)
	.size s6In_info, .-s6In_info
.text
	.align 8
	.quad	1733
	.quad	32
s6Io_info:
.Lc6K1:
	movq 24(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $s6In_info,0(%rbp)
	testq $7,%rbx
	jne s6In_info
	jmp *(%rbx)
	.size s6Io_info, .-s6Io_info
.text
	.align 8
	.quad	1669
	.quad	32
s6Ip_info:
.Lc6Ka:
	movq 8(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $s6Io_info,0(%rbp)
	testq $7,%rbx
	jne s6Io_info
	jmp *(%rbx)
	.size s6Ip_info, .-s6Ip_info
.text
	.align 8
	.quad	1157
	.quad	32
s6Iq_info:
.Lc6Kj:
	movq 32(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $s6Ip_info,0(%rbp)
	testq $7,%rbx
	jne s6Ip_info
	jmp *(%rbx)
	.size s6Iq_info, .-s6Iq_info
.text
	.align 8
	.quad	1029
	.quad	32
s6Ir_info:
.Lc6Ks:
	movq 16(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $s6Iq_info,0(%rbp)
	testq $7,%rbx
	jne s6Iq_info
	jmp *(%rbx)
	.size s6Ir_info, .-s6Ir_info
.text
	.align 8
	.quad	5
	.quad	32
s6Is_info:
.Lc6KB:
	movq 40(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $s6Ir_info,0(%rbp)
	testq $7,%rbx
	jne s6Ir_info
	jmp *(%rbx)
	.size s6Is_info, .-s6Is_info
.text
	.align 8
	.quad	3
	.quad	32
s6It_info:
.Lc6KK:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s6Is_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s6Is_info
	jmp *(%rbx)
	.size s6It_info, .-s6It_info
.text
	.align 8
	.quad	17179869205
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_dot3_info
.type EngineziTerrainziNoise_dot3_info, @object
EngineziTerrainziNoise_dot3_info:
.Lc6KS:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6KU
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_dot3_ct
	je .Lc6KV
.Lc6KW:
	incq EngineziTerrainziNoise_dot3_ct+40
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $s6It_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne s6It_info
	jmp *(%rbx)
.Lc6KU:
	movl $EngineziTerrainziNoise_dot3_closure,%ebx
	jmp *-8(%r13)
.Lc6KV:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_dot3_ct+56
	movq $EngineziTerrainziNoise_dot3_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_dot3_ct
	jmp .Lc6KW
	.size EngineziTerrainziNoise_dot3_info, .-EngineziTerrainziNoise_dot3_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_fastFloor_closure
.type EngineziTerrainziNoise_fastFloor_closure, @object
EngineziTerrainziNoise_fastFloor_closure:
	.quad	EngineziTerrainziNoise_fastFloor_info
.section .rodata
	.align 8
.align 1
c6LD_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	102
	.byte	97
	.byte	115
	.byte	116
	.byte	70
	.byte	108
	.byte	111
	.byte	111
	.byte	114
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	110
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6LF_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_fastFloor_ct
.type EngineziTerrainziNoise_fastFloor_ct, @object
EngineziTerrainziNoise_fastFloor_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c6LD_str
	.quad	c6LF_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6L5_info:
.Lc6LJ:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6LN
	addq $2,EngineziTerrainziNoise_fastFloor_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movsd 7(%rbx),%xmm0
	xorpd %xmm1,%xmm1
	ucomisd %xmm1,%xmm0
	ja .Lc6LQ
	movsd 7(%rbx),%xmm0
	subsd .Ln6LU(%rip),%xmm0
	cvttsd2siq %xmm0,%rax
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc6LN:
	movq $16,192(%r13)
.Lc6LL:
	jmp *-16(%r13)
.Lc6LQ:
	cvttsd2siq 7(%rbx),%rax
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Izh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
	.size s6L5_info, .-s6L5_info
.section .rodata
	.align 8
.align 8
.Ln6LU:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_fastFloor_info
.type EngineziTerrainziNoise_fastFloor_info, @object
EngineziTerrainziNoise_fastFloor_info:
.Lc6LZ:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6M1
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_fastFloor_ct
	je .Lc6M2
.Lc6M3:
	incq EngineziTerrainziNoise_fastFloor_ct+40
	movq %r14,%rbx
	movq $s6L5_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s6L5_info
	jmp *(%rbx)
.Lc6M1:
	movl $EngineziTerrainziNoise_fastFloor_closure,%ebx
	jmp *-8(%r13)
.Lc6M2:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_fastFloor_ct+56
	movq $EngineziTerrainziNoise_fastFloor_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_fastFloor_ct
	jmp .Lc6M3
	.size EngineziTerrainziNoise_fastFloor_info, .-EngineziTerrainziNoise_fastFloor_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_g3_closure
.type EngineziTerrainziNoise_g3_closure, @object
EngineziTerrainziNoise_g3_closure:
	.quad	ghczmprim_GHCziTypes_Dzh_static_info
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	197
	.byte	63
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdwharmonic_srt:
	.quad	base_GHCziReal_zc1_closure
	.quad	EngineziTerrainziNoise_zdszc1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwharmonic_closure
.type EngineziTerrainziNoise_zdwharmonic_closure, @object
EngineziTerrainziNoise_zdwharmonic_closure:
	.quad	EngineziTerrainziNoise_zdwharmonic_info
	.quad	0
.section .rodata
	.align 8
.align 1
c6Nv_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	119
	.byte	104
	.byte	97
	.byte	114
	.byte	109
	.byte	111
	.byte	110
	.byte	105
	.byte	99
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	87
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Nx_str:
	.byte	105
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwharmonic_ct
.type EngineziTerrainziNoise_zdwharmonic_ct, @object
EngineziTerrainziNoise_zdwharmonic_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6Nv_str
	.quad	c6Nx_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
c6NB_str:
	.byte	36
	.byte	119
	.byte	102
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	54
	.byte	104
	.byte	69
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c6NE_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
s6hE_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c6NB_str
	.quad	c6NE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
s6hK_info:
.Lc6O3:
	movsd %xmm5,%xmm0
	movsd 16(%rbp),%xmm5
	divsd 8(%rbp),%xmm5
	addsd %xmm0,%xmm5
	addq $24,%rbp
	jmp *0(%rbp)
	.size s6hK_info, .-s6hK_info
.text
	.align 8
	.quad	387
	.quad	32
s6Mh_info:
.Lc6Of:
	movq 24(%rbp),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	movsd 7(%rbx),%xmm0
	movsd %xmm0,24(%rbp)
	movq 8(%rbp),%rbx
	movq $s6hK_info,8(%rbp)
	addq $8,%rbp
	jmp s6hE_info
	.size s6Mh_info, .-s6Mh_info
.text
	.align 8
	.quad	259
	.quad	32
s6hz_info:
.Lc6Ok:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Oo
	addq $2,s6hE_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm5,0(%r12)
	incq UNKNOWN_CALL_ctr
	movq 16(%rbp),%rbx
	movsd %xmm5,16(%rbp)
	leaq -7(%r12),%r14
	movq $s6Mh_info,0(%rbp)
	jmp stg_ap_p_fast
.Lc6Oo:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6hz_info, .-s6hz_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwharmonic_srt-(s6hE_info)+8
	.long	0
	.quad	4294967300
	.quad	1
	.quad	4294967306
s6hE_info:
.Lc6Or:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Ot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s6hE_ct
	je .Lc6Ou
.Lc6Ov:
	incq s6hE_ct+40
	movq %r14,%rcx
	testq %r14,%r14
	jne .Lc6Ox
	xorpd %xmm5,%xmm5
	jmp *0(%rbp)
.Lc6Ot:
	jmp *-8(%r13)
.Lc6Ou:
	movq ticky_entry_ctrs,%rax
	movq %rax,s6hE_ct+56
	movq $s6hE_ct,ticky_entry_ctrs
	movq $1,s6hE_ct
	jmp .Lc6Ov
.Lc6Ox:
	incq KNOWN_CALL_ctr
	movq %rbx,-24(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	movq %rcx,-8(%rbp)
	movl $EngineziTerrainziNoise_harmonic1_closure+1,%r14d
	leaq -1(%rcx),%rsi
	movq $s6hz_info,-32(%rbp)
	addq $-32,%rbp
	jmp EngineziTerrainziNoise_zdwzdszczc_info
	.size s6hE_info, .-s6hE_info
.text
	.align 8
	.quad	65
	.quad	32
s6hT_info:
.Lc6OJ:
	cvtsi2sdq %rbx,%xmm0
	movsd .Ln6OW(%rip),%xmm1
	divsd %xmm0,%xmm1
	movsd .Ln6OZ(%rip),%xmm0
	subsd %xmm1,%xmm0
	movsd 8(%rbp),%xmm5
	divsd %xmm0,%xmm5
	addq $16,%rbp
	jmp *0(%rbp)
	.size s6hT_info, .-s6hT_info
.section .rodata
	.align 8
.align 8
.Ln6OW:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln6OZ:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	64
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwharmonic_srt-(s6hW_info)+0
	.long	0
	.quad	65
	.quad	4294967328
s6hW_info:
.Lc6P5:
	movq 8(%rbp),%rax
	leaq -1(%rax),%rsi
	testq %rsi,%rsi
	jl .Lc6P7
	testq %rsi,%rsi
	jne .Lc6P9
	addq $16,%rbp
	jmp *0(%rbp)
.Lc6P7:
	movl $base_GHCziReal_zc1_closure,%ebx
	addq $16,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lc6P9:
	incq KNOWN_CALL_ctr
	movsd %xmm5,8(%rbp)
	movl $2,%r14d
	movq $s6hT_info,0(%rbp)
	jmp base_GHCziReal_zdwf_info
	.size s6hW_info, .-s6hW_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwharmonic_srt-(EngineziTerrainziNoise_zdwharmonic_info)+0
	.long	0
	.quad	8589934602
	.quad	0
	.quad	12884901903
.globl EngineziTerrainziNoise_zdwharmonic_info
.type EngineziTerrainziNoise_zdwharmonic_info, @object
EngineziTerrainziNoise_zdwharmonic_info:
.Lc6Pe:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Pg
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Pi
	addq $2,EngineziTerrainziNoise_zdwharmonic_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdwharmonic_ct
	je .Lc6Pj
.Lc6Pk:
	incq EngineziTerrainziNoise_zdwharmonic_ct+40
	movq $s6hE_info,-8(%r12)
	movq %rsi,0(%r12)
	incq KNOWN_CALL_ctr
	movq %r14,-8(%rbp)
	leaq -7(%r12),%rbx
	movq $s6hW_info,-16(%rbp)
	addq $-16,%rbp
	jmp s6hE_info
.Lc6Pi:
	movq $16,192(%r13)
.Lc6Pg:
	movl $EngineziTerrainziNoise_zdwharmonic_closure,%ebx
	jmp *-8(%r13)
.Lc6Pj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdwharmonic_ct+56
	movq $EngineziTerrainziNoise_zdwharmonic_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdwharmonic_ct
	jmp .Lc6Pk
	.size EngineziTerrainziNoise_zdwharmonic_info, .-EngineziTerrainziNoise_zdwharmonic_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_harmonic_srt:
	.quad	EngineziTerrainziNoise_zdwharmonic_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_harmonic_closure
.type EngineziTerrainziNoise_harmonic_closure, @object
EngineziTerrainziNoise_harmonic_closure:
	.quad	EngineziTerrainziNoise_harmonic_info
	.quad	0
.section .rodata
	.align 8
.align 1
c6PB_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	104
	.byte	97
	.byte	114
	.byte	109
	.byte	111
	.byte	110
	.byte	105
	.byte	99
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	107
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6PE_str:
	.byte	83
	.byte	77
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_harmonic_ct
.type EngineziTerrainziNoise_harmonic_ct, @object
EngineziTerrainziNoise_harmonic_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6PB_str
	.quad	c6PE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6i8_info:
.Lc6PS:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6PZ
	addq $2,EngineziTerrainziNoise_harmonic_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm5,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc6PZ:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6i8_info, .-s6i8_info
.text
	.align 8
	.long	EngineziTerrainziNoise_harmonic_srt-(s6Po_info)+0
	.long	0
	.quad	1
	.quad	4294967328
s6Po_info:
.Lc6Q2:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 8(%rbp),%rsi
	movq $s6i8_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziTerrainziNoise_zdwharmonic_info
	.size s6Po_info, .-s6Po_info
.text
	.align 8
	.long	EngineziTerrainziNoise_harmonic_srt-(EngineziTerrainziNoise_harmonic_info)+0
	.long	0
	.quad	8589934604
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_harmonic_info
.type EngineziTerrainziNoise_harmonic_info, @object
EngineziTerrainziNoise_harmonic_info:
.Lc6Q5:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Q7
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_harmonic_ct
	je .Lc6Q8
.Lc6Q9:
	incq EngineziTerrainziNoise_harmonic_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $s6Po_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s6Po_info
	jmp *(%rbx)
.Lc6Q7:
	movl $EngineziTerrainziNoise_harmonic_closure,%ebx
	jmp *-8(%r13)
.Lc6Q8:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_harmonic_ct+56
	movq $EngineziTerrainziNoise_harmonic_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_harmonic_ct
	jmp .Lc6Q9
	.size EngineziTerrainziNoise_harmonic_info, .-EngineziTerrainziNoise_harmonic_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_int_closure
.type EngineziTerrainziNoise_int_closure, @object
EngineziTerrainziNoise_int_closure:
	.quad	EngineziTerrainziNoise_int_info
.section .rodata
	.align 8
.align 1
c6Ql_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	105
	.byte	110
	.byte	116
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	106
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Qo_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_int_ct
.type EngineziTerrainziNoise_int_ct, @object
EngineziTerrainziNoise_int_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c6Ql_str
	.quad	c6Qo_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_int_info
.type EngineziTerrainziNoise_int_info, @object
EngineziTerrainziNoise_int_info:
.Lc6Qt:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_int_ct
	je .Lc6Qw
.Lc6Qy:
	incq EngineziTerrainziNoise_int_ct+40
	incq KNOWN_CALL_ctr
	jmp base_GHCziFloatziRealFracMethods_int2Double_info
.Lc6Qw:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_int_ct+56
	movq $EngineziTerrainziNoise_int_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_int_ct
	jmp .Lc6Qy
	.size EngineziTerrainziNoise_int_info, .-EngineziTerrainziNoise_int_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_permzuzdspolyzua_closure
.type EngineziTerrainziNoise_permzuzdspolyzua_closure, @object
EngineziTerrainziNoise_permzuzdspolyzua_closure:
	.quad	EngineziTerrainziNoise_permzuzdspolyzua_info
.section .rodata
	.align 8
.align 1
c6Sg_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	112
	.byte	101
	.byte	114
	.byte	109
	.byte	95
	.byte	36
	.byte	115
	.byte	112
	.byte	111
	.byte	108
	.byte	121
	.byte	95
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Si_str:
	.byte	105
	.byte	105
	.byte	65
	.byte	65
	.byte	105
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_permzuzdspolyzua_ct
.type EngineziTerrainziNoise_permzuzdspolyzua_ct, @object
EngineziTerrainziNoise_permzuzdspolyzua_ct:
	.quad	0
	.quad	7
	.quad	0
	.quad	c6Sg_str
	.quad	c6Si_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziNoise_permzuzdspolyzua_slow
.type EngineziTerrainziNoise_permzuzdspolyzua_slow, @object
EngineziTerrainziNoise_permzuzdspolyzua_slow:
.Lc6Sl:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziNoise_permzuzdspolyzua_info
	.size EngineziTerrainziNoise_permzuzdspolyzua_slow, .-EngineziTerrainziNoise_permzuzdspolyzua_slow
.text
	.align 8
	.quad	3911
	.quad	32
s6QK_info:
.Lc6Su:
	movq 7(%rbx),%rcx
	movq 56(%rbp),%rax
	movq 32(%rbp),%rbx
	movq %rcx,16(%rax,%rbx,8)
	movq 32(%rbp),%rax
	leaq 1(%rax),%r8
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	movq 8(%rbp),%rsi
	movq 56(%rbp),%rdi
	movq 16(%rbp),%r9
	addq $64,%rbp
	jmp EngineziTerrainziNoise_permzuzdspolyzua_info
	.size s6QK_info, .-s6QK_info
.text
	.align 8
	.quad	6727
	.quad	32
s6QL_info:
.Lc6SB:
	movq 48(%rbp),%rdx
	shlq $3,%rdx
	movq 56(%rbp),%rax
	shlq $3,%rax
	addq $16,%rax
	movq 40(%rbp),%rsi
	addq %rax,%rsi
	cmpq %rbx,40(%rbp)
	je .Lc6SC
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcpy
	addq $8,%rsp
.Lc6SD:
	movq %rbx,56(%rbp)
	movq 24(%rbp),%rbx
	movq $s6QK_info,0(%rbp)
	testq $7,%rbx
	jne s6QK_info
	jmp *(%rbx)
.Lc6SC:
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memmove
	addq $8,%rsp
	jmp .Lc6SD
	.size s6QL_info, .-s6QL_info
.text
	.align 8
	.quad	3334
	.quad	32
s6iP_info:
.Lc6SO:
	movq %rbx,0(%rbp)
	shlq $3,%rbx
	movq $s6QL_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_newByteArrayzh
	.size s6iP_info, .-s6iP_info
.text
	.align 8
	.quad	1669
	.quad	32
s6QQ_info:
.Lc6SU:
	movq 7(%rbx),%rcx
	movq 24(%rbp),%rax
	movq 40(%rbp),%rbx
	addq 16(%rbp),%rbx
	movq %rcx,16(%rax,%rbx,8)
	movq 16(%rbp),%rax
	leaq 1(%rax),%r8
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 32(%rbp),%rsi
	movq 24(%rbp),%rdi
	movq 8(%rbp),%r9
	addq $48,%rbp
	jmp EngineziTerrainziNoise_permzuzdspolyzua_info
	.size s6QQ_info, .-s6QQ_info
.text
	.align 8
	.quad	836
	.quad	32
s6QD_info:
.Lc6T4:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lc6T5
	addq $72,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Ti
	addq $9,EngineziTerrainziNoise_permzuzdspolyzua_ct+48
	incq ALLOC_HEAP_ctr
	addq $9,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_Izh_con_info,-64(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitiveziMutable_MVector_con_info,-48(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 32(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	leaq -47(%r12),%rax
	movq %rax,-8(%r12)
	leaq -63(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -15(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.Lc6T5:
	movq 8(%rbp),%rax
	cmpq 24(%rbp),%rax
	jl .Lc6T7
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	cmpq $1,24(%rbp)
	jle .Lc6Td
	movq 24(%rbp),%rbx
	addq 24(%rbp),%rbx
	addq $-16,%rbp
	jmp s6iP_info
.Lc6T7:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $s6QQ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s6QQ_info
	jmp *(%rbx)
.Lc6Td:
	movq 24(%rbp),%rax
	leaq 1(%rax),%rbx
	addq $-16,%rbp
	jmp s6iP_info
.Lc6Ti:
	movq $72,192(%r13)
.Lc6Tg:
	jmp *-16(%r13)
	.size s6QD_info, .-s6QD_info
.text
	.align 8
	.long	EngineziTerrainziNoise_permzuzdspolyzua_slow-(EngineziTerrainziNoise_permzuzdspolyzua_info)+0
	.long	0
	.quad	709
	.quad	0
	.quad	30064771072
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_permzuzdspolyzua_info
.type EngineziTerrainziNoise_permzuzdspolyzua_info, @object
EngineziTerrainziNoise_permzuzdspolyzua_info:
.Lc6TA:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6TC
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_permzuzdspolyzua_ct
	je .Lc6TD
.Lc6TE:
	incq EngineziTerrainziNoise_permzuzdspolyzua_ct+40
	movq %r8,-32(%rbp)
	movq %rdi,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %r9,%rbx
	movq $s6QD_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne s6QD_info
	jmp *(%rbx)
.Lc6TC:
	movl $EngineziTerrainziNoise_permzuzdspolyzua_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lc6TD:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_permzuzdspolyzua_ct+56
	movq $EngineziTerrainziNoise_permzuzdspolyzua_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_permzuzdspolyzua_ct
	jmp .Lc6TE
	.size EngineziTerrainziNoise_permzuzdspolyzua_info, .-EngineziTerrainziNoise_permzuzdspolyzua_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_perm_srt:
	.quad	EngineziTerrainziNoise_perm1_closure
	.quad	randomzm1zi0zi1zi1_SystemziRandom_zdwmkStdGen32_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_perm_closure
.type EngineziTerrainziNoise_perm_closure, @object
EngineziTerrainziNoise_perm_closure:
	.quad	EngineziTerrainziNoise_perm_info
	.quad	0
.section .rodata
	.align 8
.align 1
c6V8_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	112
	.byte	101
	.byte	114
	.byte	109
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	104
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Va_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_perm_ct
.type EngineziTerrainziNoise_perm_ct, @object
EngineziTerrainziNoise_perm_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c6V8_str
	.quad	c6Va_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
c6Vd_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	54
	.byte	84
	.byte	83
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c6Vf_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
s6TS_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c6Vd_str
	.quad	c6Vf_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6TT_info:
.Lc6Vq:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Vw
	addq $2,s6TS_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	movslq %eax,%rax
	incq RET_NEW_ctr
	movq $base_GHCziInt_I32zh_con_info,-8(%r12)
	movq %rax,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc6Vw:
	movq $16,192(%r13)
.Lc6Vu:
	jmp *-16(%r13)
	.size s6TT_info, .-s6TT_info
.text
	.align 8
	.quad	1
	.quad	17
s6TM_info:
.Lc6VC:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6VE
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s6TT_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s6TT_info
	jmp *(%rbx)
.Lc6VE:
	jmp *-16(%r13)
	.size s6TM_info, .-s6TM_info
.text
	.align 8
	.quad	0
	.quad	32
s6TV_info:
.Lc6VL:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc6VQ
	addq $3,s6TS_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $randomzm1zi0zi1zi1_SystemziRandom_StdGen_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc6VQ:
	movq $24,192(%r13)
.Lc6VO:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size s6TV_info, .-s6TV_info
.text
	.align 8
	.long	EngineziTerrainziNoise_perm_srt-(s6jj_info)+8
	.long	0
	.quad	1
	.quad	4294967313
s6jj_info:
.Lc6VU:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6VW
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc6VY
	addq $3,s6TS_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $s6TM_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -16(%r12),%r14
	movq $s6TV_info,-24(%rbp)
	addq $-24,%rbp
	jmp randomzm1zi0zi1zi1_SystemziRandom_zdwmkStdGen32_info
.Lc6VY:
	movq $24,192(%r13)
.Lc6VW:
	jmp *-16(%r13)
	.size s6jj_info, .-s6jj_info
.text
	.align 8
	.long	EngineziTerrainziNoise_perm_srt-(s6jk_info)+0
	.long	0
	.quad	1
	.quad	12884901905
s6jk_info:
.Lc6W4:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6W6
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc6W8
	addq $3,s6TS_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $s6jj_info,-16(%r12)
	movq 16(%rbx),%rax
	movq %rax,0(%r12)
	incq UNKNOWN_CALL_ctr
	movl $EngineziTerrainziNoise_perm1_closure,%ebx
	leaq -16(%r12),%r14
	addq $-16,%rbp
	jmp stg_ap_p_fast
.Lc6W8:
	movq $24,192(%r13)
.Lc6W6:
	jmp *-16(%r13)
	.size s6jk_info, .-s6jk_info
.section .rodata
	.align 8
.align 1
c6Wc_str:
	.byte	120
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	54
	.byte	106
	.byte	114
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c6We_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
s6jr_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c6Wc_str
	.quad	c6We_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	4294967297
	.quad	20
s6TN_info:
.Lc6Wn:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Wp
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	leaq -1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp s6jr_info
.Lc6Wp:
	jmp *-16(%r13)
	.size s6TN_info, .-s6TN_info
.text
	.align 8
	.quad	4294967300
	.quad	2
	.quad	12
s6jr_info:
.Lc6Wu:
	addq $56,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Wy
	addq $7,s6jr_ct+48
	incq ALLOC_HEAP_ctr
	addq $7,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s6jr_ct
	je .Lc6Wz
.Lc6WA:
	incq s6jr_ct+40
	cmpq $1,%r14
	jle .Lc6WC
	movq $s6TN_info,-48(%r12)
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
.Lc6Wy:
	movq $56,192(%r13)
.Lc6Ww:
	jmp *-8(%r13)
.Lc6Wz:
	movq ticky_entry_ctrs,%rax
	movq %rax,s6jr_ct+56
	movq $s6jr_ct,ticky_entry_ctrs
	movq $1,s6jr_ct
	jmp .Lc6WA
.Lc6WC:
	movq 15(%rbx),%rbx
	addq $-56,%r12
	addq $-7,s6jr_ct+48
	incq ALLOC_HEAP_ctr
	addq $-7,ALLOC_HEAP_tot
	jmp *0(%rbp)
	.size s6jr_info, .-s6jr_info
.text
	.align 8
	.quad	0
	.quad	32
s6TO_info:
.Lc6WM:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	addq $8,%rbp
	jmp base_GHCziList_concatzugo_info
	.size s6TO_info, .-s6TO_info
.text
	.align 8
	.quad	1
	.quad	17
s6TQ_info:
.Lc6WQ:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6WS
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	movl $2,%r14d
	movq $s6TO_info,-24(%rbp)
	addq $-24,%rbp
	jmp s6jr_info
.Lc6WS:
	jmp *-16(%r13)
	.size s6TQ_info, .-s6TQ_info
.text
	.align 8
	.quad	66
	.quad	32
s6TY_info:
.Lc6X9:
	addq $32,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Xf
	addq $4,s6TS_ct+48
	incq ALLOC_HEAP_ctr
	addq $4,ALLOC_HEAP_tot
	movq 16(%rbp),%rax
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitive_Vector_con_info,-24(%r12)
	movq %rax,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,-8(%r12)
	movq 7(%rbx),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -23(%r12),%rbx
	addq $24,%rbp
	jmp *0(%rbp)
.Lc6Xf:
	movq $32,192(%r13)
.Lc6Xd:
	jmp *-16(%r13)
	.size s6TY_info, .-s6TY_info
.text
	.align 8
	.quad	1
	.quad	32
s6TZ_info:
.Lc6Xk:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $s6TY_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s6TY_info
	jmp *(%rbx)
	.size s6TZ_info, .-s6TZ_info
.text
	.align 8
	.quad	0
	.quad	32
s6U0_info:
.Lc6Xu:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s6TZ_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s6U0_info, .-s6U0_info
.text
	.align 8
	.quad	0
	.quad	32
s6U1_info:
.Lc6Xy:
	movq $s6U0_info,0(%rbp)
	testq $7,%rbx
	jne s6U0_info
	jmp *(%rbx)
	.size s6U1_info, .-s6U1_info
.text
	.align 8
	.long	EngineziTerrainziNoise_perm_srt-(s6TU_info)+0
	.long	0
	.quad	1
	.quad	12884901920
s6TU_info:
.Lc6XE:
	addq $96,%r12
	cmpq 144(%r13),%r12
	ja .Lc6XI
	addq $12,s6TS_ct+48
	incq ALLOC_HEAP_ctr
	addq $12,ALLOC_HEAP_tot
	movq $s6jk_info,-88(%r12)
	movq 8(%rbp),%rax
	movq %rax,-72(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-64(%r12)
	leaq -88(%r12),%rax
	movq %rax,-56(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-48(%r12)
	movq $s6jr_info,-40(%r12)
	leaq -88(%r12),%rax
	movq %rax,-32(%r12)
	leaq -62(%r12),%rax
	movq %rax,-24(%r12)
	movq $s6TQ_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	xorl %r14d,%r14d
	xorl %esi,%esi
	movq %rbx,%rdi
	xorl %r8d,%r8d
	leaq -16(%r12),%r9
	movq $s6U1_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziTerrainziNoise_permzuzdspolyzua_info
.Lc6XI:
	movq $96,192(%r13)
.Lc6XG:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s6TU_info, .-s6TU_info
.text
	.align 8
	.long	EngineziTerrainziNoise_perm_srt-(s6TS_info)+0
	.long	0
	.quad	4294967299
	.quad	1
	.quad	12884901898
s6TS_info:
.Lc6XQ:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6XS
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s6TS_ct
	je .Lc6XT
.Lc6XU:
	incq s6TS_ct+40
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	xorl %ebx,%ebx
	movq $s6TU_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_newByteArrayzh
.Lc6XS:
	jmp *-8(%r13)
.Lc6XT:
	movq ticky_entry_ctrs,%rax
	movq %rax,s6TS_ct+56
	movq $s6TS_ct,ticky_entry_ctrs
	movq $1,s6TS_ct
	jmp .Lc6XU
	.size s6TS_info, .-s6TS_info
.text
	.align 8
	.long	EngineziTerrainziNoise_perm_srt-(EngineziTerrainziNoise_perm_info)+0
	.long	0
	.quad	4294967301
	.quad	0
	.quad	12884901903
.globl EngineziTerrainziNoise_perm_info
.type EngineziTerrainziNoise_perm_info, @object
EngineziTerrainziNoise_perm_info:
.Lc6Y0:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Y4
	addq $2,EngineziTerrainziNoise_perm_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_perm_ct
	je .Lc6Y5
.Lc6Y6:
	incq EngineziTerrainziNoise_perm_ct+40
	movq $s6TS_info,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -7(%r12),%r14
	jmp base_GHCziST_runSTRep_info
.Lc6Y4:
	movq $16,192(%r13)
.Lc6Y2:
	movl $EngineziTerrainziNoise_perm_closure,%ebx
	jmp *-8(%r13)
.Lc6Y5:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_perm_ct+56
	movq $EngineziTerrainziNoise_perm_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_perm_ct
	jmp .Lc6Y6
	.size EngineziTerrainziNoise_perm_info, .-EngineziTerrainziNoise_perm_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_splitInterval_closure
.type EngineziTerrainziNoise_splitInterval_closure, @object
EngineziTerrainziNoise_splitInterval_closure:
	.quad	EngineziTerrainziNoise_splitInterval_info
.section .rodata
	.align 8
.align 1
c6Z3_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	115
	.byte	112
	.byte	108
	.byte	105
	.byte	116
	.byte	73
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	118
	.byte	97
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	100
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c6Z5_str:
	.byte	76
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_splitInterval_ct
.type EngineziTerrainziNoise_splitInterval_ct, @object
EngineziTerrainziNoise_splitInterval_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	c6Z3_str
	.quad	c6Z5_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6Ye_info:
.Lc6Zd:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Zi
	addq $3,EngineziTerrainziNoise_splitInterval_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,0(%r12)
	leaq -15(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc6Zi:
	movq $24,192(%r13)
.Lc6Zg:
	movq $252,64(%r13)
	jmp stg_gc_ut
	.size s6Ye_info, .-s6Ye_info
.text
	.align 8
	.quad	1
	.quad	32
s6Yg_info:
.Lc6Zl:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc6Zp
	addq $3,EngineziTerrainziNoise_splitInterval_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	cmpq $0,7(%rbx)
	jl .Lc6Zr
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%r14
	movq 8(%rbp),%rsi
	movq $s6Ye_info,8(%rbp)
	addq $8,%rbp
	addq $-24,%r12
	addq $-3,EngineziTerrainziNoise_splitInterval_ct+48
	incq ALLOC_HEAP_ctr
	addq $-3,ALLOC_HEAP_tot
	jmp base_GHCziList_zdwsplitAtzh_info
.Lc6Zp:
	movq $24,192(%r13)
.Lc6Zn:
	jmp *-16(%r13)
.Lc6Zr:
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	leaq -15(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
	.size s6Yg_info, .-s6Yg_info
.text
	.align 8
	.quad	2
	.quad	19
s6kh_info:
.Lc6Zx:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6Zz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $s6Yg_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne s6Yg_info
	jmp *(%rbx)
.Lc6Zz:
	jmp *-16(%r13)
	.size s6kh_info, .-s6kh_info
.text
	.align 8
	.quad	1
	.quad	32
s6Yj_info:
.Lc6ZJ:
	incq KNOWN_CALL_ctr
	movq 15(%rbx),%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp EngineziTerrainziNoise_splitInterval_info
	.size s6Yj_info, .-s6Yj_info
.text
	.align 8
	.quad	2
	.quad	19
s6Ya_info:
.Lc6ZO:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc6ZQ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 24(%rbx),%rbx
	movq $s6Yj_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne s6Yj_info
	jmp *(%rbx)
.Lc6ZQ:
	jmp *-16(%r13)
	.size s6Ya_info, .-s6Ya_info
.text
	.align 8
	.quad	1
	.quad	32
s6kb_info:
.Lc6ZY:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lc6ZZ
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $16,%rbp
	jmp *0(%rbp)
.Lc6ZZ:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .Lc703
	addq $14,EngineziTerrainziNoise_splitInterval_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	movq $s6kh_info,-104(%r12)
	movq 8(%rbp),%rax
	movq %rax,-88(%r12)
	movq %rbx,-80(%r12)
	movq $s6Ya_info,-72(%r12)
	movq 8(%rbp),%rax
	movq %rax,-56(%r12)
	leaq -104(%r12),%rax
	movq %rax,-48(%r12)
	movq $stg_sel_0_upd_info,-40(%r12)
	leaq -104(%r12),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	leaq -72(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $16,%rbp
	jmp *0(%rbp)
.Lc703:
	movq $112,192(%r13)
.Lc701:
	jmp *-16(%r13)
	.size s6kb_info, .-s6kb_info
.text
	.align 8
	.quad	8589934604
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_splitInterval_info
.type EngineziTerrainziNoise_splitInterval_info, @object
EngineziTerrainziNoise_splitInterval_info:
.Lc70f:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc70h
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_splitInterval_ct
	je .Lc70i
.Lc70j:
	incq EngineziTerrainziNoise_splitInterval_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $s6kb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s6kb_info
	jmp *(%rbx)
.Lc70h:
	movl $EngineziTerrainziNoise_splitInterval_closure,%ebx
	jmp *-8(%r13)
.Lc70i:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_splitInterval_ct+56
	movq $EngineziTerrainziNoise_splitInterval_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_splitInterval_ct
	jmp .Lc70j
	.size EngineziTerrainziNoise_splitInterval_info, .-EngineziTerrainziNoise_splitInterval_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad3zuzdspolyzua_closure
.type EngineziTerrainziNoise_grad3zuzdspolyzua_closure, @object
EngineziTerrainziNoise_grad3zuzdspolyzua_closure:
	.quad	EngineziTerrainziNoise_grad3zuzdspolyzua_info
.section .rodata
	.align 8
.align 1
c73U_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	103
	.byte	114
	.byte	97
	.byte	100
	.byte	51
	.byte	95
	.byte	36
	.byte	115
	.byte	112
	.byte	111
	.byte	108
	.byte	121
	.byte	95
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	80
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c73W_str:
	.byte	105
	.byte	105
	.byte	105
	.byte	65
	.byte	65
	.byte	105
	.byte	105
	.byte	65
	.byte	65
	.byte	105
	.byte	105
	.byte	65
	.byte	65
	.byte	65
	.byte	105
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad3zuzdspolyzua_ct
.type EngineziTerrainziNoise_grad3zuzdspolyzua_ct, @object
EngineziTerrainziNoise_grad3zuzdspolyzua_ct:
	.quad	0
	.quad	17
	.quad	7
	.quad	c73U_str
	.quad	c73W_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziNoise_grad3zuzdspolyzua_slow
.type EngineziTerrainziNoise_grad3zuzdspolyzua_slow, @object
EngineziTerrainziNoise_grad3zuzdspolyzua_slow:
.Lc73Z:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziNoise_grad3zuzdspolyzua_info
	.size EngineziTerrainziNoise_grad3zuzdspolyzua_slow, .-EngineziTerrainziNoise_grad3zuzdspolyzua_slow
.text
	.align 8
	.quad	1793743
	.quad	32
s70E_info:
.Lc74k:
	movsd 7(%rbx),%xmm0
	movq 104(%rbp),%rax
	movq 112(%rbp),%rbx
	movsd %xmm0,16(%rax,%rbx,8)
	movq 112(%rbp),%rax
	leaq 1(%rax),%rbx
	movq 16(%rbp),%r14
	addq 120(%rbp),%r14
	incq KNOWN_CALL_ctr
	movq 24(%rbp),%rax
	movq %rax,120(%rbp)
	movq %rbx,112(%rbp)
	movq 72(%rbp),%rax
	movq %rax,96(%rbp)
	movq $0,88(%rbp)
	movq 56(%rbp),%rax
	movq %rax,72(%rbp)
	xorl %esi,%esi
	movq 8(%rbp),%rdi
	movq 64(%rbp),%r8
	xorl %r9d,%r9d
	addq $72,%rbp
	jmp EngineziTerrainziNoise_grad3zuzdspolyzua_info
	.size s70E_info, .-s70E_info
.text
	.align 8
	.quad	1728207
	.quad	32
s70F_info:
.Lc74v:
	movsd 7(%rbx),%xmm0
	movq 80(%rbp),%rax
	movq 112(%rbp),%rbx
	movsd %xmm0,16(%rax,%rbx,8)
	movq 88(%rbp),%rbx
	movq $s70E_info,0(%rbp)
	testq $7,%rbx
	jne s70E_info
	jmp *(%rbx)
	.size s70F_info, .-s70F_info
.text
	.align 8
	.quad	1597135
	.quad	32
s70G_info:
.Lc74E:
	movsd 7(%rbx),%xmm0
	movq 64(%rbp),%rax
	movq 112(%rbp),%rbx
	movsd %xmm0,16(%rax,%rbx,8)
	movq 96(%rbp),%rbx
	movq $s70F_info,0(%rbp)
	testq $7,%rbx
	jne s70F_info
	jmp *(%rbx)
	.size s70G_info, .-s70G_info
.text
	.align 8
	.quad	1793743
	.quad	32
s70H_info:
.Lc74N:
	movq 23(%rbx),%rax
	movq %rax,88(%rbp)
	movq 15(%rbx),%rax
	movq %rax,96(%rbp)
	movq 7(%rbx),%rbx
	movq $s70G_info,0(%rbp)
	testq $7,%rbx
	jne s70G_info
	jmp *(%rbx)
	.size s70H_info, .-s70H_info
.text
	.align 8
	.quad	1793231
	.quad	32
s70I_info:
.Lc74V:
	movq 96(%rbp),%rdx
	shlq $3,%rdx
	movq 88(%rbp),%rax
	shlq $3,%rax
	addq $16,%rax
	movq 104(%rbp),%rsi
	addq %rax,%rsi
	cmpq %rbx,104(%rbp)
	je .Lc74W
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcpy
	addq $8,%rsp
.Lc74X:
	movq %rbx,104(%rbp)
	movq 32(%rbp),%rbx
	movq $s70H_info,0(%rbp)
	testq $7,%rbx
	jne s70H_info
	jmp *(%rbx)
.Lc74W:
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memmove
	addq $8,%rsp
	jmp .Lc74X
	.size s70I_info, .-s70I_info
.text
	.align 8
	.quad	1793231
	.quad	32
s70J_info:
.Lc758:
	movq 72(%rbp),%rdx
	shlq $3,%rdx
	movq 40(%rbp),%rax
	shlq $3,%rax
	addq $16,%rax
	movq 80(%rbp),%rsi
	addq %rax,%rsi
	cmpq %rbx,80(%rbp)
	je .Lc759
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcpy
	addq $8,%rsp
.Lc75a:
	movq 96(%rbp),%rax
	addq 16(%rbp),%rax
	movq %rbx,80(%rbp)
	movq %rax,72(%rbp)
	movq %rax,%rbx
	shlq $3,%rbx
	movq $s70I_info,0(%rbp)
	jmp stg_newByteArrayzh
.Lc759:
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memmove
	addq $8,%rsp
	jmp .Lc75a
	.size s70J_info, .-s70J_info
.text
	.align 8
	.quad	1799375
	.quad	32
s70K_info:
.Lc75j:
	movq 56(%rbp),%rdx
	shlq $3,%rdx
	movq 64(%rbp),%rax
	shlq $3,%rax
	addq $16,%rax
	movq 48(%rbp),%rsi
	addq %rax,%rsi
	cmpq %rbx,48(%rbp)
	je .Lc75k
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memcpy
	addq $8,%rsp
.Lc75l:
	movq 72(%rbp),%rax
	addq 16(%rbp),%rax
	movq %rbx,64(%rbp)
	movq %rax,56(%rbp)
	movq %rax,%rbx
	shlq $3,%rbx
	movq $s70J_info,0(%rbp)
	jmp stg_newByteArrayzh
.Lc75k:
	leaq 16(%rbx),%rdi
	subq $8,%rsp
	movl $0,%eax
	call memmove
	addq $8,%rsp
	jmp .Lc75l
	.size s70K_info, .-s70K_info
.text
	.align 8
	.quad	449805
	.quad	32
s6ma_info:
.Lc75u:
	movq 40(%rbp),%rax
	addq %rbx,%rax
	movq %rbx,0(%rbp)
	movq %rax,-8(%rbp)
	movq %rax,%rbx
	shlq $3,%rbx
	movq $s70K_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_newByteArrayzh
	.size s6ma_info, .-s6ma_info
.text
	.align 8
	.quad	224908
	.quad	32
s70R_info:
.Lc75R:
	movsd 7(%rbx),%xmm0
	movq 80(%rbp),%rax
	movq 64(%rbp),%rbx
	addq 88(%rbp),%rbx
	movsd %xmm0,16(%rax,%rbx,8)
	movq 88(%rbp),%rax
	incq %rax
	incq KNOWN_CALL_ctr
	movq %rax,88(%rbp)
	movq 96(%rbp),%r14
	movq 8(%rbp),%rax
	movq %rax,96(%rbp)
	movq 40(%rbp),%rsi
	movq 32(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 16(%rbp),%r9
	addq $48,%rbp
	jmp EngineziTerrainziNoise_grad3zuzdspolyzua_info
	.size s70R_info, .-s70R_info
.text
	.align 8
	.quad	899726
	.quad	32
s70S_info:
.Lc760:
	movsd 7(%rbx),%xmm0
	movq 72(%rbp),%rax
	movq 32(%rbp),%rbx
	addq 104(%rbp),%rbx
	movsd %xmm0,16(%rax,%rbx,8)
	movq 8(%rbp),%rbx
	movq $s70R_info,16(%rbp)
	addq $16,%rbp
	testq $7,%rbx
	jne s70R_info
	jmp *(%rbx)
	.size s70S_info, .-s70S_info
.text
	.align 8
	.quad	899598
	.quad	32
s70T_info:
.Lc76a:
	movsd 7(%rbx),%xmm0
	movq 40(%rbp),%rax
	movq 56(%rbp),%rbx
	addq 104(%rbp),%rbx
	movsd %xmm0,16(%rax,%rbx,8)
	movq 16(%rbp),%rbx
	movq $s70S_info,0(%rbp)
	testq $7,%rbx
	jne s70S_info
	jmp *(%rbx)
	.size s70T_info, .-s70T_info
.text
	.align 8
	.quad	224908
	.quad	32
s70U_info:
.Lc76k:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s70T_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne s70T_info
	jmp *(%rbx)
	.size s70U_info, .-s70U_info
.text
	.align 8
	.quad	112459
	.quad	32
s70s_info:
.Lc76u:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lc76v
	addq $176,%r12
	cmpq 144(%r13),%r12
	ja .Lc76I
	addq $22,EngineziTerrainziNoise_grad3zuzdspolyzua_ct+48
	incq ALLOC_HEAP_ctr
	addq $22,ALLOC_HEAP_tot
	movq $ghczmprim_GHCziTypes_Izh_con_info,-168(%r12)
	movq 80(%rbp),%rax
	movq %rax,-160(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitiveziMutable_MVector_con_info,-152(%r12)
	movq 72(%rbp),%rax
	movq %rax,-144(%r12)
	movq 56(%rbp),%rax
	movq %rax,-136(%r12)
	movq 64(%rbp),%rax
	movq %rax,-128(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitiveziMutable_MVector_con_info,-120(%r12)
	movq 48(%rbp),%rax
	movq %rax,-112(%r12)
	movq 8(%rbp),%rax
	movq %rax,-104(%r12)
	movq 40(%rbp),%rax
	movq %rax,-96(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitiveziMutable_MVector_con_info,-88(%r12)
	movq 16(%rbp),%rax
	movq %rax,-80(%r12)
	movq 32(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rax
	movq %rax,-64(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziUnboxedziBase_MVzu3_con_info,-56(%r12)
	leaq -87(%r12),%rax
	movq %rax,-48(%r12)
	leaq -119(%r12),%rax
	movq %rax,-40(%r12)
	leaq -151(%r12),%rax
	movq %rax,-32(%r12)
	movq 88(%rbp),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	leaq -55(%r12),%rax
	movq %rax,-8(%r12)
	leaq -167(%r12),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -15(%r12),%rbx
	addq $96,%rbp
	jmp *0(%rbp)
.Lc76v:
	movq 80(%rbp),%rax
	cmpq 88(%rbp),%rax
	jl .Lc76x
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	cmpq $1,88(%rbp)
	jle .Lc76D
	movq 88(%rbp),%rbx
	addq $-16,%rbp
	jmp s6ma_info
.Lc76x:
	movq 14(%rbx),%rax
	movq %rax,0(%rbp)
	movq 6(%rbx),%rbx
	movq $s70U_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s70U_info
	jmp *(%rbx)
.Lc76D:
	movl $1,%ebx
	addq $-16,%rbp
	jmp s6ma_info
.Lc76I:
	movq $176,192(%r13)
.Lc76G:
	jmp *-16(%r13)
	.size s70s_info, .-s70s_info
.text
	.align 8
	.long	EngineziTerrainziNoise_grad3zuzdspolyzua_slow-(EngineziTerrainziNoise_grad3zuzdspolyzua_info)+0
	.long	0
	.quad	93644
	.quad	0
	.quad	73014444032
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_grad3zuzdspolyzua_info
.type EngineziTerrainziNoise_grad3zuzdspolyzua_info, @object
EngineziTerrainziNoise_grad3zuzdspolyzua_info:
.Lc778:
	leaq -72(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc77a
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_grad3zuzdspolyzua_ct
	je .Lc77b
.Lc77c:
	incq EngineziTerrainziNoise_grad3zuzdspolyzua_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq 48(%rbp),%rbx
	movq %r14,48(%rbp)
	movq $s70s_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne s70s_info
	jmp *(%rbx)
.Lc77a:
	movl $EngineziTerrainziNoise_grad3zuzdspolyzua_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lc77b:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_grad3zuzdspolyzua_ct+56
	movq $EngineziTerrainziNoise_grad3zuzdspolyzua_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_grad3zuzdspolyzua_ct
	jmp .Lc77c
	.size EngineziTerrainziNoise_grad3zuzdspolyzua_info, .-EngineziTerrainziNoise_grad3zuzdspolyzua_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad19_closure
.type EngineziTerrainziNoise_grad19_closure, @object
EngineziTerrainziNoise_grad19_closure:
	.quad	ghczmprim_GHCziTypes_Dzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad29_closure
.type EngineziTerrainziNoise_grad29_closure, @object
EngineziTerrainziNoise_grad29_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad16_closure
.type EngineziTerrainziNoise_grad16_closure, @object
EngineziTerrainziNoise_grad16_closure:
	.quad	ghczmprim_GHCziTypes_Dzh_static_info
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	191
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad28_closure
.type EngineziTerrainziNoise_grad28_closure, @object
EngineziTerrainziNoise_grad28_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad27_closure
.type EngineziTerrainziNoise_grad27_closure, @object
EngineziTerrainziNoise_grad27_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad26_closure
.type EngineziTerrainziNoise_grad26_closure, @object
EngineziTerrainziNoise_grad26_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad25_closure
.type EngineziTerrainziNoise_grad25_closure, @object
EngineziTerrainziNoise_grad25_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad24_closure
.type EngineziTerrainziNoise_grad24_closure, @object
EngineziTerrainziNoise_grad24_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad23_closure
.type EngineziTerrainziNoise_grad23_closure, @object
EngineziTerrainziNoise_grad23_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad22_closure
.type EngineziTerrainziNoise_grad22_closure, @object
EngineziTerrainziNoise_grad22_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad21_closure
.type EngineziTerrainziNoise_grad21_closure, @object
EngineziTerrainziNoise_grad21_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad20_closure
.type EngineziTerrainziNoise_grad20_closure, @object
EngineziTerrainziNoise_grad20_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad18_closure
.type EngineziTerrainziNoise_grad18_closure, @object
EngineziTerrainziNoise_grad18_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad19_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad15_closure
.type EngineziTerrainziNoise_grad15_closure, @object
EngineziTerrainziNoise_grad15_closure:
	.quad	ghczmprim_GHCziTuple_Z3T_static_info
	.quad	EngineziTerrainziNoise_grad17_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	EngineziTerrainziNoise_grad16_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad14_closure
.type EngineziTerrainziNoise_grad14_closure, @object
EngineziTerrainziNoise_grad14_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad15_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad13_closure
.type EngineziTerrainziNoise_grad13_closure, @object
EngineziTerrainziNoise_grad13_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad18_closure+1
	.quad	EngineziTerrainziNoise_grad14_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad12_closure
.type EngineziTerrainziNoise_grad12_closure, @object
EngineziTerrainziNoise_grad12_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad20_closure+1
	.quad	EngineziTerrainziNoise_grad13_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad11_closure
.type EngineziTerrainziNoise_grad11_closure, @object
EngineziTerrainziNoise_grad11_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad21_closure+1
	.quad	EngineziTerrainziNoise_grad12_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad10_closure
.type EngineziTerrainziNoise_grad10_closure, @object
EngineziTerrainziNoise_grad10_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad22_closure+1
	.quad	EngineziTerrainziNoise_grad11_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad9_closure
.type EngineziTerrainziNoise_grad9_closure, @object
EngineziTerrainziNoise_grad9_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad23_closure+1
	.quad	EngineziTerrainziNoise_grad10_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad8_closure
.type EngineziTerrainziNoise_grad8_closure, @object
EngineziTerrainziNoise_grad8_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad24_closure+1
	.quad	EngineziTerrainziNoise_grad9_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad7_closure
.type EngineziTerrainziNoise_grad7_closure, @object
EngineziTerrainziNoise_grad7_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad25_closure+1
	.quad	EngineziTerrainziNoise_grad8_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad6_closure
.type EngineziTerrainziNoise_grad6_closure, @object
EngineziTerrainziNoise_grad6_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad26_closure+1
	.quad	EngineziTerrainziNoise_grad7_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad5_closure
.type EngineziTerrainziNoise_grad5_closure, @object
EngineziTerrainziNoise_grad5_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad27_closure+1
	.quad	EngineziTerrainziNoise_grad6_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad4_closure
.type EngineziTerrainziNoise_grad4_closure, @object
EngineziTerrainziNoise_grad4_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad28_closure+1
	.quad	EngineziTerrainziNoise_grad5_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad2_closure
.type EngineziTerrainziNoise_grad2_closure, @object
EngineziTerrainziNoise_grad2_closure:
	.quad	ghczmprim_GHCziTypes_ZC_static_info
	.quad	EngineziTerrainziNoise_grad29_closure+1
	.quad	EngineziTerrainziNoise_grad4_closure+2
	.quad	1
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad1_closure
.type EngineziTerrainziNoise_grad1_closure, @object
EngineziTerrainziNoise_grad1_closure:
	.quad	EngineziTerrainziNoise_grad1_info
.section .rodata
	.align 8
.align 1
c79i_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	103
	.byte	114
	.byte	97
	.byte	100
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	112
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c79l_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad1_ct
.type EngineziTerrainziNoise_grad1_ct, @object
EngineziTerrainziNoise_grad1_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c79i_str
	.quad	c79l_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	454
	.quad	32
s78d_info:
.Lc7a1:
	addq $136,%r12
	cmpq 144(%r13),%r12
	ja .Lc7a7
	addq $17,EngineziTerrainziNoise_grad1_ct+48
	incq ALLOC_HEAP_ctr
	addq $17,ALLOC_HEAP_tot
	movq 40(%rbp),%rax
	movq 32(%rbp),%rcx
	movq 48(%rbp),%rdx
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitive_Vector_con_info,-128(%r12)
	movq %rdx,-120(%r12)
	movq 8(%rbp),%rdx
	movq %rdx,-112(%r12)
	movq 7(%rbx),%rdx
	movq %rdx,-104(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitive_Vector_con_info,-96(%r12)
	movq %rcx,-88(%r12)
	movq 16(%rbp),%rcx
	movq %rcx,-80(%r12)
	movq 7(%rbx),%rcx
	movq %rcx,-72(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziPrimitive_Vector_con_info,-64(%r12)
	movq %rax,-56(%r12)
	movq 24(%rbp),%rax
	movq %rax,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	movq $vectorzm0zi10zi9zi1_DataziVectorziUnboxedziBase_Vzu3_con_info,-32(%r12)
	leaq -63(%r12),%rax
	movq %rax,-24(%r12)
	leaq -95(%r12),%rax
	movq %rax,-16(%r12)
	leaq -127(%r12),%rax
	movq %rax,-8(%r12)
	movq 7(%rbx),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -31(%r12),%rbx
	addq $56,%rbp
	jmp *0(%rbp)
.Lc7a7:
	movq $136,192(%r13)
.Lc7a5:
	jmp *-16(%r13)
	.size s78d_info, .-s78d_info
.text
	.align 8
	.quad	197
	.quad	32
s78e_info:
.Lc7ak:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 40(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,40(%rbp)
	movq %rax,%rbx
	movq $s78d_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s78d_info
	jmp *(%rbx)
	.size s78e_info, .-s78e_info
.text
	.align 8
	.quad	68
	.quad	32
s78f_info:
.Lc7au:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s78e_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s78f_info, .-s78f_info
.text
	.align 8
	.quad	3
	.quad	32
s78g_info:
.Lc7aC:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s78f_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s78g_info, .-s78g_info
.text
	.align 8
	.quad	1
	.quad	32
s78i_info:
.Lc7aK:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s78g_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size s78i_info, .-s78i_info
.text
	.align 8
	.quad	0
	.quad	32
s78j_info:
.Lc7aP:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s78i_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s78j_info, .-s78j_info
.text
	.align 8
	.quad	0
	.quad	32
s78k_info:
.Lc7aT:
	movq $s78j_info,0(%rbp)
	testq $7,%rbx
	jne s78j_info
	jmp *(%rbx)
	.size s78k_info, .-s78k_info
.text
	.align 8
	.quad	2
	.quad	32
s78l_info:
.Lc7aZ:
	incq KNOWN_CALL_ctr
	movq $0,0(%rbp)
	movq %rbx,-8(%rbp)
	movq $0,-16(%rbp)
	movq $0,-24(%rbp)
	movq 8(%rbp),%rax
	movq %rax,-32(%rbp)
	movq $EngineziTerrainziNoise_grad2_closure+2,8(%rbp)
	movq $0,-40(%rbp)
	xorl %r14d,%r14d
	xorl %esi,%esi
	xorl %edi,%edi
	movq 16(%rbp),%r8
	xorl %r9d,%r9d
	movq $s78k_info,16(%rbp)
	addq $-40,%rbp
	jmp EngineziTerrainziNoise_grad3zuzdspolyzua_info
	.size s78l_info, .-s78l_info
.text
	.align 8
	.quad	1
	.quad	32
s78m_info:
.Lc7b3:
	movq %rbx,0(%rbp)
	xorl %ebx,%ebx
	movq $s78l_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_newByteArrayzh
	.size s78m_info, .-s78m_info
.text
	.align 8
	.quad	0
	.quad	32
s78n_info:
.Lc7b6:
	movq %rbx,0(%rbp)
	xorl %ebx,%ebx
	movq $s78m_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_newByteArrayzh
	.size s78n_info, .-s78n_info
.text
	.align 8
	.quad	4294967299
	.quad	0
	.quad	15
.globl EngineziTerrainziNoise_grad1_info
.type EngineziTerrainziNoise_grad1_info, @object
EngineziTerrainziNoise_grad1_info:
.Lc7b9:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7bb
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_grad1_ct
	je .Lc7bc
.Lc7bd:
	incq EngineziTerrainziNoise_grad1_ct+40
	xorl %ebx,%ebx
	movq $s78n_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_newByteArrayzh
.Lc7bb:
	movl $EngineziTerrainziNoise_grad1_closure,%ebx
	jmp *-8(%r13)
.Lc7bc:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_grad1_ct+56
	movq $EngineziTerrainziNoise_grad1_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_grad1_ct
	jmp .Lc7bd
	.size EngineziTerrainziNoise_grad1_info, .-EngineziTerrainziNoise_grad1_info
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_grad3_closure
.type EngineziTerrainziNoise_grad3_closure, @object
EngineziTerrainziNoise_grad3_closure:
	.quad	EngineziTerrainziNoise_grad3_info
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	22
.globl EngineziTerrainziNoise_grad3_info
.type EngineziTerrainziNoise_grad3_info, @object
EngineziTerrainziNoise_grad3_info:
.Lc7br:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7bt
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7bv
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
	je .Lc7bw
.Lc7bx:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $EngineziTerrainziNoise_grad1_closure+1,%r14d
	addq $-16,%rbp
	jmp base_GHCziST_runSTRep_info
.Lc7bv:
	movq $16,192(%r13)
.Lc7bt:
	jmp *-16(%r13)
.Lc7bw:
	jmp *(%rbx)
	.size EngineziTerrainziNoise_grad3_info, .-EngineziTerrainziNoise_grad3_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdwnoise3D_srt:
	.quad	EngineziTerrainziNoise_grad3_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwnoise3D_closure
.type EngineziTerrainziNoise_zdwnoise3D_closure, @object
EngineziTerrainziNoise_zdwnoise3D_closure:
	.quad	EngineziTerrainziNoise_zdwnoise3D_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7sq_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	119
	.byte	110
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	51
	.byte	68
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	113
	.byte	86
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7ss_str:
	.byte	77
	.byte	100
	.byte	100
	.byte	100
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwnoise3D_ct
.type EngineziTerrainziNoise_zdwnoise3D_ct, @object
EngineziTerrainziNoise_zdwnoise3D_ct:
	.quad	0
	.quad	4
	.quad	1
	.quad	c7sq_str
	.quad	c7ss_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziNoise_zdwnoise3D_slow
.type EngineziTerrainziNoise_zdwnoise3D_slow, @object
EngineziTerrainziNoise_zdwnoise3D_slow:
.Lc7sv:
	movq 0(%rbp),%r14
	movsd 8(%rbp),%xmm5
	movsd 16(%rbp),%xmm6
	addq $24,%rbp
	jmp EngineziTerrainziNoise_zdwnoise3D_info
	.size EngineziTerrainziNoise_zdwnoise3D_slow, .-EngineziTerrainziNoise_zdwnoise3D_slow
.text
	.align 8
	.quad	4060624
	.quad	32
s7d1_info:
.Lc7sS:
	movl $12,%r8d
	movq 7(%rbx),%rdi
	movq 7(%rbx),%rax
	movq 7(%rbx),%rcx
	movq 80(%rbp),%rdx
	incq %rdx
	movq 15(%rbx),%rsi
	addq %rdx,%rsi
	movq 16(%rcx,%rsi,8),%rcx
	leaq 1(%rcx),%rdx
	movq 88(%rbp),%rcx
	addq %rdx,%rcx
	movq 15(%rbx),%rdx
	addq %rcx,%rdx
	movq 16(%rax,%rdx,8),%rax
	leaq 1(%rax),%rcx
	movq 104(%rbp),%rax
	addq %rcx,%rax
	movq 15(%rbx),%rbx
	addq %rax,%rbx
	movq 16(%rdi,%rbx,8),%rax
	cqto
	idivq %r8
	movq 96(%rbp),%rax
	movq 8(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm0
	mulsd 128(%rbp),%xmm0
	movq 32(%rbp),%rax
	movq 16(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm1
	mulsd 120(%rbp),%xmm1
	movq 48(%rbp),%rax
	movq 24(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm2
	mulsd 112(%rbp),%xmm2
	addsd %xmm1,%xmm2
	addsd %xmm0,%xmm2
	movsd 64(%rbp),%xmm0
	mulsd 64(%rbp),%xmm0
	mulsd 64(%rbp),%xmm0
	mulsd 64(%rbp),%xmm0
	mulsd %xmm2,%xmm0
	movsd 72(%rbp),%xmm1
	addsd 40(%rbp),%xmm1
	addsd 56(%rbp),%xmm1
	addsd %xmm0,%xmm1
	movsd .Ln7uF(%rip),%xmm5
	mulsd %xmm1,%xmm5
	addq $136,%rbp
	jmp *0(%rbp)
	.size s7d1_info, .-s7d1_info
.section .rodata
	.align 8
.align 8
.Ln7uF:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	64
.text
	.align 8
	.quad	2030287
	.quad	32
s7d2_info:
.Lc7uJ:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 88(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,88(%rbp)
	movq %rax,%rbx
	movq $s7d1_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7d2_info, .-s7d2_info
.text
	.align 8
	.quad	1015118
	.quad	32
s7d3_info:
.Lc7uR:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s7d2_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7d3_info, .-s7d3_info
.text
	.align 8
	.quad	507533
	.quad	32
s7d4_info:
.Lc7uZ:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $s7d3_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7d4_info, .-s7d4_info
.text
	.align 8
	.quad	253900
	.quad	32
s7d6_info:
.Lc7v7:
	movq 23(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rax
	movq %rax,16(%rbp)
	movq 7(%rbx),%rbx
	movq $s7d4_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7d6_info, .-s7d6_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s6rZ_info)+0
	.long	0
	.quad	253900
	.quad	4294967328
s6rZ_info:
.Lc7vc:
	movsd 96(%rbp),%xmm3
	subsd .Ln7vn(%rip),%xmm3
	addsd .Ln7vm(%rip),%xmm3
	movsd 88(%rbp),%xmm4
	subsd .Ln7vr(%rip),%xmm4
	addsd .Ln7vq(%rip),%xmm4
	movsd 80(%rbp),%xmm6
	subsd .Ln7vv(%rip),%xmm6
	addsd .Ln7vu(%rip),%xmm6
	movsd %xmm3,%xmm0
	mulsd %xmm3,%xmm0
	movsd %xmm4,%xmm1
	mulsd %xmm4,%xmm1
	movsd %xmm6,%xmm2
	mulsd %xmm6,%xmm2
	movsd .Ln7vE(%rip),%xmm7
	subsd %xmm2,%xmm7
	subsd %xmm1,%xmm7
	subsd %xmm0,%xmm7
	xorpd %xmm0,%xmm0
	ucomisd %xmm0,%xmm7
	jp .Ln7vJ
	jb .Lc7ve
.Ln7vJ:
	movsd %xmm5,24(%rbp)
	movsd %xmm7,32(%rbp)
	movsd %xmm6,80(%rbp)
	movsd %xmm4,88(%rbp)
	movsd %xmm3,96(%rbp)
	movl $EngineziTerrainziNoise_grad3_closure,%ebx
	movq $s7d6_info,0(%rbp)
	jmp stg_ap_0_fast
.Lc7ve:
	movsd 40(%rbp),%xmm0
	addsd 8(%rbp),%xmm0
	addsd %xmm5,%xmm0
	movsd .Ln7vN(%rip),%xmm5
	mulsd %xmm0,%xmm5
	addq $104,%rbp
	jmp *0(%rbp)
	.size s6rZ_info, .-s6rZ_info
.section .rodata
	.align 8
.align 8
.Ln7vm:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	224
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7vn:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7vq:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	224
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7vr:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7vu:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	224
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7vv:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7vE:
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	227
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7vN:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	64
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7de_info)+0
	.long	0
	.quad	260043606
	.quad	4294967328
s7de_info:
.Lc7wb:
	movl $12,%r8d
	movq 7(%rbx),%rdi
	movq 7(%rbx),%rax
	movq 7(%rbx),%rcx
	movq 128(%rbp),%rsi
	addq 112(%rbp),%rsi
	movq 15(%rbx),%rdx
	addq %rsi,%rdx
	movq 104(%rbp),%rsi
	addq 16(%rcx,%rdx,8),%rsi
	movq 136(%rbp),%rcx
	addq %rsi,%rcx
	movq 15(%rbx),%rdx
	addq %rcx,%rdx
	movq 96(%rbp),%rcx
	addq 16(%rax,%rdx,8),%rcx
	movq 152(%rbp),%rax
	addq %rcx,%rax
	movq 15(%rbx),%rbx
	addq %rax,%rbx
	movq 16(%rdi,%rbx,8),%rax
	cqto
	idivq %r8
	movq 16(%rbp),%rax
	movq 8(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm0
	mulsd 80(%rbp),%xmm0
	movq 40(%rbp),%rax
	movq 24(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm1
	mulsd 72(%rbp),%xmm1
	movq 48(%rbp),%rax
	movq 32(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm2
	mulsd 64(%rbp),%xmm2
	addsd %xmm1,%xmm2
	addsd %xmm0,%xmm2
	movsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd %xmm2,%xmm5
	addq $80,%rbp
	jmp s6rZ_info
	.size s7de_info, .-s7de_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7df_info)+0
	.long	0
	.quad	65010900
	.quad	4294967328
s7df_info:
.Lc7wT:
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 128(%rbp),%rbx
	movq $s7de_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size s7df_info, .-s7df_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dg_info)+0
	.long	0
	.quad	32505427
	.quad	4294967328
s7dg_info:
.Lc7wY:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s7df_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7dg_info, .-s7dg_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dh_info)+0
	.long	0
	.quad	16252690
	.quad	4294967328
s7dh_info:
.Lc7x6:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s7dg_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7dh_info, .-s7dh_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7di_info)+0
	.long	0
	.quad	4063184
	.quad	4294967328
s7di_info:
.Lc7xe:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s7dh_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size s7di_info, .-s7di_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s6td_info)+0
	.long	0
	.quad	126923
	.quad	4294967328
s6td_info:
.Lc7xj:
	cvtsi2sdq 24(%rbp),%xmm1
	movsd 88(%rbp),%xmm0
	subsd %xmm1,%xmm0
	addsd .Ln7xm(%rip),%xmm0
	cvtsi2sdq 16(%rbp),%xmm2
	movsd 80(%rbp),%xmm1
	subsd %xmm2,%xmm1
	addsd .Ln7xq(%rip),%xmm1
	cvtsi2sdq 8(%rbp),%xmm2
	movsd 72(%rbp),%xmm6
	subsd %xmm2,%xmm6
	addsd .Ln7xu(%rip),%xmm6
	movsd %xmm0,%xmm2
	mulsd %xmm0,%xmm2
	movsd %xmm1,%xmm3
	mulsd %xmm1,%xmm3
	movsd %xmm6,%xmm4
	mulsd %xmm6,%xmm4
	movsd .Ln7xE(%rip),%xmm7
	subsd %xmm4,%xmm7
	subsd %xmm3,%xmm7
	subsd %xmm2,%xmm7
	movsd %xmm5,0(%rbp)
	xorpd %xmm2,%xmm2
	ucomisd %xmm2,%xmm7
	jp .Ln7xJ
	jb .Lc7xl
.Ln7xJ:
	movsd %xmm7,-32(%rbp)
	movsd %xmm6,-24(%rbp)
	movsd %xmm1,-16(%rbp)
	movsd %xmm0,-8(%rbp)
	movl $EngineziTerrainziNoise_grad3_closure,%ebx
	movq $s7di_info,-40(%rbp)
	addq $-40,%rbp
	jmp stg_ap_0_fast
.Lc7xl:
	xorpd %xmm5,%xmm5
	addq $-8,%rbp
	jmp s6rZ_info
	.size s6td_info, .-s6td_info
.section .rodata
	.align 8
.align 8
.Ln7xm:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	213
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7xq:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	213
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7xu:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	213
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7xE:
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	227
	.byte	63
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dk_info)+0
	.long	0
	.quad	1040184152
	.quad	4294967328
s7dk_info:
.Lc7y6:
	movl $12,%r8d
	movq 7(%rbx),%rdi
	movq 7(%rbx),%rax
	movq 7(%rbx),%rcx
	movq 144(%rbp),%rsi
	addq 104(%rbp),%rsi
	movq 15(%rbx),%rdx
	addq %rsi,%rdx
	movq 88(%rbp),%rsi
	addq 16(%rcx,%rdx,8),%rsi
	movq 152(%rbp),%rcx
	addq %rsi,%rcx
	movq 15(%rbx),%rdx
	addq %rcx,%rdx
	movq 72(%rbp),%rcx
	addq 16(%rax,%rdx,8),%rcx
	movq 168(%rbp),%rax
	addq %rcx,%rax
	movq 15(%rbx),%rbx
	addq %rax,%rbx
	movq 16(%rdi,%rbx,8),%rax
	cqto
	idivq %r8
	movq 16(%rbp),%rax
	movq 8(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm0
	mulsd 96(%rbp),%xmm0
	movq 40(%rbp),%rax
	movq 24(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm1
	mulsd 80(%rbp),%xmm1
	movq 48(%rbp),%rax
	movq 32(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm2
	mulsd 64(%rbp),%xmm2
	addsd %xmm1,%xmm2
	addsd %xmm0,%xmm2
	movsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd %xmm2,%xmm5
	addq $104,%rbp
	jmp s6td_info
	.size s7dk_info, .-s7dk_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dl_info)+0
	.long	0
	.quad	260046038
	.quad	4294967328
s7dl_info:
.Lc7yO:
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 144(%rbp),%rbx
	movq $s7dk_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size s7dl_info, .-s7dl_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dm_info)+0
	.long	0
	.quad	130022997
	.quad	4294967328
s7dm_info:
.Lc7yT:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s7dl_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7dm_info, .-s7dm_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dn_info)+0
	.long	0
	.quad	65011476
	.quad	4294967328
s7dn_info:
.Lc7z1:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s7dm_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7dn_info, .-s7dn_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7do_info)+0
	.long	0
	.quad	16252882
	.quad	4294967328
s7do_info:
.Lc7z9:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s7dn_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size s7do_info, .-s7do_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s6ur_info)+0
	.long	0
	.quad	15816
	.quad	4294967328
s6ur_info:
.Lc7ze:
	cvtsi2sdq %rsi,%xmm1
	movsd 64(%rbp),%xmm0
	subsd %xmm1,%xmm0
	addsd .Ln7zh(%rip),%xmm0
	cvtsi2sdq %r14,%xmm1
	movsd 56(%rbp),%xmm4
	subsd %xmm1,%xmm4
	addsd .Ln7zl(%rip),%xmm4
	cvtsi2sdq %rbx,%xmm1
	movsd 48(%rbp),%xmm5
	subsd %xmm1,%xmm5
	addsd .Ln7zp(%rip),%xmm5
	movsd %xmm0,%xmm1
	mulsd %xmm0,%xmm1
	movsd %xmm4,%xmm2
	mulsd %xmm4,%xmm2
	movsd %xmm5,%xmm3
	mulsd %xmm5,%xmm3
	movsd .Ln7zz(%rip),%xmm6
	subsd %xmm3,%xmm6
	subsd %xmm2,%xmm6
	subsd %xmm1,%xmm6
	movq %r9,0(%rbp)
	movq %r8,-8(%rbp)
	movq %rdi,-16(%rbp)
	xorpd %xmm1,%xmm1
	ucomisd %xmm1,%xmm6
	jp .Ln7zE
	jb .Lc7zg
.Ln7zE:
	movsd %xmm6,-72(%rbp)
	movsd %xmm5,-64(%rbp)
	movq %rbx,-56(%rbp)
	movsd %xmm4,-48(%rbp)
	movq %r14,-40(%rbp)
	movsd %xmm0,-32(%rbp)
	movq %rsi,-24(%rbp)
	movl $EngineziTerrainziNoise_grad3_closure,%ebx
	movq $s7do_info,-80(%rbp)
	addq $-80,%rbp
	jmp stg_ap_0_fast
.Lc7zg:
	xorpd %xmm5,%xmm5
	addq $-24,%rbp
	jmp s6td_info
	.size s6ur_info, .-s6ur_info
.section .rodata
	.align 8
.align 8
.Ln7zh:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	197
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7zl:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	197
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7zp:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	197
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7zz:
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	227
	.byte	63
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s6ux_info)+0
	.long	0
	.quad	7879
	.quad	4294967328
s6ux_info:
.Lc7zH:
	movsd %xmm5,0(%rbp)
	movsd 40(%rbp),%xmm0
	ucomisd 48(%rbp),%xmm0
	jae .Lc7zJ
	movsd 48(%rbp),%xmm0
	ucomisd 56(%rbp),%xmm0
	jp .Ln7zX
	jb .Lc7zQ
.Ln7zX:
	movsd 40(%rbp),%xmm0
	ucomisd 56(%rbp),%xmm0
	jp .Ln7zZ
	jb .Lc7zT
.Ln7zZ:
	xorl %ebx,%ebx
	movl $1,%r14d
	xorl %esi,%esi
	movl $1,%edi
	movl $1,%r8d
	xorl %r9d,%r9d
	addq $-8,%rbp
	jmp s6ur_info
.Lc7zJ:
	movsd 48(%rbp),%xmm0
	ucomisd 56(%rbp),%xmm0
	jae .Lc7zL
	movsd 40(%rbp),%xmm0
	ucomisd 56(%rbp),%xmm0
	jae .Lc7zO
	xorl %ebx,%ebx
	xorl %r14d,%r14d
	movl $1,%esi
	movl $1,%edi
	xorl %r8d,%r8d
	movl $1,%r9d
	addq $-8,%rbp
	jmp s6ur_info
.Lc7zL:
	movl $1,%ebx
	xorl %r14d,%r14d
	xorl %esi,%esi
	movl $1,%edi
	movl $1,%r8d
	xorl %r9d,%r9d
	addq $-8,%rbp
	jmp s6ur_info
.Lc7zO:
	movl $1,%ebx
	xorl %r14d,%r14d
	xorl %esi,%esi
	movl $1,%edi
	xorl %r8d,%r8d
	movl $1,%r9d
	addq $-8,%rbp
	jmp s6ur_info
.Lc7zQ:
	xorl %ebx,%ebx
	xorl %r14d,%r14d
	movl $1,%esi
	xorl %edi,%edi
	movl $1,%r8d
	movl $1,%r9d
	addq $-8,%rbp
	jmp s6ur_info
.Lc7zT:
	xorl %ebx,%ebx
	movl $1,%r14d
	xorl %esi,%esi
	xorl %edi,%edi
	movl $1,%r8d
	movl $1,%r9d
	addq $-8,%rbp
	jmp s6ur_info
	.size s6ux_info, .-s6ux_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dv_info)+0
	.long	0
	.quad	1012558
	.quad	4294967328
s7dv_info:
.Lc7Aq:
	movl $12,%r8d
	movq 7(%rbx),%rdi
	movq 7(%rbx),%rax
	movq 7(%rbx),%rcx
	movq 15(%rbx),%rdx
	addq 64(%rbp),%rdx
	movq 72(%rbp),%rsi
	addq 16(%rcx,%rdx,8),%rsi
	movq 15(%rbx),%rcx
	addq %rsi,%rcx
	movq 88(%rbp),%rdx
	addq 16(%rax,%rcx,8),%rdx
	movq 15(%rbx),%rax
	addq %rdx,%rax
	movq 16(%rdi,%rax,8),%rax
	cqto
	idivq %r8
	movq 16(%rbp),%rax
	movq 8(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm0
	mulsd 112(%rbp),%xmm0
	movq 40(%rbp),%rax
	movq 24(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm1
	mulsd 104(%rbp),%xmm1
	movq 48(%rbp),%rax
	movq 32(%rbp),%rbx
	addq %rdx,%rbx
	movsd 16(%rax,%rbx,8),%xmm2
	mulsd 96(%rbp),%xmm2
	addsd %xmm1,%xmm2
	addsd %xmm0,%xmm2
	movsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd 56(%rbp),%xmm5
	mulsd %xmm2,%xmm5
	addq $56,%rbp
	jmp s6ux_info
	.size s7dv_info, .-s7dv_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dw_info)+0
	.long	0
	.quad	253132
	.quad	4294967328
s7dw_info:
.Lc7B2:
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 64(%rbp),%rbx
	movq $s7dv_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size s7dw_info, .-s7dw_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dx_info)+0
	.long	0
	.quad	126539
	.quad	4294967328
s7dx_info:
.Lc7B7:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s7dw_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7dx_info, .-s7dx_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dy_info)+0
	.long	0
	.quad	63242
	.quad	4294967328
s7dy_info:
.Lc7Bf:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $s7dx_info,-8(%rbp)
	addq $-8,%rbp
	jmp stg_ap_0_fast
	.size s7dy_info, .-s7dy_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s7dz_info)+0
	.long	0
	.quad	15816
	.quad	4294967328
s7dz_info:
.Lc7Bn:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $s7dy_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
	.size s7dz_info, .-s7dz_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s6vH_info)+0
	.long	0
	.quad	3910
	.quad	4294967328
s6vH_info:
.Lc7Bs:
	movq 24(%rbp),%rax
	addq 8(%rbp),%rax
	movq %rbx,%rcx
	addq %rax,%rcx
	cvtsi2sdq %rcx,%xmm2
	mulsd .Ln7Bv(%rip),%xmm2
	cvtsi2sdq 8(%rbp),%xmm1
	movsd 48(%rbp),%xmm0
	subsd %xmm1,%xmm0
	addsd %xmm2,%xmm0
	cvtsi2sdq 24(%rbp),%xmm1
	movsd 32(%rbp),%xmm4
	subsd %xmm1,%xmm4
	addsd %xmm2,%xmm4
	cvtsi2sdq %rbx,%xmm1
	movsd 40(%rbp),%xmm5
	subsd %xmm1,%xmm5
	addsd %xmm2,%xmm5
	movsd %xmm0,%xmm1
	mulsd %xmm0,%xmm1
	movsd %xmm4,%xmm2
	mulsd %xmm4,%xmm2
	movsd %xmm5,%xmm3
	mulsd %xmm5,%xmm3
	movsd .Ln7BQ(%rip),%xmm6
	subsd %xmm3,%xmm6
	subsd %xmm2,%xmm6
	subsd %xmm1,%xmm6
	movq 24(%rbp),%rax
	andq $255,%rax
	movq 8(%rbp),%rcx
	andq $255,%rcx
	movsd %xmm0,48(%rbp)
	movsd %xmm4,40(%rbp)
	movsd %xmm5,32(%rbp)
	andq $255,%rbx
	movq %rbx,24(%rbp)
	movq %rax,8(%rbp)
	movq %rcx,0(%rbp)
	xorpd %xmm0,%xmm0
	ucomisd %xmm0,%xmm6
	jp .Ln7BZ
	jb .Lc7Bu
.Ln7BZ:
	movsd %xmm6,-8(%rbp)
	movl $EngineziTerrainziNoise_grad3_closure,%ebx
	movq $s7dz_info,-16(%rbp)
	addq $-16,%rbp
	jmp stg_ap_0_fast
.Lc7Bu:
	xorpd %xmm5,%xmm5
	addq $-8,%rbp
	jmp s6ux_info
	.size s6vH_info, .-s6vH_info
.section .rodata
	.align 8
.align 8
.Ln7Bv:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	197
	.byte	63
.section .rodata
	.align 8
.align 8
.Ln7BQ:
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	227
	.byte	63
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s6vN_info)+0
	.long	0
	.quad	3910
	.quad	4294967328
s6vN_info:
.Lc7C2:
	movsd 40(%rbp),%xmm1
	addsd 24(%rbp),%xmm1
	movq %rbx,24(%rbp)
	xorpd %xmm0,%xmm0
	ucomisd %xmm0,%xmm1
	ja .Lc7C5
	subsd .Ln7C9(%rip),%xmm1
	cvttsd2siq %xmm1,%rbx
	jmp s6vH_info
.Lc7C5:
	cvttsd2siq %xmm1,%rbx
	jmp s6vH_info
	.size s6vN_info, .-s6vN_info
.section .rodata
	.align 8
.align 8
.Ln7C9:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(s6vT_info)+0
	.long	0
	.quad	1925
	.quad	4294967328
s6vT_info:
.Lc7Ce:
	movsd 24(%rbp),%xmm1
	addsd 16(%rbp),%xmm1
	movq %rbx,0(%rbp)
	xorpd %xmm0,%xmm0
	ucomisd %xmm0,%xmm1
	ja .Lc7Ch
	subsd .Ln7Cl(%rip),%xmm1
	cvttsd2siq %xmm1,%rbx
	addq $-8,%rbp
	jmp s6vN_info
.Lc7Ch:
	cvttsd2siq %xmm1,%rbx
	addq $-8,%rbp
	jmp s6vN_info
	.size s6vT_info, .-s6vT_info
.section .rodata
	.align 8
.align 8
.Ln7Cl:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwnoise3D_slow-(EngineziTerrainziNoise_zdwnoise3D_info)+0
	.long	0
	.quad	900
	.long	EngineziTerrainziNoise_zdwnoise3D_srt-(EngineziTerrainziNoise_zdwnoise3D_info)+0
	.long	0
	.quad	17179869184
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_zdwnoise3D_info
.type EngineziTerrainziNoise_zdwnoise3D_info, @object
EngineziTerrainziNoise_zdwnoise3D_info:
.Lc7Cq:
	leaq -192(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Cs
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdwnoise3D_ct
	je .Lc7Ct
.Lc7Cu:
	incq EngineziTerrainziNoise_zdwnoise3D_ct+40
	movsd %xmm5,%xmm0
	addsd %xmm6,%xmm0
	addsd 0(%rbp),%xmm0
	divsd .Ln7CA(%rip),%xmm0
	movsd 0(%rbp),%xmm1
	addsd %xmm0,%xmm1
	movsd %xmm5,-8(%rbp)
	movsd %xmm6,-16(%rbp)
	movsd %xmm0,-24(%rbp)
	movq %r14,-32(%rbp)
	xorpd %xmm0,%xmm0
	ucomisd %xmm0,%xmm1
	ja .Lc7Cx
	subsd .Ln7CH(%rip),%xmm1
	cvttsd2siq %xmm1,%rbx
	addq $-40,%rbp
	jmp s6vT_info
.Lc7Cs:
	movl $EngineziTerrainziNoise_zdwnoise3D_closure,%ebx
	addq $-24,%rbp
	movq %r14,0(%rbp)
	movsd %xmm5,8(%rbp)
	movsd %xmm6,16(%rbp)
	jmp *-8(%r13)
.Lc7Ct:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdwnoise3D_ct+56
	movq $EngineziTerrainziNoise_zdwnoise3D_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdwnoise3D_ct
	jmp .Lc7Cu
.Lc7Cx:
	cvttsd2siq %xmm1,%rbx
	addq $-40,%rbp
	jmp s6vT_info
	.size EngineziTerrainziNoise_zdwnoise3D_info, .-EngineziTerrainziNoise_zdwnoise3D_info
.section .rodata
	.align 8
.align 8
.Ln7CA:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	64
.section .rodata
	.align 8
.align 8
.Ln7CH:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	240
	.byte	63
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_noise3D_srt:
	.quad	EngineziTerrainziNoise_grad3_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_noise3D_closure
.type EngineziTerrainziNoise_noise3D_closure, @object
EngineziTerrainziNoise_noise3D_closure:
	.quad	EngineziTerrainziNoise_noise3D_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7D6_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	110
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	51
	.byte	68
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	105
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7D9_str:
	.byte	77
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_noise3D_ct
.type EngineziTerrainziNoise_noise3D_ct, @object
EngineziTerrainziNoise_noise3D_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	c7D6_str
	.quad	c7D9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6wh_info:
.Lc7Dv:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7DC
	addq $2,EngineziTerrainziNoise_noise3D_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm5,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7DC:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6wh_info, .-s6wh_info
.text
	.align 8
	.long	EngineziTerrainziNoise_noise3D_srt-(s7CL_info)+0
	.long	0
	.quad	387
	.quad	4294967328
s7CL_info:
.Lc7DF:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movsd 24(%rbp),%xmm5
	movsd 16(%rbp),%xmm6
	movsd 7(%rbx),%xmm0
	movsd %xmm0,16(%rbp)
	movq $s6wh_info,24(%rbp)
	addq $16,%rbp
	jmp EngineziTerrainziNoise_zdwnoise3D_info
	.size s7CL_info, .-s7CL_info
.text
	.align 8
	.long	EngineziTerrainziNoise_noise3D_srt-(s7CM_info)+0
	.long	0
	.quad	259
	.quad	4294967328
s7CM_info:
.Lc7DJ:
	movq 16(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $s7CL_info,0(%rbp)
	testq $7,%rbx
	jne s7CL_info
	jmp *(%rbx)
	.size s7CM_info, .-s7CM_info
.text
	.align 8
	.long	EngineziTerrainziNoise_noise3D_srt-(s7CN_info)+0
	.long	0
	.quad	3
	.quad	4294967328
s7CN_info:
.Lc7DS:
	movq 24(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $s7CM_info,0(%rbp)
	testq $7,%rbx
	jne s7CM_info
	jmp *(%rbx)
	.size s7CN_info, .-s7CN_info
.text
	.align 8
	.long	EngineziTerrainziNoise_noise3D_srt-(EngineziTerrainziNoise_noise3D_info)+0
	.long	0
	.quad	17179869205
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_noise3D_info
.type EngineziTerrainziNoise_noise3D_info, @object
EngineziTerrainziNoise_noise3D_info:
.Lc7E1:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7E3
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_noise3D_ct
	je .Lc7E4
.Lc7E5:
	incq EngineziTerrainziNoise_noise3D_ct+40
	movq %r14,-24(%rbp)
	movq %r8,-16(%rbp)
	movq %rdi,-8(%rbp)
	movq %rsi,%rbx
	movq $s7CN_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne s7CN_info
	jmp *(%rbx)
.Lc7E3:
	movl $EngineziTerrainziNoise_noise3D_closure,%ebx
	jmp *-8(%r13)
.Lc7E4:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_noise3D_ct+56
	movq $EngineziTerrainziNoise_noise3D_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_noise3D_ct
	jmp .Lc7E5
	.size EngineziTerrainziNoise_noise3D_info, .-EngineziTerrainziNoise_noise3D_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdwsimplex3D_srt:
	.quad	EngineziTerrainziNoise_grad3_closure
	.quad	EngineziTerrainziNoise_zdwharmonic_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwsimplex3D_closure
.type EngineziTerrainziNoise_zdwsimplex3D_closure, @object
EngineziTerrainziNoise_zdwsimplex3D_closure:
	.quad	EngineziTerrainziNoise_zdwsimplex3D_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7F2_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	119
	.byte	115
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
	.byte	51
	.byte	68
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	84
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7F5_str:
	.byte	77
	.byte	105
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwsimplex3D_ct
.type EngineziTerrainziNoise_zdwsimplex3D_ct, @object
EngineziTerrainziNoise_zdwsimplex3D_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	c7F2_str
	.quad	c7F5_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziNoise_zdwsimplex3D_slow
.type EngineziTerrainziNoise_zdwsimplex3D_slow, @object
EngineziTerrainziNoise_zdwsimplex3D_slow:
.Lc7F9:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziNoise_zdwsimplex3D_info
	.size EngineziTerrainziNoise_zdwsimplex3D_slow, .-EngineziTerrainziNoise_zdwsimplex3D_slow
.section .rodata
	.align 8
.align 1
c7Fh_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	55
	.byte	69
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c7Fk_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
s7Ef_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c7Fh_str
	.quad	c7Fk_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6wV_info:
.Lc7G0:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7G7
	addq $2,s7Ef_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm5,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7G7:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6wV_info, .-s6wV_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwsimplex3D_srt-(s7Eg_info)+0
	.long	0
	.quad	1925
	.quad	4294967328
s7Eg_info:
.Lc7Ga:
	movsd 7(%rbx),%xmm0
	mulsd 32(%rbp),%xmm0
	divsd 24(%rbp),%xmm0
	movsd 16(%rbp),%xmm6
	mulsd 32(%rbp),%xmm6
	divsd 24(%rbp),%xmm6
	movsd 40(%rbp),%xmm5
	mulsd 32(%rbp),%xmm5
	divsd 24(%rbp),%xmm5
	incq KNOWN_CALL_ctr
	movsd %xmm0,32(%rbp)
	movq 8(%rbp),%r14
	movq $s6wV_info,40(%rbp)
	addq $32,%rbp
	jmp EngineziTerrainziNoise_zdwnoise3D_info
	.size s7Eg_info, .-s7Eg_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwsimplex3D_srt-(s7Eh_info)+0
	.long	0
	.quad	1797
	.quad	4294967328
s7Eh_info:
.Lc7Gj:
	movq 16(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $s7Eg_info,0(%rbp)
	testq $7,%rbx
	jne s7Eg_info
	jmp *(%rbx)
	.size s7Eh_info, .-s7Eh_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwsimplex3D_srt-(s7Ei_info)+0
	.long	0
	.quad	1541
	.quad	4294967328
s7Ei_info:
.Lc7Gs:
	movq 24(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,24(%rbp)
	movq %rax,%rbx
	movq $s7Eh_info,0(%rbp)
	testq $7,%rbx
	jne s7Eh_info
	jmp *(%rbx)
	.size s7Ei_info, .-s7Ei_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwsimplex3D_srt-(s7Ej_info)+0
	.long	0
	.quad	1029
	.quad	4294967328
s7Ej_info:
.Lc7GB:
	movq 32(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,32(%rbp)
	movq %rax,%rbx
	movq $s7Ei_info,0(%rbp)
	testq $7,%rbx
	jne s7Ei_info
	jmp *(%rbx)
	.size s7Ej_info, .-s7Ej_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwsimplex3D_srt-(s7Ek_info)+0
	.long	0
	.quad	5
	.quad	4294967328
s7Ek_info:
.Lc7GK:
	movq 40(%rbp),%rax
	movsd 7(%rbx),%xmm0
	movsd %xmm0,40(%rbp)
	movq %rax,%rbx
	movq $s7Ej_info,0(%rbp)
	testq $7,%rbx
	jne s7Ej_info
	jmp *(%rbx)
	.size s7Ek_info, .-s7Ek_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwsimplex3D_srt-(s7Ef_info)+0
	.long	0
	.quad	4294967301
	.quad	5
	.quad	4294967305
s7Ef_info:
.Lc7GT:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7GV
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s7Ef_ct
	je .Lc7GW
.Lc7GX:
	incq s7Ef_ct+40
	movq 39(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-16(%rbp)
	movq %r14,-8(%rbp)
	movq 7(%rbx),%rbx
	movq $s7Ek_info,-48(%rbp)
	addq $-48,%rbp
	testq $7,%rbx
	jne s7Ek_info
	jmp *(%rbx)
.Lc7GV:
	jmp *-8(%r13)
.Lc7GW:
	movq ticky_entry_ctrs,%rax
	movq %rax,s7Ef_ct+56
	movq $s7Ef_ct,ticky_entry_ctrs
	movq $1,s7Ef_ct
	jmp .Lc7GX
	.size s7Ef_info, .-s7Ef_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwsimplex3D_slow-(EngineziTerrainziNoise_zdwsimplex3D_info)+0
	.long	0
	.quad	134
	.long	EngineziTerrainziNoise_zdwsimplex3D_srt-(EngineziTerrainziNoise_zdwsimplex3D_info)+0
	.long	0
	.quad	25769803776
	.quad	0
	.quad	12884901903
.globl EngineziTerrainziNoise_zdwsimplex3D_info
.type EngineziTerrainziNoise_zdwsimplex3D_info, @object
EngineziTerrainziNoise_zdwsimplex3D_info:
.Lc7H9:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Hd
	addq $6,EngineziTerrainziNoise_zdwsimplex3D_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdwsimplex3D_ct
	je .Lc7He
.Lc7Hf:
	incq EngineziTerrainziNoise_zdwsimplex3D_ct+40
	movq $s7Ef_info,-40(%r12)
	movq %r8,-32(%r12)
	movq %rdi,-24(%r12)
	movq %r9,-16(%r12)
	movq 0(%rbp),%rax
	movq %rax,-8(%r12)
	movq %r14,0(%r12)
	incq KNOWN_CALL_ctr
	movq %rsi,%r14
	leaq -39(%r12),%rsi
	addq $8,%rbp
	jmp EngineziTerrainziNoise_zdwharmonic_info
.Lc7Hd:
	movq $48,192(%r13)
.Lc7Hb:
	movl $EngineziTerrainziNoise_zdwsimplex3D_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lc7He:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdwsimplex3D_ct+56
	movq $EngineziTerrainziNoise_zdwsimplex3D_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdwsimplex3D_ct
	jmp .Lc7Hf
	.size EngineziTerrainziNoise_zdwsimplex3D_info, .-EngineziTerrainziNoise_zdwsimplex3D_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_simplex3D_srt:
	.quad	EngineziTerrainziNoise_zdwsimplex3D_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplex3D_closure
.type EngineziTerrainziNoise_simplex3D_closure, @object
EngineziTerrainziNoise_simplex3D_closure:
	.quad	EngineziTerrainziNoise_simplex3D_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7Hw_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	115
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
	.byte	51
	.byte	68
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	103
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7Hz_str:
	.byte	77
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplex3D_ct
.type EngineziTerrainziNoise_simplex3D_ct, @object
EngineziTerrainziNoise_simplex3D_ct:
	.quad	0
	.quad	6
	.quad	1
	.quad	c7Hw_str
	.quad	c7Hz_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s6xd_info:
.Lc7HN:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7HU
	addq $2,EngineziTerrainziNoise_simplex3D_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm5,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7HU:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6xd_info, .-s6xd_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplex3D_srt-(s7Hj_info)+0
	.long	0
	.quad	5
	.quad	4294967328
s7Hj_info:
.Lc7HX:
	incq KNOWN_CALL_ctr
	movq 32(%rbp),%r14
	movq 40(%rbp),%rax
	movq %rax,32(%rbp)
	movq 7(%rbx),%rsi
	movq 24(%rbp),%rdi
	movq 16(%rbp),%r8
	movq 8(%rbp),%r9
	movq $s6xd_info,40(%rbp)
	addq $32,%rbp
	jmp EngineziTerrainziNoise_zdwsimplex3D_info
	.size s7Hj_info, .-s7Hj_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplex3D_srt-(EngineziTerrainziNoise_simplex3D_info)+0
	.long	0
	.quad	25769803799
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_simplex3D_info
.type EngineziTerrainziNoise_simplex3D_info, @object
EngineziTerrainziNoise_simplex3D_info:
.Lc7I1:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7I3
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_simplex3D_ct
	je .Lc7I4
.Lc7I5:
	incq EngineziTerrainziNoise_simplex3D_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rsi,%rbx
	movq $s7Hj_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne s7Hj_info
	jmp *(%rbx)
.Lc7I3:
	movl $EngineziTerrainziNoise_simplex3D_closure,%ebx
	jmp *-8(%r13)
.Lc7I4:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_simplex3D_ct+56
	movq $EngineziTerrainziNoise_simplex3D_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_simplex3D_ct
	jmp .Lc7I5
	.size EngineziTerrainziNoise_simplex3D_info, .-EngineziTerrainziNoise_simplex3D_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_zdwa_srt:
	.quad	EngineziTerrainziNoise_zdwsimplex3D_closure
	.quad	randomzm1zi0zi1zi1_SystemziRandom_zdfRandomInt3_closure
	.quad	EngineziTerrainziNoise_perm_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_zdwa_closure
.type EngineziTerrainziNoise_zdwa_closure, @object
EngineziTerrainziNoise_zdwa_closure:
	.quad	EngineziTerrainziNoise_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7KA_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	81
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7KC_str:
	.byte	83
	.byte	83
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
.globl EngineziTerrainziNoise_zdwa_ct
.type EngineziTerrainziNoise_zdwa_ct, @object
EngineziTerrainziNoise_zdwa_ct:
	.quad	0
	.quad	8
	.quad	2
	.quad	c7KA_str
	.quad	c7KC_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
.globl EngineziTerrainziNoise_zdwa_slow
.type EngineziTerrainziNoise_zdwa_slow, @object
EngineziTerrainziNoise_zdwa_slow:
.Lc7KF:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp EngineziTerrainziNoise_zdwa_info
	.size EngineziTerrainziNoise_zdwa_slow, .-EngineziTerrainziNoise_zdwa_slow
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s6xE_info)+16
	.long	0
	.quad	1
	.quad	4294967313
s6xE_info:
.Lc7KK:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7KM
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp EngineziTerrainziNoise_perm_info
.Lc7KM:
	jmp *-16(%r13)
	.size s6xE_info, .-s6xE_info
.text
	.align 8
	.quad	0
	.quad	32
s7Ip_info:
.Lc7KT:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7KZ
	addq $2,EngineziTerrainziNoise_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	cvtss2sd %xmm0,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7KZ:
	movq $16,192(%r13)
.Lc7KX:
	jmp *-16(%r13)
	.size s7Ip_info, .-s7Ip_info
.text
	.align 8
	.quad	1
	.quad	17
s6xL_info:
.Lc7L5:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7L7
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s7Ip_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s7Ip_info
	jmp *(%rbx)
.Lc7L7:
	jmp *-16(%r13)
	.size s6xL_info, .-s6xL_info
.text
	.align 8
	.quad	65
	.quad	32
s7Iq_info:
.Lc7Lj:
	movq 7(%rbx),%rax
	leaq -1(%rax),%rsi
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	addq $16,%rbp
	jmp base_GHCziEnum_eftInt_info
	.size s7Iq_info, .-s7Iq_info
.text
	.align 8
	.quad	1
	.quad	32
s7Ir_info:
.Lc7Ln:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $s7Iq_info,0(%rbp)
	testq $7,%rbx
	jne s7Iq_info
	jmp *(%rbx)
	.size s7Ir_info, .-s7Ir_info
.text
	.align 8
	.quad	2
	.quad	19
s6xW_info:
.Lc7Ly:
	incq ENT_DYN_THK_ctr
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7LA
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%rbx
	movq $s7Ir_info,-32(%rbp)
	addq $-32,%rbp
	testq $7,%rbx
	jne s7Ir_info
	jmp *(%rbx)
.Lc7LA:
	jmp *-16(%r13)
	.size s6xW_info, .-s6xW_info
.section .rodata
	.align 8
.align 1
c7LF_str:
	.byte	103
	.byte	111
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	54
	.byte	121
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c7LH_str:
	.byte	105
	.byte	0
.data
	.align 8
.align 1
s6y2_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c7LF_str
	.quad	c7LH_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	8589934593
	.quad	16
s6y4_info:
.Lc7LN:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7LP
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 32(%rbx),%rax
	cmpq 24(%rbx),%rax
	je .Lc7LQ
	movq 32(%rbx),%rax
	leaq 1(%rax),%r14
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%rbx
	addq $-16,%rbp
	jmp s6y2_info
.Lc7LP:
	jmp *-16(%r13)
.Lc7LQ:
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $-16,%rbp
	jmp *0(%rbp)
	.size s6y4_info, .-s6y4_info
.section .rodata
	.align 8
.align 1
c7LZ_str:
	.byte	103
	.byte	111
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	54
	.byte	121
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c7M2_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
s6yA_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c7LZ_str
	.quad	c7M2_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s7Iu_info:
.Lc7Mt:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Mz
	addq $2,s6yA_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	cvtsi2sdq 7(%rbx),%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7Mz:
	movq $16,192(%r13)
.Lc7Mx:
	jmp *-16(%r13)
	.size s7Iu_info, .-s7Iu_info
.text
	.align 8
	.quad	1
	.quad	17
s7Ih_info:
.Lc7ME:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7MG
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s7Iu_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s7Iu_info
	jmp *(%rbx)
.Lc7MG:
	jmp *-16(%r13)
	.size s7Ih_info, .-s7Ih_info
.text
	.align 8
	.quad	964
	.quad	32
s6yu_info:
.Lc7MN:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7MU
	addq $2,s6yA_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	cvtsd2ss %xmm5,%xmm0
	movss 8(%rbp),%xmm1
	mulss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.Lc7MU:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6yu_info, .-s6yu_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s7Iv_info)+0
	.long	0
	.quad	133
	.quad	4294967328
s7Iv_info:
.Lc7MZ:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc7N3
	addq $3,s6yA_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $s7Ih_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq $EngineziTerrainziNoise_grad17_closure+1,0(%rbp)
	movq 40(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 32(%rbp),%rdi
	movq 24(%rbp),%r8
	leaq -16(%r12),%r9
	movq $s6yu_info,8(%rbp)
	jmp EngineziTerrainziNoise_zdwsimplex3D_info
.Lc7N3:
	movq $24,192(%r13)
.Lc7N1:
	jmp *-16(%r13)
	.size s7Iv_info, .-s7Iv_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s7Iw_info)+0
	.long	0
	.quad	5
	.quad	4294967328
s7Iw_info:
.Lc7N7:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $s7Iv_info,0(%rbp)
	testq $7,%rbx
	jne s7Iv_info
	jmp *(%rbx)
	.size s7Iw_info, .-s7Iw_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s7Ij_info)+0
	.long	0
	.quad	6
	.quad	4294967312
s7Ij_info:
.Lc7Ni:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Nk
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 56(%rbx),%rax
	movq %rax,-56(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $s7Iw_info,-64(%rbp)
	addq $-64,%rbp
	testq $7,%rbx
	jne s7Iw_info
	jmp *(%rbx)
.Lc7Nk:
	jmp *-16(%r13)
	.size s7Ij_info, .-s7Ij_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s7It_info)+0
	.long	0
	.quad	7
	.quad	4294967328
s7It_info:
.Lc7Nw:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lc7Nx
	movq 40(%rbp),%rbx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lc7Nx:
	addq $120,%r12
	cmpq 144(%r13),%r12
	ja .Lc7NB
	addq $15,s6yA_ct+48
	incq ALLOC_HEAP_ctr
	addq $15,ALLOC_HEAP_tot
	movq $stg_ap_2_upd_info,-112(%r12)
	movq 8(%rbp),%rax
	movq %rax,-96(%r12)
	movq 14(%rbx),%rax
	movq %rax,-88(%r12)
	movq $s7Ij_info,-80(%r12)
	movq 56(%rbp),%rax
	movq %rax,-64(%r12)
	movq 48(%rbp),%rax
	movq %rax,-56(%r12)
	movq 32(%rbp),%rax
	movq %rax,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	movq 16(%rbp),%rax
	movq %rax,-32(%r12)
	movq 6(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -80(%r12),%rax
	movq %rax,-8(%r12)
	leaq -112(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
.Lc7NB:
	movq $120,192(%r13)
.Lc7Nz:
	jmp *-16(%r13)
	.size s7It_info, .-s7It_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s6yA_info)+0
	.long	0
	.quad	4294967301
	.quad	6
	.quad	4294967305
s6yA_info:
.Lc7NS:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7NU
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s6yA_ct
	je .Lc7NV
.Lc7NW:
	incq s6yA_ct+40
	movq %rbx,-56(%rbp)
	movq 47(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $s7It_info,-64(%rbp)
	addq $-64,%rbp
	testq $7,%rbx
	jne s7It_info
	jmp *(%rbx)
.Lc7NU:
	jmp *-8(%r13)
.Lc7NV:
	movq ticky_entry_ctrs,%rax
	movq %rax,s6yA_ct+56
	movq $s6yA_ct,ticky_entry_ctrs
	movq $1,s6yA_ct
	jmp .Lc7NW
	.size s6yA_info, .-s6yA_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s6y2_info)+0
	.long	0
	.quad	4294967300
	.quad	4294967301
	.quad	4294967305
s6y2_info:
.Lc7Oa:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Oe
	addq $14,s6y2_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s6y2_ct
	je .Lc7Of
.Lc7Og:
	incq s6y2_ct+40
	movq $s6y4_info,-104(%r12)
	movq %rbx,-88(%r12)
	movq 47(%rbx),%rax
	movq %rax,-80(%r12)
	movq %r14,-72(%r12)
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-64(%r12)
	cvtsi2sdq %r14,%xmm0
	movsd %xmm0,-56(%r12)
	movq $s6yA_info,-48(%r12)
	movq 7(%rbx),%rax
	movq %rax,-40(%r12)
	movq 15(%rbx),%rax
	movq %rax,-32(%r12)
	leaq -104(%r12),%rax
	movq %rax,-24(%r12)
	leaq -63(%r12),%rax
	movq %rax,-16(%r12)
	movq 31(%rbx),%rax
	movq %rax,-8(%r12)
	movq 39(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 23(%rbx),%r14
	leaq -47(%r12),%rbx
	jmp s6yA_info
.Lc7Oe:
	movq $112,192(%r13)
.Lc7Oc:
	jmp *-8(%r13)
.Lc7Of:
	movq ticky_entry_ctrs,%rax
	movq %rax,s6y2_ct+56
	movq $s6y2_ct,ticky_entry_ctrs
	movq $1,s6y2_ct
	jmp .Lc7Og
	.size s6y2_info, .-s6y2_info
.text
	.align 8
	.quad	1
	.quad	32
s7Ik_info:
.Lc7Ou:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp EngineziTerrainziNoise_splitInterval_info
	.size s7Ik_info, .-s7Ik_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s6yD_info)+0
	.long	0
	.quad	4103
	.quad	21474836512
s6yD_info:
.Lc7Ox:
	addq $136,%r12
	cmpq 144(%r13),%r12
	ja .Lc7OB
	addq $17,EngineziTerrainziNoise_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $17,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	decq %rax
	cmpq %rax,56(%rbp)
	jg .Lc7OD
	movq $s6xE_info,-128(%r12)
	movq 48(%rbp),%rcx
	movq %rcx,-112(%r12)
	movq $s6xL_info,-104(%r12)
	movq 40(%rbp),%rcx
	movq %rcx,-88(%r12)
	movq $s6xW_info,-80(%r12)
	movq 32(%rbp),%rcx
	movq %rcx,-64(%r12)
	movq 24(%rbp),%rcx
	movq %rcx,-56(%r12)
	movq $s6y2_info,-48(%r12)
	leaq -128(%r12),%rcx
	movq %rcx,-40(%r12)
	leaq -104(%r12),%rcx
	movq %rcx,-32(%r12)
	leaq -80(%r12),%rcx
	movq %rcx,-24(%r12)
	movq 16(%rbp),%rcx
	movq %rcx,-16(%r12)
	movq 8(%rbp),%rcx
	movq %rcx,-8(%r12)
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq 56(%rbp),%r14
	movq %rbx,56(%rbp)
	leaq -47(%r12),%rbx
	movq $s7Ik_info,48(%rbp)
	addq $48,%rbp
	jmp s6y2_info
.Lc7OB:
	movq $136,192(%r13)
.Lc7Oz:
	jmp *-16(%r13)
.Lc7OD:
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%r14d
	movq %rbx,%rsi
	addq $64,%rbp
	addq $-136,%r12
	addq $-17,EngineziTerrainziNoise_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $-17,ALLOC_HEAP_tot
	jmp EngineziTerrainziNoise_splitInterval_info
	.size s6yD_info, .-s6yD_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s7In_info)+0
	.long	0
	.quad	7
	.quad	21474836512
s7In_info:
.Lc7OQ:
	movq 56(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,56(%rbp)
	movq %rax,%rbx
	movq $s6yD_info,0(%rbp)
	testq $7,%rbx
	jne s6yD_info
	jmp *(%rbx)
	.size s7In_info, .-s7In_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s7Il_info)+0
	.long	0
	.quad	8
	.quad	21474836496
s7Il_info:
.Lc7P1:
	incq ENT_DYN_THK_ctr
	leaq -80(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7P3
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
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
	movq $s7In_info,-80(%rbp)
	addq $-80,%rbp
	testq $7,%rbx
	jne s7In_info
	jmp *(%rbx)
.Lc7P3:
	jmp *-16(%r13)
	.size s7Il_info, .-s7Il_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_srt-(s7Io_info)+0
	.long	0
	.quad	7
	.quad	21474836512
s7Io_info:
.Lc7Pf:
	addq $80,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Pj
	addq $10,EngineziTerrainziNoise_zdwa_ct+48
	incq ALLOC_HEAP_ctr
	addq $10,ALLOC_HEAP_tot
	movq $s7Il_info,-72(%r12)
	movq 40(%rbp),%rax
	movq %rax,-56(%r12)
	movq 32(%rbp),%rax
	movq %rax,-48(%r12)
	movq %rbx,-40(%r12)
	movq 48(%rbp),%rax
	movq %rax,-32(%r12)
	movq 24(%rbp),%rax
	movq %rax,-24(%r12)
	movq 16(%rbp),%rax
	movq %rax,-16(%r12)
	movq 56(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -72(%r12),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
.Lc7Pj:
	movq $80,192(%r13)
.Lc7Ph:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s7Io_info, .-s7Io_info
.text
	.align 8
	.long	EngineziTerrainziNoise_zdwa_slow-(EngineziTerrainziNoise_zdwa_info)+0
	.long	0
	.quad	7
	.long	EngineziTerrainziNoise_zdwa_srt-(EngineziTerrainziNoise_zdwa_info)+0
	.long	0
	.quad	34359738368
	.quad	0
	.quad	30064771087
.globl EngineziTerrainziNoise_zdwa_info
.type EngineziTerrainziNoise_zdwa_info, @object
EngineziTerrainziNoise_zdwa_info:
.Lc7Pt:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Pv
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_zdwa_ct
	je .Lc7Pw
.Lc7Px:
	incq EngineziTerrainziNoise_zdwa_ct+40
	incq KNOWN_CALL_ctr
	movq %r9,-40(%rbp)
	movq %rsi,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %r14,-16(%rbp)
	movq %rdi,-8(%rbp)
	movl $EngineziTerrainziNoise_simplexNoiseSection2_closure+1,%r14d
	movq $s7Io_info,-48(%rbp)
	addq $-48,%rbp
	jmp randomzm1zi0zi1zi1_SystemziRandom_zdfRandomInt3_info
.Lc7Pv:
	movl $EngineziTerrainziNoise_zdwa_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.Lc7Pw:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_zdwa_ct+56
	movq $EngineziTerrainziNoise_zdwa_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_zdwa_ct
	jmp .Lc7Px
	.size EngineziTerrainziNoise_zdwa_info, .-EngineziTerrainziNoise_zdwa_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_simplexNoiseSection1_srt:
	.quad	EngineziTerrainziNoise_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoiseSection1_closure
.type EngineziTerrainziNoise_simplexNoiseSection1_closure, @object
EngineziTerrainziNoise_simplexNoiseSection1_closure:
	.quad	EngineziTerrainziNoise_simplexNoiseSection1_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7PP_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	115
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	83
	.byte	101
	.byte	99
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	82
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7PS_str:
	.byte	84
	.byte	84
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoiseSection1_ct
.type EngineziTerrainziNoise_simplexNoiseSection1_ct, @object
EngineziTerrainziNoise_simplexNoiseSection1_ct:
	.quad	0
	.quad	6
	.quad	0
	.quad	c7PP_str
	.quad	c7PS_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoiseSection1_srt-(s7PB_info)+0
	.long	0
	.quad	5
	.quad	4294967328
s7PB_info:
.Lc7Q6:
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	movq 16(%rbp),%rax
	movq %rax,40(%rbp)
	movq 8(%rbp),%rsi
	movq 7(%rbx),%rdi
	movq 15(%rbx),%r8
	movq 32(%rbp),%r9
	movq 24(%rbp),%rax
	movq %rax,32(%rbp)
	addq $32,%rbp
	jmp EngineziTerrainziNoise_zdwa_info
	.size s7PB_info, .-s7PB_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoiseSection1_srt-(s7PC_info)+0
	.long	0
	.quad	4
	.quad	4294967328
s7PC_info:
.Lc7Qb:
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 32(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,32(%rbp)
	movq %rax,%rbx
	movq $s7PB_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne s7PB_info
	jmp *(%rbx)
	.size s7PC_info, .-s7PC_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoiseSection1_srt-(EngineziTerrainziNoise_simplexNoiseSection1_info)+0
	.long	0
	.quad	25769803798
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_simplexNoiseSection1_info
.type EngineziTerrainziNoise_simplexNoiseSection1_info, @object
EngineziTerrainziNoise_simplexNoiseSection1_info:
.Lc7Ql:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Qn
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_simplexNoiseSection1_ct
	je .Lc7Qo
.Lc7Qp:
	incq EngineziTerrainziNoise_simplexNoiseSection1_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rdi,-16(%rbp)
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $s7PC_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne s7PC_info
	jmp *(%rbx)
.Lc7Qn:
	movl $EngineziTerrainziNoise_simplexNoiseSection1_closure,%ebx
	jmp *-8(%r13)
.Lc7Qo:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_simplexNoiseSection1_ct+56
	movq $EngineziTerrainziNoise_simplexNoiseSection1_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_simplexNoiseSection1_ct
	jmp .Lc7Qp
	.size EngineziTerrainziNoise_simplexNoiseSection1_info, .-EngineziTerrainziNoise_simplexNoiseSection1_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_simplexNoiseSection_srt:
	.quad	EngineziTerrainziNoise_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoiseSection_closure
.type EngineziTerrainziNoise_simplexNoiseSection_closure, @object
EngineziTerrainziNoise_simplexNoiseSection_closure:
	.quad	EngineziTerrainziNoise_simplexNoiseSection_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7QC_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	115
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	83
	.byte	101
	.byte	99
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	101
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7QF_str:
	.byte	84
	.byte	84
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoiseSection_ct
.type EngineziTerrainziNoise_simplexNoiseSection_ct, @object
EngineziTerrainziNoise_simplexNoiseSection_ct:
	.quad	0
	.quad	6
	.quad	0
	.quad	c7QC_str
	.quad	c7QF_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoiseSection_srt-(EngineziTerrainziNoise_simplexNoiseSection_info)+0
	.long	0
	.quad	25769803798
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_simplexNoiseSection_info
.type EngineziTerrainziNoise_simplexNoiseSection_info, @object
EngineziTerrainziNoise_simplexNoiseSection_info:
.Lc7QK:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_simplexNoiseSection_ct
	je .Lc7QN
.Lc7QP:
	incq EngineziTerrainziNoise_simplexNoiseSection_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziTerrainziNoise_simplexNoiseSection1_info
.Lc7QN:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_simplexNoiseSection_ct+56
	movq $EngineziTerrainziNoise_simplexNoiseSection_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_simplexNoiseSection_ct
	jmp .Lc7QP
	.size EngineziTerrainziNoise_simplexNoiseSection_info, .-EngineziTerrainziNoise_simplexNoiseSection_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_simplexNoise1_srt:
	.quad	base_GHCziFloat_zdfFractionalFloat_closure
	.quad	base_GHCziReal_numericEnumFromThenTo_closure
	.quad	EngineziTerrainziNoise_zdwsimplex3D_closure
	.quad	randomzm1zi0zi1zi1_SystemziRandom_zdfRandomInt3_closure
	.quad	EngineziTerrainziNoise_perm_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoise1_closure
.type EngineziTerrainziNoise_simplexNoise1_closure, @object
EngineziTerrainziNoise_simplexNoise1_closure:
	.quad	EngineziTerrainziNoise_simplexNoise1_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7SE_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	115
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	112
	.byte	83
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7SH_str:
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
.globl EngineziTerrainziNoise_simplexNoise1_ct
.type EngineziTerrainziNoise_simplexNoise1_ct, @object
EngineziTerrainziNoise_simplexNoise1_ct:
	.quad	0
	.quad	6
	.quad	0
	.quad	c7SE_str
	.quad	c7SH_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s6ze_info)+32
	.long	0
	.quad	1
	.quad	4294967313
s6ze_info:
.Lc7SX:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7SZ
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp EngineziTerrainziNoise_perm_info
.Lc7SZ:
	jmp *-16(%r13)
	.size s6ze_info, .-s6ze_info
.text
	.align 8
	.quad	0
	.quad	32
s7R4_info:
.Lc7T7:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Td
	addq $2,EngineziTerrainziNoise_simplexNoise1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	cvtss2sd %xmm0,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7Td:
	movq $16,192(%r13)
.Lc7Tb:
	jmp *-16(%r13)
	.size s7R4_info, .-s7R4_info
.text
	.align 8
	.quad	1
	.quad	17
s6zl_info:
.Lc7Tj:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Tl
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s7R4_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s7R4_info
	jmp *(%rbx)
.Lc7Tl:
	jmp *-16(%r13)
	.size s6zl_info, .-s6zl_info
.text
	.align 8
	.quad	0
	.quad	32
s7R5_info:
.Lc7Tw:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7TC
	addq $2,EngineziTerrainziNoise_simplexNoise1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	decq %rax
	cvtsi2ssq %rax,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7TC:
	movq $16,192(%r13)
.Lc7TA:
	jmp *-16(%r13)
	.size s7R5_info, .-s7R5_info
.text
	.align 8
	.quad	1
	.quad	17
s6zw_info:
.Lc7TJ:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7TL
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s7R5_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s7R5_info
	jmp *(%rbx)
.Lc7TL:
	jmp *-16(%r13)
	.size s6zw_info, .-s6zw_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s6zx_info)+0
	.long	0
	.quad	2
	.quad	12884901907
s6zx_info:
.Lc7TR:
	incq ENT_DYN_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7TT
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc7TV
	addq $3,EngineziTerrainziNoise_simplexNoise1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $s6zw_info,-16(%r12)
	movq 24(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movl $ghczmprim_GHCziClasses_zdfOrdFloat_closure,%r14d
	movl $base_GHCziFloat_zdfFractionalFloat_closure,%esi
	movl $EngineziTerrainziNoise_simplexNoise2_closure+1,%edi
	movq 16(%rbx),%r8
	leaq -16(%r12),%r9
	addq $-16,%rbp
	jmp base_GHCziReal_numericEnumFromThenTo_info
.Lc7TV:
	movq $24,192(%r13)
.Lc7TT:
	jmp *-16(%r13)
	.size s6zx_info, .-s6zx_info
.section .rodata
	.align 8
.align 1
c7U1_str:
	.byte	103
	.byte	111
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	54
	.byte	122
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
	.byte	84
	.byte	101
	.byte	114
	.byte	114
	.byte	97
	.byte	105
	.byte	110
	.byte	46
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c7U4_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
s6zG_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c7U1_str
	.quad	c7U4_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s7R7_info:
.Lc7Ul:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Ur
	addq $2,s6zG_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	cvtss2sd %xmm0,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7Ur:
	movq $16,192(%r13)
.Lc7Up:
	jmp *-16(%r13)
	.size s7R7_info, .-s7R7_info
.text
	.align 8
	.quad	1
	.quad	17
s6zO_info:
.Lc7Ux:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Uz
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s7R7_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s7R7_info
	jmp *(%rbx)
.Lc7Uz:
	jmp *-16(%r13)
	.size s6zO_info, .-s6zO_info
.section .rodata
	.align 8
.align 1
c7UF_str:
	.byte	103
	.byte	111
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	115
	.byte	54
	.byte	65
	.byte	103
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
c7UI_str:
	.byte	76
	.byte	0
.data
	.align 8
.align 1
s6Ag_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	c7UF_str
	.quad	c7UI_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
s7R9_info:
.Lc7V9:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Vf
	addq $2,s6Ag_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movss 7(%rbx),%xmm0
	cvtss2sd %xmm0,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Dzh_con_info,-8(%r12)
	movsd %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7Vf:
	movq $16,192(%r13)
.Lc7Vd:
	jmp *-16(%r13)
	.size s7R9_info, .-s7R9_info
.text
	.align 8
	.quad	1
	.quad	17
s7QZ_info:
.Lc7Vl:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Vn
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s7R9_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s7R9_info
	jmp *(%rbx)
.Lc7Vn:
	jmp *-16(%r13)
	.size s7QZ_info, .-s7QZ_info
.text
	.align 8
	.quad	964
	.quad	32
s6Aa_info:
.Lc7Vu:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7VB
	addq $2,s6Ag_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	cvtsd2ss %xmm5,%xmm0
	movss 8(%rbp),%xmm1
	mulss %xmm0,%xmm1
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm1,0(%r12)
	leaq -7(%r12),%rbx
	addq $40,%rbp
	jmp *0(%rbp)
.Lc7VB:
	movq $16,192(%r13)
	jmp stg_gc_d1
	.size s6Aa_info, .-s6Aa_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s7Ra_info)+16
	.long	0
	.quad	133
	.quad	4294967328
s7Ra_info:
.Lc7VG:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .Lc7VK
	addq $3,s6Ag_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq $s7QZ_info,-16(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	movq $EngineziTerrainziNoise_grad17_closure+1,0(%rbp)
	movq 40(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 32(%rbp),%rdi
	movq 24(%rbp),%r8
	leaq -16(%r12),%r9
	movq $s6Aa_info,8(%rbp)
	jmp EngineziTerrainziNoise_zdwsimplex3D_info
.Lc7VK:
	movq $24,192(%r13)
.Lc7VI:
	jmp *-16(%r13)
	.size s7Ra_info, .-s7Ra_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s7Rb_info)+16
	.long	0
	.quad	5
	.quad	4294967328
s7Rb_info:
.Lc7VO:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $s7Ra_info,0(%rbp)
	testq $7,%rbx
	jne s7Ra_info
	jmp *(%rbx)
	.size s7Rb_info, .-s7Rb_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s7R1_info)+16
	.long	0
	.quad	6
	.quad	4294967312
s7R1_info:
.Lc7VZ:
	incq ENT_DYN_THK_ctr
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7W1
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 56(%rbx),%rax
	movq %rax,-56(%rbp)
	movq 48(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 40(%rbx),%rbx
	movq $s7Rb_info,-64(%rbp)
	addq $-64,%rbp
	testq $7,%rbx
	jne s7Rb_info
	jmp *(%rbx)
.Lc7W1:
	jmp *-16(%r13)
	.size s7R1_info, .-s7R1_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s7R8_info)+16
	.long	0
	.quad	7
	.quad	4294967328
s7R8_info:
.Lc7Wd:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lc7We
	movq 40(%rbp),%rbx
	addq $64,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.Lc7We:
	addq $120,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Wi
	addq $15,s6Ag_ct+48
	incq ALLOC_HEAP_ctr
	addq $15,ALLOC_HEAP_tot
	movq $stg_ap_2_upd_info,-112(%r12)
	movq 8(%rbp),%rax
	movq %rax,-96(%r12)
	movq 14(%rbx),%rax
	movq %rax,-88(%r12)
	movq $s7R1_info,-80(%r12)
	movq 56(%rbp),%rax
	movq %rax,-64(%r12)
	movq 48(%rbp),%rax
	movq %rax,-56(%r12)
	movq 32(%rbp),%rax
	movq %rax,-48(%r12)
	movq 24(%rbp),%rax
	movq %rax,-40(%r12)
	movq 16(%rbp),%rax
	movq %rax,-32(%r12)
	movq 6(%rbx),%rax
	movq %rax,-24(%r12)
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -80(%r12),%rax
	movq %rax,-8(%r12)
	leaq -112(%r12),%rax
	movq %rax,0(%r12)
	leaq -14(%r12),%rbx
	addq $64,%rbp
	jmp *0(%rbp)
.Lc7Wi:
	movq $120,192(%r13)
.Lc7Wg:
	jmp *-16(%r13)
	.size s7R8_info, .-s7R8_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s6Ag_info)+16
	.long	0
	.quad	4294967301
	.quad	6
	.quad	4294967305
s6Ag_info:
.Lc7Wz:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7WB
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s6Ag_ct
	je .Lc7WC
.Lc7WD:
	incq s6Ag_ct+40
	movq %rbx,-56(%rbp)
	movq 47(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 39(%rbx),%rax
	movq %rax,-40(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $s7R8_info,-64(%rbp)
	addq $-64,%rbp
	testq $7,%rbx
	jne s7R8_info
	jmp *(%rbx)
.Lc7WB:
	jmp *-8(%r13)
.Lc7WC:
	movq ticky_entry_ctrs,%rax
	movq %rax,s6Ag_ct+56
	movq $s6Ag_ct,ticky_entry_ctrs
	movq $1,s6Ag_ct
	jmp .Lc7WD
	.size s6Ag_info, .-s6Ag_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s7R6_info)+16
	.long	0
	.quad	6
	.quad	4294967328
s7R6_info:
.Lc7WT:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .Lc7WU
	incq RET_NEW_ctr
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $56,%rbp
	jmp *0(%rbp)
.Lc7WU:
	addq $112,%r12
	cmpq 144(%r13),%r12
	ja .Lc7WY
	addq $14,s6zG_ct+48
	incq ALLOC_HEAP_ctr
	addq $14,ALLOC_HEAP_tot
	movq $stg_ap_2_upd_info,-104(%r12)
	movq 24(%rbp),%rax
	movq %rax,-88(%r12)
	movq 14(%rbx),%rax
	movq %rax,-80(%r12)
	movq $s6zO_info,-72(%r12)
	movq 6(%rbx),%rax
	movq %rax,-56(%r12)
	movq $s6Ag_info,-48(%r12)
	movq 48(%rbp),%rax
	movq %rax,-40(%r12)
	movq 40(%rbp),%rax
	movq %rax,-32(%r12)
	leaq -104(%r12),%rax
	movq %rax,-24(%r12)
	leaq -72(%r12),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -47(%r12),%rbx
	movq 32(%rbp),%r14
	addq $56,%rbp
	jmp s6Ag_info
.Lc7WY:
	movq $112,192(%r13)
.Lc7WW:
	jmp *-16(%r13)
	.size s7R6_info, .-s7R6_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s6zG_info)+16
	.long	0
	.quad	4294967301
	.quad	5
	.quad	4294967305
s6zG_info:
.Lc7Xd:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Xf
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,s6zG_ct
	je .Lc7Xg
.Lc7Xh:
	incq s6zG_ct+40
	movq 39(%rbx),%rax
	movq %rax,-48(%rbp)
	movq 31(%rbx),%rax
	movq %rax,-40(%rbp)
	movq %rbx,-32(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-24(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %r14,%rbx
	movq $s7R6_info,-56(%rbp)
	addq $-56,%rbp
	testq $7,%rbx
	jne s7R6_info
	jmp *(%rbx)
.Lc7Xf:
	jmp *-8(%r13)
.Lc7Xg:
	movq ticky_entry_ctrs,%rax
	movq %rax,s6zG_ct+56
	movq $s6zG_ct,ticky_entry_ctrs
	movq $1,s6zG_ct
	jmp .Lc7Xh
	.size s6zG_info, .-s6zG_info
.text
	.align 8
	.quad	0
	.quad	32
s7Rc_info:
.Lc7Xy:
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .Lc7XE
	addq $2,EngineziTerrainziNoise_simplexNoise1_ct+48
	incq ALLOC_HEAP_ctr
	addq $2,ALLOC_HEAP_tot
	movq 7(%rbx),%rax
	decq %rax
	cvtsi2ssq %rax,%xmm0
	incq RET_NEW_ctr
	movq $ghczmprim_GHCziTypes_Fzh_con_info,-8(%r12)
	movss %xmm0,0(%r12)
	leaq -7(%r12),%rbx
	addq $8,%rbp
	jmp *0(%rbp)
.Lc7XE:
	movq $16,192(%r13)
.Lc7XC:
	jmp *-16(%r13)
	.size s7Rc_info, .-s7Rc_info
.text
	.align 8
	.quad	1
	.quad	17
s6Ap_info:
.Lc7XL:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7XN
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $s7Rc_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne s7Rc_info
	jmp *(%rbx)
.Lc7XN:
	jmp *-16(%r13)
	.size s6Ap_info, .-s6Ap_info
.text
	.align 8
	.quad	1
	.quad	32
s7QV_info:
.Lc7XY:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rsi
	addq $16,%rbp
	jmp EngineziTerrainziNoise_splitInterval_info
	.size s7QV_info, .-s7QV_info
.text
	.align 8
	.quad	2
	.quad	32
s6Ar_info:
.Lc7Y1:
	incq KNOWN_CALL_ctr
	movq %rbx,%r14
	movq 8(%rbp),%rbx
	movq $s7QV_info,8(%rbp)
	addq $8,%rbp
	jmp s6zG_info
	.size s6Ar_info, .-s6Ar_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s7R2_info)+0
	.long	0
	.quad	6
	.quad	98784247824
s7R2_info:
.Lc7Y5:
	incq ENT_DYN_THK_ctr
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7Y7
	addq $152,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Y9
	addq $19,EngineziTerrainziNoise_simplexNoise1_ct+48
	incq ALLOC_HEAP_ctr
	addq $19,ALLOC_HEAP_tot
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq $s6ze_info,-144(%r12)
	movq 16(%rbx),%rax
	movq %rax,-128(%r12)
	movq $s6zl_info,-120(%r12)
	movq 24(%rbx),%rax
	movq %rax,-104(%r12)
	movq $s6zx_info,-96(%r12)
	movq 32(%rbx),%rax
	movq %rax,-80(%r12)
	movq 40(%rbx),%rax
	movq %rax,-72(%r12)
	movq $s6zG_info,-64(%r12)
	leaq -144(%r12),%rax
	movq %rax,-56(%r12)
	leaq -120(%r12),%rax
	movq %rax,-48(%r12)
	leaq -96(%r12),%rax
	movq %rax,-40(%r12)
	movq 48(%rbx),%rax
	movq %rax,-32(%r12)
	movq 56(%rbx),%rax
	movq %rax,-24(%r12)
	movq $s6Ap_info,-16(%r12)
	movq 40(%rbx),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_ctr
	leaq -63(%r12),%rax
	movq %rax,-32(%rbp)
	movq 40(%rbx),%rax
	movq %rax,-24(%rbp)
	movl $ghczmprim_GHCziClasses_zdfOrdFloat_closure,%r14d
	movl $base_GHCziFloat_zdfFractionalFloat_closure,%esi
	movl $EngineziTerrainziNoise_simplexNoise2_closure+1,%edi
	movq 32(%rbx),%r8
	leaq -16(%r12),%r9
	movq $s6Ar_info,-40(%rbp)
	addq $-40,%rbp
	jmp base_GHCziReal_numericEnumFromThenTo_info
.Lc7Y9:
	movq $152,192(%r13)
.Lc7Y7:
	jmp *-16(%r13)
	.size s7R2_info, .-s7R2_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(s7R3_info)+0
	.long	0
	.quad	5
	.quad	98784247840
s7R3_info:
.Lc7Yp:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .Lc7Yt
	addq $8,EngineziTerrainziNoise_simplexNoise1_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $s7R2_info,-56(%r12)
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
	incq RET_UNBOXED_TUP_ctr
	leaq -56(%r12),%rbx
	addq $48,%rbp
	jmp *0(%rbp)
.Lc7Yt:
	movq $64,192(%r13)
.Lc7Yr:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size s7R3_info, .-s7R3_info
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise1_srt-(EngineziTerrainziNoise_simplexNoise1_info)+0
	.long	0
	.quad	25769803798
	.quad	0
	.quad	133143986191
.globl EngineziTerrainziNoise_simplexNoise1_info
.type EngineziTerrainziNoise_simplexNoise1_info, @object
EngineziTerrainziNoise_simplexNoise1_info:
.Lc7YB:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc7YD
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_simplexNoise1_ct
	je .Lc7YE
.Lc7YF:
	incq EngineziTerrainziNoise_simplexNoise1_ct+40
	incq KNOWN_CALL_ctr
	movq %rdi,-40(%rbp)
	movq %r9,-32(%rbp)
	movq %r14,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r8,-8(%rbp)
	movl $EngineziTerrainziNoise_simplexNoise3_closure+1,%r14d
	movq $s7R3_info,-48(%rbp)
	addq $-48,%rbp
	jmp randomzm1zi0zi1zi1_SystemziRandom_zdfRandomInt3_info
.Lc7YD:
	movl $EngineziTerrainziNoise_simplexNoise1_closure,%ebx
	jmp *-8(%r13)
.Lc7YE:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_simplexNoise1_ct+56
	movq $EngineziTerrainziNoise_simplexNoise1_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_simplexNoise1_ct
	jmp .Lc7YF
	.size EngineziTerrainziNoise_simplexNoise1_info, .-EngineziTerrainziNoise_simplexNoise1_info
.section .data
	.align 8
.align 1
EngineziTerrainziNoise_simplexNoise_srt:
	.quad	EngineziTerrainziNoise_simplexNoise1_closure
.data
	.align 8
.align 1
.globl EngineziTerrainziNoise_simplexNoise_closure
.type EngineziTerrainziNoise_simplexNoise_closure, @object
EngineziTerrainziNoise_simplexNoise_closure:
	.quad	EngineziTerrainziNoise_simplexNoise_info
	.quad	0
.section .rodata
	.align 8
.align 1
c7YP_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	46
	.byte	115
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	101
	.byte	120
	.byte	78
	.byte	111
	.byte	105
	.byte	115
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	114
	.byte	102
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
c7YS_str:
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
.globl EngineziTerrainziNoise_simplexNoise_ct
.type EngineziTerrainziNoise_simplexNoise_ct, @object
EngineziTerrainziNoise_simplexNoise_ct:
	.quad	0
	.quad	6
	.quad	0
	.quad	c7YP_str
	.quad	c7YS_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziTerrainziNoise_simplexNoise_srt-(EngineziTerrainziNoise_simplexNoise_info)+0
	.long	0
	.quad	25769803798
	.quad	0
	.quad	4294967311
.globl EngineziTerrainziNoise_simplexNoise_info
.type EngineziTerrainziNoise_simplexNoise_info, @object
EngineziTerrainziNoise_simplexNoise_info:
.Lc7YX:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziTerrainziNoise_simplexNoise_ct
	je .Lc7Z0
.Lc7Z2:
	incq EngineziTerrainziNoise_simplexNoise_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziTerrainziNoise_simplexNoise1_info
.Lc7Z0:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziTerrainziNoise_simplexNoise_ct+56
	movq $EngineziTerrainziNoise_simplexNoise_ct,ticky_entry_ctrs
	movq $1,EngineziTerrainziNoise_simplexNoise_ct
	jmp .Lc7Z2
	.size EngineziTerrainziNoise_simplexNoise_info, .-EngineziTerrainziNoise_simplexNoise_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
