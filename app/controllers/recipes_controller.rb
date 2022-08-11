class RecipesController < ApplicationController

  def index
    @recipes = Recipe.created_at
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
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
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url, alert: "Recipe deleted successfuly!"
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :stuff, :calories, :directions, :cost, :kind, :portion, :preptime, :poster)
  end
end
