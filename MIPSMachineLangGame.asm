.data
	listOne: .word 0, 0, 0, 0, 0, 0 
	listTwo: .word 0, 0, 0, 0, 0, 0
	listThree: .word 0, 0, 0, 0, 0, 0
	prompt: .asciiz "Select a column, 1, 2, or 3: "
	prompt2: .asciiz "Invalid selection. Pick a column 1, 2, or 3: "
	userInput: .asciiz "X"
	compInput: .asciiz "O"
	noInput: .asciiz "_"
	wall: .asciiz "|"
	wallEnd: .asciiz "|\n"
	uwin: .asciiz "You Win!\n"
	ulose: .asciiz "You have been beaten by the computer...\n"
	tie: .asciiz "The grid is full. The result is a tie\n"
.text
	#This is a large piece of code that display the game board
	#The code for processing user input starts at line 577
main:	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listOne
	li $t2, 5	#Checks the top left place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedOne
	beq $t4, 2, stolenOne
	li $v0, 4
	la $a0, noInput
	syscall
	j nextOne
	
occupiedOne:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextOne
	
stolenOne:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextOne

nextOne:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listTwo
	li $t2, 5	#Checks the top middle place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedTwo
	beq $t4, 2, stolenTwo
	li $v0, 4
	la $a0, noInput
	syscall
	j nextTwo
	
occupiedTwo:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextTwo
	
stolenTwo:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextTwo
	
nextTwo:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listThree
	li $t2, 5	#Checks the top right place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedThree
	beq $t4, 2, stolenThree
	li $v0, 4
	la $a0, noInput
	syscall
	j nextThree
	
occupiedThree:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextThree
	
stolenThree:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextThree
	
nextThree:
	li $v0, 4
	la $a0, wallEnd	#Outputs seperator and endline
	syscall
	
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listOne
	li $t2, 4	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedFour
	beq $t4, 2, stolenFour
	li $v0, 4
	la $a0, noInput
	syscall
	j nextFour
	
occupiedFour:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextFour
	
stolenFour:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextFour
	
nextFour:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listTwo
	li $t2, 4	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedFive
	beq $t4, 2, stolenFive
	li $v0, 4
	la $a0, noInput
	syscall
	j nextFive
	
occupiedFive:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextFive
	
stolenFive:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextFive
	
nextFive:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listThree
	li $t2, 4	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedSix
	beq $t4, 2, stolenSix
	li $v0, 4
	la $a0, noInput
	syscall
	j nextSix
	
occupiedSix:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextSix
	
stolenSix:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextSix
	
nextSix:
	li $v0, 4
	la $a0, wallEnd	#Outputs seperator and endline
	syscall
	
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listOne
	li $t2, 3	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedSeven
	beq $t4, 2, stolenSeven
	li $v0, 4
	la $a0, noInput
	syscall
	j nextSeven
	
occupiedSeven:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextSeven
	
stolenSeven:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextSeven
	
nextSeven:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listTwo
	li $t2, 3	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedEight
	beq $t4, 2, stolenEight
	li $v0, 4
	la $a0, noInput
	syscall
	j nextEight
	
occupiedEight:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextEight
	
stolenEight:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextEight
	
nextEight:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listThree
	li $t2, 3	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedNine
	beq $t4, 2, stolenNine
	li $v0, 4
	la $a0, noInput
	syscall
	j nextNine
	
occupiedNine:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextNine
	
stolenNine:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextNine
	
nextNine:
	li $v0, 4
	la $a0, wallEnd	#Outputs endline seperator
	syscall
	
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listOne
	li $t2, 2	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedTen
	beq $t4, 2, stolenTen
	li $v0, 4
	la $a0, noInput
	syscall
	j nextTen
	
occupiedTen:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextTen
	
stolenTen:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextTen
	
nextTen:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listTwo
	li $t2, 2	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedEleven
	beq $t4, 2, stolenEleven
	li $v0, 4
	la $a0, noInput
	syscall
	j nextEleven
	
occupiedEleven:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextEleven
	
stolenEleven:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextEleven
	
nextEleven:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listThree
	li $t2, 2	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedTwelve
	beq $t4, 2, stolenTwelve
	li $v0, 4
	la $a0, noInput
	syscall
	j nextTwelve
	
