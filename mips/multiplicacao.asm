.text

	li $t0, 10
	li $t1, 5
	mul $s0, $t0, $t1 
	
	li $v0, 1 #função de impreção de inteiro
	
	#para imprimir umi inteiro deve ser armazenado o valor desejado em $a0
	move $a0, $s0 #Move para $a0 o valor de $s0
	syscall 