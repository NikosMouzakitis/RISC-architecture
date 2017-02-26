	.data
		prompt: .asciiz "Enter integer(n)\n"
		prompt2:	.asciiz "Enter integer(m)\n"
		str_nl:	.asciiz "\n"
	
	.text
	
	.globl main

	#	$t0: given n.
	#	$t1: given m.
	#	$t2:initialized to 1,grows on multiples of n,m.	
	#	$t3 holds the multiples.

main:
		
	addi $v0,$0,4
	la $a0,prompt 
	syscall
	
	addi $v0,$0,5
	syscall
	add $t0,$v0,$0	#	n -> t0
	
	addi $v0,$0,4
	la $a0,prompt2 
	syscall
	
	addi $v0,$0,5
	syscall
	add $t1,$v0,$0	#	m -> t1
	
	addi $t2,$0,0	#our counter.
	
check:	
	beq 	$t2,$t1,end_label
	addi 	$t2,$t2,1
	mul 	$t3,$t2,$t0

	addi	$v0,$0,1
	add 	$a0,$0,$t3	
	syscall
	
	addi $v0,$0,4
	la $a0,str_nl 
	syscall
	
	j check
	
end_label:

	


	add $v0,$0,10
	syscall
	
	
	