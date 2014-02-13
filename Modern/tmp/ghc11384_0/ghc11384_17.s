.data
	.align 8
.align 1
.globl __stginit_EngineziGraphicsziGraphics
.type __stginit_EngineziGraphicsziGraphics, @object
__stginit_EngineziGraphicsziGraphics:
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_zdwa_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglViewport_closure
	.quad	EngineziGraphicsziGraphics_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_zdwa_closure
.type EngineziGraphicsziGraphics_zdwa_closure, @object
EngineziGraphicsziGraphics_zdwa_closure:
	.quad	EngineziGraphicsziGraphics_zdwa_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPsV_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	36
	.byte	119
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	119
	.byte	48
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPsY_str:
	.byte	105
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_zdwa_ct
.type EngineziGraphicsziGraphics_zdwa_ct, @object
EngineziGraphicsziGraphics_zdwa_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cPsV_str
	.quad	cPsY_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
sPsA_info:
.LcPta:
	movq 8(%rbp),%rax
	movslq %eax,%rcx
	movq 16(%rbp),%rax
	movslq %eax,%rdx
	xorl %edi,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
	.size sPsA_info, .-sPsA_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_zdwa_srt-(EngineziGraphicsziGraphics_zdwa_info)+0
	.long	0
	.quad	12884901897
	.quad	0
	.quad	12884901903
.globl EngineziGraphicsziGraphics_zdwa_info
.type EngineziGraphicsziGraphics_zdwa_info, @object
EngineziGraphicsziGraphics_zdwa_info:
.LcPtg:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPti
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_zdwa_ct
	je .LcPtj
.LcPtk:
	incq EngineziGraphicsziGraphics_zdwa_ct+40
	movq %rsi,%rax
	testq %rsi,%rsi
	jne .LcPtm
	incq KNOWN_CALL_ctr
	movl $1,%esi
	jmp EngineziGraphicsziGraphics_zdwa_info
.LcPti:
	movl $EngineziGraphicsziGraphics_zdwa_closure,%ebx
	jmp *-8(%r13)
.LcPtj:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_zdwa_ct+56
	movq $EngineziGraphicsziGraphics_zdwa_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_zdwa_ct
	jmp .LcPtk
.LcPtm:
	movq %rax,-16(%rbp)
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglViewport_closure,%ebx
	movq $sPsA_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sPsA_info
	jmp *(%rbx)
	.size EngineziGraphicsziGraphics_zdwa_info, .-EngineziGraphicsziGraphics_zdwa_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_resizzeScene1_srt:
	.quad	EngineziGraphicsziGraphics_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_resizzeScene1_closure
.type EngineziGraphicsziGraphics_resizzeScene1_closure, @object
EngineziGraphicsziGraphics_resizzeScene1_closure:
	.quad	EngineziGraphicsziGraphics_resizzeScene1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPtH_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	83
	.byte	99
	.byte	101
	.byte	110
	.byte	101
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	119
	.byte	49
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPtK_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_resizzeScene1_ct
.type EngineziGraphicsziGraphics_resizzeScene1_ct, @object
EngineziGraphicsziGraphics_resizzeScene1_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cPtH_str
	.quad	cPtK_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphics_resizzeScene1_srt-(sPtt_info)+0
	.long	0
	.quad	65
	.quad	4294967328
sPtt_info:
.LcPtY:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	addq $16,%rbp
	jmp EngineziGraphicsziGraphics_zdwa_info
	.size sPtt_info, .-sPtt_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_resizzeScene1_srt-(sPtu_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sPtu_info:
.LcPu1:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sPtt_info,0(%rbp)
	testq $7,%rbx
	jne sPtt_info
	jmp *(%rbx)
	.size sPtu_info, .-sPtu_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_resizzeScene1_srt-(EngineziGraphicsziGraphics_resizzeScene1_info)+0
	.long	0
	.quad	17179869204
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphics_resizzeScene1_info
.type EngineziGraphicsziGraphics_resizzeScene1_info, @object
EngineziGraphicsziGraphics_resizzeScene1_info:
.LcPua:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPuc
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_resizzeScene1_ct
	je .LcPud
.LcPue:
	incq EngineziGraphicsziGraphics_resizzeScene1_ct+40
	movq %rdi,-8(%rbp)
	movq %rsi,%rbx
	movq $sPtu_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPtu_info
	jmp *(%rbx)
.LcPuc:
	movl $EngineziGraphicsziGraphics_resizzeScene1_closure,%ebx
	jmp *-8(%r13)
.LcPud:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_resizzeScene1_ct+56
	movq $EngineziGraphicsziGraphics_resizzeScene1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_resizzeScene1_ct
	jmp .LcPue
	.size EngineziGraphicsziGraphics_resizzeScene1_info, .-EngineziGraphicsziGraphics_resizzeScene1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_resizzeScene_srt:
	.quad	EngineziGraphicsziGraphics_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_resizzeScene_closure
.type EngineziGraphicsziGraphics_resizzeScene_closure, @object
EngineziGraphicsziGraphics_resizzeScene_closure:
	.quad	EngineziGraphicsziGraphics_resizzeScene_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPur_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	83
	.byte	99
	.byte	101
	.byte	110
	.byte	101
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	119
	.byte	53
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPuu_str:
	.byte	83
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_resizzeScene_ct
.type EngineziGraphicsziGraphics_resizzeScene_ct, @object
EngineziGraphicsziGraphics_resizzeScene_ct:
	.quad	0
	.quad	4
	.quad	0
	.quad	cPur_str
	.quad	cPuu_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphics_resizzeScene_srt-(EngineziGraphicsziGraphics_resizzeScene_info)+0
	.long	0
	.quad	17179869204
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphics_resizzeScene_info
.type EngineziGraphicsziGraphics_resizzeScene_info, @object
EngineziGraphicsziGraphics_resizzeScene_info:
.LcPuz:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_resizzeScene_ct
	je .LcPuC
.LcPuE:
	incq EngineziGraphicsziGraphics_resizzeScene_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphics_resizzeScene1_info
.LcPuC:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_resizzeScene_ct+56
	movq $EngineziGraphicsziGraphics_resizzeScene_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_resizzeScene_ct
	jmp .LcPuE
	.size EngineziGraphicsziGraphics_resizzeScene_info, .-EngineziGraphicsziGraphics_resizzeScene_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_initGL1_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglHint_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnable_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDepthFunc_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCullFace_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClearDepth_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClearColor_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglShadeModel_closure
	.quad	EngineziGraphicsziGraphics_zdwa_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_initGL1_closure
.type EngineziGraphicsziGraphics_initGL1_closure, @object
EngineziGraphicsziGraphics_initGL1_closure:
	.quad	EngineziGraphicsziGraphics_initGL1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPw9_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	71
	.byte	76
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	119
	.byte	51
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPwc_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_initGL1_ct
.type EngineziGraphicsziGraphics_initGL1_ct, @object
EngineziGraphicsziGraphics_initGL1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cPw9_str
	.quad	cPwc_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuH_info)+64
	.long	0
	.quad	1
	.quad	4294967328
sPuH_info:
.LcPxf:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	movq 15(%rbx),%rdi
	addq $16,%rbp
	jmp EngineziGraphicsziGraphics_resizzeScene1_info
	.size sPuH_info, .-sPuH_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuI_info)+64
	.long	0
	.quad	1
	.quad	4294967328
sPuI_info:
.LcPxi:
	movq $sPuH_info,0(%rbp)
	testq $7,%rbx
	jne sPuH_info
	jmp *(%rbx)
	.size sPuI_info, .-sPuI_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuK_info)+64
	.long	0
	.quad	1
	.quad	4294967328
sPuK_info:
.LcPxo:
	movl $3553,%edi
	movl $10243,%esi
	movl $33071,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sPuI_info,0(%rbp)
	jmp GLFWzmbzm1zi4zi6_GraphicsziUIziGLFW_getFramebufferSizze1_info
	.size sPuK_info, .-sPuK_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuM_info)+0
	.long	0
	.quad	1
	.quad	1103806595104
sPuM_info:
.LcPxs:
	movl $3553,%edi
	movl $10242,%esi
	movl $33071,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $sPuK_info,0(%rbp)
	testq $7,%rbx
	jne sPuK_info
	jmp *(%rbx)
	.size sPuM_info, .-sPuM_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuO_info)+0
	.long	0
	.quad	1
	.quad	1103806595104
sPuO_info:
.LcPxz:
	movl $3553,%edi
	movl $10241,%esi
	movl $9728,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $sPuM_info,0(%rbp)
	testq $7,%rbx
	jne sPuM_info
	jmp *(%rbx)
	.size sPuO_info, .-sPuO_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuQ_info)+0
	.long	0
	.quad	1
	.quad	1103806595104
