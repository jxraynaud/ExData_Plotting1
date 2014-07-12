plot2 <- function(data)
        {
        png("plot2.png", width=480 , height=480)
        plot(data$Time,data$Global_active_power,type="l",xlab="",ylab="Global Activity Power (kilowatts)")
        dev.off()
}