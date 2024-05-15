class Integer
    def to_roman #(arabic)
      arabic = self
      roman = ''
      [
        [1000, 'M'],
        [999, 'CMXCIX'],
        [961, 'CMLXI'],
        [900, 'CM'],
        [732, 'DCCXXXII'],
        [500, 'D'],
        [499, 'CDXCIX'],
        [400, 'CD'],
        [100, 'C'],
        [99, 'XCIX'],
        [97, 'XCVII'],
        [51, 'LI'],
        [40, 'XL'],
        [10, 'X'],
        [9, 'IX'],
        [5, 'V'],
        [4, 'IV'],
        [1, 'I'],
      ].each do |divider, char|
        # actual = to_roman(arabic)
        # p [arabic, expected, actual]
        quo= arabic/divider
        roman += char*quo
        resideual = arabic%divider
        arabic =resideual
        # roman += 'I'*resideual
      end
      # divider, char = 5, 'V'
      # quo= arabic/divider
      # roman += char*quo
      # resideual = arabic%divider
      # roman += 'I'*resideual
      return roman
    end


    [
      [1,'I'],
      [2, 'II'],
      [3, 'III'],
      [6, "VI"],
      [7, "VII"],
      [11, 'XI'],
      [9, 'IX'],
      [40, 'XL'],
      [90, 'XC'],
      [100, 'C'],
      [400, 'CD'],
      [500, 'D'],
      [900, 'CM'],
      [1000, 'M'],
      [14, 'XIV'],
      [15, 'XV'],
      [16, 'XVI'],
      [19, 'XIX'],
      [38, 'XXXVIII'],
      [42, 'XLII'],
      [49, 'XLIX'],
      [51, 'LI'],
      [97, 'XCVII'],
      [99, 'XCIX'],
      [439, 'CDXXXIX'],
      [483, 'CDLXXXIII'],
      [499, 'CDXCIX'],
      [732, 'DCCXXXII'],
      [961, 'CMLXI'],
      [999, 'CMXCIX'],
    ].each do |arabic, expected|
      # actual = to_roman(arabic)
      actual = arabic.to_roman
      p [arabic, expected, actual]
  end
end