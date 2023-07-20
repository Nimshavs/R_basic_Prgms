num <- as.integer(readline(prompt = "Enter a number "))
fact <- 1
new.fact <- function(num){
  while(num>1){
    fact<- fact*num
    num<- num-1
  }
  cat("factorial is ", fact)
  
  }
new.fact(num)
