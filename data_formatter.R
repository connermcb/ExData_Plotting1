## Data Science Specialization - Exploratory Data Analysis - Week 1
## Retrieve and Format Data

# download and unzip data
temp <- tempfile()
download.file(
  "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
  temp)
con <- unz(temp, "household_power_consumption.txt")
data <- read.csv(con, sep=";")
unlink(temp)

closeAllConnections()

## format data and subset data
# date to character class
data[,"Date"] <- as.character(data$Date)

# subset on assignment dates
data <- subset(data, Date %in% c("2/1/2007", "2/2/2007"))

# change class of numeric data
for( i in 3:9){
  data[, i] <- as.numeric(data[, i])
}

# new variable combining date and time
data["date_time"] <- paste(as.character(data$Date), as.character(data$Time))

# change class of date_time to POSIXt
data[["date_time"]] <- strptime(data$date_time, format = "%d/%m/%Y %H:%M:%S")

## Calls to plotting functions
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
