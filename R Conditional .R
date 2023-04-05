#1.Write a program to input percentage and get the grade according to following:
#Percentage >= 90% : Grade A
#Percentage >= 80% : Grade B
#Percentage >= 70% : Grade C
#Percentage >= 60% : Grade D
#Percentage >= 40% : Grade E
#Percentage < 40% : Grade F






Percentage=as.integer(readline("Entre The Percentage of Student : "))
if(Percentage>=90){
  print("You Grade is----> A ")
}else if(Percentage<90 & Percentage>=80){
  print("You Grade is----> B")
}else if(Percentage<80 & Percentage>=70){
  print("You Grade is----> C")
}else if(Percentage<70 & Percentage>=60){
  print("You Grade is----> D")
}else if(Percentage<60 & Percentage>=40){
  print("You Grade is----> E")
}else{
  print("You Grade is----> F")
}






#2.Write a program to input basic salary of an employee and calculate its
#Gross salary according to following:
#Basic Salary <= 10000 : HRA = 20%, DA = 80%
#Basic Salary <= 20000 : HRA = 25%, DA = 90%
#Basic Salary > 20000 : HRA = 30%, DA = 95%



Salary=as.integer(readline("Enter Your Salary : "))
if (Salary<=10000){
  gross_salary=(Salary)+(Salary*0.20)+(Salary*0.80)
  cat("Your gross Salary is ",gross_salary)
}else if (Salary<=20000){
  gross_salary=(Salary)+(Salary*0.25)+(Salary*0.90)
  cat("Your gross Salary is ",gross_salary)
}else{
  gross_salary=(Salary)+(Salary*0.30)+(Salary*0.95)
  cat("Your gross Salary is ",gross_salary)
}


#3. Prepare a code to display the name of the day, based on the value of day, 
#using the switch statement. it declares a 
#Numeric day whose value represents a day (1-7).


day=as.integer(readline("Entre the Number of Day fro 1 to 7 : "))
switch(day,"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")

