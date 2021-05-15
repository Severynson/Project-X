load 'require.rb'
### This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list;\n5- If you wanna study your own list;\n6- If you want to skip this part."
    print "\nYour choice:"
my_gets = gets.chomp
input_for_choosing_them(my_gets)
num_that_have_some_function = "1"||"2"||"3"||"4"||"5"
###
while my_gets == num_that_have_some_function
  my_gets = gets.chomp
  input_for_choosing_them(my_gets)
end

###This part of code turning on a first test if you ready to start###
    def start_test_1_or_not
    puts " "
    puts "Do you want to continue making tests or still need to learn this words better?(yes/no)"
    variable = gets.chomp
    if variable.upcase == "YES".chomp
      puts ""
      task_1
    else
      return 0
    end
    end
###This part of code turning on a second test if you ready to start###
puts "Nice, you had just done first part. Are you ready for next test?(yes/no)"
choice_about_do_or_no_second_part = gets.chomp
if choice_about_do_or_no_second_part == "YES"
  element_check = @lines.each do |el|
  user_input = Thread.new do
    p el.upcase.split(" - ").last.chomp
    @write = gets.upcase.chomp
    Thread.current[:value] = gets.chomp
  end

  timer = Thread.new { sleep 6; user_input.kill; puts }

  user_input.join
  if user_input[:value]
    puts "User entered #{user_input[:value]}"
  else
    puts "Timer expired"

  if @write != "#{el.upcase.split(" ").first}"
    puts " "
    puts "Your made some mistake, enter please correct translation of word."
  elsif @write == "#{el.upcase.split(" ").first}"
    puts "You are winner!"
  end

end
  end
  end
