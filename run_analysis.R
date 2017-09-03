

#Checking to see whether the directory "coursera_w4" exists and if it does not it will create it.
#Downloads the file from internet
#Unzips the file and places extracted file in folder "coursera_w4"
#sets workding directory to UCI HAR Dataset

if(!file.exists("./coursera_w4")){dir.create("./coursera_w4")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./coursera_w4/Dataset.zip")
unzip(zipfile="./coursera_w4/Dataset.zip",exdir="./coursera_w4")
setwd("./coursera_w4/UCI HAR Dataset")

#Reading in all necessary files:
#Activitylabel contains data about activity that subjects performed
#features contains list of features
#x_train and x_test contain features data
#y_train and y_test contain the activity id that relates to activity label(name)
#subject_train and subject_test contain subjectid

Activitylabel <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")
x_train <- read.table("./train/X_train.txt")
x_test <- read.table("./test/x_test.txt")
y_train <- read.table("./train/y_train.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")

#Naming columns 
colnames(subject_train) <- "SubjectId"
colnames(subject_test) <- "SubjectId"
colnames(Activitylabel)<- c("ActivityId","ActivityName")
colnames(y_train) <- "ActivityId"
colnames(y_test) <- "ActivityId"
colnames(x_train) <- features[,2]
colnames(x_test) <- features[,2]

#1. merging the data sets together
Trainmerge <- cbind(y_train,subject_train,x_train)
Testmerge <- cbind(y_test,subject_test,x_test)
Finalmerge <- rbind(Trainmerge,Testmerge)

#2. extract only the mean and standard deviation in the data set
#by creating a logical vecotr that will identify activtyid, subjectid,
#any column with 'mean' and 'std' as TRUE

headers <- colnames(Finalmerge)
mean_stdev <- (grepl("ActivityId",headers)|
                 grepl("SubjectId",headers)|
                 grepl("mean",headers)|
                 grepl("std",headers))
Finalmerge <- Finalmerge[mean_stdev==TRUE]

#3. Match Activityid with Activity Names so data is more descriptive

Finalmerge <- merge(Finalmerge,Activitylabel,by='ActivityId',all.x=TRUE);

#4.Give the column headers more descriptive names

names(Finalmerge)<-gsub("^t", "Time", names(Finalmerge))
names(Finalmerge)<-gsub("^f", "Frequency", names(Finalmerge))
names(Finalmerge)<-gsub("Acc", "Accelerometer",names(Finalmerge))
names(Finalmerge)<-gsub("Gyro", "Gyroscope", names(Finalmerge))
names(Finalmerge)<-gsub("Jerk", "JerkSignals", names(Finalmerge))
names(Finalmerge)<-gsub("Mag", "Magnitude", names(Finalmerge))
names(Finalmerge)<-gsub("BodyBody", "Body", names(Finalmerge))

#5. Using the Aggregate Function to create a separate data set that evaluates the mean
DataFinal<-aggregate(.~SubjectId + ActivityName, Finalmerge, mean)
DataFinal<-DataFinal[order(DataFinal$SubjectId,DataFinal$ActivityName),]
write.table(DataFinal, file = "tidyFinal.txt",row.name=FALSE)

