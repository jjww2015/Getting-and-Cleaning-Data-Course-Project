# Getting-and-Cleaning-Data-Course-Project
The goal is to prepare tidy data that can be used for later analysis. The original data is from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Files submited 
* README.md - A Readme file describing the repo
* CodeBook.md - Describes all the variables and summaries calculated, along with units, and any other relevant information.
* run_analysis.R - R script taking raw data and output a tidy data
* newtidyData.txt - An independent tidy data set with the average of each variable for each activity and each subject.

# The run_analysis.R performs:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# The R script step-by-step explanation
1. The values from training folder and test folder are merged into variable "data". The subject and the activity ID from two folders are merged to variable "subject", and "activity", respectively. 
2. All measurement are imported as data.frame and regex is used to obtain measurment with "mean()" or "std()" in the name. The entire data set "allData" is subset to "mean_std_data" accordingly. 
3. Non-alphabetic symbols are removed from the measurement name and used to describe the variables. 
4. Create a new tidy data by finding the mean for each combination of subject and label. The R aggregate() function is used. 