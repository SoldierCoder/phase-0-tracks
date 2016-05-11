def set_default_age(age)
  if age == '' 
    age = nil            
  else 
    age = age.to_i
  end
end

def set_default_candidate_status(candidate)
  if candidate == 'N' 
    candidate = false          
  else 
    candidate = true  # because no hamster is born bad!
  end
end

puts "What is the hamster's name?"
name = gets.chomp

puts "what level of volume do you prefer from your hamster?" 
volume = gets.chomp.to_i

puts "Kind Hamster, tell us the color of your fine fur!"
fur = gets.chomp

puts "Is this hamster a good candidate for adoption (Y/N)?"
candidate = gets.upcase.chomp
candidate = set_default_candidate_status(candidate)


puts "how old would you say this hamster in months?"
age = gets.chomp
age = set_default_age(age)
