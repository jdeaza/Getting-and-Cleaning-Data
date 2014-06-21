Variables description and the data, and transformations for create tidy data
============================================================================

Files description into dataset
==============================

i. 'README.txt'

ii. 'features_info.txt': Shows information about the variables used on the feature vector.

iii. 'features.txt': List of all features.

iv. 'activity_labels.txt': Links the class labels with their activity name.

v. 'train/X_train.txt': Training set.

vi. 'train/y_train.txt': Training labels.

vii. 'test/X_test.txt': Test set.

viii. 'test/y_test.txt': Test labels.

ix. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


Variables despription
=====================

i. tBodyAcc-XYZ

ii. tGravityAcc-XYZ

iii. tBodyAccJerk-XYZ

iv. tBodyGyro-XYZ

v. tBodyGyroJerk-XYZ

vi. tBodyAccMag

vii. tGravityAccMag

viii. tBodyAccJerkMag

ix. tBodyGyroMag

x. tBodyGyroJerkMag

xi. fBodyAcc-XYZ

xii. fBodyAccJerk-XYZ

xiii. fBodyGyro-XYZ

xiv. fBodyAccMag

xv. fBodyAccJerkMag

xvi. fBodyGyroMag

xvii. fBodyGyroJerkMag

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
