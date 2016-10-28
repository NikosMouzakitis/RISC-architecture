  #Mouzakitis Nikolaos,Crete 2016.
	#Program calculates the sum of the first
	#n integers of the following form:
	#1+2+3+4+......+N.For given N.
	#Using $17,$18,$19 to store 
	#counter,sum,and user's input.

.data
	str_prompt: .asciiz "Calculating the sum,1+2+3+ ... +n\nto given n.Enter n:\n"
	str_res: .asciiz "Result is equal to: "
.text
	.globl main
	.globl L1
	
main:

	addi $2,$0,4
	la $4,str_prompt
	syscall
	
	addi $2,$0,5	#getting N on $2.
	syscall
	
	add $19,$0,$2	#transfering N to $19.
	
	li $17,1  	# i=1 ;	   (counter to N)
	li $18,0		# Sum = 0;  initialiations.
	
L1:	
	add $18,$18,$17
	addi $17,$17,1
	ble $17,$19,L1	#branch to L1
	
	add $2,$0,4
	la $4,str_res	#printing in console the result_string.
	syscall
	
	addi $2,$0,1
	add $4,$18,$0	#print Int
	syscall
	
	addi $2,$0,10	#exit - return from main.
	syscall
	
