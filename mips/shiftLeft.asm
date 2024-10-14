.text

	li $t0, 100
	sll $s0, $t0, 5 #multiplica t1 po 2, 5 vezes
	
	li $v0, 1
	move $a0, $s0
	syscall