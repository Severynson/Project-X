hash = {

  cat: "кітакі",
  fox: "лиса",
  name: "ім'я",
  dog: "собака"
}
# lines = {}
# File.open("Computer.txt", "r+") do |file|
#   puts lines = file.read
# end

hash.each do |key, value|
  puts key
  user = gets.chomp!
  if value == user
    puts "good"
  else
    while value != user do
      File.open("learn.txt", "w") do |file|
        file.write("#{key}: #{value}")
      end
      puts value[0]
      user = gets.chomp!
      if value == user
        puts "good2"
      elsif value != user
        half = (value.length - 1) / 2
        puts value[0..half].to_s
        user = gets.chomp!
        if value == user
          puts "good3"
        else
          puts(value)

        end
      end

    end
  end

end


