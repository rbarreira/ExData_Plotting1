#assuming we are already at working directory
#load data
source('read_data.R')

#convert date and time
data$DateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# opens device
png(filename='plot4.png',width=480,height=480,units='px')

# plot 
# make 4 plots
par(mfrow=c(2,2))

plot(data$DateTime,data$Global_active_power,ylab='Global Active Power',xlab='',type='l')

plot(data$DateTime,data$Voltage,xlab='datetime',ylab='Voltage',type='l')

plot(data$DateTime,data$Sub_metering_1,type='l',col='black',xlab='',ylab='Energy sub metering')
lines(data$DateTime,data$Sub_metering_2,col='red')
lines(data$DateTime,data$Sub_metering_3,col='blue')

plot(data$DateTime,data$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')
 

# Turn off devices
dev.off()