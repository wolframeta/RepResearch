  source("http://bioconductor.org/biocLite.R")
  biocLite("rhdf5")
  library(rhdf5)
  created = h5createFile("example.h5")
created
created = h5createGroup("example.h5","foo")


install.packages("httr")
library(httr)

  oauth_endpoints("github")

  myapp <- oauth_app("github",
                     key = "57dd6da7070b03bd1806",
                     secret = "d6cd8310eb1351178443c3af96a3b9082196b207")
  
  github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

  gtoken <- config(token = github_token)
  
  
  con = url("http://biostat.jhsph.edu/~jleek/contact.html")
  htmlCode = readLines(con)
  close(con)
  htmlCode
  nchar(htmlCode[100])
  45 31 7 25
  
  file = read.for("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for")
  
  
  req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
  stop_for_status(req)
  content(req)
  
  
  x <- read.fwf(
    file=url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),
    skip=4,
    widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))
  
head(x)
  
  help(read.fwf)
  
  sum(x$V4)
