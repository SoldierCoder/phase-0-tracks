module Shout
  # def self.yell_angrily(words)
  #   words + "!!!" + "  :("
  # end

  # def self.yelling_happily(happy_words)
  #   happy_words + " YAY!!  " + "  :)"
  # end
  def yell_angrily(words)
    words + "!!!" + "  :("
  end

  def yelling_happily(happy_words)
    happy_words + " YAY!!  " + "  :)"
  end
    
end

class Soldier
  include Shout
end

class Doctor
  include Shout
end

soldier = Soldier.new
puts soldier.yell_angrily("Get on the ground, FACE DOWN.  NOW!")
puts soldier.yelling_happily("Bravo Company!  We are going home!")

doctor = Doctor.new
puts doctor.yell_angrily('I asked for a CLAMP!')
puts doctor.yelling_happily('I think we can save this one!')




# puts Shout.yell_angrily 'Where did you learn to drive??'
# puts Shout.yelling_happily "She said 'Yes'!"
