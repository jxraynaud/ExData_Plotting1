########################################################################################################################
#               First we check if a data frame named data exist containing the processed data.
#                       If it's not the case then we load it using dataLoader.r and dataProcessing.r
#               Then we plot the desired graph on screen and on a png file.
########################################################################################################################



if(!(exists("data") && is.data.frame(get("data")))){
        source("dataLoader.r") # generate an error if the working directory don't have the proper file
        source("dataProcessing.r") # same
        rawData <- dataLoader() 
        data <- dataProcessing(rawData)
        rm(rawData) # remove the rawData from memory
}

# generate the graph on the screen.
par(mfrow=c(2,2))
plot(data$Time,data$Global_active_power,type="l",xlab="",ylab="Global Activity Power (kilowatts)")
plot(data$Time,data$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(data$Time,data$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(data$Time,data$Sub_metering_2, col="red")
lines(data$Time,data$Sub_metering_3, col="blue")
legend("topright",lty= "solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(data$Time,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")


# generate the png file.
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
