## Merges the training and the test sets to create one data set
merge_sets <- function(directory) {
  path <- paste("./", directory, "/test/X_test.txt", sep="")
  test_data <- read.table(path)
  return (test_data)
}
test_data <- merge_sets("UCI HAR Dataset")
## Extracts only the measurements on the mean and standard deviation for each measurement
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive activity names
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject