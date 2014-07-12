########################################################################################################################
#
#               Format the raw Data:
#                       - Subset the rawData to extract the needed date (might be superfluous if dataLoader is modyfied)
#                       - Format Date and Time column in the proper R date/time format.
#
########################################################################################################################


dataProcessing <- function(rawdata){
        data <- subset(rawdata, Date == "1/2/2007" | Date =="2/2/2007")
        data$Time <- strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
        data$Date <- as.Date(data$Date, format ="%d/%m/%Y")
        print("Date and Time columns formated.")
        return(data)
}