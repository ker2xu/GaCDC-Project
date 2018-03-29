# Code Book
=================
This is a Code Book for tidy_set_of_step5.csv, the csv file contains two values "subject.id", "activity.name" and those values who have substring like "[Mm]ean" or "[Ss]td".
All values names are listed at the end.
=================

subject.id - the id of those volunteers, from 1 - 30
activity.name - six activity names

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is:
subject.id,activity.name,tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z,tGravityAcc-std()-X,tGravityAcc-std()-Y,tGravityAcc-std()-Z,tBodyAccJerk-std()-X,tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z,tBodyGyro-std()-X,tBodyGyro-std()-Y,tBodyGyro-std()-Z,tBodyGyroJerk-std()-X,tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z,tBodyAccMag-std(),tGravityAccMag-std(),tBodyAccJerkMag-std(),tBodyGyroMag-std(),tBodyGyroJerkMag-std(),fBodyAcc-std()-X,fBodyAcc-std()-Y,fBodyAcc-std()-Z,fBodyAccJerk-std()-X,fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z,fBodyGyro-std()-X,fBodyGyro-std()-Y,fBodyGyro-std()-Z,fBodyAccMag-std(),fBodyBodyAccJerkMag-std(),fBodyBodyGyroMag-std(),fBodyBodyGyroJerkMag-std(),angle(tBodyAccMean,gravity),angle(tBodyAccJerkMean),gravityMean),angle(tBodyGyroMean,gravityMean),angle(tBodyGyroJerkMean,gravityMean),angle(X,gravityMean),angle(Y,gravityMean),angle(Z,gravityMean)
