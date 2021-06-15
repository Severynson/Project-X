require './project-X (main).rb'

module MainMenu

  def self.main_menu(input)

    case input
    when "1"
      @variable_for_remembering_them = "Git.txt"
      GENERAL_METHODS.puts_text
      GENERAL_METHODS.file_reader(@variable_for_remembering_them)

    when "2"
      @variable_for_remembering_them = "Computer.txt"
      GeneralMethods.puts_text
      GeneralMethods.file_reader(@variable_for_remembering_them)

    when "3"
      @variable_for_remembering_them = "Main_Terms.txt"
      GeneralMethods.puts_text
      GeneralMethods.file_reader(@variable_for_remembering_them)

    when "4"
      CreateNewList.creat_new_wordlist

    when "5"
      def self.entering_the_name_of_your_own_list
        puts "Enter please the name of your list:"
        @variable_for_remembering_them = "#{gets.chomp}.txt"
        if File.exist?(@variable_for_remembering_them)
          GENERAL_METHODS.puts_text
          GENERAL_METHODS.file_reader(@variable_for_remembering_them)
        else
          print "Sorry, no such file in this directory. Enter again please:"
          entering_the_name_of_your_own_list
        end
      end

      entering_the_name_of_your_own_list
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