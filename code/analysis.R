#Data Analysis Project Script

anole <- read.csv("cox_functional_ecology_data.csv")
ovx <- subset(anole, Treat == "OVX")
sham <- subset(anole, Treat == "SHAM")

#Initial Data Exploration
summary(ovx)
summary(sham)

#Growth (mm) five number summary for ovx:
#min: -1.0
#1st Quart: 2.0
#Median: 2.0
#3rd Quart: 3.0
#Max: 7.0
#mean is 2.309
#sd is 1.274607

sd(ovx$Growth..mm.,na.rm = TRUE) par(mfrow=c(1,2))

hist(ovx$Growth..mm., main="Change in Body Length of OVX Lizards", xlab="Growth (mm)", col="blue")

boxplot(ovx$Growth..mm., main="Change in Body Length of OVX Lizards", ylab="Growth (mm)", col="green")

#The histogram and boxplot visualizations indicate a unimodal, right-skewed distribution. There are at least 3 high outliers and at least

2 low outliers.

#The center appears to be around 2.0 mm of growth, with a mean value of 2.309 mm, and a median value of 2.0 mm of growth. 
#The mean being of higher value than the median is also indicative of a right-skewed distribution.

#Growth (mm) 5 number summar for sham:

#Min -1.0

#1st Quart: 1.0

#Median: 1.0

#3rd Quart: 2.0

#Max: 4.0

#mean is 1.426

#sd is 1.042156

sd(sham$Growth..mm.,na.rm=TRUE)

hist(sham$Growth..mm., main="Change in Body Length of SHAM Lizards", xlab="Growth (mm)", col="cyan")

boxplot(sham$Growth..mm., main="Change in Body Length of SHAM Lizards", ylab="Growth (mm)", col="green")

#The histogram and boxplot visualizations indicate the growth for the sham group follows a bimodal distribution. 
#There is at least one high outlier and one low outlier. There are two centers, one around 1.0 mm and a center closer to 2.0 mm. 
#The growth for sham group has a mean growth of 1.426 mm and a median growth of 1.0 mm. #Hypothesis Test and Confidence Interval

# H_0: mu_ovx = mu_sham

# H_a: mu_ovx > mu_sham

# Is there sufficient evidence to conclude that the mean growth of the ovx group is significantly higher than the mean sham growth?