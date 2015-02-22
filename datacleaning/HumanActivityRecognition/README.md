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

##The script run_analysis.R does the following ... 
1. Merges the training and the test sets to create one data set.
2. Extracts the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Labels the data set with descriptive variable names. 
5. Creates a data set with the average of each variable for each activity and 
each subject.

The raw data is here....
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The following is necessary to retrieve the initial data before running the run_analysis.R script
1. Download UCIUAR raw data zip file to the current working directory
2. unzip those files into that directory. It will create a "UCI HAR Dataset" directory

Once downloaded and unzip see the following files for details about the raw data
 UCI HAR Dataset/activity_labels.txt  
 UCI HAR Dataset/features.txt  
 UCI HAR Dataset/features_info.txt  
 UCI HAR Dataset/README.txt