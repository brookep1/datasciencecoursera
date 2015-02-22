#####
# retrieveFuncs.R
####
# These functions will load the raw data and index files

retrieveFeatureLabels <- function (dir="UCI HAR Dataset") { 
    message("retrieveFuncs: Retrieving the Feature Labels")
    # The column numbers and names are in features.txt
    # Don't make column names into factors
    file <- paste0(dir,"/features.txt")
    names <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE)
    names$V1 <- NULL
    as.vector(names)
}

retrieveActivityLabels <- function (dir="UCI HAR Dataset") { 
    message("retrieveFuncs: Retrieving the Activity Labels")
    # The activity names are in features.txt
    # Don't make activity names into factors
    file <- paste0(dir,"/activity_labels.txt")
    names <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE)
    names$V1 <- NULL
    as.vector(names)
}

retrieveSubjects <- function (group,dir="UCI HAR Dataset",rows) {
    message(paste0("retrieveFuncs: Retrieving the Subject IDs rows: ",rows))
    file <- paste0(dir,"/",group,"/subject_",group,".txt")
    ids <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE,nrows=rows)
    as.vector(ids)
}

retrieveRecords <- function (group, dir="UCI HAR Dataset",rows,cols) {
    message(paste0("retrieveFuncs: Retrieving the Data Records rows:",rows))
    file <- paste0(dir,"/",group,"/X_",group,".txt")
    records <- read.table(file,
                          header=FALSE,
                          as.is=TRUE,
                          colClasses="numeric",
                          nrows=rows)[,cols]
    records
}

retrieveActivities <- function (group, dir="UCI HAR Dataset",rows) {
    message(paste0("retrieveFuncs: Retrieving the Activity IDs rows: ",rows))
    file <- paste0(dir,"/",group,"/y_",group,".txt")
    ids <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE,nrows=rows)
    as.vector(ids)
}
