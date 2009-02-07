class AddAttributesToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :intelect, :integer
    add_column :characters, :aura, :integer
    add_column :characters, :charisma, :integer
    add_column :characters, :strengh, :integer
    add_column :characters, :physical, :integer
    add_column :characters, :agility, :integer
  end

  def self.down
    remove_column :characters, :agility
    remove_column :characters, :physical
    remove_column :characters, :strengh
    remove_column :characters, :charisma
    remove_column :characters, :aura
    remove_column :characters, :intelect
  end
end
