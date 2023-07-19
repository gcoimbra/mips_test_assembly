#Vector addition

# C Analogue
# #define MAX 4
# for (int i = 0; i < MAX; i++)
#     destino[i] = fonte1[i] + fonte2[i];

# Convention
# destino[0]            := $s0
# fonte[0]              := $s1
# fonte2[0]             := $s2
# i			:= $s3
#
# destino[i]            := $t0
# fonte1[i]             := $t1
# fonte2[i]             := $t2
# fonte1[i] + fonte2[i] := $t3
# MAX			:= $t4

#Pré execução da função
addi $a0,$zero,0x10010000
addi $a1,$zero,0x10010020
addi $a2,$zero,0x10010040
addi $a3,$zero,4

VectorAddition:

#Empilha
add $sp,$sp,-4
sw $s0,0($sp)

#i = 0
addi $s0,$zero,0

For:
#Calcula os endereços
sll $t1,$s0,2
add $t2,$a0,$t1 #destino
add $t3,$a1,$t1 #fonte1
add $t4,$a2,$t1 #fonte2

lw $t5,0($t3)
lw $t6,0($t4)

add $t7,$t6,$t5

sw $t7,0($t2)

addi $s0,$s0,1
beq $s0,$a3,End_For
j For

End_For:
#DESEmpilha
lw $s0,0($sp)
add $sp,$sp,4

Exit:
