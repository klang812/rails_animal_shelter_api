class AnimalsController < ApplicationController

  def index
    json_response(Animal.all)
  end
end