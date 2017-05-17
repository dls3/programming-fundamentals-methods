# We're going to make a shopping list by storing a few items in an array.
# Feel free to start with whatever items you like:
#
# grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
# After each step, run your program to ensure it works before you move onto the next one.
# It's a good idea to commit often, too.
# #
# Your next step should present your grocery list with an item on each line, with an asterisk (*)
# in front of it so that it appears like this:
# #
# #
# You realize you've forgotten some rice, so add it to your list and output it again. Given that you've
# already output your list twice, it might be good to consider writing a method to do this.
# Putting frequently used chunks of code in a method lets you reuse them throughout your program without having to type
# them out over and over. You lost count of how many things you need to pick up.
# Better output the total number of items on your list.
# Check to see if your list includes "bananas". If it does, output "You need to pick up bananas".
# Otherwise, output "You don't need to pick up bananas today".
# Display the second item in the list. (Don't forget that arrays indices start at zero!)
# It turns out that everything in this grocery store you're visiting is stored alphabetically, so to better plan out what you
# need to buy you should sort your grocery list and output it with asterisks again.
# After looking everywhere, you can't find the salmon. Delete it from your list and redisplay the list one last time.
# After you're done, be sure you have everything committed and pushed to your github repo.


grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

def new_line(list)
  puts "Your grocery list:"
  list.each do |num|
    puts "*#{num}\n"
  end
end

def add_item(list, item)
  list << item
  puts "Added #{item} to your list"
end

def include_bananas(list, item)
  if list.include?(item) == false
    "You need to pick up #{item}(s)."
  end
end

def second_item(list)
  list[1]
end

def grocery_length(list)
  "There are #{list.length} items in your list."
end

def sort_alph(list)
  list.sort!
end

def delete_salmon(list)
  if list.include?("salmon") == true
    list.delete("salmon")
  end
end

#Display items as a list
puts "Display items as a list"
new_line(grocery_list)
puts "\n"

# add rice to list using method
puts "Adding rice to list"
add_item(grocery_list, 'rice')
puts grocery_list
puts "\n"

# output total number of items in list
puts grocery_length(grocery_list)
puts "\n"

#Check if list includes bananas (or any item)
puts include_bananas(grocery_list, 'bananas')
puts "\n"

# Output second item of list
puts "The second item of the list is: #{second_item(grocery_list)}"
puts "\n"

#Sort list alphabetically, output
sort_alph(grocery_list)
puts "Alphabetize the list"
new_line(grocery_list)
puts "\n"

# Delete salmon from the list
delete_salmon(grocery_list)
puts "Deleting salmon"
new_line(grocery_list)
