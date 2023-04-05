library(readxl)
df <- read_excel("C:/Users/viral/Desktop/R/Resource/R Session 3/R_Session_3_text_fil.xlsx")
View(df)

View(df)
nrow(df)
ncol(df)
df$Item_Type
View(df$Item_Type)


df$Total_Profit
View(df$Order_Priority)

a=df$Total_Revenue
View(a)
profit = df$Total_Profit



mean(profit)
sd(profit)
median(profit)
max(profit)
min(profit)
sum(df$Total_Profit)
range(df$Total_Profit)


length(unique(df$Item_Type))


table(df$Region)
table(df$Sales_Channel)
names(df)

length(df$Region)
length(df$Region)



sort(df$Country)
sort(df$Country,decreasing = TRUE)



df_4=df[c(1:3,25:30),c(1:5,9)]
View(df_4)

View(df[c(1,5,6),c(3,6,8)])       

summary(df)
View(summary(df))
str(df)


#not working for name
View(df[-c("Sales_Channel","Country","Total_Revenue")]


View(df[-c(2,4,8)])
df_1=head(df,10)
df_1

names(df)

myvars=names(df)%in%c("Country","Sales_Channel","Total_Profit")
newdf=df[!myvars]
View(newdf)



df$Country= mydf$v5 = NULL
View(mydf)
View(df)


df
df_2=subset(df,select = c(Country,Total_Profit))
View(df_2)

s1=subset(df, Country == "The Gambia")
View(s1)

s2=subset(df, Country != "The Gambia")
View(s2)
View(df)
View(df)
s3=subset(df, Country == "The Gambia" & Total_Profit > 300000)
View(s3)
s4=subset(df,Item_Type=="Baby Food"& Sales_Channel=="Offline")
View(s4)
s5=subset(df,Item_Type=="Baby Food"|Item_Type=="Cereal")
View(s5)
s6=subset(df,Sales_Channel=="Offline"&Total_Revenue<500000 
          & Total_Revenue>75000,
          select = c(Unit_Cost,Country,Sales_Channel,
                     Total_Revenue))
View(s6)
city=c("Tampa","Seattle","Hartford","Denver")
state=c("FL","WA","CT","CO")
zipcode=c(33602,98104,06161,80294)

addresses=cbind(city,state,zipcode)
print(addresses)



new_address=data.frame(
  city=c("Lowry","Charlotte"),
  state=c("CO","FL"),
  zipcode=c("80230","33949"),
  stringsAsFactors = FALSE
)
new_address
View(new_address)


all_addresses=rbind(addresses,new_address)
print(all_addresses)



library(pivottabler)
a=qhpvt(df,"Sales_Channel","Country","mean(Total_Profit)")
print(a)


a=qhpvt(df,"Sales_Channel","Country","n()")
print(a)
