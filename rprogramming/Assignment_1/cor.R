options(digits=7)
corr <- function(directory="specdata",threshold=0,id=1:332)  {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    old <- getwd()
    setwd(directory)    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    ## Return a numeric vector of correlations
    data.tmp <- data.table()
    x<-vector()
    for (file.id in unique(id)) {
        f <- as.integer(file.id)
        t <- as.integer(threshold)
        if (f > 332 || f < 0) { break }
        if (t > 10000 || t < 0) { break }
        file.name <- sprintf("%03i.csv",f)
        #print(file.name)
        data.tmp <-read.csv(file.name,header=T)
        data <- data.tmp[complete.cases(data.tmp),]
        if (nrow(data) > t) {
            sulfate<-as.numeric(data[,"sulfate"])
            nitrate<-as.numeric(data[,"nitrate"])
            x <- c(x,cor(sulfate,nitrate))
        }
    }
    #print(old)
    setwd(old)
    as.numeric(x)
#    as.numeric(sprintf("%5.5f",x))
}