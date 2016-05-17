# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
def init_list(big_string)

  item_names = big_string.split(/\s+/)
  items= {}
  item_names.each do |item|
    items[item.to_sym] = 0
  end
  p items
  items
end



#split bigstring by spaces into array
#iterate over each item and add a quantity for each item

 # [fill in any steps here]
 # set default quantity

 # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list

# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:

#driver 
big_string = "apples carrots      onions hamburger curry"
items = init_list(big_string)











# output: