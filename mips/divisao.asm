.text

	li $t0, 26
	li $t1, 5
	
	srl $s2, $t0, 2 #divisão de t0 por base 2, elevado a 2 usa Shift Right
	
	
	div $t0, $t1
	
	#parte inteira em s0
	mflo $s0
	
	#resto em s1
	
	mfhi $s1