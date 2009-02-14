class Rules::Experience
  class << self
    def next_level_points_for(current_level)
      if current_level.nil?
        NEXT_LEVEL[1]
      else
        if NEXT_LEVEL.has_key?(current_level)
          NEXT_LEVEL[current_level]
        else
          NEXT_LEVEL[20] + 100*(current_level - 20)
        end
      end
    end
  end

  NEXT_LEVEL = {
     1 =>  11,
     2 =>  21,
     3 =>  31,
     4 =>  46,
     5 =>  61,
     6 =>  76,
     7 =>  96,
     8 => 116,
     9 => 136,
    10 => 166,
    11 => 196,
    12 => 226,
    13 => 266,
    14 => 306,
    15 => 356,
    16 => 406,
    17 => 466,
    18 => 526,
    19 => 596,
    20 => 666,
  }
end
