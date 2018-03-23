class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
    if params[:search]
    @superheroes = Superhero.superpower.select(params[:search])
    redirect_to @superheroes
    end

  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(hero_params)
    @superhero.save
    redirect_to @superhero
  end

  private
  def hero_params
    params.require(:superhero).permit(:name,:super_name,:superpower_id)
  end

end
