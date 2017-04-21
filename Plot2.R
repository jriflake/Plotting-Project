## load data
inidata <- read.table("household_power_consumption.txt",sep = ";",header = TRUE)
inidata$Date <- as.Date(inidata$Date,"%d/%m/%Y")
inidata$Time <- strptime(inidata$Time,format = "%H:%M:%S")
inidata$Time <- sub(".* ","",inidata$Time)
data2 <- subset(inidata,Date >= "2007-02-01" & Date <= "2007-02-02")
rm(inidata)
## set png device
png(filename = "Plot2.png")
##plot
with(data2,plot(as.POSIXct(paste(Date,Time),format = "%Y-%m-%d %H:%M:%S"),Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)",xlab = ""))
## turn device off
dev.off()