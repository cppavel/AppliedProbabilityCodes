GCD <- function(a, b) {
  while(b) {
    tmp = b
    b = a %% b
    a = tmp
  }
  return(a)
}
iterations<-200
samples<-10000
mean<-0
for(i in 1:iterations)
{
  x<-ceiling(runif(10000,0,10^6))
  y<-ceiling(runif(10000,0,10^6))
  count<-0
  for(j in 1:samples)
  {
    if(GCD(x[j],y[j])==1)
    {
      count<-count + 1 
    }
  }
  
  prob<-count/samples
  
  mean<-mean+prob
}

mean<-mean/200
mean
  
