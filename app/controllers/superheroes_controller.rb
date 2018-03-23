class SuperheroesController < ApplicationController
  def index
    if params[:q]
      @superheroes = Superhero.all.select{|hero| hero.superpower.name == params[:q].downcase}
      if @superheroes.empty?
        flash[:alert] = "No Heroes found"
      end
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.create(superhero_params)
    byebug
    if @superhero.valid?
      redirect_to @superhero
    else
      flash[:notice] = "That name has already been taken!"
      redirect_to new_superhero_path
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
