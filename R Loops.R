#Print 1:100 number using repeat loop.
i=1
repeat{
print(i)
  i=i+1
  if(i>100){
    break
  }
}

#2. Print 101 to 110 using repeat loop.
i=101
repeat{
  print(i)
  i=i+1
  if(i>110){
    break
  }
}

#3. Print "Hello World" 5 time using repeat loop.
i=1
repeat{
  print("Hello World")
  i=i+1
  if(i>5){
    break
  }
}

#4. Print 10:100 number using while loop.
i=10
while (i<101) {
  print(i)
  i=i+1
}



#5. Print "Hello Class" 5 time using while loop.

i=1
while (i<=5) {
  print("Hello World")
  i=i+1
}


#6. Print square of 1 to 10 number using for loop.

for (i in 1:10){
  cat("Square of ",i,"is",i^2,"\n")
}


#7. Print each fruit name one by one using for loop
#(apple,banana,mango,kiwi,orange )

for (i in c('apple','banana','mango','kiwi','orange')){
  print(i)
}


