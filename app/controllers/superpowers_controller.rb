class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def show
  end
end
