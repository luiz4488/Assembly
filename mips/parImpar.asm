.data 
	msg: .asciiz "Digite um Numero: "
	par: .asciiz "O Número é Par"
	impar: .asciiz "O Número é Impar"
	
.text

	li $v0, 4 #Função print
	la $a0, msg #passando o endereço da mensagem
	syscall #chamando a função
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
	li $t0, 2
	div $s0, $t0
	
	mfhi $t1 #Armazena o valor do resto da divisão
	
	#se o valor de $t1 for igual a Zero, pule as linhas abaixo e realize o que esta No rotulo faca
	#caso valor não o resto da Divisão não seja zero o compilador lê a linha de baixa e  imprime impar
		
	beq $t1, $zero, faca 

	li $v0, 4
	la $a0, impar
	syscall
	
	#A funçao exit deve ser chamada em caso de impar, pois se não o compilador imprime a mensagem e executa o rotúlo  
	li $v0, 10 #função exit
	syscall 
	
	
	faca: #rotulo com as intruções em caso de resto igual a zero
	
		li $v0, 4
		la $a0, par
		syscall 