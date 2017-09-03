# Getting-and-Cleaning-Data-Course-Project

This Project is part of the Getting and Cleaning Data course on Coursera. 

The goal of the project was to demonstrate the ability to collect, work with, and clean a data set by preparing a 'tidy' dataset that could be used for analysis. 

Details about the data used in the project can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script, run_analysis.R, found in this repo does as follows:

1.  Download the dataset from the internet if it does not already exist in the working directory
2.  Loads the Activity and Feature information and both training and test datasets.
3.  Merges these files together to create one large data set
4.  Extracts only the mean and standard deviation from the features
5.  Gives more descriptive names to the column headers
6.  Creates a tidy dataset that shows the mean value for every factor for each subject and activity.
7.  The file 'tidy.txt' is the final result.
