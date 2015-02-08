#assuming we are already at working directory
#load data
source('read_data.R')

#convert date and time
data$DateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# opens device
png(filename='plot2.png',width=480,height=480,units='px')

# plot histogram
plot(data$DateTime,data$Global_active_power,ylab='Global Active Power (kilowatts)',xlab='',type='l')

# Turn off devices
dev.off()