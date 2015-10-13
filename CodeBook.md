---
title: "CodeBook"
author: "Oliver Morris"
date: "13 October 2015"
output: html_document
---

##Code Book##
=================

This data is a summary of data presented in:

  Human Activity Recognition Using Smartphones Dataset. Version 1.0

Which was prepared by:

  Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
  Smartlab - Non Linear Complex Systems Laboratory
  DITEN - Università degli Studi di Genova.
  Via Opera Pia 11A, I-16145, Genoa, Italy.
  activityrecognition@smartlab.ws
  www.smartlab.ws

##Description of The Original Experiment##

The experiments were  carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, the team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments were video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

##Description of The Features##

The time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
(tBodyAcc-XYZ and tGravityAcc-XYZ)

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing. 
(Note the 'f' to indicate frequency domain signals). 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

##Summary of the Data##
The data set presented here is a SUMMARY of the above values. In all cases a mean has been taken for the data as grouped by the "activity being undetaken and the "subject" who carried out that activity.

##Feature Units##


| Label                       | Physical Attribute                | Axis | Units                  | Statistical Measure        |
|-----------------------------|-----------------------------------|------|------------------------|----------------------------|
| tBodyAcc-mean()-X           | Acceleration along given axis     | X    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyAcc-mean()-Y           | Acceleration along given axis     | Y    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyAcc-mean()-Z           | Acceleration along given axis     | Z    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tGravityAcc-mean()-X        | Acceleration along given axis     | X    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tGravityAcc-mean()-Y        | Acceleration along given axis     | Y    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tGravityAcc-mean()-Z        | Acceleration along given axis     | Z    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyAccJerk-mean()-X       | Acceleration along given axis     | X    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyAccJerk-mean()-Y       | Acceleration along given axis     | Y    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyAccJerk-mean()-Z       | Acceleration along given axis     | Z    | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyGyro-mean()-X          | Rotational velocity               | X    | Radians per second     | Mean of Mean               |
| tBodyGyro-mean()-Y          | Rotational velocity               | Y    | Radians per second     | Mean of Mean               |
| tBodyGyro-mean()-Z          | Rotational velocity               | Z    | Radians per second     | Mean of Mean               |
| tBodyGyroJerk-mean()-X      | Rotational velocity               | X    | Radians per second     | Mean of Mean               |
| tBodyGyroJerk-mean()-Y      | Rotational velocity               | Y    | Radians per second     | Mean of Mean               |
| tBodyGyroJerk-mean()-Z      | Rotational velocity               | Z    | Radians per second     | Mean of Mean               |
| tBodyAccMag-mean()          | Overall Magnitude of Acceleration | N/A  | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tGravityAccMag-mean()       | Overall Magnitude of Acceleration | N/A  | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyAccJerkMag-mean()      | Overall Magnitude of Acceleration | N/A  | g (1g = 9.80665 m/s/s) | Mean of Mean               |
| tBodyGyroMag-mean()         | Overall Magnitude of Rotation     | N/A  | Radians per second     | Mean of Mean               |
| tBodyGyroJerkMag-mean()     | Overall Magnitude of Rotation     | N/A  | Radians per second     | Mean of Mean               |
| fBodyAcc-mean()-X           | Result of Fast Fourier Transform  | X    | Frequency              | Mean of Mean               |
| fBodyAcc-mean()-Y           | Result of Fast Fourier Transform  | Y    | Frequency              | Mean of Mean               |
| fBodyAcc-mean()-Z           | Result of Fast Fourier Transform  | Z    | Frequency              | Mean of Mean               |
| fBodyAccJerk-mean()-X       | Result of Fast Fourier Transform  | X    | Frequency              | Mean of Mean               |
| fBodyAccJerk-mean()-Y       | Result of Fast Fourier Transform  | Y    | Frequency              | Mean of Mean               |
| fBodyAccJerk-mean()-Z       | Result of Fast Fourier Transform  | Z    | Frequency              | Mean of Mean               |
| fBodyGyro-mean()-X          | Result of Fast Fourier Transform  | X    | Frequency              | Mean of Mean               |
| fBodyGyro-mean()-Y          | Result of Fast Fourier Transform  | Y    | Frequency              | Mean of Mean               |
| fBodyGyro-mean()-Z          | Result of Fast Fourier Transform  | Z    | Frequency              | Mean of Mean               |
| fBodyAccMag-mean()          | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Mean               |
| fBodyBodyAccJerkMag-mean()  | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Mean               |
| fBodyBodyGyroMag-mean()     | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Mean               |
| fBodyBodyGyroJerkMag-mean() | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Mean               |
| tBodyAcc-std()-X            | Acceleration along given axis     | X    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyAcc-std()-Y            | Acceleration along given axis     | Y    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyAcc-std()-Z            | Acceleration along given axis     | Z    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tGravityAcc-std()-X         | Acceleration along given axis     | X    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tGravityAcc-std()-Y         | Acceleration along given axis     | Y    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tGravityAcc-std()-Z         | Acceleration along given axis     | Z    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyAccJerk-std()-X        | Acceleration along given axis     | X    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyAccJerk-std()-Y        | Acceleration along given axis     | Y    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyAccJerk-std()-Z        | Acceleration along given axis     | Z    | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyGyro-std()-X           | Rotational velocity               | X    | Radians per second     | Mean of Standard Deviation |
| tBodyGyro-std()-Y           | Rotational velocity               | Y    | Radians per second     | Mean of Standard Deviation |
| tBodyGyro-std()-Z           | Rotational velocity               | Z    | Radians per second     | Mean of Standard Deviation |
| tBodyGyroJerk-std()-X       | Rotational velocity               | X    | Radians per second     | Mean of Standard Deviation |
| tBodyGyroJerk-std()-Y       | Rotational velocity               | Y    | Radians per second     | Mean of Standard Deviation |
| tBodyGyroJerk-std()-Z       | Rotational velocity               | Z    | Radians per second     | Mean of Standard Deviation |
| tBodyAccMag-std()           | Overall Magnitude of Acceleration | N/A  | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tGravityAccMag-std()        | Overall Magnitude of Acceleration | N/A  | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyAccJerkMag-std()       | Overall Magnitude of Acceleration | N/A  | g (1g = 9.80665 m/s/s) | Mean of Standard Deviation |
| tBodyGyroMag-std()          | Overall Magnitude of Rotation     | N/A  | Radians per second     | Mean of Standard Deviation |
| tBodyGyroJerkMag-std()      | Overall Magnitude of Rotation     | N/A  | Radians per second     | Mean of Standard Deviation |
| fBodyAcc-std()-X            | Result of Fast Fourier Transform  | X    | Frequency              | Mean of Standard Deviation |
| fBodyAcc-std()-Y            | Result of Fast Fourier Transform  | Y    | Frequency              | Mean of Standard Deviation |
| fBodyAcc-std()-Z            | Result of Fast Fourier Transform  | Z    | Frequency              | Mean of Standard Deviation |
| fBodyAccJerk-std()-X        | Result of Fast Fourier Transform  | X    | Frequency              | Mean of Standard Deviation |
| fBodyAccJerk-std()-Y        | Result of Fast Fourier Transform  | Y    | Frequency              | Mean of Standard Deviation |
| fBodyAccJerk-std()-Z        | Result of Fast Fourier Transform  | Z    | Frequency              | Mean of Standard Deviation |
| fBodyGyro-std()-X           | Result of Fast Fourier Transform  | X    | Frequency              | Mean of Standard Deviation |
| fBodyGyro-std()-Y           | Result of Fast Fourier Transform  | Y    | Frequency              | Mean of Standard Deviation |
| fBodyGyro-std()-Z           | Result of Fast Fourier Transform  | Z    | Frequency              | Mean of Standard Deviation |
| fBodyAccMag-std()           | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Standard Deviation |
| fBodyBodyAccJerkMag-std()   | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Standard Deviation |
| fBodyBodyGyroMag-std()      | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Standard Deviation |
| fBodyBodyGyroJerkMag-std()  | Result of Fast Fourier Transform  | N/A  | Frequency              | Mean of Standard Deviation |
