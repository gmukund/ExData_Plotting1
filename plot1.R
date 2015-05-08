## Exploratory Data Analysis - Project 1 - Plot 1

## Load data file

datafile <- read.table(file="household_power_consumption.txt", 
                        sep=";",header=TRUE, stringsAsFactors=FALSE, 
                       na.strings="?")

## subset dates to be mapped

data<- datafile[datafile$Date %in% c("1/2/2007","2/2/2007"),]

## extract column and convert to number format

gap <- as.numeric(data$Global_active_power)

## plot histogram

hist(gap, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")

## save to file

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()



