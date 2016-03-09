def power (base, exponent)
  result = 1

  exponent.times do
    result *= base
  end

  result
end

puts "What base?"
b=gets.chomp
puts "What exponent?"
e=gets.chomp

puts "#{b}^#{e} = #{power(b.to_i, e.to_i)}"
