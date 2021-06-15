class Exercise1 < GeneralMethods
  # This is s method for a first exercise
  def self.exercise
    puts "Here is a word and it's translation, enter please the English version five times.\n***"
    @@array_with_strings_from_txt.find_all do |el|
      p el.chomp
      eng_word = "#{el.upcase.split(" - ").first.chomp}"
      correct_word = ["#{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}", "#{eng_word},#{eng_word},#{eng_word},#{eng_word},#{eng_word}", "#{eng_word} #{eng_word} #{eng_word} #{eng_word} #{eng_word}", "#{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}, #{eng_word}.", "#{eng_word},#{eng_word},#{eng_word},#{eng_word},#{eng_word}."]
      written_word = gets.upcase.chomp
      while correct_word.include?(written_word) == false
        puts " "
        puts "Your made some mistake, enter please correct translation of word."
        written_word = gets.upcase.chomp
      end
    end
    @@is_an_exercise_1_done = []
    @@is_an_exercise_1_done << true
  end
end
