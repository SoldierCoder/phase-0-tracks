# Release 2

def build_array (x, y, z)
   method_array = []
   method_array << x << y << z
   # Implicly returns the created Array
 end

p build_array("jake", "was", "here")

def add_to_array (original_array, item)
  original_array.push item
end

p add_to_array(build_array("jake", "was", "here"), 42)

# Release 1

this_array = []

this_array << 5 << "here's a string" << false << nil << 0
p this_array

this_array.delete_at(2)
p this_array

this_array.insert(2, true)
p this_array

this_array.shift
p this_array

included = this_array.include? nil
if included
  puts "Does include 'nil'"
else
  puts "Does not include 'nil'"
end

that_array = [56, "jake", "ed", 42, false]

new_array = this_array + that_array
p new_array

