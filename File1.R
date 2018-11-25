women
git config --global user.email "shobhitsx2019@email.iimcal.ac.in"
git config --global user.name "shobhitsahai"
x1
(x1=sample(1:50))
plot(density(x1))
stem(x1)
#-------matrix-----
100:111
length(100:111)
matrix(1, ncol=3, nrow=4)
(m1=matrix(100:111, nrow=4))
(m2=matrix(100:111, ncol = 3, byrow=1))
class(m1)
attributes(m2)

(x=101:124)
length(x)
matrix(x, ncol=6)

#acess elements of matrix-------
m1[1,]
m1[,3]
m1[1,]; m1[,-1] # remove first column
m1[1,2:3]
m1[c(1,3),]#combine vector c
m1[m1>105 & m1<108] # sales between 105 & 108

#names of cols & rows
paste("C", "D", sep="-")
paste('C',1:100, sep='')
colnames(m1)=paste('C', 1:3, sep='')
m1
(rownames(m1)=paste('D',1:4, sep=''))
m1

#vector to matrix-----------
(v3=1:24)
dim(v3)=c(6,4)
v3

#address elements----------
v3[,1:2]
v3[1:4]

#modify vector-------------
v3
v3[1,3]=10
v3
v4=rbind(v3, c(25,24,26,30)) #to add & save the binded values in rows
cbind(v3,c(34,45,54,65, 67,79))
v3
v4

#row & column wise summary----------------
(colSums(m2))
rowSums(m2)
colMeans(m2)
rowMeans(m2)

#transpose-------------
t(m2)
t(m1)         
sweep(m1, MARGIN=1, STATS=c(2,3,4,5), FUN="+") #apply row wise
sweep(m1, MARGIN=2, STATS=c(2,3,4), FUN="*")#apply column wise

#admargins
m1
addmargins(m1, margin=1,sum) #row wise sum
addmargins(m1,2,mean)#column wise mean
?addmargins   #help function - ?
addmargins(m1, c(1,2),sum) 
addmargins(m1, c(1,2),mean) #both row & column mean
addmargins(m1, c(1,2),list(list(mean,sum,max),list(var,sd)))  #row & column wise function
m1sum=addmargins(m1, c(1,2),list(list(mean,sum,max),list(min,var,sd)))
m1sum
round(m1sum,0)

#array-----------
length(100:123)
4*3*2  # 2coys, 3 products, 4 locations sold qty


#Dataframe------------
#create vectors to be combined into DF
(rollno=1:30)
sname=paste('student',1:30, sep='')
(gender)
(gender = sample(c('M','F'),size=30, replace=T,prob=c(.7,.3)))
table(gender)
prop.table(table(gender))  
(marks1=floor(rnorm(30,mean=30,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'),size=30, replace=T,prob=c(.5,.5)))
rollno; sname; gender
marks1; marks2; course

#createDF
df1=data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1)#top 6 rows
head(df1, n=9) # for 9 rows
tail(df1) #last 6 rows
class(df1) #df
summary((df1))     #summary
df1$course # for printing a column name
nrow(df1)
dim(df1)
df1$gender=factor(df1$gender)   # assigning characters as factors
df1$course=factor(df1$course)
df1$rollno=as.character((df1$rollno)) #assigning factors as characteristics
str(df1)
summary(df1)
boxplot(df1$marks1) #boxplot marks
boxplot(marks1 ~ gender, data=df1)  # box plot marks as per gender 
boxplot(marks1 ~ gender + course, data=df1) #boxplot marks as per gender + course
df1  # full data
df1$gender #one column
head(df1[,c(2,4)]) #multiple columns
df1[1:10,] #select 10 rows all columns
#as per conditions
df1[marks1>25 &gender=='F', c(1,2)]
df1[marks1>25|gender=='F',]
names(df1)

aggregate(df1$marks1, by=list(df1$gender),FUN=sum)
aggregate(marks1 ~ gender, data=df1, FUN=max)
aggregate(cbind(marks1, marks2)~ gender, data=df1, FUN=max)

df2=aggregate(cbind(marks1, marks2)~ gender, data=df1, FUN=mean)
df2

df1

#factor-------

(grades=sample(c('A','B','C','D'), size=30, replace=T,prob = c(.3,.2,.3,.2)))
summary(grades)
table(grades)
(gradesFactor=factor(grades))
summary(gradesFactor)
gradesFactorordered=factor(grades,ordered=T)
summary(gradesFactorordered)

gradesFactororderedLevels=factor(grades,ordered=T,levels=c('D','C','B','A'))
summary(gradesFactororderedLevels)
gradesFactor
gradesFactorordered
gradesFactororderedLevels
pie(summary(gradesFactororderedLevels))  #pie chart
barplot(summary(gradesFactororderedLevels), col=1:4)  #bar chart with color

class(grades)

