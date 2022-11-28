data <- read.csv("z5360526_z5360526-Assessment1Data.csv")

data <- read.csv("z5360526_z5360526-Assessment1Data.csv")

range2 <- data[data$C_FinancialLiteracy == "H", ]
range2 <- range2[ ,16]
NROW(range2)
median(range2)

range3 <- data[data$C_FinancialLiteracy == "M", ]
range3 <- range3[ ,16]
NROW(range3)

range4 <- data[data$C_FinancialLiteracy == "L", ]
range4[179,16]



boxplot(range2, range3, range4,  main = "Total Voluntary Contribution by Financial Literacy", ylab = "Total Voluntary Contribution ($)",
        col = c("violetred1", "violet", "pink"), border = "Black", xlab = "Financial Literacy Level", names = c("High", "Medium", "Low"))





