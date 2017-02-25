# Data Preprocessing

# Import dataset
dataset = read.csv('Data.csv')
# dataset = dataset[, 2:3]

# Splitting dataset into training and testing
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature scaling
# training_set = scale(training_set[, 2:3] )
# test_set = scale(test_set[, 2:3] )

