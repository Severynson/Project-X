### This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list."
class WordLists
  attr_accessor :git, :computer, :main_terms, :your_own_list
  def choosing(git = 0, computer = 0, main_terms = 0, your_own_list = 0)
    #git = #в цій змінній повинен зберігатись рідер конкретного текстового документу.
  input = gets.chomp

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
        puts "this part of program is still in the process of develop."
        element_check = lines.find_all do |el|
          write = gets.chomp

          #p el.split(" ").first
          if write == "#{el.split(" ").first}, #{el.split(" ").first}, #{el.split(" ").first}, #{el.split(" ").first}, #{el.split(" ").first}"
            puts true
          else
            puts false
          end
        end
      else
        return 0
      end

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

    #odd_numbers_sum = numbers.find_all(&:odd?).sum



  end

  end





salo = WordLists.new
salo.choosing

