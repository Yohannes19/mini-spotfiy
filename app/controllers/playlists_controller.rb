class PlaylistsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_playlist, only: %i[show add_track remove_track]
  
    def index
      @playlists = current_user.playlists
    end
  
    def show
      @tracks = Track.all - @playlist.tracks
    end
  
    def new
      @playlist = current_user.playlists.build
    end
  
    def create
      @playlist = current_user.playlists.build(playlist_params)
      if @playlist.save
        redirect_to @playlist, notice: 'Playlist created.'
      else
        render :new
      end
    end
  
    def add_track
      track = Track.find(params[:track_id])
      if @playlist.tracks.include?(track)
        redirect_to @playlist, alert: 'Track already in playlist.'
      else  
        @playlist.tracks << track 
        redirect_to @playlist, notice: 'Track added to playlist.'
      end
    end

  
    def remove_track
      track = Track.find(params[:track_id])
      if @playlist.tracks.include?(track)
         @playlist.tracks.destroy(track)
         redirect_to @playlist, notice: 'Track removed from playlist.'
      else
          redirect_to @playlist, alert: 'Track not found in playlist.'
      end 
    end
  
    private
  
    def set_playlist
      @playlist = current_user.playlists.find(params[:id])
    end
  
    def playlist_params
      params.require(:playlist).permit(:title)
    end
  end
  