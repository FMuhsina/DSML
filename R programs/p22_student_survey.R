library(class)

# Read dataset
survey <- read.csv("C:/Users/Admin/Desktop/Muhsina_dsml/survey.csv")

# Create a data frame for the new student
student <- data.frame(X = 5, Y = 7)

# Select only X and Y columns
survey1 <- survey[, 1:2]

# Apply kNN (k=3)
pred <- knn(train = survey1, test = student, cl = survey$Z, k = 3)

cat("Predicted Classification of Student:\n")
print(pred)
