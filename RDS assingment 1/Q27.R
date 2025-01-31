#27. Vector Multiplication and Element Replacement:
# Use the vector c(3,5,7) and the vector c(2,3) with the rep function and multiplication to produce
#the vector c(6,15,21,9,15,21). How do you then replace the middle four elements with two
#alternately repeated values of -1 and -150?

vec5<-c(3,5,7)
vec6<-c(2,3)
multiply_res<-vec5*rep(vec6,times=c(1,5))
multiply_res