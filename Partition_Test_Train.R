data(mtcars)

## 75% of the sample size
smp_size <- floor(0.75 * nrow(mtcars))

## set the seed to make your partition reproducible
set.seed(123)
train_ind <- sample(seq_len(nrow(mtcars)), size = smp_size)

train <- mtcars[train_ind, ]
test <- mtcars[-train_ind, ]
head(train)
head(test)
dim(test)
dim(train)
summary(test)
plot(test)


mtcars
nrow(mtcars)
#train 70%, test 30%
sample(x=1:32, size=.7*32)
index=sample(x=1:nrow(mtcars),size=.7*nrow(mtcars),replace=F)
train=mtcars[index,]
test=mtcars[~index,]

#to ensure o & 1 data is distrubuted unifromaly----
install.packages(('caTools'))
require(caTools)
set.seed(101)
sample=sample.split(mtcars$am,SplitRatio = .75)
train=subset(mtcars, sample==TRUE)
test=subset(mtcars, sample==FALSE)
train;test
table(train$am); table(test$am)
