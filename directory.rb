def input_students
  puts "Add a name to the list. (Once complete hit enter twice)"
  #empty array to store hash of student and cohort
  students = []
  cohort_months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  name = gets.chomp
  # while the name of the student is not empty
  while !name.empty? do
    #ask for cohort
    puts "Which cohort will they be enrolled?"
    cohort = gets.chomp.capitalize.to_sym
    # if cohort is empty then :november else use the cohort given
    if cohort.empty? == true
      cohort = :november
    end

    # # Checking for typos
    # if cohort_months.include?(cohort) == false
    #   puts "Did you spell the month correctly?"
    #   cohort = gets.chomp.capitalize.to_sym
    # end

    # adding the student hash to the array
    students << {name: name, cohort: cohort}
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
  puts "The students of Villains Academy".center(50)
  puts "---------------".center(50)
  puts
end

#Using each to print students with index also Capitalize puts of name
# def print(students)
#  students.each_with_index do | student, index |
#    puts "#{index+1}. #{student[:name].capitalize} (#{student[:cohort].capitalize} cohort) from #{student[:countries].capitalize}, Enjoys #{student[:hobbies]}"
#  end
# end

# C [index][:cohort} should work, as then you’re directing it to a certain hash within the array
def print(students)
		index = 0
		while students.length >= index+1
			puts "#{index+1}. #{students[index][:name].capitalize} (#{students[index][:cohort].capitalize} cohort)"
			index+=1
		end
end


#Method to print footer with count
def print_footer(students)
  puts
  puts "Overall we have #{students.count} great students."
  puts
end


students = input_students
print_header
print(students)
print_footer(students)
