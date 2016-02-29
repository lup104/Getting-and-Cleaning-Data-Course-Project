The input data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is about the experiments have been carried out with a group of 30 volunteer. Each person performed six activities wearing a smartphone. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz are recorded. The obtained dataset has been partitioned into two sets, the training data and the test data.

For each record in the dataset, the following info are collected An identifier of the subject who carried out the experiment. The activity label. Triaxial Angular velocity from the gyroscope. A 561-feature vector with time and frequency domain variables.

The purpose of the project is to demonstrate how to collect, work with, and clean a data set. 
The R script “run_analysis.R” is created to perform the following tasks: 
  Merges the training and the test sets to create one data set. 
  Extracts only the measurements on the mean and standard deviation for each measurement. 
  Uses descriptive activity names to name the activities in the data set.
  Appropriately labels the data set with descriptive variable names. 
  From the data set in the last step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the script can be found under the file "tidy.txt" that can be used for later analysis.

A code book is also included to provide more relevant details.
