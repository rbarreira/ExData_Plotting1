#assuming we are already at working directory
#load data
source('read_data.R')

# opens device
png(filename='plot1.png',width=480,height=480,units='px')

# plot histogram
hist(data$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
dev.off()