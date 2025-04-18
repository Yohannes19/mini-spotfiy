# db/seeds.rb
artist = Artist.create!(name: "Coldplay", bio: "British rock band")
album = artist.albums.create!(title: "Parachutes", released_on: "2000-07-10")
album.tracks.create!(title: "Yellow")
