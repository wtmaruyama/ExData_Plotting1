source("load_data.R")

data <- loadData()

png(filename='plot2.png', width=480, height=480, units='px')

plot(data$DateTime, as.numeric(data$Global_active_power),type='l',ylab="Global Active Power (Kilowatts)", xlab="")

dev.off()