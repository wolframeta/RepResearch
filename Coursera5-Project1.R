MyData <- read.csv(file="/Users/wolfram/Dropbox/WD/reproducible research/activity.csv", header=TRUE, sep=",")
install.packages("data.table")
library(data.table)
StructData <- as.data.frame(MyData)
head(StructData)
CleanData <- StructData[complete.cases(StructData),]
head(CleanData)
CleanData <- data.table(CleanData)
Stepsperday <- CleanData[,sum(steps),by = date]
Stepsperday
names(Stepsperday) <- c("date","sum")
Stepsperday$date <- as.POSIXct(Stepsperday$date)

install.packages("ggplot2")
install.packages("scales")

library(ggplot2)
library(scales)

ggplot(Stepsperday, aes(date, sum)) + geom_bar(stat = "sum")+theme(legend.position = "none", plot.title = element_text(lineheight=.8, face="bold"))+ggtitle("Numbers of Steps per Day")
meanstepsperday <- mean(Stepsperday$sum)  
medianstepsperday <- as.numeric(median(Stepsperday$sum))

