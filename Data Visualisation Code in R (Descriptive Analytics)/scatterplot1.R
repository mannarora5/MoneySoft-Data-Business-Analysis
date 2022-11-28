data <- read.csv("z5360526_z5360526-Assessment1Data.csv")

data_total <- data[, 16]
data_income <- data[, 6]

plot(data_income, data_total, pch = 19, frame = FALSE, ann = FALSE)
title(xlab = "Family Income ($)", ylab = "Total Contribution ($)", main = "Relationship between Family Income & Total Contribution")

lines(lowess(data_income, data_total), col = "purple", lwd = 6)





