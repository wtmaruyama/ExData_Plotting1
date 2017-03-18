source("load_data.R")

data <- loadData()

png(filename='plot4.png', width=480, height=480, units='px')

# mfrow=c(nrows, ncols) to create a matrix of nrows x ncols plots
par(mfcol=c(2,2))

plot(data$DateTime, as.numeric(data$Global_active_power),type='l',ylab="Global Active Power", xlab="")

plot(data$DateTime, as.numeric(data$Sub_metering_1),type='l', xlab="",ylab ="Energy sub metering")
lines(data$DateTime, as.numeric(data$Sub_metering_2),type='l', col='red')
lines(data$DateTime, data$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"),bty = "n")

plot(data$DateTime, as.numeric(data$Voltage),type='l', ylab="Voltage",xlab="datetime" )

plot(data$DateTime, as.numeric(data$Global_reactive_power),type='l', ylab="Global_reactive_power",xlab="datetime" )

dev.off()