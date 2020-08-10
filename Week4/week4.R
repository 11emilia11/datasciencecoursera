best <- function(state, outcome) {
    

    root <- paste("C:/Users/emili/Desktop/datasciencecoursera/",
                  "outcome-of-care-measures.csv",sep="")
    df <- read.csv(root)
    
   
    all_states <- unique(df$State)
    result <- outcome %in% all_states
    column <- "Hospital.30.Day.Death..Mortality..Rates.from."
    
    
    
    
    if (result == FALSE){
        
        stop("invalid state")
    } else {
        
        if (identical(outcome, "heart attack")){
            
            column2 <- 11
            
        } else if(identical(outcome, "heart failure")){
            
            column2 <- 17
            
        } else if(identical(outcome, "pneumonia")){
            
            column2 <- 23
        } else {
            
            stop("invalid outcome")
        }
        
        # grouping the rows from the state
        logic <- df[,7] == state
        new_df <- df[logic,]
        
        # sort by alfabetic number
        #new_df <- new_df[order(new_df[,column]),]
        
        # getting the min value 
        num_row <- which.min(new_df[,column])
        
        # getting the name of the 
        the_best <- new_df[num_row,2]
        the_best
        
        
    }
    
}