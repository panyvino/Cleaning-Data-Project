
##Step 5 - Create independent tidy data set with only the averages of each variable for each activity and participant
TidyData <- arrange(CleanData, participant, activity)
DT <- as.data.table(TidyData)
FinalDT <- DT[, lapply(.SD, mean), by=list(participant, activity)]
write.table(FinalDT, file = "FinalData.txt", row.names = FALSE)
