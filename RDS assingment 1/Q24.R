#24. Middle Element Replacement:
#From the resulting vector in question 5, replace the middle three elements with the sequence
#-0.5, -200, -0.5. What strategies in R allow for such precise element replace


middle_index<-floor(length(new_vector)/2)
new_vector[middle_index:(middle_index+2)]<-c(-0.5,-200,-0.5)
new_vector