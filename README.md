README
================

This repo contains two files: run_analysis.R and CodeBook.md. The first
one creates the tidy data set. it runs following the assignment
specifications. The second one describes the variables, the data, and
any transformations or work that I performed to clean up the data.

The CodeBook.md has a explanation of the variables in the data set
created in run_analysis.R. This is useful if you can have a better
comprehension of the data. I also add the tity data set (file
assignment_tidy_dataset.txt) to the repository.

For the script run_analysis.R, you can read the the next explanation
where I describe how it works.

### About run_analysis.R

To run the script, It is needed to have the data set provided in the
assignment
([Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip))
and the libraries labelled and dplyr.

I divide the script in 6 parts, one per bullet in the assignment and one
more for Read Data. The bullets in the assignment are:

1.  Merges the training and the test sets to create one data set.

2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.

3.  Uses descriptive activity names to name the activities in the data
    set

4.  Appropriately labels the data set with descriptive variable names.

5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

The MANAGING FILES section reads and manages the data for subjects,
activities, features, and sets that come from the test and train subset.
I also assign variable names to each column.

The PART 1: MERGE DATASETS section merges the data processed in the
previous section.

The PART 2: MEASUREMENTS: MEAN AND SD section selects the variables
where the variable name match with mean or standard deviation
(i.e. mean() or std()).

The PART 3: ACTIVITY NAME section assigns the label activities to the
data set.

PART 4: DESCRIPTIVE VARIABLE NAMES section assigns the variable labels,
for this I use text analysis to replace the variable names with a
descriptive label that comes from the features info file. I use the
labelled package.

PART 5: AVERANGES PER SUBJECT-ACTIVITY section obtains the mean for the
previous data set, for this I group by subject-activity. I use the dplyr
package.

### About Codebook

The coode book describes the data, the variables, and any
transformations or work that I performed to clean up the data created in
the script run_analysis.R.
