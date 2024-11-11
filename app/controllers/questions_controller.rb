class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    @question = params[:question].to_s
    if @question.eql?('I am going to work')
      @answer = 'Great!'
    elsif @question[@question.length - 1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
