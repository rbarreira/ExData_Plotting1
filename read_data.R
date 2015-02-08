# Get data file
  
fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile='./power_consumption.zip',method='curl')
unzip('power_consumption.zip')

#store data in data frame
data<-read.table(file,header=TRUE, sep=";",na.strings="?")

#filter data by dates
data<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]

