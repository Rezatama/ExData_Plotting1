#load dplyr library
library(dplyr)
#read dataset
power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")
#filtering dataset
power_sort <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 
#create png file
png("plot1.png",width=480,height=480)
#create histogram
hist(powsort$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab="Frequency",c="red")
dev.off()
