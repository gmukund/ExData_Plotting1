

## Exploratory Data Analysis - Project 1 - Plot 2

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

## plot graph
png("plot2.png", height=480, width=480)

plot(dt,gap, type ="l", xlab="", ylab="Global Active Power(Kilowatts")

## save to file

dev.off()



