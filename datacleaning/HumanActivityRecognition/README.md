### Coursera "Getting and Cleaning Data"
### Course Project

## Human Activity Recognition Using Smartphones 
From the project notes ...
> One of the most exciting areas in all of data science right now is wearable
> computing - see for example this article . Companies like Fitbit, Nike, and 
> Jawbone Up are racing to develop the most advanced algorithms to attract new 
> users. The data linked to from the course website represent data collected from 
> the accelerometers from the Samsung Galaxy S smartphone. A full description is 
> available at the site where the data was obtained: 

The data is from the UCI Center for Machine Learning and Intelligent Systems 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Retrieve the raw data from here....
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### The following is necessary to retrieve the initial data before running the run_analysis.R script
1. Download UCIUAR raw data zip file to the current working directory
2. unzip those files into that directory. It will create a "UCI HAR Dataset" directory

Once downloaded and unzip the specifics of the raw data are in the following files
+ UCI HAR Dataset/activity_labels.txt
+ UCI HAR Dataset/features.txt  
+ UCI HAR Dataset/features_info.txt 
+ UCI HAR Dataset/README.txt

## Analysis Goal
The goal of this analysis is to take the provided instrument metrics relating to the experiment
and compute  the means of these instrument metrics aggregated by each participant and by their experiement activities

The results of the experiment are in the file "UCIHAR_meanSet_tidy.txt"

### The analysis is done with run_analysis.R
1. go to the directory with run_analysis.R
2. source("run_analysis.R")
3. it will print out some information about it's status, wait for the message "run_analysis.R is completed"

run_analysis.R will create the file "UCIHAR_meanSet_tidy.txt" in the current directory 

See CodeBook.md for a description of that file contents

## R Script Notes
see the source for more comments

### run_analysis.R 
run_analysis.R is the main program
It does a source on 3 scripts that provide functions for run_analysis.R to utilize
source("retrieveFuncs.R")
source("getRecords.R")
source("makeDataset.R")

Within run_analysis.R are 3 variables that someone might set to change it's behavior
+ The "limit" variable determines how many lines of the raw data are utilized. Useful for debugging
+ The dataDir variable lets you change the location of the raw data. Defaults to "UCI HAR DataSet"
+ colRegex is a regular expression that is used to determine which raw data columns are kept. Currently it is set to keep the "mean()" and "std()" variables

Process Notes:

1. run_analysis.R calls "makeDataset" to retrieve the main dataset. The bulk of data transformation is done in that function
2. run_analysis.R does the aggregation of that data set by mean. It is aggregated by the Activity Name and the Subject's ID number

###makeDataset.R
makeDataset.R does the bulk of the transformation from raw data to the data set we analyse by mean
It takes 3 arguments to it's function call
+ rows: the number of rows to limit the raw data by
+ dir: the directory for the raw data location
+ regex: the regular expression used to determine which metrics columns to keep

Using helper functions from retreiveFuncs.R it  retrieves data from the files needed to label the activities and variables
+ "features.txt" is the file that contains the names of each column
+ "activity_labels.txt" is the file that contains the names of each activity

It retrieves the experimental data as well
+ "(test|train)/subject_(test|train).txt" are the files that have the ID numbers of the subjects participating in the train or test group
+ "(test|train)/y_(test|train).txt" are the ID numbers for the activitis the subjects are performing
+ "(test|train)/X_(test|train).txt" are the experiment results

This function takes the information from all of the files and puts it together as a single dataset with named columns
reference CodeBook.md for specifics

##retrieveFuncs.R
It contains the various helper functions utilized to retrieve information from the directories of the raw data
