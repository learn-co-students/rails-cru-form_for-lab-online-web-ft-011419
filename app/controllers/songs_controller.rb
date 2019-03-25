class SongsController < ApplicationController
  def index
    @songs =Song.all
  end
  def new
    @song= Song.new
   end



   def create
    var = Song.create(song_params)
    var.save
    redirect_to song_path(var)
   end
   def show
    #binding.pry
     @song= Song.find(params[:id])
   end
  def edit
   @song = Song.find(params[:id])

  end
  def update
    var = Song.find(params[:id])
    var.update(song_params)
    redirect_to song_path(var)
  end















  def song_params
    params.require(:song).permit(:name,:artist_id,:genre_id)
  end
end
