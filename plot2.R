## Data Science Specialization - Exploratory Data Analysis - Week 1
## Plot 2: Global Active Power Time Series Line Plot

# get data getter
source(data_formatter.R)

# open png plot device
png("plot2.png", width = 480, height = 480, units = "px")

# global active power time series line plot
with(pwr, plot(date_time, as.numeric(Global_active_power),
                type="l",
                ylab = "Global Active Power (kilowatts)",
                xlab = NA)
     )

# close device
dev.off()
