elect_power <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data <- subset(elect_power, Date %in% c("1/2/2007","2/2/2007"))
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power", ylab="Frequency", col="Red")

