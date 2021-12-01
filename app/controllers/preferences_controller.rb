class PreferencesController < ApplicationController
  def index
  end

  def new
    @event_type = ["Home", "Business", "Special Ocasion"]
    @daytime = ["Day", "Night"]
    @cocktail_category = ["Fruity", "Spicy", "Salty",  "Sour"]
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    @preference.save
  end

  private

  def preference_params
    params.require(:preference).permit(:event_type, :daytime, :cocktail_category)
  end
end
