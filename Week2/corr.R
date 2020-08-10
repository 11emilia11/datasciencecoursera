corr <- function (directory,  threshold = 0) {
    
    dir_name <- paste("C:/Users/emili/Desktop/datasciencecoursera/",directory,"/",sep="")
    
    completes <- complete("specdata", 1:332)
    
    completes <- subset(completes, completes[,2] > threshold)
    
    correlations <- vector()
    
    
    for(i in completes$id ) {
        
        filepath <- paste(dir_name, i,".csv", sep="") 
        
     
        data <- read.csv(filepath)
    
        completeCases <- data[complete.cases(data),]
        
        count <- nrow(completeCases)
        
     
        if( count >= threshold ) {
            
            correlations <- c(correlations, cor(completeCases$nitrate, completeCases$sulfate) )
        }
    }
    correlations
}

