class GeneralMethods
  def puts_text
    puts ""
    puts "---List of words that you will meet in tests---"
  end

  def file_reader (file_to_read)
    @@array_with_strings_from_txt = []
    File.open(file_to_read) do |review_file|
      @@array_with_strings_from_txt = review_file.readlines
      puts @@array_with_strings_from_txt
    end
  end
end
GENERAL_METHODS = GeneralMethods.new

class MainMenu

  def self.main_menu(input)

    case input
    when "1"
      @variable_for_remembering_them = ""
      @variable_for_remembering_them << "Git.txt"
      GENERAL_METHODS.puts_text
      GENERAL_METHODS.file_reader(@variable_for_remembering_them)

    when "2"
      @variable_for_remembering_them = ""
      @variable_for_remembering_them << "Computer.txt"
      GeneralMethods.puts_text
      GeneralMethods.file_reader(@variable_for_remembering_them)

    when "3"
      @variable_for_remembering_them = ""
      @variable_for_remembering_them << "Main_Terms.txt"
      GeneralMethods.puts_text
      GeneralMethods.file_reader(@variable_for_remembering_them)

    when "4"
      CreateNewList.creat_new_wordlist

    when "5"
      def self.entering_the_name_of_your_own_list
        puts "Enter please the name of your list:"
        @variable_for_remembering_them = ""
        @variable_for_remembering_them << "#{gets.chomp}" << ".txt"
        if File.exist?(@variable_for_remembering_them)
          GENERAL_METHODS.puts_text
          GENERAL_METHODS.file_reader(@variable_for_remembering_them)
        else
          print "Sorry, no such file in this directory. Enter again please:"
          MainMenu.entering_the_name_of_your_own_list
        end
      end

      MainMenu.entering_the_name_of_your_own_list
    when "6"
      puts ""
    else
      print "You had made some mistake, enter number again please:"
      begin
        raise "Incorrect input!"
      rescue StandardError => input6
        choice_in_main_menu = gets.chomp
        MainMenu.main_menu(choice_in_main_menu)
      end
    end
  end
  end

class CreateNewList
  # This method helps to add a new (your own) wordlist
  require 'fileutils'
  #Create The New List Part
  def self.creat_new_wordlist
    puts "Write the name of your new list:"
    name_of_file = gets.chomp.to_s.<< ".txt"
    puts name_of_file
    file = File.open(name_of_file, "w+")
    eng_error_text = "Your word isn't English, please write English word"
    rus_error_text = "Your word isn't Russian, please write Russian word"

    #English Word Part

    loop do
      puts "Write STOP if you wanna stop writing and save it\nWrite English word:"
      en_word = gets
      eng_word = en_word.chomp.to_s << " - "

      eng_correction1 = en_word.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)

      while eng_correction1 == false
        eng_correction1 = en_word.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)
        if eng_correction1 == false
          puts eng_error_text
          en_word = gets
        else
          break
        end
      end
      eng_word = en_word.chomp.to_s << " - "
      file.write(eng_word)

      if eng_word == "STOP - "
        file.close
        break
      end

      #Russian Word Part

      puts "Write STOP if you wanna stop writing and save it\nWrite Russian word:"
      ru_word = gets
      rus_word = ru_word.chomp.to_s.<< "\n"

      rus_correction1 = ru_word.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)

      while rus_correction1 == false
        rus_correction1 = ru_word.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)
        if rus_correction1 == false
          puts rus_error_text
          ru_word = gets
        else
          break
        end
      end
      rus_word = ru_word.chomp.to_s.<< "\n"
      file.write(rus_word)
      if rus_word == "STOP\n"
        file.close()
        break
      end
    end
    File.open('output.txt', 'w') do |out_file|
      File.foreach(name_of_file) do |line|
        out_file.puts line unless line =~ /STOP/
      end
    end
    FileUtils.mv('output.txt', name_of_file)
    puts "***\nA new list has been added.\n***"

    puts "You are in main menu again. You can stop the program if that is all that you want, or do some next actions:"
    offered_actions
    your_choice_in_main_menu
  end
  end

  #Methods 4 exercises

class Exercise1 < GeneralMethods
  # This is s method for a first exercise
  def self.exercise_1
    puts "Here is a word and it's translation, enter please the English version five times.\n***"
    @@array_with_strings_from_txt.find_all do |el|
      p el.chomp
      eng_word = "#{el.upcase.split(" - ").first.chomp}"
      correct_word = ["#{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}", "#{eng_word},#{eng_word},#{eng_word},#{eng_word},#{eng_word}", "#{eng_word} #{eng_word} #{eng_word} #{eng_word} #{eng_word}", "#{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}.", "#{eng_word},#{eng_word},#{eng_word},#{eng_word},#{eng_word}."]
      written_word = gets.upcase.chomp
      while correct_word.include?(written_word) == false
        puts " "
        puts "Your made some mistake, enter please correct translation of word."
        written_word = gets.upcase.chomp
      end
    end
    @@is_an_exercise_1_done = []
    @@is_an_exercise_1_done << true
  end
  end


class Exercise2 < GeneralMethods
  # That are methods for a second exercise
  def self.exercise_2
    @@array_with_strings_from_txt.each do |el|
      user_input = Thread.new do
        p el.split(" - ").last.chomp
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
  end

  class Exercise3 < GeneralMethods
  # That are methods for a third exercise
  def self.mistake_first_in_exercise_3
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

  def self.mistake_second_in_exercise_3
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

  def self.mistake_third_in_exercise_3
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

  def self.exercise_3
    @@array_with_strings_from_txt.each do |el|
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
  end
