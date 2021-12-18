.data
arr: .word 10 22 15 40
end:
.text
la $s0, arr
la $s1, end
subu $s1, $s1, $s0
srl $s1, $s1, 2
li $v0 10 
addi $t0, $zero, 0 #evensum = $t0
# arrlen = $s1
mul $s1, $s1, 4
addi $t1, $zero, 0 # i = $t1

A:	blt $t1, $s1, B
	syscall

B:	lw $t2, arr($t1) # cargamos en $t2 arr[i]
	and $t3, $t2, 1
	beqz $t3, C
	addi $t1, $t1, 4
	j A
C:	lw $t2, arr($t1) # cargamos en $t2 arr[i]
	add $t0, $t0, $t2
	addi $t1, $t1, 4
	j A	
	
	
	