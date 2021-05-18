class Question
  attr_accessor :promt, :answear

  def initialize(promt, answear)
    @promt = promt
    @answear = answear
  end
end
a1 = "What is translatiom to English word 'цикл'?\n(a)triangle\n(b)loop\n(c)array"
a2 = "What is translatiom to English word 'файл'?\n(a)file\n(b)great\n(c)ruby"
a3 = "What is translatiom to English word 'строка'?\n(a)second\n(b)function\n(c)string"

questions = [
  Question.new(a1, "b"),
  Question.new(a2, "a"),
  Question.new(a3, "c")
]

def run_test(questions)
  answear = ""
  score = 0
  for question in questions
    puts question.promt
    answear = gets.chomp()
    if answear ==question.answear
      score +=1
    end
  end
  puts ("You got" +score.to_s + "/" +questions.length().to_s)
end

run_test(questions)
