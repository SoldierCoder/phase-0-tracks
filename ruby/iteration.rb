def send_love_to_teacher
  puts "this is before running a block"
  first_name = "Glenna"
  last_name = "Mowry"
  yield(first_name, last_name)
  puts "after the block"
end

send_love_to_teacher { |first_name, last_name| puts "#{first_name} #{last_name}\, hi how are you?" }

dbc_places = ["chicago", "seattle", "dc", "san diego"]
dog_breeds_perk = {"Huskie" => "beatuiful yodels", "Irish Wolfhound" => "size", "German Shepherd" => "loyalty"}

dbc_places.each do | place |
  puts "place is #{place}"
end

dbc_places.map do | place |
  puts "place is #{place.upcase}"
end

dbc_places.each do | place |
  puts "(after map) place is #{place}"
end

dbc_places.map! do | place |
  puts "place is #{place.upcase}"
  place.upcase
end

dbc_places.each do | place |
  puts "(after map!) place is #{place}"
end

dog_breeds_perk.each do | breed, perk |
  puts "the breed called #{breed} is known for it's #{perk}"
end


numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.delete_if { |number| number < 5 }
p numbers

numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.keep_if { |number| number < 5 }
p numbers

numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.reject! { |number| number < 5 }
p numbers

numbers = [1,2,3,4,5,6,7,8,9,10]
new_numbers = numbers.drop_while { |number| number < 7}
p new_numbers



