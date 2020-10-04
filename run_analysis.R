## download dataSet from web & unzip

URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile <- "CourseDataset.zip"
if (!file.exists(destFile)){
        download.file(URL, destfile = destFile, mode='wb')
}
if (!file.exists("./UCI_HAR_Dataset")){
        unzip(destFile)
}
dateDownloaded <- date()

## step one:    create data set
## step one a:  create x data set

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header= FALSE)
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header= FALSE)
X_Total <- rbind(X_test, X_train)
X_labels <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
colnames(X_Total) <- X_labels[,2]

## step one b:  create y data set

Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header= FALSE)
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header= FALSE)
Y_Total <- rbind(Y_test, Y_train)
Y_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
colnames(Y_Total) <- "activity"

## step one c:  create subject data set

Sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                       header= FALSE)
Sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                        header= FALSE)
Sub_Total <- rbind(Sub_test, Sub_train)
colnames(Sub_Total) <- "SubjectID"

## step one d:  create massive data set

alldata <- cbind(Y_Total, Sub_Total, X_Total)

## step two:    Extract only the measurements on the mean and standard 
##              deviation for each measurement

colNames <- colnames(alldata)
mean_and_std <- (grepl("activity", colNames) |
                         grepl("SubjectID", colNames) |
                         grepl("mean..", colNames) |
                         grepl("std...", colNames))
select_data <- alldata[ , mean_and_std == TRUE]

## step three:  Use descriptive activity names to name the activities in
##              the data set

colnames(Y_labels) <- c("activityID", "activity")
label_data <- merge(select_data, Y_labels,
                              by = "activity",
                              all.x = TRUE)
label_data <- label_data[,-c(1, 74)]

## step four:   Appropriately label the data set with descriptive 
##              variable names.

## NOTE: this was done in step one

## step five:   From the data set in step 4, create a second, independent 
##              tidy data set with the average of each variable for each activity
##              and each subject.

finalSet <- aggregate(label_data,
                      by= list(label_data$SubjectID, label_data$activity), 
                      FUN = "mean", na.rm = TRUE)
write.table(finalSet, file = "./UCI HAR Dataset/tidydata.txt", 
            row.names = FALSE, col.names = TRUE)

