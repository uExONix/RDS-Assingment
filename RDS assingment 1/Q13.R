#13 Create a new vector as a copy of (10.) by assigning (10.) as is to a newly named object.
#Using this new copy of (10.), overwrite the first, the fifth to the seventh (inclusive), and the last
#element with the values 99 to 95 (inclusive), respectively.

modified_vec<-new_v
modified_vec
modified_vec[1]<-99
modified_vec[5:7]<-98:96
modified_vec[length(modified_vec)]<-95
modified_vec