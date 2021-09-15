class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.boolean :accepted
      t.boolean :rejected
      t.boolean :active
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :trade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
