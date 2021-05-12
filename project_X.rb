# ### This part of code had to show the main menu for user ###
# # puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list."
# # class WordLists
# #   attr_accessor :git, :computer, :main_terms, :your_own_list
# #   def choosing(git = 0, computer = 0, main_terms = 0, your_own_list = 0)
# #     git = {"version control system" => "Система контролю версій","Branch" => "Гілка"}
# #     input = gets.chomp
# #     if input == "1"
# #       list = git
# #       p list
# #     end
# #   end
# # end
# #
# # salo = WordLists.new
# # salo.choosing
# # ------------------------------------------------------------------------------
# # def generate_words(word)
# #   arr = {name: " - ім'я", cat: " - кіт", dog: " - собака"}
# #   Array.new(word) {arr.to_a.sample}.join
# # end
# # puts generate_words =+ generate_words(1)
# # a = gets.chomp(generate_words.key)
# # puts a
# # # arr = {name: "ім'я", cat: "кіт", dog: "собака"}
# # # array.new(2) { rand(arr)}
# # # # puts arr[:name]
# class Words
#
# arr = {
#   name: "ім'я",
#   cat: "кіт",
#   dog: "собака"
# }
# # def select_arr(arr_list)
# #   arr_keys = arr_list.keys
# #   counter = 0
# #   select_arr - {}
# # end
# # puts select_arr
# aaa = gets.chomp
# puts arr.key(aaa)
# end
# word = Words.new
# puts word
#
# # class GerTranslate
# #   arr = {
# #     name: " - ім'я"}
# #   def select_arr(arr_list)
# #       arr_keys = arr_list.keys
# #       # counter = 0
# #       select_arr - {}
# #     end
# #   # a = gets.chomp
# #   # if a == arr.keys
# #   #   puts "good"
# #   # end
# # end
# # get = GerTranslate.new
# # puts get
# # ---------------------------------------
# module GettingWord
#   def pravulnist
#     if @value_word == @key_word
#     else
#       puts "Wrong translating word"
#     end
#   end
# end
# #------------------------------------------
# class Dictionary
#   include module GettingWord

#   while value_word = gets.chomp!
#     key_word = arr.key(value_word)
#     puts key_word
# end
# end
#   end
# dic = Dictionary.new
# puts.dic
#---------------------------------------------------
# hash.each  do  |key, value| puts key
# end

# def word
#   user = gets.chomp!
# eng = hash.keys
# ukr = hash.values
# -----------------------------------------------------
hash = {

  cat: "кітакі",
  fox: "лиса",
  name: "ім'я",
  dog: "собака"
}

hash.each do |key, value|
  puts key
  user = gets.chomp!
  if value == user
    puts "good"
  else
    while value != user do

      # if value != user
      File.open("learn.txt", "w") do |file|
        file.write("#{key}: #{value}")
      end
      # word = hash[key].split("")
      puts value[0]
      user = gets.chomp!
      if value == user
        puts "good2"
      elsif value != user
        half = (value.length - 1) / 2
        # word2 = hash[key].split("")
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


