def counting_game
  direction_up = true
  person_index = 0
  friends = [[],[],[],[],[],[],[],[],[],[]] #Array.new(10, []) #
  puts friends.to_s

  (1..100).each do |count|
    friends[person_index] << count
    person_index = change_person(person_index, count, direction_up)
  end

  friends
end

def change_person (person_index, count, direction_up)
  new_index = person_index==9 ? 0 : person_index + 1
  new_index


end

def print_person_count(places)
  last=0
  places.each_index do |person|
    puts "Person #{person+1} counted: #{places[person].to_s}"
    last = person if places[person].include?(100)==true
  end
  puts "\nThe last person was #{last+1}."
end

print_person_count(counting_game)