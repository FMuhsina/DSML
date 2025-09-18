library(e1071)
library(caTools)
library(gmodels)

# Read dataset
iris <- read.csv("C:/Users/Admin/Desktop/Muhsina_dsml/iris.csv")

# Split into training and testing (70% training, 30% testing)
set.seed(100)
split <- sample.split(iris$species, SplitRatio = 0.7)
iris_train <- subset(iris, split == TRUE)
iris_test <- subset(iris, split == FALSE)

# Features and labels
iris_train_data <- iris_train[, 1:4]
iris_test_data <- iris_test[, 1:4]
iris_train_labels <- iris_train[, 5]
iris_test_labels <- iris_test[, 5]

# Naive Bayes classifier
classifier_cl <- naiveBayes(iris_train_data, iris_train_labels)

print(classifier_cl)

# Predict
iris_test_pred <- predict(classifier_cl, iris_test_data)

print(iris_test_pred)

# CrossTable for evaluation
CrossTable(iris_test_labels, iris_test_pred, prop.chisq = FALSE)
