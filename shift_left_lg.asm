	#Mouzakitis Nikolaos,Crete 2016.
	#Program shifts user's integer
	#by two to left logically.
	#sll reg1,reg2,SH_AMOUNT.
.data
	str_prompt: .asciiz "Enter a number:\n"
	str_res: .asciiz "N<<2 is equal to: "
.text
	.globl main

	
main:

	addi $2,$0,4
	la $4,str_prompt
	syscall
	
	addi $2,$0,5	#getting N on $2.
	syscall
	
	add $19,$0,$2	#transfering N to $19.
		
	sll $19,$19,2 	

	add $2,$0,4
	la $4,str_res	#printing in console the result_string.
	syscall
	
	addi $2,$0,1
	add $4,$19,$0	#print Int
	syscall
	
	addi $2,$0,10	#exit - return from main.
	syscall
