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
