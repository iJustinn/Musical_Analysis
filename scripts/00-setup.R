#### Setup ####
install.packages("usethis")
install.packages("spotifyr")
install.packages("devtools")
install.packages("tidyverse")
install.packages("lubridate")

library(usethis)
library(spotifyr)
library(tidyverse)
library(lubridate)



####
client_id <- Sys.getenv("SPOTIFY_CLIENT_ID")
client_secret <- Sys.getenv("SPOTIFY_CLIENT_SECRET")
