class Rules::PhysicalEnergy
  class << self
    def physical_energy_for(weight, strength, physical)
      strength_physical_sum = strength + physical
      weight_range = WEIGHT_RANGES.select { |range| range.include?(weight) }.first
      strength_plus_physical_range = STRENGTH_PLUS_PHYSICAL_RANGES.select { |range| range.include?(strength_physical_sum) }.first
      real_mapping[weight_range][strength_plus_physical_range]
    end

    def build_real_mapping
      @@real_mapping = {}
      WEIGHT_RANGES.each do |weight_range|
        @@real_mapping[weight_range] ||= {}
        nil_values_counter = 0
        STRENGTH_PLUS_PHYSICAL_RANGES.each_with_index do |strength_plus_physical_range, index|
          mapped_value = MAPPING[weight_range]
          unless strength_plus_physical_range.min < mapped_value[:min].min
            @@real_mapping[weight_range][strength_plus_physical_range] = mapped_value[:initial_value] + index - nil_values_counter
          else
            nil_values_counter += 1
          end
        end
      end
    end

    def real_mapping
      @@real_mapping
    end
  end

  WEIGHT_RANGES = [
    17..19,
    20..24,
    25..29,
    30..35,
    36..39,
    40..45,
    46..49,
    50..59,
    60..69,
    70..79,
    80..89,
    90..99,
    100..109,
    110..130,
  ]

  STRENGTH_PLUS_PHYSICAL_RANGES = [
    4..5,
    6..8,
    9..11,
    12..14,
    15..17,
    18..20,
    21..23,
    24..26,
    27..29,
    30..32,
    33..35,
    36..38,
    39..41,
    42..44,
  ]

  MAPPING = {
      17..19 => { :min => 12..14, :initial_value => 1 },
      20..24 => { :min =>  9..11, :initial_value => 1 },
      25..29 => { :min =>   6..8, :initial_value => 1 },
      30..35 => { :min =>   4..5, :initial_value => 1 },
      36..39 => { :min =>   4..5, :initial_value => 2 },
      40..45 => { :min =>   4..5, :initial_value => 3 },
      46..49 => { :min =>   4..5, :initial_value => 4 },
      50..59 => { :min =>   4..5, :initial_value => 5 },
      60..69 => { :min =>   4..5, :initial_value => 6 },
      70..79 => { :min =>   4..5, :initial_value => 7 },
      80..89 => { :min =>   4..5, :initial_value => 8 },
      90..99 => { :min =>   4..5, :initial_value => 9 },
    100..109 => { :min =>   4..5, :initial_value => 10 },
    110..130 => { :min =>   4..5, :initial_value => 11 },
  }

  build_real_mapping
end
