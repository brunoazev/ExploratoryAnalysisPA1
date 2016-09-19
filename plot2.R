plot2 <- function(){
  #reading the usefull data
  source("readData.R")
  dataToPlot <- readData()
  #plotting
  with(dataToPlot,plot(Datetime,Global_active_power,pch="",xlab = "",ylab="Global Active Power (kilowatts)"))
  with(dataToPlot,lines(Datetime,Global_active_power))
  #making the png
  dev.copy(png,'plot2.png')
  dev.off()
}