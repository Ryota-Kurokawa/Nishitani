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