#11. Use the colon operator as an index vector to reverse the order of (10.), and confirm this is
#identical to using sort on (10.) with decreasing=TRUE.

vec<-1:10
reversed_using_colon<-vec[length(vec):1]
reversed_using_sort<-sort(vec, decreasing=TRUE)
identical(reversed_using_sort,reversed_using_colon)