a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

Assignment: Getting & Cleaning Data Course Project
Author: B. Devan Steiner

Code Book

Column names:

tidydata.txt contains 180 rows and 74 columns with the following names:

[1] "Group.1"                         "Group.2"                        
 [3] "SubjectID"                       "tBodyAcc-mean()-X"              
 [5] "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"              
 [7] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
 [9] "tBodyAcc-std()-Z"                "tGravityAcc-mean()-X"           
[11] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
[13] "tGravityAcc-std()-X"             "tGravityAcc-std()-Y"            
[15] "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"          
[17] "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"          
[19] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
[21] "tBodyAccJerk-std()-Z"            "tBodyGyro-mean()-X"             
[23] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[25] "tBodyGyro-std()-X"               "tBodyGyro-std()-Y"              
[27] "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"         
[29] "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"         
[31] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[33] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-mean()"             
[35] "tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"         
[37] "tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
[39] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[41] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"               
[43] "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[45] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
[47] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
[49] "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[51] "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[53] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"      
[55] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[57] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[59] "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
[61] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
[63] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[65] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"             
[67] "fBodyAccMag-meanFreq()"          "fBodyBodyAccJerkMag-mean()"     
[69] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[71] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"    
[73] "fBodyBodyGyroJerkMag-meanFreq()" "activitylabel" 

Each row has averaged (mean) results for each subject and each activity.

This dataset is derived from a larger dataset containing 563 variables and
10299 rows.  The dataset in tidydata.txt contains only the mean and standard 
deviation variables.  From there, the mean for each subject and activity was 
taken for each variable, which reduced the number of rows from 10299 to 180.