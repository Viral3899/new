df=read.csv('Project/Credit card Defaulter/R_ML_Project_1_Credi.csv')
View(df)
attach(df)
df=df[-1]
View(df)

#1. Replace missing value with mean.
na.fail(df)
library(imputeTS)
names(df)
sapply(df, class)
df=na_mean(df)
View(df)
na.fail(df)



#2. Drop default status column. (Last one)
library(dplyr)
df1=select(df,-Default.Status)
View(df1)


#3. Select top 2000 rows.
dfrows=df[1:2000,]


#4. Select this column LIMIT_BAL, AGE, BILL_AMT1, PAY_AMT1
df2=select(df,c(LIMIT_BAL, AGE, BILL_AMT1, PAY_AMT1))


#5. Select those data only who has , BILL_AMT1 more then 50000.
df3=filter(df,BILL_AMT1>50000)


#6. Check the correlation on BILL_AMT1 vs PAY_AMT1.
cor(df$BILL_AMT1,df$PAY_AMT1)




#7. Rename the column BILL_AMT1 as Bill_amount and PAY_AMT1 as pay_amount.
df4=rename(df,pay_amount=PAY_AMT1,Bill_amount=BILL_AMT1)
View(df4)



