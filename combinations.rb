def combinations (first_string, second_string)
  combined_strings = []

  first_string.each do |item_one|
    second_string.each do |item_two|
      combined_strings << item_one + item_two
    end
  end

  combined_strings
end

puts combinations(['on','in', 'hello'],['to','rope', 'it\'s me']).to_s


