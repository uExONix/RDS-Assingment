#24

set.seed(123)

# Construct the three-dimensional array with random numbers between 1 and 9

array_3d <- array(sample(1:9, 4 * 3 * 3, replace = TRUE), dim = c(3, 3, 4))

# Display the array to see its structure

print(array_3d)

# Extract the elements of the first row of the third column across all layers

extracted_elements <- array_3d[1, 3, ]
extracted_elements

# Store them as a new vector

new_vector <- as.vector(extracted_elements)

# Display the new vector

print(new_vector)