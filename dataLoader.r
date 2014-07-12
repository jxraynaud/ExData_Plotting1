#####################################################################################################################

#               Contain a function that load a zip file from the given url (default is the correct url)
#               Unzip it read it and return a data frame with the raw data. 
#               It might be long. 
#               I might change it to only load the needed data if I have the time.

#####################################################################################################################

dataLoader <- function(url="http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",file="household_power_consumption.txt") {
        temp <- tempfile() # create a temp zip archive on the local system, the zip archive will be erase once used
        download.file(url,temp) 
        rawdata <- read.table(unz(temp, file),sep=";",header=TRUE, na.strings = "?") #read data in the file from the downloaded zip archive
        unlink(temp)    # remove the file.
        return(rawdata)
}
