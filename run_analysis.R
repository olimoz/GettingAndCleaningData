##Set your own working directory before proceeding
#setwd("~/0_OM/Training/R/R_GettingData/Project")

#Download the data and unzip
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="./HAR_Data.zip")
unzip("./HAR_Data.zip")

#Import the feature names, applicable to both testing and training sets.
featurenames          <- read.csv("./UCI HAR Dataset/features.txt",header=F, sep=" ")
colnames(featurenames)<- c("Col","Name")

#The activity labels have no obvious separator, so have been created manually:
activity_labels <- c("WALKING",
                     "WALKING_UPSTAIRS",
                     "WALKING_DOWNSTAIRS",
                     "SITTING",
                     "STANDING",
                     "LAYING")

#Import training data
x_train      <- read.csv("./UCI HAR Dataset/train/X_train.txt",       header=F, sep="")
y_train      <- read.csv("./UCI HAR Dataset/train/y_train.txt",       header=F)
subject_train<- read.csv("./UCI HAR Dataset/train/subject_train.txt", header=F)

#Import testing data
x_test       <- read.csv("./UCI HAR Dataset/test/X_test.txt",         header=F, sep="")
y_test       <- read.csv("./UCI HAR Dataset/test/y_test.txt",         header=F)
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt",   header=F)

##Appropriately label the data set with descriptive variable names

#Apply the feature colnames to the x_train and x_test tables
colnames(x_train)<- featurenames$Name
colnames(x_test) <- featurenames$Name
#Give y_train and y_test appropriate column names
colnames(y_train)<- "y_code"
colnames(y_test) <- "y_code"
#Give subject_train and subject_test appropriate column names
colnames(subject_train)[1]<-"subject"
colnames(subject_test)[1] <-"subject"
  
#For completeness, flag the source for each 'y' record, train or test:
y_train$y_source <- rep("Train",nrow(y_train))
y_test$y_source  <- rep("Test", nrow(y_test))

##For tidyness sake, reorder the columns so the Test/Train flag is listed first.
y_train<-y_train[,c(2,1)]
y_test <-y_test[,c(2,1)]

##Merge the training and the test sets to create one data set
x_TrainAndTest   <- rbind(x_train,x_test)
y_TrainAndTest   <- rbind(y_train,y_test)
subj_TrainAndTest<- rbind(subject_train, subject_test)
AllData <- cbind(y_TrainAndTest, 
                 ##Use descriptive activity names to name the activities in the data set
                 "activity"=activity_labels[y_TrainAndTest$y_code],
                 subj_TrainAndTest,
                 x_TrainAndTest)

##Extract only the measurements on the mean and standard deviation for each measurement
#Assumed to INCLUDE mean(), BUT EXCLUDE meanFreq()
ColIndicesOfMeans  <-grep("mean()", names(AllData), value = FALSE, fixed=TRUE)
ColIndicesOfStdDevs<-grep("std()" , names(AllData), value = FALSE, fixed=TRUE)
MeansAndStdDevsOnly<-AllData[,c(1,2,3,4,ColIndicesOfMeans,ColIndicesOfStdDevs)]
#Alternatively this process could have used the select(contains()) functions of dplyr

##From the data set in step 4, creates a second, independent tidy data set 
##with the average of each variable for each activity and each subject.
library(dplyr)
MeansByActivityAndSubject<-MeansAndStdDevsOnly[,-c(1,2)] %>% 
                             group_by(y_name,subject) %>% 
                                summarise_each(funs(mean))

##Output the result
#View(MeansByActivityAndSubject)
