class CatsController < ApplicationController
  
  def index
    json_response(animal.cats)
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

  def cat_params
    params.permit(:name, :breed)
  end

end
end