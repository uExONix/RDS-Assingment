#10 Create and store a three-dimensional array with six layers of a 4 x 2 matrix, filled with a
#   decreasing sequence of values between 4.8 and 0.1 of the appropriate length.

values <- seq(4.8, 0.1, length.out = 48) 
array_3d <- array(values, dim = c(4, 2, 6))  # Reshape into a 4x2 matrix with 6 layers

# Display the 3D array

cat("Three-dimensional array (6 layers of 4x2 matrices):\n")
print(array_3d)
