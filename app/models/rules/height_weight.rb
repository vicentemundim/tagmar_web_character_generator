class Rules::HeightWeight
  class << self
    def height_for(race, dice_value)
      send("height_for_#{race}", dice_value)
    end

    def weight_for(race, dice_value)
      send("weight_for_#{race}", dice_value)
    end

    def height_for_human(dice_value)
      HUMAN_HEIGHT_WEIGHT_MAPPING[dice_value][0]
    end

    def height_for_halfling(dice_value)
      HALFLING_HEIGHT_WEIGHT_MAPPING[dice_value][0]
    end

    def height_for_dwarf(dice_value)
      DWARF_HEIGHT_WEIGHT_MAPPING[dice_value][0]
    end

    def height_for_wood_elf(dice_value)
      ELF_HEIGHT_WEIGHT_MAPPING[dice_value][0]
    end

    def height_for_golden_elf(dice_value)
      ELF_HEIGHT_WEIGHT_MAPPING[dice_value][0]
    end

    def height_for_half_elf(dice_value)
      HALF_ELF_HEIGHT_WEIGHT_MAPPING[dice_value][0]
    end

    def weight_for_human(dice_value)
      HUMAN_HEIGHT_WEIGHT_MAPPING[dice_value][1]
    end

    def weight_for_halfling(dice_value)
      HALFLING_HEIGHT_WEIGHT_MAPPING[dice_value][1]
    end

    def weight_for_dwarf(dice_value)
      DWARF_HEIGHT_WEIGHT_MAPPING[dice_value][1]
    end

    def weight_for_wood_elf(dice_value)
      ELF_HEIGHT_WEIGHT_MAPPING[dice_value][1]
    end

    def weight_for_golden_elf(dice_value)
      ELF_HEIGHT_WEIGHT_MAPPING[dice_value][1]
    end

    def weight_for_half_elf(dice_value)
      HALF_ELF_HEIGHT_WEIGHT_MAPPING[dice_value][1]
    end
  end

  HUMAN_HEIGHT_WEIGHT_MAPPING = {
     2 => [150, 58],
     3 => [152, 60],
     4 => [155, 61],
     5 => [157, 63],
     6 => [160, 64],
     7 => [162, 66],
     8 => [165, 68],
     9 => [169, 70],
    10 => [174, 74],
    11 => [177, 77],
    12 => [182, 81],
    13 => [186, 85],
    14 => [190, 88],
    15 => [193, 92],
    16 => [195, 95],
    17 => [199, 97],
    18 => [201, 103],
    19 => [204, 106],
    20 => [208, 110],
  }

  HALFLING_HEIGHT_WEIGHT_MAPPING = {
     2 => [96, 17],
     3 => [100, 19],
     4 => [102, 20],
     5 => [104, 21],
     6 => [106, 22],
     7 => [107, 23],
     8 => [109, 24],
     9 => [111, 25],
    10 => [113, 27],
    11 => [114, 30],
    12 => [117, 32],
    13 => [119, 34],
    14 => [122, 37],
    15 => [124, 39],
    16 => [127, 41],
    17 => [129, 43],
    18 => [132, 46],
    19 => [134, 48],
    20 => [136, 50],
  }

  DWARF_HEIGHT_WEIGHT_MAPPING = {
     2 => [120, 34],
     3 => [123, 36],
     4 => [125, 37],
     5 => [127, 39],
     6 => [130, 41],
     7 => [133, 43],
     8 => [135, 46],
     9 => [136, 48],
    10 => [138, 50],
    11 => [139, 53],
    12 => [140, 55],
    13 => [142, 57],
    14 => [143, 59],
    15 => [144, 62],
    16 => [146, 64],
    17 => [148, 66],
    18 => [150, 68],
    19 => [151, 69],
    20 => [154, 70],
  }

  ELF_HEIGHT_WEIGHT_MAPPING = {
     2 => [137, 32],
     3 => [141, 34],
     4 => [144, 37],
     5 => [148, 39],
     6 => [150, 41],
     7 => [152, 43],
     8 => [156, 46],
     9 => [158, 48],
    10 => [160, 50],
    11 => [163, 53],
    12 => [164, 55],
    13 => [165, 57],
    14 => [168, 59],
    15 => [170, 62],
    16 => [173, 64],
    17 => [177, 67],
    18 => [179, 70],
    19 => [183, 73],
    20 => [186, 76],
  }

  HALF_ELF_HEIGHT_WEIGHT_MAPPING = {
     2 => [139, 44],
     3 => [143, 49],
     4 => [147, 54],
     5 => [150, 58],
     6 => [155, 61],
     7 => [158, 63],
     8 => [160, 64],
     9 => [163, 67],
    10 => [165, 68],
    11 => [168, 69],
    12 => [173, 71],
    13 => [175, 74],
    14 => [178, 77],
    15 => [181, 80],
    16 => [183, 82],
    17 => [186, 85],
    18 => [188, 87],
    19 => [190, 88],
    20 => [191, 90],
  }
end
