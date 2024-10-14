.data 
	inteiro: .word 19 #valor inteiro na memoria ram
	
.text
	li $v0, 1 # carrega a função de imprimiir int
	lw $a0, inteiro # passa para $0 o valor do inteiro
	syscall #faz uma chamada da função para impressão do numero