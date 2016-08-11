@students = [] #empty array accesible to all methods

def print_menu          #print menu method to puts options
  puts "1. Input students"
  puts "2. Show students"
  puts "3. Save students to file"
  puts "4. Load students file"
  puts "9. Exit"
end

def interactive_menu    #print the menu and process the user selection in a loop
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)  #method to process the selection (selection passed as argument)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students_csv
  when "4"
    load_students
  when "9"
    exit #will cause the program to terminate
  else
    puts "I don't know what you mean, try again."
  end
end

def input_students
  puts "Add a name to the list. (Once complete hit enter twice)"
  name = STDIN.gets.chomp         # get the student's first name
  while !name.empty? do     # while the name of the student is not empty
    @students << {name: name, cohort: :november}   # adding the student hash to the array
    puts "Now we have #{@students.count} students overall."
    name = STDIN.gets.chomp       # get another name
  end
end

def show_students        #method to show students - runs if selection processed is "2"
  if @students.length != 0
    print_header
    print_student_list
    print_footer
  else
    puts "Whoa wtf! Looks like you didn't add any students."
    puts ""
  end
end

def print_header      # method to print header
  puts
  puts "The students of Villains Academy".center(50)
  puts "---------------".center(50)
  puts
end

def print_student_list  # method to print student list
  @students.each do |student|
    puts "#{student[:name].capitalize} - #{student[:cohort].capitalize} cohort"
  end
end

def print_footer        # method to print footer
  puts
  puts "Overall we have #{@students.count} great students."
  puts
end

def save_students_csv
  # open file to save to
  file = File.open("students.csv", "w") # we can now use file as the variable name for the csv file
  @students.each do |student|           # iterate over students array to covert each student and cohort into student_data string
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) # if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}."
  else #if it doesn't exist
    puts "Sorry #{filename} doesn't exist."
    exit
  end
end

try_load_students     # calling try load first
interactive_menu      # calling the menu method
