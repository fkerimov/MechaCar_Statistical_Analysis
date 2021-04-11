# Load dplyr package
library(dplyr)

# Import and read the csv
MechaCar_mpg_table <- read.csv("resources/MechaCar_mpg.csv")

# Perform multiple linear regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_table)

# Get the p-value and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = MechaCar_mpg_table))
