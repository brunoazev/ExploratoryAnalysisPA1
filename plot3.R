plot3 <- function(){
  #Reading the usefull data
  source("readData.R")
  
  ylab_text="Energy sub metering"
  xlab_text=""
  
  dataToPlot <- readData()
  #Plotting
  with(dataToPlot,plot(Datetime,Sub_metering_1,type="l",xlab = xlab_text,ylab=ylab_text,ylim=c(0,40)))
  with(dataToPlot,lines(Datetime,Sub_metering_2,type="l",col="red"))
  with(dataToPlot,lines(Datetime,Sub_metering_3,type="l",col="blue"))
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=1,cex=.75,ncol=1)
  #Making the png
  dev.copy(png,'plot3.png')
  dev.off()
}