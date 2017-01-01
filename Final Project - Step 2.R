
##Step 2 Keep only mean and std measurements in CleanData dataset
Mean <- grep("mean", names(CombinedData), value=FALSE, fixed=TRUE)
STD <- grep("std", names(CombinedData), value=FALSE)
CleanData <- CombinedData[, c(Mean, STD, 562,563)]

