Code Book 

Section I: Input 
Original source of the data: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Detail description about the original data collected:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Information about the Original Data Set:
The experiments have been carried out with a group of 30 volunteers.   Each person performed six activities (see Activity Label table below) wearing a smartphone on the waist.  The dataset has been randomly partitioned into two sets, for generating the training data and  the test data. 

Section II: Transformations
“Analysis_run. R” is developed to performed the following data transformation requirements:
	- Merges the training and the test sets to create one data set.
	- Extracts only the measurements on the mean and standard deviation for each measurement.
	- Uses descriptive activity names to name the activities in the data set
	- Appropriately labels the data set with descriptive variable names.
	- The following rules were applied during the transformation:
        	- Removed “()”, “,”,”-“ from variable names.
		- Applied case consistency with “Mean” and “Std”. 
		- Modified  typo of “bodybody” to “body” only.
		- Replaced f as freq, t as time.

	- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Section III:  Output 
Output  file – Tidy.txt

Identifiers for the Tidy.txt:
	- Activity – Physical activity. 
	- Subject – person involved in the experiment.

Activity Labels:
	- 1.	WALKING
	- 2.	WALKING_UPSTAIRS
	- 3.	WALKING_DOWNSTAIRS
	- 4.	SITTING
	- 5.	STANDING
	- 6.	LAYING

Variable Names:  
•	timeBodyAccMeanX               
•	timeBodyAccMeanY                
•	timeBodyAccMeanZ                 
•	timeBodyAccStdX                 
•	timeBodyAccStdY 
•	timeBodyAccStdZ               
•	timeGravityAccMeanX 
•	timeGravityAccMeanY             
•	timeGravityAccMeanZ 
•	timeGravityAccStdX              
•	timeGravityAccStdY               
•	timeGravityAccStdZ              
•	timeBodyAccJerkMeanX             
•	timeBodyAccJerkMeanY            
•	timeBodyAccJerkMeanZ             
•	timeBodyAccJerkStdX             
•	timeBodyAccJerkStdY              
•	timeBodyAccJerkStdZ             
•	timeBodyGyroMeanX                
•	timeBodyGyroMeanY               
•	timeBodyGyroMeanZ                
•	timeBodyGyroStdX                
•	timeBodyGyroStdY                 
•	timeBodyGyroStdZ                
•	timeBodyGyroJerkMeanX            
•	timeBodyGyroJerkMeanY           
•	timeBodyGyroJerkMeanZ            
•	timeBodyGyroJerkStdX            
•	timeBodyGyroJerkStdY             
•	timeBodyGyroJerkStdZ            
•	timeBodyAccMagMean                
•	timeBodyAccMagStd                
•	timeGravityAccMagMean             
•	timeGravityAccMagStd             
•	timeBodyAccJerkMagMean            
•	timeBodyAccJerkMagStd            
•	timeBodyGyroMagMean               
•	timeBodyGyroMagStd               
•	timeBodyGyroJerkMagMean           
•	timeBodyGyroJerkMagStd           
•	freqBodyAccMeanX                 
•	freqBodyAccMeanY                
•	freqBodyAccMeanZ                 
•	freqBodyAccStdX                 
•	freqBodyAccStdY                  
•	freqBodyAccStdZ                 
•	freqBodyAccMeanFreqX             
•	freqBodyAccMeanFreqY            
•	freqBodyAccMeanFreqZ             
•	freqBodyAccJerkMeanX            
•	freqBodyAccJerkMeanY             
•	freqBodyAccJerkMeanZ            
•	freqBodyAccJerkStdX              
•	freqBodyAccJerkStdY             
•	freqBodyAccJerkStdZ              
•	freqBodyAccJerkMeanFreqX        
•	freqBodyAccJerkMeanFreqY         
•	freqBodyAccJerkMeanFreqZ        
•	freqBodyGyroMeanX                
•	freqBodyGyroMeanY               
•	freqBodyGyroMeanZ                
•	freqBodyGyroStdX                
•	freqBodyGyroStdY                 
•	freqBodyGyroStdZ                
•	freqBodyGyroMeanFreqX            
•	freqBodyGyroMeanFreqY           
•	freqBodyGyroMeanFreqZ            
•	freqBodyAccMagMean               
•	freqBodyAccMagStd                 
•	freqBodyAccMagMeanFreq           
•	freqBodyAccJerkMagMean            
•	freqBodyAccJerkMagStd            
•	freqBodyAccJerkMagMeanFreq        
•	freqBodyGyroMagMean              
•	freqBodyGyroMagStd                
•	freqBodyGyroMagMeanFreq          
•	freqBodyGyroJerkMagMean           
•	freqBodyGyroJerkMagStd           
•	freqBodyGyroJerkMagMeanFreq       
•	angletBodyAccMeangravity         
•	angletBodyAccJerkMeangravityMean  
•	angletBodyGyroMeangravityMean    
•	angletBodyGyroJerkMeangravityMean 
•	angleXgravityMean                
•	angleYgravityMean                 
•	angleZgravityMean 

