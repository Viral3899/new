#1. Create function for sum of two objects.
add=function(a,b){
  c=a+b
  print(c)
}
add(10,10)

#2. Create function for Subtract of two objects.

sub=function(a,b){
  c=a-b
  print(c)
}
sub(20,10)

#3. Create function for multiply of two objects.
mul=function(a,b){
  c=a*b
  print(c)
}
mul(10,4)

#4. Create a function for (A^3)+(B^2)-(C^2).

fun=function(A,B,C){
  D=(A^3)+(B^2)-(C^2)
  print(D)
}

fun(10,3,10)


#5. Create a function for print First name and Last name of
#   user with Hello massage.
greet=function(){
  firstname=readline("Enter your First Name: ")
  lastname=readline("Enter your Last Name: ")
  cat("hello Mr.",firstname,lastnaame)
}
greet()


#6. Create a function to get the range of the vector. 
#     Hint (max-min).
minmax=function(vector){
 mini= min(vector)
 maxi=max(vector)
 cat("min value in",vector,"is",mini,"\nand max value in",vector,"is",maxi)
}
minmax(c(1,2,5,34,556,0))



#7. Create a function for getting square root of 
#     any number. Hint ( sqrt(x) ).

root=function(num){
  num=as.numeric(readline("Enter the number: "))
  root=sqrt(num)
  cat("square root of",num,"is",root)
}

root()


#Create a function for identify the number of characters in string.
#Hint (nchar(x)).
numchar=function(a){
  a=readline("Entre the String: ")
  numberofcahr=nchar(a)
  cat("number of Charecter in string is ",numberofcahr)
}
numchar()
