## Downloading and unzipping the file 
dataUrl <- "http://d396qusza40orc.cloudfront.net/exdata/data/household_power_consumption.zip"
download.file(dataUrl, "power_data.zip")
unzip("power_data.zip", exdir = "power_data")

dataFile <- "./power_data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Displaying the first six rows
head(subSetData)

####Plot1###################
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
