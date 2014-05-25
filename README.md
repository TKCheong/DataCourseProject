==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 2.0

Amended in line with the Version 1 Readme document from the Cousera Getting and Cleaning data course project

==================================================================
Source:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit� degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

======================================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables.
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


How the script works:
=====================
* Imported the X-train, X-test, y-test, y-train and subject-test and train text files into using the read.table()in RStudio. 
* Created a dataframe for the imported xtest and xtrain files and they were then bound together using the rbind() which was represented by the dataset variable.
* Loaded the features.txt file into the system and all the special characters (parentheses, hyphens and etc) were removed using the gsub(). The characters were all changed to lower case using the tolower().
* Created another dataframe for the subject and y test and train files and then created column names for the subject test and train files. The files were then all clipped together using the cbind().
* Imported the activity.txt file and created column names for it.
* Merged the files labelled as finaldata and activity using the plyr package. This was joined by the "activity" column.
* Extracted the mean and standard deviation columns from the mergeddata by subsetting.
* Calculated the averages for each measurement using the lapply method from the data.table package. 
* The tidy data was then created and this can be viewed in the RStudio. It has 180 observations and 89 variables.


* Further explainations of the variables used in the dataset are available in the Codebook.

* The 561-vectors were reduced to only 89 variables in the tidy dataset (including activity and subject variables); extracting only the mean and standard deviation measurements from the vectors. All of the mean and standard deviations variables were chosen in order to facilitate a better calculation of the average of all these measurements. This will provide us with a clearer reflection of the data used in relation to test subjects.


Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- A codebook is included to explain the variables chosen and its definitions, and also the transformations or work done in order to produce the tidy data. It is available in the file Codebook.md in Github.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
