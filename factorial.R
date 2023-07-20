num = as.integer(readline(prompt = "Enter a number "))
factorial =1
if(num<0){
  print("factorial doesn't exist")
}else if(num==0){
  print(cat("factorial of",  num ,"is 1"))
}else{
  for(i in 1:num){
    factorial = factorial * i
  }
  print(paste("the factorial of " , num ,"is",factorial))
}