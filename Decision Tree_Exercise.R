#decision tree

iris
head (iris)
library(rpart)
library(rpart.plot)

#Model regression tree
ctree1 = rpart(Sepal.Length ~ . , data=iris, method='anova' ) # for regression tree, method is ANOVA
ctree1
rpart.plot(ctree1, cex=.8)
printcp(ctree1)
prunetree1 = prune(ctree1, cp=0.02)
#here we have selected a different value to simplify the tree
prunetree1
rpart.plot(prunetree1, nn=T)

#classification tree
ctree2 = rpart(Species ~ . , data=iris, method='class' ) # for regression tree, method is ANOVA
ctree2
rpart.plot(ctree2, cex=.8)
printcp(ctree2)
prunetree1 = prune(ctree2, cp=0.06)
#here we have selected a different value to simplify the tree
prunetree1
rpart.plot(prunetree1, nn=T)
newdata=sample_n(iris,3)
newdata
predict(ctree2,newdata=newdata,type='prob')
predict(ctree2,newdata=newdata,type='class')
