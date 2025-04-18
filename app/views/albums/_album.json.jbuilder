json.extract! album, :id, :title, :released_on, :artist_id, :created_at, :updated_at
json.url album_url(album, format: :json)
