#reads in feature names
feature_names <- read.table("UCI_HAR_Dataset/features.txt")
feature_names <- as.character(feature_names$V2)
labels <- read.table("UCI_HAR_Dataset/activity_labels.txt")

#reads in first table and renames columns
testData <- read.table("UCI_HAR_Dataset/test/X_test.txt")
names(testData) <- feature_names
#adds columns subject and activity ids and renames them
subjIds <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
names(subjIds)[1] <- "subject_id"
activityIds <- read.table("UCI_HAR_Dataset/test/y_test.txt")
names(activityIds)[1] <- "activity_id"
#merges columns
testData <- cbind(subjIds, activityIds, testData)

#reads in second table and renames columns
trainData <- read.table("UCI_HAR_Dataset/train/X_train.txt")
names(trainData) <- feature_names
#adds columns subject and activity ids and renames them
subjIds <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
names(subjIds)[1] <- "subject_id"
activityIds <- read.table("UCI_HAR_Dataset/train/y_train.txt")
names(activityIds)[1] <- "activity_id"
#merges columns
trainData <- cbind(subjIds, activityIds, trainData)

#produces full data frame
allData <- rbind(testData, trainData)

#selects only columns that show means or stds
allData <- allData[,grepl("mean|std|subject_id|activity_id", colnames(allData))]
allData <- allData[,!grepl("meanFreq", colnames(allData))]

#replaces activity_ids with descriptions from labels
merged <- merge(allData, labels, by.x="activity_id", by.y ="V1")
names(merged)[1] <- "activity"
merged$activity <- merged$V2
allData <- merged[,!grepl("V2", colnames(merged))]