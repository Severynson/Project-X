load 'require.rb'
### This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list;\n5- If you want to skip this part."
print "\nYour choice:"
my_gets = gets.chomp
input_for_choosing_them(my_gets)
num_that_have_some_function = "1"||"2"||"3"||"4"||"5"
###
while my_gets != num_that_have_some_function
  my_gets = gets.chomp
  input_for_choosing_them(my_gets)
end
###This part of code turning on first test if you ready to start###
puts " "
puts "Do you want to continue making tests or still need to learn this words better?(yes/no)"
variable = gets.chomp
if variable.upcase == "YES".chomp
  puts ""
  task_1
end