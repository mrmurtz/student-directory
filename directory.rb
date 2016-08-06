def input_students
  puts "Add a name to the list. (Once complete hit enter twice)"
  #empty array to store hash of student and cohort
  students = []
  #getting the students name in a variable
  name = gets.chomp
  while !name.empty? do
    #ask for cohort
    puts "Which cohort will they be enrolled?"
    cohort = gets.chomp

    # ask for which country they are from
    puts "Which country are they from?"
    country = gets.chomp
    # ask for hobbies
    puts "Any hobbies?"
    hobby = gets.chomp
    students << {name: name, cohort: cohort, countries: country, hobbies: hobby}
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
			puts "#{index+1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
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
