class GenresController < ApplicationController
  def show
    @genres = Genre.all
    @genre = Genre.new
  end
 
  def create
    @genres = Genre.all
    @genre = Genre.new(genre_params)
    if @genre.save
    else
      render :show
    end
  end

  def destroy
    @genres = Genre.all
    @genre = Genre.find(params[:id])
    @genre.destroy
  end
 
  def genre_params
    params.require(:genre).permit(:name)
  end
end
