def uniques (start_array)
  finished_array = []

  start_array.each do |item|
    add=true #indicates whether or not to add the item

    finished_array.each do |check_item|
      add=false if item==check_item
    end

    finished_array << item if add
  end

  finished_array
end


tester = [1,5,'frog', 2,1,3,'frog', 'trang', 32, 5]
puts uniques(tester).to_s
