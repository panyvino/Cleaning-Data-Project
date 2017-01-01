
##Step 4 - Create descriptive variable names
names(CleanData)
names(CleanData) <- gsub("Acc", "Accelerometer", names(CleanData))
names(CleanData) <- gsub("Mag", "Magnitude", names(CleanData))
names(CleanData) <- gsub("Gyro", "Gyroscope", names(CleanData))
names(CleanData) <- gsub("^t", "time", names(CleanData))
names(CleanData) <- gsub("^f", "frequency", names(CleanData))

