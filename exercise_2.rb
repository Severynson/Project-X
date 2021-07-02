class Exercise2 < GeneralMethods
  def self.exercise
    @@array_with_strings_from_txt.each do |el|
      user_input = Thread.new do
        p el.split(" - ").last.chomp
        @write = gets.upcase.chomp
        Thread.current[:value] = gets.chomp
      end

      Thread.new { sleep 6; user_input.kill; puts }

      user_input.join
      if user_input[:value]
        puts "User entered #{user_input[:value]}"
      else
        puts "Timer expired"
        if @write != "#{el.upcase.split(" ").first}"
          puts " "
          puts "Correct word was: #{el.split(" - ").last.chomp}"
        elsif @write == "#{el.upcase.split(" ").first}"
          puts "You are winner!"
        end
      end
    end
  end
end
