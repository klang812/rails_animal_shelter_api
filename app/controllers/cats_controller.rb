class CatsController < ApplicationController
  
  def index
    json_response(Cat.all)
  end

  def create 
    cat = animal.cats.create!(cat_params)
    json_response(cat, :created)
  end

  def show
    cat = Cat.find(params[:id])
    json_response(cat)
  end

  def update
    cat = Cat.find(params[:id])
    cat.update!(cat_params)
    json_response(cat, :created)
  end

  def destroy
    Cat.find(params[:id]).destroy!
  end

  private

  def animal 
    animal ||= Animal.find(params[:animal_id])

  def cat_params
    params.permit(:name, :breed)
  end
end