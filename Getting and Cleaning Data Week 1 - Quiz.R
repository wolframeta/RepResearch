fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
library(xlsx)

#read data from a segment of an excel file
baltimore <- read.xlsx("./getdata.xlsx", sheetIndex=1,header = TRUE)
head(baltimore)
colIndex <- 7:15
rowIndex <- 18:23
dat <- read.xlsx("./getdata.xlsx", sheetIndex=1,colIndex=colIndex, rowIndex=rowIndex)
sum(dat$Zip*dat$Ext,na.rm=T) 

#identifying particular values from an xml file
install.packages("XML")
library(XML)
URL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
loader<- xmlTreeParse(URL, useInternal = TRUE)
rootNode <- xmlRoot(loader)
names(rootNode)
xmlName(rootNode)
rootNode[[1]][[1]][[2]]
xmlSApply(rootNode, xmlValue)
zips <- xpathSApply(rootNode, "//zipcode", xmlValue)
count <- 0
sub <- subset(zips, zips == "21231")

# reading as a data table
install.packages("data.table")
library(data.table)
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(URL, destfile = "./idahodata.csv")
DT <- fread("./idahodata.csv")
head(DT)
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
system.time(DT[,mean(pwgtp15),by=SEX])
DT[,mean(pwgtp15),by=SEX]
rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
