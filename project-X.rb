###############Create The New List Part##############################################
puts "Write the name of your new list:"
name_of_file = gets.chomp.to_s.<<".txt"
puts name_of_file
file = File.open(name_of_file, "w+")
eng_error_text = "Your word isn't English, please write English word"
rus_error_text = "Your word isn't Russian, please write Russian word"
################################English Word Part#########################################
loop do
  puts "Write STOP if you wanna stop writing and save it\nWrite English word:"
  en_word = gets
  eng_word = en_word.chomp.to_s << " - "

  # eng_correction = en_word.ascii_only?

    eng_correction1 = en_word.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)
  puts eng_correction1

  until eng_correction1
    eng_correction1 = en_word.match?(/[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/i)
    if eng_correction1 == false
      puts eng_correction1
      puts eng_error_text
      en_word = gets
    else
      puts eng_correction1
      break
    end
  end

  file.write(eng_word)

  if eng_word == "STOP - "
    file.close
    break
  end

  #############################################Russian Word Part#######################################

  puts "Write STOP if you wanna stop writing and save it\nWrite Russian word:"
  ru_word = gets
  rus_word = ru_word.chomp.to_s.<<"\n"

  # rus_correction = ru_word.ascii_only?
  rus_correction1 = ru_word.is_a?(Integer)

  while rus_correction1 == false
    puts rus_error_text
    ru_word = gets
  end

  file.write(rus_word)
  if rus_word == "STOP\n"
    file.close()
    break
  end
end