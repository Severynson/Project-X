#################################################################################
###########################    General methods    ###############################
#################################################################################
require 'fileutils'

def puts_something
  puts ""
  puts "---List of words that you will meet in tests---"
end

# begin
#   raise "Don't go to the next time in this case!"
# rescue StandardError => input4
#   return 0
# end
def read_this_file (file_to_read)
  @array_with_strings_from_txt = []
  File.open(file_to_read) do |review_file|
    @array_with_strings_from_txt = review_file.readlines
    puts @array_with_strings_from_txt
  end
end

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

#################################################################################
########################    The main menu's method    ###########################
#################################################################################

def main_menu(input)
  #####
  if input == "1"
    @variable_for_remembering_them = ""
    @variable_for_remembering_them << "Git.txt"
    puts_something
    read_this_file(@variable_for_remembering_them)
    #####
  elsif input == "2"
    @variable_for_remembering_them = ""
    @variable_for_remembering_them << "Computer.txt"
    puts_something
    read_this_file(@variable_for_remembering_them)
    #####
  elsif input == "3"
    @variable_for_remembering_them = ""
    @variable_for_remembering_them << "Main_Terms.txt"
    puts_something
    read_this_file(@variable_for_remembering_them)
    #####
  elsif input == "4"
    own_wordlist
    # begin
    #   raise "Don't go to the next time in this case!"
    # rescue StandardError => input4
    #   return 0
    # end
    #####
  elsif input == "5"
    def entering_the_name_of_your_own_list
      puts "Enter please the name of your list:"
      @variable_for_remembering_them = ""
      @variable_for_remembering_them << "#{gets.chomp}" << ".txt"
      if File.exist?(@variable_for_remembering_them)
        puts_something
        read_this_file(@variable_for_remembering_them)
      else
        print "Sorry, no such file in this directory. Enter again please:"
        entering_the_name_of_your_own_list
      end
    end

    entering_the_name_of_your_own_list
    #####
  elsif input == "6"
    puts ""
  else
    print "You had made some mistake, enter number again please:"
    begin
      raise "Incorrect input!"
    rescue StandardError => input6
      my_gets = gets.chomp
      main_menu(my_gets)
    end
  end
end

############    This method helps to add a new (your own) wordlist    ###########
def own_wordlist
  puts "Write the name of your new list:"
  name_of_file = gets.chomp.to_s.<< ".txt"
  puts name_of_file
  file = File.open(name_of_file, "w+")
  eng_error_text = "Your word isn't English, please write English word"
  rus_error_text = "Your word isn't Russian, please write Russian word"
  loop do

    puts "Write STOP if you wanna stop writing and save it\nWrite English word:"
    en_word = gets
    eng_word = en_word.chomp.to_s.<< " - "
    eng_correction = en_word.ascii_only?
    while eng_correction == false
      puts eng_error_text
      en_word = gets
    end

    eng_correction1 = en_word.is_a?(Integer)
    while eng_correction1 == true
      puts eng_error_text
      en_word = gets
    end
    while eng_correction == false && eng_correction1 == true
      puts "Write English word:"
      en_word = gets
    end
    file.write(eng_word)

    if eng_word == "STOP - "
      file.close
      break
    end

    puts "Write STOP if you wanna stop writing and save it\nWrite Russian word:"
    ru_word = gets
    rus_word = ru_word.chomp.to_s.<< "\n"

    rus_correction = ru_word.ascii_only?
    if rus_correction == true
      puts rus_error_text
    end

    rus_correction1 = ru_word.is_a?(Integer)
    if rus_correction1 == true
      puts rus_error_text
    end
    file.write(rus_word)
    while rus_correction == true && rus_correction1 == true
      puts "Write Russian word:"
      ru_word = gets
    end
    if rus_word == "STOP\n"
      #rus_word.freeze
      file.close()
      break
    end
  end
  ###
  removing_stopstop = File.open('output.txt', 'w') do |out_file|
    File.foreach(name_of_file) do |line|
      out_file.puts line unless line =~ /STOP/
    end
  end
  FileUtils.mv('output.txt', name_of_file)
  ###
end

#################################################################################
###########################    Methods 4 exercises    ###########################
#################################################################################

#####################   This is s method for a first exercise   ##################

