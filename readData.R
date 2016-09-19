readData <- function(){
library(dplyr)
library(lubridate)

#Loads the data
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)

#Processes and cleans the daa
data$Date <- dmy(data$Date)
data <- subset(data,Date >= ymd("2007-02-01") & Date <= ymd("2007-02-02"))

#       Adding new columns to help with the plots
data$Datetime <- data$Date + hms(data$Time)
#data$Time <- strptime(data$Time,'%H:%M:%S')

data$Global_active_power <- as.numeric(as.character(data$Global_active_power))
data$Global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
data$Voltage <- as.numeric(as.character(data$Voltage))
data$Global_intensity <- as.numeric(as.character(data$Global_intensity))
data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1))
data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))
data$Sub_metering_3 <- as.numeric(as.character(data$Sub_metering_3))
#week_days <- c("Sun","Mon", "Tue","Wed", "Thu", "Fri","Sat")
#data["weekday"] = as.factor(week_days[wday(data$Date)])
 
#a <- data$Date + hms(format(data$Time,'%T'))
#data$Datetime <- a
data
}