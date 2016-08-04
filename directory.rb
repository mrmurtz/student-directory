def input_students
  puts "Add a name to the list. (Once complete hit enter twice)"
  #empty array to store hash of student and cohort
  students = []
  #getting the students name in a variable
  name = gets.chomp
  while !name.empty? do
    #adding the name and default cohort as a HASH{ , } to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    puts "Add another name (or hit enter twice to exit)"
    # get another name
    name = gets.chomp
  end
  #return students array
  return students
end

#Method to print header
def print_header
  puts
  puts "The students of Villains Academy"
  puts "---------------"
  puts
end

#method to print students name and default cohort
def print(students)
  students.each_with_index do | student, index |
    if student[:name].length < 12 #find length of string and if = or more less than 12 then...
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
  end
end

#Method to print footer with count
def print_footer(students)
  puts "Overall we have #{students.count} great students."
  puts
end

students = input_students
print_header
print(students)
print_footer(students)

#if student name starts with "m"  then print else do not print
