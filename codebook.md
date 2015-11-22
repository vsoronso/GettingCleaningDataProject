# GettingCleaningDataProject - Code Book

Variables included in the tidy dataset are:
>fileUrl: The url at which the raw data for the project is stored
>ActvTest: table that stores the raw Test codes
>ActvTrain: table that stores the raw Train codes
SubTest: table that stores the raw testing subject codes
SubTrain: table that stores the raw training subject codes
FeatTest: table that stores the Features of the testing data
FeatTrain: table that stores the Features of the training data
ActvLbls: table that stores the mapping of activity code (e.g. 1, 2, ...) to the actual activity (walking, running, ....)
SubData: merged table of the testing and training subject data
ActvData: merged table of the testing and training activity data
FeatData: merged table of the testing and training features
FeatureNames: table that stores the names of the test and training features (column headers)
comb1: table combining the subject and activity data
FullDataset: table with subject data, activity data and all features
variables: set of feature names to include in final data set
All Variables: set of feature names to include in tidy data set + "subject" and "activity" codes corresponding to each value
SubsetDataset: subsetting final dataset with only features needed for the tidy dataset
SubsetDataset2: data set displaying the means of each activity for each subject 



