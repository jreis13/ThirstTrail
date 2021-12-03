class PreferencesController < ApplicationController
  def index
  end

  def new
    @alcohol = ["Alcoholic", "Non-alcoholic", "Optional Alcohol"]
    @event_type = ["Home", "Business", "Special Ocasion"]
    @daytime = ["Day", "Night"]
    @cocktail_category = ["Fruity", "Spicy", "Salty", "Sour"]
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to @preference
    elsif @preference.alcohol.empty?
      flash[:alert] = 'Starting over: Please tell us if you want alcohol on your cocktail.'
      redirect_to new_preference_path(anchor: 'question-alcohol')
    elsif @preference.event_type.empty?
      flash[:alert] = 'Starting over: Please tell us which kind of event are you hosting.'
      redirect_to new_preference_path(anchor: 'question-alcohol')
    elsif @preference.cocktail_category.empty?
      flash[:alert] = 'Starting over: Please tell us your cocktail taste preference.'
      redirect_to new_preference_path(anchor: 'question-alcohol')
    else
      render :new
    end
  end

  def show
    @preference = Preference.find(params[:id])
    @recipes = Recipe.all.slice(0..3)
  end

  private

  def preference_params
    params.require(:preference).permit(:event_type, :daytime, :alcohol, :cocktail_category)
  end
end

# recipes = Recipe.where(alcohol: current_user.preferences.alcohol)
# nsfw_filter = ["bad words"]
# recipes = recipes.where(name != nsfw_filter)
