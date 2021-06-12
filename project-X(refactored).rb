class FileHelper
  attr_accessor :name_of_file, :file

  def initialize(file)
    @file = file
  end

  def self.open
    puts "Write the name of your new list:"
    name_of_file = gets.chomp.to_s << ".txt"
    puts "List #{name_of_file} was successfully created\nRemember! If you want to stop writing words and save the list, please write STOP or СТОП"
    file = File.open(name_of_file, "w+")
  end

  def self.close
    file.close()
  end
end

class EnglishWords
  attr_accessor :users_input, :users_input_with_addition, :correction

  def initialize(users_input, users_input_with_addition)
    @users_input = users_input
    @users_input_with_addition = users_input_with_addition
  end

  def self.checking
    puts "Write English Word:"
    users_input = gets.chomp
    correction = users_input.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)

    if correction == false
      puts "#{users_input} is not an English word!"
      EnglishWords.checking
    end
  end

  users_input_with_addition = users_input.to_s << " - "

end

class RussianWords < EnglishWods
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
end


FileHelper.open
# eng_word = EnglishWords.new(users_input, file, users_input_with_addition)
# eng_word.writing_word_to_list
loop do
EnglishWords.checking
RussianWords.checking
end
#   file.write(users_input_with_addition)