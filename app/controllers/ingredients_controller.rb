class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all.sort {|ia, ib| ia.allergic_user_count <=> ib.allergic_user_count}.reverse
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)
        @ingredient.save
        redirect_to ingredient_path(@ingredient)
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end


end
