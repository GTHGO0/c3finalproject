## FINAL PROJECT
## COURSE: GETTING AND CLEANING DATA
## AUTHOR: Hans Gonzalez
## December, 2020
##

##  Data set for the project:
##  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##
##  Project Requirements:
##  You should create one R script called run_analysis.R that does the following.
##
##  1.  Merges the training and the test sets to create one data set.
##  2.  Extracts only the measurements on the mean and standard deviation for 
##      each measurement.
##  3.  Uses descriptive activity names to name the activities in the data set
##  4.  Appropriately labels the data set with descriptive variable names.
##  5.  From the data set in step 4, creates a second, independent tidy data set
##      with the average of each variable for each activity and each subject.

setwd("R/C3-GCD/c3finalproject/") # setting the working directory

#######################################################################
##   1. Downloading the data set from the source                     ##                                                                  #
#######################################################################

library(httr)

url <- ("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
GET(url, write_disk("dataset.zip", overwrite = TRUE))

unzip("dataset.zip", list = T) # to view a list of the files in the folder.
unzip("dataset.zip")

#######################################################################
##   2. Uploading the data set into R                                ##                                                                  #
#######################################################################

##  using read.table()

TestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
TestLX <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
TestY <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE)

TrainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
TrainLX <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
TrainY <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE)

features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)


#######################################################################
##   3. Identify and Analyze the data previous to merging files      ##                                                                  #
#######################################################################

str(activityLabels)
str(features)
str(TrainSubject)
str(TrainLX)
str(TrainY)

str(TestSubject)
str(TestLX)
str(TestY)

#######################################################################
##   4. Create and Independent "Training and Test" data set          ##                                                                  #
#######################################################################

##  using data.frame() we create two independent datasets

TrainDataSet <- data.frame(TrainSubject, TrainY, TrainLX)
TestDataSet <- data.frame(TestSubject, TestY, TestLX)

#######################################################################
##   5. Apply Labels to the previous data sets                       ##                                                                  #
#######################################################################

##  Using the data in features.txt we rename the labels in both datasets

features <- as.character(features[,2])

names(TrainDataSet)<-c(c("subject", "activity"), features)
names(TestDataSet)<-c(c("subject", "activity"), features)

View(TestDataSet) # to check if the changes were applied

#######################################################################
##   6. Merge the Training and Test datasets to create one Dataset   ##                                                                  #
#######################################################################

##  Using rbind() we joint both datasets.

FullDataSet <- rbind(TrainDataSet, TestDataSet)
str(FullDataSet)

#######################################################################
##   7. Extract only the measurements on the mean and standard       ##
##      deviation for each measurement from the file                 ##
#######################################################################

##  using the grep() function we found the columns that meet our criteria

grep("mean()",names(FullDataSet))
grep("mean()",names(FullDataSet), value = TRUE)
length(grep("mean()",names(FullDataSet), value = TRUE))

##  using grep function we created a vector with the columns containing
##  "Mean or Standard deviation"

grep("mean|std", names(FullDataSet), value = TRUE)
length(grep("mean|std", names(FullDataSet), value = TRUE))
xxcols <- grep("mean|std", names(FullDataSet))

##  using dplyr package and "select()" function we extract the data

library(dplyr)
DataSubset <- select(FullDataSet, 1:2, xxcols)
View(DataSubset)

##  In this step we delete columns with names "MeanFreq"

grep("meanFreq",names(DataSubset), value = TRUE)
DataSubset <- select(DataSubset, -(grep("meanFreq",names(DataSubset), value = TRUE)))
View(DataSubset)

#######################################################################
##   8. Use descriptive activity names in "activity" column data     ##                                                                  #
#######################################################################

names(activityLabels) <- c("activity", "actvity_name")

## now we subset a simple list of the activity names.

lbs2<- activityLabels[,2]

## we assign the labels in "lbs2" to the column "activity" in "DataSubset"

DataSubset$activity <- lbs2[DataSubset$activity]
View(DataSubset)

############################################################################
##   9. Appropriately label the data set with descriptive variable names  ##                         ##                                                                  #
############################################################################

names(DataSubset) # there are 68 labels

##  we want to rename everything else except "mean & std"
##  with gsub() and unique() we extract everything else than "mean/std"
##  unique() eliminates duplicity, we dont need cols 1:2

unique(gsub("-(mean|std)().*", "", names(DataSubset)[-c(1:2)]))

##  [1] "tBodyAcc"             "tGravityAcc"          "tBodyAccJerk"        
##  [4] "tBodyGyro"            "tBodyGyroJerk"        "tBodyAccMag"         
##  [7] "tGravityAccMag"       "tBodyAccJerkMag"      "tBodyGyroMag"        
##  [10] "tBodyGyroJerkMag"     "fBodyAcc"             "fBodyAccJerk"        
##  [13] "fBodyGyro"            "fBodyAccMag"          "fBodyBodyAccJerkMag" 
##  [16] "fBodyBodyGyroMag"     "fBodyBodyGyroJerkMag"

##  we want to make some replacements into the strings as follows:

## "t" means time
## "f" means frequency
## "Acc" stands for Accelerometer
## "Gyro" stands for Gyroscope
## "Mag" means Magnitude
## "BodyBody" replaced by Body

names(DataSubset)[-c(1:2)] <- gsub("^t", "time", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("^f", "frequency", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("Acc", "Accelerometer", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("Gyro", "Gyroscope", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("Mag", "Magnitude", names(DataSubset)[-c(1:2)])
names(DataSubset)[-c(1:2)] <- gsub("BodyBody", "Body", names(DataSubset)[-c(1:2)])

names(DataSubset)

############################################################################
##   10. Group the data by "subject" and "activity", with the average     ##
##       of each variable.                                                ##
############################################################################

##  using the aggregate() function, we group the dataset and calculate the mean

TidyData <- aggregate(.~subject+activity, DataSubset, mean)

############################################################################
##   11. Store in an independent output file the results obtained         ##                         ##                                                                  #
############################################################################

## write the results to a text file

write.table(TidyData, file = "tidydata.txt", row.names = FALSE)

## how to read the file.

newfile <- read.table("tidydata.txt", header= TRUE)
View(newfile)


##  End of the script
#############################################################################

