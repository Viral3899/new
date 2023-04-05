a=5


if(a>=2){
  print("a is bigger than 2")
}




a=3L
a=as.numeric(a)
a='Viral'



if(is.integer(a)){
  print("a is integer")
}else if(is.numeric(a)){
  cat("given variable",a,"is numeric")
}else{
  print("it is Character")
}


switch (a,
  "Pepsi",
  "Coca",
  "Sprite",
  "Maaza"
)
a=as.integer(readline("Entre Your Choice : "))

switch (3, 
        "Pepsi",
        "Coca",
        "Sprite",
        "Maaza")

  case = action
)
repeat{
  print("hello")
}


cnt=1
repeat{
  print("hello")
  cnt=cnt+1
  if(cnt>10){
    break
  }
}


cnt=1
repeat{
  cat("square of",cnt,"is",cnt^2,"\n")
  cnt=cnt+1
  if(cnt>10){
    break
  }
}


a=0
while (a<10) {
  print(a)
  a=a+1
}


a=2
while (a<=100) {
  print(a^3)
  a=a+2
}

a=5
while (a<=100) {
  print(a^2)
  a=a+5
}



a=0
while(a<10){
  a=a+1
  if(a==6){
    next
  }
  print(a)
}


for(i in letters){
  print(i)
}

for (i in 1:10){
  if(i==8 | i==9){
    next
  }
  print(i^2)
}


for (i in 1:10){
  if(i %in% c(8,9)){
    next
  }
  print(i^2)
}


hello=function(){
  print("Hello Class")
  print("How ARE YOU")
}

hello()

eq=function(a,b,c){
  n=(a+b)*c
  print(n)
}

eq(2,3,4)


Cube=function(a){
  for (i in 1:a){
    print(i^3)
  }
}

Cube(20)



getwd()

df=read.csv("ML5 Decision Tree Airline Satisfaction.csv")
View(df)

head(df,10)

data <- read_csv("C:/Users/viral/Desktop/R/Resource/Pubg Data/Pugb_Datasettopic_ad.csv")





library(readxl)
df1=read_excel("R_Session_3_text_fil.xlsx")

