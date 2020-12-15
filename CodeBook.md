---
title: "CODEBOOK: -\"tidydata.txt\"-"
author: "Hans Gonzalez"
date: "14/12/2020"
output: html_document
---


Feature Description
====================

**The following descriptions are provided as a previous background to interpret the "tidydataset.txt". Please refer to the next section to find a complete list of the patterns used in the codebook and dataset.**

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Pattern Description
====================

These signals were used to estimate variables of the feature vector for each pattern:  
'time': denotes the time captured at a constant rate of 50Hz
'body': denotes the signal recorded for the body 
'Jerk': denotes the signal recorded for a sudden movement
'Accelerometer': denotes a specific function based on acceleration of the phone
'Gyroscope': specific function based on the gyroscope of the phone
'Gravity': specific function based on the gravity of the phone
'frequency': the frequency domain signals
'magnitude': measure based on three-dimensional signals
'-XYZ': is used to denote 3-axial signals in the X, Y and Z directions.
'mean()': Mean value
'std()': Standard deviation


Data Set and Variable Description
====================
The data collected in the file "tidydata.txt" is the result of a series of steps and transformations of the raw data provided from:

>[Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Notes: 
1. Features are normalized and bounded within [-1,1].
2. Each feature vector is a row on the text file.
3. The data set is the result of a **GROUP BY** function.
4. The data was grouped by Subject and Activity.
5. Each column [3:68] represents the average of each observation in the dataset after being grouped by subject/activity. 


A list of the variables is provided as follows:

+-----------------------------------------------------+-----------------------------------------------------------------------+
| No. VARIABLE NAME                                   |                      VARIABLE DESCRIPTION                             |
+-----------------------------------------------------+-----------------------------------------------------------------------+
 [1] "subject"                                        | An identifier of the subject who carried out the experiment.          |
													  |  	ID: [From 1 to 30]	                                              |
 [2] "activity"                                       | Type of activity performed from 1 to 6:                               |
		                                              | 		1. WALKING                                                    |
													  | 		2. WALKING_UPSTAIRS                                           |
													  | 		3. WALKING_DOWNSTAIRS                                         |
													  | 		4. SITTING                                                    |
													  | 		5. STANDING                                                   |
													  | 		6. LAYING	                                                  |
 [3] "timeBodyAccelerometer-mean()-X"                 | Average of each observation after being grouped by subject/activity.  |                          
 [4] "timeBodyAccelerometer-mean()-Y"                 |                         "   "                                         |
 [5] "timeBodyAccelerometer-mean()-Z"                 |                         "   "                                         |
 [6] "timeBodyAccelerometer-std()-X"                  |                         "   "                                         |
 [7] "timeBodyAccelerometer-std()-Y"                  |                         "   "                                         |
 [8] "timeBodyAccelerometer-std()-Z"                  |                         "   "                                         |
 [9] "timeGravityAccelerometer-mean()-X"              |                         "   "                                         |
[10] "timeGravityAccelerometer-mean()-Y"              |                         "   "                                         |
[11] "timeGravityAccelerometer-mean()-Z"              |                         "   "                                         |
[12] "timeGravityAccelerometer-std()-X"               |                         "   "                                         |
[13] "timeGravityAccelerometer-std()-Y"               |                         "   "                                         |
[14] "timeGravityAccelerometer-std()-Z"               |                         "   "                                         |
[15] "timeBodyAccelerometerJerk-mean()-X"             |                         "   "                                         |
[16] "timeBodyAccelerometerJerk-mean()-Y"             |                         "   "                                         |
[17] "timeBodyAccelerometerJerk-mean()-Z"             |                         "   "                                         |
[18] "timeBodyAccelerometerJerk-std()-X"              |                         "   "                                         |
[19] "timeBodyAccelerometerJerk-std()-Y"              |                         "   "                                         |
[20] "timeBodyAccelerometerJerk-std()-Z"              |                         "   "                                         |
[21] "timeBodyGyroscope-mean()-X"                     |                         "   "                                         |
[22] "timeBodyGyroscope-mean()-Y"                     |                         "   "                                         |
[23] "timeBodyGyroscope-mean()-Z"                     |                         "   "                                         |
[24] "timeBodyGyroscope-std()-X"                      |                         "   "                                         |
[25] "timeBodyGyroscope-std()-Y"                      |                         "   "                                         |
[26] "timeBodyGyroscope-std()-Z"                      |                         "   "                                         |
[27] "timeBodyGyroscopeJerk-mean()-X"                 |                         "   "                                         |
[28] "timeBodyGyroscopeJerk-mean()-Y"                 |                         "   "                                         |
[29] "timeBodyGyroscopeJerk-mean()-Z"                 |                         "   "                                         |
[30] "timeBodyGyroscopeJerk-std()-X"                  |                         "   "                                         |
[31] "timeBodyGyroscopeJerk-std()-Y"                  |                         "   "                                         |
[32] "timeBodyGyroscopeJerk-std()-Z"                  |                         "   "                                         |
[33] "timeBodyAccelerometerMagnitude-mean()"          |                         "   "                                         |
[34] "timeBodyAccelerometerMagnitude-std()"           |                         "   "                                         |
[35] "timeGravityAccelerometerMagnitude-mean()"       |                         "   "                                         |
[36] "timeGravityAccelerometerMagnitude-std()"        |                         "   "                                         |
[37] "timeBodyAccelerometerJerkMagnitude-mean()"      |                         "   "                                         |
[38] "timeBodyAccelerometerJerkMagnitude-std()"       |                         "   "                                         |
[39] "timeBodyGyroscopeMagnitude-mean()"              |                         "   "                                         |
[40] "timeBodyGyroscopeMagnitude-std()"               |                         "   "                                         |
[41] "timeBodyGyroscopeJerkMagnitude-mean()"          |                         "   "                                         |
[42] "timeBodyGyroscopeJerkMagnitude-std()"           |                         "   "                                         |
[43] "frequencyBodyAccelerometer-mean()-X"            |                         "   "                                         |
[44] "frequencyBodyAccelerometer-mean()-Y"            |                         "   "                                         |
[45] "frequencyBodyAccelerometer-mean()-Z"            |                         "   "                                         |
[46] "frequencyBodyAccelerometer-std()-X"             |                         "   "                                         |
[47] "frequencyBodyAccelerometer-std()-Y"             |                         "   "                                         |
[48] "frequencyBodyAccelerometer-std()-Z"             |                         "   "                                         |
[49] "frequencyBodyAccelerometerJerk-mean()-X"        |                         "   "                                         |
[50] "frequencyBodyAccelerometerJerk-mean()-Y"        |                         "   "                                         |
[51] "frequencyBodyAccelerometerJerk-mean()-Z"        |                         "   "                                         |
[52] "frequencyBodyAccelerometerJerk-std()-X"         |                         "   "                                         |
[53] "frequencyBodyAccelerometerJerk-std()-Y"         |                         "   "                                         |
[54] "frequencyBodyAccelerometerJerk-std()-Z"         |                         "   "                                         |
[55] "frequencyBodyGyroscope-mean()-X"                |                         "   "                                         |
[56] "frequencyBodyGyroscope-mean()-Y"                |                         "   "                                         |
[57] "frequencyBodyGyroscope-mean()-Z"                |                         "   "                                         |
[58] "frequencyBodyGyroscope-std()-X"                 |                         "   "                                         |
[59] "frequencyBodyGyroscope-std()-Y"                 |                         "   "                                         |
[60] "frequencyBodyGyroscope-std()-Z"                 |                         "   "                                         |
[61] "frequencyBodyAccelerometerMagnitude-mean()"     |                         "   "                                         |
[62] "frequencyBodyAccelerometerMagnitude-std()"      |                         "   "                                         |
[63] "frequencyBodyAccelerometerJerkMagnitude-mean()" |                         "   "                                         |
[64] "frequencyBodyAccelerometerJerkMagnitude-std()"  |                         "   "                                         |
[65] "frequencyBodyGyroscopeMagnitude-mean()"         |                         "   "                                         |
[66] "frequencyBodyGyroscopeMagnitude-std()"          |                         "   "                                         |
[67] "frequencyBodyGyroscopeJerkMagnitude-mean()"     |                         "   "                                         |
[68] "frequencyBodyGyroscopeJerkMagnitude-std()"      |                         "   "                                         |
------------------------------------------------------+-----------------------------------------------------------------------+
																							   