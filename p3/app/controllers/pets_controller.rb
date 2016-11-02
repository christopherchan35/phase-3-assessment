class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :age, :cute)
  end
end
