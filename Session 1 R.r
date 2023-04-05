 # print Hello Word
myString <- "Hello Class!" 
mystring="hello world"
print ( mystring)




#Create vector
apple <- c("red","green","yellow")
print(apple)
apple

# Get the class of the vector
print(class(apple))

numeric<-c(34,25,67)
print(numeric)
print(class(numeric))
weekend<-c("Rahul","Neraj","Shruti","Mitesh","Kamal")
print(weekend)
print(class(weekend))

boolean=c(TRUE,FALSE)
print(boolean)
print(class(boolean))


a=c(1:100)
print(a)
b= c(1,2,3,4,5,6)
print(b)
c=c(10,20,30,40,50,60)

# Create a list.
list1 <- list(c(1,2,3,4,5,6,7),21.3,sin)

print(list1)
list1
# Print the list.
print(list1)



list2 <- list(c("good","bad","excellent"),45,TRUE)
print(list2)

list3<-list(c("Rahul","Reena","Yash"),c(42,67,45),c("C","A","B"))
list3
list4=list(c(7,8,9),list3)
list4
# Create a matrix.
M = matrix( c('a','b','c','d','e','f'), nrow = 2, ncol = 3)
print(M)
M
t(M)

MT = matrix( c('a','b','c','d','e','f'), nrow = 2, ncol = 3,byrow = TRUE)
print(MT)
t(MT)

print(M[2,2])
print(M[2,3])
print(M[2,1])


a= c(1,2,3,4,5,6)
b=c(10,20,30,40,50,60)
c= cbind(a,b)
print(c)

r=rbind(a,b)
print(r)

# Create an array
a <- array(c("Fingertips","DataScience"),dim = c(3,3,2))
print(a)

# Create an array.
a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)

#Factor
# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')
print(class(apple_colors))

# Create a factor object.
factor_apple <- factor(apple_colors)
print(class(factor_apple))

# Print the factor.
print(factor_apple)
print(nlevels  (factor_apple))

# Create gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

class(gender_vector)

# Convert gender_vector to a factor
factor_gender_vector <-factor(gender_vector)
class(factor_gender_vector)


a=c(1,2,3)
factor_1=factor(a)
print(class(factor(a)))
print(nlevels(factor_1))

# Create the data frame.
BMI = data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)

enrollement <- data.frame("SNo" = 1:4, "Age" = c(16,19,21,15), "Name" = c("John","Dhara","Ravi","Janvi"))
print(enrollement)

#Arithetic Operatoe

v <- c(2,5.5,6)
t <- c(8, 3, 4)
print(v+t)
print(v-t)
print(v*t)
print(v/t)
print(v%%t)
print(v%/%t)
print(v^t)

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)

#Relational Operator

#Greater than
v <- 5
t <- 2
print(v>t)

#Less Than
v <- 3
t <- 5
print(v < t)

# Equal to == 
v = 7
t = 8 
print(v ==t)

# Less than or Equal to <= 
v <- 9
t <- 11
print(v <= t)

# Greater than or Equal to >= 
v <- 8
t <- 13
print(v >=t)

# Not Equal to != 
v <- 5
t <- 5
print(v !=t)




#Logical Operator

# And Operator 
print(3>2 & 8<11)

# Not Operator 
v <- TRUE
print(!v)

# && Operator 
v <- c(3)
t <- c(1)
print(v&&t)

# II Operator 

v <- c(0)
t <- c(1)
Print(v||t)

# Assignment Operators
# Left Assignment <-,= 
V1 <- 5
V2 <<- 7
V3 = 9
print(V1)
print(V2)
print(V3)


# Right Assignment -> 
c(3) -> v1
c(1) ->> v2 
print(v1)
print(v2)

# Miscellaneous Operator
# Colon Operator : - It creates the series of numbers in sequence for a vector.
v<-2:8
print(v)
  


# %in % operator
v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t)



a=c(2:8)
a

# %*% Operator

N= matrix( c(2,6,5,1,10,4), nrow = 3,ncol = 3,byrow = TRUE)
M
G = matrix( c(2,6,5,1,10,4), nrow = 3,ncol = 3,byrow = TRUE)
t = M %*% t(M)
print(t)
M %*% N
M %*% N
print(N+G)
print(N-G)
print(N/G)
print(N%%G)
print(N%/%G)
print(N^G)

v <- 15
t <- 3

#Relational Operator
print(v>t)
print(v<t)
print(v==t)
print(v<=t)
print(v>=t)
print(v!=t)



#Logical Operator



#Assignment Operator

#Miscellaneous Operator





