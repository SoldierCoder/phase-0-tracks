def send_love_to_teacher
  puts "this is before running a block"
  first_name = "Glenna"
  last_name = "Mowry"
  yield(first_name, last_name)
  puts "after the block"
end

send_love_to_teacher { |first_name, last_name| puts "#{first_name} #{last_name}\, hi how are you?" }