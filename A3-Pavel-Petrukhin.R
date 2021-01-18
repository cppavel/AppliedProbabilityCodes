#Q1 - sum of n exponential rvs is erlang
#we expect 50%, 33%, 25% and 20% respectively 
#ratio of expected values
reps<-200
iterations<-10000
max_k<-5
res<-NULL
for(k in 2:max_k)
{
  ans<-0
  for(i in 1:reps)
  {
    m_first<-0
    m_total<-0
    first<-rexp(iterations,rate = 1/24000)
    total<-rgamma(iterations,shape=k,rate = 1/24000)
    for(j in 1:iterations)
    {
      m_first<-m_first + first[j]
      m_total<-m_total + total[j]
    }
    m_first<-m_first/iterations
    m_total<-m_total/iterations
    ans<-ans+m_first/m_total
    
  }
  ans<-ans*100/reps
  res <-c(res,ans)
}
plot(c(2,3,4,5),res)

#Q2
findp <- function(sd) {
  ans<-0
  iterations<-10000
  mean<-0
  a<-1
  b<-2
  reps<-200
  for(i in 1:reps)
  {
    x<-rnorm(iterations,mean,sd)
    count<-0
    for(elem in x)
    {
      if(elem>=a)
      {
        if(elem<=b)
        {
          count <- count + 1
        }
          
      }
    }
    ans<- ans + count/iterations
  }
  
  return (ans/reps)
}

g<-Vectorize(findp)
curv=curve(g, from=0, to=100)

y_max<-max(curv$y,na.rm = TRUE)
x_max<-curv$x[which(curv$y==y_max)]

#X max x = 2
x_max
#Y_max y = 0.15 (around 0.15)
y_max
