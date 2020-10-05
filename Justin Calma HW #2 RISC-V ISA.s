# Justin Calma
# CECS 341 - 04
# HW #2

# Given code for the array and data 
.data 
A: .byte 2, 0, 3, 1
.text
li x5, 4
li x6, 2 
la x10, A

# Set index i = 0
addi x7, x0, 0

# Outer for loop
For1:
	
	# Branch if b equals a
	beq x7, x5, Exit1

	# Set index j = 0
	addi x29, x0, 0

# Inner for loop
For2:

	# Branch if j equals b
	beq x29, x6, Exit2

	# Set x3 to the address of A[i]
	add x3, x10, x7

	# Set the element of A[i] into x1
	lb x1, 0(x3)

	# x1 = x[i] + i
	add x1, x1, x7

	# x2 = 4*j
	slli x2, x29, 2
	
	# x2 = 5*j
	add x2, x2, x29

	# x1 = A[i] + 5*j + i
	add x1, x1, x2

	# Store the result into A[i]
	sb x1, 0(x3)

	# Increment j
	addi x29, x29, 1

	# Iterate the inner loop again
	j For2

# If j != b
Exit2: 
	
	# Increment i
	addi x7, x7, 1

	# Iterate the outer loop again
	j For1

# If b != a
Exit1:
	