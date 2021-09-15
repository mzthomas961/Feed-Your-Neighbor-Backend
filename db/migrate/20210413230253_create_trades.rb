class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.references :buyer_foodListing, null: false,  foreign_key: { to_table: :food_listings }
      t.references :seller_foodListing, null: false, foreign_key: { to_table: :food_listings }

      t.timestamps
    end
  end
end
