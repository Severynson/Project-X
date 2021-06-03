class English_Words
  attr_accessor :users_input, :word_with_addition, :name_of_file, :file, :error_text, :correction

  error_text = "Your word isn't English, please write English word"
  def create_new_list(name_of_file, file)
    puts "Write the name of your new list:"
    name_of_file = gets.chomp.to_s.<< ".txt"
    puts "#{name_of_file} list was succesfully created!\n Remember! If you want to stop writing words, just write 'STOP'."
    file = File.open(name_of_file, "w+")
  end

  puts "Write English word:"

  loop do
    if users_input == "STOP"
      file.close
      break
    end

    def checking_input(users_input, correction)
      users_input = gets
      correction = users_input.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)
      if correction == false
        puts error_text
        users_input = gets
        self.checking_input
      else
        break
      end
    end
  end
end
word = English_Word.new
word_with_addition = word.chomp.to_s << " - "
file.write(word_with_addition)

class Russian_Word < English_Words
  attr_accessor :correction, :error_text, :users_input, :word_with_addition
  error_text = "Your word isn't Russian, please write Russian word"

  puts "Write Russian word:"
  loop do
    if users_input == "STOP"
      file.close
      break
    end

    def checking_input(users_input, correction)
      users_input = gets
      correction = users_input.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)
      if correction == false
        puts error_text
        users_input = gets
        self.checking_input
      else
        break
      end
    end
  end

end