#17. Sort the first column of the matrix from question (15.) in descending order. Keep other columns
#   unchanged.

matrix_5x3[,1]<-sort(matrix_5x3[,1],decreasing = TRUE)
matrix_5x3