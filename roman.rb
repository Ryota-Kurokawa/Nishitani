# def roman(arabic)
#   roman = ''
#   if arabic == 1

#   if arabic == 4
#     arabic.times do
#       roman += 'IV'
#     end
#     roman = 'IV'
#   elsif arabic == 5
#     roman = 'V'
#   elsif arabic.times do
#     roman += 'I'
#   end
#   return roman
# end

def to_roman(arabic)
  roman = ''
  divider = 5
  char = 'V'
  p quo= arabic/divider
  roman += char*quo
  p resideual = arabic%divider
  roman += 'I'*resideual
  return roman
end

def re_to_roman(arabic)
  roman = ''
  divider = 5
  p quo= arabic/divider
  roman += 'X'*quo
  p resideual = arabic%5
  roman += 'I'*resideual
  return roman
end

# puts "index expected actual"

[
  [1,'I'],
  # [2, 'II'],
  # [3, 'III'],
  [6, "VI"],
  [11, 'xI'],
].each do |arabic, expected|
  actual = to_roman(arabic)
  p [arabic, expected, actual]
end