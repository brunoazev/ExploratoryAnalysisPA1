plot1 <- function(){
  #reading the usefull data
  source("readData.R")
  dataToPlot <- readData()
  #plotting
  hist(dataToPlot$Global_active_power,col="red",main="Global Active Power",xlab ="Global Active Power (kilowatts)")
  #making the png
  dev.copy(png,'plot1.png')
  dev.off()
}