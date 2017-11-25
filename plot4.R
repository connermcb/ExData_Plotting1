## Data Science Specialization - Exploratory Data Analysis - Week 1
## Plot 4: Multiple Time-Series Plots

# open png plot device
png("plot4.png", width = 480, height = 480, units = "px")

# format plot panel dimensions = 2x2
par(mfcol=c(2,2))

## Plot 1 ----------------------------------------------------------
# global active power time series line plot
with(pwr2, plot(date_time, Global_active_power,
                type="l",
                ylab = "Global Active Power",
                xlab = NA)
)

## Plot 2 ------------------------------------------------------------
# plot panel and `Sub_metering_1` line
with(pwr2, plot(date_time, Sub_metering_1,
                type="l",
                ylab = "Energy sub metering",
                xlab = NA)
)

# add `Sub_metering_2` line
with(pwr2, lines(date_time, Sub_metering_2, col="red"))


# add `Sub_metering_3` line
with(pwr2, lines(date_time, Sub_metering_3, col="blue"))

## Plot 3 ----------------------------------------------------------
# global voltage time series line plot
with(pwr2, plot(date_time, Voltage,
                type="l",
                ylab = "Voltage",
                xlab = "datetime")
)

## Plot 4 ----------------------------------------------------------
# global reactive power time series line plot
with(pwr2, plot(date_time, Global_reactive_power,
                type="l",
                ylab = "Global_reactive_power",
                xlab = "datetime")
)

# close device
dev.off()
