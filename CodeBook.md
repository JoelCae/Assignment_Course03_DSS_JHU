Code Book
================

This coode book describes the variables, the data, and any
transformations or work that I performed to clean up the data created in
the script run_analysis.R.

## Data sets

The analysis uses the Human Activity Recognition Using Smartphones
Dataset, the data set contains the measure for different variables for
30 volunteers in 6 different activities, the idea is that different kind
of activities produces different measures.

A full description is available at the site where the data was obtained:

[Human Activity Recognition Using
Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Variables

The variables are divided derived from two principal measurements: body
acceleration and angular velocity. This measurements are obtained in
different directions (X,Y,Z), also are transformed to obtain the
variants Jerk and Euclidean.

## Manage data

The data is in text files. It is no difficult to read in R, the key to
create the data set is to known the relationship in the features,
subject, X and Y files. If we perform the X set in the correct number of
rows, we can add the variable names (features).

For the tidy data set, the key is to know how to find the indicated
variables and subsetting the data. In This analysis is so important the
text analysis.
