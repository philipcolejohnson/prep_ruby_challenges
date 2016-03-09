def factorial (number)
  return false unless number>0
  result = 1
  (2..number).each do |counter|
    result *= counter
  end
  result
end

puts "What number?"
n=gets.chomp
puts "#{n}! = #{factorial(n.to_i)}"
