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

# Print list of students
puts
puts "The students of Villains Academy"
puts "---------------"
students.each do |student|
  puts student
end

#Print student count
puts "Overall we have #{students.count} great students."
