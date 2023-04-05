df=read.csv("Project/Employee Attrtion Analysis/R_ML_Project_2_Emplo.csv")
View(df)
attach(df)

#1. Prepare a classification model with 
#                           attrition as target.
library(rpart)
library(rpart.plot)
model=rpart(Attrition ~ . ,data=df)
View(model)



#2. Identify the probability of each class
#     and predict the result class for given data 
#                                         (Below table).

prop.table(table(df$Attrition))


#3. Check the accuracy of model and also 
#                   prepare confusion matrix.
table(df$Attrition,predict(model,type='class'))


nrow(df)
acc=(1201+106)/1407
acc


rpart.plot(model)
