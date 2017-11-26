## Data Science Specialization - Exploratory Data Analysis - Week 1
## Retrieve and Format Data

# load libraries
library(readr)

# read data
pwr <- read_csv2("household_power_consumption.txt", na=c("?", ""))

## format data and subset data
# date to character class
pwr[,"Date"] <- as.character(pwr$Date)

# subset on assignment dates
pwr <- pwr[pwr$Date=="1/2/2007" | pwr$Date=="2/2/2007",]

# new variable combining date and timepwr
pwr["date_time"] <- paste(as.character(pwr$Date), as.character(pwr$Time))

# change class of date_time to POSIXt
pwr[["date_time"]] <- strptime(pwr$date_time, format = "%d/%m/%Y %H:%M:%S")


