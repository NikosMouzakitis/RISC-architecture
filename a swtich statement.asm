	#	A switch statement.
	
	.data
		prompt:	.asciiz "Enter an integer\n"
		str_one:	.asciiz "one\n"
		str_two:	.asciiz	"two\n"
		str_three: .asciiz "three\n"
		str_default: .asciiz "default\n"

	.text
	
	.globl	main
	.globl	exit
	.globl	one
	.globl	two
	.globl	three
	.globl	default

main:

	li	$v0,4
	la	$a0,prompt
	syscall

	li	$v0,5
	syscall
	add	$t0,$0,$v0
	
	li	$t1,1
	li	$t2,2
	li	$t3,3
	
	beq	$t0,$t1,one
	beq	$t0,$t2,two
	beq	$t0,$t3,three
	
	j	default

one:

	li 	$v0,4
	la	$a0,str_one
	syscall
	
	j	exit
	
two:

	li 	$v0,4
	la	$a0,str_two
	syscall
	
	j	exit
	
three:

	li 	$v0,4
	la	$a0,str_three
	syscall
	
	j	exit

default:
	
	li 	$v0,4
	la	$a0,str_default
	syscall
	
exit:

	addi	$v0,$0,10
	syscall
	