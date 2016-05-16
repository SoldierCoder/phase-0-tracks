def report(client)
  puts client

  
  # puts "client: #{client[:first_name]} #{client[:last_name]}"
  # puts "age: #{client[:age]}"
  # reside_str = "This client does"
  # does_or_not =  (client[:in_US]) ? ' ' : ' does not '
  # reside_str = reside_str + does_or_not + 'reside in the United States'
  # puts reside_str
end


# Ask the client about thier design preferences
# puts "First Name:"
# first_name = gets.chomp.capitalize!


# puts "Last Name:"
# last_name = gets.chomp.capitalize!



# puts "Age:"
# age = gets.chomp.to_i


# puts "Is this for a US residence? (Y/n)"
# us = gets.chomp.upcase!
# in_US = ((us == 'Y') ? true : false)

# save the data to the hash

first_name = 'Ed'
last_name = 'Drain'
age = 50
in_US = true


client = {
  :first_name => first_name,
  :last_name => last_name,
  :age => age,
  :in_US => in_US
}

report(client)

puts "Last chance!  which item would you like to edit? (first_name, last_name, age, in_US, or done)"
last_chance_edit = gets.chomp.downcase
input_buffer = ''

case 
  when last_chance_edit == "first_name"
    
    puts "first_name should be set to: ?"
    input_buffer = gets.chomp.capitalize!
    client.store(:first_name, input_buffer)

  when last_chance_edit == "last_name" 
    
    puts "last_name should be set to: ?"
    input_buffer = gets.chomp.capitalize!
    client.store(:last_name, input_buffer)

  when last_chance_edit == "age"

    puts "age should be set to: ?"
    input_buffer = gets.chomp.to_i
    client.store(:age, input_buffer)

  when last_chance_edit == "in_US"
    
    puts "does the client live in the US? (Y/n)"
    input_buffer = gets.chomp.upcase!
    in_US = ((input_buffer == 'Y') ? true : false)
    client.store(:in_US, in_US)
else last_chance_edit == "done"

end

puts client

