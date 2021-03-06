#vector

#Normal Distribution with mean 80 & SD 10 & 100 values

sales=rnorm(100, mean=80, sd=10)
sales
#truncate, round, floor, ceiling

sales= trunc(sales)
sales
summary(sales)
boxplot(sales)
mean(sales)
median(sales)
hist(sales)
plot(density(sales))


#10-50
range(sales)

#matrix
m1=matrix(100: 123, ncol=2)
m1
colSums(m1)
colMeans(m1)
m1[,1]
colnames(m1)=c('A','B')
head(m1)
tail(m1)


#dataframe
sname=paste('Student', 1:30, sep='_')
sname
(marks=trunc(runif(30,50,90)))
(gender=sample(c('M','F'), replace=T, size=30, prob=c(.7,.3)))
?runif
?sample
df1=data.frame(sname, marks, gender)
head(df1)
?sort

library(dplyr)
df1 %>% group_by(gender) %>% summarise(mean(marks),n(), min(marks), max(marks))

#name, marks(descending order) without gender
?arrange
arrange(df1,desc(marks)) %>%select(sname, marks)

df1 %>% arrange(marks) %>% select(sname, marks)
df1[(order(df1$marks, decreasing=T)), c('sname','marks')]  # conventional way
<<<<<<< HEAD
mean(df1$marks,rnum=T)
df1 %>%sample_n(3) # to select random three records
df1 %>% sample_frac(.3) # to select random fraction data
df1[sample(1:30, size=5),2] = NA # insert missing values in marks data
df1
df1[!complete.cases(df1),2] = mean(df1$marks,na.rm=T) # insert average values in place of missing values
df1
df2=df1[complete.cases(df1),]
df2
sum(is.na(df1))
sum(is.na(df2))    
=======

df1 %>%sample_n(3) # to select random three records
df1 %>% sample_frac(.3) # to select random fraction data
>>>>>>> 6edfbd0e286c7691a7457d4e68f6297a18f1aedd

#read to read from excel file
df=read.csv(file.choose())
df
summary(df)
