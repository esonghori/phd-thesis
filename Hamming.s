#hamming distance
#between A and B with length of l
hamming:
	lw $9, 0($0) #load l into $9
	sll $9, $9, 2 #$9 = $9*4
	addi $2, $0, 8 #$2 := A
	add  $3, $2, $9 #$3 := B = A + l
	#answer; no need to reset
	#addi  $10, $0, 0
	#l+=2 to compare with end of A
	addi  $9, $9, 8
loop: #done if A==end of A
	beq $2, $9, done
	lw $4, 0($2) #load *A
	lw $5, 0($3) #load *B
	xor $6, $4, $5 #$6==0
	beq $6, $0, same #goto A[i]!=B[i]
	addi $10, $10, 1 #answer++
same:#A++ #B++
	addi $2, $2, 4
	addi $3, $3, 4
	j loop #jump back to the top
done: #store answer
	sw $10, 4($0) 
end: #while(1)
	j end
