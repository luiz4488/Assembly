.data 
	
	saudacao: .asciiz "Seja Bem-vindo Digite sua Idade: "
	idade: .asciiz "Sua idade é: "

.text
	
	li $v0, 4 #função de imprimir string
	la $a0, saudacao #referenciando a variavel  a ser imprimida
	syscall #chamando a função de impressão
	
	li $v0, 5 #função de leitura de inteiro
	syscall
	
	move $s0, $v0 #Movendo o inteiro armazenado em $v0 para $s0
	
	
	#imprimindo a string idade
	li $v0, 4 
	la $a0, idade
	syscall
	
	li $v0, 1 #função de imprimir inteiro
	move $a0, $s0 #movendo o valor armazenado em $s0, para $a0
	syscall #chamando a função print
	
	