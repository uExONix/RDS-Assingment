#8

# Defining two matrices A and B
A <- matrix(c(1, 2, 7), nrow = 3, ncol = 1)
B <- matrix(c(3, 4, 8), nrow = 3, ncol = 1)

# i. A . B (Not possible)
# Because number of column of 1st matrix is not equal to Number of row of 2nd matrix

# ii. 
t(A)
result_ii <- t(A) %*% B
result_ii

#iii
A_AT <- A %*% t(A)  
result_iii <- t(B) %*% A_AT
result_iii

#iv
#Now when we try to do (A.t(A)).t(B) it is not possible because dimension of column and row is not equal(above i. concept)

#v
B_BT <- B %*% t(B)  
I3 <- diag(3)  
matrix_to_invert <- B_BT + A_AT - 100 * I3  
result_v <- solve(matrix_to_invert)
result_v