### step 1: Download and upzip the file to the file folder "./data".This is done by hand
###         instead of in Rstadio because it is faster.


### step2:  Read the raw training data and the raw testing data sets 

setwd("./data");
test <- read.table("./activity/UCI HAR Dataset/test/X_test.txt")
testLabel <- read.table("./activity/UCI HAR Dataset/test/Y_test.txt")
testSubject <- read.table("./activity/UCI HAR Dataset/test/subject_test.txt")

training <- read.table("./activity/UCI HAR Dataset/train/X_train.txt")
trainingLabel <- read.table("./activity/UCI HAR Dataset/train/Y_train.txt")
trainingSubject <- read.table("./activity/UCI HAR Dataset/train/subject_train.txt")

### step 3 merge the training and the test sets together 
DF <- rbind(test, training)

### step 4 extract only the columns containing standard deviation or mean
criteria <- grep("mean|std", names(DF))

### step 5 Uses descriptive activity names to name the activities in the data set
### step 6 Appropriately labels the data set with descriptive variable names. 

features <- read.table("./activity/UCI HAR Dataset/features.txt")
# (clean up the the labels by removing excessive brackets and underscores)
    features <- gsub("\\()", "", features$V2) 


activityLabel <- read.table("./activity/UCI HAR Dataset/activity_labels.txt")
activityLabel <- activityLabel$V2
activityLabel <- tolower(activityLabel)
activityLabel <- sub("_", " ", activityLabel)
 
names(test) <- features; names(training) <- features 
names(testLabel) <- "activity"; names(trainingLabel) <- "activity"
names(testSubject) <- "participant"; names(trainingSubject) <- "participant"


### step 7 From the data set in step 4, creates a second, 
###  independent tidy data set with the average of each variable for each activity and each subject.


# (create a new, separate DF that holds only identifiers initially)
DF_test <- data.frame(testLabel, testSubject)
DF_training <- data.frame(trainingLabel, trainingSubject)
DF_new <- rbind(DF_test, DF_training)

# (for each in criteria: add the DF criteria column to a new DF)
  for (each in criteria){
    DF_new <- cbind(DF_new, DF[each])
     }

# (replace the activity numbers with their respective labels)
  DF_new$activity <- mapvalues(DF_new$activity, 
                             from = levels(factor(DF_new$activity)), 
                             to = activityLabel)

# create a new tidy DF with the average of each variable for each activity & subject
DF_tidy <- aggregate(DF_new, list(DF_new$participant, DF_new$activity), mean)

# clean up the columns and column names from a result of aggregating
DF_tidy$participant <- NULL; DF_tidy$activity <- NULL
names(DF_tidy)[1] <- "participant"; names(DF_tidy)[2] <- "activity"

# write out the dataframe into a file
write.table(file = "activitydata.txt", x = DF_tidy, row.names = FALSE)
