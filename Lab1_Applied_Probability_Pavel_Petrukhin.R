#a few things we did in first lab of applied probability
install.packages("gtools")

library(gtools)

x <-c("Red","Blue","Green","Yellow")

A<-permutations(n=4,r=2,v=x,repeats.allowed=T)
A
nrow(A)

B<-permutations(n=4,r=3,v=x,repeats.allowed = T)
B
nrow(B)

C<-permutations(n=4,r=2,v=x)
C
nrow(C)

D<-permutations(n=4,r=3,v=x)
D
nrow(D)


E<-choose(n=24,k=4)
E

F<-combn(letters[1:4],2)
F
ncol(F)


#Questions

n<-1+9
k<-4/2

#Q1

Q1<-permutations(n,k,repeats.allowed = TRUE)
nrow(Q1)

#Q2

Q2<-permutations(n,k,repeats.allowed = FALSE)
nrow(Q2)

#Q3

Q3<-combinations(n,k,repeats.allowed = TRUE)
nrow(Q3)

#Q4
Q3
