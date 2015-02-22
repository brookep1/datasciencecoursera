#####
# load_raw_records.R
####
# This script reads and loads all of the data in the
# UCI HAR Dataset into two datasets
# One dataset for the "train" data and one for the "test" data
# It assumes your current working directory has "UCI HAR Dataset" as a subdirectory

retrieveFeatureLabels <- function (dir="UCI HAR Dataset") { 
    # The column numbers and names are in features.txt
    # Don't make column names into factors
    file <- paste0(dir,"/features.txt")
    names <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE)
    names$V1 <- NULL
    names
}

retrieveActivityLabels <- function (dir="UCI HAR Dataset") { 
    # The activity names are in features.txt
    # Don't make activity names into factors
    file <- paste0(dir,"/activity_labels.txt")
    names <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE)
    names$V1 <- NULL
    names
}

retrieveSubjects <- function (group,dir="UCI HAR Dataset") {
    file <- paste0(dir,"/",group,"/subject_",group,".txt")
    ids <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE)
    ids    
}

retrieveRecords <- function (group, dir="UCI HAR Dataset") {
    file <- paste0(dir,"/",group,"/X_",group,".txt")
    records <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE)
    records <- NULL
    records    
}

retrieveActivities <- function (group, dir="UCI HAR Dataset") {
    file <- paste0(dir,"/",group,"/y_",group,".txt")
    ids <- read.delim(file,sep=" ",header=FALSE,as.is=TRUE)
    ids <- NULL
    ids    
}

#}