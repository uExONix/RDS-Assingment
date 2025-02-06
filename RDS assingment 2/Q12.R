#12. Use a fourfold repetition of the second row of the matrix formed in (11.) to fill a new array of
#    dimensions 2 x 2 x 2 x 3.

new_array <- array(rep(extracted_elements[2, ], 4), dim = c(2, 2, 2, 3))
new_array