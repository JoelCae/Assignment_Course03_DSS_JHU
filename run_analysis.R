
##### GENERAL #####
rm(list = ls())
library(labelled)
library(dplyr)
setwd("~/Estudio/Cursos/Data Science Specialization - JHU/Course 03/Assignment/UCI HAR Dataset")

##### MANAGING FILES #####

## Features and activity labels 
features <- read.delim("features.txt",sep = " ", header = F)
names(features) <- c("id", "var_name")
activity_labels <- read.delim("activity_labels.txt",sep = " ", header = F)
names(activity_labels) <- c("actitity", "label")

## Subjects
subject_train <- read.delim("train/subject_train.txt", sep = " ", header = F)
subject_test <- read.delim("test/subject_test.txt", sep = " ", header = F)

subject_all <- rbind(subject_train, subject_test)
names(subject_all) <- "subject"

## Activities 
y_train <- read.delim("train/y_train.txt", sep = " ", header = F)
y_test <- read.delim("test/y_test.txt", sep = " ", header = F)

y_all <- rbind(y_train, y_test)
names(y_all) <- "activity"

## Sets 
x_train <- scan("train/x_train.txt", "")
  #x train as dataframe (using n in train)
x_train <- as.data.frame(matrix(as.numeric(x_train), nrow = length(y_train[,1])))

x_test <- scan("test/x_test.txt", "")
  #x test as dataframe (using n in test)
x_test <- as.data.frame(matrix(as.numeric(x_test), nrow = length(y_test[,1])))

x_all <- rbind(x_train, x_test)

#variable names - replace some characters
features$var_name <- gsub("-","_", features$var_name)
#features$var_name <- gsub("[()]","", features$var_name)

names(x_all) <- features$var_name

##### PART 1: MERGE  DATASETS #####  
final_dataset <- cbind(subject_all,y_all,x_all)
final_dataset[1:10,1:5]

##### PART 2: MEASUREMENTS: MEAN AND SD #####
# match witn mean or std (uppercase or lowercase, Mean for example)
subset <- grep(pattern = "mean\\(\\)|std\\(\\)", names(final_dataset), ignore.case = T)

sub_dataset <- final_dataset[,c(1,2,subset)]

head(names(sub_dataset), n=10)
tail(names(sub_dataset), n=10)

##### PART 3: ACTIVITY NAMES #####
sub_dataset$activity <- factor(sub_dataset$activity, 
                               levels = activity_labels$actitity, 
                               labels = activity_labels$label)

unique(sub_dataset$activity)


##### PART 4: DESCRIPTIVE VARIABLE NAMES #####
lab_var <- names(sub_dataset)
lab_var <- gsub("^t", "time ", lab_var)
lab_var <- gsub("^f", "frecuency ", lab_var)
lab_var <- gsub("BodyAcc", "body linear acceleration ", lab_var)
lab_var <- gsub("BodyGyro", "body angular velocity ", lab_var)
lab_var <- gsub("GravityAcc", "gravity acceleration ", lab_var)
lab_var <- gsub("Jerk", "Jerk ", lab_var)
lab_var <- gsub("Mag", "Euclidean ", lab_var)
lab_var <- gsub("_mean\\(\\)", "mean", lab_var)
lab_var <- gsub("_std\\(\\)", "std", lab_var)
lab_var <- gsub("_", " in ", lab_var)

var_label(sub_dataset) <- lab_var

var_label(sub_dataset) 

##### PART 5: AVERANGES PER SUBJECT-ACTIVITY #####
sub_dataset_5 <- sub_dataset %>% 
  group_by(subject,activity) %>% 
  summarize(across(where(is.numeric), mean, .names = "mean_{.col}"))

sub_dataset_5[1:10,1:5]

write.table(sub_dataset_5,"assignment_tidy_dataset.txt",row.name=FALSE)