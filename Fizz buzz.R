#r pgm print from 1 to 100 and print fizz for multiples of 3 and print bus for 5
# and fizz bus for both

a = as.integer(readline("Enter the number "))
for (i in 1:a) {
  if(i%%3==0 && i%%5==0)
    print("fizz buzz")
  else if(i%%3==0)
    print("fizz")
  else if(i%%5==0)
    print("buzz")
  else
    print(i)
}