class GenresController < ApplicationController
  def new
    @genre= Genre.new
   end
 
   
   
   def create
    var = Genre.create(genre_params)
    var.save
    redirect_to genre_path(var)
   end 
   def show
     @genre= Genre.find(params[:id])
   end
  def edit
   @genre = Genre.find(params[:id])
  
  end
  def update
    var = Genre.find(params[:id])
    var.update(genre_params)
    redirect_to genre_path(var)
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  def genre_params
    params.require(:genre).permit(:name)
end



end  