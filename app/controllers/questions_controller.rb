class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer
  end

  def coach_answer
    if @question.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
