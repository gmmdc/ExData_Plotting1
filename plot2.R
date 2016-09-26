source("./load_data.R")

png(filename="plot2.png")

with(df, plot(x = Time, Global_active_power, type = "l", ylab = "Global Active Power (kilowats)", xlab = ""))

dev.off()
