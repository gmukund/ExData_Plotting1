## Exploratory Data Analysis - Project 1 - Plot 3

## Load data file

datafile <- read.table(file="household_power_consumption.txt", 
                       sep=";",header=TRUE, stringsAsFactors=FALSE, 
                       na.strings="?")

## subset dates to be mapped

data<- datafile[datafile$Date %in% c("1/2/2007","2/2/2007"),]

## extract column and convert to number format
gap <- as.numeric(data$Global_active_power)

## combine data and time and convert to date tiem format

dt<- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

## plot graphs

png("plot3.png", height=480, width=480)

plot(dt, data$Sub_metering_1, type="l", ylab="Energy Sub Metering", xlab="") 

lines (dt, data$Sub_metering_2, type ="l", col="red")

lines (dt, data$Sub_metering_3, type ="l", col="blue")

legend("topright", col=c("black","red","blue"),  lty=1, lwd=2,
       legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3")
)

## save to file

dev.off()
