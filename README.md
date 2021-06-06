# MechaCar_Statistical_Analysis

## Purpose
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset are vehicle weight, spoiler angle, and AWD.

![Screenshot 2021-06-06 101752](https://user-images.githubusercontent.com/49353083/120928224-be59cf80-c6b1-11eb-8b89-6d54fc5b34b6.png)

- Is the slope of the linear model considered to be zero? Why or why not?

 The slope of the linear model is not considered to be zero because the p-value equals 5.35e-11, according to the image below.
 
![Screenshot 2021-06-06 101816](https://user-images.githubusercontent.com/49353083/120928253-dcbfcb00-c6b1-11eb-87e3-1ada0373553a.png)

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model does predict the mpg of MechaCar prototypes effectively because the R-squared value is 0.7149, which is 71%.

## Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

According to the image below the current manufacturing data meet this design specification for manufacturing lots 1 and 2. However, it the design specification doesn't meet the requirement for lot 3 because the variance is at 170.286, which is well over 100 pounds per square inch.

![Screenshot 2021-06-06 105436](https://user-images.githubusercontent.com/49353083/120929195-1eeb0b80-c6b6-11eb-9546-e70879e151c4.png)


## T-Tests on Suspension Coils
The suspension coils PSI across all lots are very close to the PSI of the population, which is in the range of 1497.507 to 1500.053. The p-value is over 0.05 so there is not enough data to reject the test hypothesis.

### PSI For All Lots
![image](https://user-images.githubusercontent.com/49353083/120930466-54462800-c6bb-11eb-8c9a-529fac297690.png)

The PSI for Lot 1 shows that there isn't enough information to make a conclusion to reject the null hypothesis. The data has a normal distribution due to the p-value being greater than 0.05. 

### PSI For Lot 1
![image](https://user-images.githubusercontent.com/49353083/120930780-be130180-c6bc-11eb-92d0-a91a6d605be0.png)

The PSI for Lot 2 shows that there isn't enough information to make a conclusion to reject the null hypothesis. The data has a normal distribution due to the p-value being greater than 0.05. 

### PSI For Lot 2
![image](https://user-images.githubusercontent.com/49353083/120930919-59a47200-c6bd-11eb-9d27-d5d53eaa6fc4.png)

The PSI for Lot 3 shows that there isn't enough information to make a conclusion to reject the null hypothesis. The data has a skewed distribution due to the p-value being less than 0.05. 

### PSI For Lot 3
![image](https://user-images.githubusercontent.com/49353083/120930938-7345b980-c6bd-11eb-9db2-649209f99ffd.png)

## Study Design: MechaCar vs Competition

The study design will compare the MechaCar's highways fuel efficiency to the cars longevity against the competition. 

- What metric or metrics are you going to test?
The metric we will have to test is to analyze the miles per gallon for all of the cars from MechaCar and the competitors.

- What is the null hypothesis or alternative hypothesis?
The null hypothesis is that having a lower fuel efficieny rating does not affect the longevity of a car.

- What statistical test would you use to test the hypothesis? And why?
We would use a t-test to test the hypothesis to determine if the p-value has a significant value.

- What data is needed to run the statistical test?
The mpg and the vehicle_length needs a statistical test.
