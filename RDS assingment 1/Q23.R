#23. Extraction and Reconstruction:
# Extract the first and third elements from the vector created in question 5, storing them in a new
#object. How would you use this new object along with the original vector (minus its first and
#third elements) to reconstruct the original sequence?

ext<-new_vector[c(1,3)]
ext
remaining_vector_element<-new_vector[-c(1,3)]
remaining_vector_element
reconstructed_original_seq<-c(extract[1],remaining_vector_element[1],ext[2],remaining_vector_element[2:length(remaining_vector_element)])
reconstructed_original_seq