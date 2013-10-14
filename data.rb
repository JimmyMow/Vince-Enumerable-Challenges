# Loading seed data

puts "\nLoading data for the previous TSL students.. "

load 'seeds.rb'

# STUDENTS.each do |name|
#   puts "#{name}"
# end



# CHALLENGE 1

# Using the each method and the STUDENTS array. Find Vince
# and return the following output:

# name: Vince Cabansag
# twitter: @vcabansag
# github: vcabansag
# blog: http://vincentcabansag.com
# email: vince@starterleague.com

vince = STUDENTS.select { |student| student["first_name"] == "Vince"  }

vince.each do |x|
  puts "name: #{x['first_name']} #{x['last_name']}"
  puts "twitter: @#{x['twitter']}"
  puts "github: #{x['github']}"
  puts "blog: #{x['blog']}"
  puts "email: #{x['email']}"
end
# CHALLENGE 2

# Gather all of the Twitter handles into an array and show them on separate lines

handles = STUDENTS.collect { |student| student['twitter']  }
puts "Here is all the twitter handles: "
puts handles

# CHALLENGE 3

# Update your script so that you only show values of a person if they're present
# We don't want to see "blog: " or "github: "
def students_without_empties
    line = "---------------------------------"
    STUDENTS.each do |x|
    puts line
    puts x.values
    puts line
  end
end


students_without_empties
# CHALLENGE 4

# Refactor your code to use the .keys method to access the key value pairs
# We don't need to explicity type every key. Play around with the .keys method.

STUDENTS.each do |x|
  puts x.keys
end

# CHALLENGE 5

# Create a method to dispaly the details of a student
# Create a method to find a student by first name
# Take into account that the data set may continue people with the same names

# Remember, methods can look like this

def show_student_details
x = STUDENTS

x.each do |x|
  puts "name: #{x['first_name']} #{x['last_name']}"
  puts "twitter: @#{x['twitter']}"
  puts "github: #{x['github']}"
  puts "blog: #{x['blog']}"
  puts "email: #{x['email']}"
end
end
show_student_details
# or this

def show_student_details(student)
  x = STUDENTS.select { |ex_student| ex_student['first_name'] == student  }
  puts "Here are the deatils for #{student}"
  x.each do |x|
  puts "name: #{x['first_name']} #{x['last_name']}"
  puts "twitter: @#{x['twitter']}"
  puts "github: #{x['github']}"
  puts "blog: #{x['blog']}"
  puts "email: #{x['email']}"
end
end

show_student_details("Vince")



