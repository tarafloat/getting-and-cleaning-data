# getting-and-cleaning-data
## Course Project
## raw data source
   The data is from the following website. Data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data source for this project is offered by the course: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## run_analysis.R description
Step 1: Download the data set offered by the course and unzip it to user folder under "./data".

Step 2:  Read the raw training data and the raw testing data sets. function: read.table(). 

Step 3:  Merge the training and the test sets together. function: rbind().

Step 4: Extract only the columns containing standard deviation or mean. function: grep().

Step 5 & 6: Uses descriptive activity names to rename the activities in the data set.  

Step 7:  creates a second independent tidy data set with the average of each variable for each activity and each subject. 