sPuQ_info:
.LcPxG:
	movl $3553,%edi
	movl $10240,%esi
	movl $9728,%edx
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $sPuO_info,0(%rbp)
	testq $7,%rbx
	jne sPuO_info
	jmp *(%rbx)
	.size sPuQ_info, .-sPuQ_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuS_info)+0
	.long	0
	.quad	1
	.quad	1103806595104
sPuS_info:
.LcPxN:
	movl $5890,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglTexParameteri_closure,%ebx
	movq $sPuQ_info,0(%rbp)
	testq $7,%rbx
	jne sPuQ_info
	jmp *(%rbx)
	.size sPuS_info, .-sPuS_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuU_info)+0
	.long	0
	.quad	1
	.quad	1120986464288
sPuU_info:
.LcPxU:
	movl $1029,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnable_closure,%ebx
	movq $sPuS_info,0(%rbp)
	testq $7,%rbx
	jne sPuS_info
	jmp *(%rbx)
	.size sPuU_info, .-sPuU_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuW_info)+0
	.long	0
	.quad	1
	.quad	1189705941024
sPuW_info:
.LcPy1:
	movl $2884,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglCullFace_closure,%ebx
	movq $sPuU_info,0(%rbp)
	testq $7,%rbx
	jne sPuU_info
	jmp *(%rbx)
	.size sPuW_info, .-sPuW_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPuY_info)+0
	.long	0
	.quad	1
	.quad	1189705941024
sPuY_info:
.LcPy8:
	movl $3152,%edi
	movl $4354,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnable_closure,%ebx
	movq $sPuW_info,0(%rbp)
	testq $7,%rbx
	jne sPuW_info
	jmp *(%rbx)
	.size sPuY_info, .-sPuY_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPv0_info)+0
	.long	0
	.quad	1
	.quad	1198295875616
sPv0_info:
.LcPyf:
	movl $515,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglHint_closure,%ebx
	movq $sPuY_info,0(%rbp)
	testq $7,%rbx
	jne sPuY_info
	jmp *(%rbx)
	.size sPv0_info, .-sPv0_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPv2_info)+0
	.long	0
	.quad	1
	.quad	1232655613984
sPv2_info:
.LcPym:
	movl $2929,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDepthFunc_closure,%ebx
	movq $sPv0_info,0(%rbp)
	testq $7,%rbx
	jne sPv0_info
	jmp *(%rbx)
	.size sPv2_info, .-sPv2_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPv4_info)+0
	.long	0
	.quad	1
	.quad	1232655613984
sPv4_info:
.LcPyt:
	movsd .LnPyx(%rip),%xmm0
	subq $8,%rsp
	movl $1,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglEnable_closure,%ebx
	movq $sPv2_info,0(%rbp)
	testq $7,%rbx
	jne sPv2_info
	jmp *(%rbx)
	.size sPv4_info, .-sPv4_info
.section .rodata
	.align 8
.align 8
.LnPyx:
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
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPv6_info)+0
	.long	0
	.quad	1
	.quad	1370094567456
sPv6_info:
.LcPyB:
	xorps %xmm0,%xmm0
	xorps %xmm1,%xmm1
	xorps %xmm2,%xmm2
	xorps %xmm3,%xmm3
	subq $8,%rsp
	movl $4,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClearDepth_closure,%ebx
	movq $sPv4_info,0(%rbp)
	testq $7,%rbx
	jne sPv4_info
	jmp *(%rbx)
	.size sPv6_info, .-sPv6_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(sPv8_info)+0
	.long	0
	.quad	1
	.quad	1644972474400
sPv8_info:
.LcPyI:
	movl $7425,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglClearColor_closure,%ebx
	movq $sPv6_info,0(%rbp)
	testq $7,%rbx
	jne sPv6_info
	jmp *(%rbx)
	.size sPv8_info, .-sPv8_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL1_srt-(EngineziGraphicsziGraphics_initGL1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	2194728288271
.globl EngineziGraphicsziGraphics_initGL1_info
.type EngineziGraphicsziGraphics_initGL1_info, @object
EngineziGraphicsziGraphics_initGL1_info:
.LcPyP:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPyR
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_initGL1_ct
	je .LcPyS
.LcPyT:
	incq EngineziGraphicsziGraphics_initGL1_ct+40
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglShadeModel_closure,%ebx
	movq $sPv8_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPv8_info
	jmp *(%rbx)
.LcPyR:
	movl $EngineziGraphicsziGraphics_initGL1_closure,%ebx
	jmp *-8(%r13)
.LcPyS:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_initGL1_ct+56
	movq $EngineziGraphicsziGraphics_initGL1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_initGL1_ct
	jmp .LcPyT
	.size EngineziGraphicsziGraphics_initGL1_info, .-EngineziGraphicsziGraphics_initGL1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_initGL_srt:
	.quad	EngineziGraphicsziGraphics_initGL1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_initGL_closure
.type EngineziGraphicsziGraphics_initGL_closure, @object
EngineziGraphicsziGraphics_initGL_closure:
	.quad	EngineziGraphicsziGraphics_initGL_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPz6_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	71
	.byte	76
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	119
	.byte	55
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPz9_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_initGL_ct
.type EngineziGraphicsziGraphics_initGL_ct, @object
EngineziGraphicsziGraphics_initGL_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cPz6_str
	.quad	cPz9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphics_initGL_srt-(EngineziGraphicsziGraphics_initGL_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphics_initGL_info
.type EngineziGraphicsziGraphics_initGL_info, @object
EngineziGraphicsziGraphics_initGL_info:
.LcPze:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_initGL_ct
	je .LcPzh
.LcPzj:
	incq EngineziGraphicsziGraphics_initGL_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphics_initGL1_info
.LcPzh:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_initGL_ct+56
	movq $EngineziGraphicsziGraphics_initGL_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_initGL_ct
	jmp .LcPzj
	.size EngineziGraphicsziGraphics_initGL_info, .-EngineziGraphicsziGraphics_initGL_info
.section .data
	.align 8
.align 1
rPg8_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteBuffers_closure
.data
	.align 8
.align 1
rPg8_closure:
	.quad	rPg8_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPzB_str:
	.byte	36
	.byte	119
	.byte	97
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	80
	.byte	103
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cPzE_str:
	.byte	105
	.byte	105
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rPg8_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cPzB_str
	.quad	cPzE_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	194
	.quad	32
sPzo_info:
.LcPzO:
	movq 16(%rbp),%rax
	movslq %eax,%rdi
	movq 8(%rbp),%rsi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $24,%rbp
	jmp *0(%rbp)
	.size sPzo_info, .-sPzo_info
.text
	.align 8
	.long	rPg8_srt-(rPg8_info)+0
	.long	0
	.quad	12884901897
	.quad	0
	.quad	4294967311
rPg8_info:
.LcPzZ:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPA1
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rPg8_ct
	je .LcPA2
.LcPA3:
	incq rPg8_ct+40
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteBuffers_closure,%ebx
	movq $sPzo_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sPzo_info
	jmp *(%rbx)
.LcPA1:
	movl $rPg8_closure,%ebx
	jmp *-8(%r13)
.LcPA2:
	movq ticky_entry_ctrs,%rax
	movq %rax,rPg8_ct+56
	movq $rPg8_ct,ticky_entry_ctrs
	movq $1,rPg8_ct
	jmp .LcPA3
	.size rPg8_info, .-rPg8_info
.section .data
	.align 8
.align 1
rPg9_srt:
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteBuffers_closure
.data
	.align 8
.align 1
rPg9_closure:
	.quad	rPg9_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPAo_str:
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	80
	.byte	103
	.byte	57
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cPAr_str:
	.byte	83
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rPg9_ct:
	.quad	0
	.quad	3
	.quad	0
	.quad	cPAo_str
	.quad	cPAr_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rPg9_srt-(sPAa_info)+0
	.long	0
	.quad	65
	.quad	4294967328
sPAa_info:
.LcPAF:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 7(%rbx),%rsi
	addq $16,%rbp
	jmp rPg8_info
	.size sPAa_info, .-sPAa_info
.text
	.align 8
	.long	rPg9_srt-(sPAb_info)+0
	.long	0
	.quad	1
	.quad	4294967328
sPAb_info:
.LcPAI:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,8(%rbp)
	movq %rax,%rbx
	movq $sPAa_info,0(%rbp)
	testq $7,%rbx
	jne sPAa_info
	jmp *(%rbx)
	.size sPAb_info, .-sPAb_info
.text
	.align 8
	.long	rPg9_srt-(rPg9_info)+0
	.long	0
	.quad	12884901900
	.quad	0
	.quad	4294967311
rPg9_info:
.LcPAR:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPAT
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rPg9_ct
	je .LcPAU
.LcPAV:
	incq rPg9_ct+40
	movq %rsi,-8(%rbp)
	movq %r14,%rbx
	movq $sPAb_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPAb_info
	jmp *(%rbx)
.LcPAT:
	movl $rPg9_closure,%ebx
	jmp *-8(%r13)
.LcPAU:
	movq ticky_entry_ctrs,%rax
	movq %rax,rPg9_ct+56
	movq $rPg9_ct,ticky_entry_ctrs
	movq $1,rPg9_ct
	jmp .LcPAV
	.size rPg9_info, .-rPg9_info
.data
	.align 8
.align 1
rPga_closure:
	.quad	rPga_info
.section .rodata
	.align 8
.align 1
cPBd_str:
	.byte	108
	.byte	118
	.byte	108
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	80
	.byte	103
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cPBg_str:
	.byte	83
	.byte	0
.data
	.align 8
.align 1
rPga_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cPBd_str
	.quad	cPBg_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sPB3_info:
.LcPBq:
	movq 15(%rbx),%rbx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sPB3_info, .-sPB3_info
.text
	.align 8
	.quad	4294967301
	.quad	0
	.quad	15
rPga_info:
.LcPBu:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPBw
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rPga_ct
	je .LcPBx
.LcPBy:
	incq rPga_ct+40
	movq %r14,%rbx
	movq $sPB3_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPB3_info
	jmp *(%rbx)
.LcPBw:
	movl $rPga_closure,%ebx
	jmp *-8(%r13)
.LcPBx:
	movq ticky_entry_ctrs,%rax
	movq %rax,rPga_ct+56
	movq $rPga_ct,ticky_entry_ctrs
	movq $1,rPga_ct
	jmp .LcPBy
	.size rPga_info, .-rPga_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_cleanupObjects1_srt:
	.quad	base_ForeignziMarshalziArray_withArrayLen_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteProgram_closure
	.quad	EngineziObjectziGameObject_getModel1_closure
	.quad	EngineziGraphicsziGraphics_cleanupObjects1_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteBuffers_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_cleanupObjects1_closure
.type EngineziGraphicsziGraphics_cleanupObjects1_closure, @object
EngineziGraphicsziGraphics_cleanupObjects1_closure:
	.quad	EngineziGraphicsziGraphics_cleanupObjects1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPDN_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	99
	.byte	108
	.byte	101
	.byte	97
	.byte	110
	.byte	117
	.byte	112
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	115
	.byte	49
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	119
	.byte	52
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPDP_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_cleanupObjects1_ct
.type EngineziGraphicsziGraphics_cleanupObjects1_ct, @object
EngineziGraphicsziGraphics_cleanupObjects1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cPDN_str
	.quad	cPDP_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.quad	0
	.quad	32
sPCf_info:
.LcPDY:
	incq KNOWN_CALL_ctr
	movl $rPga_closure+1,%r14d
	movq 15(%rbx),%rsi
	addq $8,%rbp
	jmp base_GHCziBase_map_info
	.size sPCf_info, .-sPCf_info
.text
	.align 8
	.quad	0
	.quad	32
sPCo_info:
.LcPE5:
	incq KNOWN_CALL_ctr
	movl $rPga_closure+1,%r14d
	movq 15(%rbx),%rsi
	addq $8,%rbp
	jmp base_GHCziBase_map_info
	.size sPCo_info, .-sPCo_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPC6_info)+16
	.long	0
	.quad	0
	.quad	4294967328
sPC6_info:
.LcPEa:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcPEf
	movl $EngineziObjectziGameObject_getModel1_closure,%ebx
	addq $8,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcPEb:
	movq 21(%rbx),%rbx
	movq $sPCo_info,0(%rbp)
	testq $7,%rbx
	jne sPCo_info
	jmp *(%rbx)
.LcPEf:
	cmpq $3,%rax
	jae .LcPEb
	movq 22(%rbx),%rbx
	movq $sPCf_info,0(%rbp)
	testq $7,%rbx
	jne sPCf_info
	jmp *(%rbx)
	.size sPC6_info, .-sPC6_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPBH_info)+16
	.long	0
	.quad	1
	.quad	4294967313
