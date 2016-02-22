install.packages("xlsx")
library(xlsx)
getwd()
setwd("./SCG CoA")
filenames <- list.files(pattern = ".xls")
filenames
install.packages("plyr")
library(plyr)

df.list <- lapply(filenames, function(x) read.xlsx(file=x, sheetIndex=1,
                                                   colIndex=1:4,as.data.frame=TRUE, header=TRUE, FILENAMEVAR=x))
final.df <- rbind.fill(df.list)

head(final.df)
final.df[1:4]

booknummapping <- read.xlsx("./OldBookNumMapping.xlsx", sheetIndex=1, colIndex=1:4,as.data.frame=TRUE, header=TRUE)
head(booknummapping)
