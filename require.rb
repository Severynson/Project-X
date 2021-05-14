#This method helps to add a new (your own) wordlist.
def own_wordlist
  puts "Write the name of your new list:"
  name_of_file = gets.chomp.to_s.<<".txt"
  puts name_of_file
  file = File.open(name_of_file, "w+")
  eng_error_text = "Your word isn't English, please write English word"
  rus_error_text = "Your word isn't Russian, please write Russian word"
  loop do

    puts "Write STOP if you wanna stop writing and save it\nWrite English word:"
    en_word = gets
    eng_word = en_word.chomp.to_s.<<" - "
    eng_correction = en_word.ascii_only?
    if eng_correction == false
      puts eng_error_text
    end

    eng_correction1 = en_word.is_a?(Integer)
    if eng_correction1 == true
      puts eng_error_text
    end
    while eng_correction == false && eng_correction1 == true
      puts "Write English word:"
      en_word = gets
    end
    file.write(eng_word)

    if en_word == "STOP - "

      file.close
      break
    end

    puts "Write STOP if you wanna stop writing and save it\nWrite Russian word:"
    ru_word = gets
    rus_word = ru_word.chomp.to_s.<<"\n"

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
end

#######

def input_for_choosing_them(input)
  #####
  if input == "1"
    puts_something
    choosing_action("Git.txt")
    #####
  elsif input == "2"
    puts_something
    choosing_action("Computer.txt")
    #####
  elsif input == "3"
    puts_something
    choosing_action("Main_Terms.txt")
    #####
  elsif input == "4"
    own_wordlist
    #####
  elsif input == "5"
    puts ""
  else
    puts "You had made some mistake, enter number again please."
  end
end

#######

def puts_something
  puts ""
  puts "---List of words that you will meet in tests---"
end

def choosing_action (zminnna)
  @lines = []
  File.open(zminnna) do |review_file|
    @lines = review_file.readlines
    puts @lines
  end
end

def task_1
  puts "Here is a word and it's translation, enter please the English version five times."
  element_check = @lines.find_all do |el|
    puts "***"
    p el.chomp
    write = gets.upcase.chomp

    while write != "#{el.upcase.split(" - ").first.chomp}, #{el.upcase.split(" - ").first.chomp}, #{el.upcase.split(" - ").first.chomp}, #{el.upcase.split(" - ").first.chomp}, #{el.upcase.split(" - ").first.chomp}"
      puts " "
      puts "Your made some mistake, enter please correct translation of word."
      write = gets.upcase.chomp
    end
    #     if write == "#{el.split(" ").first}, #{el.split(" ").first}, #{el.split(" ").first}, #{el.split(" ").first}, #{el.split(" ").first}"
    #       puts true
    #     else
    #       puts false
    #     end
    # else
    #   return 0
  end
end