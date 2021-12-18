.data
     str1: .asciiz    "Por favor ingrese el primer numero entero: "
     str2: .asciiz    "Por favor ingrese el segundo numero entero: "
     str3: .asciiz    "La diferencia es : "
     str4: .asciiz 	" (par)"
     str5: .asciiz 	" (impar)"

.text
Main:	
		# se printea el primer string
		la $a0, str1 # guardamos la direccion del primer string
		addi $v0,$zero,4 # 4 es el llamado a printear
		syscall
		
		# solicitamos el numero por consola
		addi $v0, $zero, 5 # 5 es el llamado a pedir numeros por consola
		syscall
		add $a1, $zero, $v0
		
		
		# se printea el segundo string
		la $a0, str2 # guardamos la direccion del primer string
		addi $v0,$zero,4 # 4 es el llamado a printear
		syscall
		
		# solicitamos el numero por consola
		addi $v0, $zero, 5
		syscall
		add $a2, $zero, $v0
		
		# hacemos la diferencia de los dos numeros
		sub $a3, $a1, $a2
		and $t0, $a3, 1
		# se printea el resultado de la resta string ( par ) 
		la $a0, str3 # guardamos la direccion del primer string
		addi $v0,$zero,4 # 4 es el llamado a printear
		syscall
		add $a0, $a3, $zero # guardamos el resultado de la resta
		addi $v0,$zero,1 # 1 es el llamado a printear un entero
		syscall
		beqz $t0, par
		j impar
		
		
		
par : 		# se printea el resultado de la resta string ( par ) 
		la $a0, str4 # guardamos la direccion del primer string
		addi $v0,$zero,4 # 4 es el llamado a printear
		syscall
		j exit
		
		
impar:		# se printea el resultado de la resta string ( par ) 
		la $a0, str4 # guardamos la direccion del primer string
		addi $v0,$zero,4 # 4 es el llamado a printear
		syscall
		j exit
exit: 