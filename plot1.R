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
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# generate the png file.
png("plot1.png", width=480 , height=480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()