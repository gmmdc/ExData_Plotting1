source("./load_data.R")

png(filename="plot4.png")

## Set the plot layout
par(mfrow = c(2,2))

with(df, plot(Time, Global_active_power, type = "l", ylab = "Global Active Power", xlab = ""))
with(df, plot(Time, Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))

with(df, plot(x = Time, y = Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(df, lines(x = Time, y = Sub_metering_2, col="red"))
with(df, lines(x = Time, y = Sub_metering_3, col="blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

with(df, plot(Time, Global_reactive_power, type = "l", xlab = "datetime"))

dev.off()
