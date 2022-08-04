class RecipesController < ApplicationController

  def index
    @recipes = ['Strogonoff', 'Salmon in oven', 'Breaded chicken fillet']
  end

end
