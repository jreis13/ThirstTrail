class RecipesController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(ingredient_params)

  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