occupiedTwelve:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextTwelve
	
stolenTwelve:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextTwelve
	
nextTwelve:
	li $v0, 4
	la $a0, wallEnd	#Outputs end of line
	syscall

	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listOne
	li $t2, 1	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedThirteen
	beq $t4, 2, stolenThirteen
	li $v0, 4
	la $a0, noInput
	syscall
	j nextThirteen
	
occupiedThirteen:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextThirteen
	
stolenThirteen:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextThirteen
	
nextThirteen:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listTwo
	li $t2, 1	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedFourteen
	beq $t4, 2, stolenFourteen
	li $v0, 4
	la $a0, noInput
	syscall
	j nextFourteen
	
occupiedFourteen:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextFourteen
	
stolenFourteen:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextFourteen
	
nextFourteen:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listThree
	li $t2, 1	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedFifteen
	beq $t4, 2, stolenFifteen
	li $v0, 4
	la $a0, noInput
	syscall
	j nextFifteen
	
occupiedFifteen:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextFifteen
	
stolenFifteen:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextFifteen
	
nextFifteen:
	li $v0, 4
	la $a0, wallEnd	#Outputs end of line
	syscall
	
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listOne
	li $t2, 0	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedSixteen
	beq $t4, 2, stolenSixteen
	li $v0, 4
	la $a0, noInput
	syscall
	j nextSixteen
	
occupiedSixteen:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextSixteen
	
stolenSixteen:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextSixteen
	
nextSixteen:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listTwo
	li $t2, 0	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedSeventeen
	beq $t4, 2, stolenSeventeen
	li $v0, 4
	la $a0, noInput
	syscall
	j nextSeventeen
	
occupiedSeventeen:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextSeventeen
	
stolenSeventeen:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextSeventeen
	
nextSeventeen:
	li $v0, 4
	la $a0, wall	#Outputs seperator
	syscall

	la $t3, listThree
	li $t2, 0	#Checks the place in the array
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 1, occupiedEighteen
	beq $t4, 2, stolenEighteen
	li $v0, 4
	la $a0, noInput
	syscall
	j nextEighteen
	
occupiedEighteen:
	li $v0, 4
	la $a0, userInput
	syscall
	j nextEighteen
	
stolenEighteen:
	li $v0, 4
	la $a0, compInput
	syscall
	j nextEighteen
	
nextEighteen:

	li $v0, 4
	la $a0, wallEnd	#Outputs end of line seperator
	syscall
	
	#Prompt for user input
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Get user input
	li $v0, 5
	syscall
	add $t0, $zero, $v0
	
	#validating user input
	beq $t0, 1, columnOne
	beq $t0, 2, columnTwo
	beq $t0, 3, columnThree
	
	li $v0, 4
	la $a0, prompt2
	syscall
	j main
	
columnOne:
	la $t3, listOne #Tests if the first element has been used
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colOneRowOne
	la $t3, listOne #Tests if the second element has been used
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colOneRowTwo
	la $t3, listOne #Tests if the third element has been used
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colOneRowThree
	la $t3, listOne #Tests if the fourth element has been used
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colOneRowFour
	la $t3, listOne #Tests if the fifth element has been used
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colOneRowFive
	la $t3, listOne #Tests if the sixth element has been used
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colOneRowSix
	j computerPlay
	
colOneRowOne:
	la $t3, listOne
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colOneRowTwo:
	la $t3, listOne
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colOneRowThree:
	la $t3, listOne
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colOneRowFour:
	la $t3, listOne
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay
	
colOneRowFive:
	la $t3, listOne
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay
	
colOneRowSix:
	la $t3, listOne
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

columnTwo:
	la $t3, listTwo #Tests if the first element has been used
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colTwoRowOne
	la $t3, listTwo #Tests if the second element has been used
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colTwoRowTwo
	la $t3, listTwo #Tests if the third element has been used
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colTwoRowThree
	la $t3, listTwo #Tests if the fourth element has been used
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colTwoRowFour
	la $t3, listTwo #Tests if the fifth element has been used
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colTwoRowFive
	la $t3, listTwo #Tests if the sixth element has been used
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colTwoRowSix
	j computerPlay
	