def exercise_1
  puts "Here is a word and it's translation, enter please the English version five times."
  @array_with_strings_from_txt.find_all do |el|
    puts "***"
    p el.chomp
    eng_word = "#{el.upcase.split(" - ").first.chomp}"
    correct_word = ["#{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}", "#{eng_word},#{eng_word},#{eng_word},#{eng_word},#{eng_word}", "#{eng_word} #{eng_word} #{eng_word} #{eng_word} #{eng_word}", "#{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}.", "#{eng_word},#{eng_word},#{eng_word},#{eng_word},#{eng_word}."]
    write = gets.upcase.chomp
    while correct_word.include?(write) == false
      puts " "
      puts "Your made some mistake, enter please correct translation of word."
      write = gets.upcase.chomp
    end
  end
  @exercise_1_is_done = []
  @exercise_1_is_done << true
end

#####################   That are methods for a second exercise   ###################

def exercise_2
  read_this_file (@variable_for_remembering_them)
  @array_with_strings_from_txt.each do |el|
    user_input = Thread.new do
      p el.upcase.split(" - ").last.chomp
      @write = gets.upcase.chomp
      Thread.current[:value] = gets.chomp
    end

    Thread.new { sleep 6; user_input.kill; puts }

    user_input.join
    if user_input[:value]
      puts "User entered #{user_input[:value]}"
    else
      puts "Timer expired"

      if @write != "#{el.upcase.split(" ").first}"
        puts " "
        puts "Correct word was: #{el.split(" - ").last.chomp}"
        # puts "Your made some mistake, enter please correct translation of word."
      elsif @write == "#{el.upcase.split(" ").first}"
        puts "You are winner!"
      end

    end
  end
end

#####################   That are methods for a third exercise   ###################

def mistake_first_in_exercise_3
  first_letters = @el_incorrect.downcase.split("")
  print "You write something incorrectly.\nChange this situation please.\nHere is the first letter of your word:\""
  print first_letters[0].to_s
  puts "\"."
  ###
  @write = gets.upcase.chomp
  if @write == @el_incorrect.upcase.split(" - ").first.chomp
    puts "Nice, you write correct."
  else
    mistake_second_in_exercise_3
  end
end

###
def mistake_second_in_exercise_3
  first_letters = @el_incorrect.downcase.split("")
  if first_letters.include?([0..2])
    print "You write something incorrectly.\nChange this situation please.\nHere are the first three letters of your word:\""
    print first_letters[0..2].join
    puts "\"."
    ###
    @write = gets.upcase.chomp
    if @write == @el_incorrect.upcase.split(" - ").first.chomp
      puts "Nice, you write correct."
    else
      mistake_third_in_exercise_3
    end
  else
    puts "The correct word was:\"#{first_letters.join}\" \nThis word doesn't have more than three letters. If we will help you- it will be too easy."
  end
end

###

def mistake_third_in_exercise_3
  half = (@el_incorrect.length - 1) / 2
  first_letter = @el_incorrect.downcase.split("")
  print "You write something incorrectly.\nChange this situation please.\nHere is the half of word that you need to write:\""
  print first_letter[0..half].join
  puts "\"."
  ###
  @write = gets.upcase.chomp
  if @write == @el_incorrect.upcase.split(" - ").first.chomp
    puts "Nice, you write correct."
    #  This "elsif" is used for fixing a bug with writing
    # a last line "Go and try to write correctly a next word."
    # if there is no more words in list.
  elsif @array_with_strings_from_txt.last.upcase.include?(@el_incorrect)
    puts "You made a mistake again!\nA correct word was: \"#{@el_incorrect}\"\nBut it was the last chance in writing of this word.\nIt was the last word in this list."
  else
    puts "You made a mistake again!\nA correct word was: \"#{@el_incorrect}\"\nBut it was the last chance in writing of this word.\nGo and try to write correctly a next word."
  end
end

############################

def exercise_3
  read_this_file (@variable_for_remembering_them)
  @array_with_strings_from_txt.each do |el|
    p el.upcase.split(" - ").last.chomp
    @write = gets.upcase.chomp
    if @write == el.upcase.split(" - ").first.chomp
      puts "Nice, you write correct."
    else
      @el_incorrect = "" << el.upcase.split(" - ").first
      mistake_first_in_exercise_3
    end
  end
end
