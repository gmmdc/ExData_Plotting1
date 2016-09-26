source("./load_data.R")

png(filename="plot3.png")


with(df, plot(x = Time, y = Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(df, lines(x = Time, y = Sub_metering_2, col="red"))
with(df, lines(x = Time, y = Sub_metering_3, col="blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
