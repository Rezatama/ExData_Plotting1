library(dplyr)

power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")

power_sort <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 
powsort$Date_time<-strptime(paste(powsort$Date,powsort$Time),"%d/%m/%Y %H:%M:%S")

png("plot2.png",width=480,height=480)
plot(powsort$Date_time,powsort$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()