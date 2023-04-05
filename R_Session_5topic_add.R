#data cleaning and missing values handling
install.packages("dplyr")
library(dplyr)
data()
data("mtcars")
data('iris')
mydata=mtcars
myiris=iris
head(mydata)
head(iris)
View(mydata)
View(myiris)




mynewdata=tbl_df(mydata)
myirisdata= tbl_df(iris)
mynewdata$hp
mynewdata
names(mynewdata)
View(mynewdata$cyl)
mynewdata$disp
View(myirisdata)

attach(mynewdata)
detach(mynewdata)

#Filter
a=filter(mynewdata, cyl> 4 & gear > 4)
View(a)
View(mynewdata)
filter(mynewdata, cyl> 4 & gear>4& wt>3)
View(filter(mynewdata, cyl> 4 & gear>4 & wt>3))


b=filter(myirisdata, Species %in% c('setosa', 'virginica'))
View(b)


#Select Column 
select(mynewdata,cyl,mpg)
View(select(mynewdata,cyl,mpg))
View(select(mynewdata,cyl,mpg,hp))
select(mynewdata,wt,gear,carb,disp)
View(select(mynewdata,wt ,gear,carb,disp))

#There you can use (-) to hide columns
select(mynewdata, -cyl, -mpg )
View(select(mynewdata, -cyl, -mpg ))

#hide a range of columns
select(mynewdata, -c(cyl,mpg))
View(select(mynewdata, -c(cyl,mpg)))

#select series of columns
select(mynewdata, cyl:gear)
View(select(mynewdata, cyl:gear))

#chaining or pipelining -a way to perform multiple operations
#in one line
mynewdata%>%
  select(cyl, wt, gear)%>%
  filter(wt> 2)

View(mynewdata%>%
    filter(mpg> 2)%>%
  select(cyl, wt, gear))


View(mynewdata%>%
       select(cyl, wt, gear)%>%
       filter(wt> 2))
#arrange can be used to reorder rows
mynewdata%>%
  select(cyl, wt, gear)%>%
  arrange(wt)

View(mynewdata%>%
       select(cyl, wt, gear)%>%
       arrange(wt))
#It arranges in ascending order by default
View(mynewdata%>%
       select(cyl, wt, gear)%>%
       arrange(wt))
#To arrage in Desceding order
View(mynewdata%>%
  select(cyl, wt, gear)%>%
  filter(cyl>2)%>%
  arrange(desc(wt)))

View(mynewdata%>%
       select(cyl, wt, gear)%>%
       arrange(desc(wt)))

#mutate -create new variables
newvariable=mynewdata%>% mutate(newvariable= mpg*cyl)
View(newvariable)
View(mynewdata)

#Create new column without using dplyr
mynewdata$newvariable=mynewdata$mpg*mynewdata$cyl
View(mynewdata)

#summarise-this is used to find insights from data
View(group_by(myirisdata,Species)%>%summarise(Average = mean(Sepal.Length)))

 
View(mynewdata$newvariable)
mynewdata$newvariable=NULL
View(mynewdata)

  #you can rename the variables using rename command
mynewdata=mynewdata%>% rename( Hoursepower=hp,weight=wt)
View(mynewdata)

#data.table function
data(iris)
myiris<-iris
myiris
View(myiris)


#load package
library(data.table)
myiris<-data.table(myiris)
View(myiris)

#subset rows -select 2nd to 4th row
myiris[2:4,]
View(myiris[2:4,])
View(myiris[,2:4])
View(myiris[2:6,2:4])

#select columns with particular values
myiris[Species == 'setosa']
View(myiris[Species == 'setosa'])
myiris[Species %in% c('setosa','virginica')]

#select columns with multiple values. This will give you columns with Setosa and virginica species
myiris[Species %in% c('setosa', 'virginica')]
View(myiris[Species %in% c('setosa', 'virginica')])

c=filter(myirisdata,Species %in% c('setosa','virginica') & Sepal.Length >5)
View(c)

names(myirisdata)
data.table(myiris)

#select columns. Returns a vector
myiris
myiris[,Species]
View(myiris[,Species])
View(myiris[,Sepal.Length])
View(myiris[2:10,Sepal.Length])

#returns sum of selected column
myiris[,sum(Sepal.Length, na.rm = TRUE)]
myiris$Sepal.Length
#returns sum and standard deviation
myiris[,.(sum(Sepal.Length, na.rm = TRUE), sd(Sepal.Length, na.rm = TRUE))]

#missing values
x1 <-c(1, 4, 3, NA, 7)
x2 <-c("a", "B", NA, "NA")
is.na(x1)
is.na(x2)
sum(is.na(x1))
#Replace value with NA
is.na(x1)<-which(x1 == 7)
x1

#replace NA with 0
x1[is.na(x1)]=0
x1

#Remove NA
x1[!is.na(x1)]
x1

#Identify how many NA in the dataset
sum(is.na(x1))
sum(is.na(x2))
mean(is.na(x1))
mean(is.na(x2))


x1 <-c(1, 4, 3, 7,NA)
x2 <-c("a", "B", "D", "C","E")

df <-data.frame(x1,x2)
df
df$x1[df$x1 == 7]=NA
df

a=na.omit(df)
a
na.exclude(df)

#na.pass: returns the object unchanged
na.pass(g)

#na.fail: returns the object only if it contains no missing values
na.fail(g)
na.fail(a)

#Missing values in analysis
x <-c(1,2,NA,3)
mean(x) # returns NA

mean(x, na.rm=TRUE)
table(x)
table(x, useNA= "ifany")

sort(x1, na.last= TRUE)
sort(x1, na.last= FALSE)

data=data.frame(c1=c(1,NA,2,3,4,NA),c2=c(5,6,7,NA,8,9))
data
#There is also quick solution using the imputeTSpackage:
library(imputeTS)
na_mean(data)
data
