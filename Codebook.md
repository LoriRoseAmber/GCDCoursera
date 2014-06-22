Information for the original data is in the README.txt and features_info.txt files contained here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The tidy data set combines two data sets and has 68 variables:

subjectid: an integer from 1:30 representing the 30 volunteers who took part in the study

activity: a factor variable with 6 levels:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The remainder of the variables are features found in the original data that contained a mean or standard deviation measurement. Those that contained a mean frequency or standard deviation frequency in the original data were not included for consistency and for simplicity. This selection criteria resulted 66 numeric variables that were averaged by subjectid and activity.

Examples include:

tBodyAccmeanZ
fBodyGyroMagmean
fBodyAccJerksstdZ

A full list and detailed descriptions can be found in the original documentation.

(The names of these variables were edited to exclude potentially problematic characters such as dashes and brackets, as well as typos.)