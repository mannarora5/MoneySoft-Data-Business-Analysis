data <- read.csv("z5360526_z5360526-Assessment1Data.csv")



range1 <- data[data$C_TotalVoluntarySuperContribution < 1500, ]
range1 <- range1[ ,6]


sum1 <- sum(range1)
avg1 <- sum1/606
avg1


range2 <- data[data$C_TotalVoluntarySuperContribution >= 1500 & data$C_TotalVoluntarySuperContribution < 3000, ]
range2 <- range2[ ,6]

sum2 <- sum(range2)
avg2 <- sum2/193
avg2

range3 <- data[data$C_TotalVoluntarySuperContribution >= 3000 & data$C_TotalVoluntarySuperContribution < 4500, ]
range3 <- range3[ ,6]

sum3 <- sum(range3)
avg3 <- sum3/165
avg3

range4 <- data[data$C_TotalVoluntarySuperContribution >= 4500 & data$C_TotalVoluntarySuperContribution < 6000, ]
range4 <- range4[ ,6]


sum4 <- sum(range4)
avg4 <- sum4/23
avg4

range5 <- data[data$C_TotalVoluntarySuperContribution >= 6000 & data$C_TotalVoluntarySuperContribution < 7500, ]
range5 <- range5[ ,6]


sum5 <- sum(range5)
avg5 <- sum5/8
avg5


boxplot(range1, range2, range3, range4, range5,  main = "Monthly Family Income vs Total Voluntary Contribution", ylab = "Monthy Family Income ($)",
        col = c("Yellow", "Purple", "Pink", "Blue", "Green"), border = "Black", xlab = "Total Voluntary Contribution ($)", names = c("<1500", "1500-3000", "3000-4500", "4500-6000", "6000-7500"),
        notch = TRUE)