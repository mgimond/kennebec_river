library(dataRetrieval)
library(lubridate)

# Choptank River near Greensboro, MD
siteNumber <- "01049500" # Gardiner 

# Params 
parameterCd <- "00060" 

# Raw daily data:
dat <- readNWISdv(siteNumber,parameterCd, "1976-01-01","2024-12-31")

# Prep for output
dat$Discharge <- dat$X_00060_00003
saveRDS(dat[ , c("Date", "Discharge")], file = "Kennebec.Rds")
