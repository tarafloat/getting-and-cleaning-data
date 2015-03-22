### This is the codebook for "getting-and-cleaning-data"course project. 
# Data Sources
he data is from the following website. Data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data source for this project is offered by the course: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# run_analysis.R cleans up the data  
Step 1: Download the data set offered by the course and unzip it to user folder under "./data".               
Step 2:  Read the raw training data and the raw testing data sets. function: read.table().              
Step 3:  Merge the training and the test sets together. function: rbind().             
Step 4: Extract only the columns containing standard deviation or mean. function: grep().                
Step 5 & 6: Uses descriptive activity names to rename the activities in the data set. function: names().    
Step 7:  creates a second independent tidy data set with the average of each variable for each activity and each subject.

# Variables in the output tidy data set
[1] "activity", type=factor,             
        Each person performed six activities:           
                WALKING          
                WALKING_UPSTAIRS              
                WALKING_DOWNSTAIRS                      
                SITTING             
                STANDING                 
                LAYING                  
 [2] "subject", type=integer,            
         An identifier of the subject who carried out the experiment          
The following variables are numeric type, explantionation is put at end.                  
 [3] "tBodyAcc.mean...X"          
 [4] "tBodyAcc.mean...Y"          
 [5] "tBodyAcc.mean...Z"          
 [6] "tBodyAcc.std...X"           
 [7] "tBodyAcc.std...Y"           
 [8] "tBodyAcc.std...Z"           
 [9] "tGravityAcc.mean...X"       
[10] "tGravityAcc.mean...Y"       
[11] "tGravityAcc.mean...Z"       
[12] "tGravityAcc.std...X"        
[13] "tGravityAcc.std...Y"        
[14] "tGravityAcc.std...Z"        
[15] "tBodyAccJerk.mean...X"      
[16] "tBodyAccJerk.mean...Y"      
[17] "tBodyAccJerk.mean...Z"      
[18] "tBodyAccJerk.std...X"       
[19] "tBodyAccJerk.std...Y"       
[20] "tBodyAccJerk.std...Z"       
[21] "tBodyGyro.mean...X"         
[22] "tBodyGyro.mean...Y"         
[23] "tBodyGyro.mean...Z"         
[24] "tBodyGyro.std...X"          
[25] "tBodyGyro.std...Y"          
[26] "tBodyGyro.std...Z"          
[27] "tBodyGyroJerk.mean...X"     
[28] "tBodyGyroJerk.mean...Y"     
[29] "tBodyGyroJerk.mean...Z"     
[30] "tBodyGyroJerk.std...X"      
[31] "tBodyGyroJerk.std...Y"      
[32] "tBodyGyroJerk.std...Z"      
[33] "tBodyAccMag.mean.."         
[34] "tBodyAccMag.std.."          
[35] "tGravityAccMag.mean.."      
[36] "tGravityAccMag.std.."       
[37] "tBodyAccJerkMag.mean.."     
[38] "tBodyAccJerkMag.std.."      
[39] "tBodyGyroMag.mean.."        
[40] "tBodyGyroMag.std.."         
[41] "tBodyGyroJerkMag.mean.."    
[42] "tBodyGyroJerkMag.std.."     
[43] "fBodyAcc.mean...X"          
[44] "fBodyAcc.mean...Y"          
[45] "fBodyAcc.mean...Z"          
[46] "fBodyAcc.std...X"           
[47] "fBodyAcc.std...Y"           
[48] "fBodyAcc.std...Z"           
[49] "fBodyAccJerk.mean...X"      
[50] "fBodyAccJerk.mean...Y"      
[51] "fBodyAccJerk.mean...Z"      
[52] "fBodyAccJerk.std...X"       
[53] "fBodyAccJerk.std...Y"       
[54] "fBodyAccJerk.std...Z"       
[55] "fBodyGyro.mean...X"         
[56] "fBodyGyro.mean...Y"         
[57] "fBodyGyro.mean...Z"         
[58] "fBodyGyro.std...X"          
[59] "fBodyGyro.std...Y"          
[60] "fBodyGyro.std...Z"          
[61] "fBodyAccMag.mean.."         
[62] "fBodyAccMag.std.."          
[63] "fBodyBodyAccJerkMag.mean.." 
[64] "fBodyBodyAccJerkMag.std.."  
[65] "fBodyBodyGyroMag.mean.."    
[66] "fBodyBodyGyroMag.std.."     
[67] "fBodyBodyGyroJerkMag.mean.."
[68] "fBodyBodyGyroJerkMag.std.." 

---------
The features selected for this database come from the accelerometer and 
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
