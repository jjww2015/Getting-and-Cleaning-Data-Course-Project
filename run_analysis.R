##This R script performs the following tasks:
##  1. Merges the training and the test sets to create one data set.
##  2. Extracts only the measurements on the mean and standard deviation for 
##     each measurement.
##  3. Uses descriptive activity names to name the activities in the data set
##  4. Appropriately labels the data set with descriptive variable names.
##  5. From the data set in step 4, creates a second, independent tidy data set 
##     with the average of each variable for each activity and each subject.

# This script should be in the same folder as the data set folder "UCI HAR Dataset". 
# Two subfolders are under this main folder: "train" and "test"
# txt files should be found in each subfolders. 
# See step 1 for the details of the directory structure. 

# Step 1: Merges the training and the test sets to create one data set.
data <- rbind(read.table("UCI HAR Dataset/train/X_train.txt"), 
              read.table("UCI HAR Dataset/test/X_test.txt"))
subject <- rbind(read.table("UCI HAR Dataset/train/subject_train.txt",col.names = "Subject"),
                 read.table("UCI HAR Dataset/test/subject_test.txt",col.names = "Subject"))
activity <- rbind(read.table("UCI HAR Dataset/train/y_train.txt",col.names = "Activity"),                              
                  read.table("UCI HAR Dataset/test/y_test.txt",col.names = "Activity"))

allData <- cbind(subject, activity, data)

# Step 2: Extracts only the measurements on the mean and standard deviation
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
# select the measurements on the mean and std
selected <- grepl("mean\\(\\)|std\\(\\)", features$V2)
mean_std_data <- allData[, c(1,2, features[selected, ]$V1+2)]

# Step 3: Uses descriptive activity names to name the activities in the data set
label <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)$V2
mean_std_data$Activity <- label[mean_std_data$Activity]

# Step 4: Appropriately labels the data set with descriptive variable names.
newlabels <- c("Subject", "Activity", features[selected, ]$V2)
# remove non-alphabetic character
newlabels <- gsub("[^[:alpha:]]", "", newlabels)
colnames(mean_std_data) <- newlabels
# Step 5: Creat a new data with the average of each variable for each activity and each subject.
newdata <- aggregate(mean_std_data[, 3:ncol(mean_std_data)],
                       by=list(subject = mean_std_data$Subject, 
                               activity = mean_std_data$Activity),
                       mean)

## step nothing
# write the data for course upload
write.table(format(newdata, scientific=TRUE), "newtidyData.txt", row.names=FALSE)
