## Data Science Specialization - Exploratory Data Analysis - Week 1
## Plot 1: Global Active Power Histogram

# open png plot device
png("plot1.png", width = 480, height = 480, units = "px")

# plot
hist(pwr2$Global_active_power/1000, breaks=16,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# close device
dev.off()
