class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.text :description
      t.string :catalog
      t.text :card_number
      t.integer :strain_id
      t.integer :rarity_id
      t.integer :spawn_area_id
      t.integer :shape_id
      t.integer :max_level
      t.boolean :redeathable
      t.boolean :tradable
      t.boolean :extinct
      t.boolean :locked

      t.timestamps null: false
    end
  end
end
