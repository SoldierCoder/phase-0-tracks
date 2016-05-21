class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  


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
  
  def report
    s = "Santas age is #{@age}. Santas gender is #{@gender}  "
    celebrate_birthday
    s = s + "But wait, Santa JUST had a birthday!  Santa age now is: #{@age}\nSanta is peaceful and happy...\n"
    s = s + "Santa's reindeer are in this order: \n"
    @reindeer_ranking.each {|reindeer| s = s + "#{reindeer}\n" }
    s = s + "\n\nThat is, until Santa got angry as Dasher, who was always trying to get in front of Rudolph.\n"
    get_mad_at("Dasher")
    s = s + "So Santa sent Dasher to the naughty reindeer place -- the back of the line!\n"
    @reindeer_ranking.each {|reindeer| s = s + "#{reindeer}\n" }

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

