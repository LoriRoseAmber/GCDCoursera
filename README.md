##Getting and Cleaning Data Course Project. ##

This repo contains a run_analysis.R script that creates a tidy data set out of raw smartphone data, along with a codebook explaining the nature of the original and updated data.
More information on the original project can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Instructions:

* download and extract all files from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* run the run_analysis.R script

The run_analysis.R script assumes that all the files are in the current working directory and performs the following tasks:

* Reads in the data and its related files
* Combines "test" and "train" data sets
* Extracts out the variables from combined dataset containing a mean or standard deviation measurement
* Cleans up the names of the extracted variables
* Adds appropriate labels to different levels of actvity variable
* Adds subject ID variable and activity variable to the combined data set
* Orders the data by subject ID and activity
* Generates final tidy data set that contains the average for each variable by subject ID and activity
* Writes out final tidy data set

