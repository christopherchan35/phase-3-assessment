class ToysController < ApplicationController
  def index
    @pet = Pet.find(params[:pet_id])
    @toys = @pet.toys
    if request.xhr?
      render json: @toys, locals: {pet: @pet}
    else
      render 'index'
    end
  end

  def show
  end
end
