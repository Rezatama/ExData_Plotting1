library(dplyr)

power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")

power_sort <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 
powsort$Date_time<-strptime(paste(powsort$Date,powsort$Time),"%d/%m/%Y %H:%M:%S")

png("plot3.png",width=480,height=480)
plot(powsort$Date_time,powsort$Sub_metering_1,type="l",ylab = "Energy sub metering",xlab="")
lines(powsort$Date_time,powsort$Sub_metering_2,col="red")
lines(powsort$Date_time,powsort$Sub_metering_3,col="blue")
legend("topright",lty=1,legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))
dev.off()