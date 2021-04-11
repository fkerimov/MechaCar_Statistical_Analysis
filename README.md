# MechaCar_Statistical_Analysis

## Project Overview

## Methodology

## Analysis

### Linear Regression to Predict MPG
#### Results
![linear_regression_results](images/mpg_linear_regression.png)

Assuming normal significance levels for variables (0.05), the results demonstrate that vehicle length, ground clearance, and intercept are statistically unlikely to produce random ammounts of variance to the mpg values in the dataset. 

The slope of the linear model is not zero because the coefficients are not equal to zero. 

While the R-Squared of the model suggests that 71% of predictions will be correct using this model, the statistical significance of the intercept is evidence that there is a lack of significant variables in the linear regression, i.e. the model is overfitted and fails to generalize and predict MechaCar prototypes correctly. 

### Summary Statistics on Suspension coils
#### Results
##### Summary of total manufacturing lots
![total_summary](images/coilPSI_total_stat_summary.png)

##### Summary by manufacturing lots
![lot_summary](images/coilPSI_lot_stat_summary.png)

Given that the design specification of MechaCar suspension coils require variance of suspension coils below 100 PSI, the results demonstrate that the manufacturing lots meet the specification in accounted in total. However, the slight difference between the mean and the median in the total summary suggests that the distribution of data is skewed to the left, which suggests the presence of outliers. Further analysis of individual lots demonstrates high variance of the suspension coils as well as the presence of outliers in the suspension coils of manufactoring Lot 3. Lot 3 does not meet the design specifications with a variance of 170 in the spread, 70 PSI over the limit. Boxplot below demonstrates the the spread of data in each lot and the outliers in Lot 3. 
![Rplot](images/Rplot.png)
