resource "spotify_playlist" "Tollywood" {
  name = "Tollywood"
  tracks = ["2oMVPX0asvUfRfap0iEmXv"]
}

data "spotify_search_track" "Hollywood" {
    artist = "Hollywood"
    limit = 3
}

resource "spotify_playlist" "Folk_Songs" {
    name = "Folk_Songs"
    tracks = [data.spotify_search_track.Hollywood.tracks[0].id,
    data.spotify_search_track.Hollywood.tracks[1].id,
    data.spotify_search_track.Hollywood.tracks[2].id]
  
}