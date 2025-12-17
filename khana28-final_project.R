
# 1. Load Data and Packages
# Load the readr package for reading the data efficiently
library(readr)
# Load the car package for the Levene's Test (Homogeneity of Variances)
# library(car) 
# The script assumes this package is available in the environment.

# Load the data file
data <- read_csv("data.csv")

# 2. Filter Data and Define Climate Factor (CRITICAL STEP)
# Filter data to ONLY include Continental (code 1) and Temperate (code 5) groups
data <- data[data$climate == 1 | data$climate == 5, ]

# Convert the numerical climate code into a factor (categorical) variable 
# with readable labels for the ANOVA
data$climate <- factor(data$climate, 
                       levels = c(1, 5), 
                       labels = c("Continental", "Temperate"))

# 3. Descriptive Statistics
# Descriptive statistics for the Population DV
summary(data$population)
sd(data$population)
# Frequency count for the two climate groups
table(data$climate)

# 4. Visualization (Boxplot)
boxplot(data$population ~ data$climate, 
        main="Population Distribution by Climate Type (Continental vs. Temperate)", 
        xlab="Climate Type", 
        ylab="Population")

# 5. Statistical Analysis (ANOVA)
anova <- aov(population ~ climate, data = data)
summary(anova)

# 6. Assumption Checks

# Homogeneity of Variances (Levene's Test)
# leveneTest(population ~ climate, data = data)

# Normality of Residuals (QQ Plot)
plot(anova, 2) 

# Normality of Residuals (Shapiro-Wilk Test)
shapiro.test(residuals(anova))

