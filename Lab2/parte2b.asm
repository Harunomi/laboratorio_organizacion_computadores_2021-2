# se utilizara $a1 para guardar el valor del factorial a calcular

addi $t0, $zero, 10

# se utilizara $t1 para el resultado del factorial
add $t1, $zero, $zero

#guardamos el numero (multiplicando 1)
add $t2, $zero, $t0

#guardamos el numero - 1 (multiplicando2)
addi $t3, $t2, -1

# creamos un contador i = 0;
add $t4, $zero, $zero

# auxiliar para el resultado de la multiplicacion
add $t5, $zero, $zero


# creamos el primer if para el primer while
while1_if:	bgt $t3, 1, while1_main1
		j exit

while1_main1:	add $t5, $zero, $zero # se reinicia el valor de la multiplicacion
		j while2_if
		
		
while2_if:	blt $t4, $t3, while2_main
		j while1_main2


while2_main:	add $t5, $t5, $t2
		addi $t4, $t4, 1
		j while2_if

while1_main2:	add $t4, $zero, $zero #reiniciamos el i correspondiente al contador del while2
		add $t2, $zero, $t5 	#actualizamos el nuevo valor de multiplicando1
		add $t3, $t3, -1	#restamos uno al multiplicando 2
		j while1_if
		

exit:

