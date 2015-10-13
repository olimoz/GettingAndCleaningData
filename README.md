---
title: "README"
author: "Oliver Morris"
date: "13 October 2015"
output: html_document
---

##README##
=================

This data is a summary of data presented in:

  Human Activity Recognition Using Smartphones Dataset. Version 1.0

Which was prepared by:

  Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
  Smartlab - Non Linear Complex Systems Laboratory
  DITEN - Università degli Studi di Genova.
  Via Opera Pia 11A, I-16145, Genoa, Italy.
  activityrecognition@smartlab.ws
  www.smartlab.ws
  
This source data can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##The R Script##

The R script, **run_analysis.R** executes the following steps:

Merges the training and the test sets to create one data set.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
Extracts only the measurements on the mean and standard deviation for each measurement. 
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.