def is_prime?(num)
  i=3
  return true if (num==2)
  return false if (num<i) || (num%2==0)
  until i>=num
    return false if num%i==0
    i+=2
  end
  true
end

puts "Number?"
n=gets.chomp
puts is_prime?(n.to_i)