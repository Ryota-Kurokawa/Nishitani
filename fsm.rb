require 'pp'
file = 'roman.rb'
keys = ['# ', '```ruby', '```']
state = 'block_serch'
File.readlines(file)[0..4].each do |line|
  p [state, line.include?(keys[0]), line]
  if line.include?(keys[0])
    p state = 'block_serch'
  end
end
