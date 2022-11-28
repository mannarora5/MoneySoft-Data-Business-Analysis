data <- read.csv("z5360526_z5360526-Assessment1Data.csv")



renters <- data[data$C_HomeOwnershipStatus == "N", ]

NROW(renters)
renters <- data[data$App_FrequencyOfDecline == "H", ]


renters <- renters[ ,6]



avg <- sum(renters)/NROW(renters)
avg

owners <- data[data$C_HomeOwnershipStatus == "Y", ]
owners <- owners[ ,6]
NROW(renters)

avg2 <- sum(owners)/NROW(owners)
avg2


boxplot(renters, owners, names = c("Renters", "Owners"), main = "Average Family income for property owners and renters", col = c("violet", "pink"), xlab = "House ownership", ylab = "Family Income ($)")
























