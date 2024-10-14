.data 

	msg: .asciiz "Hello Word" #mensagem a ser  exibida parao usuario
.text

	li $v0, 4 # Instrução para impressão de string
	la $a0, msg # Vai indiacar o endereço onde esta a mensagem
	
	syscall #faça, Imprima