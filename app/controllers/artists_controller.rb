class ArtistsController < ApplicationController

  def new
    @artist= Artist.new
   end
 
   
   
   def create
    var = Artist.create(artist_params)
    var.save
    redirect_to artist_path(var)
   end 
   def show
     @artist= Artist.find(params[:id])
   end
  def edit
   @artist = Artist.find(params[:id])
  
  end
  def update
    var = Artist.find(params[:id])
    var.update(artist_params)
    redirect_to artist_path(var)
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
end
end