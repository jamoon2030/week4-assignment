
This code book describes the variables, the data, and the transformations performed to clean up the data

## **Data**
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## **Variable Descriptions**
Below, you can find descriptions of the variables defined in the R script (run_analysis.R).

 * x_train : training set read from X_train.txt
 * y_train : training labels read from y_train.txt
 * subj_train : subject IDs for the training set read from subject_train.txt

 * x_test : test set read from X_test.txt
 * y_test : test labels read from y_test.txt
 * subj_test : subject IDs for the test set read from subject_test.txt

 * train : train data that merges x_train, y_train, and subj_train
 * test : test data that merges x_test, y_test, and subj_test
 * allData : a data set that merges train and test

 * features: list of all features.
 * extractedData : data with only the measurements on the mean and standard deviation for each measurement.
 * labels : descriptive activity labels read from activity_labels.txt
 * tidyData : a second, independent tidy data set with the average of each variable for each activity and each subject in extractedData.
 
## **Transformations performed**

1. In Step 1, the training and the test sets are merged to create one data set.
2. In Step 2, only the measurements on the mean and standard deviation for each measurement are extracted.
3. In Step 3, the original activity IDs are replaced with descriptive activity names 
4. In previous steps, the data set is appropriately labeled with descriptive variable names.
5. In Step 5, a second, independent tidy data set with the average of each variable for each activity and each subject is created and saved in tidyData.txt.