sPBH_info:
.LcPEp:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPEr
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rbx
	movq $sPC6_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sPC6_info
	jmp *(%rbx)
.LcPEr:
	jmp *-16(%r13)
	.size sPBH_info, .-sPBH_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPCw_info)+24
	.long	0
	.quad	130
	.quad	4294967328
sPCw_info:
.LcPEy:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	addq $24,%rbp
	jmp EngineziGraphicsziGraphics_cleanupObjects1_info
	.size sPCw_info, .-sPCw_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPkb_info)+0
	.long	0
	.quad	67
	.quad	124554051616
sPkb_info:
.LcPEB:
	addq $24,%r12
	cmpq 144(%r13),%r12
	ja .LcPEF
	addq $3,EngineziGraphicsziGraphics_cleanupObjects1_ct+48
	incq ALLOC_HEAP_ctr
	addq $3,ALLOC_HEAP_tot
	movq %rbx,%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movq $sPBH_info,-16(%r12)
	movq 24(%rbp),%rax
	movq %rax,0(%r12)
	incq KNOWN_CALL_EXTRA_ARGS_ctr
	movq $stg_ap_v_info,0(%rbp)
	movl $base_ForeignziCziTypes_zdfStorableCUInt_closure,%r14d
	leaq -16(%r12),%rsi
	movl $rPg9_closure+3,%edi
	movq $sPCw_info,8(%rbp)
	jmp base_ForeignziMarshalziArray_withArrayLen_info
.LcPEF:
	movq $24,192(%r13)
.LcPED:
	movq $sPkb_info,0(%rbp)
	movq $255,64(%r13)
	jmp stg_gc_ut
	.size sPkb_info, .-sPkb_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPCy_info)+0
	.long	0
	.quad	67
	.quad	124554051616
sPCy_info:
.LcPEU:
	movq 7(%rbx),%rbx
	jmp sPkb_info
	.size sPCy_info, .-sPCy_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPCz_info)+0
	.long	0
	.quad	67
	.quad	124554051616
sPCz_info:
.LcPEX:
	movq 7(%rbx),%rbx
	movq $sPCy_info,0(%rbp)
	testq $7,%rbx
	jne sPCy_info
	jmp *(%rbx)
	.size sPCz_info, .-sPCz_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPCA_info)+0
	.long	0
	.quad	67
	.quad	124554051616
sPCA_info:
.LcPFb:
	movq 7(%rbx),%rbx
	jmp sPkb_info
	.size sPCA_info, .-sPCA_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPCB_info)+0
	.long	0
	.quad	67
	.quad	124554051616
sPCB_info:
.LcPFe:
	movq 7(%rbx),%rbx
	movq $sPCA_info,0(%rbp)
	testq $7,%rbx
	jne sPCA_info
	jmp *(%rbx)
	.size sPCB_info, .-sPCB_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPCx_info)+0
	.long	0
	.quad	67
	.quad	124554051616
sPCx_info:
.LcPFm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcPFr
	movl $EngineziObjectziGameObject_getModel1_closure,%ebx
	addq $32,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
.LcPFn:
	movq 21(%rbx),%rbx
	movq $sPCB_info,0(%rbp)
	testq $7,%rbx
	jne sPCB_info
	jmp *(%rbx)
.LcPFr:
	cmpq $3,%rax
	jae .LcPFn
	movq 22(%rbx),%rbx
	movq $sPCz_info,0(%rbp)
	testq $7,%rbx
	jne sPCz_info
	jmp *(%rbx)
	.size sPCx_info, .-sPCx_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPC8_info)+0
	.long	0
	.quad	2
	.quad	124554051616
sPC8_info:
.LcPFz:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rbx
	movq $sPCx_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPCx_info
	jmp *(%rbx)
	.size sPC8_info, .-sPC8_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(sPBG_info)+0
	.long	0
	.quad	0
	.quad	133143986208
sPBG_info:
.LcPFI:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcPFJ
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $8,%rbp
	jmp *0(%rbp)
