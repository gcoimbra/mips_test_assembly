#Input:
#&vector[0] := $a0
#MAX_VECTOR := $a1

addi $a1,$zero,4

selectSort:
For1:
add  $t0,$zero,$s0
lw   $s2,0($t0)

For2:
add  $s1,$s1,$s0
addi $s1,$s1,1
add  $t0,$a0,$s1
lw   $t1,0($t0)
slt  $t2,$t1,$s2
add  $t5,$zero,$1
beq  $t2,1,Cont_For2
add  $s2,$t1,$zero

Cont_For2:
#Sem branch se j == MAX_VECTOR
bne  $s1,$a1,For2

#Chama swap:
add  $a0,$zero,$t3
jal  Swap

#Branch se i == MAX_VECTOR
beq  $s0,$a1,Exit

#i++
addi $s0,$s0,1

j    For1

Swap:
#aux := $s0
#&vector[i] := $a0
#&vector[j] := $a1

#Desloca pilha para cima
addi  $sp,$sp,-8

#Salva $s0 $t0
sw $s0,0($sp)
sw $t0,4($sp)

#Carrega vector[i] em aux
lw $s0, 0($a1)

#Seta vector[i] em vector[j]
lw $t0, 0($a0)
sw $t0, 0($a1)

#Seta aux em vector[j]
sw $s0, 0($a0)

#Descarrega $s0 $t0
lw $t0,4($sp)
lw $s0,0($sp)

#Desloca pilha para baixo
addi $sp,$sp,8

jr $ra
Exit:
