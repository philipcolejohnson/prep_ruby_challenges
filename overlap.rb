def overlap (first, second)
  over = false


  if first[0][0] <= second [0][0]
    if first[0][1] <= second [0][1]
      #the first rectangle is lower and to the left
      over = true if (second[0][1] < first[1][1]) && (second[0][0] < first[1][0])
    else
      #the first rectangle is higher and to the left
      over = true if (first[1][0] > second[0][0]) && (first[0][1] < second[1][1])
    end
  else 
    #the second rectangle is to the left
    if first[0][1] <= second [0][1]
      #the second rectangle is higher and to the left
      over = true if (first[1][1] > second[0][1]) && (first[0][0] < second[1][0])
    else
      #the second rectangle is lower and to the left
      over = true if (first[0][0] < second[1][0]) && (first[0][1] < second[1][1])
    end  
  end

  over
end

puts "Situation 1"
puts overlap([[0,0], [3,3]] , [[1,1], [4,5]])
puts overlap([[0,0], [1,4]] , [[1,1], [3,2]])

puts "Situation 2"
puts overlap([[0,1], [2,3]] , [[1,0], [3,2]])
puts overlap([[0,1], [2,4]] , [[2,0], [4,3]])

puts "Situation 3"
puts overlap([[2,0], [4,2]] , [[1,1], [3,3]])
puts overlap([[2,0], [3,2]] , [[1,1], [2,2]])

puts "Situation 4"
puts overlap([[1,1], [3,3]] , [[0,0], [2,2]])
puts overlap([[2,1], [4,4]] , [[0,0], [2,2]])