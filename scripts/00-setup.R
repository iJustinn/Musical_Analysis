#### Workspace Setup ####
install.packages("dplyr")
install.packages("usethis")
install.packages("magrittr")
install.packages("spotifyr")
install.packages("devtools")
install.packages("tidyverse")
install.packages("lubridate")

library(dplyr)
library(usethis)
library(magrittr)
library(spotifyr)
library(tidyverse)
library(lubridate)



#### Spotify Setup ####
client_id <- Sys.getenv("SPOTIFY_CLIENT_ID")
client_secret <- Sys.getenv("SPOTIFY_CLIENT_SECRET")
