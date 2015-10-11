dtfile <- "../household_power_consumption.txt"
dt <- read.table(dtfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdt <- dt[dt$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subsetdt$Date, subsetdt$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalactivepwr <- as.numeric(subsetdt$Global_active_power)
submtr1 <- as.numeric(subsetdt$Sub_metering_1)
submtr2 <- as.numeric(subsetdt$Sub_metering_2)
submtr3 <- as.numeric(subsetdt$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, submtr1, type="l", ylab="Energy Sub Metering", xlab="")
lines(datetime, submtr2, type="l", col="red")
lines(datetime, submtr3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()