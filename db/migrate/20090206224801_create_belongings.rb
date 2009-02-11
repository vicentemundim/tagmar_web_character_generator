class CreateBelongings < ActiveRecord::Migration
  def self.up
    create_table :belongings do |t|
      t.string :type
      t.string :identifier
      t.string :name
      t.text :description
      t.integer :minimum_strength
      t.integer :minimum_height
      t.integer :first_column
      t.integer :nineth_column
      t.integer :sixteenth_column
      t.integer :base_damage
      t.integer :range
      t.integer :absorption
      t.integer :bronze_coins_cost
      t.integer :defense_increase
      t.string :special_effect

      t.timestamps
    end
  end

  def self.down
    drop_table :belongings
  end
end
