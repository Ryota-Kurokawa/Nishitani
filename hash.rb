p list1 = [1, 2, 3]
# [index]: 指数
p list1[0]
p list1[1] = 4
p list1

p "d".to_sym # => :d, symbol
hash1 = {"a" => 1, :a =>2, b: 3}
p hash1["a"]
p hash1[:a] = 2
hash1["c".to_sym] = 4
p hash1