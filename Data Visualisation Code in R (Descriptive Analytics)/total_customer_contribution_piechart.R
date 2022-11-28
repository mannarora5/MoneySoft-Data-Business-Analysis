

data <- read.csv("z5360526_z5360526-Assessment1Data.csv")
totalContribution <- data$C_TotalVoluntarySuperContribution
sum_range1 <- sum(totalContribution <= 1500)
sum_range2 <- sum(totalContribution <= 3000) - sum_range1
sum_range3 <- sum(totalContribution <= 4500) - sum_range2 - sum_range1
sum_range4 <- sum(totalContribution <= 6000) - sum_range3 - sum_range2 - sum_range1
sum_range5 <- sum(totalContribution <= 7500) - sum_range4 - sum_range3 - sum_range2 - sum_range1
sum_range1
sum_range2
sum_range3
sum_range4
sum_range5

count <- c(sum_range1, sum_range2, sum_range3, sum_range4, sum_range5)
pie (count, labels = c("60.6%", "19.4%", "16.6%", "2.4%", "0.9%"), main = "Distribution of Total Customer Voluntary Contribution", col = c("violet", "sandybrown", "royalblue", "springgreen", "turquoise1") )
legend(0.9, 0.8, legend=c("Less than 1500", "Between 1500 and 3000", "Between 3000 and 4500", "Between 4500 and 6000", "Between 6000 and 7500"), col=c("violet", "sandybrown", "royalblue", "springgreen", "turquoise1"), lty = 1, cex = 0.8)












