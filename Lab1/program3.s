addi $t1, $zero, 3
addiu $t2, $zero, 0x10010000
sw $t1, 0($t2)
lw $t3, 0($t2)
addi $t4, $t3, -1
sw $t4, 12($t2)