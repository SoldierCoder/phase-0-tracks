def set_default_age(age)
  if age == '' 
    age = nil            
  else 
    age = age.to_i
  end
end

def report_age(age)
  if age.nil?
    puts "What an incredible find!  You have in your possession one of the fabled Timeless Hamsters.  Keep it well and you will be blessed with good fortune!"
  else
    puts "Hamster is estimated to be #{age} months old."
  end
end


def set_default_candidate_status(candidate)
  if candidate == 'N' 
    candidate = false          
  else 
    candidate = true  # because no hamster is born bad!
  end
end

def good_candidate?(candidate)
  if candidate == "Y" || candidate == true
    true
  else
    false
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

puts "Hamster's name:         #{name}"
puts "Prefered volume level:  #{volume}"
puts "Hamster's fur color:    #{fur}"
puts "Candidacy:"
if good_candidate?(candidate) 
  puts "   No hamster is born bad and this one seems like a fine pet for you!"
else
  puts "   Unfortunately this hamster has picked up some very bad habits, so adopt at your own risk!"
end
puts "Estimated age: "
report_age(age)
