#load dplyr library
library(dplyr)
#read dataset
power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")
#filtering dataset
power_sort <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 
#create new Date_time column as Date and Time
powsort$Date_time<-strptime(paste(powsort$Date,powsort$Time),"%d/%m/%Y %H:%M:%S")
#create png file
png("plot2.png",width=480,height=480)
#create plot
plot(powsort$Date_time,powsort$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
