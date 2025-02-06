#3. Overwrite the second column of the matrix from (1.) with that same column sorted from smallest
#   to largest.

vec1<-c(4.3, 3.1, 8.2, 8.2, 3.2,0.9, 1.6, 6.5)
mat1<-matrix(vec1,nrow=4,ncol=2,byrow=TRUE)
dim(mat1)
mat1[,2]<-sort(mat1[,2])
mat1

