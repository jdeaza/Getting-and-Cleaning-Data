######Steps to resolve assignment 2 Getting and Cleaning Data

#######	i. Merges the training and the test sets to create one data set.
######  ii. Extracts only the measurements on the mean and standard deviation for each measurement. 
######  iii. Uses descriptive activity names to name the activities in the data set
######  iv. Appropriately labels the data set with descriptive variable names.
######   v. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

######## Install and load packages data.table and reshape2

install.packages("data.table")
install.packages("reshape2")
library(data.table)
library(reshape2)

#### Checking for and creating directory

if (!file.exists("assignmentGI")) {
	dir.create("assignmentGI")
}

###### Read and load data column names and activity labels

####### We need load file activity labels as an input to merge data for the tidy data

a_label <- read.table("./assignmentGI/activity_labels.txt")[, 2]

####### We need load file activity labels as an input to merge data for the tidy file

c_feature <- read.table("./assignmentGI/features.txt")[, 2]

####### First, we need extract the measurements on the mean and standard deviation for each measurement from the c_feature file

extract_file <- grepl("mean|std", c_feature)

############# Read and load test set, test labels and id subject test

##### Read and load test set, test labels and id subject test  

x_test <- read.table("./assignmentGI/x_test.txt")
y_test <- read.table("./assignmentGI/y_test.txt")
subject_test <- read.table("./assignmentGI/subject_test.txt")

##### Assign names x_test data

names(x_test) = c_feature

####### Extract the measurements on the mean and sd for test data and for each measurement

x_test <- x_test[, extract_file]

####### Activity labels test files

y_test[,2] = a_label[y_test[, 1]]
names(y_test) = c("ID_activity", "Activity")
names(subject_test) = "subject"

###### Merge test files, i.e x_test, y_test and subject_test

data_test <- cbind(subject_test, y_test, x_test) 

############# Read and load training set, training labels and id subject training

x_train <- read.table("./assignmentGI/x_train.txt")
y_train <- read.table("./assignmentGI/y_train.txt")
subject_train <- read.table("./assignmentGI/subject_train.txt")

##### Assign names x_train data

names(x_train) = c_feature

####### Extract the measurements on the mean and sd for test data and for each measurement

x_train <- x_train[, extract_file]

####### Activity labels test files

y_train[,2] = a_label[y_train[, 1]]
names(y_train) = c("ID_activity", "Activity")
names(subject_train) = "subject"

###### Merge test files, i.e x_test, y_test and subject_test

data_train <- cbind(subject_train, y_train, x_train)

##### Merge test data and train data and create tidy data

dataf <- rbind(data_test, data_train)
write.table(dataf, file = "./assignmentGI/data_tidy.txt")

###### Create tidy data for with the average of each variable for each activity and each subject

data_melt <- melt(dataf, id=c("subject", "Activity"))
data_tidy_mean <- dcast(data_melt, Activity+ subject ~ variable, mean)
write.table(data_tidy_mean, file = "./assignmentGI/data_tidy_mean.txt")
