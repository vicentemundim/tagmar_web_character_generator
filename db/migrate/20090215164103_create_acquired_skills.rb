class CreateAcquiredSkills < ActiveRecord::Migration
  def self.up
    create_table :acquired_skills do |t|
      t.integer :character_id
      t.integer :skill_id
      t.integer :level

      t.timestamps
    end
  end

  def self.down
    drop_table :acquired_skills
  end
end
