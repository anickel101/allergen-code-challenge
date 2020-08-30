class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :allergies, dependent: :destroy
    accepts_nested_attributes_for :allergies
end
