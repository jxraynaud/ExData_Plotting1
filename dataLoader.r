#####################################################################################################################

#               Contain a function that load a zip file from the given url (default is the correct url)
#               Unzip it read it and return a data frame with the raw data. 
#               It might be long. 

#####################################################################################################################

dataLoader <- function(url="http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",file="household_power_consumption.txt") {
        temp <- tempfile()
        download.file(url,temp)
        print("Download ok ! Please wait for the raw data to be loaded.")
        rawdata <- read.table(unz(temp, file),sep=";",header=TRUE, na.strings = "?")
        print("Raw data loaded ! Please wait for the raw data to be processed.")
        unlink(temp)      
        return(rawdata)
}
