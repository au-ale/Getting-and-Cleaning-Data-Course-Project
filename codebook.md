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

These features were renamed in the run_analysis to provide a fuller description e.g. t replaced with 'Time', f replaced with 'Freqency', Gryo replaced with 'Gyroscope', Acc replaced with 'Acceleration', Jerk replaced with 'Jerk Signals' and Mag replaced with 'Magnitude'

=======================================

The data for this comes from the following files:

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their acvity name: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

=======================================

Transformations:

- 'activity_labels.txt' was given column headers: ActivityId and Activity Name
- 'train/subject_train.txt' were given column header - SubjectId
- 'train/y_train.txt' were given column header - ActivityId
- 'test/X_test.txt' data given features 
- Train data sets merged together
- Test data sets merged together
- Train and Test data sets merged together
- The mean and standard deviation columns were extracted from data
- Each ActivityId was matched with Activity Name for fuller description
- Columns were renamed (see above)
- Dataset was aggregated to create a new data set that showed the average for every subjectId and Activity





