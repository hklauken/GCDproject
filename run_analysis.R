# R script called run_analysis.R that does the following. 

## 1.Merges the training and the test sets to create one data set.
x_test <- read.table("test/x_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
x_train <- read.table("train/x_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
x <- rbind(x_test,x_train)
y <- rbind(y_test,y_train)
subject <- rbind(subject_test,subject_train)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt")
featuresEx <- features[grepl("-mean[:(:][:):]",features$V2) | grepl("-std[:(:][:):]",features$V2) ,]
x1 <- x[,featuresEx[,1]] 

## 3.Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt")
y1 <- merge(y,activity_labels)
tidySet <- cbind(y1[,2],x1)

## 4.Appropriately labels the data set with descriptive variable names. 
colnames(tidySet) <- c("activity",as.character(featuresEx[,2]))

## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
colnames(subject) <- "subject"
temp <- cbind(subject,tidySet)
tidySet2 <- aggregate(temp[,c(-1,-2)],by=list(subject=temp$subject,activity=temp$activity),FUN="mean")

