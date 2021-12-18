li $v0 10
addi $t3, $zero, 2
addi $t4, $zero, -1
add $t5, $t3, $t4
beq $t5, $zero, A
beq $t5, 1, B
addi $t4, $zero, 100
syscall

A:	addi $t4, $t4, 1
	syscall 
B:	addi $t4, $t4, -1
	syscall
	


