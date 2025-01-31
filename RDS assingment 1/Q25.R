#25. Conditional Vector Transformation:
#Convert the vector c(3,1,2,3,1,2,3,1,2) into a vector of only 2s, using a vector of length 2. Which
#vectorized operations in R would facilitate this conversion?

vec3<-c(3,1,2,3,1,2,3,1,2)
vec4<-rep(2,length(vec3))
vec4