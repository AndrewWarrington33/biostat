#Data Analysis Project Script

anole <- read.csv("cox_functional_ecology_data.csv")
ovx <- subset(anole, Treat == "OVX")
sham <- subset(anole, Treat == "SHAM")

#Initial Data Exploration
summary(ovx)
summary(sham)

#Growth (mm) five number summary for ovx:
