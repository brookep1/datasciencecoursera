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
# Before running the script download the data and 
# do the steps as outlined in the README.md
##

# The script requires the below three other scrips to be in
# the same directory
source("retrieveFuncs.R")
source("getRecords.R")
source("makeDataset.R")

# Limit the number of rows for testing
# A value of "-1" means all rows
limit=-1

# Set the location of the dataset
dataDir = "UCI HAR Dataset"

### regex to use for column matching
# We only want features with "mean()" and "stdev()"
# not including "meanFreq()"
# There are 66 of these variables        
###
colRegex = '.*(mean|std)[(]'

# Makes the dataset with all of the columns and activities having
dataSet <- makeDataset(rows=limit,dir=dataDir,regex=colRegex)

meanSet <- aggregate(
    formula = . ~ SubjectID + ActivityName,
    data = dataSet,
    FUN = mean )

#Change the column names to specify that they are an average
oldNames <- names(meanSet)[3:68]
names(meanSet)[3:68] <- gsub("(.*)","AVG_\\1",oldNames)

write.table(meanSet,file="UCIHAR_meanSet_tidy.txt",row.name=FALSE)