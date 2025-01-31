#19. Vector Repetition and Order Sorting:
#For the vector c(-2, 4, -6, 8, -10), describe how to repeat the vector itself three times and each of
#its elements 5 times. Following this, how would you sort the resulting vector from smallest to
#largest?

vector_rep<-c(-2, 4, -6, 8, -10)
repeated_vec<-rep(vector_rep,times=3)
repeated_vec
repeated_each_element<-rep(repeated_vec,each=5)
repeated_each_element
sort(repeated_each_element)