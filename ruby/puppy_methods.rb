class Puppy

  def initialize
    puts "initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times { puts "Woof!" }
  end

  def roll_over 
    puts "Roll over!"
  end

  def dog_years(human_years)
    human_years * 7
  end

  def at_night(temp)
    if temp < 32
      puts "cuddle cuddle"
    else
      puts "pant pant"
    end
  end


end

annie = Puppy.new
trisha = Puppy.new
annie.fetch("the mailman")
annie.speak(2)
annie.roll_over
puts "I am #{annie.dog_years(5)}"
trisha.at_night(30)
annie.at_night(80)



