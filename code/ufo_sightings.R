rm(list=ls())

# Load libraries
# library(readr)

#setwd("C:/Users/alexh/OneDrive/Data Wrangling/Final project/ufo")
#getwd()

csv_files <- list.files(pattern = ".csv")

combined_data <- data.frame()

for (file in csv_files) {
  data <- read.csv(file)
  combined_data <- rbind(combined_data, data)
}

# Save the combined data to a CSV file with UTF-8 encoding and without row numbers
write.csv(combined_data, "ufo_sightings.csv", row.names = FALSE, fileEncoding = "UTF-8")


