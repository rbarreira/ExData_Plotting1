#assuming we are already at working directory
#load data
source('read_data.R')

#convert date and time
data$DateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# opens device
png(filename='plot3.png',width=480,height=480,units='px')

# plot 
linecols<-c('black','red','blue')
labels<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')

plot(data$DateTime,data$Sub_metering_1,type='l',col='black',xlab='',ylab='Energy sub metering')
lines(data$DateTime,data$Sub_metering_2,col='red')
lines(data$DateTime,data$Sub_metering_3,col='blue')
 
legend('topright',legend=labels, col=c('black','red','blue'), lty='solid')

# Turn off devices
dev.off()