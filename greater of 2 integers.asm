	#Comparing two integer values and braching appropiate
	#to print the bigger in the screen

	.data
		prompt1: .asciiz "Enter first integer.\n"
		prompt2: .asciiz "Enter second integer.\n"
		str_res: .asciiz "\nThe greater one is: "
		str_nl:	.asciiz "\n"
	
	.text
	
	.globl main
	.globl lb1 
main:
	addi $v0,$0,4
	la $a0,prompt1 
	syscall
	
	addi $v0,$0,5
	syscall
	add $t0,$v0,$0
	
	addi $v0,$0,4
	la $a0,prompt2 
	syscall

	addi $v0,$0,5
	syscall
	add $t1,$v0,$0

	addi $v0,$0,4
	la $a0,str_res 
	syscall

	ble $t0,$t1,lb1
	
	li $v0,1
	add $a0,$0,$t0
	syscall
	
	add $v0,$0,10
	syscall
	
lb1:	

	li $v0,1
	add $a0,$0,$t1
	syscall
	
	add $v0,$0,10
	syscall