library(class)
library(gmodels)

# Read dataset
wbcd <- read.csv("C:/Users/Admin/Desktop/Muhsina_dsml/wisc_bc_data.csv")

# Normalize function
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

# Apply normalization to features
wbcd_n <- as.data.frame(lapply(wbcd[3:31], normalize))

# Split into training and test data
wbcd_train <- wbcd_n[1:469, ]
wbcd_test <- wbcd_n[470:569, ]

# Labels
wbcd_train_labels <- wbcd[1:469, 2]
wbcd_test_labels <- wbcd[470:569, 2]

# Apply kNN (k=21 as in manual)
wbcd_test_pred <- knn(train = wbcd_train, test = wbcd_test, cl = wbcd_train_labels, k = 21)

# Results
print(wbcd_test_pred)

# CrossTable for evaluation
CrossTable(x = wbcd_test_labels, y = wbcd_test_pred, prop.chisq = FALSE)
