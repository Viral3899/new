#Machine learning
#x=independent variable(pridector) , y=dependent variable (target)
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

cat("weight =",as.integer(result))

cor(x,y)
cat("There is strong positive correlation between height and weight ",cor(x,y))





#multi-regression
View(mtcars)
data1=mtcars

input=mtcars[,c("mpg","disp","hp","wt")]

model1=lm(mpg~.,data1)


View(input)
model=lm(mpg~disp+hp+wt,data = mtcars)
model=lm(mpg~disp+hp+wt,input)
print(model)
summary(model)

a=data.frame(disp=150,hp=92,wt=1.91)
result=predict(model,a)
cat("mileage:-",result)

b=max(mtcars$mpg)
b

data_1 =subset(mtcars,select = c(0,mpg))
data_1


#Multiple Regression

View(mydata)
model2 <- lm(f,mydata)
print(model2)
summary(model)

#prediction

a=data.frame(killPoints=1065,maxPlace=40, numGroups=46, winPlacePerc=0.3241)
result=predict(model,a)
print(result)
cat("winpoints:-",result)

#classification
#rpart :- for decision tree
#rose :-  package for classification
#install.packages("ROSE")
library(ROSE)
#install.packages("rpart")
library(rpart)
#install.packages("rpart.plot")
library(rpart.plot)

data(hacide)
hacide.train
hacide.test
View(hacide.train)
dim(hacide.train)
View(hacide.test)
dim(hacide.test)
nrow(hacide.train)
nrow(hacide.test)

#data(hacide)
#Train data
View(as.data.frame(hacide.train))
table(hacide.train$cls)

#probability
prop.table(table(hacide.train$cls))

#Test Data
View(as.data.frame(hacide.test))
table(hacide.test$cls)
prop.table(table(hacide.test$cls))


#decision tree
treeimb = rpart(cls~x2+x1,data=hacide.train)
rpart.plot(treeimb)
print(treeimb)
summary(treeimb)

table(hacide.train$cls,predict(treeimb,newdata = hacide.train, type = "class"))
pre=predict(treeimb,newdata = hacide.train,type = "class")
 accuracy.meas(hacide.train$cls,pre)
#predicted class

pre
table(hacide.test$cls,pre)


pre=predict(treeimb,newdata = hacide.test,type = "class")
pre

#predicted class=0  expected loss=0.02  P(node) =1
#20/1000=0.02

#Node number 2: 989 observations
#predicted class=0  expected loss=0.01011122
#9/980=0.0091=0.01

rpart.plot(treeimb)
summary(hacide.train)
summary(treeimb)


table(hacide.train$cls, predict(treeimb, type = "class"))



predtr <- predict(treeimb, hacide.test, type = "class")
View(predtr)

table(predtr)









#multi classification

data("iris")
head(iris)
str(iris)
table(iris$Species)
#tree=randomForest(Species~Petal.Length+Petal.Width,data=iris,method ="class")
library(e1071)

svm=svm(Species~Petal.Length+Petal.Width,data=iris)
View(svm)
#rpart.plot(tree)
summary(svm)
table(iris$Species, predict(svm, type = "class"))

predicted_species=predict(svm)
accuracy.meas(iris$Species,predicted_species)


#logisticregression
library(party)
rm(readingSkills)
readingSkills
View(readingSkills)

View(as.data.frame(readingSkills))
table(readingSkills$nativeSpeaker)
str(readingSkills)

#probability
prop.table(table(readingSkills$nativeSpeaker))

readingSkills$nativeSpeaker1 <- ifelse(readingSkills$nativeSpeaker=="yes", 1, 0)
View(readingSkills)
str(readingSkills)
readingSkills$nativeSpeaker<-as.factor(readingSkills$nativeSpeaker)

## Fit the model
output_logistic <- glm(nativeSpeaker ~ age + shoeSize + score,readingSkills,family=binomial(link="logit"))
output_logistic


# View the forest results.
print(output_logistic) 
summary(output_logistic)
predicted=predict(output_logistic,type = 'response')
pre=ifelse(predicted<0.5,'No','Yes')
table(readingSkills$nativeSpeaker,pre)



df=data.frame(age =10, shoeSize =30, score=52) #Yes
hf=data.frame(age =11, shoeSize =30, score=35) #No


predicted <- predict(output_logistic, df, type="response")
predicted
predicted <- predict(output_logistic, hf, type="response")
predicted

if(predicted < 0.5){
  print("Predicted class is NO")
}else{
  print("Predicted class is Yes")
}

predicted <- predict(output_logistic, readingSkills, type="response")
predicted

head(predicted)
head(readingSkills$nativeSpeaker)



pre=read.csv("Pre_Reading Skills.csv")
View(pre)

Predicted=predict(output_logistic,pre,type="response")
View(Predicted)
head(readingSkills$nativeSpeaker)






#random forest
#install both the package
library(party)
library(randomForest)
View(readingSkills)
output_forest <- randomForest(nativeSpeaker ~ age + shoeSize + score,readingSkills)
# View the forest results.
print(output_forest)

df=data.frame(age =10, shoeSize =30, score=52) #Yes
df=data.frame(age =11, shoeSize =30, score=35) #No

predict(output_forest,df)

#svm
library(party)
install.packages('e1071')
library(e1071)
output_svm = svm(nativeSpeaker ~ age + shoeSize + score,readingSkills)
# View the forest results.
print(output_svm)
summary(output_svm)
hf=data.frame(age =10, shoeSize =30, score=52) #Yes
df=data.frame(age =11, shoeSize =30, score=35) #No

predict(output_svm,df)
predict(output_svm,hf)


#naivy bayes

library(e1071)

data(Titanic)
View(Titanic)
m <- naiveBayes(Survived ~ ., data = Titanic)  
m$tables

df2=read.csv("titanic_pre.csv")
df2
df2$prediction_servic =predict(m,df2)
df2






#clustring

#mydata = read.csv("C:/Users/LENOVO/Desktop/Cluster_Data.csv")
library(cluster)
mydata=mtcars
set.seed(0)
model=kmeans(mydata,3)
model$cluster
model$centers

mydata$cluster=model$cluster
clusplot(mydata,model$cluster,color = TRUE,labels = 2,lines = 0)


mydata$cluster[mydata$cluster==1]='Medium'
mydata$cluster[mydata$cluster==2]='Low'
mydata$cluster[mydata$cluster==3]='High'


model=kmeans(mydata,2)
model$cluster
model$centers

mydata$cluster=model$cluster
clusplot(mydata,model$cluster,color = TRUE,labels = 2,lines = 0)


mydata$cluster[mydata$cluster==1]='Low'
mydata$cluster[mydata$cluster==2]='High'
View(mydata)


mode_man =function(v){
  uniq=unique(v)
  uniq[which.max(tabulate(match(v,uniq)))]
}


# selection

#Set working directory 
setwd("C:/Users/User/Desktop")

#Load the file
df=read.csv("Resource/R Session 7/R_File_Session_7topic_added1614865715s_p1112197511.csv")
View(df)
#Check number of col and number row
ncol(df)
nrow(df)

na.fail(df)

#install and load
library('FSelector')

#Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre7') # for 64-bit version
#Sys.setenv(JAVA_HOME='C:\\Program Files (x86)\\Java\\jre7') # for 32-bit version




m=cfs(SalePrice~.,df)
m
View(df[nm])
#Out of 5 it recignize 1
#1/5=0.20=precision


#multi classification
data("iris")
head(iris)
str(iris)
table(iris$Species)
tree=rpart(Species~Petal.Length+Petal.Width,data=iris,method ="class")

rpart.plot(tree)
summary(tree)
