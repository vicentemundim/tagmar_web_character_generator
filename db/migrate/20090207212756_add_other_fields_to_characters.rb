class AddOtherFieldsToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :current_experience, :integer
    add_column :characters, :physical_energy, :integer
    add_column :characters, :heroic_energy, :integer
    add_column :characters, :combat_accumulated_points, :integer
    add_column :characters, :magic_accumulated_points, :integer
    add_column :characters, :skill_accumulated_points, :integer
    add_column :characters, :focus, :string
    add_column :characters, :current_bronze_coins, :integer
    add_column :characters, :current_silver_coins, :integer
    add_column :characters, :current_gold_coins, :integer
  end

  def self.down
    remove_column :characters, :current_gold_coins
    remove_column :characters, :current_silver_coins
    remove_column :characters, :current_bronze_coins
    remove_column :characters, :focus
    remove_column :characters, :skill_accumulated_points
    remove_column :characters, :magic_accumulated_points
    remove_column :characters, :combat_accumulated_points
    remove_column :characters, :heroic_energy
    remove_column :characters, :physical_energy
    remove_column :characters, :current_experience
  end
end
