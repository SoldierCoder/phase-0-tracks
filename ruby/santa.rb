class Santa
  def initialize(gender, ethnicity)
    
    puts "initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity

    @reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer',
      'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    @age = 0
  end

  def speaks
    puts "Ho, ho ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
  
  def celebrate_birthday
    @age = @age + 1
  end
  
  def get_mad_at(reindeer_name)
    idx = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.delete_at(idx)
    @reindeer_ranking.push(reindeer_name) 
  end

  def gender=(to_gender)
    @gender = to_gender
  end

  def gender
    @gender
  end

  def age
    @age
  end
  
  def ethnicity
    @ethnicity
  end
  def report
    s = "Santas age is #{@age}.  "
    celebrate_birthday
    s = s + "But wait, Santa JUST had a birthday!  Santa age now is: #{@age}\nSanta is peaceful and happy...\n"
    

    puts s
  end
end


santas = []
santas << Santa.new("female", "Ukrainian")
santas.last.report
santas.last.gender = "N/A"
puts "Santa's gender is #{santas.last.gender}"
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "Latino")
