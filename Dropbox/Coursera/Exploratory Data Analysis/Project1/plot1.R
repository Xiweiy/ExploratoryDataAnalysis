data = read.table('household_power_consumption.txt', sep=";", header=T, stringsAsFactors= F)
data1 = data[data$Date %in% c('1/2/2007', '2/2/2007'),]
data1$Global_active_power = as.numeric(data1$Global_active_power)
png(filename = 'plot1.png')
hist(data1$Global_active_power,  main = 'Global Active Power', col='red', xlab = 'Global Active Power (kilowatts)')
dev.off()




