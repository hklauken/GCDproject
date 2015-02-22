# Getting and Cleaning Data - Course Project
## Data Directory

### x_test.txt, x_train.txt
Each line corresponds to 1 observation set taken at a time of subject activity containing numeric value of 561 features listed in features_info.txt.
Out of 561 features, there are 66 features with mean() or std() in the name and below lists their field positions in the row of 128 numeric fields:

Field 1 - 6:
tBodyAcc-mean()-X          
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z          
tBodyAcc-std()-X           
tBodyAcc-std()-Y           
tBodyAcc-std()-Z           

Field 41 - 46:
tGravityAcc-mean()-X       
tGravityAcc-mean()-Y       
tGravityAcc-mean()-Z       
tGravityAcc-std()-X        
tGravityAcc-std()-Y        
tGravityAcc-std()-Z        

Field 81 - 86:
tBodyAccJerk-mean()-X      
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z      
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y       
tBodyAccJerk-std()-Z

Field 121 - 126:       
tBodyGyro-mean()-X         
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z         
tBodyGyro-std()-X          
tBodyGyro-std()-Y          
tBodyGyro-std()-Z

Field 161 - 166:          
tBodyGyroJerk-mean()-X     
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z     
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y      
tBodyGyroJerk-std()-Z

Field 201 - 202:
tBodyAccMag-mean()         
tBodyAccMag-std()

Field 214 - 215:          
tGravityAccMag-mean()      
tGravityAccMag-std()

Field 227 - 228:       
tBodyAccJerkMag-mean()     
tBodyAccJerkMag-std()      

Field 240 - 241:
tBodyGyroMag-mean()        
tBodyGyroMag-std()         

Field 253 - 254:
tBodyGyroJerkMag-mean()    
tBodyGyroJerkMag-std()     

Field 266 - 271:      
fBodyAcc-mean()-X          
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z          
fBodyAcc-std()-X           
fBodyAcc-std()-Y           
fBodyAcc-std()-Z      

Field 345 - 350:     
fBodyAccJerk-mean()-X      
fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z      
fBodyAccJerk-std()-X       
fBodyAccJerk-std()-Y       
fBodyAccJerk-std()-Z       

Field 424 - 429:
fBodyGyro-mean()-X         
fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z         
fBodyGyro-std()-X          
fBodyGyro-std()-Y          
fBodyGyro-std()-Z          

Field 503 - 504:
fBodyAccMag-mean()         
fBodyAccMag-std()          

Field 516 - 517:
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std()  

Field 529 - 530:
fBodyBodyGyroMag-mean()    
fBodyBodyGyroMag-std()     

Field 542 - 543:
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std() 

### y_test.txt, y_train.txt
Each line corresponds to an activity ID at the time an observation set being taken.  The number of rows correspond to that of data sets (x_test.txt, x_train.txt). 

### subject_test.txt, subject_train.txt
Each line corresponds to a volunteer ID at the time an observation set being taken.  The number of rows correspond to that of data sets (x_test.txt, x_train.txt). 
