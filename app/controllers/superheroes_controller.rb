class SuperheroesController < ApplicationController
  def index
    @superpowers = Superpower.all
    if params[:search]
      @superheroes = Superhero.all.select{|sh| sh.superpower_id.to_s == params[:search][:superpower_id]}
      @search_flag = true
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def create
    @superhero = Superhero.create(superhero_params)
    redirect_to superheroes_path
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
