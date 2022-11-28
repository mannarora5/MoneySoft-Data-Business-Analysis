# Data Preparation
infoo <- read.csv("z5358611_z5358611-Assessment2Data.csv")

infoo$Y <- ifelse(infoo$App_SatisfactionRating == "H", 1, 0)

# Data Split
dataTrain <- infoo[1:1200, ]
dataTest <- infoo[1201:1500, ]


# Data Modelling
logisticSatisfaction <- glm(Y ~ App_ShowTutorial + C_SalarySacrifice, family = binomial(), data = infoo)


summary(logisticSatisfaction)

# Data Prediction
probs <- predict(logisticSatisfaction, newdata = dataTrain, type = "response")
dim(dataTrain)

p <- rep("L", 484)
p[probs > 0.5] <- "H"

# Confusion Matrix
table(p, dataTrain$App_SatisfactionRating)


# Make predictions
probsTest <- predict(logisticSatisfaction, newdata = dataTest, type = "response")
dim(dataTest)

pTest <- rep("L", 300)
pTest[probsTest > 0.5] <- "H"


# Confusion Matrix
table(pTest, dataTest$App_SatisfactionRating)



        
        