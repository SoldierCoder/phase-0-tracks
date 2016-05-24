# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# 
#steps:
# Get user input GETS.CHOMP
# SPLIT user input into array
#   replace each element in the names array with a 2-element array(of [name, quantity] ) 
#   
# output: an array of the form: [[name1, quantity1], [name2, quantity2], ...]

# Method to add an item to a list
# input: item name and optional quantity
# steps: create a two-element array, add it as a new element in your list
# output: an array of the form: [[name1, quantity1], [name2, quantity2], ...]

# Method to remove an item from the list
# input: the list index, and use appropriate method to delete list[index] from our list
# steps: given the index, do the delete
# output: a revised list

# Method to update the quantity of an item
# input: user chosen index and quantity to add
# steps: at list[index] there is a 2-element array: retrieve it and store it in item.  
#        that item, has as its last element the quantity to be updated, pop that last element off
#        push onto item the new quantity
#        set list[index] = item
# output: revised list

def new_item(name, quantity=0)
  [name, quantity]
end
def add_item(list, name, quantity)
  list.push([name, quantity])
end

def remove_item(list, index)
  list.delete_at(index)
end

def update_quantity(list, index, quantity)
  item = list[index]
  item.pop
  item.push(quantity)
  list[index] = item
end

def find_longest_length_name(list)

  strings = list.map { |element| element[0] } # now strings is an array of names
  longest_length = strings.max_by(&:length).length
end

def format_str(longest)
  longest += 1
  str = "%-#{longest}s%5d"
end

def print_it(my_format_str, name, quantity)
  s = sprintf(my_format_str, name, quantity)
  puts "#{s}"
end
def print_pretty_list(list)
  longest = find_longest_length_name(list)
  my_format_str = format_str(longest)

  list.each { |item| print_it(my_format_str,item[0], item[1]) }
end

def create_initial_list(list)
  puts "Please enter each item in your shopping list, separated by a space (ex: milk eggs cookies):"
  shopping_str = gets.chomp.downcase
# 
# shopping_str = "milk eggs cookies watermelon coal-fire"
  list  = shopping_str.split(" ").map { |name| new_item(name, 0) }
end

def get_commands(list)
  puts("Please enter an [A]dd, [D]elete, [E]dit Quantity, or [Q]uit")
  command = gets.chomp.downcase
  while command != 'q' 
    if command == 'a'                   # Add a new item
      puts("What item would you like to add? (ex: tea) ")
      name = gets.chomp.downcase
      puts("How many?")
      quantity = gets.chomp.to_i
      add_item(list, name, quantity)
    elsif command == 'd'                # delete an item
      puts("Which item number would you like to delete?")
      index = gets.chomp.to_i
      remove_item(list, index)
    elsif command == 'e'                # edit Quantity
      puts("which item number would you like to update?")
      index = gets.chomp.to_i
      puts("How many?")
      quantity = gets.chomp.to_i
      update_quantity(list, index, quantity)  
    end
    print_pretty_list(list)
    command = ''
    puts("Please enter an [A]dd, [D]elete, [E]dit Quantity, or [Q]uit")
    command = gets.chomp.downcase
  end
end

my_list = []
my_list = create_initial_list(my_list)
p my_list
print_pretty_list(my_list)
get_commands(my_list)


