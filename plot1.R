## Data Science Specialization - Exploratory Data Analysis - Week 1
## Plot 1: Global Active Power Histogram

# get data getter
source(data_formatter.R)

# open png plot device
png("plot1.png", width = 480, height = 480, units = "px")

# plot
hist(as.numeric(pwr$Global_active_power),
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

# close device
dev.off()
