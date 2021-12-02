class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :instruction)
  end
end
