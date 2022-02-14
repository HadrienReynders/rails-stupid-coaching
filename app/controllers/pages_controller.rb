ANSWER1 = 'Silly question, get dressed and go to work!'
ANSWER2 = "I don't care, get dressed and go to work!"
QUESTION = 'I am going to work'
ANSWER3 = "Great"

class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def is_question?(str)
    str === nil ? false :str.end_with?('?')
  end

  def coach_answer(str)
    is_question?(str) ? ANSWER1 : ((str === QUESTION) ? ANSWER3 : ANSWER2)
  end
end
