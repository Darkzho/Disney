class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params_genre)
    redirect_to genres_path
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private

  def params_genre
    params.require(:genre).permit(:name, :photo)
  end
end
