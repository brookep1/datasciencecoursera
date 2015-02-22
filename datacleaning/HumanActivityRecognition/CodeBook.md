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


> "AVG_tBodyAcc-mean-X"		"AVG_tBodyAcc-mean-Y"	
> "AVG_tBodyAcc-mean-Z"		"AVG_tBodyAcc-std-X"	
> "AVG_tBodyAcc-std-Y"		"AVG_tBodyAcc-std-Z"	
> "AVG_tGravityAcc-mean-X"	"AVG_tGravityAcc-mean-Y" 
> "AVG_tGravityAcc-mean-Z"	"AVG_tGravityAcc-std-X" 
> "AVG_tGravityAcc-std-Y"	"AVG_tGravityAcc-std-Z" 
> "AVG_tBodyAccJerk-mean-X"	"AVG_tBodyAccJerk-mean-Y" 
> "AVG_tBodyAccJerk-mean-Z"	"AVG_tBodyAccJerk-std-X" 
> "AVG_tBodyAccJerk-std-Y"	"AVG_tBodyAccJerk-std-Z" 
> "AVG_tBodyGyro-mean-X"	"AVG_tBodyGyro-mean-Y" 
> "AVG_tBodyGyro-mean-Z"	"AVG_tBodyGyro-std-X" 
> "AVG_tBodyGyro-std-Y"		"AVG_tBodyGyro-std-Z" 
> "AVG_tBodyGyroJerk-mean-X"	"AVG_tBodyGyroJerk-mean-Y" 
> "AVG_tBodyGyroJerk-mean-Z"	"AVG_tBodyGyroJerk-std-X" 
> "AVG_tBodyGyroJerk-std-Y"	"AVG_tBodyGyroJerk-std-Z" 
> "AVG_tBodyAccMag-mean"	"AVG_tBodyAccMag-std" 
> "AVG_tGravityAccMag-mean"	"AVG_tGravityAccMag-std" 
> "AVG_tBodyAccJerkMag-mean"	"AVG_tBodyAccJerkMag-std" 
> "AVG_tBodyGyroMag-mean"	"AVG_tBodyGyroMag-std" 
> "AVG_tBodyGyroJerkMag-mean"	"AVG_tBodyGyroJerkMag-std" 
> "AVG_fBodyAcc-mean-X"		"AVG_fBodyAcc-mean-Y" 
> "AVG_fBodyAcc-mean-Z"		"AVG_fBodyAcc-std-X" 
> "AVG_fBodyAcc-std-Y"		"AVG_fBodyAcc-std-Z" 
> "AVG_fBodyAccJerk-mean-X"	"AVG_fBodyAccJerk-mean-Y" 
> "AVG_fBodyAccJerk-mean-Z"	"AVG_fBodyAccJerk-std-X" 
> "AVG_fBodyAccJerk-std-Y"	"AVG_fBodyAccJerk-std-Z" 
> "AVG_fBodyGyro-mean-X"	"AVG_fBodyGyro-mean-Y" 
> "AVG_fBodyGyro-mean-Z"	"AVG_fBodyGyro-std-X" 
> "AVG_fBodyGyro-std-Y"		"AVG_fBodyGyro-std-Z" 
> "AVG_fBodyAccMag-mean"	"AVG_fBodyAccMag-std" 
> "AVG_fBodyBodyAccJerkMag-mean"	"AVG_fBodyBodyAccJerkMag-std" 
> "AVG_fBodyBodyGyroMag-mean"		"AVG_fBodyBodyGyroMag-std" 
> "AVG_fBodyBodyGyroJerkMag-mean"	"AVG_fBodyBodyGyroJerkMag-std"


Reference the "UCI Center for Machine Learning and Intelligent Systems" website for detailed breakdown of the 
experiment and the computational information for each metric
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphoneshhhhh
