class CreateAcquiredWeaponGroups < ActiveRecord::Migration
  def self.up
    create_table :acquired_weapon_groups do |t|
      t.integer :character_id
      t.string :weapon_group
      t.integer :level

      t.timestamps
    end
  end

  def self.down
    drop_table :acquired_weapon_groups
  end
end
