require './file_with_methods_called_in_main_file_(project-X).rb'
# This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:"
def offered_actions
puts "1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list;\n5- If you wanna study your own list;\n6- If you want to skip this part."
print "\nYour choice:"
end
offered_actions
def your_choice_in_main_menu
  @choice_in_main_menu = gets.chomp
  MainMenu.main_menu(@choice_in_main_menu)
end
your_choice_in_main_menu

CREATING_NEW_LIST = "4"
if @choice_in_main_menu != CREATING_NEW_LIST
  puts "\nDo you want to continue making tests or still need to learn this words better?(yes/no)"
  choosing_to_continue_or_exit = gets.chomp
  if choosing_to_continue_or_exit.upcase == "YES".chomp
    puts "***\nExercise 1:"
    Exercise1.exercise_1
  else
    exit 0
  end

  puts "Nice, you had just done a first part. Are you ready for next test? Or want to skip? (yes/no)"
  choice_about_do_or_not_second_part = gets.upcase.chomp
  if choice_about_do_or_not_second_part == "YES" && @is_an_exercise_1_done.include?(true)
    puts "***\nExercise 2:"
    Exercise2.exercise_2
  end

  puts "Nice, you had just done a second part. Are you ready for the last test? Or want to skip? (yes/no)"
  choice_about_do_or_no_third_part = gets.upcase.chomp
  if choice_about_do_or_no_third_part == "YES" && @is_an_exercise_1_done.include?(true)
    puts "***\nExercise 3:"
    Exercise3.exercise_3
  elsif puts "Bye, have a nice day!"
  end
    puts "Thanks for using our app to make your english better! See you next time."
end