#7

matrix1 <- matrix(c(1, 2, 2, 4, 7, 6), nrow = 3, ncol = 2, byrow = TRUE)
matrix2 <- matrix(c(10, 20, 30, 40, 50, 60), nrow = 3, ncol = 2, byrow = TRUE)
matrix1
matrix2

# Subtract the second matrix from the first matrix

result <- 2/7*(matrix1 - matrix2)

# Display result

print("Result of matrix : ")
print(result)