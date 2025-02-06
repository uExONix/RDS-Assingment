#6. Overwrite, in this order, the elements of (3.) at positions (4;2), (1;2), (4;1), and (1;1) with -1/2
#   of the two values on the diagonal of (e).

diagonal_elements <- diag(bottom_elements)
mat1[4, 2] <- -1/2 * diagonal_elements[1]
mat1[1, 2] <- -1/2 * diagonal_elements[2]
mat1[4, 1] <- -1/2 * diagonal_elements[1]
mat1[1, 1] <- -1/2 * diagonal_elements[2]
mat1