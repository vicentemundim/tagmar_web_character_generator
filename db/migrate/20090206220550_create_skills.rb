class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills, :force => true do |t|
      t.string :identifier
      t.string :name
      t.text :description
      t.string :base_attribute
      t.integer :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
