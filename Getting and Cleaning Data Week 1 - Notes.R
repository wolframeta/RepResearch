ls()
ls
ls(getwd())
dir.create("data")
ls()
k <- file.exists("test")
k
list.files()
fileURL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileURL, destfile = "./data/cameras.xslx")
list.files("./data")
# URL, destfile, method
 date()
#download.file() can be used for http and https methods
list.files()
library(xlsx)
package(xlsx)
baltimore <- read.xlsx("./data/cameras.xlsx", sheetIndex=1,header = TRUE)
#read.table() most robust way to read/scan files in R
# for read.csv - Sep is automatically set to "," and header to TRUE
# not the best to read large files into R
.packages()
head(baltimore)
# extensible markup language - widely used in internet applications
library(XML)

install.packages("XML")
fileURL <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileURL, useInternal = TRUE) # loads doc into R memory
rootNode <- xmlRoot(doc) # wrapper element for the entire doc
names(rootNode)
xmlName(rootNode)

rootNode[[1]]
rootNode[[1]][[3]]
xmldoc <- xmlSApply(rootNode[1][1], xmlValue)
xmldoc

fileURL <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileURL, useInternal = TRUE)
scores <- xpathApply(doc, "//li[@class='sub']",xmlValue)
teams <- xpathApply(doc, "//li[@class='team-name']",xmlValue)
scores
teams
install.packages("data.table")
library(data.table)
tables()
DT = data.table(x=rnorm(9),y = rnorm(9))
DT
DT[2,2]
DT[,c(2,3)]
DT
DT[,m:= {tmp  <- x+y; log10(tmp+5)}]
DT <- data.table
