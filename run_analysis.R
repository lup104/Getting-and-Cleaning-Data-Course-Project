library(reshape2)
#check to see if the data directory exists or not
if (!file.exists("data")) {
  dir.create("data")
}
#set working directory
originalDir=getwd()
setwd("./data")
##Download zip file
fileUrl <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
destfile <-'dataset.zip'
download.file(fileUrl, destfile)
unzip(destfile)
##read feature names and activity labels
features<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
##read training data 
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/Y_train.txt")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
##read test data
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("UCI HAR Dataset/test/Y_test.txt")
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
##1. Merges the training and the test sets to create one data set
x<-rbind(xTrain, xTest)
y<-rbind(yTrain, yTest)
subject<-rbind(subjectTrain, subjectTest)
colnames(x)<-features$V2
colnames(y)<-"activity"
colnames(subject)<-"subject"
ds<-cbind(x,y, subject)
##2. Extracts only the measurements on the mean and standard deviation for each measurement
selected<-grep(".*mean.*|.*std.*", features$V2,ignore.case=TRUE)
selected<-c(selected, 562, 563)
ds_selected<-ds[selected]
##3. Uses descriptive activity names to name the activities in the data set
ds_selected$activity<- factor(ds_selected$activity ,activityLabels$V1,activityLabels$V2)
##4. Appropriately labels the data set with descriptive variable names.
ds_selected$subject<-factor(ds_selected$subject)
names(ds_selected)<-gsub('-mean','Mean',names(ds_selected)) 
names(ds_selected)<-gsub('-std','Std',names(ds_selected))
names(ds_selected)<-gsub('^t','time', names(ds_selected))
names(ds_selected)<-gsub('^f','freq', names(ds_selected))
names(ds_selected)<-gsub('BodyBody','Body',names(ds_selected))
names(ds_selected)<-gsub('[()-]','', names(ds_selected))
##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
ds_Melt<-melt(ds_selected, id=c("activity","subject")) 
ds_Tidy<-dcast(ds_Melt, activity + subject ~ variable,fun.aggregate=mean)
##output to the same directory where the "run_analysis.R" can be found
setwd(originalDir)
write.table(ds_Tidy, row.names=FALSE, file="tidy.txt")
