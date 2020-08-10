best <- function(state, outcome) {
    
    root <- paste("C:/Users/emili/Desktop/datasciencecoursera/Week4/",
                  "outcome-of-care-measures.csv",sep="")
    df <- read.csv(root)
    
    
    column <- "Hospital.30.Day.Death..Mortality..Rates.from."
    
    all_states <- unique(df$State)
    result <- state %in% all_states
    
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
        
        # dataframe with only complete cases
        #good <- complete.cases(df)
        
        #df_new <- df[good,]
        
        # grouping the rows from the state
        logic <- df[,7] == state
        df_group <- df[logic,]
        
        
        # sort by alfabetic number
        #sorted <- df_group[order(df_group[,column2]),]

        
        # getting the min value 
        num_row <- which.min(df_group[,column2])
        
        # getting the name of the 
        the_best <- df_group[num_row,2]
        the_best
        
        
    }
    
}