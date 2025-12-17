# [Your Name] - Final Project R Script


# 1. Load Data and Packages
library(readr)
# library(car) # Uncomment this if using Levene's Test
data <- read_csv("data.csv")


# 2. Filter Data to Continental (1) and Temperate (5) Climate Groups
# Assuming your data cleaning/filtering logic to create the final dataset 'data' 
# is performed here, or you are using the raw data with only codes 1 and 5.


# 3. Descriptive Statistics
summary(data$population)
sd(data$population)
table(data$climate) # Check counts for climate codes


# 4. Visualization (Boxplot)
boxplot(data$population ~ data$climate, 
        main="Population by Climate Type", 
        xlab="Climate Code (1=Continental, 5=Temperate)", 
        ylab="Population")


# 5. Statistical Analysis (ANOVA)
anova <- aov(population ~ climate, data = data)
summary(anova)


# 6. Assumption Checks


# Homogeneity of Variances (requires 'car' package)
# leveneTest(population ~ climate, data = data)


# Normality of Residuals (QQ Plot)
plot(anova, 2) 


# Normality of Residuals (Shapiro-Wilk Test)
shapiro.test(residuals(anova))