colTwoRowOne:
	la $t3, listTwo
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colTwoRowTwo:
	la $t3, listTwo
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colTwoRowThree:
	la $t3, listTwo
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colTwoRowFour:
	la $t3, listTwo
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colTwoRowFive:
	la $t3, listTwo
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colTwoRowSix:
	la $t3, listTwo
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

columnThree:
	la $t3, listThree #Tests if the first element has been used
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colThreeRowOne
	la $t3, listThree #Tests if the second element has been used
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colThreeRowTwo
	la $t3, listThree #Tests if the third element has been used
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colThreeRowThree
	la $t3, listThree #Tests if the fourth element has been used
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colThreeRowFour
	la $t3, listThree #Tests if the fifth element has been used
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colThreeRowFive
	la $t3, listThree #Tests if the sixth element has been used
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, colThreeRowSix
	j computerPlay

colThreeRowOne:
	la $t3, listThree
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colThreeRowTwo:
	la $t3, listThree
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colThreeRowThree:
	la $t3, listThree
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colThreeRowFour:
	la $t3, listThree
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colThreeRowFive:
	la $t3, listThree
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

colThreeRowSix:
	la $t3, listThree
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 1
	sw $t4, 0($t1)
	j computerPlay

computerPlay: 		#randomly generates a move by the comp and places it into the array
	li $v0, 42  	# Generates a random number from 0 to 2
	li $a1, 3
	syscall
	
	#Decides which column array to access
	beq $a0, 0, compLine1
	beq $a0, 1, compLine2
	beq $a0, 2, compLine3

compLine1:			#Decides which row to access
	la $t3, listOne 	#Tests if the first element has been used
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line1row1
	la $t3, listOne 	#Tests if the second element has been used
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line1row2
	la $t3, listOne 	#Tests if the third element has been used
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line1row3
	la $t3, listOne 	#Tests if the fourth element has been used
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line1row4
	la $t3, listOne 	#Tests if the fifth element has been used
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line1row5
	la $t3, listOne 	#Tests if the sixth element has been used
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line1row6
	j winCalc
	
line1row1:
	la $t3, listOne
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line1row2:
	la $t3, listOne
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line1row3:
	la $t3, listOne
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line1row4:
	la $t3, listOne
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line1row5:
	la $t3, listOne
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line1row6:
	la $t3, listOne
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

compLine2:
	la $t3, listTwo 	#Tests if the first element has been used
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line2row1
	la $t3, listTwo 	#Tests if the second element has been used
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line2row2
	la $t3, listTwo 	#Tests if the third element has been used
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line2row3
	la $t3, listTwo 	#Tests if the fourth element has been used
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line2row4
	la $t3, listTwo 	#Tests if the fifth element has been used
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line2row5
	la $t3, listTwo 	#Tests if the sixth element has been used
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line2row6
	j winCalc

line2row1:
	la $t3, listTwo
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line2row2:
	la $t3, listTwo
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line2row3:
	la $t3, listTwo
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line2row4:
	la $t3, listTwo
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line2row5:
	la $t3, listTwo
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line2row6:
	la $t3, listTwo
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

compLine3:
	la $t3, listThree 	#Tests if the first element has been used
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line3row1
	la $t3, listThree 	#Tests if the second element has been used
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line3row2
	la $t3, listThree 	#Tests if the third element has been used
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line3row3
	la $t3, listThree 	#Tests if the fourth element has been used
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line3row4
	la $t3, listThree 	#Tests if the fifth element has been used
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line3row5
	la $t3, listThree 	#Tests if the sixth element has been used
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, line3row6
	j winCalc

line3row1:
	la $t3, listThree
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line3row2:
	la $t3, listThree
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line3row3:
	la $t3, listThree
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line3row4:
	la $t3, listThree
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line3row5:
	la $t3, listThree
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

line3row6:
	la $t3, listThree
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	li $t4, 2
	sw $t4, 0($t1)
	j winCalc

winCalc: #Checks the possible combinations for winning

	#Checks through all lines of 3 starting at the first node
node1:	la $t3, listOne
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node2	#Jumps to the next node if this one is empty
	beq $t4, 2, enemyNode1	#Jumps to the node for processing a computer win if occupied by computer
	la $t3, listTwo		#Gets the value for node 2 to check a horizontal node on the bottom
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node1Check2	#Jumps to the next node if not a success
	la $t3, listThree	#Gets the value for node 3
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node1Check2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit

