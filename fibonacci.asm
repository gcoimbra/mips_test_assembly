addi $a0,$zero,4
addi $a1,$zero,4

Multiply:
beq $a0,$zero,ZeroIt
beq $a1,$zero,ZeroIt

sll $t0,$a1,31
beq $t0,$zero,DontAdd
add $v0,$v0,$a0

DontAdd:
sll $a0,$a0,1
srl $a1,$a1,1
j Multiply

Exit:


ZeroIt:
move $v0,$zero
j Exit