.data
	
	mensagem: .asciiz "Digite uma Nota: "
	msg2: .asciiz "Digite outra Nota: "
	
.text 

	li $v0, 4
	la $a0, mensagem
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	#falta terminars
	move $s1, $v0
	