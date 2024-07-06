# Data Analysis Project Script

anole <- read.csv("data/cox_functional_ecology_data.csv")
ovx <- subset(anole, Treat == "OVX")
sham <- subset(anole, Treat == "SHAM")

# Initial Data Exploration
summary(ovx)
summary(sham)

# Growth (mm) five number summary for ovx:
# min: -1.0
# 1st Quart: 2.0
# Median: 2.0
# 3rd Quart: 3.0
# Max: 7.0
# mean is 2.309
# sd is 1.274607

# Plotting the OVX Growth data
sd(ovx$Growth..mm., na.rm = TRUE)
par(mfrow = c(1, 2))

hist(ovx$Growth..mm., main = "Change in Body Length of OVX Lizards", xlab = "Growth (mm)", col = "blue")

boxplot(ovx$Growth..mm., main = "Change in Body Length of OVX Lizards", ylab = "Growth (mm)", col = "green")


# Plotting the SHAM growth data
sd(sham$Growth..mm., na.rm = TRUE)

hist(sham$Growth..mm., main = "Change in Body Length of SHAM Lizards", xlab = "Growth (mm)", col = "cyan")

boxplot(sham$Growth..mm., main = "Change in Body Length of SHAM Lizards", ylab = "Growth (mm)", col = "green")



# Calculating T test statistic:

# Calling ovx group 1 and sham group 2
# T_ts
# ovx: n = 139, (140 observations - 1 NA)
# sham: n = 121, (122 observations - 1 NA)

(2.309 - 1.426) # 0.883

(1.274607^2) / (139) + (1.042156^2) / (121) # 0.02066388

sqrt(0.02066388) # 0.1688002

0.883 / 0.1437494 # 6.142634

# T_ts = 6.142634
# Df = 120



# P-value Calculation
pt(6.142634, df = 120, lower.tail = FALSE)

# one-sided, right-tailed t test
# P-value = 5.445521e-09
# significance level of 5% or 0.05 (alpha)
# p-value < 0.05


# Confidence interval calculation: 95% CI

# Calculate t*
qt(.025, df = 120)

# t* = -1.97993

-1.97993 * 0.1437494 # equals m (margin of error) -> -0.2846137
(2.309 - 1.426) + (-0.2846137) # 0.5983863, lower bound of 95% CI
(2.309 - 1.426) - (-0.2846137) # 1.167614, upper bound of 95% CI
