class AddRelationshipsToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :race_id, :integer
    add_column :characters, :profession_id, :integer
    add_column :characters, :god, :string
    add_column :characters, :social_class, :string
  end

  def self.down
    remove_column :characters, :social_class
    remove_column :characters, :god
    remove_column :characters, :profession
    remove_column :characters, :race_id
  end
end
