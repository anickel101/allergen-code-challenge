class CreateAllergies < ActiveRecord::Migration[6.0]
  def change
    create_table :allergies do |t|
      t.belongs_to :user
      t.belongs_to :ingredient

      t.timestamps
    end
  end
end
