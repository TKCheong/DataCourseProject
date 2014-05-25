##Codebook For The UCI Data Hardset 

Study Design
==========================================================================
The data is collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.

A full description is available at the site where the data was obtained at the below links:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These are the variables used for the tidy dataset in the run_analysis.R script for the averages generated using the subject-activitylabel combination.

============================================================================

##Variable Name    		##Definition/Explaination of Variable
  <div class="markdown-body">
  <pre style='font-family:;'>
subject 			Group of volunteers numbered from 1-30 participating in the experiment
activitylabel			List of six activities performed:
				*WALKING
				*WALKING UPSTAIRS
				*WALKING DOWNSTAIRS
				*SITTING
				*STANDING
				*LAYING
t				Time domain 
bodyacc				Body acceleration using accelerator
tbodyaccmeanx			Mean of body acceleration count in X-axial direction of phone
tbodyaccmeany			Mean of body acceleration count in Y-axial direction of phone
tbodyaccmeanz			Mean of body acceleration count in Z-axial direction of phone
tbodyaccstdx			Standard deviation of body acceleration in X-axial direction of phone
tbodyaccstdy			Standard deviation of body acceleration in Y-axial direction of phone
tbodyaccstdz			Standard deviation of body acceleration in Z-axial direction of phone
gravityacc			Gravitational acceleration using accelerator
tgravityaccmeanx		Mean of body gravitational acceleration count in X-axial direction of phone
tgravityaccmeany		Mean of body gravitational acceleration count in Y-axial direction of phone
tgravityaccmeanz		Mean of body gravitational acceleration count in Z-axial direction of phone
tgravityaccstdx			Standard deviation of body gravitational acceleration towards X-axial direction of phone
tgravityaccstdy			Standard deviation of body gravitational acceleration towards Y-axial direction of phone
tgravityaccstdz			Standard deviation of body gravitational acceleration towards Z-axial direction of phone
tbodyaccjerkmeanx		Mean of body acceleration count to obtain jerk signals in X-axial direction of phone
tbodyaccjerkmeany		Mean of body acceleration count to obtain jerk signals in Y-axial direction of phone
tbodyaccjerkmeanz		Mean of body acceleration count to obtain jerk signals in Z-axial direction of phone
tbodyaccjerkstdx		Standard deviation of body acceleration count to obtain jerk signals in X-axial direction of phone
tbodyaccjerkstdy		Standard deviation of body acceleration count to obtain jerk signals in Y-axial direction of phone
tbodyaccjerkstdz		Standard deviation of body acceleration count to obtain jerk signals in Z-axial direction of phone
bodygyro			Body acceleration using gyroscope
tbodygyromeanx			Mean of body acceleration count in X-axial direction of phone
tbodygyromeany			Mean of body acceleration count in Y-axial direction of phone
tbodygyromeanz			Mean of body acceleration count in Z-axial direction of phone
tbodygyrostdx			Standard deviation of body acceleration in X-axial direction of phone
tbodygyrostdy			Standard deviation of body acceleration in Y-axial direction of phone
tbodygyrostdz			Standard deviation of body acceleration in Z-axial direction of phone
tbodygyrojerkmeanx		Mean of body acceleration count to obtain jerk signals in X-axial direction of phone
tbodygyrojerkmeany		Mean of body acceleration count to obtain jerk signals in Y-axial direction of phone
tbodygyrojerkmeanz		Mean of body acceleration count to obtain jerk signals in Z-axial direction of phone
tbodygyrojerkstdx		Standard deviation of body acceleration count to obtain jerk signals in X-axial direction of phone
tbodygyrojerkstdy		Standard deviation of body acceleration count to obtain jerk signals in Y-axial direction of phone
tbodygyrojerkstdz		Standard deviation of body acceleration count to obtain jerk signals in Z-axial direction of phone
tbodyaccmagmean			Magnitude of mean of body acceleration count in time domain
tbodyaccmagstd			Magnitude of standard deviation of body acceleration count in time domain
tgravityaccmagmean		Magnitude of mean of body gravitational  acceleration count in time domain
tgravityaccmagstd		Magnitude of standard deviation of body gravitational  acceleration count in time domain
tbodyaccjerkmagmean		Magnitude of mean of body acceleration count to obtain jerk signals in time domain
tbodyaccjerkmagstd		Magnitude of standard deviation of body acceleration count to obtain jerk signals in time domain
tbodygyromagmean		Magnitude of mean of body acceleration count using gyroscope in time domain
tbodygyromagstd			Magnitude of standard deviation of body acceleration count using gyroscope in time domain
tbodygyrojerkmagmean		Magnitude of mean of body acceleration count using gyroscope to obtain jerk signals in time domain
tbodygyrojerkmagstd		Magnitude of standard deviation of body acceleration count using gyroscope to obtain jerk signals in time domain
f				Frequency domain
fbodyaccmeanx			Mean of body acceleration count in X-axial direction of phone
fbodyaccmeany			Mean of body acceleration count in Y-axial direction of phone
fbodyaccmeanz			Mean of body acceleration count in Z-axial direction of phone
fbodyaccstdx			Standard deviation of body acceleration in X-axial direction of phone
fbodyaccstdy			Standard deviation of body acceleration in Y-axial direction of phone
fbodyaccstdz			Standard deviation of body acceleration in Z-axial direction of phone
fbodyaccmeanfreqx		Mean of weighted average of the frequency components in body acceleration count in X-axial direction of phone
fbodyaccmeanfreqy		Mean of weighted average of the frequency components in body acceleration count in Y-axial direction of phone
fbodyaccmeanfreqz		Mean of weighted average of the frequency components in body acceleration count in Z-axial direction of phone
fbodyaccjerkmeanx		Mean of body acceleration count to obtain jerk signals in X-axial direction of phone
fbodyaccjerkmeany		Mean of body acceleration count to obtain jerk signals in Y-axial direction of phone
fbodyaccjerkmeanz		Mean of body acceleration count to obtain jerk signals in Z-axial direction of phone
fbodyaccjerkstdx		Standard deviation of body acceleration count to obtain jerk signals in X-axial direction of phone
fbodyaccjerkstdy		Standard deviation of body acceleration count to obtain jerk signals in Y-axial direction of phone
fbodyaccjerkstdz		Standard deviation of body acceleration count to obtain jerk signals in Z-axial direction of phone
fbodyaccjerkmeanfreqx		Mean of weighted average of the frequency components in body acceleration to obtain jerk signals count in X-axial direction of phone
fbodyaccjerkmeanfreqy		Mean of weighted average of the frequency components in body acceleration to obtain jerk signals count in Y-axial direction of phone
fbodyaccjerkmeanfreqz		Mean of weighted average of the frequency components in body acceleration to obtain jerk signals count in Z-axial direction of phone
fbodygyromeanx			Mean of body acceleration count in X-axial direction of phone
fbodygyromeany			Mean of body acceleration count in Y-axial direction of phone
fbodygyromeanz			Mean of body acceleration count in Z-axial direction of phone
fbodygyrostdx			Standard deviation of body acceleration in X-axial direction of phone
fbodygyrostdy			Standard deviation of body acceleration in Y-axial direction of phone
fbodygyrostdz			Standard deviation of body acceleration in Z-axial direction of phone
fbodygyromeanfreqx		Mean of weighted average of the frequency components in body gravitation to obtain jerk signals count in X-axial direction of phone
fbodygyromeanfreqy		Mean of weighted average of the frequency components in body gravitation to obtain jerk signals count in Y-axial direction of phone
fbodygyromeanfreqz		Mean of weighted average of the frequency components in body gravitation to obtain jerk signals count in Z-axial direction of phone
fbodyaccmagmean			Magnitude of mean of body acceleration count in frequency domain
fbodyaccmagstd			Magnitude of standard deviation of body acceleration count in frequency domain
fbodyaccmagmeanfreq		Magnitude of weighted average mean of body  acceleration count in frequency domain
fbodybodyaccjerkmagmean		Magnitude of mean of body to body acceleration count to obtain jerk signals in frequency domain
fbodybodyaccjerkmagstd		Magnitude of standard deviation of body to body acceleration count to obtain jerk signals in frequency domain
fbodybodyaccjerkmagmeanfreq	Magnitude of weighted average of mean of body to body acceleration count to obtain jerk signals in frequency domain
fbodybodygyromagmean		Magnitude of mean of body to body acceleration count using gyroscope to obtain jerk signals in frequency domain
fbodybodygyromagstd		Magnitude of standard deviation of body to body acceleration count using gyroscope to obtain jerk signals in frequency domain
fbodybodygyromagmeanfreq	Magnitude of weighted average of mean of body to body acceleration count using gyroscope in frequency domain
fbodybodygyrojerkmagmean	Magnitude of mean of body to body acceleration count using gyroscope to obtain jerk signals in frequency domain
fbodybodygyrojerkmagstd		Magnitude of standard deviation of body to body acceleration count using gyroscope to obtain jerk signals in frequency domain
fbodybodygyrojerkmagmeanfreq	Magnitude of weighted average of mean of body to body acceleration count using gyroscope to obtain jerk signals in frequency domain
angle.tBodyAccMean.gravity	Angle between the mean of body acceleration to gravity
angle.tBodyAccJerkMean.gravityMean	Angle between the mean of body acceleration to obtain jerk signals to gravity mean
angle.tBodyGyroMean.gravityMean		Angle between the mean of body acceleration using gryoscope to gravity mean
angle.tBodyGyroJerkMean.gravityMean	Angle between the mean of body acceleration using gryoscope to obtain jerk signals to gravity mean
angle.X.gravityMean		Angle between the axial signal in the X direction to gravity mean
angle.Y.gravityMean		Angle between the axial signal in the Y direction to gravity mean
angle.Z.gravityMean		Angle between the axial signal in the Z direction to gravity mean
activity			Numerical representation of the 6 activities

</pre>
</div>
* These 561 vectors in the original files were then reduced to 86 vectors, extracting only the mean and standard deviation measurements from the vectors. 

* All of the mean and standard deviations variables were chosen in order to facilitate a better calculation of the average of all these measurements. This will provide us with a clearer reflection of the data used in relation to test subjects.

* The activity column (numbered 1-30) was maintained in the tidy data for easier comparisons.

* The plyr and data.table packages were used in the process during the merging of data and also calculating the averages for each measurements in the tidy data.

* The special characters (parentheses, hyphens and etc) were removed using the gsub() as per the requirements of R.

* The characters were all changed to lower case using the tolower() in line with the requirements of R.

* The dot in the variables is used to indicate a separate measurement especially for the angle variables.

* There are further explainations in the run_analysis.R script for steps taken to reach the final tidy dataset.
