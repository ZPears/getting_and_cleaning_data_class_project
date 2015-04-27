## Getting and Cleaning Data Class Project

This script (run_analysis.R) takes the accelerometer and gyroscope data contained in the UCI_HAR_Dataset directory and reshapes it, returning a tidy dataset (results.R) that contains the means of each measurement in the original data organized by subject and activity.

After run_analysis.R is run, results.txt can be read back into R using **read.table(file_path, header = TRUE)**
