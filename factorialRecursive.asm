addi	$a0,$zero,11

addi	$v0,$zero,1

Factorial:
addi	$sp,$sp,-4
sw	$s0,0($sp)


add	$s0,$a0,$zero
bne	$s0,$zero,Cont
j	Exit

Cont:
mul	$v0,$v0,$s0
addi	$a0,$a0,-1

addi	$sp,$sp,4
lw	$s0,0($sp)
j	Factorial

Exit:
