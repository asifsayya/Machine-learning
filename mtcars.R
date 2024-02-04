#downloading the dataset from the local machine 
data="C://Users//ADMIN//Desktop//mtcars.csv"
dataset<-read.csv(data)
#summary of quantitative variables
summary(mtcars[, c("mpg","hp")])
#summary of categorial variable
print(summary(mtcars$cyl))
#square root of each mpg values
mtcars$transform<- sqrt(mtcars$mpg)
print(head(mtcars[, c("mpg", "transform")]))
#histogram plot of transformed mpg
hist(mtcars$transform)
boxplot(mtcars$mpg,mtcars$transform)
plot(mtcars$transform,mtcars$hp, main="scatterplot between transformed mpg and hp")
