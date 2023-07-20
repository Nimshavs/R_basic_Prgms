#calculator pgm

print("1. Addition")
print("2. Subtraction")
print("3. Multiplication")
print("4. Division")
choice = as.integer(readline(prompt = "Enter your choice "))
a = as.integer(readline(prompt = "Enter first number "))
b = as.integer(readline(prompt = "Enter second number "))
if (choice == 1){
  cat("sum is ", a+b)
}else if(choice == 2){
  cat("difference is ", a-b)
}else if(choice == 3){
  cat("value is ",a*b)
}else if(choice == 4){
  cat("value is ", a/b)
}else{
  print("enter correct choice")
}
