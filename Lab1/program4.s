li $v0 10 
addi $t6, $zero, 2 # $t6 = a
addi $t7, $zero, 10 # $t7 = b
addi $t0, $zero, 0 # $t0 = m

A:	bgt $t6, 0, B
	syscall

B:	add $t0, $t0, $t7
	subi $t6, $t6, 1
	j A