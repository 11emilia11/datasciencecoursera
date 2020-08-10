pollutantmean <- function(directory, pollutant, id = 1:332){

    vetor <- c()

    dir_name <- paste("C:/Users/emili/Desktop/datasciencecoursera/",directory,"/",sep="")
    
    x <- 0
    if (identical(pollutant, "sulfate")) {
        x <- 2
        
    } else {
        x <- 3
        
    }
    for(i in id){

        file_name <- paste(dir_name, i,".csv", sep="")
        
        df <- read.csv(file_name)
        
        vetor <- c(df[, x], vetor)

    }
    
    meann <- mean(vetor, na.rm = TRUE)
 
    meann

}