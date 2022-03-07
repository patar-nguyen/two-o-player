class Question 

  attr_accessor :num1, :num2, :question, :answer
  
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What is the sum of #{num1} and #{num2}?"
    @answer = num1 + num2;
  end
end