	.verstamp	7 10
	.option	pic0
	.text	
	.align	2
	.file	2 "/tmp/claude-0/-home-user-kirby64-decomp/cb15b3c6-5ddf-53f9-96ee-b58ac853ac0f/scratchpad/align/a.c"
	.globl	pad0
	.loc	2 2
 #   1	extern void g(int);
 #   2	void pad0(void){g(1);}
	.ent	pad0 2
pad0:
	.option	O2
	subu	$sp, 24
	sw	$31, 20($sp)
	.mask	0x80000000, -4
	.frame	$sp, 24, $31
	.loc	2 2
	.loc	2 2
	li	$4, 1
	.livereg	0x0800000E,0x00000000
	jal	g
	.loc	2 2
	.livereg	0x0000FF0E,0x00000FFF
	lw	$31, 20($sp)
	addu	$sp, 24
	j	$31
	.end	pad0
	.text	
	.align	2
	.file	2 "/tmp/claude-0/-home-user-kirby64-decomp/cb15b3c6-5ddf-53f9-96ee-b58ac853ac0f/scratchpad/align/a.c"
	.globl	f
	.loc	2 3
 #   3	void f(void){ int i=0; while(1){ g(i); i++; } }
	.ent	f 2
f:
	.option	O2
	subu	$sp, 32
	sw	$31, 28($sp)
	sw	$16, 24($sp)
	.mask	0x80010000, -4
	.frame	$sp, 32, $31
	.loc	2 3
	.loc	2 3
	move	$16, $0
	.loc	2 3
$32:
	.loc	2 3
	.loc	2 3
	move	$4, $16
	.livereg	0x0800000E,0x00000000
	jal	g
	.loc	2 3
	addu	$16, $16, 1
	.loc	2 3
	b	$32
	.align	5
	.livereg	0x0000FF0E,0x00000FFF
	lw	$16, 24($sp)
	lw	$31, 28($sp)
	addu	$sp, 32
	j	$31
	.end	f
	.text	
	.align	2
	.file	2 "/tmp/claude-0/-home-user-kirby64-decomp/cb15b3c6-5ddf-53f9-96ee-b58ac853ac0f/scratchpad/align/a.c"
	.globl	tail
	.loc	2 4
 #   4	void tail(void){g(2);}
	.ent	tail 2
tail:
	.option	O2
	subu	$sp, 24
	sw	$31, 20($sp)
	.mask	0x80000000, -4
	.frame	$sp, 24, $31
	.loc	2 4
	.loc	2 4
	li	$4, 2
	.livereg	0x0800000E,0x00000000
	jal	g
	.loc	2 4
	.livereg	0x0000FF0E,0x00000FFF
	lw	$31, 20($sp)
	addu	$sp, 24
	j	$31
	.end	tail