node1Check2:
	la $t3, listTwo		#Gets the value for node 5 starting from 1
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node1Check3	#Jumps to the next check
	la $t3, listThree	#Gets the value for node 9 starting from 1
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node1Check3
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit

node1Check3:
	la $t3, listOne		#Gets the value for node 4 starting from 1
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node2
	la $t3, listOne		#Gets the value for node 7 starting from 1
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit

node2:	la $t3, listTwo		#Gets value for node 2
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node3	
	beq $t4, 2, enemyNode2 #Jumps if occupied by enemy placement
	la $t3, listTwo		#Gets the value for node 5 starting from 2
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node3
	la $t3, listTwo		#Gets the value for node 8 from 2
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node3
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node3:	la $t3, listThree	#Gets the value for node 3
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node4
	beq $t4, 2, enemyNode3	#Jumps if occupied by enemy
	la $t3, listTwo		#Gets the value for node 5 from 3
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node3check2
	la $t3, listOne		#Gets the value for node 7 from 3
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node3check2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node3check2:
	la $t3, listThree	#Gets the value for node 6 starting from 3
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node4
	la $t3, listThree	#Gets the value for node 9 starting from 6
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node4
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node4:	la $t3, listOne		#Gets the value for node 4 
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node5
	beq $t4, 2, enemyNode4
	la $t3, listTwo 	#Gets the value for node 5 starting from 4
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node4check2
	la $t3, listThree	#Gets the value for node 6 starting from 4
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node4check2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node4check2:
	la $t3, listTwo		#Gets the value for node 8 starting from 4
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node4check3
	la $t3, listThree	#Gets the value for node 12 from 4
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node4check3
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node4check3:
	la $t3, listOne		#Gets the value for node 7 starting from 4
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node5
	la $t3, listOne		#Gets the value for node 10 starting from 4
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node5
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit

node5:	la $t3, listTwo		#Gets the value for node 5
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node6
	beq $t4, 2, enemyNode5
	la $t3, listTwo		#Gets the value for node 8 from 5
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node6
	la $t3, listTwo		#Gets the value for node 11 from 5
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node6
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit

node6:	la $t3, listThree	#Gets the value for node 6
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node7
	beq $t4, 2, enemyNode6
	la $t3, listTwo		#Gets the value for node 8 starting from 6
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node6check2
	la $t3, listOne		#Gets the value for node 10 starting from 6
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node6check2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node6check2:
	la $t3, listThree	#Gets the value for node 9 starting from 6
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node7
	la $t3, listThree	#Gets the value for node 12 starting from 6
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node7
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node7:	la $t3, listOne		#Gets the value for node 7
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node8
	beq $t4, 2, enemyNode8
	la $t3, listTwo		#Gets the value for node 8 from 7
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node7check2
	la $t3, listThree	#Gets the value for node 9 from 7
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node7check2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node7check2:
	la $t3, listTwo		#Gets the value for node 11 starting from 7
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node7check3
	la $t3, listThree	#Gets the value for node 15 starting from 7
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node7check3
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node7check3:
	la $t3, listOne		#Gets the value for node 10 starting from 7
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node8
	la $t3, listOne		#Gets the value for node 13 from 7
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node8
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node8:	la $t3, listTwo		#Gets the value for node 8
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node9
	beq $t4, 2, enemyNode8
	la $t3, listTwo		#Gets the value for node 11 starting from 8
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node9
	la $t3, listTwo		#Gets the value for node 14 starting from 8
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node9
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node9:	la $t3, listThree	#Gets the value for node 9
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node10
	beq $t4, 2, enemyNode9
	la $t3, listTwo		#Gets the value for node 11 starting 9
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node9check2
	la $t4, listOne		#Gets the value for node 13 starting at 9
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node9check2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node9check2:
	la $t3, listThree	#Gets the value for node 12 starting from 9
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node10
	la $t3, listThree	#Gets the value for node 15 from 9
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node10
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
	
