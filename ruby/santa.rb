class Santa
  def initialize
    puts "initializing Santa instance..."
  end

  def speaks
    puts "Ho, ho ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

ed = Santa.new
ed.speaks
ed.eat_milk_and_cookies "peanut butter"
