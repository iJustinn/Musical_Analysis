#### Workspace Setup ####
library(magrittr)
library(spotifyr)



#### Fetch Data ####
linkin_park_data <- get_artist_audio_features("Linkin Park")



#### Save Data ####
saveRDS(linkin_park_data, "data/raw_data/linkin_park_data.rds")
