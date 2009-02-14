class CreateBelongingsCharacters < ActiveRecord::Migration
  def self.up
    create_table :belongings_characters, :id => false do |t|
      t.integer :belonging_id
      t.integer :character_id
    end
  end

  def self.down
    drop_table :belongings_characters
  end
end
