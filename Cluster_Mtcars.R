mtcars
#cluster into three groups

km1=kmeans(mtcars, centers=3)
km1
km1$centers
km2=kmeans(mtcars[,c('mpg','wt')],centers=3)
km2
km2$centers
df=mtcars[c('mpg','wt')]
df
df2=scale(df) #to make normalise data in all columns
df2
mk2=kmeans(df2,centers=3)
mk2$centers
a
