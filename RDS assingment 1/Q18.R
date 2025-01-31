#18. Reversed Sequence Creation:
#Generate and store a sequence of values from 10 to -20 in steps of 0.5. How can you reverse this
#sequence efficiently in R without recreating it manually?

new_seq<-seq(10,-20,-0.5)
new_seq
reverse_seq<-new_seq[length(new_seq):1]
reverse_seq