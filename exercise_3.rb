  class Exercise3 < GeneralMethods
  # That are methods for a third exercise
  def self.mistake_first_in_exercise_3
    first_letters = @el_incorrect.downcase.split("")
    print "You write something incorrectly.\nChange this situation please.\nHere is the first letter of your word:\""
    print first_letters[0].to_s
    puts "\"."
    ###
    @write = gets.upcase.chomp
    if @write == @el_incorrect.upcase.split(" - ").first.chomp
      puts "Nice, you write correct."
    else
      mistake_second_in_exercise_3
    end
  end
  def self.mistake_second_in_exercise_3
    first_letters = @el_incorrect.downcase.split("")
    if first_letters.include?([0..2])
      print "You write something incorrectly.\nChange this situation please.\nHere are the first three letters of your word:\""
      print first_letters[0..2].join
      puts "\"."
      ###
      @write = gets.upcase.chomp
      if @write == @el_incorrect.upcase.split(" - ").first.chomp
        puts "Nice, you write correct."
      else
        mistake_third_in_exercise_3
      end
    else
      puts "The correct word was:\"#{first_letters.join}\" \nThis word doesn't have more than three letters. If we will help you- it will be too easy."
    end
  end

  def self.mistake_third_in_exercise_3
    half = (@el_incorrect.length - 1) / 2
    first_letter = @el_incorrect.downcase.split("")
    print "You write something incorrectly.\nChange this situation please.\nHere is the half of word that you need to write:\""
    print first_letter[0..half].join
    puts "\"."
    ###
    @write = gets.upcase.chomp
    if @write == @el_incorrect.upcase.split(" - ").first.chomp
      puts "Nice, you write correct."
      #  This "elsif" is used for fixing a bug with writing
      # a last line "Go and try to write correctly a next word."
      # if there is no more words in list.
    elsif @array_with_strings_from_txt.last.upcase.include?(@el_incorrect)
      puts "You made a mistake again!\nA correct word was: \"#{@el_incorrect}\"\nBut it was the last chance in writing of this word.\nIt was the last word in this list."
    else
      puts "You made a mistake again!\nA correct word was: \"#{@el_incorrect}\"\nBut it was the last chance in writing of this word.\nGo and try to write correctly a next word."
    end
  end

  def self.exercise_3
    @@array_with_strings_from_txt.each do |el|
      p el.upcase.split(" - ").last.chomp
      @write = gets.upcase.chomp
      if @write == el.upcase.split(" - ").first.chomp
        puts "Nice, you write correct."
      else
        @el_incorrect = "" << el.upcase.split(" - ").first
        mistake_first_in_exercise_3
      end
    end
  end
  end
