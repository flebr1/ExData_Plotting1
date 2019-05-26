#
# exploratory data analysis - project 1
#
# script to generate "Plot 1"
#

source("prep_and_load_data.R")

png(
  filename = "plot1.png",
  width = 480,
  height = 480
)

hist(
  hpcDataToPlot$Global_active_power, 
  col = "red",
  main = "Global Active Power", 
  xlab = "Global Active Power (kilowatts)",
  ylab = "Frequency"
)

dev.off()
