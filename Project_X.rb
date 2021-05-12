puts "Write the name of your new list:"
name_of_file = gets.chomp.to_s.<<".txt"
puts name_of_file
file = File.open(name_of_file, "w+")
loop do
puts "Write STOP if you wanna stop writing and save it\nWrite English word:"
eng_word = gets.chomp.to_s.<<" - "
file.write(eng_word)
if eng_word == "STOP - "
  file.close
  break
end
puts "Write STOP if you wanna stop writing and save it\nWrite Russian word:"
rus_word = gets.chomp.to_s.<<"\n"
file.write(rus_word)
if rus_word == "STOP\n"
  file.close()
  break
end
end


