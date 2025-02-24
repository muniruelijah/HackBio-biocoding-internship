setwd(paste(getwd(), 
            "/stage-2", 
            sep = ""))
# Import the datasets

public_health_data <- read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/nhanes.csv",
                                 header = TRUE)

# Visualize the distribution of BMI, Weight, Weight in pounds (weight *2.2) and Age using an histogram

bmi_data <- na.omit(public_health_data$BMI)
hist(bmi_data,
     xlab = "BMI",
     col = "navy",
     main = "BMI DISTRIBUTION")

weight_data <- na.omit(public_health_data$Weight)
hist(weight_data,
     main = "WEIGHT (KILOGRAMS) DISTRIBUTION",
     xlab = "WEIGHT (KILOGRAMS)",
     col = "green")

weight_pounds_data <- na.omit(public_health_data$Weight) * 2.2
hist(weight_pounds_data,
     main = "WEIGHT (POUNDS) DISTRIBUTION",
     xlab = "WEIGHT (POUNDS)",
     col = "orange")

age_data <- na.omit(public_health_data$Age)
hist(age_data,
     main = "AGE DISTRIBUTION",
     xlab = "AGE (YEARS)",
     col = "lightblue")

# What’s the mean 60-second pulse rate for all participants in the data

mean_min_pulse_rate <- round(mean(na.omit(public_health_data$Pulse)), digits = 4)
paste("The mean 60-second pulse rate is", mean_min_pulse_rate)

# What’s the range of values for diastolic blood pressure in all participants
dia_bp_data <- na.omit(public_health_data$BPDia)
dia_bp_range <- c(min(dia_bp_data), max(dia_bp_data))
paste("The diastolic blood pressure for all participants ranges from", 
      dia_bp_range[1], "to", dia_bp_range[2])

# What’s the variance and standard deviation for income among all participants?

income_var <- round(var(public_health_data$Income, na.rm = TRUE), digits = 4)
paste("The variance in income among all participant is", income_var)

income_std <- round(sd(public_health_data$Income, na.rm = TRUE), digits = 4)
paste("The variance in income among all participant is", income_std)

# Visualize the relationship between weight and height ?
# color points by gender
gen_colors <- c("male" = "blue", "female" = "pink")

plot(public_health_data$Weight, public_health_data$Height,
     main = "WEIGHT VS HEIGHT",
     xlab =  "WEIGHT",
     ylab = "HEIGHT",
     col = gen_colors[as.character(public_health_data$Gender)],
     pch = 20)
legend("bottomright", 
       title = "Gender",
       legend = c("Male", "Female"),
       col = c("blue", "pink"),
       pch = 20)

# color points by diabetes
diabetes_colors <- c("No"= "green", "Yes" = "red")

plot(public_health_data$Weight, public_health_data$Height,
     main = "WEIGHT VS HEIGHT",
     xlab =  "WEIGHT",
     ylab = "HEIGHT",
     col = diabetes_colors[as.character(public_health_data$Diabetes)],
     pch = 20)

legend("bottomright",
       title = "Diabetes Status",
       legend = c("No", "Yes"),
       col = c("green", "red"),
       pch = 20)

# color point by smoking status
smoking_colors <- c("Never"= "olivedrab", "Former" = "lightblue", "Current" = "orange")

plot(public_health_data$Weight, public_health_data$Height,
     main = "WEIGHT VS HEIGHT",
     xlab =  "WEIGHT",
     ylab = "HEIGHT",
     col = smoking_colors[as.character(public_health_data$SmokingStatus)],
     pch = 20)

legend("bottomright",
       title = "Smoking Status",
       legend = c("Current", "Never", "Former"),
       col = c("orange", "olivedrab", "lightblue"),
       pch = 20)

# Conduct t-test between the following variables and make conclusions on the relationship between them based on P-Value
# Age and Gender
age_gender_subset <- subset(public_health_data, 
                            subset = !(is.na(public_health_data$Gender) | is.na(public_health_data$Age)),
                            select = c("Age", "Gender"))

age_gender_t_test <- t.test(age_gender_subset$Age[age_gender_subset$Gender == "male"], 
                            age_gender_subset$Age[age_gender_subset$Gender == "female"])

paste("The p-value is", round(age_gender_t_test$p.value, digits = 4), ": This means that there is no significant difference in age between the two genders")

# BMI and Diabetes

bmi_diabetes_subset <- subset(public_health_data,
                              subset = !(is.na(public_health_data$BMI) | is.na(public_health_data$Diabetes)),
                              select = c("BMI", "Diabetes"))

bmi_diabetes_t_test <- t.test(bmi_diabetes_subset$BMI[bmi_diabetes_subset$Diabetes == "Yes"],
                              bmi_diabetes_subset$BMI[bmi_diabetes_subset$Diabetes == "No"])

paste("The p-value is", round(bmi_diabetes_t_test$p.value, digits = 4), ": This means there is a very significant difference in BMI between different Diabetes Status")

# Alcohol Year and Relationship Status

alch_year_rel_status <- subset(public_health_data,
                               subset = !(is.na(public_health_data$AlcoholYear) | is.na(public_health_data$RelationshipStatus)),
                               select = c("AlcoholYear", "RelationshipStatus"))

alch_year_rel_status_t_test <- t.test(alch_year_rel_status$AlcoholYear[alch_year_rel_status$RelationshipStatus == "Single"],
                                      alch_year_rel_status$AlcoholYear[alch_year_rel_status$RelationshipStatus == "Committed"])

paste("The p-value is", round(alch_year_rel_status_t_test$p.value, digits = 4), ": This means there is a very significant difference in AlcoholYear between different Relationship Status")




