# Put students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Fredy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

#Method to print header
def print_header
  puts
  puts "The students of Villains Academy"
  puts "---------------"
end

# Metho to print list of students
def print_students(names)
  names.each do |name|
    puts name
  end
end

#Method to print footer with count
 def print_footer(names)
   puts "Overall we have #{names.count} great students."
 end

#Body of the code
 print_header
 print_students(students)
 print_footer(students)
