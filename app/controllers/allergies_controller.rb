class AllergiesController < ApplicationController

    def index
        @allergies = Allergy.all
        # # below for testing purposes
        # @ingredients = Ingredient.all
    end

end
