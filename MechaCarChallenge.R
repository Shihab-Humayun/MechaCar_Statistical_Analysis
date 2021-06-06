# Load dplyr package
library(dplyr)

# Import and Read csv file as dataframe
mechacar_table <- read.csv(file='MechaCar_mpg.csv')

# Perform Linear Regression using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)

# Determine p-value and r-squared value for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))