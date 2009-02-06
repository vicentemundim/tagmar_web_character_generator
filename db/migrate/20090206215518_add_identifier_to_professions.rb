class AddIdentifierToProfessions < ActiveRecord::Migration
  def self.up
    add_column :professions, :identifier, :string
  end

  def self.down
    remove_column :professions, :identifier
  end
end
