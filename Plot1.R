## load data
inidata <- read.table("household_power_consumption.txt",sep = ";",header = TRUE)
inidata$Date <- as.Date(inidata$Date,"%d/%m/%Y")
data2 <- subset(inidata,Date >= "2007-02-01" & Date <= "2007-02-02")
rm(inidata)
## set png device
png(filename = "Plot1.png")
## plot
hist(as.numeric(data2$Global_active_power),col = "red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
## turn device off
dev.off()

