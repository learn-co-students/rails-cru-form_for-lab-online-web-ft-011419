class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artists_params)
    artist.save
    redirect_to artist_path(artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artists_params)
    redirect_to artist_path(artist)
  end

  def artists_params
    params.require(:artists).permit(:name, :bio)
  end
end
