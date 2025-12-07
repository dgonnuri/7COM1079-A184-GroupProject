#Importing the dataset
library(readr)
Churn_Modeling <- read_csv("Churn Modeling.csv")
View(Churn_Modeling)

#Extracting Relevant Variables
Balance <- Churn_Modeling$Balance
Exited <- Churn_Modeling$Exited

#T test(Welch)
t_test_result <- t.test(Balance ~ Exited)
t_test_result

#wilcoxon Test (non-parametric)
wilcox_result <- wilcox.test(Balance ~ Exited)
wilcox_result
