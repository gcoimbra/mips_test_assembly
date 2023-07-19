addi	$a0,$zero,0x10010000
addi    $a1,$zero,2

Sort:
	addi $sp,$sp,-12
	sw $s0,0($sp)
	sw $s1,4($sp)
	sw $a1,8($sp)
	
	addi $s0,$zero,0
	
	For1:
	
	For2:
	addi $s1,$s0,-1
	add $t0,$zero,-1
	beq $s1,$t0,Exit_For2
	sll $t1,$s1,2
	add $t1,$t1,$a0
	lw  $t2,0($t1)
	lw  $t3,4($t1)
	sgt $t4,$t2,$t3
	beq $t4,$zero,Exit_For2
	jal Swap
	j   For2
	lw  $a1,4($sp)
	
	Exit_For2:
	add $s0,$s0,1
	beq $s0,$a1,Exit_For1
	j   For2
	
	Exit_For1:
	lw   $a1,8($sp)
	lw   $s1,4($sp)
	lw   $s0,0($sp)
	addi $sp,$sp,2
	jr   $ra

	
Swap:
	sll $t0,$a1,2
	add $t0,$t0,$a0
	lw  $t1,-4($t0)
	lw  $t2,-8($t0)
	sw  $t2,-4($t0)
	sw  $t1,-8($t0)
	jr  $ra
	
