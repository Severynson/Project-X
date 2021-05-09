### This part of code had to show the main menu for user ###
puts "Hello, choose please the them that you are interested to learn:\n1- Git;\n2- Computer;\n3- Main terms;\n4- Create your own list."
class WordLists
  attr_accessor :git, :computer, :main_terms, :your_own_list
  def choosing(git = 0, computer = 0, main_terms = 0, your_own_list = 0)
  git = {"version control system" => "Система контролю версій","Branch" => "Гілка"}
  input = gets.chomp
  if input == "1"
    list = git
    p list
  end
  end
end

salo = WordLists.new
salo.choosing