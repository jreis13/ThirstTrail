class PreferencesController < ApplicationController
  def index
  end

  def new
    @alcohol = ["Alcoholic", "Non-alcoholic"]
    @event_type = ["Home", "Business", "Special Ocasion"]
    @cocktail_category = ["Fruity", "Spicy", "Salty", "Sour"]
    @ingredients = Ingredient.all
    @preference = Preference.new
    mixer_urls = ["https://i.giphy.com/media/pGfeUzUo5MYAptZOQO/giphy.webp",
                  "https://i.giphy.com/media/3o7TKDhgKC52OZhV0k/giphy.webp",
                  "https://i.giphy.com/media/m6vr46wnVUjjG/giphy.webp",
                  "https://i.giphy.com/media/l49JIgBhX4X6hyCGY/giphy.webp",
                  "https://i.giphy.com/media/J2a7ClzF1YfclNcfe5/giphy.webp"]
    @mixer_image = mixer_urls.sample
  end

  def create
    @preference = Preference.new(preference_params)
    @preference.user = current_user
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
    @recipes = Recipe.where(alcohol: @preference.alcohol)
    @recipes = @recipes.where("? = ANY(event_type)", @preference.event_type)
    @recipes = @recipes.where("? = ANY(cocktail_category)", @preference.cocktail_category)

    # Intersect recipes_results with recipes
    if !@preference.ingredients.empty?
      @recipes = get_recipes_results(@recipes,@preference)
    end
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
    params.require(:preference).permit(:event_type, :alcohol, :cocktail_category, ingredient_ids: [])
  end

  def get_recipes_results(recipes,preference)
      recipes_results = []
        preference.ingredients.each do |ingredient|
          recipes.each do |recipe|
            recipe.recipe_ingredients.each do |recipe_ingredient|
              recipes_results << recipe_ingredient.recipe if recipe_ingredient.ingredient == ingredient
            end
          end
        end
    recipes_results
  end


  # recipes = Recipe.where(alcohol: current_user.preferences.alcohol)
  # nsfw_filter = ["bad words"]
  # recipes = recipes.where(name != nsfw_filter)
  # def filter
  #   results = Recipe.select(alcohol: @preference.alcohol, event_type: @preference.event_type, cocktail_category: @preference.cocktail_category)
  # end
end
