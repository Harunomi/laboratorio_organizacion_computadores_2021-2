# registro del dividendo
addi $a1, $zero, 100

# registro del divisor
addi $a2, $zero, 2

# registro del resultado de la multiplicacion
add $t0, $zero, $zero

# registro de i y ademas resultado de la division
addi $t1, $zero, 1

# registro de j
add $t2, $zero, $zero

while1_if:	blt $t1, $a1, while1_main1
		j exit

while1_main1:	add $t0, $zero, $zero # reiniciamos el resultado de la multiplicacion
		j while2_if
		
while2_if:	blt $t2, $a2, while2_main1
		j while1_main2

while2_main1:	add $t0, $t0, $t1
		addi $t2, $t2, 1
		j while2_if
		
while1_main2:	beq $t0,$a1, exit # $t0 es igual al dividendo, entonces el resultado de la division es $t1
		addi $t1, $t1, 1 # si no se cumple lo de arriba, entonces se agrega 1 al i
		add $t2, $zero, $zero # se reinicia el valor de j
		j while1_if			


exit: