library(dplyr)

## set some variables
url         <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" 
zip.file    <- "./data/household_power_consumption.zip"
file.path   <- "./data/household_power_consumption.txt"

## Check if the TXT file exists
if(!file.exists(file.path)){
    
    ## need code here to check for the zip file and 
    ## if that doesn't exist then download and unzip it
    
} else {
    ## the TXT file exists, so let's process it directly from there
    ## pulling out only the data from 2007-02-01 and 2007-02-02
    ## later on I will go back and figure out how to process into a CSV file with only the rows of interest
    
    
    ## Read in all Data
    all_data <- read.table(file.path, header=TRUE, sep=";", stringsAsFactors = FALSE, na.strings = "?")
    
    ## Subset to only the two days of data we need, and turn into a dplyr tbl_df
    df <- all_data[all_data$Date == "1/2/2007" | all_data$Date == "2/2/2007", ] %>% tbl_df
    
    ## remove the very large 'all_data' data frame
    rm(all_data)
    
    ## ## convert poorly formated Dates column into R Date objects    
    df <- df %>% mutate(Date = as.Date(Date, '%d/%m/%Y')) %>%
        mutate(Time = as.POSIXct(strptime(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S")))
}