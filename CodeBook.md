# Code Book

## Introduction

The dataset produced by run_analysis.R (results.R) is a data frame containing the means of all mean and standard deviation measurements made by accelerometers and gyrometers in personal fitness tracking equipment.

The data are subsetted into individual observations based on the activity level of the subject and the subject's unique ID. 

## Results .txt observations

Each row represents a set of measurements for a given activity level and a given subject.

There are 6 different activity levels, and they are represented in column 1 ("activity").

There are 30 different subjects, and they are represented in column 2 ("subject_id").

The subject and activity level combinations (e.g., "WALKING" + 6, "LAYING" + 4) in each row are unique, and therefore represent a unique observation.

Each observation has 66 measurements, contained in columns 3:68.

## Results .txt measurements

The individual measurement column names consist of six separate items. These are **signal type**, **acceleration type**, **instrument**, **calculation type**, **original measurement** and **dimension**. Dimension is only present where relevant.

**Signal type** is either "t" or "f". "t" represents time domain signals, and "f" represents signals that have had a Fast Fourier Transform (FFT) applied.

**Acceleration type** is either "Body" or "Gravity". "Body" represents measurements body acceleration signals, and "Gravity" represents gravity acceleration signals.

**Instrument** is either "Acc" or "Gyro". "Acc" represents accelerometer readings, and "Gyro" represents gyroscope readings.

**Calculation type** is either "Jerk", "Mag", "JerkMag" or the empty string. "Jerk" represents measurements where the body linear acceleration and angular velocity were derived in time to obtain jerk signals. "Mag" represents the magnitude of three dimensional signals. "JerkMag" contains both calculations. The empty string has had no additional calculation performed.

**Original measurement** is either "mean" or "std". It represents the original measurement that was in the rows which became an observation in this table. "Mean" means the value for the row is a mean of means, and "std" means the value is a mean of standard deviations.

**Dimension** is either "X", "Y", "Z", or blank. "X" represents measurements of movement on the x axis, "Y" the y axis, "Z" the z axis, and blank values represent measurements where a dimension is not applicable.

**Remember that each value represents the mean of all measurements made by a given subject during a given activity.**

For example, the value in column (t, Body, Gyro, Jerk, std, X) in the row beginning with LAYING, 5 represents the mean of all:

*(domain signal(t), body acceleration signal(Body), gyroscope(Gyro), jerk signal(Jerk), standard deviation(std), X-axis(X))* 

measurements taken by subject #5 while laying.
