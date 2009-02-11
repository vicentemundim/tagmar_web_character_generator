class AddCurrentHeroicEnergyToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :current_heroic_energy, :integer
  end

  def self.down
    remove_column :characters, :current_heroic_energy
  end
end
