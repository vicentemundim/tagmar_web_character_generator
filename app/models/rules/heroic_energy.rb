class Rules::HeroicEnergy
  class << self
    def initial_energy_for(profession, dice_roll)
      energy_for(@@initial_energy_real_mapping, profession, dice_roll)
    end

    def level_up_energy_for(profession, dice_roll)
      energy_for(@@level_up_energy_real_mapping, profession, dice_roll)
    end

    def build_initial_energy_real_mapping
      @@initial_energy_real_mapping = build_real_mapping(INITIAL_ENERGY_MAPPING)
    end

    def build_level_up_energy_real_mapping
      @@level_up_energy_real_mapping = build_real_mapping(LEVEL_UP_ENERGY_MAPPING)
    end

    private
      def energy_for(mapping, profession, dice_roll)
        dice_roll_range = DICE_ROLL_RANGES.select { |range| range.include?(dice_roll) }.first
        mapping[profession][dice_roll_range]
      end

      def build_real_mapping(mapping)
        real_mapping = {}
        PROFESSIONS.each do |profession|
          real_mapping[profession] ||= {}
          DICE_ROLL_RANGES.each_with_index do |dice_roll_range, index|
            real_mapping[profession][dice_roll_range] = mapping[profession] + index
          end
        end
        real_mapping
      end
  end

  DICE_ROLL_RANGES = [
    1..1,
    2..3,
    4..5,
    6..7,
    8..9,
    10..10,
  ]

  PROFESSIONS = [
    'warrior',
    'thief',
    'priest',
    'mage',
    'crawler',
    'bard',
  ]

  INITIAL_ENERGY_MAPPING = {
    'warrior' => 15,
    'thief' => 9,
    'priest' => 9,
    'mage' => 3,
    'crawler' => 12,
    'bard' => 6,
  }

  LEVEL_UP_ENERGY_MAPPING = {
    'warrior' => 5,
    'thief' => 3,
    'priest' => 3,
    'mage' => 1,
    'crawler' => 4,
    'bard' => 2,
  }

  build_initial_energy_real_mapping
  build_level_up_energy_real_mapping
end
