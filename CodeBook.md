#Code book for the variables in Human Activity Recognition Using Smartphones Data Set
Variables

Subject				1..2
	Subject ID
					1..30 . Unique ID assigned to each participant
Activity      		6..18
	Activity label
		        "WALKING"
		        "WALKING_UPSTAIRS"
		        "WALKING_DOWNSTAIRS"
		        "SITTING"
		        "STANDING"
		        "LAYING"         
tBodyAccmeanX      12
	See details below
tBodyAccmeanY      12
	See details below
tBodyAccmeanZ      12
	See details below      
tBodyAccstdX      12
	See details below
tBodyAccstdY      12
	See details below
tBodyAccstdZ      12
	See details below 
tGravityAccmeanX      12
	See details below       
tGravityAccmeanY      12
	See details below       
tGravityAccmeanZ      12
	See details below       
tGravityAccstdX      12
	See details below         
tGravityAccstdY      12
	See details below        
tGravityAccstdZ      12
	See details below        
tBodyAccJerkmeanX      12
	See details below      
tBodyAccJerkmeanY      12
	See details below       
tBodyAccJerkmeanZ      12
	See details below      
tBodyAccJerkstdX      12
	See details below       
tBodyAccJerkstdY      12
	See details below       
tBodyAccJerkstdZ      12
	See details below        
tBodyGyromeanX      12
	See details below         
tBodyGyromeanY      12
	See details below         
tBodyGyromeanZ      12
	See details below         
tBodyGyrostdX      12
	See details below
tBodyGyrostdY      12
	See details below          
tBodyGyrostdZ      12
	See details below          
tBodyGyroJerkmeanX      12
	See details below     
tBodyGyroJerkmeanY      12
	See details below      
tBodyGyroJerkmeanZ      12
	See details below     
tBodyGyroJerkstdX      12
	See details below      
tBodyGyroJerkstdY      12
	See details below      
tBodyGyroJerkstdZ      12
	See details below       
tBodyAccMagmean      12
	See details below        
tBodyAccMagstd      12
	See details below         
tGravityAccMagmean      12
	See details below     
tGravityAccMagstd      12
	See details below       
tBodyAccJerkMagmean      12
	See details below    
tBodyAccJerkMagstd      12
	See details below     
tBodyGyroMagmean      12
	See details below       
tBodyGyroMagstd      12
	See details below         
tBodyGyroJerkMagmean      12
	See details below   
tBodyGyroJerkMagstd      12
	See details below    
fBodyAccmeanX      12
	See details below          
fBodyAccmeanY      12
	See details below
fBodyAccmeanZ      12
	See details below          
fBodyAccstdX      12
	See details below
fBodyAccstdY      12
	See details below
fBodyAccstdZ       12
	See details below
fBodyAccJerkmeanX       12
	See details below     
fBodyAccJerkmeanY       12
	See details below     
fBodyAccJerkmeanZ        12
	See details below    
fBodyAccJerkstdX        12
	See details below      
fBodyAccJerkstdY       12
	See details below      
fBodyAccJerkstdZ       12
	See details below      
fBodyGyromeanX         12
	See details below      
fBodyGyromeanY       12
	See details below         
fBodyGyromeanZ       12
	See details below        
fBodyGyrostdX      12
	See details below          
fBodyGyrostdY      12
	See details below          
fBodyGyrostdZ      12
	See details below
fBodyAccMagmean      12
	See details below        
fBodyAccMagstd      12
	See details below         
fBodyBodyAccJerkMagmean      12
	See details below 
fBodyBodyAccJerkMagstd      12
	See details below  
fBodyBodyGyroMagmean      12
	See details below   
fBodyBodyGyroMagstd       12
	See details below   
fBodyBodyGyroJerkMagmean      12
	See details below
fBodyBodyGyroJerkMagstd       12
	See details below

#Details
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

mean(): Mean value
std(): Standard deviation

