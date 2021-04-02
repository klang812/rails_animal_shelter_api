class DogsController < ApplicationController

  def index
    json_response(animal.dogs)
  end

  def create 
    dog = animal.dog.create!(dog_params)
    json_response(dog, :created)
  end

  def show
    dog = Dog.find(params[:id])
    json_response(dog)
  end

  def update
    dog = Dog.find(params[:id])
    dog.update!(dog_params)
    json_response(dog, :created)
  end

  def destroy
    Dog.find(params[:id]).destroy!
  end

  private

  def animal 
    animal ||= Animal.find(params[:animal_id])

  def dog_params
    params.permit(:name, :breed)
  end
end