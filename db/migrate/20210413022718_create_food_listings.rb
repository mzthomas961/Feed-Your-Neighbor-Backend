class CreateFoodListings < ActiveRecord::Migration[6.1]
  def change
    create_table :food_listings do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :cuisine
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
