module Shout
  def self.yell_angrily(words)
    words + "!!!" + "  :("
  end

  def self.yelling_happily(happy_words)
    happy_words + " YAY!!  " + "  :)"
  end
  yelling_happily("I'm cancer free!")
end

puts Shout.yell_angrily 'Where did you learn to drive??'
puts Shout.yelling_happily "She said 'Yes'!"
