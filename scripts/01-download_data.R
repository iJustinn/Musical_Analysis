# Get Kanye West's artist ID
kanye <- search_spotify("Kanye West", type = "artist")
kanye_id <- kanye$id[1]

# Get Kanye West's albums
kanye_albums <- get_artist_albums(kanye_id, include_groups = "album", limit = 50)

# Get tracks from all Kanye West albums
kanye_tracks <- map_df(kanye_albums$id, get_album_tracks)

# Split the track IDs into chunks of 100 or less
track_id_chunks <- split(kanye_tracks$id, ceiling(seq_along(kanye_tracks$id) / 100))

# Retrieve audio features for each chunk of track IDs
kanye_features_list <- lapply(track_id_chunks, function(chunk) {
  get_track_audio_features(chunk)
})

# Combine all the chunks into a single dataframe
kanye_features <- bind_rows(kanye_features_list)

# Join the track data with the audio features
kanye_data <- kanye_tracks %>%
  inner_join(kanye_features, by = "id")

# Save the Kanye West data as an RDS file
saveRDS(kanye_data, "data/raw_data/kanye_data.rds")
