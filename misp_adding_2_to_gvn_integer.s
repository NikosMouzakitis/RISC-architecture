	#Calculating the expression R = N +2 where:  .
	#N is given integer by the user in console in PCSpim Simulator.
	# ($16) used to store N,the entered value by the user.
	# ($17) used to store R,the result of computation.

	.data


str_prompt: .asciiz "Enter an integer(N): "
str_nl:     .asciiz "\n"
str_validate: .asciiz "You entered: "
str_res:    .asciiz "Result is(R): "
str_space: .asciiz " "

.text
.globl main

main:
	addi $2,$0,4
	la $4,str_prompt  			 #system call to print our promt.
	syscall
	
	

	addi $2,$0,5			#syscall to get an integer from console.			
	syscall
		
	addi $16,$2,0  			#copy the value we got from $2 to $16.
	
	addi $2,$0,4
	la $4,str_nl  			#system call to print a new line.
	syscall

	addi $2,$0,4
	la $4,str_validate  	                #system call printing the entered value.
	syscall

	addi $2,$0,4
	la $4,str_space  	                                #system call to print a space.
	syscall	
	
	addi $2,$0,1
	add $4,$16,$0  		                #system call to print the integer stored at $16.
	syscall

	addi $2,$0,4
	la $4,str_nl  		                #system call to print a new line.
	syscall
	
	addi $2,$0,4
	la $4,str_res  			#system call to print_string.
	syscall
	
	addi $20,$0,2                                           # the +2 is stored in register 20.
	
	add $17,$16,$20			#calculation of our expression R = N + 2 (storing result in $17).
	
	addi $2,$0,1
	add $4,$16,$20			#printing the result (R) that's stored for print in $4.
	syscall
	
	addi $2,$0,4
	la $4,str_nl  			#system call to print a new line.
	syscall
	
	addi $2,$0,4
	la $4,str_nl  			#system call to print a new line.
	syscall

j	main