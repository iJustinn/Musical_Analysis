#### Load Data ####
chart_1_data <- readRDS("data/analysis_data/clean_data_1.rds")



#### Chart 1 ####
# Plotting the energy of each song over time to understand the intensity of their music.
chart_1_data %>%
  ggplot(aes(x = album_release_date, y = energy, color = album_name)) +
  geom_line(stat = "summary", fun = "mean", size = 1.2) +
  geom_point(alpha = 0.5) +
  theme_minimal() +
  labs(
    title = "Energy of Linkin Park Songs Over Time",
    x = "Album Release Date",
    y = "Energy",
    color = "Album"
  )

ggsave("other/charts/energy.jpg")



#### Chart 2 ####
# Plotting the danceability of each song over time to understand the musical style changes
chart_1_data %>%
  ggplot(aes(x = album_release_date, y = danceability, color = album_name)) +
  geom_line(stat = "summary", fun = "mean", size = 1.2) +
  geom_point(alpha = 0.5) +
  theme_minimal() +
  labs(
    title = "Danceability of Linkin Park Songs Over Time",
    x = "Album Release Date",
    y = "Danceability",
    color = "Album"
  )

ggsave("other/charts/danceability.jpg")




#### Chart 3 ####
# Plotting the acousticness of each song over time to analyze the acoustic trends in their music
chart_1_data %>%
  ggplot(aes(x = album_release_date, y = acousticness, color = album_name)) +
  geom_line(stat = "summary", fun = "mean", size = 1.2) +
  geom_point(alpha = 0.5) +
  theme_minimal() +
  labs(
    title = "Acousticness of Linkin Park Songs Over Time",
    x = "Album Release Date",
    y = "Acousticness",
    color = "Album"
  )

ggsave("other/charts/acousticness.jpg")