node10:	la $t3, listOne		#Gets the value for node 10
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node11
	beq $t4, 2, enemyNode10
	la $t3, listOne		#Gets the value for node 13 starting from 10
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node10check2
	la $t3, listThree	#Gets the value for node 16 starting from 10
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node10check2
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node10check2:
	la $t3, listTwo		#Gets the value for node 14 from 10
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node10check3
	la $t3, listThree	#Gets the value for node 18 from 10
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node10check3
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node10check3:
	la $t3, listTwo		#Gets the value for node 11 from 10
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node11
	la $t3, listThree	#Gets the value for node 12 from 10
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node11
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit

node11:
	la $t3, listTwo		#Gets the value for node 11
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node12
	beq $t4, 2, enemyNode11
	la $t3, listTwo		#Gets the value for node 14 starting from 11
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node12
	la $t3, listTwo		#Gets the value for node 17 starting from 11
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node12
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node12:
	la $t3, listThree	#Gets the value for node 12
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node13
	beq $t4, 2, enemyNode12
	la $t3, listTwo		#Gets the value for node 14 from 12
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node12check2
	la $t3, listOne		#Gets the value for node 16 from 12
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	bne $t4, 1, node12check2
	lw $t4, 0($t1)
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node12check2:
	la $t3, listThree	#Gets the value for node 15 starting from 12
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node13
	la $t3, listThree	#Gets the value for node 18 starting from 12
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node13
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node13:	la $t3, listOne		#Gets the value for node 13
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, node16
	beq $t4, 2, enemyNode13
	la $t3, listTwo		#Gets the value for node 14 from 13
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, node16
	la $t3, listTwo		#Gets the value for node 15 from 13
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	bne $t4, 1, node16
	lw $t4, 0($t1)
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
node16:	la $t3, listOne		#Gets the value for node 16, skip nodes 14-15 and 17-18 due to repeating combos
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, main
	beq $t4, 2, enemyNode16
	la $t3, listTwo		#Gets the value for node 17 starting from node 16
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, main
	la $t3, listThree	#Gets the value for node 18 starting from node 16
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, main
	li $v0, 4		#Outputs a win message
	la $a0, uwin
	syscall
	j exit
	
#Checks through all lines of 3 starting at the first node checking if the computer wins
enemyNode1:
	la $t3, listOne
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode2	#Jumps to the node for processing a computer win if occupied by computer
	la $t3, listTwo		#Gets the value for node 2 to check a horizontal node on the bottom
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemynode1Check2	#Jumps to the next node if not a success
	la $t3, listThree	#Gets the value for node 3
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemynode1Check2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit

enemynode1Check2:
	la $t3, listTwo		#Gets the value for node 5 starting from 1
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemynode1Check3	#Jumps to the next check
	la $t3, listThree	#Gets the value for node 9 starting from 1
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemynode1Check3
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit

enemynode1Check3:
	la $t3, listOne		#Gets the value for node 4 starting from 1
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode2
	la $t3, listOne		#Gets the value for node 7 starting from 1
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit

enemyNode2:	
	la $t3, listTwo		#Gets value for node 2
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode3	
	la $t3, listTwo		#Gets the value for node 5 starting from 2
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode3
	la $t3, listTwo		#Gets the value for node 8 from 2
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode3
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode3:	
	la $t3, listThree	#Gets the value for node 3
	li $t2, 0
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode4	#Jumps if occupied by enemy
	la $t3, listTwo		#Gets the value for node 5 from 3
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode3check2
	la $t3, listOne		#Gets the value for node 7 from 3
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode3check2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode3check2:
	la $t3, listThree	#Gets the value for node 6 starting from 3
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode4
	la $t3, listThree	#Gets the value for node 9 starting from 6
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode4
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode4:	
	la $t3, listOne		#Gets the value for node 4 
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode5
	la $t3, listTwo 	#Gets the value for node 5 starting from 4
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode4check2
	la $t3, listThree	#Gets the value for node 6 starting from 4
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode4check2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode4check2:
	la $t3, listTwo		#Gets the value for node 8 starting from 4
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode4check3
	la $t3, listThree	#Gets the value for node 12 from 4
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode4check3
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode4check3:
	la $t3, listOne		#Gets the value for node 7 starting from 4
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode5
	la $t3, listOne		#Gets the value for node 10 starting from 4
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode5
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit

