class MoviesController < ApplicationController
  before_action :set_movie, only: [:edit, :update, :show, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @movies = Movie.where("title LIKE ?", "%" + @query + "%") 
    else
    @movies = Movie.all
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movies_path
  end

  def edit
  end

  def update
    @movie.update(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :rating, :photo, :genre_id)
  end  
end
