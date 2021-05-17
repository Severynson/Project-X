hash = []
File.open("Main_Terms.txt", "r+") do |file|
  hash = file.readlines
end
hash.find_all do |el|

  first, *last = el.split(/ - /)


  puts last
  puts "введіть переклад: "
  user_word = gets.chomp!
  if user_word == first
    puts "Правильно з першої спроби"
  else
    while user_word != first do
      File.open("learn.txt", "w") do |file|
        file.write("#{first}, #{last}")
      end
      puts first[0]
      user_word = gets.chomp!
      if user_word == last
        puts "Правильно з другої спроби"
      else
        user_word != first
        length_of_half_word = (first.length - 1) / 2
        puts first[0..length_of_half_word].to_s
        user_word = gets.chomp!
        if user_word == last
          puts "Правильно з третьої спроби"
        else
          puts (first)
        end
      end
    end
  end
end
