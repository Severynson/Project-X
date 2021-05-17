load 'require.rb'
### This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list;\n5- If you wanna study your own list;\n6- If you want to skip this part."
print "\nYour choice:"
my_gets = gets.chomp
input_for_choosing_them(my_gets)
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
choice_about_do_or_no_second_part = gets.upcase.chomp
if choice_about_do_or_no_second_part == "YES"
  ###############
  ###############
  ###############
  choosing_action (@variable_for_remembering_them)
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
###################################
###################################
###################################
###################################

puts "Nice, you had just done first part. Are you ready for next test?(yes/no)"
choice_about_do_or_no_second_part = gets.upcase.chomp
if choice_about_do_or_no_second_part == "YES"
  ##############
  ##############
  ##############
  # def each_el_puts_part
  # if value == user
  #   puts "good2"
  # elsif value != user
  #   half = (value.length - 1) / 2
  #   puts value[0..half].to_s
  #   user = gets.chomp!
  #   if value == user
  #     puts "good3"
  #   else
  #     puts(value)
  #
  #   end
  # end
  # end
  #
  #
  #
  ############################

  def mistake_first
    first_letter = @el_incorrect.upcase.split("")
    puts "You write something incorrectly.\nChange this situation please.\nHere is the first letter of your word:\"#{first_letter[0]}\""
    ###
    @write = gets.upcase.chomp
    if @write == @el_incorrect.upcase.split(" - ").first.chomp
      puts "Nice, you write correct."
    else
      mistake_second
    end
  end

  ###
  def mistake_second
    first_letter = @el_incorrect.upcase.split("")
    puts "You write something incorrectly.\nChange this situation please.\nHere are the first three letters of your word:\"#{first_letter[0..2]}\""
    ###
    @write = gets.upcase.chomp
    if @write == @el_incorrect.upcase.split(" - ").first.chomp
      puts "Nice, you write correct."
    else
      mistake_third
    end
  end
  ###

  def mistake_third
    first_word = @el_incorrect.upcase.split(" - ").first.chomp
    half = (first_word.length - 1) / 2
    first_letter = @el_incorrect.upcase.split("")
    puts "You write something incorrectly.\nChange this situation please.\nHere is the half of word that you need to write:\"#{first_letter[0..half]}\""
    ###
    @write = gets.upcase.chomp
    if @write == @el_incorrect.upcase.split(" - ").first.chomp
      puts "Nice, you write correct."
    else
      puts "You made a mistake again!\nBut it was the third time.\nGo and try to write correctly a next word."
    end
  end
end

############################



choosing_action (@variable_for_remembering_them)
element_check = @lines.each do |el|
  p el.upcase.split(" - ").last.chomp
  @write = gets.upcase.chomp
  if @write == el.upcase.split(" - ").first.chomp
    puts "Nice, you write correct."
  else
    @el_incorrect = "" << el
    mistake_first
  end



  # if @write != "#{el.upcase.split(" ").first}"
  #   puts " "
  #   puts "Your made some mistake, enter please correct translation of word."
  # elsif @write == "#{el.upcase.split(" ").first}"
  #   puts "You are winner!"
  # end
end