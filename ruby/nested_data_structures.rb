library =
{
  'Ruby' => 
    [
      'Programming Ruby 1.9 & 2.0',
      'The Well-Grounded Rubyist',
      'The Ruby Way',
      'The Ruby Cookbook'
    ],
  'Testing' => 
    [
      'The RSpec Book',
      'Everyday Rails Testing with RSpec',
      'Rails 4 Test Prescriptions',
      'The Cucumber Book'
    ],
  'Vim' => 
    [
      'Practical Vim -- Edit Text at the Speed of Thought',
      'Hacking Vim'
    ], 
  'MEAN Stack' => 
    [
      'Getting MEAN with Mongodb, Express, Angular and Node',
      'Write Modern Web Apps with the MEAN Stack'
    ]

}

puts "This is my library.  There are many like it, but this one is mine."
puts "These are the categories of books I have:"
library.keys.each { |book_type| puts "#{book_type}" }

puts "My favorite book on testing with RSpec is #{library['Testing'][0]} But all the book on testing are good"
puts "from least to most favorite:"
library['Testing'].reverse.each { |book| puts "#{book}" }

