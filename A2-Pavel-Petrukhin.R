#Q1
#1 + 6/5 + 6/4 + 6/3 + 6/2 + 6/1 = 14.7
iterations<-200
mean<-0
for(i in 1:200)
{
  currentNumber<-0
  counts<-c(0,0,0,0,0,0)
  while(counts[1]<1||counts[2]<1||counts[3]<1||counts[4]<1||counts[5]<1||counts[6]<1)
  {
    x<-ceiling(runif(1,0,6))
    counts[x]<-counts[x] + 1 
    currentNumber <- currentNumber + 1
  }
  mean<-mean + currentNumber
}

mean<-mean/200
mean
#Q2

probability <-function(k){
  iterations <-200
  samples<-10000
  mean<-0
  for(i in 1:iterations)
  {
    cardsOnTable<-sample(k)
    count<-0
    for(j in 1:samples)
    {
      guess<-sample(k)
      matches<-0
      for(m in 1:k)
      {
        if(guess[m]==cardsOnTable[m])
        {
          matches<-matches+1
        }
      }
      if(matches==0)
      {
        count<-count + 1
      }
    }
    prob<-count/samples
    mean<-mean + prob
  }
  mean<-mean/iterations
  return (mean)
}

k_values<-c(6,7,8,9,10)

probabilities<-sapply(k_values,probability)
probabilities

plot(k_values,probabilities, type="l")
