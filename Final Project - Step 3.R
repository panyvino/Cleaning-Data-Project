
##Step 3 - Use descriptive activity names
CleanData$activity <- as.character(CleanData$activity)
CleanData$activity[CleanData$activity == 1] <- "Walking"
CleanData$activity[CleanData$activity == 2] <- "Walking Upstairs"
CleanData$activity[CleanData$activity == 3] <- "Walking Downstairs"
CleanData$activity[CleanData$activity == 4] <- "Sitting"
CleanData$activity[CleanData$activity == 5] <- "Standing"
CleanData$activity[CleanData$activity == 6] <- "Lying down"

