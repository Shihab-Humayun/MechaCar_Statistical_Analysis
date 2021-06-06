# Load dplyr package
library(dplyr)

# Import and Read csv file as dataframe
mechacar_dataframe <- read.csv(file='MechaCar_mpg.csv')

# Perform Linear Regression using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_dataframe)

# Determine p-value and r-squared value for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_dataframe))

# Import and Read csv file as table
suspension_table <- read.csv(file='Suspension_Coil.csv')

# Use the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil PSI column
total_summary <- suspension_table %>% data.frame()%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),)

# Use the group_by() and  summarize() functions to group each manufacturing lot by the mean, median, variance, and standard 
# deviation of the suspension coil PSI column
lot_summary <- suspension_table %>%group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
