{\rtf1\ansi\deff0\nouicompat{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.10240}\viewkind4\uc1 
\pard\sa200\sl276\slmult1\f0\fs22\lang9\tab #Mouzakitis Nikolaos,Crete 2016.\par
\tab #Program calculates the sum of the first\par
\tab #n integers of the following form:\par
\tab #1+2+3+4+......+N.For given N.\par
\tab #Using $17,$18,$19 to store \par
\tab #counter,sum,and user's input.\par
\par
.data\par
\tab str_prompt: .asciiz "Calculating the sum,1+2+3+ ... +n\\nto given n.Enter n:\\n"\par
\tab str_res: .asciiz "Result is equal to: "\par
.text\par
\tab .globl main\par
\tab .globl L1\par
\tab\par
main:\par
\par
\tab addi $2,$0,4\par
\tab la $4,str_prompt\par
\tab syscall\par
\tab\par
\tab addi $2,$0,5\tab #getting N on $2.\par
\tab syscall\par
\tab\par
\tab add $19,$0,$2\tab #transfering N to $19.\par
\tab\par
\tab li $17,1  \tab # i=1 ;\tab    (counter to N)\par
\tab li $18,0\tab\tab # Sum = 0;  initialiations.\par
\tab\par
L1:\tab\par
\tab add $18,$18,$17\par
\tab addi $17,$17,1\par
\tab ble $17,$19,L1\tab #branch to L1\par
\tab\par
\tab add $2,$0,4\par
\tab la $4,str_res\tab #printing in console the result.\par
\tab syscall\par
\tab\par
\tab addi $2,$0,1\par
\tab add $4,$18,$0\tab #print Int\par
\tab syscall\par
\tab\par
\tab addi $2,$0,10\tab #exit - return from main.\par
\tab syscall\par
\tab\par
}
 