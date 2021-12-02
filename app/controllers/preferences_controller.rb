class PreferencesController < ApplicationController
  def index
  end

  def new
<<<<<<< HEAD
=======
    @alcohol = ["Alcoholic", "Non-alcoholic"]
>>>>>>> 855d59043765e492df344a14252fb79eb6c52dd4
    @event_type = ["Home", "Business", "Special Ocasion"]
    @daytime = ["Day", "Night"]
    @cocktail_category = ["Fruity", "Spicy", "Salty", "Sour"]
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    @preference.save
  end
<<<<<<< HEAD

  def show
    @preference = Preference.find(params[:id])
    @recipes = Recipe.all.slice(0..3)
  end
=======
>>>>>>> 855d59043765e492df344a14252fb79eb6c52dd4

  private

  def preference_params
    params.require(:preference).permit(:event_type, :daytime, :alcohol, :cocktail_category)
  end
end
