def report(client)
  puts "client: #{client[:first_name]} #{client[:last_name]}"
  puts "age: #{client[:age]}"
  reside_str = "This client does"
  does_or_not =  (client[:in_US]) ? ' ' : ' does not '
  reside_str = reside_str + does_or_not + 'reside in the United States'
  puts reside_str
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
 