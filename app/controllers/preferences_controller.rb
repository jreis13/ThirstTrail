class PreferencesController < ApplicationController
  def index
  end

  def new
    @alcohol = ["Alcoholic", "Non-alcoholic"]
    @event_type = ["Home", "Business", "Special Ocasion"]
    @cocktail_category = ["Fruity", "Spicy", "Salty", "Sour"]
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)

    if @preference.save!
      redirect_to preference_path(@preference)
    else
      render :new
    end
  end

  def show
    @preference = Preference.find(params[:id])
    @recipes = Recipe.where(alcohol: @preference.alcohol).where("? = ANY(event_type)", @preference.event_type).where("? = ANY(cocktail_category)", @preference.cocktail_category)
    @recipes = @recipes.sample(4)
  end

  private

  def preference_params
    params.require(:preference).permit(:event_type, :alcohol, :cocktail_category)
  end


  # recipes = Recipe.where(alcohol: current_user.preferences.alcohol)
  # nsfw_filter = ["bad words"]
  # recipes = recipes.where(name != nsfw_filter)
  def filter
    results = Recipe.select(alcohol: @preference.alcohol, event_type: @preference.event_type, cocktail_category: @preference.cocktail_category)
  end
end
