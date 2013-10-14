# Warm-up

# Using the .each method with an array

students = %w[ Venvictor Garrett Joe Chance Laurent Katie Abdulla Erinn Pete Jack Parag ]

# %w is a short-hand way to create an array of strings. Each string is created based on the spaces.

puts "\nShowing names using an each loop in a do end block.."

students.each do |student|
  puts "#{student}"
end


# Using the .each method with the one liner block syntax

puts "\nShowing names using an each loop in a one-line block.."

students.each { |student| puts "#{student}" }

# { is the same as do
# } is the same as end

# Using the .each method with a hash

student = { "name" => "Vincent Cabansag", "email" => "vince@starterleague.com", "twitter" => "@vcabansag" }

# Accessing the twitter key in the hash will return the corresponding value

student["twitter"]

student.each do |key, value|
  puts "#{key}: #{value}"
end




# ITERATION CHALLENGE

# https://github.com/sswebdev/enumerable

# Accessing hashes and arrays

# Create a set of hashes like below:

student1 = { "first" => "Neal", "last" => "Sales-Griffin", "hometown" => "Chicago" }
student2 = { "first" => "Mike", "last" => "McGee", "hometown" => "Freeport" }
student3 = { "first" => "Jeff", "last" => "Cohen", "hometown" => "Skokie" }
student4 = { "first" => "Raghu", "last" => "Betina", "hometown" => "Goshen" }
student5 = { "first" => "Vince", "last" => "Cabansag", "hometown" => "Sturgis" }

# Create a new array of students containing these hashes.

students = [student1, student2, student3, student4, student5]

# Create a hash that contains the States of the corresponding cities.

states = {"Chicago" => "Illinois", "Freeport" => "Illinois", "Skokie" => "Illinois",
          "Goshen" => "Indiana", "Sturgis" => "Michigan"}

# Automate the task of displaying the students' names along with their
# hometowns and States. Use the .each method. Your output should look like this:

#  Neal Sales-Griffin is from Chicago, Illinois.
#  Mike McGee is from Freeport, Illinois.
#  Jeff Cohen is from Skokie, Illinois.
#  Raghu Betina is from Goshen, Indiana.
#  Vince Cabansag is from Sturgis, Michigan.













# Enumerable

# They give your collection classes like Arrays and Hashes functionality
# and flexibility.

# Using the select and reject methods

# iterates through all the elements in your collection and performs logic on each one
# if the logic returns TRUE, then it adds the item to a new array
# returns an array when finished iterating

# Use select or reject if you need to select or reject items based on a condition.


# CHALLENGE

car_lot = [{:company => "Ford", :type => "SUV"},
           {:company => "Honda", :type => "Sedan"},
           {:company => "Volkswagen", :type => "Sedan"},
           {:company => "Ferrari", :type => "Sedan"},
           {:company => "BMW", :type => "Sedan"},
           {:company => "Porsche", :type => "Sedan"},
           {:company => "Toyota", :type => "SUV"}]


# Use the array of hashes above with the select and/or reject methods
# Try using the count method and display output like following.

# OUTPUT:

# "I checked the car lot and we have 5 sedans."
# "Here's the manufacturers for each of those sedans:"
# "Honda, Volkswagen, Ferrari, BMW, Porsche"

# "We also have 2 SUVs. They're made by:""
# "Ford and Toyota"




# Using the collect method

# iterates through all elements in your collection and peferms logic on each one
# the result of the logic performed is stored into a new array
# returns an array when finished iterating

# Use collect if you need to build an array of the results from logic in the block.



# CHALLENGE

tsl_team = [{ :name => "Vince", :twitter => "vcabansag" },
            { :name => "Raghu", :twitter => "rebtina717" },
            { :name => "Jeff", :twitter => "jeffcohen" },
            { :name => "Caity", :twitter => "caitymoran" }
            { :name => "Neal", :twitter => "nealsales" },
            { :name => "Arvin", :twitter => "arvindang" },
            { :name => "Mike", :twitter => "michaelmcgee" }]

# Use the array of hashes above with the collect method to display the following output:

# OUTPUT

# "Here's a collection of some of the TSL staff twitter handles:"

# @vcabansag
# @rebtina717
# @jeffcohen
# @caitymoran
# @nealsales
# @arvindang
# @michaelmcgee






# Using the detect method

# iterates through all elements in your collection and peferms logic on each one
# returns the first object for which the result is TRUE
# returns nil otherwise

# Use detect if you need to find an item in an array.

# CHALLENGE

club_paris = %w[ guy gal guy gal guy gal guy guy gal
                 gal guy gal guy gal bro gal guy guy
                 guy gal guy gal guy gal guy gal guy
                 guy gal guy gal bro gal guy guy guy
                 gal guy gal guy gal bro gal guy guy
                 gal guy gal bro gal guy guy gal gal
                 gal guy gal guy gal gal gal gal guy ]

club_lumen = %w[ guy gal guy gal guy gal guy guy gal
                 gal guy gal guy gal gal gal guy guy
                 guy gal guy gal guy gal guy gal guy
                 guy gal guy gal gal gal guy guy guy
                 gal guy gal guy gal gal gal guy guy
                 gal guy gal guy gal guy guy gal gal
                 gal guy gal guy gal gal gal gal guy ]

club_cubby = %w[ guy gal guy gal guy gal guy guy gal
                 gal guy gal guy gal bro gal guy guy
                 guy gal guy gal guy gal guy gal guy
                 guy gal guy gal bro gal guy guy guy
                 gal guy gal guy gal bro gal guy guy
                 gal guy gal bro gal guy guy gal gal
                 gal guy gal guy gal gal gal gal guy ]

# Use the arrays above with the detect method to display the following output
# Try using conditionals

# OUTPUT

# For each club, display whether you see a "bro" or if the coast is clear.

# "Entering the first club..""
# "Bro spotted, let's find another club"

# "Entering the second club..""
# "Coast is clear"

# "Entering the first club..""
# "Bro spotted, let's find another club"
