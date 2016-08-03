# Put students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Fredy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

#Method to print header
def print_header
  puts
  puts "The students of Villains Academy"
  puts "---------------"
end

# Metho to print list of students
def print(names)
  names.each do |name|
    puts "#{name[:name]} (#{name[:cohort]} cohort)"
  end
end

#Method to print footer with count
 def print_footer(names)
   puts "Overall we have #{names.count} great students."
   puts
 end

#Body of the code
 print_header
 print(students)
 print_footer(students)