.LcPFJ:
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDeleteProgram_closure,%ebx
	movq $sPC8_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPC8_info
	jmp *(%rbx)
	.size sPBG_info, .-sPBG_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects1_srt-(EngineziGraphicsziGraphics_cleanupObjects1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	133143986191
.globl EngineziGraphicsziGraphics_cleanupObjects1_info
.type EngineziGraphicsziGraphics_cleanupObjects1_info, @object
EngineziGraphicsziGraphics_cleanupObjects1_info:
.LcPFU:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPFW
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_cleanupObjects1_ct
	je .LcPFX
.LcPFY:
	incq EngineziGraphicsziGraphics_cleanupObjects1_ct+40
	movq %r14,%rbx
	movq $sPBG_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPBG_info
	jmp *(%rbx)
.LcPFW:
	movl $EngineziGraphicsziGraphics_cleanupObjects1_closure,%ebx
	jmp *-8(%r13)
.LcPFX:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_cleanupObjects1_ct+56
	movq $EngineziGraphicsziGraphics_cleanupObjects1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_cleanupObjects1_ct
	jmp .LcPFY
	.size EngineziGraphicsziGraphics_cleanupObjects1_info, .-EngineziGraphicsziGraphics_cleanupObjects1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_cleanupObjects_srt:
	.quad	EngineziGraphicsziGraphics_cleanupObjects1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_cleanupObjects_closure
.type EngineziGraphicsziGraphics_cleanupObjects_closure, @object
EngineziGraphicsziGraphics_cleanupObjects_closure:
	.quad	EngineziGraphicsziGraphics_cleanupObjects_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPGb_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	99
	.byte	108
	.byte	101
	.byte	97
	.byte	110
	.byte	117
	.byte	112
	.byte	79
	.byte	98
	.byte	106
	.byte	101
	.byte	99
	.byte	116
	.byte	115
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	79
	.byte	119
	.byte	56
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPGe_str:
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_cleanupObjects_ct
.type EngineziGraphicsziGraphics_cleanupObjects_ct, @object
EngineziGraphicsziGraphics_cleanupObjects_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cPGb_str
	.quad	cPGe_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphics_cleanupObjects_srt-(EngineziGraphicsziGraphics_cleanupObjects_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphics_cleanupObjects_info
.type EngineziGraphicsziGraphics_cleanupObjects_info, @object
EngineziGraphicsziGraphics_cleanupObjects_info:
.LcPGj:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_cleanupObjects_ct
	je .LcPGm
.LcPGo:
	incq EngineziGraphicsziGraphics_cleanupObjects_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphics_cleanupObjects1_info
.LcPGm:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_cleanupObjects_ct+56
	movq $EngineziGraphicsziGraphics_cleanupObjects_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_cleanupObjects_ct
	jmp .LcPGo
	.size EngineziGraphicsziGraphics_cleanupObjects_info, .-EngineziGraphicsziGraphics_cleanupObjects_info
.data
	.align 8
.align 1
rPgb_closure:
	.quad	rPgb_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cPGA_str:
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	0
.text
	.align 8
	.quad	0
	.quad	22
rPgb_info:
.LcPGE:
	incq ENT_STATIC_THK_ctr
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPGG
	addq $16,%r12
	cmpq 144(%r13),%r12
	ja .LcPGI
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
	je .LcPGJ
.LcPGK:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -8(%r12),%rax
	movq %rax,-8(%rbp)
	incq KNOWN_CALL_ctr
	movl $cPGA_str,%r14d
	addq $-16,%rbp
	jmp ghczmprim_GHCziCString_unpackCStringzh_info
.LcPGI:
	movq $16,192(%r13)
.LcPGG:
	jmp *-16(%r13)
.LcPGJ:
	jmp *(%rbx)
	.size rPgb_info, .-rPgb_info
.section .data
	.align 8
.align 1
rPgc_srt:
	.quad	base_GHCziReal_zdfNumRatio3_closure
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	base_GHCziReal_zdwzdczs_closure
	.quad	base_DataziFixed_zdfHasResolutionE7_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPopMatrix_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPushMatrix_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglTranslatef_closure
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
	.quad	EngineziGraphicsziShaders_setShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_disableShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_bindTextures1_closure
	.quad	EngineziCoreziWorld_pentityModel1_closure
	.quad	rPgb_closure
	.quad	rPgc_closure
.data
	.align 8
.align 1
rPgc_closure:
	.quad	rPgc_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPL7_str:
	.byte	36
	.byte	115
	.byte	97
	.byte	123
	.byte	118
	.byte	32
	.byte	114
	.byte	80
	.byte	103
	.byte	99
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cPL9_str:
	.byte	77
	.byte	76
	.byte	76
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	69
	.byte	83
	.byte	76
	.byte	65
	.byte	0
.data
	.align 8
.align 1
rPgc_ct:
	.quad	0
	.quad	11
	.quad	5
	.quad	cPL7_str
	.quad	cPL9_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
rPgc_slow:
.LcPLc:
	movq 0(%rbp),%r14
	movq 8(%rbp),%rsi
	movq 16(%rbp),%rdi
	movq 24(%rbp),%r8
	movq 32(%rbp),%r9
	addq $40,%rbp
	jmp rPgc_info
	.size rPgc_slow, .-rPgc_slow
.section .rodata
	.align 8
.align 1
cPLf_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	80
	.byte	109
	.byte	111
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cPLi_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sPmo_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cPLf_str
	.quad	cPLi_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	rPgc_srt-(sPHf_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sPHf_info:
.LcPLu:
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq %rbx,%r14
	addq $8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sPHf_info, .-sPHf_info
.text
	.align 8
	.long	rPgc_srt-(sPml_info)+0
	.long	0
	.quad	1
	.quad	64424509457
sPml_info:
.LcPLy:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPLA
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movl $base_GHCziReal_zdfNumRatio3_closure,%esi
	movl $base_DataziFixed_zdfHasResolutionE7_closure,%edi
	movl $base_GHCziReal_zdfNumRatio3_closure,%r8d
	movq $sPHf_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziReal_zdwzdczs_info
.LcPLA:
	jmp *-16(%r13)
	.size sPml_info, .-sPml_info
.text
	.align 8
	.long	rPgc_srt-(sPmo_info)+0
	.long	0
	.quad	4294967299
	.quad	1
	.quad	64424509450
sPmo_info:
.LcPLE:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcPLI
	addq $6,sPmo_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sPmo_ct
	je .LcPLJ
.LcPLK:
	incq sPmo_ct+40
	movq $sPml_info,-40(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcPLI:
	movq $48,192(%r13)
.LcPLG:
	jmp *-8(%r13)
.LcPLJ:
	movq ticky_entry_ctrs,%rax
	movq %rax,sPmo_ct+56
	movq $sPmo_ct,ticky_entry_ctrs
	movq $1,sPmo_ct
	jmp .LcPLK
	.size sPmo_info, .-sPmo_info
.text
	.align 8
	.long	rPgc_srt-(sPHv_info)+136
	.long	0
	.quad	139
	.quad	4294967328
sPHv_info:
.LcPM1:
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq 40(%rbp),%rsi
	movq 88(%rbp),%rdi
	movq 8(%rbp),%rax
	movq %rax,88(%rbp)
	movq 32(%rbp),%r8
	movq 24(%rbp),%r9
	addq $56,%rbp
	jmp rPgc_info
	.size sPHv_info, .-sPHv_info
.text
	.align 8
	.long	rPgc_srt-(sPHx_info)+64
	.long	0
	.quad	139
	.quad	2203318222880
sPHx_info:
.LcPM6:
	xorl %edi,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPopMatrix_closure,%ebx
	movq $sPHv_info,0(%rbp)
	testq $7,%rbx
	jne sPHv_info
	jmp *(%rbx)
	.size sPHx_info, .-sPHx_info
.text
	.align 8
	.long	rPgc_srt-(sPHy_info)+32
	.long	0
	.quad	139
	.quad	35257386532896
sPHy_info:
.LcPMd:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sPHx_info,0(%rbp)
	testq $7,%rbx
	jne sPHx_info
	jmp *(%rbx)
	.size sPHy_info, .-sPHy_info
.text
	.align 8
	.long	rPgc_srt-(sPna_info)+32
	.long	0
	.quad	653
	.quad	37456409788448
sPna_info:
.LcPMj:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq $sPHy_info,16(%rbp)
	addq $16,%rbp
	jmp EngineziGraphicsziShaders_disableShaderAttribs1_info
	.size sPna_info, .-sPna_info
.text
	.align 8
	.long	rPgc_srt-(sPHE_info)+32
	.long	0
	.quad	653
	.quad	37456409788448
sPHE_info:
.LcPMv:
	movl $3553,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	jmp sPna_info
	.size sPHE_info, .-sPHE_info
.text
	.align 8
	.long	rPgc_srt-(sPHG_info)+32
	.long	0
	.quad	653
	.quad	37473589657632
sPHG_info:
.LcPMz:
	movl $33984,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $sPHE_info,0(%rbp)
	testq $7,%rbx
	jne sPHE_info
	jmp *(%rbx)
	.size sPHG_info, .-sPHG_info
.text
	.align 8
	.long	rPgc_srt-(sPnb_info)+32
	.long	0
	.quad	653
	.quad	37507949396000
sPnb_info:
.LcPMG:
	movl %ebx,%eax
	xorl %ebx,%ebx
	cmpq %rax,%rbx
	jb .LcPMI
	jmp sPna_info
.LcPMI:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $sPHG_info,0(%rbp)
	testq $7,%rbx
	jne sPHG_info
	jmp *(%rbx)
	.size sPnb_info, .-sPnb_info
.text
	.align 8
	.long	rPgc_srt-(sPHA_info)+32
	.long	0
	.quad	1294
	.quad	37507949396000
sPHA_info:
.LcPMQ:
	movq 40(%rbp),%rdx
	movl $4,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	xorl %esi,%esi
	movq $sPnb_info,8(%rbp)
	addq $8,%rbp
	jmp base_GHCziList_zdwlen_info
	.size sPHA_info, .-sPHA_info
.text
	.align 8
	.long	rPgc_srt-(sPHB_info)+32
	.long	0
	.quad	1294
	.quad	37516539330592
sPHB_info:
.LcPMV:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure,%ebx
	movq $sPHA_info,0(%rbp)
	testq $7,%rbx
	jne sPHA_info
	jmp *(%rbx)
	.size sPHB_info, .-sPHB_info
.text
	.align 8
	.long	rPgc_srt-(sPHg_info)+0
	.long	0
	.quad	2575
	.quad	890600123531296
sPHg_info:
.LcPN1:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcPN5
	addq $8,rPgc_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $sPmo_info,-56(%r12)
	movq 88(%rbp),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-40(%r12)
	movq $rPgb_closure,-32(%r12)
	leaq -55(%r12),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	leaq -14(%r12),%rsi
	movq $sPHB_info,8(%rbp)
	addq $8,%rbp
	jmp EngineziGraphicsziShaders_setUniforms1_info
.LcPN5:
	movq $64,192(%r13)
.LcPN3:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sPHg_info, .-sPHg_info
.text
	.align 8
	.long	rPgc_srt-(sPHh_info)+0
	.long	0
	.quad	2575
	.quad	960968867708960
sPHh_info:
.LcPNb:
	incq KNOWN_CALL_ctr
	movq 16(%rbp),%r14
	movq 8(%rbp),%rsi
	movq $sPHg_info,0(%rbp)
	jmp EngineziGraphicsziShaders_bindTextures1_info
	.size sPHh_info, .-sPHh_info
.text
	.align 8
	.long	rPgc_srt-(sPHi_info)+0
	.long	0
	.quad	2575
	.quad	960968867708960
sPHi_info:
.LcPNe:
	incq KNOWN_CALL_ctr
	movq 8(%rbp),%r14
	movq 120(%rbp),%rsi
	movq $sPHh_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setUniforms1_info
	.size sPHi_info, .-sPHi_info
.text
	.align 8
	.long	rPgc_srt-(sPHk_info)+0
	.long	0
	.quad	2575
	.quad	978561053753376
sPHk_info:
.LcPNh:
	movq 32(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 48(%rbp),%rcx
	call *%rcx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,48(%rbp)
	movq 24(%rbp),%r14
	movq $sPHi_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setShaderAttribs1_info
	.size sPHk_info, .-sPHk_info
.text
	.align 8
	.long	rPgc_srt-(sPm1_info)+0
	.long	0
	.quad	1038
	.quad	978561053753376
sPm1_info:
.LcPNn:
	movq %rbx,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sPHk_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPHk_info
	jmp *(%rbx)
	.size sPm1_info, .-sPm1_info
.text
	.align 8
	.long	rPgc_srt-(sPHl_info)+0
	.long	0
	.quad	139
	.quad	978561053753376
sPHl_info:
.LcPNw:
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPm1_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sPm1_info
	jmp *(%rbx)
	.size sPHl_info, .-sPHl_info
.text
	.align 8
	.long	rPgc_srt-(sPH3_info)+0
	.long	0
	.quad	139
	.quad	1119298542108704
sPH3_info:
.LcPNG:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcPNH
	movq 22(%rbx),%rbx
	movq $sPHl_info,0(%rbp)
	testq $7,%rbx
	jne sPHl_info
	jmp *(%rbx)
.LcPNH:
	movl $EngineziCoreziWorld_pentityModel1_closure,%ebx
	addq $96,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sPH3_info, .-sPH3_info
.text
	.align 8
	.long	rPgc_srt-(sPH4_info)+0
	.long	0
	.quad	11
	.quad	1119298542108704
sPH4_info:
.LcPNQ:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,16(%rbp)
	movq %rax,%rbx
	movq $sPH3_info,0(%rbp)
	testq $7,%rbx
	jne sPH3_info
	jmp *(%rbx)
	.size sPH4_info, .-sPH4_info
.text
	.align 8
	.long	rPgc_srt-(sPnx_info)+0
	.long	0
	.quad	76
	.quad	1119298542108704
sPnx_info:
.LcPNZ:
	movss %xmm1,%xmm0
	movss %xmm2,%xmm1
	movss %xmm3,%xmm2
	subq $8,%rsp
	movl $3,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sPH4_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sPH4_info
	jmp *(%rbx)
	.size sPnx_info, .-sPnx_info
.text
	.align 8
	.long	rPgc_srt-(sPHH_info)+0
	.long	0
	.quad	462
	.quad	1119298542108704
sPHH_info:
.LcPOp:
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $16,%rbp
	jmp sPnx_info
	.size sPHH_info, .-sPHH_info
.text
	.align 8
	.long	rPgc_srt-(sPHI_info)+0
	.long	0
	.quad	398
	.quad	1119298542108704
sPHI_info:
.LcPOs:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sPHH_info,0(%rbp)
	testq $7,%rbx
	jne sPHH_info
	jmp *(%rbx)
	.size sPHI_info, .-sPHI_info
.text
	.align 8
	.long	rPgc_srt-(sPHJ_info)+0
	.long	0
	.quad	270
	.quad	1119298542108704
sPHJ_info:
.LcPOB:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sPHI_info,0(%rbp)
	testq $7,%rbx
	jne sPHI_info
	jmp *(%rbx)
	.size sPHJ_info, .-sPHJ_info
.text
	.align 8
	.long	rPgc_srt-(sPHK_info)+0
	.long	0
	.quad	76
	.quad	1119298542108704
sPHK_info:
.LcPOK:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPHJ_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPHJ_info
	jmp *(%rbx)
	.size sPHK_info, .-sPHK_info
.text
	.align 8
	.long	rPgc_srt-(sPHM_info)+0
	.long	0
	.quad	462
	.quad	1119298542108704
sPHM_info:
.LcPP8:
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $16,%rbp
	jmp sPnx_info
	.size sPHM_info, .-sPHM_info
.text
	.align 8
	.long	rPgc_srt-(sPHN_info)+0
	.long	0
	.quad	398
	.quad	1119298542108704
sPHN_info:
.LcPPb:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sPHM_info,0(%rbp)
	testq $7,%rbx
	jne sPHM_info
	jmp *(%rbx)
	.size sPHN_info, .-sPHN_info
.text
	.align 8
	.long	rPgc_srt-(sPHO_info)+0
	.long	0
	.quad	270
	.quad	1119298542108704
sPHO_info:
.LcPPk:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sPHN_info,0(%rbp)
	testq $7,%rbx
	jne sPHN_info
	jmp *(%rbx)
	.size sPHO_info, .-sPHO_info
.text
	.align 8
	.long	rPgc_srt-(sPHP_info)+0
	.long	0
	.quad	76
	.quad	1119298542108704
sPHP_info:
.LcPPt:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPHO_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPHO_info
	jmp *(%rbx)
	.size sPHP_info, .-sPHP_info
.text
	.align 8
	.long	rPgc_srt-(sPHQ_info)+0
	.long	0
	.quad	462
	.quad	1119298542108704
sPHQ_info:
.LcPPR:
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $16,%rbp
	jmp sPnx_info
	.size sPHQ_info, .-sPHQ_info
.text
	.align 8
	.long	rPgc_srt-(sPHR_info)+0
	.long	0
	.quad	398
	.quad	1119298542108704
sPHR_info:
.LcPPU:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sPHQ_info,0(%rbp)
	testq $7,%rbx
	jne sPHQ_info
	jmp *(%rbx)
	.size sPHR_info, .-sPHR_info
.text
	.align 8
	.long	rPgc_srt-(sPHS_info)+0
	.long	0
	.quad	270
	.quad	1119298542108704
sPHS_info:
.LcPQ3:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sPHR_info,0(%rbp)
	testq $7,%rbx
	jne sPHR_info
	jmp *(%rbx)
	.size sPHS_info, .-sPHS_info
.text
	.align 8
	.long	rPgc_srt-(sPHT_info)+0
	.long	0
	.quad	76
	.quad	1119298542108704
sPHT_info:
.LcPQc:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPHS_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPHS_info
	jmp *(%rbx)
	.size sPHT_info, .-sPHT_info
.text
	.align 8
	.long	rPgc_srt-(sPHL_info)+0
	.long	0
	.quad	76
	.quad	1119298542108704
sPHL_info:
.LcPQm:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcPQr
	movq 7(%rbx),%rbx
	movq $sPHK_info,0(%rbp)
	testq $7,%rbx
	jne sPHK_info
	jmp *(%rbx)
.LcPQn:
	movq 5(%rbx),%rbx
	movq $sPHT_info,0(%rbp)
	testq $7,%rbx
	jne sPHT_info
	jmp *(%rbx)
.LcPQr:
	cmpq $3,%rax
	jae .LcPQn
	movq 6(%rbx),%rbx
	movq $sPHP_info,0(%rbp)
	testq $7,%rbx
	jne sPHP_info
	jmp *(%rbx)
	.size sPHL_info, .-sPHL_info
.text
	.align 8
	.long	rPgc_srt-(sPH6_info)+0
	.long	0
	.quad	11
	.quad	1119298542108704
sPH6_info:
.LcPQB:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 16(%rbp),%rbx
	movq $sPHL_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPHL_info
	jmp *(%rbx)
	.size sPH6_info, .-sPH6_info
.text
	.align 8
	.long	rPgc_srt-(sPH8_info)+0
	.long	0
	.quad	11
	.quad	1123696588619808
sPH8_info:
.LcPQI:
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglTranslatef_closure,%ebx
	movq $sPH6_info,0(%rbp)
	testq $7,%rbx
	jne sPH6_info
	jmp *(%rbx)
	.size sPH8_info, .-sPH8_info
.text
	.align 8
	.long	rPgc_srt-(sPGR_info)+0
	.long	0
	.quad	9
	.quad	1125895611875360
sPGR_info:
.LcPQR:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcPQS
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $80,%rbp
	jmp *0(%rbp)
.LcPQS:
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPushMatrix_closure,%ebx
	movq $sPH8_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPH8_info
	jmp *(%rbx)
	.size sPGR_info, .-sPGR_info
.text
	.align 8
	.long	rPgc_slow-(rPgc_info)+0
	.long	0
	.quad	10
	.long	rPgc_srt-(rPgc_info)+0
	.long	0
	.quad	47244640256
	.quad	0
	.quad	1125895611875343
rPgc_info:
.LcPR3:
	leaq -88(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPR5
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,rPgc_ct
	je .LcPR6
.LcPR7:
	incq rPgc_ct+40
	movq %r9,-32(%rbp)
	movq %r8,-24(%rbp)
	movq %rsi,-16(%rbp)
	movq %r14,-8(%rbp)
	movq 32(%rbp),%rbx
	movq %rdi,32(%rbp)
	movq $sPGR_info,-40(%rbp)
	addq $-40,%rbp
	testq $7,%rbx
	jne sPGR_info
	jmp *(%rbx)
.LcPR5:
	movl $rPgc_closure,%ebx
	addq $-40,%rbp
	movq %r14,0(%rbp)
	movq %rsi,8(%rbp)
	movq %rdi,16(%rbp)
	movq %r8,24(%rbp)
	movq %r9,32(%rbp)
	jmp *-8(%r13)
.LcPR6:
	movq ticky_entry_ctrs,%rax
	movq %rax,rPgc_ct+56
	movq $rPgc_ct,ticky_entry_ctrs
	movq $1,rPgc_ct
	jmp .LcPR7
	.size rPgc_info, .-rPgc_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_renderWorld1_srt:
	.quad	base_GHCziReal_zdfNumRatio3_closure
	.quad	base_GHCziFloat_zdwzdcfromRational1_closure
	.quad	base_GHCziReal_zdwzdczs_closure
	.quad	base_DataziFixed_zdfHasResolutionE7_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPopMatrix_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPushMatrix_closure
	.quad	OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglTranslatef_closure
	.quad	EngineziGraphicsziShaders_setUniforms1_closure
	.quad	EngineziGraphicsziShaders_setShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_disableShaderAttribs1_closure
	.quad	EngineziGraphicsziShaders_bindTextures1_closure
	.quad	EngineziCoreziWorld_pentityModel1_closure
	.quad	rPgb_closure
	.quad	rPgc_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_renderWorld1_closure
.type EngineziGraphicsziGraphics_renderWorld1_closure, @object
EngineziGraphicsziGraphics_renderWorld1_closure:
	.quad	EngineziGraphicsziGraphics_renderWorld1_info
	.quad	0
.section .rodata
	.align 8
.align 1
cPVP_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
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
	.byte	119
	.byte	50
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cPVR_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_renderWorld1_ct
.type EngineziGraphicsziGraphics_renderWorld1_ct, @object
EngineziGraphicsziGraphics_renderWorld1_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cPVP_str
	.quad	cPVR_str
	.quad	0
	.quad	0
	.quad	0
.section .rodata
	.align 8
.align 1
cPVV_str:
	.byte	115
	.byte	97
	.byte	116
	.byte	95
	.byte	115
	.byte	80
	.byte	113
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	41
	.byte	0
.section .rodata
	.align 8
.align 1
cPVY_str:
	.byte	65
	.byte	0
.data
	.align 8
.align 1
sPqi_ct:
	.quad	0
	.quad	1
	.quad	0
	.quad	cPVV_str
	.quad	cPVY_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRC_info)+8
	.long	0
	.quad	0
	.quad	4294967328
sPRC_info:
.LcPWa:
	incq KNOWN_CALL_ctr
	movq %r14,%rsi
	movq %rbx,%r14
	addq $8,%rbp
	jmp base_GHCziFloat_zdwzdcfromRational1_info
	.size sPRC_info, .-sPRC_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPqf_info)+0
	.long	0
	.quad	1
	.quad	64424509457
sPqf_info:
.LcPWe:
	incq ENT_DYN_THK_ctr
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .LcPWg
	incq UPDF_PUSHED_ctr
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	incq KNOWN_CALL_ctr
	movq 16(%rbx),%r14
	movl $base_GHCziReal_zdfNumRatio3_closure,%esi
	movl $base_DataziFixed_zdfHasResolutionE7_closure,%edi
	movl $base_GHCziReal_zdfNumRatio3_closure,%r8d
	movq $sPRC_info,-24(%rbp)
	addq $-24,%rbp
	jmp base_GHCziReal_zdwzdczs_info
.LcPWg:
	jmp *-16(%r13)
	.size sPqf_info, .-sPqf_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPqi_info)+0
	.long	0
	.quad	4294967299
	.quad	1
	.quad	64424509450
sPqi_info:
.LcPWk:
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcPWo
	addq $6,sPqi_ct+48
	incq ALLOC_HEAP_ctr
	addq $6,ALLOC_HEAP_tot
	incq ENT_DYN_FUN_DIRECT_ctr
	cmpq $0,sPqi_ct
	je .LcPWp
.LcPWq:
	incq sPqi_ct+40
	movq $sPqf_info,-40(%r12)
	movq 7(%rbx),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -40(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq RET_UNBOXED_TUP_ctr
	leaq -14(%r12),%rbx
	jmp *0(%rbp)
.LcPWo:
	movq $48,192(%r13)
.LcPWm:
	jmp *-8(%r13)
.LcPWp:
	movq ticky_entry_ctrs,%rax
	movq %rax,sPqi_ct+56
	movq $sPqi_ct,ticky_entry_ctrs
	movq $1,sPqi_ct
	jmp .LcPWq
	.size sPqi_info, .-sPqi_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRU_info)+136
	.long	0
	.quad	72718
	.quad	4294967328
sPRU_info:
.LcPWH:
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 64(%rbp),%rax
	movq %rax,88(%rbp)
	movq 96(%rbp),%r14
	movq 32(%rbp),%rax
	movq %rax,96(%rbp)
	movq 80(%rbp),%rsi
	movq 16(%rbp),%rax
	movq %rax,80(%rbp)
	movq 104(%rbp),%rdi
	movq 24(%rbp),%rax
	movq %rax,104(%rbp)
	movq 112(%rbp),%r8
	movq 72(%rbp),%rax
	movq %rax,112(%rbp)
	movq 8(%rbp),%r9
	addq $80,%rbp
	jmp rPgc_info
	.size sPRU_info, .-sPRU_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRW_info)+64
	.long	0
	.quad	72718
	.quad	2203318222880
sPRW_info:
.LcPWQ:
	xorl %edi,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPopMatrix_closure,%ebx
	movq $sPRU_info,0(%rbp)
	testq $7,%rbx
	jne sPRU_info
	jmp *(%rbx)
	.size sPRW_info, .-sPRW_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRX_info)+32
	.long	0
	.quad	72718
	.quad	35257386532896
sPRX_info:
.LcPWX:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sPRW_info,0(%rbp)
	testq $7,%rbx
	jne sPRW_info
	jmp *(%rbx)
	.size sPRX_info, .-sPRX_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPr4_info)+32
	.long	0
	.quad	68622
	.quad	37456409788448
