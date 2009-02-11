class CreateRaces < ActiveRecord::Migration
  def self.up
    create_table :races do |t|
      t.string :name
      t.text :description
      t.integer :intelect_modifier
      t.integer :aura_modifier
      t.integer :charisma_modifier
      t.integer :strength_modifier
      t.integer :physical_modifier
      t.integer :agility_modifier

      t.timestamps
    end
  end

  def self.down
    drop_table :races
  end
end
