set.seed(1234)
?par
par(mar = c(0,0,0,0))
x <- rnorm(12, mean = rep(1:3,each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1,2,1),each = 4), sd = 0.2)
plot(x,y,col = "blue", pch = 19, cex = 4)
text(x+0.10, y+0.20,labels = as.character(1:12))
dataFrame <- data.frame(x=x,y=y)
dataFrame
distxy <- dist(dataFrame)
head(distxy)
distxy
hClustering <- hclust(distxy)
hClustering
plot(hClustering)

dataFrame <- data.frame(x,y)
dataFrame
kmeansObj <- kmeans(dataFrame, centers = 3)
kmeansObj
kmeansObj$centers
dataMatrix <- as.matrix(dataFrame)[sample(1:12),]
dataMatrix

?image
?t
x <- matrix(rnorm(100),nrow = 40, ncol = 10)
head(x)
y <- dist(x)
head(x)
t(x)
?hclust

image(1:10,1:40,t(x)[,1:nrow(x)])
heatmap(x)
?dist

colors()