sPr4_info:
.LcPX3:
	incq KNOWN_CALL_ctr
	movq 56(%rbp),%r14
	movq $sPRX_info,0(%rbp)
	jmp EngineziGraphicsziShaders_disableShaderAttribs1_info
	.size sPr4_info, .-sPr4_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPS3_info)+32
	.long	0
	.quad	68622
	.quad	37456409788448
sPS3_info:
.LcPXf:
	movl $3553,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	jmp sPr4_info
	.size sPS3_info, .-sPS3_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPS5_info)+32
	.long	0
	.quad	68622
	.quad	37473589657632
sPS5_info:
.LcPXj:
	movl $33984,%edi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglBindTexture_closure,%ebx
	movq $sPS3_info,0(%rbp)
	testq $7,%rbx
	jne sPS3_info
	jmp *(%rbx)
	.size sPS5_info, .-sPS5_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPr5_info)+32
	.long	0
	.quad	68622
	.quad	37507949396000
sPr5_info:
.LcPXq:
	movl %ebx,%eax
	xorl %ebx,%ebx
	cmpq %rax,%rbx
	jb .LcPXs
	jmp sPr4_info
.LcPXs:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglActiveTexture_closure,%ebx
	movq $sPS5_info,0(%rbp)
	testq $7,%rbx
	jne sPS5_info
	jmp *(%rbx)
	.size sPr5_info, .-sPr5_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRZ_info)+32
	.long	0
	.quad	66574
	.quad	37507949396000
