df=read.csv("Project/Malariya Data Cleaning/R_ML_Project_3_Malar.csv")
View(df)
na.fail(df)

attach(df)


#Filter the Gujarat, Rajasthan and Maharashtra in state.
View(subset(df,State%in%c('Gujarat','Rajasthan','Maharashtra')))




#2. Select the data where mortality is high and very high.

View(subset(df,rate=='High'| rate=='Very High'))



#. 3.Handle the missing values in mortality rate column .

library(imputeTS)
#df$Mortality_rate=na_mean(df)
df=na_mean(df)
View(df)

na.fail(df)



#4. Rename the mortality column to mortality_category.
library(dplyr)
df=rename(df,mortality_category=rate)

library(ROSE)
library(rpart)
library(rpart.plot)

prop.table(table(df$mortality_category))

# smp_siz=floor(0.8*nrow((df)))
# 
# 
# 
# set.seed(123)
# train_ind=sample(seq_len(nrow(df)),size = smp_siz)
# 
# 
# train=df[train_ind,]
# test=df[-train_ind,]
# train
# test
# nrow(train)
# nrow(test)
# nrow(df)

treeimb = rpart(mortality_category~.,df)
predict(treeimb,type='class')



# table(train$mortality_category,predict(treeimb,data=train,type='class'))
# table(test$mortality_category,predict(treeimb,type='class'))


table(df$mortality_category,predict(treeimb,type='class'))
# accuracy.meas(df$mortality_category,predict(treeimb,type='class'))


#regression

df=select(df,-mortality_category)

tree=rpart(Mortality_rate~.,df)
summary(tree)
predict(tree)


lm=lm(Mortality_rate~.,df)
summary(lm)
predict(lm)

