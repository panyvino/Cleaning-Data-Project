# Cleaning-Data-Project
This contains the R scripts, codebook and related information about the Final Project in the Getting and Cleaning Data course. 

The data used in this project come from an experiment conducted at the Università degli Studi in Genova, Italy by Anguita et al. (2012). The sample included 30 volunteers (ages 19-48), each of whom carried out six activities (i.e. walking, walking upstairs, walking downstairs, standing, sitting and lying down) while wearing a Samsung Galaxy S II smartphone on their waist. 
Sensor signals captured by the smartphone (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. Since the gravitational force is assumed to have only low frequency components, a frequency filter with 0.3 Hz cutoff was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
The data were divided into a training dataset (including data from 9 of the participants) and a test dataset (including data from the other 21 participants). 
Each of these two datasets included a 561 vector including time- and frequency-domain variables. 
In addition to these two datasets (X_train and X_test), the data also included:
 - a README.txt file describing the source and general content of the data
 - a "feature.txt" listing all 561 variables
 - a "feature_list.txt" file listing all features measured 
 - an "activity_labels.txt" file including the class labels with the corresponding activity name  

The information included for each record is as follows:
  - triaxial (along the X, Y, and Z axes) acceleration captured by the accelerometer (total acceleration) and the estimated body acceleration
  - triaxial (along the X, Y, and Z axes) angular velocity captured by the gyroscope
  - the 561-feature vector including time- and frequency-domain variables
  - activity labels
  - identifier of the participant (numbers from 1 through 30)


The current project was carried out in the following steps:
   0.	loaded packages needed to perform the project (plyr, dplyr, and data.table)

   1.	merged the two main datasets (train and test) into one dataset
	This was done in the "Step 1", where:
		- the data were read from the website and unzipped
		- column names from the Features data file were added to the two datasets (XTrain and XTest)
		- the activity codes and the participant ID were also added
		- the two datasets were combined, using rbind(), into one dataset called CombinedData, which has 563 variables (561 from the initial datasets, plus "activity" and "participant")	

   2.	extracted only measurements on mean and standard deviation
		- using grep(), identified the variables including mean or std measurements
		- created a smaller dataset called CleanData that includes only mean and std measurements, plus "activity" and "participant" (columns 562-563)
   	
   3.	used descriptive activity names (e.g. "walking") to describe the activities in the dataset
		- changed the "activity" variable into character and assigned the label corresponding to each numeric value (e.g. "walking" replaced 1, "walking upstairs" replaced 2, etc.)

   4.	used descriptive variable names so that the dataset can be more easily understood
 		- replaced some of the abbreviations with full words (e.g. "gyro" with "gyroscope", "acc" with "accelerometer", or "mag" with "magnitude")  

   5.	created a new, tidy dataset including only the average of each variable for each activity and participant 
	calculated the means of the variables in the dataset under #4 above and saved the resulting table "FinalData" in txt format
		- arranged the CleanData dataset in ascending order of participants (1 - 30) and activities and assigned this to TidyData
		- created a data table DT based on TidyData
		- created a final data file FinalDT containing only the means of the 79 measurement variables included in TinyData
		- wrote the final data into a table ("FinalData") in txt format 

References
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge Reyes-Ortiz. Human Activity Recognition on Smartphones Using a Multiclass Hardware-friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge Reyes-Ortiz. Energy Efficient Smartphone-based Activity Recognition Using Fixed-point Arithmetic. Journal of Universal Computer Science. Special Issues in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge Reyes-Ortiz. Human Activity Recognition on Smartphones Using a Multiclass Hardware-friendly Support Vector Machine. 4th International Workshop of Ambient Assisted Living (IWAAL 2012), Vitoria-Gasteiz, Spain. December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp. Energy Efficient Smartphone-based Activity Recognition Using Fixed-point Arithmetic. Journal of Universal Computer Science. Special Issues in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013
Jorge Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smaller Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks. Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium, 24-26 April 2013.
