#Q1
#lambda = 1
#P(k customers arrive) = 1/2^(k+1), so P(max 2 arrive) =
#1/2 + 1/4 + 1/8 = 7/8 = 0.875 (simulation will be around this
#value)
res<-0
for(i in 1:200)
{
  time<-rexp(1,rate=2)
  count<-0
  for(j in 1:10000)
  {
    customers<-rpois(1,2*time)
    if(customers<=2)
    {
      count<-count + 1
    }
  }
  res<-res + count/10000
}
res<-res/200
res
#Q2
#for tutorial sheet 7, we know answer is 3a/8. 
ans<-NULL
for(a in 1:5)
{
  m_ex<-0
  for(i in 1:200)
  {
    x<-runif(10000,0,a)
    ex<-0
    for(j in 1:10000)
    {
      y<-0
      if(x[j]<a/2)
      {
        y<-x[j]
      }
      else
      {
        y<-a/2
      }
      ex<-ex + y
    }
    m_ex<-m_ex + ex/10000
  }
  m_ex<-m_ex/200
  ans<-c(ans,m_ex)
}
plot(c(1,2,3,4,5),ans)