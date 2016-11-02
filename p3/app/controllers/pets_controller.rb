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
    @pet = Pet.new(pet_params)
    if @pet.save
      # redirect_to show path~
    else
      # @ errors = @pet.errors.full_messages
      # render new
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :age, :cute)
  end
end
