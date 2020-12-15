## **FINAL PROJECT R- COURSE 3**
##  CLEANING AND WORKING WITH DATA

Here is the data for the project:
  
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for 
    each measurement.
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data set
    with the average of each variable for each activity and each subject.

setwd("~/") # default working directory
setwd("R/C3-GCD/c3finalproject/") # using absolute reference

library(httr)
url <- ("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
GET(url, write_disk("dataset.zip", overwrite = TRUE))

unzip("dataset.zip", list = T) # to view a list of the files in the folder.
unzip("dataset.zip")

## READING THE DATA SETS

TestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
TestLX <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
TestY <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE)

TrainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
TrainLX <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
TrainY <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE)

features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

## Analyze the data

str(activityLabels)
str(features)
str(TrainSubject)
str(TrainLX)
str(TrainY)

str(TestSubject)
str(TestLX)
str(TestY)

# Merge data in "TrainDataSet" and "TestDataSet"

TrainDataSet <- data.frame(TrainSubject, TrainY, TrainLX)
TestDataSet <- data.frame(TestSubject, TestY, TestLX)

# Correctly rename the columns

features <- as.character(features[,2])

names(TrainDataSet)<-c(c("subject", "activity"), features)
names(TestDataSet)<-c(c("subject", "activity"), features)
View(TestDataSet)

# 1.  Merge the training and the test sets to create one data set.

FullDataSet <- rbind(TrainDataSet, TestDataSet)
str(FullDataSet)

# 2.  Extract only the measurements on the mean and standard deviation for 
#     each measurement.

grep("mean()",names(FullDataSet))
grep("mean()",names(FullDataSet), value = TRUE)
length(grep("mean()",names(FullDataSet), value = TRUE))

#   Subset the data only with columns containing "Mean" & "Std"
#   using grep function I got the number of columns containing "Mean or STD"

grep("mean|std", names(FullDataSet), value = TRUE)
length(grep("mean|std", names(FullDataSet), value = TRUE))
ncolumns <- grep("mean|std", names(FullDataSet))

#   using dplyr we extract the data with Select
library(dplyr)
DataSubset <- select(FullDataSet, 1:2, ncolumns)
View(DataSubset)

#   Another step to delete columns with names "MeanFreq" (not required)

grep("meanFreq",names(DataSubset), value = TRUE)

DataSubset <- select(DataSubset, -(grep("meanFreq",names(DataSubset), value = TRUE)))
View(DataSubset)


##  3.  Use descriptive activity names to re-name the activities
##      in the data set

names(activityLabels) <- c("activity", "actvity_name")

## now creating a simple list of the activity names.

lbs2<- activityLabels[,2]

## doing an assignment of the labels based on the order of rows in "lbs2"
## the assignment is done in "DataSubset" as follows:

DataSubset$activity <- lbs2[DataSubset$activity]
View(DataSubset)


##  4.  Appropriately label the data set with descriptive variable names.

names(DataSubset) # there are 68 labels

##  I replace everything with "-mean().*" and wathever comes after
##  then with gsub it is replaced by nothin ("")
##  then I extract the unique names of the previous operation, except 1:2 cols

unique(gsub("-(mean|std)().*", "", names(DataSubset)[-c(1:2)]))
[1] "tBodyAcc"             "tGravityAcc"          "tBodyAccJerk"        
[4] "tBodyGyro"            "tBodyGyroJerk"        "tBodyAccMag"         
[7] "tGravityAccMag"       "tBodyAccJerkMag"      "tBodyGyroMag"        
[10] "tBodyGyroJerkMag"     "fBodyAcc"             "fBodyAccJerk"        
[13] "fBodyGyro"            "fBodyAccMag"          "fBodyBodyAccJerkMag" 
[16] "fBodyBodyGyroMag"     "fBodyBodyGyroJerkMag"

# "t" means time
# "f" means frequency
# "Acc" stands for Accelerometer
# "Gyro" stands for Gyroscope
# "Mag" means Magnitude
# "BodyBody" replaced by Body

 
names(DataSubset)[-c(1:2)] <- gsub("^t", "time", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("^f", "frequency", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("Acc", "Accelerometer", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("Gyro", "Gyroscope", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("Mag", "Magnitude", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("BodyBody", "Body", names(DataSubset)[-c(1:2)])

names(DataSubset)


##  5.  From the data set in step 4, creates a second, independent tidy data set
##      with the average of each variable for each activity and each subject.

TidyData <- aggregate(.~subject+activity, DataSubset, mean)

## write the results to a text file
write.table(TidyData, file = "tidydata.txt", row.names = FALSE)

## how to read the file.
newfile <- read.table("tidydata.txt", header= TRUE)
View(newfile)


