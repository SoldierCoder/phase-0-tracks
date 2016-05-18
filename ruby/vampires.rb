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
def got_age_right?(age, birth_year)
  current_year = Time.new.year
  rough_years = current_year - (birth_year + 1) # in my case, this gives 51, even though I am 50
   ((rough_years - age).abs <= 1)               #  plus or minus a year
end

def allergy_check
  puts "please enter your allergies, one at a time.  Enter 'DONE' when finished."
  allergy = ''
  while ((allergy != 'sunshine') && (allergy != 'done')) do 
    allergy = gets.chomp.downcase
  end
  allergy
end

def applicant_status(age_right, takes_garlic, takes_insurance, name)
  
  doesnt_take_garlic = takes_garlic ? false : true
  doesnt_take_insurance = takes_insurance ? false : true
  age_wrong = age_right ? false : true
  status = ''


  if (age_right && (takes_garlic || takes_insurance))
    status = "Probably not a vampire."
  elsif (age_wrong && ((doesnt_take_garlic && takes_insurance) || ( doesnt_take_insurance && takes_garlic)) )
    status = "Probably a vampire."
  elsif (age_wrong && doesnt_take_insurance && doesnt_take_garlic)
    status = "Almost certainly a vampire."
  end
  if (name == "Drake Cula" || name == "Tu Fang")
    status = "Definitely a vampire."
  elsif (status == '')
    status = "Results inconclusive"
  end
  
  allergy_status = allergy_check
  case status
    when "Probably not a vampire.", "Results inconclusive"
      if allergy_status == 'sunshine'
        status = "Participants status is upgraded to 'Probably a vampire' due to allergy to sunshine"
      end
    when "Probably a vampire.", "Almost certainly a vampire.", "Definitely a vampire."
      status = status + " (also allergic to sunshine)"
  end
  status
end


def survey
  puts 'What is your name?'
  name = gets.chomp.split(' ').map(&:capitalize).join(' ')
  puts "name is #{name}"

  age = question_response_integer('How old are you?')
  puts "age: #{age}"

  birth_year =  question_response_integer('What year were you born?')
  puts "year of birth: #{birth_year}"

  takes_garlic = question_response_boolean('The cafe here serves a mean garlic bread.  May we offer you some, on the house? (Y/n)')
  puts takes_garlic ? 'Participant does take garlic!' : 'Participant does not take garlic'

  takes_insurance = question_response_boolean('Would you like health insurance? (Y/n')
  puts takes_insurance ? 'Participant takes insurance' : 'Participant mumbled something about the Affordable Care Act...'

  # name = "Tu Fang"
  # age = 50
  # birth_year = 1930
  # takes_garlic = false
  # takes_insurance = false

  age_right = got_age_right?(age, birth_year)
  p applicant_status(age_right, takes_garlic, takes_insurance, name)


end

  levels_of_paperwork_hell = question_response_integer("How many employees will be processed today?")

  levels_of_paperwork_hell.times do
   survey
  end

