#####
# run_analysis.R
####
# This script does the following
#1. Merges the training and the test sets to create one data set.
#2. Extracts the measurements on the mean and standard deviation for each measurement. 
#3. Changes the names of the activities in the data set
#4. Labels the data set with new variable names. 
#5. Creates a new data set with the average of each variable for each activity and each subject.

##
# Before running the script download the data and do the steps as outlined in the README.md
##

# Activity Labels for the dataset


# Load the column names from the features file

dataDir = "UCI HAR Dataset"
# There are 561 Feature Labels and 6 Activity Labes
featureLabels <- retrieveFeatureLabels(dir=dataDir)
activityLavels <- retrieveActivityLabels(dir="UCI HAR Dataset")

foreach group in (c("test","train")) {
    subjects$`group` <- retrieveSubjects(group="test",dir=dataDir) 
    activities$`group` <- retrieveActivities(group="test", dir=dataDir) 
    records$`group` <- retrieveRecords(group="test", dir=dataDir) 
}
