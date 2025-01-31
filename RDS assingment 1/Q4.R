#4. Create and store a vector that contains, in any configuration, the following:
#i. A sequence of integers from 6 to 12 (inclusive)
#ii. A threefold repetition of the value 5.3
#iii. The number -3
#iv. A sequence of nine values starting at 102 and ending at the number that is the total
#length of the vector created in (3.)


#4(i)
p<-6:12
p
#4(ii)
q<-rep(5.3,times=3)
q
#4(iii)
r<--3
r
#4(iv)
length(new_vec)
s<-seq(from=102,to=length(new_vec),length.out=9)
s
new_vector<-c(p,q,r,s)
new_vector
