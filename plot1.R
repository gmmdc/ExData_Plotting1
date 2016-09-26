source("./load_data.R")

png(filename="plot1.png")

hist(df$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()