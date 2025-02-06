#21

matrix_A <- matrix(c(2, 3, 5, 7), nrow = 2, ncol = 2, byrow = TRUE)
matrix_B <- matrix(c(5, 15, 10, 20), nrow = 2, ncol = 2, byrow = TRUE)
matrix_A
matrix_B
result <- 3*(matrix_A - matrix_B)
result