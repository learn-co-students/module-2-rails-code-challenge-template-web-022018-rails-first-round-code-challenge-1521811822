class SuperheroesController < ApplicationController
  def index
    if params[:superhero]
      @superheroes = Superhero.all.select{|superhero| superhero.superpower_id == params[:superhero][:superpower].to_i}
    else
      @superheroes = Superhero.all
    end
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.create(superhero_params)
    if @superhero
      redirect_to @superhero
    else
      render :new
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id, :superpower)
  end
end
