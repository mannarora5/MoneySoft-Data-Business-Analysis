infoo <- read.csv("z5358611_z5358611-Assessment2Data.csv")

infoo



library(ggplot2)
library(scales)
library(dplyr)
p1 <- ggplot(infoo, aes(x = App_ShowTutorial, fill = App_SatisfactionRating))
p1 <- p1 + geom_bar(stat="count")
p1 <- p1 + ggtitle("App satisfaction in relation to watching app tutorial")
p1

tutorials <- infoo$App_ShowTutorial

data1 <- infoo[infoo$App_ShowTutorial == "Y", ]
nrow(data1)

data2 <- data1[data1$App_SatisfactionRating == "H", ]
nrow(data2)