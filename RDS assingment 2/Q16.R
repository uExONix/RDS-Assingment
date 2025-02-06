# 16. If you add a new row to the matrix created in question (15.), confirm its new dimensions.

new_row <- c(16, 17, 18)  # New row to add
matrix_5x3_new <- rbind(matrix_5x3, new_row)
dim(matrix_5x3_new)