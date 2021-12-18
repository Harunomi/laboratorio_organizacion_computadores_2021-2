# se utilizaran $a1 y $a2 para guardar los multiplicandos

addi $a1, $zero, 7
addi $a2, $zero, 8

# se guardara el resultado en $t0

add $t0, $zero, $zero #resultado
add $t1, $zero, $zero # int i = 0;

if:	blt $t1, $a2 while
	j exit


while:	add $t0, $t0, $a1
	addi, $t1, $t1, 1
	j if
	
	
exit: 	