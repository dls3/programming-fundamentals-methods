# Start out by creating the following hash representing the number of students in past Bitmaker cohorts:
#
# students = {
#   :cohort1 => 34,
#   :cohort2 => 42,
#   :cohort3 => 22
# }
# Create a method that displays the name and number of students for each cohort, like so:
#
# Add cohort 4, which had 43 students, to the hash.
#
# Use the keys method to output all of the cohort names.
#
# The classrooms have been expanded! Increase each cohort size by 5% and display the new results.
#
# Delete the 2nd cohort and redisplay the hash.
#
# BONUS: Calculate the total number of students across all cohorts using each and a variable to keep track of the total.
# Output the result.
#
# BONUS: Create another similar hash called staff and display it using the same method.

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22,
}

def cohort_display(students)
  students.each do |name, num|
    "#{name}: #{num} students"
  end
end

def add_cohort4(students)
  students[:cohort4] = 43
end

def output_names(students)
  students.each do |name, num|
    "#{name}"
  end
end

def increase_size(students)
  students.each do |name, num|
    num = (num * 1.05).to_i
    "#{name}: #{num} students"
  end
end

def delete_cohort2(students)
  students.delete("cohort2")
end

def class_size(students)
  total = 0
  students.each do |cohort, size|
    total = total + size
  end
  "the total number of students across all cohorts is #{total}"
end

# BONUS: Create another similar hash called staff and display it using the same method.
staff = {
  :staff1 => 9,
  :staff2 => 11,
  :staff3 => 3,
}

#display initial hash
puts cohort_display(students)
puts "\n\n"

# add cohort 4 of the hash
add_cohort4(students)
puts "\n\n"

#output new hash, including cohort 4
puts output_names(students)
puts "\n\n"


puts "Increase cohort sizes by 5%, then display results"
puts increase_size(students)
puts "\n\n"

### Delete 2nd cohort, and redisplay
delete_cohort2(students)
puts cohort_display(students)
puts "\n\n"

#Calculate total number of students across all cohorts
puts class_size(students)
puts "\n\n"

#display staff hash
puts cohort_display(staff)
puts "\n\n"
#
