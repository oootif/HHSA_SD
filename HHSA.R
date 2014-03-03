setwd("/Users/Tiff/Desktop/Harnessing_4_diseases/data/")
hdata <- read.csv("HHSA_3450_Demog_Beh.csv", sep=",", header=T, check.names=F)
my2010 <- c(
"SRA Name",
"2010 CHD Deaths Rate",
"2010 Stroke Deaths Rate",
"2010 Asthma Deaths Rate",
"2010 COPD Deaths Rate",
"2010 Diabetes Deaths Rate",
"2010 Cancer Deaths Rate"
)
my2011 <- c(
"2011 CHD Deaths Rate",
"2011 Stroke Deaths Rate",
"2011 Asthma Deaths Rate",
"2011 COPD Deaths Rate",
"2011 Diabetes Deaths Rate",
"2011 Cancer Deaths Rate"
)
beh2011 <-c(
"2011 Median Household Income",
"2011 Population Below Federal Poverty Level",
"2011 Population with a Bachelor's Degree or Higher",
"Exercise at Home 2+Times per Week - Ages 18+ (2013)",
"Presently Controlling Diet - Ages 18+ (2013)")
hd2010 <- hdata[my2010]
hd2011 <- hdata[my2011]
beh2011 <- hdata[beh2011]

library(reshape2)
library("ggplot2")
ggplot(my2010)
