class OpenFile
  attr_accessor :name_of_file, :file

  def self.open
    puts "Write the name of your new list:"
    name_of_file = gets.chomp.to_s << ".txt"
    puts "List #{name_of_file} was successfully created\nRemember! If you want to stop writing words and save the list, please write STOP or СТОП"
    file = File.open(name_of_file, "w+")
  end

  # def initialize(file)
  #   @file = file
  # end
end

class EnglishWords
  attr_accessor :users_input, :users_input_with_addition, :correction

  def self.checking
    puts "Write English Word:"
    users_input = gets.chomp
    correction = users_input.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)

    if correction == false
      puts "#{users_input} is not an English word!"
      EnglishWords.checking
    end

    def self.writing_word_to_list
    # users_input_with_addition = users_input.to_s << " - "
    # @file.write(users_input_with_addition)
    end

    def self.stop
      # if users_input == "STOP"
      #   file.close()
      # end
    end
  end
end

class RussianWords
  attr_accessor :users_input, :users_input_with_addition, :correction

  def self.checking
    puts "Write Russian Word:"
    users_input = gets.chomp
    correction = users_input.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)

    if correction == false
      puts "#{users_input} is not an Russian word!"
      RussianWords.checking
    end
  end

  def self.writing_word_to_list
    # users_input_with_addition = users_input.to_s << "\n"
    # @file.write(users_input_with_addition)
  end

  def self.stop
    # if users_input == "СТОП"
    #   file.close()
    # end
  end

end


OpenFile.open
loop do
EnglishWords.checking#.stop.writing_word_to_list
RussianWords.checking#.stop.writing_word_to_list
end
