def counting_game
  direction_up = true
  person_index = 0
  friends = []

  puts "How many players?"
  number_of_players = gets.chomp.to_i
  puts "What should we count to?"
  max_count = gets.chomp.to_i
  puts

  (1..max_count).each do |count|
    #starting with one, take the current number and assign it the current person
    friends << person_index

    # check our count. if it was %7, then switch direction
    direction_up = !direction_up if count % 7 == 0

    #determine who the next person is, and make him the current person
    person_index = change_person(person_index, direction_up, number_of_players)

    #if it was % 11 count up or down twice
    person_index = change_person(person_index, direction_up, number_of_players) if count % 11 == 0
    
  end

  friends
end

def change_person (person_index, direction_up, number_of_players)
  if direction_up
    new_index = (person_index==number_of_players - 1) ? 0 : person_index + 1
  else
    new_index = (person_index==0) ? number_of_players - 1 : person_index - 1
  end  

  new_index
end

def print_person_count(counter_list)
  counter_list.each_index do |count|
    puts "   \##{count+1} was counted by: Person #{(counter_list[count]+1).to_s}"
  end

  puts "\nThe last person was Person #{((counter_list[counter_list.length-1])+1).to_s}."
end

print_person_count(counting_game)