enemyNode5:	
	la $t3, listTwo		#Gets the value for node 5
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode6
	la $t3, listTwo		#Gets the value for node 8 from 5
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode6
	la $t3, listTwo		#Gets the value for node 11 from 5
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode6
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit

enemyNode6:	
	la $t3, listThree	#Gets the value for node 6
	li $t2, 1
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode7
	la $t3, listTwo		#Gets the value for node 8 starting from 6
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode6check2
	la $t3, listOne		#Gets the value for node 10 starting from 6
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode6check2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode6check2:
	la $t3, listThree	#Gets the value for node 9 starting from 6
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode7
	la $t3, listThree	#Gets the value for node 12 starting from 6
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode7
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode7:
	la $t3, listOne		#Gets the value for node 7
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode8
	la $t3, listTwo		#Gets the value for node 8 from 7
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode7check2
	la $t3, listThree	#Gets the value for node 9 from 7
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode7check2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode7check2:
	la $t3, listTwo		#Gets the value for node 11 starting from 7
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode7check3
	la $t3, listThree	#Gets the value for node 15 starting from 7
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode7check3
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode7check3:
	la $t3, listOne		#Gets the value for node 10 starting from 7
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode8
	la $t3, listOne		#Gets the value for node 13 from 7
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode8
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode8:
	la $t3, listTwo		#Gets the value for node 8
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode9
	la $t3, listTwo		#Gets the value for node 11 starting from 8
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode9
	la $t3, listTwo		#Gets the value for node 14 starting from 8
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode9
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode9:
	la $t3, listThree	#Gets the value for node 9
	li $t2, 2
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode10
	la $t3, listTwo		#Gets the value for node 11 starting 9
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode9check2
	la $t4, listOne		#Gets the value for node 13 starting at 9
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode9check2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode9check2:
	la $t3, listThree	#Gets the value for node 12 starting from 9
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode10
	la $t3, listThree	#Gets the value for node 15 from 9
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode10
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
	
enemyNode10:
	la $t3, listOne		#Gets the value for node 10
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode11
	la $t3, listOne		#Gets the value for node 13 starting from 10
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode10check2
	la $t3, listThree	#Gets the value for node 16 starting from 10
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode10check2
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode10check2:
	la $t3, listTwo		#Gets the value for node 14 from 10
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode10check3
	la $t3, listThree	#Gets the value for node 18 from 10
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode10check3
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode10check3:
	la $t3, listTwo		#Gets the value for node 11 from 10
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode11
	la $t3, listThree	#Gets the value for node 12 from 10
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode11
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit

enemyNode11:
	la $t3, listTwo		#Gets the value for node 11
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode12
	la $t3, listTwo		#Gets the value for node 14 starting from 11
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode12
	la $t3, listTwo		#Gets the value for node 17 starting from 11
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode12
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode12:
	la $t3, listThree	#Gets the value for node 12
	li $t2, 3
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode13
	la $t3, listTwo		#Gets the value for node 14 from 12
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode12check2
	la $t3, listOne		#Gets the value for node 16 from 12
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	bne $t4, 2, enemyNode12check2
	lw $t4, 0($t1)
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode12check2:
	la $t3, listThree	#Gets the value for node 15 starting from 12
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode13
	la $t3, listThree	#Gets the value for node 18 starting from 12
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode13
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode13:	
	la $t3, listOne		#Gets the value for node 13
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, enemyNode16
	la $t3, listTwo		#Gets the value for node 14 from 13
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode16
	la $t3, listTwo		#Gets the value for node 15 from 13
	li $t2, 4
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 2, enemyNode16
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit
	
enemyNode16:	
	la $t3, listOne		#Gets the value for node 16, skip nodes 14-15 and 17-18 due to repeating combos
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	beq $t4, 0, main
	la $t3, listTwo		#Gets the value for node 17 starting from node 16
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, main
	la $t3, listThree	#Gets the value for node 18 starting from node 16
	li $t2, 5
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $t3
	lw $t4, 0($t1)
	bne $t4, 1, main
	li $v0, 4		#Outputs a lose message
	la $a0, ulose
	syscall
	j exit

exit:	#Ends the program when reached
