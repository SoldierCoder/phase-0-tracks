# Vampires by Ed Drain

def survey
  puts 'What is your name?'
  name = gets.chomp.split(' ').map(&:capitalize).join(' ')
  puts "name is #{name}"

  puts 'How old are you?'
  age = gets.chomp.to_i
  puts "age: #{age}"

  puts 'What year were you born?'
  birth_year = gets.chomp.to_i
  puts "year of birth: #{birth_year}"

  puts 'The cafe here serves a mean garlic bread.  May we offer you some, on the house? (Y/n)'
  takes_garlic = gets.chomp
  if takes_garlic.upcase == 'Y'
    puts "this guy is not a Vampire, as he loves the Garlic Bread!"
  end

end
survey

