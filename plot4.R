plot4 <- function(data){
        png("plot4.png", width=480 , height=480)
        par(mfrow=c(2,2))
        plot(data$Time,data$Global_active_power,type="l",xlab="",ylab="Global Activity Power (kilowatts)")
        plot(data$Time,data$Voltage,type="l",xlab="datetime",ylab="Voltage")
        plot(data$Time,data$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
        lines(data$Time,data$Sub_metering_2, col="red")
        lines(data$Time,data$Sub_metering_3, col="blue")
        legend("topright",lty= "solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        plot(data$Time,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
        dev.off()
}