# This file should be executed just inside the "UCI HAR Dataset" folder
library(dplyr)

# Merge data and give lables to values in x/y/subject data (step 1 & 4)
act_labels <- read.table("./activity_labels.txt", sep = " ", row.names = 1, stringsAsFactors = T)
features <- read.table("./features.txt", sep = " ", row.names = 1, stringsAsFactors = F)
x_train <- read.table("./train/X_train.txt", sep = "", col.names = features[, 1], stringsAsFactors = F, check.names = F)
y_train <- read.table("./train/y_train.txt", sep = " ", col.names = "activity.id", stringsAsFactors = F)
subject_train <- read.table("./train/subject_train.txt", sep = " ", col.names = "subject.id", stringsAsFactors = F)
x_test <- read.table("./test/X_test.txt", sep = "", col.names = features[, 1], stringsAsFactors = F, check.names = F)
y_test <- read.table("./test/y_test.txt", sep = " ", col.names = "activity.id", stringsAsFactors = F)
subject_test <- read.table("./test/subject_test.txt", sep = " ", col.names = "subject.id", stringsAsFactors = F)

train_data_set <- cbind(subject_train, y_train, x_train)
test_data_set <- cbind(subject_test, y_test, x_test)
data_set <- rbind(train_data_set, test_data_set)

# Extract mean and std columns from data_set (step 2)
mean_and_std_cols <- grep("[Mn]ean|[Ss]td", colnames(data_set))
data_set <- data_set[, c(1, 2, mean_and_std_cols)]

# change integers to corresponding characters (step 3)
data_set$activity.id <- act_labels[data_set$activity.id, 1]
data_set <- rename(data_set, activity.name = activity.id)

# step 4 has been done in step 1
# Get the independent tidy set with dimensions of 180 * 44 (step 5)
by_subject_id_and_activity_name <- group_by(data_set, subject.id, activity.name) %>%
  summarise_all(mean)

write.table(by_subject_id_and_activity_name, file = "tidy_set_of_step5.txt", row.names = F)