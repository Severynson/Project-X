### This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list."
puts ""

class WordLists
  attr_accessor :git, :computer, :main_terms, :your_own_list

  def choosing(git = 0, computer = 0, main_terms = 0, your_own_list = 0)
    #git = #в цій змінній повинен зберігатись рідер конкретного текстового документу.
    print "Your choice:"
    input = gets.chomp
    puts ""
    puts "---List of words that you will meet in tests---"

    if input == "1"

      lines = []
      File.open("Git.txt") do |review_file|
        lines = review_file.readlines
        puts lines
      end

      #####

    elsif input == "2"

      lines = []
      File.open("Computer.txt") do |review_file|
        lines = review_file.readlines
        puts lines
      end

      #####

    elsif input == "3"

      lines = []
      File.open("Computer.txt") do |review_file|
        lines = review_file.readlines
        puts lines

      end

      # list = git
      # p list
    end

    puts " "
    puts "Do you want to continue making tests or still need to learn this words better?(yes/no)"
    variable = gets.chomp
    if variable == "yes"
      puts "Here is a word and it's translation, enter please the English version five times."
      element_check = lines.find_all do |el|
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
  end
  end

salo = WordLists.new
salo.choosing

    puts "Now you can start second part of tests:"

    ###########   Second part of learning #############
    #
    # puts " "
    # puts "Do you want to continue making 2nd part of tests or still need to learn this words better?(yes/no)"
    # zminna = gets.chomp
    # begin p lines.each { |el| el.split.first}
    # end
    #
    # if zminna == "yes"
    #   puts "this part of program is still in the process of develop."
    #   yield
    # else
    #   return 0
    # end


    ###########################
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list."
puts ""

class ThirdStage
  attr_accessor :git, :computer, :main_terms, :your_own_list

  def third (git = 0, computer = 0, main_terms = 0, your_own_list = 0)
    print "Your choice: "
    input = gets.chomp
    puts ""
    puts "---List of words that you will meet in tests---"

    if input == "1"
      lines = {}
      File.open("Git.txt") do |el|
        lines = el.readlines
        puts lines
      end

    elsif input == "2"
      lines = []
      File.open("Computer.txt") do |review_file|
        lines = review_file.readlines
        puts lines
      end

      #####

    elsif input == "3"
      lines = []
      File.open("Main_Terms.txt") do |review_file|
        lines = review_file.readlines
        puts lines
      end
    end

    puts " "
    puts "Do you want to take the test?(yes/no)"
    var = gets.chomp
    if var == "yes"
      puts "let`s start!"
      element_check = lines.each do |el|
        puts "***"
        # p el.chomp

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
        end

        if @write != "#{el.upcase.split(" ").first}"
          puts " "
          puts "Your made some mistake, enter please correct translation of word."
        elsif @write == "#{el.upcase.split(" ").first}"
          puts "You are winner!"
        end

      end
    else
      return 0
    end
  end
end

test = ThirdStage.new
test.third

####



