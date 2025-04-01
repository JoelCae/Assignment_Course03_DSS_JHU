Code Book
================

This code book describes the data, the variables, and any
transformations or work that I performed to clean up the data created in
the script run_analysis.R.

## Data set

The analysis uses the Human Activity Recognition Using Smartphones
Dataset, the data set contains the measure for different variables for
30 volunteers in 6 different activities, the idea is that different kind
of activities produces different measures. A full description is
available at the site where the data was obtained: [Human Activity
Recognition Using
Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The final Tidy Data Set contains:

| Variable          | Description                               |
|-------------------|-------------------------------------------|
| Subject           | ID for the volunteer (1-30)               |
| Activity          | Label for activity (from activity_labels) |
| Mean of variables | The mean of the indicated variable        |

The run_analysis.R. assigns a description for each variable in the tidy
data set. In the section **Variables** I present the complete list.

## Variables

The variables are divided derived from two principal measurements: body
acceleration and angular velocity. This measurements are obtained in
different directions (X,Y,Z), also are transformed to obtain the
variants Jerk and Euclidean. The final data set is a panel by subject
and activity and only includes the variables for the mean and standard
deviation.

The list of all variables is:

``` r
knitr::kable(vars, format = "markdown")
```

| variable                         | label_variable                                             |
|:---------------------------------|:-----------------------------------------------------------|
| subject                          | subject                                                    |
| activity                         | activity                                                   |
| mean_tBodyAcc_mean()\_X          | time body linear acceleration mean in X                    |
| mean_tBodyAcc_mean()\_Y          | time body linear acceleration mean in Y                    |
| mean_tBodyAcc_mean()\_Z          | time body linear acceleration mean in Z                    |
| mean_tBodyAcc_std()\_X           | time body linear acceleration std in X                     |
| mean_tBodyAcc_std()\_Y           | time body linear acceleration std in Y                     |
| mean_tBodyAcc_std()\_Z           | time body linear acceleration std in Z                     |
| mean_tGravityAcc_mean()\_X       | time gravity acceleration mean in X                        |
| mean_tGravityAcc_mean()\_Y       | time gravity acceleration mean in Y                        |
| mean_tGravityAcc_mean()\_Z       | time gravity acceleration mean in Z                        |
| mean_tGravityAcc_std()\_X        | time gravity acceleration std in X                         |
| mean_tGravityAcc_std()\_Y        | time gravity acceleration std in Y                         |
| mean_tGravityAcc_std()\_Z        | time gravity acceleration std in Z                         |
| mean_tBodyAccJerk_mean()\_X      | time body linear acceleration Jerk mean in X               |
| mean_tBodyAccJerk_mean()\_Y      | time body linear acceleration Jerk mean in Y               |
| mean_tBodyAccJerk_mean()\_Z      | time body linear acceleration Jerk mean in Z               |
| mean_tBodyAccJerk_std()\_X       | time body linear acceleration Jerk std in X                |
| mean_tBodyAccJerk_std()\_Y       | time body linear acceleration Jerk std in Y                |
| mean_tBodyAccJerk_std()\_Z       | time body linear acceleration Jerk std in Z                |
| mean_tBodyGyro_mean()\_X         | time body angular velocity mean in X                       |
| mean_tBodyGyro_mean()\_Y         | time body angular velocity mean in Y                       |
| mean_tBodyGyro_mean()\_Z         | time body angular velocity mean in Z                       |
| mean_tBodyGyro_std()\_X          | time body angular velocity std in X                        |
| mean_tBodyGyro_std()\_Y          | time body angular velocity std in Y                        |
| mean_tBodyGyro_std()\_Z          | time body angular velocity std in Z                        |
| mean_tBodyGyroJerk_mean()\_X     | time body angular velocity Jerk mean in X                  |
| mean_tBodyGyroJerk_mean()\_Y     | time body angular velocity Jerk mean in Y                  |
| mean_tBodyGyroJerk_mean()\_Z     | time body angular velocity Jerk mean in Z                  |
| mean_tBodyGyroJerk_std()\_X      | time body angular velocity Jerk std in X                   |
| mean_tBodyGyroJerk_std()\_Y      | time body angular velocity Jerk std in Y                   |
| mean_tBodyGyroJerk_std()\_Z      | time body angular velocity Jerk std in Z                   |
| mean_tBodyAccMag_mean()          | time body linear acceleration Euclidean mean               |
| mean_tBodyAccMag_std()           | time body linear acceleration Euclidean std                |
| mean_tGravityAccMag_mean()       | time gravity acceleration Euclidean mean                   |
| mean_tGravityAccMag_std()        | time gravity acceleration Euclidean std                    |
| mean_tBodyAccJerkMag_mean()      | time body linear acceleration Jerk Euclidean mean          |
| mean_tBodyAccJerkMag_std()       | time body linear acceleration Jerk Euclidean std           |
| mean_tBodyGyroMag_mean()         | time body angular velocity Euclidean mean                  |
| mean_tBodyGyroMag_std()          | time body angular velocity Euclidean std                   |
| mean_tBodyGyroJerkMag_mean()     | time body angular velocity Jerk Euclidean mean             |
| mean_tBodyGyroJerkMag_std()      | time body angular velocity Jerk Euclidean std              |
| mean_fBodyAcc_mean()\_X          | frecuency body linear acceleration mean in X               |
| mean_fBodyAcc_mean()\_Y          | frecuency body linear acceleration mean in Y               |
| mean_fBodyAcc_mean()\_Z          | frecuency body linear acceleration mean in Z               |
| mean_fBodyAcc_std()\_X           | frecuency body linear acceleration std in X                |
| mean_fBodyAcc_std()\_Y           | frecuency body linear acceleration std in Y                |
| mean_fBodyAcc_std()\_Z           | frecuency body linear acceleration std in Z                |
| mean_fBodyAccJerk_mean()\_X      | frecuency body linear acceleration Jerk mean in X          |
| mean_fBodyAccJerk_mean()\_Y      | frecuency body linear acceleration Jerk mean in Y          |
| mean_fBodyAccJerk_mean()\_Z      | frecuency body linear acceleration Jerk mean in Z          |
| mean_fBodyAccJerk_std()\_X       | frecuency body linear acceleration Jerk std in X           |
| mean_fBodyAccJerk_std()\_Y       | frecuency body linear acceleration Jerk std in Y           |
| mean_fBodyAccJerk_std()\_Z       | frecuency body linear acceleration Jerk std in Z           |
| mean_fBodyGyro_mean()\_X         | frecuency body angular velocity mean in X                  |
| mean_fBodyGyro_mean()\_Y         | frecuency body angular velocity mean in Y                  |
| mean_fBodyGyro_mean()\_Z         | frecuency body angular velocity mean in Z                  |
| mean_fBodyGyro_std()\_X          | frecuency body angular velocity std in X                   |
| mean_fBodyGyro_std()\_Y          | frecuency body angular velocity std in Y                   |
| mean_fBodyGyro_std()\_Z          | frecuency body angular velocity std in Z                   |
| mean_fBodyAccMag_mean()          | frecuency body linear acceleration Euclidean mean          |
| mean_fBodyAccMag_std()           | frecuency body linear acceleration Euclidean std           |
| mean_fBodyBodyAccJerkMag_mean()  | frecuency Bodybody linear acceleration Jerk Euclidean mean |
| mean_fBodyBodyAccJerkMag_std()   | frecuency Bodybody linear acceleration Jerk Euclidean std  |
| mean_fBodyBodyGyroMag_mean()     | frecuency Bodybody angular velocity Euclidean mean         |
| mean_fBodyBodyGyroMag_std()      | frecuency Bodybody angular velocity Euclidean std          |
| mean_fBodyBodyGyroJerkMag_mean() | frecuency Bodybody angular velocity Jerk Euclidean mean    |
| mean_fBodyBodyGyroJerkMag_std()  | frecuency Bodybody angular velocity Jerk Euclidean std     |

## Manage data

The data is in text files. It is no difficult to read in R, the key to
create the data set is to known the relationship in the features,
subject, X and Y files. If we perform the X set in the correct number of
rows, we can add the variable names (features).

For the tidy data set, the key is to know how to find the indicated
variables and subsetting the data. In This analysis is so important the
text analysis.
