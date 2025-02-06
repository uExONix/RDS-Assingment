#20. Replace the elements at positions (2,1), (2,3), (5,1), and (5,3) in the matrix from question (17.)
#   with the average of the four corner elements of that matrix.

matrix_5x3
corner_values <- c(matrix_5x3[1, 1], matrix_5x3[1, 3], matrix_5x3[5, 1], matrix_5x3[5, 3])
corner_avg <- mean(corner_values)
corner_avg
matrix_5x3[c(2, 5), c(1, 3)] <- corner_avg
matrix_5x3