class AddIdentifierToRaces < ActiveRecord::Migration
  def self.up
    add_column :races, :identifier, :string
  end

  def self.down
    remove_column :races, :identifier
  end
end
