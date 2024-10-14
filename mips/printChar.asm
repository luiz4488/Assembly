.data 

	msg: .byte 'L'  #Char a ser  exibida parao usuario
.text

	li $v0, 4 # Instrução para impressão de Char
	la $a0, msg # Vai indiacar o endereço onde esta o caractere
	
	syscall #faça, Imprima
