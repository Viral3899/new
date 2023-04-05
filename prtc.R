a=4
a
a=c('vcs',12,TRUE)
a
a[0]
a[2]
a[1:3]
1:223
c(1:23,34:56)
1:33


m=matrix(1:9,nrow = 3,ncol = 4)
m


a=array(1:30,dim = c(3,3,3))
a 
a[1,,]
a[,1,]
a[,,1]



f=c('red','yellow','green','blue','green','blue','yellow','green')
f
class(f)
f=factor(f)
f






a=5

if(a>4){
  print("a Is Bigger than 4")
}



if (is.numeric(a)){
  print('a is numeric')
}





i=1
repeat{
  print(i^2)
  i=i+1
  if(i>10){
    break
  }
}


i=1
while(i<11){
  print(i^3)
  i=i+1
}




for (i in 1:10){
  print(i^4)
}
addition=function(a,b){
  c=a+b
  print(c)
}
addition(9,6)



getwd()
setwd("C:/Users/viral/OneDrive/Desktop/R")
df=read.csv("Resource/Pubg Data/Pugb_Datasettopic_ad.csv")
View(df)
library(readxl)

length(unique(df$numGroups))
sapply(df,class)


df1=df[c(1,5,6),c(3,6,8)]
View(df1)


data=read_excel("Resource/R Session 3/R_Session_3_text_fil.xlsx")
View(data)


library(pivottabler)
a=qhpvt(data,"Sales_Channel","Country","mean(Total_Revenue)")
a





#cheking test 
if(length(table(data$Sales_Channel))>2){
  print('Annova')
}else{
  print('t-test')
}




View(data)
ttest_rel=t.test(data$Total_Revenue~data$Sales_Channel,data = data)
ttest_rel
summary(ttest_rel)
ttest_pvalue=ttest_rel$p.value
ttest_pvalue



if(ttest_pvalue<0.05){
  print('Significance')
}else{
  print('not significant')
}





anova_rel=aov(Total_Profit~Item_Type,data = data)
anova_rel
summary(anova_rel)
anova_pvalue=anova(anova_rel)$'Pr(>F)'[1]
anova_pvalue


if(anova_pvalue<0.05){
  print('sig')
}else{
  print('non sig')
}




a=as.data.frame(TukeyHSD(anova_rel)$Item_Type)
View(a)



install.packages('dplyr')
library(dplyr)
data()
mydata=mtcars
myiris=iris


mydata=tibble(mydata)
myiris=tbl_df(iris)
names(mydata)
mydata$disp


filter(mydata,cyl>3)



a=group_by(myiris,Species)%>%summarise(Avg=mean(Sepal.Length))
a



b=aggregate(myiris$Sepal.Length,list(myiris$Species),'mean')
b


x= c(151,174,138,186,128,136,179,163,152,131)
y= c(63,81,56,91,47,57,76,72,62,48)



model=lm(x~y)
summary(model)

 

x= c(151,174,138,186,128,136,179,163,152,131)
y= c(63,81,56,91,47,57,76,72,62,48)


model=lm(y~x)

print(model)

plot(x,y,col="blue",asp = 0.5)
abline(model,col="red")

summary(model)

#prediction
a=data.frame(x=c(170,134))
result=predict(model,a)
print(result)



data1=mtcars
data1=tibble(data1)
input=mtcars[,c("mpg","disp","hp","wt")] 



model=lm(mpg~disp+hp++wt,data1)

print(model)
summary(model)

a=data.frame(disp=150,hp=100,wt=2)
a
result=predict(model,a)
result









library(rpart)
library(rpart.plot)
library(ROSE)
data(hacide)
hacide.train
hacide.test
nrow(hacide.train)
nrow(hacide.test)

prop.table(table(hacide.train$cls))

treemodel=rpart(cls~.,data = hacide.train)
rpart.plot(treemodel)
summary(model)


a=predict(treeimb,hacide.test,type = 'class')
a
b=predict(treeimb,hacide.train,type = 'class')
b


table(hacide.test$cls,a)
table(hacide.train$cls,b)


accuracy.meas(hacide.test$cls,a)

names(myiris)
treemodel2=rpart(Species~ .,data = myiris)
rpart.plot(treemodel2)
table(myiris$Species,predict(treemodel2,type = 'class'))








library(randomForest)
treemodel2=randomForest(Species~ .,data = myiris)
table(myiris$Species,predict(treemodel2,type = 'class'))








library(party)

data("readingSkills")
View(readingSkills)

readingSkills1=tibble(readingSkills)



readingSkills1$nativeSpeaker=ifelse(readingSkills1$nativeSpeaker=='yes',1,0)


output_log=glm(nativeSpeaker~age+shoeSize+score,readingSkills1,family=binomial(link = 'logit'))



pred=predict(output_log,readingSkills1,type = 'response')

pred


table(readingSkills1$nativeSpeaker,pred)




library('e1071')
output_svm=svm(nativeSpeaker~age+shoeSize+score,readingSkills1)
pre=predict(output_svm)
table(readingSkills1$nativeSpeaker,pre)

output_rf=randomForest(nativeSpeaker~age+shoeSize+score,readingSkills1)
prerf=predict(output_rf)
table(readingSkills1$nativeSpeaker,prerf)


data("Titanic")
df=tibble(Titanic)

View(Titanic)
model=naiveBayes(Survived~ .,data=Titanic)

getwd()
library(readxl)
df2=read_xlsx("Book1.xlsx")
View(df2)


df2$preds=predict(model,df2)
df2
