# Loading data
loadData <- function() {
  file <- file.path(getwd(), "exdata_data_household_power_consumption/household_power_consumption.txt")
  all_data <- read.csv(file, sep=";", stringsAsFactors = FALSE)
  
  dates <- as.Date(all_data$Date,format="%d/%m/%Y") 
  validDates <- dates >= as.Date("2007-02-01") & dates <= as.Date("2007-02-02") 
  data <- all_data[validDates,]
  ## Converting dates
  data$DateTime<- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  return(data)
}
