# Load the party package. It will automatically load other
# dependent packages.
library(rpart)
library(rpart.plot)
# Create the input data frame.
input.dat <- iris
#after preprocessing the data if needed
# Create the decision tree.
output.tree <- rpart(
  Species~., 
  data = input.dat,method="class")

# Plot the tree.
rpart.plot(output.tree)

# random forest
library(randomForest)
# Create the input data frame.
input.dat <- iris
# Give the chart file a name.
# Create the tree.
rf <- randomForest(
  Species~., 
  data = input.dat,ntree=50,type="classification")
rf
