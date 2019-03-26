class SongsController < ApplicationController


  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(songs_params)
    song.save
    redirect_to songs_path(song)
  end

  def show
    song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(songs_params)
    redirect_to song_path(song)
  end

  def songs_params
    params.require(:songs).permit(:name, :genre_id, :artist_id)
end
end

