# class PillBottle
#
# Attributes
#
#   warnings will be an array of strings representing reasons not to take whatever pills are in this bottle
#   
#   directions will list directions for how often to take the pills in the bottle
#
#   pills will be an integer count of how many pills remain in the bottle
#   
#   opened a true value indicates the bottle is opened, a false value means it is closed
#
# Instance methods
#
#   open allows someone to call the methods dispense_pill or fill
#
#   fill(x)  when the PillBottle has been opened the manufacturer of the pill may fill it with a given number of pills 
#   
#   close  -- closes the pill bottle
#
#   dispense(x) when the PillBottle has been opened, calling this method allowes x number of pills to be dispensed 
#  
#   

class PillBottle
  attr_reader     :pills
  attr_accessor   :warnings, :directions
  opened = false
  
  def initialize(one_or_more_warnings, some_directions)
    @warnings = one_or_more_warnings
    @directions = some_directions
    @pills = 10
  end

  def open
    puts "The Pill Bottle is now open"
    @opened = true
  end

  def close
    puts "The Pill Bottle is now closed"
    @opened = false
  end

  def fill(x)
    if !@opened
      puts "you tried to fill the bottle but it was closed and all the pills spilled."
      @pills = 0
    else
      puts "you filled the bottle with #{x} pills"
      @pills = x
    end
  end
  def dispense(x) 
    if !@opened 
      puts "You struggled with the child-proof lid and got ZERO pills!"
    else
      puts "you got #{x} pills from the bottle"
    end
  end
  def report 
    puts "Your warnings are: "
    @warnings.each {|warning| puts "#{warning}" }
    puts "Directions: "
    @directions.each {|instructional_text| puts "#{instructional_text}"}
    puts @opened ? "Your pill bottle was left open" : "Your pill bottle was lext closed"
    puts "You have #{@pills} left in your bottle."
    puts ""
  end


end
s =  "Welcome to you new job as a Wizard's apprentice.  As part of the new Affordable Curio's Act,"
s = s + " everyone is entitled to fill as many pill bottles as they like.\n"
s = s + "You may [O]pen, [C]lose, "
s = s +"[F]ill  or [D]ispense Pills from your pill bottle or choose [N]ext or [Q]uit.  Your first "
s = s +"pill bottle is made for you and contains 365 tablets of Cetirizine Hydrochloride (allergy "
s = s +" medicine)."

puts s
pill_bottles = []



pb = PillBottle.new(["Do not use if you have ever had an allergic reaction to this product"], 
  ["One 10mg daily"])
pb.report

choice_statement = "You may [O]pen, [C]lose, [F]ill  or [D]ispense Pills from your pill bottle or choose [N]ext or [Q]uit."
choice_statement = choice_statement + "Please enter one of the following characters: 'OCFGNQ'"
puts choice_statement
choice = gets.chomp.upcase!

while (choice != 'Q') do 
  case choice
  when 'O'
    pb.open
  when 'C'
    pb.close
  when 'F'
    random_pill_quantity = rand(4...365)
    pb.fill(random_pill_quantity)
  when 'D'
    small_random_pill_quantity = rand(1...3)
    pb.dispense(small_random_pill_quantity)
  when 'N'
    pill_bottles.push(pb)
    puts "you have #{pill_bottles.length} pill_bottles in your possession"
    pb = PillBottle.new(["Do not use this as a substitute for living"],["one $25 pill every hour, until Ed Drain is rich"] )

  else 
    puts "Your choice made no sense!"
  end
  puts choice_statement
  choice = gets.chomp.upcase!
end
pill_bottles.each {|pill_bottle| pill_bottle.report }





