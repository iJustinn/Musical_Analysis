#### Workspace Setup ####
library(dplyr)
library(usethis)
library(tidyverse)
library(lubridate)



#### Load Data ####
linkin_park_data <- readRDS("data/raw_data/linkin_park_data.rds")



#### Clean Data 1 ####
# Filter to include only the top 10 most popular albums
popular_albums <- c(
  "Hybrid Theory", 
  "Meteora (Bonus Edition)",
  "Minutes to Midnight",
  "A Thousand Suns",
  "Minutes to Midnight (Deluxe Edition)",
  "LIVING THINGS",
  "One More Light",
  "Reanimation",
  "The Hunting Party",
  "Meteora 20th Anniversary Edition"
)

# Ensure album_release_date is in the correct format and handle parsing issues
clean_data_1 <- linkin_park_data %>%
  mutate(album_release_date = suppressWarnings(ymd(album_release_date))) %>%
  filter(album_name %in% popular_albums)

# Filter out rows with missing or failed date parsing
clean_data_1 <- clean_data_1 %>%
  filter(!is.na(album_release_date))



#### Save Data ####
saveRDS(clean_data_1, "data/analysis_data/clean_data_1.rds")


