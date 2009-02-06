class Rules::AttributeAdjustment
  RAW_MAPPING = {
    0..3 => -7,
    3..4 => -5,
    5..6 => -3,
    7..8 => -1,
    9..12 => 0,
    13..15 => 1,
    16..17 => 2,
    18..19 => 3,
    20 => 4,
    21 => 5,
    22 => 6,
  }

  class << self
    def build_mapping
      @@mapping = {}
      RAW_MAPPING.each do |range_or_number, adjustment|
        if range_or_number.is_a?(Range)
          range_or_number.to_a.each do |number|
            @@mapping[number] = adjustment
          end
        else
          @@mapping[range_or_number] = adjustment
        end
      end
    end

    def mapping
      @@mapping
    end

    def adjustment_for(attribute_value)
      mapping[attribute_value]
    end
  end

  build_mapping
end
