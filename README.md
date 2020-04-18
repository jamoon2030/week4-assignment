---
title: "README"
output: html_document
---

## **Data**

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## **Script**

The submitted R script ("run_analysis.R") does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run the script, make sure the following:

1. Your working directory has "UCI HAR Dataset" where train and test datasets are stored. 
2. Package "dplyr" is installed

The output of the script is "tidyData.txt" that shows the average of each variable for each activity and each subject.