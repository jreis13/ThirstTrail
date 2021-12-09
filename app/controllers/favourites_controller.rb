class FavouritesController < ApplicationController
  def favorite
    @recipe = Recipe.find(params[:id])
    current_user.favorited?(@recipe) ? current_user.unfavorite(@recipe) : current_user.favorite(@recipe)
    if action_name == "show"
      redirect_to recipe_path(@recipe)
    else
      redirect_to selection_recipes_path
    end
  end

  def selection
    @favorites = current_user.all_favorites
  end
end
