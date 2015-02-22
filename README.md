# Getting and Cleaning Data - Course Project
## How the script works

### Assumption
The working directory contains the files and folders extracted from the data set zip file so that the "test" and "train" folders contain testing and training data sets respectively.

### Step 1. Merges the training and the test sets to create one data set.
- Load testing and training data files (x for data, y for labels, and subject for volunteers) into data frames
- Merge the corresponding pairs of data frames using rbind() into new data frames

### step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
- Load feature list into data frame
- Extract features with "mean()" or "std()" in the name into new data frame
- Use the "subsetted" features to extract all "mean()" and "std()" variables from the merged data frame to new data frame

### Step 3. Uses descriptive activity names to name the activities in the data set
- Load activity labels into data frame
- Merge it with the merged data frame from step 1  

### Step 4. Appropriately labels the data set with descriptive variable names. 
- Concaternate "activity" with the name of "subsetted" features and set as the column names of the merged data frame from step 1 & 3

### Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Set "subject" as the column name of the subject data frame
- Merge the subject data frame with the tidy data set from step 4 into temporary data frame
- Aggregate the temporary data frame by subject and activity using "mean" (or average) function 