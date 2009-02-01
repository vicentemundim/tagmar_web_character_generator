class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters, :force => true do |t|
      t.string :name
      t.text :biography
      t.integer :age
      t.integer :level
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
