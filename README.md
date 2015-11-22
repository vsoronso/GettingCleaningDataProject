# GettingCleaningDataProject - Readme
Getting and Cleaning Data Project Code  - 20151119
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


