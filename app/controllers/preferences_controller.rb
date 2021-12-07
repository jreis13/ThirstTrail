class PreferencesController < ApplicationController
  def index
  end

  def new
    @alcohol = ["Alcoholic", "Non-alcoholic"]
    @event_type = ["Home", "Business", "Special Ocasion"]
    @cocktail_category = ["Fruity", "Spicy", "Salty", "Sour"]
    @ingredients = []
    @recipes = Recipe.all
    @recipes.each do |recipe|
      recipe.ingredient.each do |elem|
        @ingredients += [elem.gsub(/[^a-z0-9\s]/i, '').strip]
      end
    end
    @ingredients = @ingredients.flatten.uniq
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to @preference
    elsif @preference.alcohol.empty?
      flash[:alert] = 'Starting over: Please tell us if you want alcohol in your cocktail.'
      redirect_to new_preference_path(anchor: 'question-alcohol')
    elsif @preference.event_type.empty?
      flash[:alert] = 'Starting over: Please tell us which kind of event you are hosting.'
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
    @recipes = Recipe.where(alcohol: @preference.alcohol).where("? = ANY(event_type)", @preference.event_type).where("? = ANY(cocktail_category)", @preference.cocktail_category).where("? = ANY(ingredient)", @preference.ingredient)
    @recipes = @recipes.sample(3)

  end

  def filter
    if params["search"]
      @filter = params["search"]["flavors"].concat(params["search"]["strengths"]).flatten.reject(&:blank?)
      @cocktails = @filter.empty? ? Cocktail.all : Cocktail.all.tagged_with(@filter, any: true)
    else
      @cocktails = Cocktail.all
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:event_type, :alcohol, :cocktail_category, :ingredient)
  end

  # recipes = Recipe.where(alcohol: current_user.preferences.alcohol)
  # nsfw_filter = ["bad words"]
  # recipes = recipes.where(name != nsfw_filter)
  # def filter
  #   results = Recipe.select(alcohol: @preference.alcohol, event_type: @preference.event_type, cocktail_category: @preference.cocktail_category)
  # end
end
