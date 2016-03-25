#load dplyr library
library(dplyr)
#read data set
power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")
#filtering data set
power_sort <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 
#create new Date_time column as Date and Time
powsort$Date_time<-strptime(paste(powsort$Date,powsort$Time),"%d/%m/%Y %H:%M:%S")
#create png file
png("plot4.png",width=480,height=480)
#set graphic device dimension
par(mfrow=c(2,2))
#plot 1st graph
plot(powsort$Date_time,powsort$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
#plot 2nd graph
plot(powsort$Date_time,powsort$Voltage,type="l",ylab="Global Active Power (kilowatts)",xlab="datetime")
#plot 3rd graph
plot(powsort$Date_time,powsort$Sub_metering_1,type="l",ylab = "Energy sub metering",xlab="")
lines(powsort$Date_time,powsort$Sub_metering_2,col="red")
lines(powsort$Date_time,powsort$Sub_metering_3,col="blue")
legend("topright",lty=1,legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))
#plot 4th graph
plot(powsort$Date_time,powsort$Global_reactive_power,type="l",xlab="datetime",ylab = "Global_reactive_power")
dev.off()
