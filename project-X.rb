require 'fileutils'  # This library helps to remove STOP from the end of the list

#Create The New List Part#
puts "Write the name of your new list:" #
name_of_file = gets.chomp.to_s.<< ".txt"
puts "#{name_of_file} list was succesfully created!\n Remember! If you want to stop writing words, just write 'STOP'."
file = File.open(name_of_file, "w+")
eng_error_text = "Your word isn't English, please write English word"
rus_error_text = "Your word isn't Russian, please write Russian word"

#English Word Part#

loop do # This huge loop helps repeat asking user to put English and Russian word again and again till user puts STOP
  puts "Write English word:"
  users_input_eng = gets

  eng_correction = users_input_eng.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i) # Checking, if users input is correct.
  # If user write number, symbol or Russian word, program will ask to write English word again and puts the message with error

  while eng_correction == false # This loop repeat asking Eng word if input is uncorrect
    eng_correction = users_input_eng.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i) # Checks again
    if eng_correction == false
      puts eng_error_text
      users_input_eng = gets
    else
      break
    end
  end
  eng_word = users_input_eng.chomp.to_s << " - "
  file.write(eng_word)

  if eng_word == "STOP - "
    file.close
    break
  end

  #Russian Word Part#
  # Russian part works the same as the English part, but the names of variables have some changes
  puts "Write Russian word:"
  users_input_rus = gets

  rus_correction = users_input_rus.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)

  while rus_correction == false
    rus_correction = users_input_rus.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)
    if rus_correction == false
      puts rus_error_text
      users_input_rus = gets
    else
      break
    end
  end
  rus_word = users_input_rus.chomp.to_s.<< "\n"
  file.write(rus_word)
  if rus_word == "STOP\n"
    file.close()
    break
  end
end
File.open('output.txt', 'w') do |out_file| # Helps to remove STOP
  File.foreach(name_of_file) do |line|
    out_file.puts line unless line =~ /STOP/
  end
end
FileUtils.mv('output.txt', name_of_file)