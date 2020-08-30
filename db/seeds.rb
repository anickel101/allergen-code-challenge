User.destroy_all
Allergy.destroy_all
Ingredient.destroy_all

10.times do
    User.create(name: Faker::Name.name)
end

40.times do
    Ingredient.create(name: Faker::Food.ingredient)
end

20.times do
    Allergy.create(user_id: User.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end




