find_factor<- function(number) {
  factors<-c()
  
  for(i in 1:number){
    if(number %% i == 0){
      factors<-c(factors,i)
    }
  }
  return(factors)
}
number<- as.integer(readline("enter a number"))
factors<- find_factor(number)
cat("factors",number,"is",factors,"\n")
  