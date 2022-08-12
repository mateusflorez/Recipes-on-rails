class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :update, :show, :destroy]

  def index
    @recipes = Recipe.created_at
  end

  def show;  end

  def edit;  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "Recipe updated successfuly!"
    else
      render :edit
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "Recipe created successfuly!"
    else
      render :new
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_url, alert: "Recipe deleted successfuly!"
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :stuff, :calories, :directions, :cost, :kind, :portion, :preptime, :poster)
  end
end
