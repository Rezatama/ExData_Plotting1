library(dplyr)

power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")

power_sort <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 
powsort$Date_time<-strptime(paste(powsort$Date,powsort$Time),"%d/%m/%Y %H:%M:%S")

png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(powsort$Date_time,powsort$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

plot(powsort$Date_time,powsort$Voltage,type="l",ylab="Global Active Power (kilowatts)",xlab="datetime")

plot(powsort$Date_time,powsort$Sub_metering_1,type="l",ylab = "Energy sub metering",xlab="")
lines(powsort$Date_time,powsort$Sub_metering_2,col="red")
lines(powsort$Date_time,powsort$Sub_metering_3,col="blue")
legend("topright",lty=1,legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))

plot(powsort$Date_time,powsort$Global_reactive_power,type="l",xlab="datetime",ylab = "Global_reactive_power")
dev.off()