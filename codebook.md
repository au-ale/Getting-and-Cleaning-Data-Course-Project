Dataset:

The data for this project comes from:

Human Activity Recognition Using Smartphones Dataset

======================================

Description of experiment:

- 30 volunteers performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone    (Samsung Galaxy S II) on the waist. 
- Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity       (tAcc-XYZ and tGyro-XYZ) at a constant rate of 50Hz. 
- The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding   windows of 2.56 sec and 50% overlap (128 readings/window). 
- The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter   into body acceleration and gravity. 
- The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.    -  From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

======================================

Features Information:

- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These     time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
- Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and       tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag,         tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
- Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,     fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
- These signals were used to estimate variables of the feature vector for each pattern:  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

These features were renamed in the analysis to provide a fuller description:

- TimeBodyAccelerometer-mean()-X
- TimeBodyAccelerometer-mean()-Y
- TimeBodyAccelerometer-mean()-Z
- TimeBodyAccelerometer-std()-X
- TimeBodyAccelerometer-std()-Y
- TimeBodyAccelerometer-std()-Z
- TimeGravityAccelerometer-mean()-X
- TimeGravityAccelerometer-mean()-Y
- TimeGravityAccelerometer-mean()-Z
- TimeGravityAccelerometer-std()-X
- TimeGravityAccelerometer-std()-Y
- TimeGravityAccelerometer-std()-Z
- TimeBodyAccelerometerJerkSignals-mean()-X
- TimeBodyAccelerometerJerkSignals-mean()-Y
- TimeBodyAccelerometerJerkSignals-mean()-Z
- TimeBodyAccelerometerJerkSignals-std()-X
- TimeBodyAccelerometerJerkSignals-std()-Y
- TimeBodyAccelerometerJerkSignals-std()-Z
- TimeBodyGyroscope-mean()-X
- TimeBodyGyroscope-mean()-Y
- TimeBodyGyroscope-mean()-Z
- TimeBodyGyroscope-std()-X
- TimeBodyGyroscope-std()-Y
- TimeBodyGyroscope-std()-Z
- TimeBodyGyroscopeJerkSignals-mean()-X
- TimeBodyGyroscopeJerkSignals-mean()-Y
- TimeBodyGyroscopeJerkSignals-mean()-Z
- TimeBodyGyroscopeJerkSignals-std()-X
- TimeBodyGyroscopeJerkSignals-std()-Y
- TimeBodyGyroscopeJerkSignals-std()-Z
- TimeBodyAccelerometerMagnitude-mean()
- TimeBodyAccelerometerMagnitude-std()
- TimeGravityAccelerometerMagnitude-mean()
- TimeGravityAccelerometerMagnitude-std()
- TimeBodyAccelerometerJerkSignalsMagnitude-mean()
- TimeBodyAccelerometerJerkSignalsMagnitude-std()
- TimeBodyGyroscopeMagnitude-mean()
- TimeBodyGyroscopeMagnitude-std()
- TimeBodyGyroscopeJerkSignalsMagnitude-mean()
- TimeBodyGyroscopeJerkSignalsMagnitude-std()
- FrequencyBodyAccelerometer-mean()-X
- FrequencyBodyAccelerometer-mean()-Y
- FrequencyBodyAccelerometer-mean()-Z
- FrequencyBodyAccelerometer-std()-X
- FrequencyBodyAccelerometer-std()-Y
- FrequencyBodyAccelerometer-std()-Z
- FrequencyBodyAccelerometer-meanFreq()-X
- FrequencyBodyAccelerometer-meanFreq()-Y
- FrequencyBodyAccelerometer-meanFreq()-Z
- FrequencyBodyAccelerometerJerkSignals-mean()-X
- FrequencyBodyAccelerometerJerkSignals-mean()-Y
- FrequencyBodyAccelerometerJerkSignals-mean()-Z
- FrequencyBodyAccelerometerJerkSignals-std()-X
- FrequencyBodyAccelerometerJerkSignals-std()-Y
- FrequencyBodyAccelerometerJerkSignals-std()-Z
- FrequencyBodyAccelerometerJerkSignals-meanFreq()-X
- FrequencyBodyAccelerometerJerkSignals-meanFreq()-Y
- FrequencyBodyAccelerometerJerkSignals-meanFreq()-Z
- FrequencyBodyGyroscope-mean()-X
- FrequencyBodyGyroscope-mean()-Y
- FrequencyBodyGyroscope-mean()-Z
- FrequencyBodyGyroscope-std()-X
- FrequencyBodyGyroscope-std()-Y
- FrequencyBodyGyroscope-std()-Z
- FrequencyBodyGyroscope-meanFreq()-X
- FrequencyBodyGyroscope-meanFreq()-Y
- FrequencyBodyGyroscope-meanFreq()-Z
- FrequencyBodyAccelerometerMagnitude-mean()
- FrequencyBodyAccelerometerMagnitude-std()
- FrequencyBodyAccelerometerMagnitude-meanFreq()
- FrequencyBodyAccelerometerJerkSignalsMagnitude-mean()
- FrequencyBodyAccelerometerJerkSignalsMagnitude-std()
- FrequencyBodyAccelerometerJerkSignalsMagnitude-meanFreq()
- FrequencyBodyGyroscopeMagnitude-mean()
- FrequencyBodyGyroscopeMagnitude-std()
- FrequencyBodyGyroscopeMagnitude-meanFreq()
- FrequencyBodyGyroscopeJerkSignalsMagnitude-mean()
- FrequencyBodyGyroscopeJerkSignalsMagnitude-std()
- FrequencyBodyGyroscopeJerkSignalsMagnitude-meanFreq()

=======================================

The data for this  the following files:

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their acvity name: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
