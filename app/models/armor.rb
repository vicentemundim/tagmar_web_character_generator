# == Schema Information
# Schema version: 20090214160437
#
# Table name: belongings
#
#  id                :integer(4)      not null, primary key
#  type              :string(255)
#  identifier        :string(255)
#  name              :string(255)
#  description       :text
#  minimum_strength  :integer(4)
#  minimum_height    :integer(4)
#  first_column      :integer(4)
#  nineth_column     :integer(4)
#  sixteenth_column  :integer(4)
#  base_damage       :integer(4)
#  range             :integer(4)
#  absorption        :integer(4)
#  bronze_coins_cost :integer(4)
#  defense_increase  :integer(4)
#  special_effect    :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  weapon_group      :string(255)
#

class Armor < Belonging
end
