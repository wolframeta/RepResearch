best <- function(state,outcome){
  file <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  listofstates <- unique(file$State)
  if(is.element(state, listofstates) == TRUE){
    file <- file[file$State == state,]
    hospital <- c()
    
    if(outcome == "heart attack"){
      lowest <- min(as.numeric(file[,11]), na.rm = TRUE)
      for(i in 1:nrow(file)){
        if(file[i,11] == lowest){
          hospital <- c(hospital, file[i,2])
        }
      }
    } else if(outcome == "heart failure"){
      lowest <- min(as.numeric(file[,17]), na.rm = TRUE)
      for(i in 1:nrow(file)){
        if(file[i,17] == lowest){
          hospital <- c(hospital, file[i,2])
        }
      }
    } else if(outcome == "pneumonia"){
      lowest <- min(as.numeric(file[,23]), na.rm = TRUE)
      for(i in 1:nrow(file)){
        if(file[i,23] == lowest){
          hospital <- c(hospital, file[i,2])
        }
      }
    } else{
      stop('invalid outcome')
    }  
    sort(hospital)
    
  }else{
    stop('invalid state')
  }
}

