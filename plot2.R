## Data Science Specialization - Exploratory Data Analysis - Week 1
## Plot 2: Global Active Power Time Series Line Plot

# open png plot device
png("plot2.png", width = 480, height = 480, units = "px")

# global active power time series line plot
with(pwr2, plot(date_time, Global_active_power,
                type="l",
                ylab = "Global Active Power (kilowatts)",
                xlab = NA)
     )

# close device
dev.off()
