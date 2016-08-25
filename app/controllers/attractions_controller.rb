class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    binding.pry
    @attraction = Attraction.find(params[:id])
    @user = current_user
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
