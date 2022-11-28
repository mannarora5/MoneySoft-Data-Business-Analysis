data <- read.csv("z5360526_z5360526-Assessment1Data.csv")


range1 <- data[data$C_Age >= 18 & data$C_Age < 25, ]
range1 <- range1[ ,16]

NROW(range1)

range2 <- data[data$C_Age >= 25  & data$C_Age < 35, ]
range2 <- range2[ ,16]
NROW(range2)

range3 <- data[data$C_Age >= 35 & data$C_Age < 45, ]
range3 <- range3[ ,16]
NROW(range3)

range4 <- data[data$C_Age >= 45 & data$C_Age <= 60, ]
range4 <- range4[ ,16]
NROW(range4)

count <- c(151, 189, 235, 425)

pie (count, labels = c("15.1% (18-24)", "18.9% (25-34)", "23.5% (35-44)", "42.5%  (45-60)"), 
     main = "Age Groups targetted By MoneySoft", col = c("Yellow", "Purple", "Pink", "Blue") )



