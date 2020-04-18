### This R script does the following:
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# load dplyr package
library(dplyr)

## STEP 1: Merge the training and the test sets to create one data set

# read files from train directory
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subj_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# read files from test directory
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subj_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# combine subject ID, train labels, and train set.
train <- cbind(subj_train,y_train,x_train)

# combine subject ID, test labels, and test set 
test <- cbind(subj_test,y_test,x_test)

# merge train and test datasets
allData <- rbind(train, test) 

# read feature names
features <- read.table("./UCI HAR Dataset/features.txt")

# assign column names for the merged dataset
names(allData) <- c("subjectID","activityLabel",as.character(features[,2]))



## STEP2: Extract only the measurements on the mean and standard deviation for each measurement

# extract only the measurements with mean or standard deviation information
extractedData <- allData[,c(1:2,grep("mean|std", names(allData)))]



## STEP3: Use descriptive activity names to name the activities in the data set

# read activity labels
labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# replace label IDs with activity labels
extractedData$activityLabel <- sapply(allData[,2], function(x) labels[x,2]) 



## STEP4: Appropriately labels the data set with descriptive variable names. 
# Done in the previous steps.



## STEP5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData <- extractedData %>% group_by(subjectID,activityLabel) %>% summarise_all(mean)
write.table(tidyData, "tidyData.txt", row.name=FALSE)