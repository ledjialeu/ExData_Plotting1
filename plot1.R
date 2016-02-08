
setwd("C://Users/hp/Documents/courses/datascience/eda")
library(reshape2)
data_full <- read.csv("./Data/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                                            nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

all_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
#dim(all_data)
#names(all_data)

subSetData <- all_data[all_data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()




