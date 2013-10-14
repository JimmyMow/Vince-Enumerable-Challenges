require 'csv'

# csv is a Ruby library that makes it easier read and write from string
# and input output objects. Great for parsing spreadshets.

csv_file = "students.csv"

def csv_to_array(file_location)
  csv = CSV.parse(File.open(file_location, 'r') {|f| f.read })
  fields = csv.shift
  csv.collect { |record| Hash[*fields.zip(record).flatten ] }
end

STUDENTS = csv_to_array(csv_file)

# Find out what these methods are doing under the hood:

# CSV.parse
# File.open
# read method
# shift method
# collect method
# zip method
# flatten method
# Hash

