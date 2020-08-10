complete <- function(directory, id = 1:332) {
    totais <- c()
    ids <- c()
    
    dir_name <- paste("C:/Users/emili/Desktop/datasciencecoursera/",directory,"/",sep="")
    
    for(i in id){
        # concatenating the file name to match the dataset
        file_name <- paste(dir_name, i,".csv", sep="") 
        
        # loading the csv file 
        df <- read.csv(file_name)
        
        # logical extraction of the complete cases
        good <- complete.cases(df)
        
        # dataframe with only complete cases
        df_new <- df[good,]
        
        # total number of complete cases
        total <- nrow(df_new)
        
        # creating a vector with the total number of complete cases
        totais <- c(totais, total)
        
        # creating a vector with the id number of the dataset w complete cases
        ids <- c(ids, i)
      
    }
    # creating a vector to match the matrix definition
    data.frame(id=ids, nobs=totais)
    #all_data <- c(ids, totais)
    
    # creating a matrix to store the data
    #matrix(all_data, nrow=length(id), ncol=2)
    
    
}