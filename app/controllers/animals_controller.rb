class AnimalsController < ApplicationController

  def index
    json_response(Animal.all)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update!(animal_params)
    json_response(@animal, :created)
  end

  def destroy
    Animal.find(params[:id]).destroy!
  end

  private

  def animal_params
    params.permit(:animal_type, :animal_id)
  end
end