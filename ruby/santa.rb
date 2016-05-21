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
    
end


santas = []
santas << Santa.new("female", "Ukrainian")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "Latino")