sPRZ_info:
.LcPXA:
	movq 88(%rbp),%rdx
	movl $4,%edi
	xorl %esi,%esi
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	xorl %esi,%esi
	movq $sPr5_info,0(%rbp)
	jmp base_GHCziList_zdwlen_info
	.size sPRZ_info, .-sPRZ_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPS0_info)+32
	.long	0
	.quad	66574
	.quad	37516539330592
sPS0_info:
.LcPXF:
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglDrawArrays_closure,%ebx
	movq $sPRZ_info,0(%rbp)
	testq $7,%rbx
	jne sPRZ_info
	jmp *(%rbx)
	.size sPS0_info, .-sPS0_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRD_info)+0
	.long	0
	.quad	65550
	.quad	890600123531296
sPRD_info:
.LcPXL:
	addq $64,%r12
	cmpq 144(%r13),%r12
	ja .LcPXP
	addq $8,EngineziGraphicsziGraphics_renderWorld1_ct+48
	incq ALLOC_HEAP_ctr
	addq $8,ALLOC_HEAP_tot
	movq $sPqi_info,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-40(%r12)
	movq $rPgb_closure,-32(%r12)
	leaq -55(%r12),%rax
	movq %rax,-24(%r12)
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	leaq -39(%r12),%rax
	movq %rax,-8(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,0(%r12)
	incq KNOWN_CALL_ctr
	movq 40(%rbp),%r14
	leaq -14(%r12),%rsi
	movq $sPS0_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setUniforms1_info
.LcPXP:
	movq $64,192(%r13)
.LcPXN:
	movq $254,64(%r13)
	jmp stg_gc_ut
	.size sPRD_info, .-sPRD_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRE_info)+0
	.long	0
	.quad	65550
	.quad	960968867708960
