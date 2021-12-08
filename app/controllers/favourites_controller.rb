class FavouritesController < ApplicationController
  def favorite
    @recipe = Recipe.find(params[:id])
    current_user.favorited?(@recipe) ? current_user.unfavorite(@recipe) : current_user.favorite(@recipe)
    redirect_to recipe_path(@recipe)
  end
end
