if(!file.exists("./GCD_Project_Data")) {
dir.create("./GCD_Project_Data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./GCD_Project_Data/UCI HAR Dataset.zip", method = "curl")
unzip(zipfile = "./GCD_Project_Data/UCI HAR Dataset.zip",exdir = "./GCD_Project_Data")
ActvTest<-read.table(file.path("./GCD_Project_Data/UCI HAR Dataset","test","y_test.txt"),header=FALSE)
ActvTrain<-read.table(file.path("./GCD_Project_Data/UCI HAR Dataset","train","Y_train.txt"),header=FALSE)
SubTest<-read.table(file.path("./GCD_Project_Data/UCI HAR Dataset","test","subject_test.txt"),header=FALSE)
SubTrain<-read.table(file.path("./GCD_Project_Data/UCI HAR Dataset","train","subject_train.txt"),header=FALSE)
FeatTest<-read.table(file.path("./GCD_Project_Data/UCI HAR Dataset","test","X_test.txt"),header=FALSE)
FeatTrain<-read.table(file.path("./GCD_Project_Data/UCI HAR Dataset","train","X_train.txt"),header=FALSE)
ActvLbls <- read.table(file.path("./GCD_Project_Data/UCI HAR Dataset", "activity_labels.txt"),header = FALSE)
SubData <- rbind(SubTrain, SubTest)
ActvData<- rbind(ActvTrain, ActvTest)
FeatData<-rbind(FeatTrain,FeatTest)
names(SubData)<-c("subject")
names(ActvData)<-c("activity")
FeatureNames<-read.table(file.path("./GCD_Project_Data/UCI HAR Dataset","features.txt"),header=FALSE)
names(FeatData)<-FeatureNames$V2
comb1<-cbind(SubData, ActvData)
FullDataset<-cbind(comb1, FeatData)
variables<-sqldf("Select * from FeatureNames where V2 LIKE '%mean()%' OR V2 LIKE '%std()%'")
AllVariables<-c("subject", "activity",as.character(variables$V2))
SubsetDataset<-subset(FullDataset,select=AllVariables)
names(ActvLbls)[1]<-"Label"
names(ActvLbls)[2]<-"activity"
names(SubsetDataset)[2]<-"Label"
SubsetDataset<-ActvLbls %>% right_join(SubsetDataset,by="Label")
SubsetDataset<-SubsetDataset[,-1]
names(SubsetDataset)<-gsub("^t", "time", names(SubsetDataset))
names(SubsetDataset)<-gsub("^f", "frequency", names(SubsetDataset))
names(SubsetDataset)<-gsub("Acc", "Accelerometer", names(SubsetDataset))
names(SubsetDataset)<-gsub("Gyro", "Gyroscope", names(SubsetDataset))
names(SubsetDataset)<-gsub("Mag", "Magnitude", names(SubsetDataset))
names(SubsetDataset)<-gsub("BodyBody", "Body", names(SubsetDataset))
SubsetDataset2<-aggregate(. ~subject + activity, SubsetDataset, mean)
write.table(SubsetDataset, file = "./GCD_Project_Data/FinalProjectData.txt", sep = "\t",row.names = FALSE)
