data = read.table('household_power_consumption.txt', sep=";", header=T, stringsAsFactors= F)
data1 = data[data$Date %in% c('1/2/2007', '2/2/2007'),]
data1$DateTime = strptime(paste(data1$Date, data1$Time), format = "%d/%m/%Y %H:%M:%S")
png(filename = 'plot3.png')
plot(data1$DateTime,data1$Sub_metering_1, type='n', ylab = 'Energy sub metering', xlab = " ")
lines(data1$DateTime,data1$Sub_metering_1)
lines(data1$DateTime,data1$Sub_metering_2, col='red')
lines(data1$DateTime,data1$Sub_metering_3, col='blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty = c(1,1,1), col = c('black', 'red', 'blue'))
dev.off()

