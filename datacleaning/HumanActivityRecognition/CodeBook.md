### Course Project
### Human Activity Recognition Using Smartphones
## Codebook for UCIHAR_meanSet_tidy.txt

### see also:

HAR Dataset/README.txt
HAR Dataset/features_info.txt

## Column 1 - factor: Subject ID
There were experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
The subject ID is a number from 1 to 30 

## Column 2 - factor: Activity Name
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

## Columns 3 - 68 numeric (double): metric values
of the original 561 "features" being measured 66 are retained for the analysis

The features that have "mean()" and "std()" in their definition were kept
mean(): Mean value
std(): Standard deviation

Note that "meanFreq()" was not maintained

### The 66 metrics represented in the analysis results
"AVG_" was prepended to each metric name to denote that it is aggregated by average


1. "AVG_tBodyAcc-mean-X"
1. "AVG_tBodyAcc-mean-Y"
1. "AVG_tBodyAcc-mean-Z"
1. "AVG_tBodyAcc-std-X"
1. "AVG_tBodyAcc-std-Y"
1. "AVG_tBodyAcc-std-Z"
1. "AVG_tGravityAcc-mean-X"
1. "AVG_tGravityAcc-mean-Y"
1. "AVG_tGravityAcc-mean-Z"
1. "AVG_tGravityAcc-std-X"
1. "AVG_tGravityAcc-std-Y"
1. "AVG_tGravityAcc-std-Z"
1. "AVG_tBodyAccJerk-mean-X"
1. "AVG_tBodyAccJerk-mean-Y"
1. "AVG_tBodyAccJerk-mean-Z"
1. "AVG_tBodyAccJerk-std-X"
1. "AVG_tBodyAccJerk-std-Y"
1. "AVG_tBodyAccJerk-std-Z"
1. "AVG_tBodyGyro-mean-X"
1. "AVG_tBodyGyro-mean-Y"
1. "AVG_tBodyGyro-mean-Z"
1. "AVG_tBodyGyro-std-X"
1. "AVG_tBodyGyro-std-Y"
1. "AVG_tBodyGyro-std-Z"
1. "AVG_tBodyGyroJerk-mean-X"
1. "AVG_tBodyGyroJerk-mean-Y"
1. "AVG_tBodyGyroJerk-mean-Z"
1. "AVG_tBodyGyroJerk-std-X"
1. "AVG_tBodyGyroJerk-std-Y"
1. "AVG_tBodyGyroJerk-std-Z"
1. "AVG_tBodyAccMag-mean"
1. "AVG_tBodyAccMag-std"
1. "AVG_tGravityAccMag-mean"
1. "AVG_tGravityAccMag-std"
1. "AVG_tBodyAccJerkMag-mean"
1. "AVG_tBodyAccJerkMag-std"
1. "AVG_tBodyGyroMag-mean"
1. "AVG_tBodyGyroMag-std"
1. "AVG_tBodyGyroJerkMag-mean"
1. "AVG_tBodyGyroJerkMag-std"
1. "AVG_fBodyAcc-mean-X"
1. "AVG_fBodyAcc-mean-Y"
1. "AVG_fBodyAcc-mean-Z"
1. "AVG_fBodyAcc-std-X"
1. "AVG_fBodyAcc-std-Y"
1. "AVG_fBodyAcc-std-Z"
1. "AVG_fBodyAccJerk-mean-X"
1. "AVG_fBodyAccJerk-mean-Y"
1. "AVG_fBodyAccJerk-mean-Z"
1. "AVG_fBodyAccJerk-std-X"
1. "AVG_fBodyAccJerk-std-Y"
1. "AVG_fBodyAccJerk-std-Z"
1. "AVG_fBodyGyro-mean-X"
1. "AVG_fBodyGyro-mean-Y"
1. "AVG_fBodyGyro-mean-Z"
1. "AVG_fBodyGyro-std-X"
1. "AVG_fBodyGyro-std-Y"
1. "AVG_fBodyGyro-std-Z"
1. "AVG_fBodyAccMag-mean"
1. "AVG_fBodyAccMag-std"
1. "AVG_fBodyBodyAccJerkMag-mean"
1. "AVG_fBodyBodyAccJerkMag-std"
1. "AVG_fBodyBodyGyroMag-mean"
1. "AVG_fBodyBodyGyroMag-std"
1. "AVG_fBodyBodyGyroJerkMag-mean"
1. "AVG_fBodyBodyGyroJerkMag-std"

Reference the "UCI Center for Machine Learning and Intelligent Systems" website for detailed breakdown of the 
experiment and the computational information for each metric
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphoneshhhhh
