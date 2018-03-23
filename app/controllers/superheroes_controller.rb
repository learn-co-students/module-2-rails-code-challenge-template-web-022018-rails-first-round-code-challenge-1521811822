class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def new
  end

  def show
  end
end
