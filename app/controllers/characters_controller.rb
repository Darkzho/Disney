class CharactersController < ApplicationController
  before_action :set_character, only: [:edit, :update, :show, :destroy]

  def index
    if params[:query].present?
      @query = params[:query].capitalize
      @character = Character.where("name LIKE ? OR age LIKE ? OR weight LIKE ?", "%" + @query + "%", "%" + @query + "%", "%" + @query + "%") 
    else
    @character = Character.all
    end
  end 

  def new 
    @character = Character.new
  end

  def create
    @character = Character.create(character_params)
    redirect_to characters_path
  end

  def show
  end

  def edit 
  end

  def update 
    @character.update(character_params)
    redirect_to characters_path
  end

  def destroy
    @character.destroy
    redirect_to characters_path
  end 

  private 

  def character_params
    params.require(:character).permit(:name, :age, :weight, :history, :photo)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end
