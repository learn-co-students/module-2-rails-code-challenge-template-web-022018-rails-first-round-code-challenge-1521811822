class SuperheroesController < ApplicationController

  before_action :set_superhero, only: [:show, :edit, :update, :destroy]

  def index
    @superpowers = Superpower.all
    if params[:superpower_id]
      @superheroes = Superhero.where(superpower_id: params[:superpower_id])
    else
      @superheroes = Superhero.all
    end
  end

  def show
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.valid?
      @superhero.save
      redirect_to @superhero
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @superhero.update(superhero_params)
      @superhero.save
      redirect_to @superhero
    else
      render :edit
    end
  end

  def destroy
    @superhero.destroy
    redirect_to superheroes_path
  end

  private

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end
