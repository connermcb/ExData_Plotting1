## Data Science Specialization - Exploratory Data Analysis - Week 1
## Plot 3: Sub_metering Time Series Line Plots

# open png plot device
png("plot3.png", width = 480, height = 480, units = "px")

# plot panel and `Sub_metering_1` line
with(pwr, plot(date_time, as.numeric(Sub_metering_1),
                type="l",
                ylab = "Energy sub metering",
                xlab = NA)
  )

# add `Sub_metering_2` line
with(pwr, lines(date_time, as.numeric(Sub_metering_2), col="red"))


# add `Sub_metering_3` line
with(pwr, lines(date_time, as.numeric(Sub_metering_3), col="blue"))

# add legend
legend("topright", lty=c(1,1,1), lwd=c(1.5, 1.5), col=c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# close device
dev.off()
