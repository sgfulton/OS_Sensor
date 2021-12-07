# for doing stats on OS sensor data

# for generating overall OS sensor accuracy (Atlas vs. "Other")

accur.dat = read.csv(file = "Mean_Error.csv",stringsAsFactors = F)
str(accur.dat)

t.test(x = accur.dat$Mean_Error[grep(pattern = "Atlas",x = accur.dat$Sensor_Group)],y = accur.dat$Mean_Error[grep(pattern = "Other",x = accur.dat$Sensor_Group)])

# for generating overall OS sensor accuracy (Atlas vs. "Other")

precis.dat = read.csv(file = "Mean_Deviation.csv",stringsAsFactors = F)
str(precis.dat)

t.test(x = precis.dat$Mean_Deviation[grep(pattern = "Atlas",x = precis.dat$Sensor_Group)],y = precis.dat$Mean_Deviation[grep(pattern = "Other",x = precis.dat$Sensor_Group)])
