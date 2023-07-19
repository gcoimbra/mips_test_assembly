addi $a0,$zero,11


Factorial:
addi $v0,$zero,1

For:
bne $a0,$zero,Cont
j Exit

Cont:
mul $v0,$v0,$a0
addi $a0,$a0,-1
j For

Exit: