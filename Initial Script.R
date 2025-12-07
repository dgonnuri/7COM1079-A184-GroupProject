#Importing the dataset DS-238
library(readr)
Churn_Modeling <- read_csv("Churn Modeling.csv")
View(Churn_Modeling)

#Extracting Relevant Variables
Balance <- Churn_Modeling$Balance
Exited <- Churn_Modeling$Exited
summary(Balance)
summary(Exited)

#Creating Boxplot
boxplot(Balance ~ Exited, data = Churn_Modeling, names = c("Stayed (0)", "Exited (1)"),
        col = c("skyblue", "salmon"),
        main = "Boxplot of Account Balance by Customer Exit Status",
        xlab = "Customer Exit Status",
        ylab = "Account Balance (euros)")

#Creating Histogram
hist(Churn_Modeling$Balance, breaks = 30, freq = FALSE, 
     main = "Histogram of Balance with Normal Curve", 
     xlab = "Balance (euros)",
     col = "lightgray",
     border = "white")

#Lines with normal curve overlay on the Histogram
lines(density(Churn_Modeling$Balance), col = "blue", lwd = 2)
curve(dnorm(x, mean = mean(Churn_Modeling$Balance), sd = sd(Churn_Modeling$Balance)),
      col = "red",
      lwd = 2,
      add = TRUE)




