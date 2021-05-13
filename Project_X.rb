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