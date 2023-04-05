#Arithetic Operatoe

v <- 5
t <- 3
print(v+t)
print(v-t)
print(v*t)
print(v/t)
print(v%%t)
print(v%/%t)
print(v^t)

#Relational Operator
print(v>t)
print(v<t)
print(v==t)
print(v<=t)
print(v>=t)
print(v!=t)

N=100
G=300
print(N>G)
print(N<G)
print(N==G)
print(N<=G)
print(N>=G)
print(N!=G)

#Logical Operator

v <- 3
t <- 4
print(v&t)


v <- 3
t <- 4
print(v|t)


print(v|!t)

print(!v)


print(v&&t)


t <- c(0,3,TRUE,2+3i)
print(v||t)

#Assignment Operator

v1 <- 100
v2 <<- 200
v3 = c(100,200,300)

c(3,1,TRUE,2+3i) -> v1
c(3,1,TRUE,2+3i) ->> v2 
c(3,1,TRUE,2+3i) = v3

print(v1)
print(v2)
print(v3)

v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t)

a=c(2:8)
a

M = matrix( c(2,6,5,1,10,4), nrow = 3,ncol = 3,byrow = TRUE)
N = matrix( c(2,6,5,1,10,4), nrow = 3,ncol = 3,byrow = TRUE)
t = M %*% t(M)
print(t)
M %*% N
M %*% N

#If Statement
x=30
if(is.integer(x)){
  print("x is an integar")
}

x=10
if(x<12){
  print(x)
}


y=1
if(y>0){
  print("positive number")
}

#If Else Statement

quantity <-  25

if (quantity > 20) {
  print("You sold a lot!")
} else {
  print("Not enough for today")  
}

x=c("Mango","kiwi","Banana")
if("Apple"%in% x){
  print("Apple is found")
}else{
  print("Apple is not found")
}

#if else if
x=0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else {
  print("Zero")
}

x <- c("Apple","Orange","Mango")
if("mango" %in% x){
  print("mango is found the first time")
}else if ("Mango" %in% x) {
  print("Mango is found the second time")
} else {
  print("No Mongo found")
}

#
mystring
if(is.numeric(mystring)){
  print("a is numeric")
}else if(is.character(mystring)){
  print("a is character")
}else{
  print("a is not numeric or character")
}

#ifx=-0.4 strong negative corelation,x=0 no corelation, x=0.3 positive corelation
x=0.9
if(x==-0.4){
  print("Strong Negative Correlation")
}else if(x==0){
  print("No Corelation")
}else if(x==0.3){
  print("Weak Positive Corelation")
}else{
  print("Strong Positive Corelation")
}

x <- switch( 
  2, 
  "pepsi", 
  "coke", 
  "sprite", 
  "thumps up" 
) 
print(x)

x <- switch( 
  3, 
  "first", 
  "second", 
  "third", 
) 
print(x)

#Loops

#Repeat Loop

v=c("Fingertips","loop")
cnt=2
repeat {
  print(v)
  cnt=cnt+1
  if(cnt > 5) {
    break
  }
}

x=1

repeat {
  print(x)
  x = x+1
  if (x==5){
    break
  }
}
#gap of 2
x=5
repeat{
  print(x)
  x=x+2
  if(x>10){
    break
  }
}


x=5
repeat{
  x=x+2
  print(x)
  if(x>10){
    break
  }
}
#table of 11
x=11
repeat{
  print(x)
  x=x+11
  if(x>110){
    break
  }
}

x=3
repeat{
  print(x)
  x=x+2
  if(x>50){
    break
  }
}
#While Loop
v <- c("Fingertips","while loop")
cnt=2

while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}
