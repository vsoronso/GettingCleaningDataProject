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
<li>SubsetDataset2: data set displaying the means of each activity for each subject.
>
>The data used in this assignment was collected from accelerometers from the Samsung Galaxy S smartphone. There are 10 files used for this assignment <ul>
<li>



