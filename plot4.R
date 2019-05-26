#
# exploratory data analysis - project 1
#
# script to generate "Plot 4"
#

source("prep_and_load_data.R")

png(
  filename = "plot4.png",
  width = 480,
  height = 480
)

par(
  mfrow = c(2, 2),
  mar = c(4, 4, 1, 1) + 0.1
  )

plot(
  hpcDataToPlot$Datetime, 
  hpcDataToPlot$Global_active_power, 
  type = "l",
  xlab = "",
  ylab = "Global Active Power"
)

plot(
  hpcDataToPlot$Datetime, 
  hpcDataToPlot$Voltage, 
  type = "l",
  xlab = "datetime",
  ylab = "Voltage"
)

plot(
  hpcDataToPlot$Datetime, 
  hpcDataToPlot$Sub_metering_1, 
  type = "l",
  xlab = "",
  ylab = "Energy sub metering"
)

lines(
  hpcDataToPlot$Datetime, 
  hpcDataToPlot$Sub_metering_2, 
  type = "l",
  col = "red"
)

lines(
  hpcDataToPlot$Datetime, 
  hpcDataToPlot$Sub_metering_3, 
  type = "l",
  col = "blue"
)

legend(
  "topright", 
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
  col = c("black", "red", "blue"), 
  lty = "solid"
)

plot(
  hpcDataToPlot$Datetime, 
  hpcDataToPlot$Global_reactive_power, 
  type = "l",
  xlab = "datetime",
  ylab = "Global_reactive_power"
)

dev.off()
