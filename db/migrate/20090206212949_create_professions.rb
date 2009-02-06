class CreateProfessions < ActiveRecord::Migration
  def self.up
    create_table :professions do |t|
      t.string :name
      t.text :description
      t.integer :skill_points_per_level
      t.integer :combat_points_per_level
      t.boolean :can_use_magic

      t.timestamps
    end
  end

  def self.down
    drop_table :professions
  end
end
