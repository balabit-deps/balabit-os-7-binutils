#NO_APP
	.text
	.align	2
	.globl	foo
	.type	foo, @function
foo:
	link.w %fp,#0
	move.l %a5,-(%sp)
	move.l #_GLOBAL_OFFSET_TABLE_@GOTPC, %a5
	lea (-6, %pc, %a5), %a5

	move.l x@TLSGD(%a5),%a1
	move.l x@GOT(%a5),%a1
	
	move.l (%sp)+,%a5
	unlk %fp
	rts
	.size	foo, .-foo
	.comm	x,4,2
	.section	.note.GNU-stack,"",@progbits
