addi $a0,$zero,55
addi $a1,$zero,55

Multiply:

#index
move $t1,$zero

#max iterations
addi $t2,$zero,31

Loop:
sll $t0,$a1,31
srl $t0,$t0,31
beq $t0,$zero,DontAdd

add $v0,$v0,$a0

DontAdd:
sll $a0,$a0,1
srl $a1,$a1,1
add $t1,$t1,1

#se index < max, reinicia loop
bne $t1,$t2,Loop

Exit:
