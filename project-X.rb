load 'bonus_file_with_defs.rb'
### This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list;\n5- If you wanna study your own list;\n6- If you want to skip this part."
    print "\nYour choice:"
my_gets = gets.chomp
main_menu(my_gets)
###This part of code turning on a first test if you ready to start###
    puts "\nDo you want to continue making tests or still need to learn this words better?(yes/no)"
    variable = gets.chomp
    if variable.upcase == "YES".chomp
      puts ""
      task_1
    else
      exit 0
    end
###This part of code turning on a second test if you ready to start###
puts "Nice, you had just done first part. Are you ready for next test?(yes/no)"
choice_about_do_or_no_second_part = gets.upcase.chomp
if choice_about_do_or_no_second_part == "YES"
  ###############
  ###############
  ###############
  exercise_2
end
###################################
###################################
###################################
###################################

puts "Nice, you had just done a second part. Are you ready for the last test?(yes/no)"
choice_about_do_or_no_third_part = gets.upcase.chomp
if choice_about_do_or_no_third_part == "YES"
  exercise_3
elsif
puts "Bye, have a nice day!"
  abort
  end