sPRE_info:
.LcPXV:
	incq KNOWN_CALL_ctr
	movq 48(%rbp),%r14
	movq 40(%rbp),%rsi
	movq $sPRD_info,0(%rbp)
	jmp EngineziGraphicsziShaders_bindTextures1_info
	.size sPRE_info, .-sPRE_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRF_info)+0
	.long	0
	.quad	16396
	.quad	960968867708960
sPRF_info:
.LcPXY:
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%r14
	movq 88(%rbp),%rsi
	movq $sPRE_info,-16(%rbp)
	addq $-16,%rbp
	jmp EngineziGraphicsziShaders_setUniforms1_info
	.size sPRF_info, .-sPRF_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRG_info)+0
	.long	0
	.quad	37386
	.quad	960968867708960
sPRG_info:
.LcPY3:
	movq 39(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 23(%rbx),%rax
	movq %rax,32(%rbp)
	movq 7(%rbx),%rax
	movq %rax,80(%rbp)
	movq 15(%rbx),%rbx
	movq $sPRF_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPRF_info
	jmp *(%rbx)
	.size sPRG_info, .-sPRG_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRH_info)+0
	.long	0
	.quad	4618
	.quad	960968867708960
sPRH_info:
.LcPYd:
	movq 80(%rbp),%rbx
	movq $sPRG_info,0(%rbp)
	testq $7,%rbx
	jne sPRG_info
	jmp *(%rbx)
	.size sPRH_info, .-sPRH_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRJ_info)+0
	.long	0
	.quad	4618
	.quad	978561053753376
sPRJ_info:
.LcPYj:
	movq 32(%rbp),%rdi
	subq $8,%rsp
	movl $0,%eax
	movq 56(%rbp),%rcx
	call *%rcx
	addq $8,%rsp
	incq KNOWN_CALL_ctr
	movq 7(%rbx),%rax
	movq %rax,56(%rbp)
	movq 24(%rbp),%r14
	movq $sPRH_info,0(%rbp)
	jmp EngineziGraphicsziShaders_setShaderAttribs1_info
	.size sPRJ_info, .-sPRJ_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPpV_info)+0
	.long	0
	.quad	2057
	.quad	978561053753376
sPpV_info:
.LcPYp:
	movq %rbx,0(%rbp)
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sPRJ_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPRJ_info
	jmp *(%rbx)
	.size sPpV_info, .-sPpV_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRK_info)+0
	.long	0
	.quad	262
	.quad	978561053753376
sPRK_info:
.LcPYy:
	movq 23(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 15(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPpV_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sPpV_info
	jmp *(%rbx)
	.size sPRK_info, .-sPRK_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRq_info)+0
	.long	0
	.quad	262
	.quad	1119298542108704
sPRq_info:
.LcPYI:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jne .LcPYJ
	movq 22(%rbx),%rbx
	movq $sPRK_info,0(%rbp)
	testq $7,%rbx
	jne sPRK_info
	jmp *(%rbx)
.LcPYJ:
	movl $EngineziCoreziWorld_pentityModel1_closure,%ebx
	addq $56,%rbp
	andq $-8,%rbx
	jmp *(%rbx)
	.size sPRq_info, .-sPRq_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRr_info)+0
	.long	0
	.quad	6
	.quad	1119298542108704
sPRr_info:
.LcPYS:
	movq 24(%rbp),%rax
	movq 7(%rbx),%rbx
	movq %rbx,24(%rbp)
	movq %rax,%rbx
	movq $sPRq_info,0(%rbp)
	testq $7,%rbx
	jne sPRq_info
	jmp *(%rbx)
	.size sPRr_info, .-sPRr_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPrr_info)+0
	.long	0
	.quad	71
	.quad	1119298542108704
sPrr_info:
.LcPZ1:
	movss %xmm1,%xmm0
	movss %xmm2,%xmm1
	movss %xmm3,%xmm2
	subq $8,%rsp
	movl $3,%eax
	movq 8(%rbp),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziCore31ziFunctions_ptrzuglUseProgram_closure,%ebx
	movq $sPRr_info,8(%rbp)
	addq $8,%rbp
	testq $7,%rbx
	jne sPRr_info
	jmp *(%rbx)
	.size sPrr_info, .-sPrr_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPS6_info)+0
	.long	0
	.quad	457
	.quad	1119298542108704
sPS6_info:
.LcPZr:
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $16,%rbp
	jmp sPrr_info
	.size sPS6_info, .-sPS6_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPS7_info)+0
	.long	0
	.quad	393
	.quad	1119298542108704
sPS7_info:
.LcPZu:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sPS6_info,0(%rbp)
	testq $7,%rbx
	jne sPS6_info
	jmp *(%rbx)
	.size sPS7_info, .-sPS7_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPS8_info)+0
	.long	0
	.quad	265
	.quad	1119298542108704
sPS8_info:
.LcPZD:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sPS7_info,0(%rbp)
	testq $7,%rbx
	jne sPS7_info
	jmp *(%rbx)
	.size sPS8_info, .-sPS8_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPS9_info)+0
	.long	0
	.quad	71
	.quad	1119298542108704
sPS9_info:
.LcPZM:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPS8_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPS8_info
	jmp *(%rbx)
	.size sPS9_info, .-sPS9_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSb_info)+0
	.long	0
	.quad	457
	.quad	1119298542108704
sPSb_info:
.LcQ0a:
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $16,%rbp
	jmp sPrr_info
	.size sPSb_info, .-sPSb_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSc_info)+0
	.long	0
	.quad	393
	.quad	1119298542108704
sPSc_info:
.LcQ0d:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sPSb_info,0(%rbp)
	testq $7,%rbx
	jne sPSb_info
	jmp *(%rbx)
	.size sPSc_info, .-sPSc_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSd_info)+0
	.long	0
	.quad	265
	.quad	1119298542108704
sPSd_info:
.LcQ0m:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sPSc_info,0(%rbp)
	testq $7,%rbx
	jne sPSc_info
	jmp *(%rbx)
	.size sPSd_info, .-sPSd_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSe_info)+0
	.long	0
	.quad	71
	.quad	1119298542108704
