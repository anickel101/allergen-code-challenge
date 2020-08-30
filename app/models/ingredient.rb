class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients

    has_many :allergies

    def allergic_user_count
        self.allergies.count
    end
end
