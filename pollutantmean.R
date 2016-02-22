##Programming Assignment 1 - Part 1
pollutantmean <- function(directory, pollutant, id = 1:332) {
  filenames <- list.files(directory)
  target <- data.frame()
  for(i in id){
    master <- read.csv(paste(directory, "/", filenames[i], sep = ""))
    target <- rbind(master,target)
  } 
  return(mean(target[,pollutant], na.rm = TRUE))
}

