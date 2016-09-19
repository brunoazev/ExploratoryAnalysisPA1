plot4 <- function(){
  #Reading the usefull data
  source("readData.R")
  
  dataToPlot <- readData()
  
  #Plotting
  par(mfrow=c(2,2))
  #plotting
  #1
  with(dataToPlot,plot(Datetime,Global_active_power,pch="",xlab = "",ylab="Global Active Power"))
  with(dataToPlot,lines(Datetime,Global_active_power))
  #2
  with(dataToPlot,plot(Datetime,Voltage,pch="",xlab = "datetime",ylab="Voltage"))
  with(dataToPlot,lines(Datetime,Voltage))
  #3
  with(dataToPlot,plot(Datetime,Sub_metering_1,type="l",xlab = "Energy sub metering",ylab="",ylim=c(0,40)))
  with(dataToPlot,lines(Datetime,Sub_metering_2,type="l",col="red"))
  with(dataToPlot,lines(Datetime,Sub_metering_3,type="l",col="blue"))
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=1,cex=.75,ncol=1)
  #4
  with(dataToPlot,plot(Datetime,Global_reactive_power,pch="",xlab = "datetime"))
  with(dataToPlot,lines(Datetime,Global_reactive_power))
  
  #Making the png
  dev.copy(png,'plot4.png')
  dev.off()
}