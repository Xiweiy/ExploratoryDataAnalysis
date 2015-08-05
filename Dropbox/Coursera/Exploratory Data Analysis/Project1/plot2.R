data = read.table('household_power_consumption.txt', sep=";", header=T, stringsAsFactors= F)
data1 = data[data$Date %in% c('1/2/2007', '2/2/2007'),]
data1$Global_active_power = as.numeric(data1$Global_active_power)
data1$DateTime = strptime(paste(data1$Date, data1$Time), format = "%d/%m/%Y %H:%M:%S")
png(filename = 'plot2.png')
plot(data1$DateTime, data1$Global_active_power, type = 'n', ylab = 'Global Active Power (kilowatts)', xlab = " ")
lines(data1$DateTime, data1$Global_active_power)
dev.off()


