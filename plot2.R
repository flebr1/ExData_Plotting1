#
# exploratory data analysis - project 1
#
# script to generate "Plot 2"
#

source("prep_and_load_data.R")

png(
  filename = "plot2.png",
  width = 480,
  height = 480
)

plot(
  hpcDataToPlot$Datetime, 
  hpcDataToPlot$Global_active_power, 
  type = "l",
  xlab = "",
  ylab = "Global Active Power (kilowatts)"
)

dev.off()
