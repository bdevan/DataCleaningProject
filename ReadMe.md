The following comes from the in-code annotation from run_analysis.R

## download dataSet from web & unzip

## step one:    create data set

the function read.table was utilized for each of the following substeps.  x, y,
and subject were all done separately for organizational purposes.

## step one a:  create x data set

contains all the variables other than activity and subject ID

## step one b:  create y data set

contains the activities

## step one c:  create subject data set

contains the subject IDs

## step one d:  create massive data set

combines all of the previous dataframes into one large data set.

## step two:    Extract only the measurements on the mean and standard 
##              deviation for each measurement

note: grepl was used to select each variable as it creates a logical vector,
which then could be used to create a new dataframe including only columns for 
which the vector was true.

## step three:  Use descriptive activity names to name the activities in
##              the data set

the function merge was utilized to merge the select_data data frame with the
Y_Labels dataframe

## step four:   Appropriately label the data set with descriptive 
##              variable names.

## NOTE: this was done in step one for each dataset

## step five:   From the data set in step 4, create a second, independent 
##              tidy data set with the average of each variable for each activity
##              and each subject.

the function aggregate was utilized to calculate the mean for each variable by 
subject and activity.  the function order was then utilized to order the data 
first by subject and then activity.

