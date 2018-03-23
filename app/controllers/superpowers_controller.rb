class SuperpowersController < ApplicationController
  def index

    @superpowers = Superpower.all

    # SEARCH STUFF ========================

    if params[:search]
      @superpower = Superpower.search(params[:search]).order("created_at DESC")
    else
      @superpower = Superpower.all.order("created_at DESC")
    end

      # SEARCH STUFF ========================


  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  private
    def superpower_params
      params.require(:superpower).permit(:name, :description)
    end
end
