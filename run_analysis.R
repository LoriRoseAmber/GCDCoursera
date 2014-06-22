## Cousera. Getting and Cleaning Data. Course Project. June 21/14

# read in necessary files for test and train data
test <- read.table("./test/X_test.txt")
train <- read.table("./train/X_train.txt")
activity_index_test <- read.table("./test/y_test.txt")
activity_index_train <- read.table("./train/y_train.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
activity_labels <- read.table("./activity_labels.txt")[,2]
colnames <- read.table("./features.txt")[,2]

# extract mean and std variables of combined data set
temp1 <- rbind(test,train)
colnames(temp1) <- colnames
temp2 <- temp1[,grepl("mean()", colnames(temp1), fixed = T)
		| grepl("std()", colnames(temp1), fixed = T)]

# clean up colnames
colnames(temp2) <- gsub("\\()", "", colnames(temp2))
colnames(temp2) <- gsub("-", "", colnames(temp2))
colnames(temp2) <- gsub("BodyBody", "Body", colnames(temp2))


# combine activity index for test and train data and add labels
activity <- rbind(activity_index_test, activity_index_train)
activity <- as.factor(activity$V1)
levels(activity) <- activity_labels

# combine subject ids for test and train data
subjectid <- rbind(subject_test, subject_train)

# generate and order new data set
temp3 <-cbind(subjectid, activity, temp2)
colnames(temp3)[1] <- "subjectid"
temp3 <- temp3[order(temp3$subjectid, temp3$activity),]
row.names(temp3)<-NULL

# generate and save final tidy data set with variable averages
library(plyr)
tidydata <- ddply(temp3, .(subjectid,activity), colwise(mean))
write.csv(tidydata, "tidydata.csv")



