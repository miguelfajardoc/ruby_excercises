class Question
  attr_accessor :prompt, :answer

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end

end
p1 = "what color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "what color are bananas?\n(a)idonknow\n(b)red\n(c)yellow"
p3 = "what color are pears?\n(a)red\n(b)green\n(c)orange"

questions = [
             Question.new(p1, "a"),
             Question.new(p2, "c"),
             Question.new(p3, "b")
]

def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    test = 1
    while test == 1
      puts question.prompt
      answer = gets.chomp()
      if answer != "a" and answer != "b" and answer != "c"
        puts "please, insert a, b or c"
      else
        test = 0
      end
    end
    if answer == question.answer
      score +=1
    end
  end
  puts "you got " + score.to_s + "/" + questions.size.to_s
end

run_test(questions)
