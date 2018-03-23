class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
    @superheroes = Superhero.all.select{|sh| sh.superpower_id == @superpower.id}
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.create(superpower_params)
    redirect_to superpowers_path
  end

  private
    def superpower_params
      params.require(:superpower).permit(:name, :description)
    end
end
