#####
# run_analysis.R
####
# This script does the following
#1. Retrieves all of the source data
#2. Merges (rbinds) the training and the test sets to create one data set.
#3. Extracts the measurements on the mean and standard deviation for each measurement. 
#4. Changes the names of the activities in the data set
#5. Labels the data set with new variable names. 
#6. Creates a new data set with the average of each variable for each activity and each subject.

##
# Before running the script download the data and do the steps as outlined in the README.md
##
source("retrieveFuncs.R")
source("getRecords.R")

# Limit the number of rows for testing
limit=5

# Set the location of the dataset
dataDir = "UCI HAR Dataset"

# Makes the dataset, using it as a function to clean up variables not needed afterwards
makeDataset <- function(rows=limit,dir=dataDir) {
    if (!is.null(rows)) {
        message(paste0("Rows limited to ",rows))
    } else if (!is.null(limit)) {
        message(paste0("Limiting rows to ",limit))
        rows = limit
    } else {
        message(paste0("Using all rows ",limit))
        rows = -1
    }
    # There are 561 Feature Labels and 6 Activity Labes
    featureLabels <- retrieveFeatureLabels(dir=dir)
    activityLabels <- retrieveActivityLabels(dir=dir)
    
    # But we only want features with "mean()" and "stdev()"
    # not including "meanFreq()"
    # There are 66 of these variables        
    # This will create a vector of the columns numbers we want
    cols <- grep('.*(mean|std)[(]',featureLabels[,1])    
    colNames <- grep('.*(mean|std)[(]',featureLabels[,1],value=T)    
    # 
    # binding together immediately to eliminate an intermediate variable
    records <- rbind(
        getRecords(group="train",dir=dir,rows=rows,cols=cols),
        getRecords(group="test",dir=dir,rows=rows,cols=cols)
    )
    
    message(paste0("getRecords: adding headers and ID columns"))
    # Name the columns
    names(records) <- c("SubjectID","ActivityID",colNames)
    records
}
