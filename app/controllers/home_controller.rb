class HomeController < ApplicationController
  def index
    @albums = Album.all
    @artists = Artist.all
    @tracks = Track.all
    @playlists = Playlist.all
  end

  def about
  end

  def contact
  end

  def privacy_policy
  end

  def terms_of_service
  end

  def sitemap
    @posts = Post.all
    render layout: false
  end
end