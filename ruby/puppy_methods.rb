class Puppy


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


end

annie = Puppy.new
trisha = Puppy.new
annie.fetch("the mailman")
annie.speak(2)
annie.roll_over
puts "I am #{annie.dog_years(5)}"



