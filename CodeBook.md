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

1) 'time': denotes the time captured at a constant rate of 50Hz
2) 'body': denotes the signal recorded for the body 
3) 'Jerk': denotes the signal recorded for a sudden movement
4) 'Accelerometer': denotes a specific function based on acceleration of the phone
5) 'Gyroscope': specific function based on the gyroscope of the phone
6) 'Gravity': specific function based on the gravity of the phone
7) 'frequency': the frequency domain signals
8) 'magnitude': measure based on three-dimensional signals
9) '-XYZ': is used to denote 3-axial signals in the X, Y and Z directions.
10) 'mean()': Mean value
11) 'std()': Standard deviation

Data Set and Variable Description
==================================
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


**A list of the variables is provided as follows:**

**[No.] "VARIABLE" = DESCRIPTION**

 [1] "subject" = An identifier of the subject who carried out the experiment. ID:[From 1 to 30]                                                   
 [2] "activity" = Type of activity performed from 1 to 6:[1. WALKING 2. WALKING_UPSTAIRS 3. WALKING_DOWNSTAIRS 4. SITTING 5. STANDING 6. LAYING]  
 [3] "timeBodyAccelerometer-mean()-X" = Average of each observation after being grouped by subject/activity.                                      
 [4] "timeBodyAccelerometer-mean()-Y" = Average of each observation after being grouped by subject/activity.                                      
 [5] "timeBodyAccelerometer-mean()-Z" = Average of each observation after being grouped by subject/activity.                                      
 [6] "timeBodyAccelerometer-std()-X"  = Average of each observation after being grouped by subject/activity.                                       
 [7] "timeBodyAccelerometer-std()-Y"  = Average of each observation after being grouped by subject/activity.                                      
 [8] "timeBodyAccelerometer-std()-Z"  = Average of each observation after being grouped by subject/activity.                                      
 [9] "timeGravityAccelerometer-mean()-X" = Average of each observation after being grouped by subject/activity.                                   
