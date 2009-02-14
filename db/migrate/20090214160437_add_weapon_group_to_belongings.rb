class AddWeaponGroupToBelongings < ActiveRecord::Migration
  def self.up
    add_column :belongings, :weapon_group, :string
  end

  def self.down
    remove_column :belongings, :weapon_group
  end
end
