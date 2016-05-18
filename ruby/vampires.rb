# Vampires by Ed Drain
def question_response_boolean(question)
  puts question
  response = gets.chomp.upcase!
  boolean_return = ((response == 'Y') ? true : false)
end

def question_response_integer(question)
  puts question
  response = gets.chomp.to_i
end

def survey
  # puts 'What is your name?'
  # name = gets.chomp.split(' ').map(&:capitalize).join(' ')
  # puts "name is #{name}"

  # age = question_response_integer('How old are you?')
  # puts "age: #{age}"

  # birth_year =  question_response_integer('What year were you born?')
  # puts "year of birth: #{birth_year}"

  takes_garlic = question_response_boolean('The cafe here serves a mean garlic bread.  May we offer you some, on the house? (Y/n)')
  puts takes_garlic ? 'Participant does take garlic!' : 'Participant does not take garlic'

  takes_insurance = question_response_boolean('Would you like health insurance? (Y/n')
  puts takes_insurance ? 'Participant takes insurance' : 'Participant mumbled something about the Affordable Care Act...'

  
  if takes_garlic
    puts "this guy is not a Vampire, as he loves the Garlic Bread!"
  end

end
survey

