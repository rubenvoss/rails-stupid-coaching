class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # makes @message the global variable for the user form input
    @message = params['message']
    # standard 'else' answer
    @answer = "I don't care, get dressed and go to work!"
    #  answer if the user wants to go to work
    if @message == 'I am going to work' then @answer = 'Great!'
    # answer if the user types in a question
    elsif @message[-1] == '?' then @answer = 'Silly question, get dressed and go to work!' end
  end
end
