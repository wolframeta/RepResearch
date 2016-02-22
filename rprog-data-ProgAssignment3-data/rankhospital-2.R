rankhospital <- function(state, outcome, rank){
  
  file <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  listofstates <- unique(file$State)
  
  if(is.element(state, listofstates) == TRUE){
    file <- file[file$State == state,]
    hospital <- c()
    
    if(outcome == "heart attack"){
      file <- file[order(as.numeric(file[,11]),file[,2],na.last = NA),]
      if(rank == "best"){
        hospital <- file[1,2]
      } else if(rank == "worst"){
        hospital <- file[nrow(file),2]
      }else {
        hospital <- file[rank,2]
      }  
    } else if(outcome == "heart failure"){
      file <- file[order(as.numeric(file[,17]),file[,2],na.last = NA),]
      if(rank == "best"){
        hospital <- file[1,2]
      } else if(rank == "worst"){
        hospital <- file[nrow(file),2]
      }else {
        hospital <- file[rank,2]
      }
    } else if(outcome == "pneumonia"){
      file <- file[order(as.numeric(file[,23]),file[,2],na.last = NA),]
      if(rank == "best"){
        hospital <- file[1,2]
      } else if(rank == "worst"){
        hospital <- file[nrow(file),2]
      }else {
        hospital <- file[rank,2]
      }
    } else{
      stop('invalid outcome')
    }  
  }else{
    stop('invalid state')
  }
  hospital
}


rankhospital("TX","heart failure",4)
rankhospital("MD","heart attack","worst")
rankhospital("MN","heart attack",5000)
