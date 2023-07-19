addi $a1,$zero,7
addi $a0,$zero,2

#t0 := quociente
#t1 := divisor deslocado
#t2 := resto 

Divide:
addi $t0,$zero,0
sll  $t1,$a0,6
move $t2,$a1

Loop:
sub $t3,$t2,$t1
slt $t4,$t3,$zero
beq $t4,$zero,DontRestore


DontRestore:

