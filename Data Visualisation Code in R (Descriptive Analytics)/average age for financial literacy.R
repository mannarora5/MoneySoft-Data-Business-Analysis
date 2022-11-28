data <- read.csv("z5360526_z5360526-Assessment1Data.csv")

range2 <- data[data$C_FinancialLiteracy == "H", ]
range2 <- range2[ ,2]
NROW(range2)

range3 <- data[data$C_FinancialLiteracy == "M", ]
range3 <- range3[ ,2]
NROW(range3)

range4 <- data[data$C_FinancialLiteracy == "L", ]
range4 <- range4[ ,2]
NROW(range4)

boxplot(range2, range3, range4,  main = "Average Age of user for Financial Literacy Levels", ylab = "Age of user",
        col = c("violetred1", "violet", "pink"), border = "Black", xlab = "Financial Literacy Level", names = c("High", "Medium", "Low"))



















