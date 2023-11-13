class QuestionsController < ApplicationController
  def ask
    # This is the controller action that will be executed when the user visits the /ask URL
  end

  def answer
    # This is the controller action that will be executed when the user visits the /answer URL.
    @question = params[:quest]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
