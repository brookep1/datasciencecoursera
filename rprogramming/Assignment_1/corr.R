library(data.table)
pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    old <- getwd()
    setwd(directory)    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    total <- 0
    count <- 0
    av <- as.numeric
    for (file.id in id) {
        if (file.id > 332) { break }
        file.name <- sprintf("%03i.csv",file.id)
        #print(file.name)
        data.tmp <-read.csv(file.name,header=T)
        vals <- na.omit(data.tmp[,pollutant])
        total <- total + sum(vals)
        count <- count + length(vals)
    }
    #print(old)
    setwd(old)
    av <- total / count
    mean.formated <- as.numeric(sprintf("%.3f", av))
    return(mean.formated)
}