sPSe_info:
.LcQ0v:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPSd_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPSd_info
	jmp *(%rbx)
	.size sPSe_info, .-sPSe_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSf_info)+0
	.long	0
	.quad	457
	.quad	1119298542108704
sPSf_info:
.LcQ0T:
	movss 16(%rbp),%xmm1
	movss 8(%rbp),%xmm2
	movss 7(%rbx),%xmm3
	addq $16,%rbp
	jmp sPrr_info
	.size sPSf_info, .-sPSf_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSg_info)+0
	.long	0
	.quad	393
	.quad	1119298542108704
sPSg_info:
.LcQ0W:
	movq 8(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,8(%rbp)
	movq %rax,%rbx
	movq $sPSf_info,0(%rbp)
	testq $7,%rbx
	jne sPSf_info
	jmp *(%rbx)
	.size sPSg_info, .-sPSg_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSh_info)+0
	.long	0
	.quad	265
	.quad	1119298542108704
sPSh_info:
.LcQ15:
	movq 16(%rbp),%rax
	movss 7(%rbx),%xmm0
	movss %xmm0,16(%rbp)
	movq %rax,%rbx
	movq $sPSg_info,0(%rbp)
	testq $7,%rbx
	jne sPSg_info
	jmp *(%rbx)
	.size sPSh_info, .-sPSh_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSi_info)+0
	.long	0
	.quad	71
	.quad	1119298542108704
sPSi_info:
.LcQ1e:
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 15(%rbx),%rax
	movq %rax,0(%rbp)
	movq 7(%rbx),%rbx
	movq $sPSh_info,-16(%rbp)
	addq $-16,%rbp
	testq $7,%rbx
	jne sPSh_info
	jmp *(%rbx)
	.size sPSi_info, .-sPSi_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPSa_info)+0
	.long	0
	.quad	71
	.quad	1119298542108704
sPSa_info:
.LcQ1o:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcQ1t
	movq 7(%rbx),%rbx
	movq $sPS9_info,0(%rbp)
	testq $7,%rbx
	jne sPS9_info
	jmp *(%rbx)
.LcQ1p:
	movq 5(%rbx),%rbx
	movq $sPSi_info,0(%rbp)
	testq $7,%rbx
	jne sPSi_info
	jmp *(%rbx)
.LcQ1t:
	cmpq $3,%rax
	jae .LcQ1p
	movq 6(%rbx),%rbx
	movq $sPSe_info,0(%rbp)
	testq $7,%rbx
	jne sPSe_info
	jmp *(%rbx)
	.size sPSa_info, .-sPSa_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRt_info)+0
	.long	0
	.quad	6
	.quad	1119298542108704
sPRt_info:
.LcQ1D:
	movq 7(%rbx),%rax
	movq %rax,0(%rbp)
	movq 24(%rbp),%rbx
	movq $sPSa_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPSa_info
	jmp *(%rbx)
	.size sPRt_info, .-sPRt_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRv_info)+0
	.long	0
	.quad	6
	.quad	1123696588619808
sPRv_info:
.LcQ1K:
	subq $8,%rsp
	movl $0,%eax
	movq 7(%rbx),%rbx
	call *%rbx
	addq $8,%rsp
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglTranslatef_closure,%ebx
	movq $sPRt_info,0(%rbp)
	testq $7,%rbx
	jne sPRt_info
	jmp *(%rbx)
	.size sPRv_info, .-sPRv_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPqW_info)+0
	.long	0
	.quad	3
	.quad	1125895611875360
sPqW_info:
.LcQ1T:
	movq %rbx,%rax
	andq $7,%rax
	cmpq $2,%rax
	jae .LcQ1U
	incq RET_UNBOXED_TUP_ctr
	movl $ghczmprim_GHCziTuple_Z0T_closure+1,%ebx
	addq $32,%rbp
	jmp *0(%rbp)
.LcQ1U:
	movq 14(%rbx),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 6(%rbx),%rax
	movq %rax,0(%rbp)
	movl $OpenGLRawzm1zi4zi0zi0_GraphicsziRenderingziOpenGLziRawziARBziCompatibilityziFunctions_ptrzuglPushMatrix_closure,%ebx
	movq $sPRv_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sPRv_info
	jmp *(%rbx)
	.size sPqW_info, .-sPqW_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(sPRe_info)+0
	.long	0
	.quad	0
	.quad	1125895611875360
sPRe_info:
.LcQ25:
	movq 7(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 23(%rbx),%rax
	movq %rax,-8(%rbp)
	movq 31(%rbx),%rax
	movq %rax,0(%rbp)
	movq 15(%rbx),%rbx
	movq $sPqW_info,-24(%rbp)
	addq $-24,%rbp
	testq $7,%rbx
	jne sPqW_info
	jmp *(%rbx)
	.size sPRe_info, .-sPRe_info
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld1_srt-(EngineziGraphicsziGraphics_renderWorld1_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	1125895611875343
.globl EngineziGraphicsziGraphics_renderWorld1_info
.type EngineziGraphicsziGraphics_renderWorld1_info, @object
EngineziGraphicsziGraphics_renderWorld1_info:
.LcQ2e:
	leaq -120(%rbp),%rax
	cmpq %r15,%rax
	jb .LcQ2g
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_renderWorld1_ct
	je .LcQ2h
.LcQ2i:
	incq EngineziGraphicsziGraphics_renderWorld1_ct+40
	movq %r14,%rbx
	movq $sPRe_info,-8(%rbp)
	addq $-8,%rbp
	testq $7,%rbx
	jne sPRe_info
	jmp *(%rbx)
.LcQ2g:
	movl $EngineziGraphicsziGraphics_renderWorld1_closure,%ebx
	jmp *-8(%r13)
.LcQ2h:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_renderWorld1_ct+56
	movq $EngineziGraphicsziGraphics_renderWorld1_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_renderWorld1_ct
	jmp .LcQ2i
	.size EngineziGraphicsziGraphics_renderWorld1_info, .-EngineziGraphicsziGraphics_renderWorld1_info
.section .data
	.align 8
.align 1
EngineziGraphicsziGraphics_renderWorld_srt:
	.quad	EngineziGraphicsziGraphics_renderWorld1_closure
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_renderWorld_closure
.type EngineziGraphicsziGraphics_renderWorld_closure, @object
EngineziGraphicsziGraphics_renderWorld_closure:
	.quad	EngineziGraphicsziGraphics_renderWorld_info
	.quad	0
.section .rodata
	.align 8
.align 1
cQ2v_str:
	.byte	109
	.byte	97
	.byte	105
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
	.byte	71
	.byte	114
	.byte	97
	.byte	112
	.byte	104
	.byte	105
	.byte	99
	.byte	115
	.byte	46
	.byte	114
	.byte	101
	.byte	110
	.byte	100
	.byte	101
	.byte	114
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
	.byte	119
	.byte	54
	.byte	125
	.byte	0
.section .rodata
	.align 8
.align 1
cQ2y_str:
	.byte	83
	.byte	65
	.byte	0
.data
	.align 8
.align 1
.globl EngineziGraphicsziGraphics_renderWorld_ct
.type EngineziGraphicsziGraphics_renderWorld_ct, @object
EngineziGraphicsziGraphics_renderWorld_ct:
	.quad	0
	.quad	2
	.quad	0
	.quad	cQ2v_str
	.quad	cQ2y_str
	.quad	0
	.quad	0
	.quad	0
.text
	.align 8
	.long	EngineziGraphicsziGraphics_renderWorld_srt-(EngineziGraphicsziGraphics_renderWorld_info)+0
	.long	0
	.quad	8589934597
	.quad	0
	.quad	4294967311
.globl EngineziGraphicsziGraphics_renderWorld_info
.type EngineziGraphicsziGraphics_renderWorld_info, @object
EngineziGraphicsziGraphics_renderWorld_info:
.LcQ2D:
	incq ENT_STATIC_FUN_DIRECT_ctr
	cmpq $0,EngineziGraphicsziGraphics_renderWorld_ct
	je .LcQ2G
.LcQ2I:
	incq EngineziGraphicsziGraphics_renderWorld_ct+40
	incq KNOWN_CALL_ctr
	jmp EngineziGraphicsziGraphics_renderWorld1_info
.LcQ2G:
	movq ticky_entry_ctrs,%rax
	movq %rax,EngineziGraphicsziGraphics_renderWorld_ct+56
	movq $EngineziGraphicsziGraphics_renderWorld_ct,ticky_entry_ctrs
	movq $1,EngineziGraphicsziGraphics_renderWorld_ct
	jmp .LcQ2I
	.size EngineziGraphicsziGraphics_renderWorld_info, .-EngineziGraphicsziGraphics_renderWorld_info
.section .note.GNU-stack,"",@progbits
.ident "GHC 7.6.3"
