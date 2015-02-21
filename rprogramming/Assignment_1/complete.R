complete <- function(directory="specdata", id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    old <- getwd()
    setwd(directory)    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    first = TRUE
    data.tmp <- data.table()
    total <- data.table()
    for (file.id in unique(id)) {
        if (file.id > 332) { break }
        file.name <- sprintf("%03i.csv",file.id)
        #print(file.name)
        data.tmp <-read.csv(file.name,header=T)
        x<-cbind(1,data.tmp[complete.cases(data.tmp),c(4)])
        if (length(x) > 0) {
            total <- by(x,x[,c(2)],summary)
        }
    }
    #print(old)
    total
}