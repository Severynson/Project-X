require 'fileutils'

#Create The New List Part#
puts "Write the name of your new list:"
name_of_file = gets.chomp.to_s.<<".txt"
puts name_of_file
file = File.open(name_of_file, "w+")
eng_error_text = "Your word isn't English, please write English word"
rus_error_text = "Your word isn't Russian, please write Russian word"

#English Word Part#

loop do
  puts "Write STOP if you wanna stop writing and save it\nWrite English word:"
  users_input_eng = gets
  # eng_word = users_input_eng.chomp.to_s << " - "

    eng_correction1 = users_input_eng.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)

  while eng_correction1 == false
    eng_correction1 = users_input_eng.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)
    if eng_correction1 == false
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

  puts "Write STOP if you wanna stop writing and save it\nWrite Russian word:"
  users_input_rus = gets
  # rus_word = ru_word.chomp.to_s.<<"\n"

  rus_correction1 = users_input_rus.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)

  while rus_correction1 == false
    rus_correction1 = users_input_rus.match?(/[йцукенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ]/i)
    if rus_correction1 == false
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
  File.open('output.txt', 'w') do |out_file|
  File.foreach(name_of_file) do |line|
    out_file.puts line unless line =~ /STOP/
  end
end
FileUtils.mv('output.txt', name_of_file)