#
# exploratory data analysis - project 1
#
# script to generate "Plot 3"
#

source("prep_and_load_data.R")

png(
  filename = "plot3.png",
  width = 480,
  height = 480
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

dev.off()
