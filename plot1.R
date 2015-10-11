dtfile <- "../household_power_consumption.txt"
dt <- read.table(dtfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdt <- dt[dt$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepwr <- as.numeric(subsetdt$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalactivepwr, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()