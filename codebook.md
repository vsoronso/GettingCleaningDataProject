# GettingCleaningDataProject - Code Book

Variables included in the tidy dataset are: <ul>
<li>fileUrl: The url at which the raw data for the project is stored.
<li>ActvTest: table that stores the raw Test codes.
<li>ActvTrain: table that stores the raw Train codes.
<li>SubTest: table that stores the raw testing subject codes.
<li>SubTrain: table that stores the raw training subject codes.
<li>FeatTest: table that stores the Features of the testing data.
<li>FeatTrain: table that stores the Features of the training data.
<li>ActvLbls: table that stores the mapping of activity code (e.g. 1, 2, ...) to the actual activity (walking, running, ....).
<li>SubData: merged table of the testing and training subject data.
<li>ActvData: merged table of the testing and training activity data.
<li>FeatData: merged table of the testing and training features.
<li>FeatureNames: table that stores the names of the test and training features (column headers).
<li>comb1: table combining the subject and activity data.
<li>FullDataset: table with subject data, activity data and all features.
<li>variables: set of feature names to include in final data set.
<li>All Variables: set of feature names to include in tidy data set + "subject" and "activity" codes corresponding to each value.
<li>SubsetDataset: subsetting final dataset with only features needed for the tidy dataset.
<li>SubsetDataset2: data set displaying the means of each activity for each subject. </li> </ul>
>
>The data used for this was from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
> Data processing overview: <ul>
<li> The first part of the code downloads the data and writes each required file to a table.
<li> The subject data, activity data and feature data is bound by rows so that there is a seperate table for test and train subject data, test and train activity data and test and train feature data.
<li> Then subject, test and activity data is bound by columns so all is in one dataset.
<li> Then feature names are merged to bring in column headers for each measurement type.
<li> Then the data is subetted so only mean and standard deviation measurements are kept.
<li> Then activity codes are replaced with the actual activity name.
<li> Then column headers (the activity measurement names) are adjusted to proper names (no abbreviations).
<li> Then subject and activity data is aggregated so that we get the mean of each subject for each activity.
</li></ul>



