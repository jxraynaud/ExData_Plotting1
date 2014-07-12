#########################################################################################################################

#               Maybe I have done too many C projects in my life but I'm confused if I don't have a main function
#               Simply run the main() function and it will call all the needed files and functions

#########################################################################################################################

main <- function(){
        source("dataLoader.r")
        source("dataProcessing.r")
        source("plot1.r")
        source("plot2.r")
        source("plot3.r")
        source("plot4.r")
        Sys.setlocale(category = "LC_TIME", locale = "C")
        rawdata <- dataLoader()
        data <- dataProcessing(rawdata)
        plot1(data)
        plot2(data)
        plot3(data)
        plot4(data)
}
