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

# Use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the 
# population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI,mu=1500)

# Use the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspension_table, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(suspension_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(suspension_table, Manufacturing_Lot=="Lot3")$PSI,mu=1500)