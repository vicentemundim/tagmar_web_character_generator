class AddHeightAndWeightToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :height, :integer
    add_column :characters, :weight, :integer
  end

  def self.down
    remove_column :characters, :weight
    remove_column :characters, :height
  end
end
