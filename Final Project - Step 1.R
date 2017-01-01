##loading packages that will be needed
library(plyr)
library(data.table)
library(dplyr) 

##create a temporary unzipped file

data <- tempfile() 
download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", data)
unzip(data, list = TRUE) 
YTest <- read.table(unzip(data, "UCI HAR Dataset/test/y_test.txt"))
XTest <- read.table(unzip(data, "UCI HAR Dataset/test/X_test.txt"))
SubjectTest <- read.table(unzip(data, "UCI HAR Dataset/test/subject_test.txt"))
SubjectTrain <- read.table(unzip(data, "UCI HAR Dataset/train/subject_train.txt"))
YTrain <- read.table(unzip(data, "UCI HAR Dataset/train/y_train.txt"))
XTrain <- read.table(unzip(data, "UCI HAR Dataset/train/X_train.txt"))
Features <- read.table(unzip(data, "UCI HAR Dataset/features.txt"))

#remove the temporary file data
unlink(data) 

colnames(XTrain) <- t(Features[2]) #column names
colnames(XTest) <- t(Features[2]) #column names

activity <- YTrain[, 1]
participant <- SubjectTrain[, 1]
XTrain <- cbind(XTrain, activity, participant)
activity <- YTest[, 1]
participant <- SubjectTest[, 1]
XTest <- cbind(XTest, activity, participant)


## Merge Training set and Test set into one data set
CombinedData <- rbind(XTrain, XTest)

