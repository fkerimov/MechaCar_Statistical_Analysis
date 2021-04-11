# Load package
library(tidyverse)
library(dplyr)

# Import and read the csv
MechaCar_mpg_table <- read.csv("resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform multiple linear regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_table)

# Get the p-value and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = MechaCar_mpg_table))

# Import and read the suspension_coil csv
suspension_coil_table <- read.csv("resources/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Get mean, median, variance, and SD of the PSI column
total_summary <- suspension_coil_table %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI),
            SD = sd(PSI),
            .groups = "keep")

# Group manufacturing lots by center and spread of of the PSI column
lot_summary <- suspension_coil_table %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI),
            SD = sd(PSI),
            .groups = "keep")

# Visualize spread
plt <- ggplot(suspension_coil_table, aes(x = Manufacturing_Lot, y = PSI))
plt + geom_boxplot()
