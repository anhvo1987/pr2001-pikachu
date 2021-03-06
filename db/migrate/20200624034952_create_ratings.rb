# frozen_string_literal: true

class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :tour, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :rate
      t.timestamps
    end
  end
end
