class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(super_params)
    redirect_to @superhero if @superhero.save
    render :new if !@superhero.save
  end

  def search
    @superheroes = Superhero.all.select do |x| x.superpower.name == params[:results] end
    render :search if @superheroes.count > 0
    # This should not be rendering away to a different page, it's all I got.
    redirect_to superheroes_path if @superheroes.count < 1
  end

  private def super_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
