addi $a1,$zero,23
addi $a0,$zero,3

Divide:
add $t0,$zero,$zero
add $v0,$zero,$zero

Loop:
sub $t0,$a1,$a0
ble $t0,$zero,Cont

move $a1,$t0
addi $v0,$v0,1
j Loop

Cont:
move $v1,$a1

Exit:
