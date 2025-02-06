#19. From the matrix in question (17.), create a new 2 x 2 matrix using the top four elements of the
#    last column.

matrix_5x3
top_four_last_column <- matrix_5x3[1:4, 3]  # Top four elements of the last column
matrix_2x2 <- matrix(top_four_last_column, nrow = 2, ncol = 2)
matrix_2x2