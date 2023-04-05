#setwd

setwd("D:/Fingertips_Shalini/Desktop/Data Files")
data7=read.csv("")

data=read.csv("100 Sales Records.csv")
View(data)


#data loading
data =read.csv("100 Sales Records.csv")
View(data)

data=read.csv("100 Sales Records.csv")
data=read.csv("C:/Users/User/Desktop/Data Files/100 Sales Records.csv")
View(data)

View(newdata1)
library(readxl)

#import
View(data)
nrow(data)
ncol(data)
data$Item_Type
View(data$Item_Type)
data$Total_Profit
View(data$Order_Priority)
a=data$Total_Revenue
View(a)
profit = data$Total_Profit
mean(profit)
sd(profit)
median(profit)
max(profit)
min(profit)
sum(data$Total_Profit)
range(data$Total_Profit)

#Count of each categorical value in single column
table(data$Region)
table(data$Sales_Channel)
#Headers
names(data)

#Find length of any vector, Column or object
length(b)
length(data$Region)
length(unique(data$Region))

#Total Count of Unique values in Single Column

length(table(data$Sales_Channel))
length(table(data$Region))
length(unique(data$Region))
unique(data$Region)

unique(data$Sales_Channel)

v=data$Region


#Load Excel file
data5=read.csv("C:/Users/Fingertips/Desktop/salini.csv")
View(data5)
library(readxl)
data=read_excel("100 Sales Records.xlsx")
data
View(data)
View(data$Country)
View(data$Country)

View(sort(data$Country))
View(sort(data$Country,decreasing = TRUE))




data_4=data[c(1:3,25:30),c(1:5,9)]


View(data_4)
View(data)
#Subset Data
mydata=read_excel("100 Sales Records_Headers.xlsx")
View(mydata)
nrow(mydata)
ncol(mydata)
summary(mydata)

#Top 10 Rows 
data_1=head(data,10)
data_1
View(data_1)
names(data)

#Select Vraiables

View(newdata)
View(newdata)

newdata2=data[c("Region","Total_Profit")]
View(newdata2) 


#select 1st and 5th through 9th variable
newdata=data[c(1,5:9)]
View(newdata)
View(mydata)
#another method
myvars=paste("v",1:3,sep = "")
newdata=mydata[myvars]
View(newdata)


nydata=read.csv("100 Sales Records.csv", header = FALSE)

#Exclude Variables v1,v2,v3
myvars=names(mydata)%in%c("v1","v2","v3")
newdata=mydata[!myvars]
View(newdata)

#Exclude 3rd and 5th variable
newdata=mydata[c(-3,-5)]
View(newdata)

# delete variables v3 and v5
mydata$v3= mydata$v5 = NULL
View(mydata)
View(data)

#Select Specific column
data_2=subset(data,select = c(Country,Total_Profit))
View(data_2)

#Select coulmn in series(first 3)
data_3=data[1:3]
View(data_3)

#Select Observations
newdata=mydata[1:5,]
newdata=mydata[,3:5]
newdata=mydata[1:5,3:5]
View(newdata)

attach(data)

s1=subset(data, Country == "The Gambia")
View(s1)

s2=subset(data, Country != "The Gambia")
View(s2)
View(data)
View(data)
s3=subset(data, Country == "The Gambia" & Total_Profit > 300000)
View(s3)
s4=subset(data,Item_Type=="Baby Food"& Sales_Channel=="Offline")
View(s4)
s5=subset(data,Item_Type=="Baby Food"|Item_Type=="Cereal")
View(s5)
s6=subset(data,Sales_Channel=="Offline"&Total_Revenue<500000 
          & Total_Revenue>75000,
          select = c(Unit_Cost,Country,Sales_Channel,
                     Total_Revenue))
View(s6)

#Joining Column & Row in DataFrame

#Ceate a vector objects
city=c("Tampa","Seattle","Hartford","Denver")
state=c("FL","WA","CT","CO")
zipcode=c(33602,98104,06161,80294)

addresses=cbind(city,state,zipcode)
print(addresses)
#create another dataframe with similar column
new_address=data.frame(
  city=c("Lowry","Charlotte"),
  state=c("CO","FL"),
  zipcode=c("80230","33949"),
  stringsAsFactors = FALSE
)
new_address
print(new_address)

# Combine rows form both the data frames.

all_addresses=rbind(addresses,new_address)
print(all_addresses)
data

#pivot table
library(pivottabler)
a= qhpvt(data,"Sales_Channel","Country","mean(Total_Profit)")
print(a)

#Hypothesis Testing
#Anova or t-test
if(length(table(data$Sales_Channel))>2){
  print("Anova")
}else{
  print("ttest")
} 

#ttest

View(data)

ttest_rel=t.test(data$Total_Revenue ~ data$Sales_Channel ,data = data)
ttest_rel
ttest_pvalue=ttest_rel$p.value
ttest_pvalue

if(ttest_pvalue < 0.05){
  print("sig difference")
}else{
  print("not sig difference")
}
attach(data)
View(data)
#anova
anova_rel= aov(Total_Profit ~ Item_Type)
summary(anova_rel)

anova_pvalue = anova(anova_rel)$'Pr(>F)'[1]
anova_pvalue

if(anova_pvalue < 0.05){
  print("sig")
}else{
  print("not sig")
}
View(data)
attach(data)
anova_rel = aov(data$Total_Profit ~ data$Item_Type)
summary(anova_rel)
anova_pvalue = anova(anova_rel)$'Pr(>F)'[1]
anova_pvalue
if(anova_pvalue < 0.05){
  print("sig")
}else{
  print("not sig")
}

data$Item_Type




View(data)


#chi Square
chi_rel2=chisq.test(data$Country,data$Sales_Channel)
chi_rel2
chi_pvalue= chi_rel2$p.value
chi_pvalue

if(chi_pvalue < 0.05){
  print("sig")
}else{
  print("not sig")
}
View(data)
attach(data)
#Correlation
CR=cor(Total_Revenue,Total_Profit)

CR
View(data)

if (CR > 0.5){
  cat("There is strong positive correlation between",names(data)[9],"and",names(data)[10])
}else if(CR < -0.5){
  cat("There is strong negative correlation between",names(data)[9],"and",names(data)[10])
}
View(data)
