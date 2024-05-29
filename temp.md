# leap_year
```ruby
def leap_year?(num)
  if (num%4==0) {
    return true
  } else {
    return false
  }
end
[2023,2024].each do |year|
  puts "leap_year? #{year} = #{leap_year?(year)}."
end

```
# fibonacci
```ruby

def fibonacci(index)
  if index == 0
    return 1
  elsif index == 1
    return 1
  else
    return fibonacci(index-1) + fibonacci(index-2)
  end
end
puts "index expected actual"
[[0,1],
 [1,1],
 [2,2],[3,3],[4,5],[5,8],[6,13],[7,21],[8,34],[9,55],[10,89],[11,144]
].each do |index, expected|
  actual = fibonacci(index)
  p [index, expected, actual]
end
```
# roman
```ruby
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

# def to_roman(arabic)
#   roman = ''
#   divider = 5
#   char = 'V'
#   p quo= arabic/divider
#   roman += char*quo
#   p resideual = arabic%divider
#   roman += 'I'*resideual
#   return roman
# end

def to_roman(arabic)
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
  divider, char = 5, 'V'
  quo= arabic/divider
  roman += char*quo
  resideual = arabic%divider
  roman += 'I'*resideual
  return roman
end

def re_to_roman(arabic)
  roman = ''
  divider = 5
  quo= arabic/divider
  roman += 'X'*quo
  resideual = arabic%5
  roman += 'I'*resideual
  return roman
end

# puts "index expected actual"

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
  actual = to_roman(arabic)
  p [arabic, expected, actual]
end
```
# roman_class
```ruby
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

    # 
    # assert_equal test like below
    # 
    # assert_equal 'I', 1.to_roman
    # assert_equal 'II', 2.to_roman
    # assert_equal 'III', 3.to_roman

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
```
# hello
```ruby
name = ARGV[0] || "World"
puts "Hello #{name}!"
p num = ARGV[1].to_f
p num.class
```
# hello_class
```ruby
class String
  def hello #(name)
    # puts "Hello #{self}!"
    name = self
    return "Hello #{name}!"
  end
end
# p "hello".class

p name = ARGV[0] || "world"
# p name.class
# p name.methods
# p hello(name)
p name.hello
p self
```
# directory
```ruby
p Dir.pwd
# p Dir.methods
p Dir.ancestors
Dir.glob('*.md').each_with_index do |file, i|
  p comm = ["file", file, "file#{i}_#{file}"].join(" ")
  p [file,file.match(/(.+)(.md)/)]
file.match(/(.+)(README.md)/) do |e|
      p [($1+file).downcase, $1]
      p [($1+file).gsub, $1]
  end
  system(comm)
end
```
# mk_hyper_text
```ruby
require 'pp'

all_data = []
Dir.glob('*.rb').each_with_index do |file, i|
  all_data << [File.mtime(file).to_s, file]
end
txt = []
all_data.sort.each do |mtime, file|
  p head = '# ' + file.split(".")[0]
  txt << head
  txt << '```ruby'
  txt << File.read(file)
  txt << '```'

end
File.write("temp.md", txt.join("\n"))
```