class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
        3.times {@recipe.ingredients.build}
    end

    def create
        byebug
        # ingr1 = Ingredient.find_or_create_by(name: recipe_params[:recipe][:ingredients_attributes][0])
        # ingr2 = Ingredient.find_or_create_by(name: recipe_params[:recipe][:ingredients_attributes][1])
        # ingr3 = Ingredient.find_or_create_by(name: recipe_params[:recipe][:ingredients_attributes][2])
        @recipe = Recipe.new(recipe_params)
        @recipe.save
        redirect_to recipe_path(@recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id, :ingredients_attributes => [])
    end

end


#, :ingredients_attributes => []