[10] "timeGravityAccelerometer-mean()-Y" = Average of each observation after being grouped by subject/activity.                                   
[11] "timeGravityAccelerometer-mean()-Z" = Average of each observation after being grouped by subject/activity.                                   
[12] "timeGravityAccelerometer-std()-X"  = Average of each observation after being grouped by subject/activity.                                   
[13] "timeGravityAccelerometer-std()-Y"  = Average of each observation after being grouped by subject/activity.                                   
[14] "timeGravityAccelerometer-std()-Z"  = Average of each observation after being grouped by subject/activity.                                   
[15] "timeBodyAccelerometerJerk-mean()-X" = Average of each observation after being grouped by subject/activity.                                  
[16] "timeBodyAccelerometerJerk-mean()-Y" = Average of each observation after being grouped by subject/activity.                                  
[17] "timeBodyAccelerometerJerk-mean()-Z" = Average of each observation after being grouped by subject/activity.                                  
[18] "timeBodyAccelerometerJerk-std()-X"  = Average of each observation after being grouped by subject/activity.                                  
[19] "timeBodyAccelerometerJerk-std()-Y"  = Average of each observation after being grouped by subject/activity.                                  
[20] "timeBodyAccelerometerJerk-std()-Z"  = Average of each observation after being grouped by subject/activity.                                  
[21] "timeBodyGyroscope-mean()-X" = Average of each observation after being grouped by subject/activity.                                          
[22] "timeBodyGyroscope-mean()-Y" = Average of each observation after being grouped by subject/activity.                                          
[23] "timeBodyGyroscope-mean()-Z" = Average of each observation after being grouped by subject/activity.                                          
[24] "timeBodyGyroscope-std()-X"  = Average of each observation after being grouped by subject/activity.                                          
[25] "timeBodyGyroscope-std()-Y"  = Average of each observation after being grouped by subject/activity.                                          
[26] "timeBodyGyroscope-std()-Z"  = Average of each observation after being grouped by subject/activity.                                          
[27] "timeBodyGyroscopeJerk-mean()-X" = Average of each observation after being grouped by subject/activity.                                       
[28] "timeBodyGyroscopeJerk-mean()-Y" = Average of each observation after being grouped by subject/activity.                                       
[29] "timeBodyGyroscopeJerk-mean()-Z" = Average of each observation after being grouped by subject/activity.                                       
[30] "timeBodyGyroscopeJerk-std()-X"  = Average of each observation after being grouped by subject/activity.                                       
[31] "timeBodyGyroscopeJerk-std()-Y"  = Average of each observation after being grouped by subject/activity.                                       
[32] "timeBodyGyroscopeJerk-std()-Z"  = Average of each observation after being grouped by subject/activity.                                       
[33] "timeBodyAccelerometerMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                                
[34] "timeBodyAccelerometerMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                                
[35] "timeGravityAccelerometerMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                             
[36] "timeGravityAccelerometerMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                             
[37] "timeBodyAccelerometerJerkMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                            
[38] "timeBodyAccelerometerJerkMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                            
[39] "timeBodyGyroscopeMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                                    
[40] "timeBodyGyroscopeMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                                    
[41] "timeBodyGyroscopeJerkMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                                
[42] "timeBodyGyroscopeJerkMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                                
[43] "frequencyBodyAccelerometer-mean()-X"   = Average of each observation after being grouped by subject/activity.                                
[44] "frequencyBodyAccelerometer-mean()-Y"   = Average of each observation after being grouped by subject/activity.                                
[45] "frequencyBodyAccelerometer-mean()-Z"   = Average of each observation after being grouped by subject/activity.                                
[46] "frequencyBodyAccelerometer-std()-X"    = Average of each observation after being grouped by subject/activity.                                
[47] "frequencyBodyAccelerometer-std()-Y"    = Average of each observation after being grouped by subject/activity.                                
[48] "frequencyBodyAccelerometer-std()-Z"    = Average of each observation after being grouped by subject/activity.                                
[49] "frequencyBodyAccelerometerJerk-mean()-X" = Average of each observation after being grouped by subject/activity.                              
[50] "frequencyBodyAccelerometerJerk-mean()-Y" = Average of each observation after being grouped by subject/activity.                              
[51] "frequencyBodyAccelerometerJerk-mean()-Z" = Average of each observation after being grouped by subject/activity.                              
[52] "frequencyBodyAccelerometerJerk-std()-X"  = Average of each observation after being grouped by subject/activity.                              
[53] "frequencyBodyAccelerometerJerk-std()-Y"  = Average of each observation after being grouped by subject/activity.                              
[54] "frequencyBodyAccelerometerJerk-std()-Z"  = Average of each observation after being grouped by subject/activity.                              
[55] "frequencyBodyGyroscope-mean()-X" = Average of each observation after being grouped by subject/activity.                                      
[56] "frequencyBodyGyroscope-mean()-Y" = Average of each observation after being grouped by subject/activity.                                      
[57] "frequencyBodyGyroscope-mean()-Z" = Average of each observation after being grouped by subject/activity.                                      
[58] "frequencyBodyGyroscope-std()-X"  = Average of each observation after being grouped by subject/activity.                                      
[59] "frequencyBodyGyroscope-std()-Y"  = Average of each observation after being grouped by subject/activity.                                      
[60] "frequencyBodyGyroscope-std()-Z"  = Average of each observation after being grouped by subject/activity.                                      
[61] "frequencyBodyAccelerometerMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                           
[62] "frequencyBodyAccelerometerMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                          
[63] "frequencyBodyAccelerometerJerkMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                      
[64] "frequencyBodyAccelerometerJerkMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                       
[65] "frequencyBodyGyroscopeMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                               
[66] "frequencyBodyGyroscopeMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                               
[67] "frequencyBodyGyroscopeJerkMagnitude-mean()" = Average of each observation after being grouped by subject/activity.                           
[68] "frequencyBodyGyroscopeJerkMagnitude-std()"  = Average of each observation after being grouped by subject/activity.                           