class Santa
  attr_accessor :gender, :age, :ethnicity
  


  def initialize(gender, ethnicity)
    
    
    @gender = gender
    @ethnicity = ethnicity

    @reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer',
      'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    @age = 0
    puts "initialized Santa: gender #{@gender}, ethnicity: #{@ethnicity}"
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
    s = "Santa\'s age is #{@age}. Santa\'s gender is #{@gender} Santa\'s ethnicity is #{@ethnicity}"
    
    puts s
  end
end

#driver code here
sample_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
sample_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

def random_age
  r = rand(0...141)
end
santas = []

i = 0
while (i <= 1000) do 

  g = rand(0...8)
  e = rand(0...6)
  s = Santa.new(sample_genders[g], sample_ethnicities[e])
  s.age = random_age  
  santas << s 
  i = i + 1

end
  
  puts "\n\n"

santas.each { |santa| santa.report }
