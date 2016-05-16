def report(client)
  puts client
end


# Ask the client themselves and whether or not contract is in the US
puts "First Name:"
first_name = gets.chomp.capitalize!


puts "Last Name:"
last_name = gets.chomp.capitalize!



puts "Age:"
age = gets.chomp.to_i


puts "Is this for a US residence? (Y/n)"
us = gets.chomp.upcase!
in_US = ((us == 'Y') ? true : false)

# save the data to the hash


client = {
  :first_name => first_name,
  :last_name => last_name,
  :age => age,
  :in_US => in_US
}

# print out the results
report(client)

# give the person one more chance to correct data
puts "Last chance!  which item would you like to edit? (first_name, last_name, age, in_US, or done)"
last_chance_edit = gets.chomp.downcase
input_buffer = ''
# decide which thing to edit and edit it
case 
  when last_chance_edit == "first_name"
    
    puts "first_name should be set to: ?"
    buffer = gets.chomp.capitalize
    client[:first_name] = buffer
    

  when last_chance_edit == "last_name" 
    
    puts "last_name should be set to: ?"
    buffer = gets.chomp.capitalize
    client[:last_name] = buffer
    

  when last_chance_edit == "age"

    puts "age should be set to: ?"
    buffer = gets.chomp.to_i
    client.store(:age, buffer)
    

  when last_chance_edit == "in_us"
    
    puts "does the client live in the US? (Y/n)"
    buffer = gets.chomp.upcase
    in_US = ((buffer == 'Y') ? true : false)
    client.store(:in_US, in_US)
    

  when last_chance_edit === "done"
else 
  
end

# print it out again
report client

