#
# exploratory data analysis - project 1
#
# script to download, prepare and load data for plots
#
# note - include lazy init mechanism so that plot scripts can call
# this script w/o worries about redoing multiple times costly ops
# (a.k.a. operations will be done only if not yet done prior in 
# the same R session)
#

if (!exists("hpcDataToPlot")) {
  
  print("downloading and preparting HPC data for plots...")

  url <- "https://d396qusza40orc.cloudfront.net/exdata/data/household_power_consumption.zip"
  localFile <- tempfile()

  download.file(url, localFile, method = "curl", mode = "wb")

  require(readr)

  hpcData <- read_delim(
    unz(localFile, "household_power_consumption.txt"), 
    delim = ";",
    na = c("", "NA", "?"), 
    col_types = cols(
      Date = col_character(),
      Time = col_character(),
      .default = "d"
    ),
    locale = default_locale()
  )

  require(dplyr)

  hpcDataToPlot <- filter(
    hpcData, 
    Date == "1/2/2007" | Date == "2/2/2007"
  ) %>% mutate(
    Datetime = as.POSIXct(strptime(paste(Date, Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"))
  )
  
  file.remove(localFile)
  
} else {
  print("re-using hpcDataToPlot dataset already in session")
}
