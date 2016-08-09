def input_students
  puts "Add a name to the list. (Once complete hit enter twice)"
  #empty array to store hash of student and cohort
  students = []
  name = gets
  name.delete! "\n"
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
    if students.length <=1
      puts "Now we have #{students.count} student."
    else
      puts "Now we have #{students.count} students."
    end

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

# Using while instead of each -  advise from group [index][:cohort} should work, as then you’re directing it to a certain hash within the array
# def print(students)
# 		index = 0
# 		while students.length >= index+1
# 			puts "#{index+1}. #{students[index][:name].capitalize} (#{students[index][:cohort].capitalize} cohort)"
# 			index+=1
# 		end
# end

def print(students)
  #find all the cohorts first
  cohorts = [] #add them to an array
  students.map do |student| # use map to return each value
    cohorts << student[:cohort] #write into new array the cohorts that were listed
    cohorts = cohorts.uniq # now narrow this down to only the unique cohorts (remove duplicates)
  end
  cohorts.each do |cohort| # now on every item in the new cohorts array create a title
    puts "*#{cohort.capitalize} cohort students*"
    students.each do |student| # with each student in the students array if the student cohort matches cohort in above each method then puts them
      if student[:cohort] == cohort
        puts "#{student[:name]}"
      end
    end
  end
end


#Method to print footer with count
def print_footer(students)
  puts
  puts "Overall we have #{students.count} great students."
  puts
end


students = input_students

if students.length != 0
  print_header
  print(students)
  print_footer(students)
else
  puts "Whoa wtf! Looks like you didn't add any students."
  puts ""
end
