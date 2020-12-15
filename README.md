---
title: "README: Getting and Cleaning Data - Course Project"
author: "Hans Gonzalez"
date: "14/12/2020"
output: html_document
---

Content:
=================================
* [1. Overview](#overview)
    * [Data Project Overview](#dtprjoverview)
    * [About the Data Set](#dataset)
    * [Repository Contents](#contents)
* [2. Course Project Instructions](#instructions)
    * [Instructions](instructions#)
    * [Steps in the Script](#steps)
    * [Reading the output file](#reading)

<h1 id="overview">1. Overview</h1>
This repository contains the results of the final project assignment in the Course: Getting and Cleaning Data with R. 
From Josh Hopkins University, offered by Coursera.

The purpose of this assignment is to demonstrate the ability to collect, work with and clean a data set.The goal is to prepare a tidy data set that can be used for later analysis.It is required to submit:

1) a tidy data set as described below
2) a link to GitHub repository with your script for performing the analysis
3) a Code Book that describes the variables, data and any transformations on work that your performed.
4) a README.md file in the repository that explains how all scripts work and how they are connected.

<h2 id="dtprjoverview">Data Project Overview</h2>

One of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.
The data used in this analysis was collected from the Samsung Galaxy S smartphone. (see below for more information).

The experiments were performed with a group of 30 volunteers between ages of 19-48 years.Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers were selected as the training data and 30% as the test data.

<h2 id="dataset">About the Data Set</h2>

The Data set used in this project is called: "Human Activity Recognition Using Smartphones Dataset", version 1.0.

Released in 2013, as a Public Domain Dataset [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The credits and license are as follows:

>Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

<h2 id="contents">Repository Contents</h2>

<table>
    <tr>
        <th>File</th>
        <th>Description</th>
    </tr>
    <tr>
        <td valign=top>README.md</td>
        <td> A file in markdown format displaying the overview of this project.</td>
    </tr>
    <tr>
        <td valign=top>CodeBook.md</td>
        <td> A file in markdown format that describes the variables (columns) contained in the data set called "tidydata.txt".</td>
    </tr>
    <tr>
        <td valign=top>run_analysis.R</td>
        <td> An R script that contains the R code used to transform, clean and subset the raw data and produce the file "tidydata.txt". </td>
    </tr>
    <tr>
        <td valign=top>tidydata.txt</td>
        <td> A text file containing the results of the course project as required in the instructions.</td>
    </tr>
</table>  

<h1 id="instructions">2. Course Project Instructions</h1>

Participants must develop an R script called run_analysis.R that:

1. Merges the separate training and test data files to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label all variables in the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

<h2 id="steps">Steps in the Script</h2>

  1. Downloading the data file from the source.
  2. Uploading the data into R.
  3. Identify and analyze the data previous to merging files
  4. Create an independent "Training" and "Test" data set.
  5. Apply Labels to the previous data sets. (features.txt)
  6. Merge both "Training and Test" data sets.
  7. Extract only the mean and stdev. from the file.
  8. Use descriptive names in the "activity column" data.
  9. Appropriately rename the variable names in the file.
 10. Group the data by Subject and Activity, with the average of each variable.
 11. Store in an independent output file the results from previous steps.

<h2 id="reading">Reading the output data file</h2>

The following code is provided in order to read properly the output file in R:

{..r..
newfile <- read.table("tidydata.txt", header= TRUE)
View(newfile)
..}

