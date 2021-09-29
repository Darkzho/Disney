class CastsController < ApplicationController
  before_action :set_movie, only: [:new, :create]
  def new
    @cast = Cast.new
  end 

  def create
    @cast = Cast.new(cast_params)
    @cast.movie = @movie
    @cast.save
    redirect_to movie_path(@movie)
  end

  private

  def cast_params
    params.require(:cast).permit(:character_id)
  end

  def set_movie 
    @movie = Movie.find(params[:movie_id])
  end
end
