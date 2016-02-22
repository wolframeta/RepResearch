install.packages("xlsx")
library(xlsx)
help(read.xlsx)
globallist <- read.csv("./globalreims.csv", header = TRUE)
head(globallist)
positions <- unique(globallist$Job.Title)
head(positions)
columnnames <- colnames(globallist)
columnnames
head(globallist$Firm.Location)
head(globallist$Country)
install.packages("XML")
library(XML)

for(country in levels(globallist$Country)){
  tmp = subset(globallist, Country == country)
  fn = paste('imdata/', gsub(' ','', country), sep = '')
  write.csv(tmp, fn, row.names = FALSE)
}
/*
fileURL <- "http://www.internetworldstats.com/list1.htm"
webdata <- htmlTreeParse(fileURL, useInternal = TRUE)
rootNode <- xmlRoot(webdata)
xmlName(rootNode)
names(rootNode)
country <- xpathSApply(webdata,"//a",xmlValue)

country <- data.frame(country)

head(globallist)
help(aggregate)
aggregate(globallist,by=Country, function(x))
*/

usa <- read.csv("./imdata/US")
  
for(state in test2){
  tmp = subset(usa,State==state)
  fn = paste('usdata/',gsub(' ','',state),sep='')
  write.csv(tmp,fn,row.names = FALSE)
}

test <- levels(usa$State)
test2 <- test[2:45]
test2

virginia <- read.csv("./imdata/usdata/VA")
head(virginia)

getwd()
setwd("C:/Users/ashwath.muralidharan/Documents")

file_list <- list.files("./usregions")
file_list1 <- list.files("./usregions/midwest")
file_list2 <- list.files("./usregions/northeast")
file_list3 <- list.files("./usregions/south")
file_list4 <- list.files("./usregions/southwest")
file_list5 <- list.files("./usregions/west")

setwd("./usregions/northeast")
getwd()

for (file in file_list2){
  
  # if the merged dataset doesn't exist, create it
  if (!exists("northeast")){
    northeast <- read.csv(file, header=TRUE, sep="\t")
  }
  
  # if the merged dataset does exist, append to it
  if (exists("northeast")){
    temp_dataset <-read.csv(file, header=TRUE, sep="\t")
    northeast <- rbind(northeast, temp_dataset)
    rm(temp_dataset)
  }
}